% Vertical Scalability: Hyper-Threading &amp; NUMA
%
% June 12, 2020

_Vertical scalability_ measures how your system speeds up as you beef up the machines it runs on. We're going to look at how [Peregrine](https://github.com/pdclab/peregrine)&mdash;a parallel graph mining system&mdash;scales, and try to learn as much as we can from it.

The plots and analysis below is all mostly present in the Peregrine paper as well.
Don't worry, you don't have to read the paper to follow along :)

![Vertical scalability of counting a chordal 4-cycle on the Orkut graph.](scalability.svg){.plot}

The plot above is a <em>speedup curve</em>. It shows how using multiple threads speeds up execution compared to using a single thread. So using 1 thread gives a 1x speedup over single-threaded execution (obviously), but executing with 48 threads gives 41x speedup over single-threaded execution. The ideal speedup is what you would hope to achieve: doubling the number of threads halves your execution time.

The data is from a <code>c5.metal</code> instance on AWS, with 96 vCPUs and 192GB RAM. I ran Peregrine with the same inputs (matching a chordal 4-cycle on a 2 GB graph) using various numbers of threads and plotted the speedup curve. Peregrine scales well, but there are some peculiarities worth investigating.

### The curve flattens after 48 threads

This is where [mechanical sympathy](https://infrastructure-as-code.com/book/2015/03/23/mechanical-sympathy.html) helps us investigate. Looking at the <code>lscpu</code> output for most Intel chips, you might notice a line like this:

<code>Thread(s) per core: 2</code>

Our <code>c5.metal</code> instance is no different. This line is telling us that our 96 vCPUs translate to 48 physical cores with [hyper-threading](hyper-threading.pdf), which nets us 96 logical cores. The upshot is that if you use more than 48 threads, you'll have multiple threads scheduled on the same physical core using hyper-threading.

So how does hyper-threading work exactly? Well, let's say thread A on core 1 asks for some data that's not in the cache. We need to go all the way to main memory to fetch this data, during which time core 1 twiddles its thumbs. With hyper-threading a second thread, say thread B, can execute on core 1 while the data for thread A gets loaded.

  This means that you only get parallelism from hyper-threading when a thread is waiting on a memory access. So if your system is heavily CPU-bound, say all the data you need fits in cache and only gets loaded once, after which you only do floating point operations, then hyper-threading might not help. On the other hand, if your system is heavily memory-bound, say you make continuous random accesses that wipe your cache, then hyper-threading won't help either! That's because as soon as thread B starts executing, it too will have to wait on memory, so neither of your threads are executing and very little has been gained.

To support our hypothesis that hyper-threading causes speedups to flatten, we can try pinning every pair of threads to a single physical core for different thread counts.

![Peregrine HT shows speedups when every pair of threads is pinned to a single physical core, forcing hyper-threading.](scalability-ht.svg){.plot}

  The dashed lines show speedups when using 16 threads on 8 cores, 32 threads on 16 cores, and 48 threads on 24 cores. As you can see, these lines appear far below the non-hyper-threaded line. 48 threads on 24 cores yields only a 30x speedup as opposed to 41x when I ran 48 threads on 48 cores. This is some nice supporting evidence. We'll find some more in a bit. But first let's investigate another observation.

### The curve flattens slightly between 24 and 48 threads

While not as drastic as the 48-96 portion of the curve, the 24-48 portion is definitely flatter than the 1-24 portion. How come?
<code>lscpu</code> comes once again to the rescue. This time, the lines of interest are:

      Core(s) per socket: 24
      Socket(s):          2
      NUMA node(s):       2

In a traditional memory model, there's a single bus to main memory that handles all requests. Well, when you have 48 cores the bus can get saturated and hence slow. [NUMA](https://en.wikipedia.org/wiki/Non-uniform_memory_access) helps by splitting up main memory into NUMA nodes, each servicing a group of cores. The <code>Core(s) per socket</code> line tells us how many cores each NUMA node services. In this machine, this corresponds exactly to the point where we start seeing the speedup curve flatten!

When all the cores you're using are serviced by the same NUMA node, it's as if you're using traditional single-memory hardware. But if your cores are spread across NUMA nodes (as mine are when I use more than 24 cores), threads may need to access memory in a remote NUMA node. As you can imagine, cross-NUMA accesses are more expensive than local ones, and so this incurs more costs.

Because graph mining incurs chaotic, random memory accesses, it also generates a lot of cross-NUMA traffic. We can measure this using [Intel MBM](https://github.com/intel/intel-cmt-cat/wiki/MBM-MBA-how-to-guide). Run <code>pqos</code> and check the <code>MBR</code> field; it shows how much memory is being accessed remotely. Peregrine generates 86 GB (huge!) of cross-NUMA traffic over the entire execution when using 48 threads, and 4.9 MB (tiny!) when using 24 threads.

Next, we can also look at local memory accesses to support our theory. Plotting usage over time (sum of <code>MBL</code> and <code>MBR</code>) as well as CPU usage gives us this tentacley looking plot:

![Solid lines are for CPU utilization (left) and dashed lines are for memory bandwidth (right). The experiment uses 47 and 94 cores instead of 48 and 96; I left one physical core free to gather data multiple times a second without affecting the actual execution.](scalability-bw.svg){.plot}

This plot supports the simple notion that more threads means more memory access, which means more strain on the memory bus.
It also hints at details about the graph mining process.

The bandwidth usage grows over time at all three core counts (with sudden decline at 47 cores when the computation finishes) because high-degree vertices are processed first by Peregrine. Initially, a few large adjacency lists are loaded and joined to generate hundreds of millions of subgraphs, then the threads move on and load smaller adjacency lists with increasing frequency.


---

Zooming back out, it's clear that there's a ton of nuance in how a system
behaves, and even the simple scalability experiment from the start of the
article shows all sorts of fun details.
This is one of the many things that makes research so difficult; there is so much to look at, so much to investigate, and it's rarely clear from the outset what will be interesting and what will not.
In this case, the findings were fairly interesting and made it into the [paper](/papers/peregrine.pdf), but this kind of analysis is far from the main focus, and honestly, I doubt much of it made a significant impression on the reviewers.
Still, it was fun to do, and it satisfied my personal curiosity at least.

<!--As a final aside, this is why it's so crucial to compare system performance on the exact same hardware configuration if you want to make any meaningful conclusions, because to understand performance you need to the underlying hardware you run experiments on. I've seen experiments in a top systems conference comparing execution times with numbers from a different paper. If you didn't run the system, you can't conclude anything!-->
