% Hacking LLVM's Type System
%
% April 15, 2018

I'd like to write a bit about a project my friends and I have been working on recently.

[LLVM](http://www.cs.cornell.edu/~asampson/blog/llvm.html) is a compiler toolkit that makes it easy to write reasonably fast programming languages without having to implement backends for every processor architecture known to man. A big reason for its popularity is that it boasts a rich intermediate representation (IR) language. IR is sort of like assembly code, but much more convenient and programmer-friendly. The most significant difference for this article is the fact that IR is statically typed. LLVM uses IR to generate actual assembly and machine code. LLVM stands for low-level virtual machine and IR is its bitcode.

SIMD stands for single instruction, multiple data. It describes a class of machine instructions which let you use large registers to operate on vectors of elements at once. For example, using the [SSE2](https://en.wikipedia.org/wiki/SSE2) instruction extensions to x86 you could use the standard 128-bit floating point registers to store vectors of four 32-bit integers and add them together in one instruction:

```llvm
paddd %xmm0, %xmm1
```

This takes more than one cycle, but it's much faster than four adds. There are a slew of these vector instructions. All the common arithmetic operators and also some operations that only make sense on vectors. Dot products, vector sums, etc.

New processors are adding more and more SIMD instructions. The current iMac Pro has a Xeon processor with AVX-512 technology: 512-bit registers with extensive vector instruction sets so you can work on sixteen 32-bit integers at once.

LLVM's type system accounts for SIMD with vector types. `<4 x i32>` is a type describing a vector of 32-bit integers, so to generate the above assembly you might write a line of IR that looks like this:

```llvm
%sum = <4 x i32> add %v1, %v2
```

While working on a vector of `int`'s (or `long`'s or `char`'s or `short`'s) is nice, some algorithms lend themselves better to smaller field widths. DNA base pairs can be encoded as 2-bit numbers, booleans as 1-bit numbers, and there are applications in GPS (the navigation kind) that rely on 4-bit values. There aren't native instructions for these. The smallest vector element type that is commonly supported is a byte. What to do?

Well, LLVM IR has support for arbitrary vector types. That means you can write `<5 x i7>` or `<64 x i2>` and your program will work without errors. So how does LLVM generate native code when there are no native instructions defined on these types?

Scalarization. The generated code goes through each element of your vector individually, removes it from the vector, does whatever you want with that element, and then pops it back into another vector. The vector is _scalarized_. The result is a [53KB ASM](add-1bit.s) file yielding a ridiculously slow 32KB binary when compiling a file containing a single function:

```llvm
@define add(<128 x i1> %v1, <128 x i1> %v2) {
  %sum = <128 x i1> add %v1, %v2
  ret <128 x i1> %sum
}
```

This is silly! Adding two 1-bit values is just an XOR, and adding two vectors of 1-bit values means just taking the XOR of the vectors. So what we really want to generate is `xor %xmm0, %xmm1`.

One of the best things about LLVM IR, its type system, is getting in the way. It would be really nice to write a compiler that generates IR similar to that above. Luckily, LLVM is built to be extendible. Compilation works in passes. One pass might find variables you never use and get rid of them. One might find tail-recursive functions and turn them into loops. Another may inline function calls. This way, different people can write different optimizations concurrently without needing to cooperate. What my friends and I did is write a pass to subvert LLVM's type system.

Given an IR file containing non-standard types (I'll refer to them as illegal types), we produce an IR file containing only standard types (I'll call them legal). This is called type legalization and it comprises one stage of our pass.

We take

```llvm
@define add(<128 x i1> %v1, <128 x i1> %v2) {
  %sum = <128 x i1> add %v1, %v2
  ret <128 x i1> %sum
}
```

and transform it into

```llvm
@define add(<4 x i32> %v1, <4 x i32> %v2) {
  %sum = <4 x i32> add %v1, %v2
  ret <4 x i32> %sum
}
```

But that's not enough. XORing registers is not the same as adding `int`'s. We also have to transform that `add` instruction into an `xor`. And we need to do it _first_, so we don't accidentally transform an instruction that didn't have illegal types before our pass. So first we analyze the program to find all the illegal types. Every value that touches an illegal type gets recorded. Then, we switch out the `add` for an `xor`, and finally we can change the types.

Changing that `add` to an `xor` is called [SWAR](https://en.wikipedia.org/wiki/SWAR): SIMD Within A Register. We treat each 32-bit vector element as its own register and we implement SIMD within that. SIMD within SIMD. To add 128 1-bit values, we XOR four 32-bit values. XORing 32-bit values in order to add 1-bit values is a SWAR technique since it lets us operate on thirty-two values with one instruction.

So our final output should look like this:

```llvm
@define add(<4 x i32> %v1, <4 x i32> %v2) {
  %sum = <4 x i32> xor %v1, %v2
  ret <4 x i32> %sum
}
```

Now this generates the ASM we're looking for! And it runs as fast as you can expect a single `xor` instruction to run (very very very fast).

This example was easy though; 1-bit values are not complicated. What happens if your input is multiplying vectors of 4-bit values? Well, you can't just swap in an `xor` and call it a day, but it's not too difficult to come up with algorithms to perform 4-bit multiplication in packed 128-bit registers. There are algorithms for all the main arithmetic operations in fact, in varying performance and complexity.

We built a function that contains our SWAR implementation of multiply for vectors of 4-bit integers and splice in a call to it instead. I won't bore you with the details, it's some annoying bit-twiddling.

What I am really excited to show are the results. We benchmarked a very simple program with and without our pass.

```llvm
define <128 x i1> @add(<128 x i1> %v1, <128 x i1> %v2) {
entry:
  %sum = add <128 x i1> %v1, %v2
  ret <128 x i1> %sum
}

define i32 @main() {
entry:
  br label %loop

loop:
  %i = phi i64 [ 7812500, %entry ], [ %i1, %loop ]
  %v1 = phi <128 x i1> [ <i1 0, ..., i1 0>, %entry ], [ %sum, %loop ]
  %v2 = phi <128 x i1> [ <i1 1, ..., i1 1>, %entry ], [ %v2ctr, %loop ]

  %sum = call <128 x i1> @add(<128 x i1> %v1, <128 x i1> %v2)
  %v2ctr = call <128 x i1> @add(<128 x i1> %v2, <128 x i1> <i1 1, ..., i1 1>)
  %i1 = sub i64 %i, 1
  %cmp = icmp eq i64 %i1, 0
  br i1 %cmp, label %fin, label %loop

fin:
  ret i32 0
}
```

This code adds two vectors and increments every element of the second vector 7812500 times. The choice of this last number is arbitrary, we only chose it because 7812500(128) = 1 billion. We had analogous programs for the 2-bit and 4-bit cases.

Each program was compiled using LLVM 5 times with and 5 times without our pass. Then we ran the programs 5 times each, and reported here are the means (I don't include the variance because it was negligible: 0.00 or 0.01 for all experiments).

<div class='side-by-side'>
<div>
<h3>Mean Compile Time (s)</h3>
<table>
  <tr class='horizontal-header'><th class='vertical-header'></th><th><code>i1</code></th><th><code>i2</code></th><th><code>i4</code></th></tr>
  <tr><td class='vertical-header'>with</td><td>0.05</td><td>0.04</td><td>0.03</td></tr>
  <tr><td class='vertical-header'>without</td><td>1.78</td><td>0.88</td><td>0.42</td></tr>
</table>
</div>
<div>
<h3>Mean Run Time (s)</h3>
<table>
  <tr class='horizontal-header'><th class='vertical-header'></th><th><code>i1</code></th><th><code>i2</code></th><th><code>i4</code></th></tr>
  <tr><td class='vertical-header'>with</td><td>0.05</td><td>0.07</td><td>0.06</td></tr>
  <tr><td class='vertical-header'>without</td><td>6.26</td><td>3.00</td><td>1.50</td></tr>
</table>
</div>
</div>

You don't need a Mann-Whitney U test to tell you that's an improvement. The `i1` program runs 125 times faster with our approach and it was faster to compile, too!

---

Of course, we benchmarked a single stupid program and our approach may not actually fit with how LLVM IR is generated in real-life. There are a slew of instructions that would need to be supported and most aren't as simple as bitwise addition. I'm not really interested in pursuing this further, because I'm satisfied at beating LLVM in this little game.
