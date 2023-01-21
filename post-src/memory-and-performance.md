% Data Layout and Performance
%
% September 2, 2019

*This post is meant as a quick introduction to how data layout in memory affects
performance for students in CMPT 431/770, but it can be a good reminder for anybody doing performance sensitive work. For a more comprehensive treatment of memory effects, I would recommend [Algorithmica's HPC docs.](https://en.algorithmica.org/hpc/cpu-cache/)*

### Data Access Patterns
An extremely common design decision when implementing high performance applications is between Array-of-Structs (AoS) and Struct-of-Arrays (SoA). The answer to which you should choose depends on your data access pattern. 

Since it is common to process arrays of data sequentially, accessing one element of an array causes modern hardware to also prefetch nearby memory and load it into the cache. This means you should try to keep the data you need to access close together in memory, so that as much of the useful data as possible will be prefetched. By the same token, you should try to avoid having unnecessary data prefetched and wasting cache space.

Let’s walk through an example. Suppose you are processing an array of pixels, which will be displayed on a screen. Each pixel has a value, an x-coordinate, and a y-coordinate. You might write a program that looks something like this:

```c++
struct Pixel {
  int x; // 4 bytes
  int y; // 4 bytes
  double value; // 8 bytes
};

Pixel pixels_array[SIZE];

for (int i = 0; i < SIZE; i++) {
  Pixel p = pixels_array[i];
  p.x += 5;
  p.y -= 2;
  p.value *= p.x + p.y * 3.61;
}
```

An instance of `Pixel` takes 16 bytes in memory, and a typical cache line is 64 bytes long. When you loop, at most 4 elements from the `pixels_array` can be loaded into the cache, and afterwards you will incur a miss. This is the Array-of-Structs (AoS) approach.

Now consider an alternative design, where the `pixels_array` is broken up into several arrays, one for each attribute of a `Pixel`:

```c++
struct PixelArray {
  int xs[SIZE]; // SIZE*4 bytes
  int ys[SIZE]; // SIZE*4 bytes
  double values[SIZE]; // SIZE*8 bytes
};

PixelArray p;
for (int i = 0; i < SIZE; i++) {
  p.xs[i] += 5;
  p.ys[i] -= 2;
  p.values[i] = p.xs[i] + p.ys[i] * 3.61;
}
```

This is the Struct-of-Arrays (SoA) approach. Since arrays are stored contiguously in memory, `xs[i]` will always be at least `SIZE*4` bytes away from `ys[i]` and `SIZE*8 + SIZE*4` bytes away from `values[i]`! If `SIZE*4` is larger than 32, then the distance between the attributes of a pixel is larger than a cache line, so you'll incur a cache miss on every access. So compared to the Array-of-Structs approach, which incurs a cache miss every 4 iterations, Struct-of-Arrays incurs multiple cache misses every iteration.

So Array-of-Structs was the better approach because you needed to access all the attributes of a pixel when processing. On the other hand, if you only need to update the x-coordinate of a pixel, AoS leads to cache inefficiencies. For instance:

```c++
for (int i = 0; i < SIZE; i++) {
  Pixel p = pixels_array[i];
  p.x += i;
}
```

Here, you repeatedly jump past the unused `.y` and `.value` members of `Pixel`. In this situation, Struct-of-Arrays is preferable.

Note that the cache analysis above is hugely simplified (e.g. you will not get exactly one miss every 4 iterations in the first example). You can always run `perf -e cache-misses ./myprogram` on AoS and SoA versions of a program to gauge the difference in cache behaviour yourself. The broader points apply though, and cache-friendly programs will almost always outperform cache-unfriendly ones.

### False Sharing

Suppose we are summing up the values in an extremely large array.

```c++
int huge_array[SIZE];

long long int sum = 0;
for (int i = 0; i < SIZE; i++) {
  sum += huge_array[i];
}
```

A simple way to parallelize this program would be to have multiple threads compute a local sum of a part of the array, and then combine each thread-local sum into a global result:

```c++
int huge_array[SIZE];

void partial_sum(int *partition, int size, long long int *destination) {
  for (int i = 0; i < size; i++) {
    *destination += partition[i];
  }
}

long long int thread_sums[n];
parallel for (thread i) {
  int *partition = &huge_array[i*SIZE/n];
  int size = SIZE/n;
  partial_sum(partition, size, &thread_sums[i]);
}

long long int sum = 0;
for (int i = 0; i < n; i++) {
  sum += thread_sums[i];
}
```

This program seems fine at first glance, and will run correctly. However, it will be extremely slow due to false sharing. The problem is that different threads are constantly writing to contiguous elements in `thread_sums`. If a thread running on core A wants to access `thread_sums[i]`, it will be loaded into core A’s cache along with other (neighbouring) elements of `thread_sums`. But then if a thread on core B concurrently writes to `thread_sums[i+1]`, core A’s cache line will be invalidated. The constant invalidations defeat the purpose of the cache and force all the data accesses to go to main memory, which is extremely expensive.

This causes massive performance degradation. Thread-local values that are frequently written to should be allocated within threads, never contiguously outside a thread’s context.

The false sharing in the code above can be easily fixed with a local variable within the `partial_sum` function.

```c++
void partial_sum(int *partition, int size, long long int *destination) {
  long long int local_sum = 0;
  for (int i = 0; i < size; i++) {
    local_sum += partition[i];
  }
  *destination = local_sum;
}
```

Now, each thread only touches `thread_sums` once, so we don't have constant cache invalidation throughout the execution.
