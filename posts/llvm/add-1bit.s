        .text
        .file   "in.ll"
        .globl  add                     # -- Begin function add
        .p2align        4, 0x90
        .type   add,@function
add:                                    # @add
        .cfi_startproc
# %bb.0:                                # %entry
        pushq   %rax
        .cfi_def_cfa_offset 16
        movd    2016(%rsp), %xmm0       # xmm0 = mem[0],zero,zero,zero
        movd    2008(%rsp), %xmm1       # xmm1 = mem[0],zero,zero,zero
        punpcklbw       %xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1],xmm1[2],xmm0[2],xmm1[3],xmm0[3],xmm1[4],xmm0[4],xmm1[5],xmm0[5],xmm1[6],xmm0[6],xmm1[7],xmm0[7]
        movd    2000(%rsp), %xmm0       # xmm0 = mem[0],zero,zero,zero
        movd    1992(%rsp), %xmm2       # xmm2 = mem[0],zero,zero,zero
        punpcklbw       %xmm0, %xmm2    # xmm2 = xmm2[0],xmm0[0],xmm2[1],xmm0[1],xmm2[2],xmm0[2],xmm2[3],xmm0[3],xmm2[4],xmm0[4],xmm2[5],xmm0[5],xmm2[6],xmm0[6],xmm2[7],xmm0[7]
        punpcklwd       %xmm1, %xmm2    # xmm2 = xmm2[0],xmm1[0],xmm2[1],xmm1[1],xmm2[2],xmm1[2],xmm2[3],xmm1[3]
        movd    1984(%rsp), %xmm0       # xmm0 = mem[0],zero,zero,zero
        movd    1976(%rsp), %xmm1       # xmm1 = mem[0],zero,zero,zero
        punpcklbw       %xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1],xmm1[2],xmm0[2],xmm1[3],xmm0[3],xmm1[4],xmm0[4],xmm1[5],xmm0[5],xmm1[6],xmm0[6],xmm1[7],xmm0[7]
        movd    1968(%rsp), %xmm0       # xmm0 = mem[0],zero,zero,zero
        movd    1960(%rsp), %xmm3       # xmm3 = mem[0],zero,zero,zero
        punpcklbw       %xmm0, %xmm3    # xmm3 = xmm3[0],xmm0[0],xmm3[1],xmm0[1],xmm3[2],xmm0[2],xmm3[3],xmm0[3],xmm3[4],xmm0[4],xmm3[5],xmm0[5],xmm3[6],xmm0[6],xmm3[7],xmm0[7]
        punpcklwd       %xmm1, %xmm3    # xmm3 = xmm3[0],xmm1[0],xmm3[1],xmm1[1],xmm3[2],xmm1[2],xmm3[3],xmm1[3]
        punpckldq       %xmm2, %xmm3    # xmm3 = xmm3[0],xmm2[0],xmm3[1],xmm2[1]
        movd    1952(%rsp), %xmm0       # xmm0 = mem[0],zero,zero,zero
        movd    1944(%rsp), %xmm1       # xmm1 = mem[0],zero,zero,zero
        punpcklbw       %xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1],xmm1[2],xmm0[2],xmm1[3],xmm0[3],xmm1[4],xmm0[4],xmm1[5],xmm0[5],xmm1[6],xmm0[6],xmm1[7],xmm0[7]
        movd    1936(%rsp), %xmm0       # xmm0 = mem[0],zero,zero,zero
        movd    1928(%rsp), %xmm2       # xmm2 = mem[0],zero,zero,zero
        punpcklbw       %xmm0, %xmm2    # xmm2 = xmm2[0],xmm0[0],xmm2[1],xmm0[1],xmm2[2],xmm0[2],xmm2[3],xmm0[3],xmm2[4],xmm0[4],xmm2[5],xmm0[5],xmm2[6],xmm0[6],xmm2[7],xmm0[7]
        punpcklwd       %xmm1, %xmm2    # xmm2 = xmm2[0],xmm1[0],xmm2[1],xmm1[1],xmm2[2],xmm1[2],xmm2[3],xmm1[3]
        movd    1920(%rsp), %xmm0       # xmm0 = mem[0],zero,zero,zero
        movd    1912(%rsp), %xmm4       # xmm4 = mem[0],zero,zero,zero
        punpcklbw       %xmm0, %xmm4    # xmm4 = xmm4[0],xmm0[0],xmm4[1],xmm0[1],xmm4[2],xmm0[2],xmm4[3],xmm0[3],xmm4[4],xmm0[4],xmm4[5],xmm0[5],xmm4[6],xmm0[6],xmm4[7],xmm0[7]
        movd    1904(%rsp), %xmm0       # xmm0 = mem[0],zero,zero,zero
        movd    1896(%rsp), %xmm1       # xmm1 = mem[0],zero,zero,zero
        punpcklbw       %xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1],xmm1[2],xmm0[2],xmm1[3],xmm0[3],xmm1[4],xmm0[4],xmm1[5],xmm0[5],xmm1[6],xmm0[6],xmm1[7],xmm0[7]
        punpcklwd       %xmm4, %xmm1    # xmm1 = xmm1[0],xmm4[0],xmm1[1],xmm4[1],xmm1[2],xmm4[2],xmm1[3],xmm4[3]
        punpckldq       %xmm2, %xmm1    # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1]
        punpcklqdq      %xmm3, %xmm1    # xmm1 = xmm1[0],xmm3[0]
        movd    992(%rsp), %xmm0        # xmm0 = mem[0],zero,zero,zero
        movd    984(%rsp), %xmm2        # xmm2 = mem[0],zero,zero,zero
        punpcklbw       %xmm0, %xmm2    # xmm2 = xmm2[0],xmm0[0],xmm2[1],xmm0[1],xmm2[2],xmm0[2],xmm2[3],xmm0[3],xmm2[4],xmm0[4],xmm2[5],xmm0[5],xmm2[6],xmm0[6],xmm2[7],xmm0[7]
        movd    976(%rsp), %xmm0        # xmm0 = mem[0],zero,zero,zero
        movd    968(%rsp), %xmm3        # xmm3 = mem[0],zero,zero,zero
        punpcklbw       %xmm0, %xmm3    # xmm3 = xmm3[0],xmm0[0],xmm3[1],xmm0[1],xmm3[2],xmm0[2],xmm3[3],xmm0[3],xmm3[4],xmm0[4],xmm3[5],xmm0[5],xmm3[6],xmm0[6],xmm3[7],xmm0[7]
        punpcklwd       %xmm2, %xmm3    # xmm3 = xmm3[0],xmm2[0],xmm3[1],xmm2[1],xmm3[2],xmm2[2],xmm3[3],xmm2[3]
        movd    960(%rsp), %xmm0        # xmm0 = mem[0],zero,zero,zero
        movd    952(%rsp), %xmm2        # xmm2 = mem[0],zero,zero,zero
        punpcklbw       %xmm0, %xmm2    # xmm2 = xmm2[0],xmm0[0],xmm2[1],xmm0[1],xmm2[2],xmm0[2],xmm2[3],xmm0[3],xmm2[4],xmm0[4],xmm2[5],xmm0[5],xmm2[6],xmm0[6],xmm2[7],xmm0[7]
        movd    944(%rsp), %xmm0        # xmm0 = mem[0],zero,zero,zero
        movd    936(%rsp), %xmm4        # xmm4 = mem[0],zero,zero,zero
        punpcklbw       %xmm0, %xmm4    # xmm4 = xmm4[0],xmm0[0],xmm4[1],xmm0[1],xmm4[2],xmm0[2],xmm4[3],xmm0[3],xmm4[4],xmm0[4],xmm4[5],xmm0[5],xmm4[6],xmm0[6],xmm4[7],xmm0[7]
        punpcklwd       %xmm2, %xmm4    # xmm4 = xmm4[0],xmm2[0],xmm4[1],xmm2[1],xmm4[2],xmm2[2],xmm4[3],xmm2[3]
        punpckldq       %xmm3, %xmm4    # xmm4 = xmm4[0],xmm3[0],xmm4[1],xmm3[1]
        movd    928(%rsp), %xmm0        # xmm0 = mem[0],zero,zero,zero
        movd    920(%rsp), %xmm2        # xmm2 = mem[0],zero,zero,zero
        punpcklbw       %xmm0, %xmm2    # xmm2 = xmm2[0],xmm0[0],xmm2[1],xmm0[1],xmm2[2],xmm0[2],xmm2[3],xmm0[3],xmm2[4],xmm0[4],xmm2[5],xmm0[5],xmm2[6],xmm0[6],xmm2[7],xmm0[7]
        movd    912(%rsp), %xmm0        # xmm0 = mem[0],zero,zero,zero
        movd    904(%rsp), %xmm3        # xmm3 = mem[0],zero,zero,zero
        punpcklbw       %xmm0, %xmm3    # xmm3 = xmm3[0],xmm0[0],xmm3[1],xmm0[1],xmm3[2],xmm0[2],xmm3[3],xmm0[3],xmm3[4],xmm0[4],xmm3[5],xmm0[5],xmm3[6],xmm0[6],xmm3[7],xmm0[7]
        punpcklwd       %xmm2, %xmm3    # xmm3 = xmm3[0],xmm2[0],xmm3[1],xmm2[1],xmm3[2],xmm2[2],xmm3[3],xmm2[3]
        movd    896(%rsp), %xmm0        # xmm0 = mem[0],zero,zero,zero
        movd    888(%rsp), %xmm2        # xmm2 = mem[0],zero,zero,zero
        punpcklbw       %xmm0, %xmm2    # xmm2 = xmm2[0],xmm0[0],xmm2[1],xmm0[1],xmm2[2],xmm0[2],xmm2[3],xmm0[3],xmm2[4],xmm0[4],xmm2[5],xmm0[5],xmm2[6],xmm0[6],xmm2[7],xmm0[7]
        movd    880(%rsp), %xmm0        # xmm0 = mem[0],zero,zero,zero
        movd    872(%rsp), %xmm8        # xmm8 = mem[0],zero,zero,zero
        punpcklbw       %xmm0, %xmm8    # xmm8 = xmm8[0],xmm0[0],xmm8[1],xmm0[1],xmm8[2],xmm0[2],xmm8[3],xmm0[3],xmm8[4],xmm0[4],xmm8[5],xmm0[5],xmm8[6],xmm0[6],xmm8[7],xmm0[7]
        punpcklwd       %xmm2, %xmm8    # xmm8 = xmm8[0],xmm2[0],xmm8[1],xmm2[1],xmm8[2],xmm2[2],xmm8[3],xmm2[3]
        punpckldq       %xmm3, %xmm8    # xmm8 = xmm8[0],xmm3[0],xmm8[1],xmm3[1]
        punpcklqdq      %xmm4, %xmm8    # xmm8 = xmm8[0],xmm4[0]
        paddb   %xmm1, %xmm8
        movd    1888(%rsp), %xmm0       # xmm0 = mem[0],zero,zero,zero
        movd    1880(%rsp), %xmm1       # xmm1 = mem[0],zero,zero,zero
        punpcklbw       %xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1],xmm1[2],xmm0[2],xmm1[3],xmm0[3],xmm1[4],xmm0[4],xmm1[5],xmm0[5],xmm1[6],xmm0[6],xmm1[7],xmm0[7]
        movd    1872(%rsp), %xmm0       # xmm0 = mem[0],zero,zero,zero
        movd    1864(%rsp), %xmm2       # xmm2 = mem[0],zero,zero,zero
        punpcklbw       %xmm0, %xmm2    # xmm2 = xmm2[0],xmm0[0],xmm2[1],xmm0[1],xmm2[2],xmm0[2],xmm2[3],xmm0[3],xmm2[4],xmm0[4],xmm2[5],xmm0[5],xmm2[6],xmm0[6],xmm2[7],xmm0[7]
        punpcklwd       %xmm1, %xmm2    # xmm2 = xmm2[0],xmm1[0],xmm2[1],xmm1[1],xmm2[2],xmm1[2],xmm2[3],xmm1[3]
        movd    1856(%rsp), %xmm0       # xmm0 = mem[0],zero,zero,zero
        movd    1848(%rsp), %xmm1       # xmm1 = mem[0],zero,zero,zero
        punpcklbw       %xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1],xmm1[2],xmm0[2],xmm1[3],xmm0[3],xmm1[4],xmm0[4],xmm1[5],xmm0[5],xmm1[6],xmm0[6],xmm1[7],xmm0[7]
        movd    1840(%rsp), %xmm0       # xmm0 = mem[0],zero,zero,zero
        movd    1832(%rsp), %xmm3       # xmm3 = mem[0],zero,zero,zero
        punpcklbw       %xmm0, %xmm3    # xmm3 = xmm3[0],xmm0[0],xmm3[1],xmm0[1],xmm3[2],xmm0[2],xmm3[3],xmm0[3],xmm3[4],xmm0[4],xmm3[5],xmm0[5],xmm3[6],xmm0[6],xmm3[7],xmm0[7]
        punpcklwd       %xmm1, %xmm3    # xmm3 = xmm3[0],xmm1[0],xmm3[1],xmm1[1],xmm3[2],xmm1[2],xmm3[3],xmm1[3]
        punpckldq       %xmm2, %xmm3    # xmm3 = xmm3[0],xmm2[0],xmm3[1],xmm2[1]
        movd    1824(%rsp), %xmm0       # xmm0 = mem[0],zero,zero,zero
        movd    1816(%rsp), %xmm1       # xmm1 = mem[0],zero,zero,zero
        punpcklbw       %xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1],xmm1[2],xmm0[2],xmm1[3],xmm0[3],xmm1[4],xmm0[4],xmm1[5],xmm0[5],xmm1[6],xmm0[6],xmm1[7],xmm0[7]
        movd    1808(%rsp), %xmm0       # xmm0 = mem[0],zero,zero,zero
        movd    1800(%rsp), %xmm4       # xmm4 = mem[0],zero,zero,zero
        punpcklbw       %xmm0, %xmm4    # xmm4 = xmm4[0],xmm0[0],xmm4[1],xmm0[1],xmm4[2],xmm0[2],xmm4[3],xmm0[3],xmm4[4],xmm0[4],xmm4[5],xmm0[5],xmm4[6],xmm0[6],xmm4[7],xmm0[7]
        punpcklwd       %xmm1, %xmm4    # xmm4 = xmm4[0],xmm1[0],xmm4[1],xmm1[1],xmm4[2],xmm1[2],xmm4[3],xmm1[3]
        movd    1792(%rsp), %xmm0       # xmm0 = mem[0],zero,zero,zero
        movd    1784(%rsp), %xmm1       # xmm1 = mem[0],zero,zero,zero
        punpcklbw       %xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1],xmm1[2],xmm0[2],xmm1[3],xmm0[3],xmm1[4],xmm0[4],xmm1[5],xmm0[5],xmm1[6],xmm0[6],xmm1[7],xmm0[7]
        movd    1776(%rsp), %xmm0       # xmm0 = mem[0],zero,zero,zero
        movd    1768(%rsp), %xmm2       # xmm2 = mem[0],zero,zero,zero
        punpcklbw       %xmm0, %xmm2    # xmm2 = xmm2[0],xmm0[0],xmm2[1],xmm0[1],xmm2[2],xmm0[2],xmm2[3],xmm0[3],xmm2[4],xmm0[4],xmm2[5],xmm0[5],xmm2[6],xmm0[6],xmm2[7],xmm0[7]
        punpcklwd       %xmm1, %xmm2    # xmm2 = xmm2[0],xmm1[0],xmm2[1],xmm1[1],xmm2[2],xmm1[2],xmm2[3],xmm1[3]
        punpckldq       %xmm4, %xmm2    # xmm2 = xmm2[0],xmm4[0],xmm2[1],xmm4[1]
        punpcklqdq      %xmm3, %xmm2    # xmm2 = xmm2[0],xmm3[0]
        movd    864(%rsp), %xmm0        # xmm0 = mem[0],zero,zero,zero
        movd    856(%rsp), %xmm1        # xmm1 = mem[0],zero,zero,zero
        punpcklbw       %xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1],xmm1[2],xmm0[2],xmm1[3],xmm0[3],xmm1[4],xmm0[4],xmm1[5],xmm0[5],xmm1[6],xmm0[6],xmm1[7],xmm0[7]
        movd    848(%rsp), %xmm0        # xmm0 = mem[0],zero,zero,zero
        movd    840(%rsp), %xmm3        # xmm3 = mem[0],zero,zero,zero
        punpcklbw       %xmm0, %xmm3    # xmm3 = xmm3[0],xmm0[0],xmm3[1],xmm0[1],xmm3[2],xmm0[2],xmm3[3],xmm0[3],xmm3[4],xmm0[4],xmm3[5],xmm0[5],xmm3[6],xmm0[6],xmm3[7],xmm0[7]
        punpcklwd       %xmm1, %xmm3    # xmm3 = xmm3[0],xmm1[0],xmm3[1],xmm1[1],xmm3[2],xmm1[2],xmm3[3],xmm1[3]
        movd    832(%rsp), %xmm0        # xmm0 = mem[0],zero,zero,zero
        movd    824(%rsp), %xmm1        # xmm1 = mem[0],zero,zero,zero
        punpcklbw       %xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1],xmm1[2],xmm0[2],xmm1[3],xmm0[3],xmm1[4],xmm0[4],xmm1[5],xmm0[5],xmm1[6],xmm0[6],xmm1[7],xmm0[7]
        movd    816(%rsp), %xmm0        # xmm0 = mem[0],zero,zero,zero
        movd    808(%rsp), %xmm4        # xmm4 = mem[0],zero,zero,zero
        punpcklbw       %xmm0, %xmm4    # xmm4 = xmm4[0],xmm0[0],xmm4[1],xmm0[1],xmm4[2],xmm0[2],xmm4[3],xmm0[3],xmm4[4],xmm0[4],xmm4[5],xmm0[5],xmm4[6],xmm0[6],xmm4[7],xmm0[7]
        punpcklwd       %xmm1, %xmm4    # xmm4 = xmm4[0],xmm1[0],xmm4[1],xmm1[1],xmm4[2],xmm1[2],xmm4[3],xmm1[3]
        punpckldq       %xmm3, %xmm4    # xmm4 = xmm4[0],xmm3[0],xmm4[1],xmm3[1]
        movd    800(%rsp), %xmm0        # xmm0 = mem[0],zero,zero,zero
        movd    792(%rsp), %xmm1        # xmm1 = mem[0],zero,zero,zero
        punpcklbw       %xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1],xmm1[2],xmm0[2],xmm1[3],xmm0[3],xmm1[4],xmm0[4],xmm1[5],xmm0[5],xmm1[6],xmm0[6],xmm1[7],xmm0[7]
        movd    784(%rsp), %xmm0        # xmm0 = mem[0],zero,zero,zero
        movd    776(%rsp), %xmm3        # xmm3 = mem[0],zero,zero,zero
        punpcklbw       %xmm0, %xmm3    # xmm3 = xmm3[0],xmm0[0],xmm3[1],xmm0[1],xmm3[2],xmm0[2],xmm3[3],xmm0[3],xmm3[4],xmm0[4],xmm3[5],xmm0[5],xmm3[6],xmm0[6],xmm3[7],xmm0[7]
        punpcklwd       %xmm1, %xmm3    # xmm3 = xmm3[0],xmm1[0],xmm3[1],xmm1[1],xmm3[2],xmm1[2],xmm3[3],xmm1[3]
        movd    768(%rsp), %xmm0        # xmm0 = mem[0],zero,zero,zero
        movd    760(%rsp), %xmm5        # xmm5 = mem[0],zero,zero,zero
        punpcklbw       %xmm0, %xmm5    # xmm5 = xmm5[0],xmm0[0],xmm5[1],xmm0[1],xmm5[2],xmm0[2],xmm5[3],xmm0[3],xmm5[4],xmm0[4],xmm5[5],xmm0[5],xmm5[6],xmm0[6],xmm5[7],xmm0[7]
        movd    752(%rsp), %xmm0        # xmm0 = mem[0],zero,zero,zero
        movd    744(%rsp), %xmm9        # xmm9 = mem[0],zero,zero,zero
        punpcklbw       %xmm0, %xmm9    # xmm9 = xmm9[0],xmm0[0],xmm9[1],xmm0[1],xmm9[2],xmm0[2],xmm9[3],xmm0[3],xmm9[4],xmm0[4],xmm9[5],xmm0[5],xmm9[6],xmm0[6],xmm9[7],xmm0[7]
        punpcklwd       %xmm5, %xmm9    # xmm9 = xmm9[0],xmm5[0],xmm9[1],xmm5[1],xmm9[2],xmm5[2],xmm9[3],xmm5[3]
        punpckldq       %xmm3, %xmm9    # xmm9 = xmm9[0],xmm3[0],xmm9[1],xmm3[1]
        punpcklqdq      %xmm4, %xmm9    # xmm9 = xmm9[0],xmm4[0]
        paddb   %xmm2, %xmm9
        movd    1760(%rsp), %xmm0       # xmm0 = mem[0],zero,zero,zero
        movd    1752(%rsp), %xmm2       # xmm2 = mem[0],zero,zero,zero
        punpcklbw       %xmm0, %xmm2    # xmm2 = xmm2[0],xmm0[0],xmm2[1],xmm0[1],xmm2[2],xmm0[2],xmm2[3],xmm0[3],xmm2[4],xmm0[4],xmm2[5],xmm0[5],xmm2[6],xmm0[6],xmm2[7],xmm0[7]
        movd    1744(%rsp), %xmm0       # xmm0 = mem[0],zero,zero,zero
        movd    1736(%rsp), %xmm3       # xmm3 = mem[0],zero,zero,zero
        punpcklbw       %xmm0, %xmm3    # xmm3 = xmm3[0],xmm0[0],xmm3[1],xmm0[1],xmm3[2],xmm0[2],xmm3[3],xmm0[3],xmm3[4],xmm0[4],xmm3[5],xmm0[5],xmm3[6],xmm0[6],xmm3[7],xmm0[7]
        punpcklwd       %xmm2, %xmm3    # xmm3 = xmm3[0],xmm2[0],xmm3[1],xmm2[1],xmm3[2],xmm2[2],xmm3[3],xmm2[3]
        movd    1728(%rsp), %xmm0       # xmm0 = mem[0],zero,zero,zero
        movd    1720(%rsp), %xmm2       # xmm2 = mem[0],zero,zero,zero
        punpcklbw       %xmm0, %xmm2    # xmm2 = xmm2[0],xmm0[0],xmm2[1],xmm0[1],xmm2[2],xmm0[2],xmm2[3],xmm0[3],xmm2[4],xmm0[4],xmm2[5],xmm0[5],xmm2[6],xmm0[6],xmm2[7],xmm0[7]
        movd    1712(%rsp), %xmm0       # xmm0 = mem[0],zero,zero,zero
        movd    1704(%rsp), %xmm4       # xmm4 = mem[0],zero,zero,zero
        punpcklbw       %xmm0, %xmm4    # xmm4 = xmm4[0],xmm0[0],xmm4[1],xmm0[1],xmm4[2],xmm0[2],xmm4[3],xmm0[3],xmm4[4],xmm0[4],xmm4[5],xmm0[5],xmm4[6],xmm0[6],xmm4[7],xmm0[7]
        punpcklwd       %xmm2, %xmm4    # xmm4 = xmm4[0],xmm2[0],xmm4[1],xmm2[1],xmm4[2],xmm2[2],xmm4[3],xmm2[3]
        punpckldq       %xmm3, %xmm4    # xmm4 = xmm4[0],xmm3[0],xmm4[1],xmm3[1]
        movd    1696(%rsp), %xmm0       # xmm0 = mem[0],zero,zero,zero
        movd    1688(%rsp), %xmm2       # xmm2 = mem[0],zero,zero,zero
        punpcklbw       %xmm0, %xmm2    # xmm2 = xmm2[0],xmm0[0],xmm2[1],xmm0[1],xmm2[2],xmm0[2],xmm2[3],xmm0[3],xmm2[4],xmm0[4],xmm2[5],xmm0[5],xmm2[6],xmm0[6],xmm2[7],xmm0[7]
        movd    1680(%rsp), %xmm0       # xmm0 = mem[0],zero,zero,zero
        movd    1672(%rsp), %xmm5       # xmm5 = mem[0],zero,zero,zero
        punpcklbw       %xmm0, %xmm5    # xmm5 = xmm5[0],xmm0[0],xmm5[1],xmm0[1],xmm5[2],xmm0[2],xmm5[3],xmm0[3],xmm5[4],xmm0[4],xmm5[5],xmm0[5],xmm5[6],xmm0[6],xmm5[7],xmm0[7]
        punpcklwd       %xmm2, %xmm5    # xmm5 = xmm5[0],xmm2[0],xmm5[1],xmm2[1],xmm5[2],xmm2[2],xmm5[3],xmm2[3]
        movd    1664(%rsp), %xmm0       # xmm0 = mem[0],zero,zero,zero
        movd    1656(%rsp), %xmm2       # xmm2 = mem[0],zero,zero,zero
        punpcklbw       %xmm0, %xmm2    # xmm2 = xmm2[0],xmm0[0],xmm2[1],xmm0[1],xmm2[2],xmm0[2],xmm2[3],xmm0[3],xmm2[4],xmm0[4],xmm2[5],xmm0[5],xmm2[6],xmm0[6],xmm2[7],xmm0[7]
        movd    1648(%rsp), %xmm0       # xmm0 = mem[0],zero,zero,zero
        movd    1640(%rsp), %xmm3       # xmm3 = mem[0],zero,zero,zero
        punpcklbw       %xmm0, %xmm3    # xmm3 = xmm3[0],xmm0[0],xmm3[1],xmm0[1],xmm3[2],xmm0[2],xmm3[3],xmm0[3],xmm3[4],xmm0[4],xmm3[5],xmm0[5],xmm3[6],xmm0[6],xmm3[7],xmm0[7]
        punpcklwd       %xmm2, %xmm3    # xmm3 = xmm3[0],xmm2[0],xmm3[1],xmm2[1],xmm3[2],xmm2[2],xmm3[3],xmm2[3]
        punpckldq       %xmm5, %xmm3    # xmm3 = xmm3[0],xmm5[0],xmm3[1],xmm5[1]
        punpcklqdq      %xmm4, %xmm3    # xmm3 = xmm3[0],xmm4[0]
        movd    736(%rsp), %xmm0        # xmm0 = mem[0],zero,zero,zero
        movd    728(%rsp), %xmm2        # xmm2 = mem[0],zero,zero,zero
        punpcklbw       %xmm0, %xmm2    # xmm2 = xmm2[0],xmm0[0],xmm2[1],xmm0[1],xmm2[2],xmm0[2],xmm2[3],xmm0[3],xmm2[4],xmm0[4],xmm2[5],xmm0[5],xmm2[6],xmm0[6],xmm2[7],xmm0[7]
        movd    720(%rsp), %xmm0        # xmm0 = mem[0],zero,zero,zero
        movd    712(%rsp), %xmm4        # xmm4 = mem[0],zero,zero,zero
        punpcklbw       %xmm0, %xmm4    # xmm4 = xmm4[0],xmm0[0],xmm4[1],xmm0[1],xmm4[2],xmm0[2],xmm4[3],xmm0[3],xmm4[4],xmm0[4],xmm4[5],xmm0[5],xmm4[6],xmm0[6],xmm4[7],xmm0[7]
        punpcklwd       %xmm2, %xmm4    # xmm4 = xmm4[0],xmm2[0],xmm4[1],xmm2[1],xmm4[2],xmm2[2],xmm4[3],xmm2[3]
        movd    704(%rsp), %xmm0        # xmm0 = mem[0],zero,zero,zero
        movd    696(%rsp), %xmm2        # xmm2 = mem[0],zero,zero,zero
        punpcklbw       %xmm0, %xmm2    # xmm2 = xmm2[0],xmm0[0],xmm2[1],xmm0[1],xmm2[2],xmm0[2],xmm2[3],xmm0[3],xmm2[4],xmm0[4],xmm2[5],xmm0[5],xmm2[6],xmm0[6],xmm2[7],xmm0[7]
        movd    688(%rsp), %xmm0        # xmm0 = mem[0],zero,zero,zero
        movd    680(%rsp), %xmm5        # xmm5 = mem[0],zero,zero,zero
        punpcklbw       %xmm0, %xmm5    # xmm5 = xmm5[0],xmm0[0],xmm5[1],xmm0[1],xmm5[2],xmm0[2],xmm5[3],xmm0[3],xmm5[4],xmm0[4],xmm5[5],xmm0[5],xmm5[6],xmm0[6],xmm5[7],xmm0[7]
        punpcklwd       %xmm2, %xmm5    # xmm5 = xmm5[0],xmm2[0],xmm5[1],xmm2[1],xmm5[2],xmm2[2],xmm5[3],xmm2[3]
        punpckldq       %xmm4, %xmm5    # xmm5 = xmm5[0],xmm4[0],xmm5[1],xmm4[1]
        movd    672(%rsp), %xmm0        # xmm0 = mem[0],zero,zero,zero
        movd    664(%rsp), %xmm2        # xmm2 = mem[0],zero,zero,zero
        punpcklbw       %xmm0, %xmm2    # xmm2 = xmm2[0],xmm0[0],xmm2[1],xmm0[1],xmm2[2],xmm0[2],xmm2[3],xmm0[3],xmm2[4],xmm0[4],xmm2[5],xmm0[5],xmm2[6],xmm0[6],xmm2[7],xmm0[7]
        movd    656(%rsp), %xmm0        # xmm0 = mem[0],zero,zero,zero
        movd    648(%rsp), %xmm4        # xmm4 = mem[0],zero,zero,zero
        punpcklbw       %xmm0, %xmm4    # xmm4 = xmm4[0],xmm0[0],xmm4[1],xmm0[1],xmm4[2],xmm0[2],xmm4[3],xmm0[3],xmm4[4],xmm0[4],xmm4[5],xmm0[5],xmm4[6],xmm0[6],xmm4[7],xmm0[7]
        punpcklwd       %xmm2, %xmm4    # xmm4 = xmm4[0],xmm2[0],xmm4[1],xmm2[1],xmm4[2],xmm2[2],xmm4[3],xmm2[3]
        movd    640(%rsp), %xmm0        # xmm0 = mem[0],zero,zero,zero
        movd    632(%rsp), %xmm6        # xmm6 = mem[0],zero,zero,zero
        punpcklbw       %xmm0, %xmm6    # xmm6 = xmm6[0],xmm0[0],xmm6[1],xmm0[1],xmm6[2],xmm0[2],xmm6[3],xmm0[3],xmm6[4],xmm0[4],xmm6[5],xmm0[5],xmm6[6],xmm0[6],xmm6[7],xmm0[7]
        movd    624(%rsp), %xmm0        # xmm0 = mem[0],zero,zero,zero
        movd    616(%rsp), %xmm10       # xmm10 = mem[0],zero,zero,zero
        punpcklbw       %xmm0, %xmm10   # xmm10 = xmm10[0],xmm0[0],xmm10[1],xmm0[1],xmm10[2],xmm0[2],xmm10[3],xmm0[3],xmm10[4],xmm0[4],xmm10[5],xmm0[5],xmm10[6],xmm0[6],xmm10[7],>
        punpcklwd       %xmm6, %xmm10   # xmm10 = xmm10[0],xmm6[0],xmm10[1],xmm6[1],xmm10[2],xmm6[2],xmm10[3],xmm6[3]
        punpckldq       %xmm4, %xmm10   # xmm10 = xmm10[0],xmm4[0],xmm10[1],xmm4[1]
        punpcklqdq      %xmm5, %xmm10   # xmm10 = xmm10[0],xmm5[0]
        paddb   %xmm3, %xmm10
        movd    1632(%rsp), %xmm0       # xmm0 = mem[0],zero,zero,zero
        movd    1624(%rsp), %xmm3       # xmm3 = mem[0],zero,zero,zero
        punpcklbw       %xmm0, %xmm3    # xmm3 = xmm3[0],xmm0[0],xmm3[1],xmm0[1],xmm3[2],xmm0[2],xmm3[3],xmm0[3],xmm3[4],xmm0[4],xmm3[5],xmm0[5],xmm3[6],xmm0[6],xmm3[7],xmm0[7]
        movd    1616(%rsp), %xmm0       # xmm0 = mem[0],zero,zero,zero
        movd    1608(%rsp), %xmm4       # xmm4 = mem[0],zero,zero,zero
        punpcklbw       %xmm0, %xmm4    # xmm4 = xmm4[0],xmm0[0],xmm4[1],xmm0[1],xmm4[2],xmm0[2],xmm4[3],xmm0[3],xmm4[4],xmm0[4],xmm4[5],xmm0[5],xmm4[6],xmm0[6],xmm4[7],xmm0[7]
        punpcklwd       %xmm3, %xmm4    # xmm4 = xmm4[0],xmm3[0],xmm4[1],xmm3[1],xmm4[2],xmm3[2],xmm4[3],xmm3[3]
        movd    1600(%rsp), %xmm0       # xmm0 = mem[0],zero,zero,zero
        movd    1592(%rsp), %xmm3       # xmm3 = mem[0],zero,zero,zero
        punpcklbw       %xmm0, %xmm3    # xmm3 = xmm3[0],xmm0[0],xmm3[1],xmm0[1],xmm3[2],xmm0[2],xmm3[3],xmm0[3],xmm3[4],xmm0[4],xmm3[5],xmm0[5],xmm3[6],xmm0[6],xmm3[7],xmm0[7]
        movd    1584(%rsp), %xmm0       # xmm0 = mem[0],zero,zero,zero
        movd    1576(%rsp), %xmm5       # xmm5 = mem[0],zero,zero,zero
        punpcklbw       %xmm0, %xmm5    # xmm5 = xmm5[0],xmm0[0],xmm5[1],xmm0[1],xmm5[2],xmm0[2],xmm5[3],xmm0[3],xmm5[4],xmm0[4],xmm5[5],xmm0[5],xmm5[6],xmm0[6],xmm5[7],xmm0[7]
        punpcklwd       %xmm3, %xmm5    # xmm5 = xmm5[0],xmm3[0],xmm5[1],xmm3[1],xmm5[2],xmm3[2],xmm5[3],xmm3[3]
        punpckldq       %xmm4, %xmm5    # xmm5 = xmm5[0],xmm4[0],xmm5[1],xmm4[1]
        movd    1568(%rsp), %xmm0       # xmm0 = mem[0],zero,zero,zero
        movd    1560(%rsp), %xmm3       # xmm3 = mem[0],zero,zero,zero
        punpcklbw       %xmm0, %xmm3    # xmm3 = xmm3[0],xmm0[0],xmm3[1],xmm0[1],xmm3[2],xmm0[2],xmm3[3],xmm0[3],xmm3[4],xmm0[4],xmm3[5],xmm0[5],xmm3[6],xmm0[6],xmm3[7],xmm0[7]
        movd    1552(%rsp), %xmm0       # xmm0 = mem[0],zero,zero,zero
        movd    1544(%rsp), %xmm6       # xmm6 = mem[0],zero,zero,zero
        punpcklbw       %xmm0, %xmm6    # xmm6 = xmm6[0],xmm0[0],xmm6[1],xmm0[1],xmm6[2],xmm0[2],xmm6[3],xmm0[3],xmm6[4],xmm0[4],xmm6[5],xmm0[5],xmm6[6],xmm0[6],xmm6[7],xmm0[7]
        punpcklwd       %xmm3, %xmm6    # xmm6 = xmm6[0],xmm3[0],xmm6[1],xmm3[1],xmm6[2],xmm3[2],xmm6[3],xmm3[3]
        movd    1536(%rsp), %xmm0       # xmm0 = mem[0],zero,zero,zero
        movd    1528(%rsp), %xmm3       # xmm3 = mem[0],zero,zero,zero
        punpcklbw       %xmm0, %xmm3    # xmm3 = xmm3[0],xmm0[0],xmm3[1],xmm0[1],xmm3[2],xmm0[2],xmm3[3],xmm0[3],xmm3[4],xmm0[4],xmm3[5],xmm0[5],xmm3[6],xmm0[6],xmm3[7],xmm0[7]
        movd    1520(%rsp), %xmm0       # xmm0 = mem[0],zero,zero,zero
        movd    1512(%rsp), %xmm4       # xmm4 = mem[0],zero,zero,zero
        punpcklbw       %xmm0, %xmm4    # xmm4 = xmm4[0],xmm0[0],xmm4[1],xmm0[1],xmm4[2],xmm0[2],xmm4[3],xmm0[3],xmm4[4],xmm0[4],xmm4[5],xmm0[5],xmm4[6],xmm0[6],xmm4[7],xmm0[7]
        punpcklwd       %xmm3, %xmm4    # xmm4 = xmm4[0],xmm3[0],xmm4[1],xmm3[1],xmm4[2],xmm3[2],xmm4[3],xmm3[3]
        punpckldq       %xmm6, %xmm4    # xmm4 = xmm4[0],xmm6[0],xmm4[1],xmm6[1]
        punpcklqdq      %xmm5, %xmm4    # xmm4 = xmm4[0],xmm5[0]
        movd    608(%rsp), %xmm0        # xmm0 = mem[0],zero,zero,zero
        movd    600(%rsp), %xmm3        # xmm3 = mem[0],zero,zero,zero
        punpcklbw       %xmm0, %xmm3    # xmm3 = xmm3[0],xmm0[0],xmm3[1],xmm0[1],xmm3[2],xmm0[2],xmm3[3],xmm0[3],xmm3[4],xmm0[4],xmm3[5],xmm0[5],xmm3[6],xmm0[6],xmm3[7],xmm0[7]
        movd    592(%rsp), %xmm0        # xmm0 = mem[0],zero,zero,zero
        movd    584(%rsp), %xmm5        # xmm5 = mem[0],zero,zero,zero
        punpcklbw       %xmm0, %xmm5    # xmm5 = xmm5[0],xmm0[0],xmm5[1],xmm0[1],xmm5[2],xmm0[2],xmm5[3],xmm0[3],xmm5[4],xmm0[4],xmm5[5],xmm0[5],xmm5[6],xmm0[6],xmm5[7],xmm0[7]
        punpcklwd       %xmm3, %xmm5    # xmm5 = xmm5[0],xmm3[0],xmm5[1],xmm3[1],xmm5[2],xmm3[2],xmm5[3],xmm3[3]
        movd    576(%rsp), %xmm0        # xmm0 = mem[0],zero,zero,zero
        movd    568(%rsp), %xmm3        # xmm3 = mem[0],zero,zero,zero
        punpcklbw       %xmm0, %xmm3    # xmm3 = xmm3[0],xmm0[0],xmm3[1],xmm0[1],xmm3[2],xmm0[2],xmm3[3],xmm0[3],xmm3[4],xmm0[4],xmm3[5],xmm0[5],xmm3[6],xmm0[6],xmm3[7],xmm0[7]
        movd    560(%rsp), %xmm0        # xmm0 = mem[0],zero,zero,zero
        movd    552(%rsp), %xmm6        # xmm6 = mem[0],zero,zero,zero
        punpcklbw       %xmm0, %xmm6    # xmm6 = xmm6[0],xmm0[0],xmm6[1],xmm0[1],xmm6[2],xmm0[2],xmm6[3],xmm0[3],xmm6[4],xmm0[4],xmm6[5],xmm0[5],xmm6[6],xmm0[6],xmm6[7],xmm0[7]
        punpcklwd       %xmm3, %xmm6    # xmm6 = xmm6[0],xmm3[0],xmm6[1],xmm3[1],xmm6[2],xmm3[2],xmm6[3],xmm3[3]
        punpckldq       %xmm5, %xmm6    # xmm6 = xmm6[0],xmm5[0],xmm6[1],xmm5[1]
        movd    544(%rsp), %xmm0        # xmm0 = mem[0],zero,zero,zero
        movd    536(%rsp), %xmm3        # xmm3 = mem[0],zero,zero,zero
        punpcklbw       %xmm0, %xmm3    # xmm3 = xmm3[0],xmm0[0],xmm3[1],xmm0[1],xmm3[2],xmm0[2],xmm3[3],xmm0[3],xmm3[4],xmm0[4],xmm3[5],xmm0[5],xmm3[6],xmm0[6],xmm3[7],xmm0[7]
        movd    528(%rsp), %xmm0        # xmm0 = mem[0],zero,zero,zero
        movd    520(%rsp), %xmm5        # xmm5 = mem[0],zero,zero,zero
        punpcklbw       %xmm0, %xmm5    # xmm5 = xmm5[0],xmm0[0],xmm5[1],xmm0[1],xmm5[2],xmm0[2],xmm5[3],xmm0[3],xmm5[4],xmm0[4],xmm5[5],xmm0[5],xmm5[6],xmm0[6],xmm5[7],xmm0[7]
        punpcklwd       %xmm3, %xmm5    # xmm5 = xmm5[0],xmm3[0],xmm5[1],xmm3[1],xmm5[2],xmm3[2],xmm5[3],xmm3[3]
        movd    512(%rsp), %xmm0        # xmm0 = mem[0],zero,zero,zero
        movd    504(%rsp), %xmm7        # xmm7 = mem[0],zero,zero,zero
        punpcklbw       %xmm0, %xmm7    # xmm7 = xmm7[0],xmm0[0],xmm7[1],xmm0[1],xmm7[2],xmm0[2],xmm7[3],xmm0[3],xmm7[4],xmm0[4],xmm7[5],xmm0[5],xmm7[6],xmm0[6],xmm7[7],xmm0[7]
        movd    496(%rsp), %xmm0        # xmm0 = mem[0],zero,zero,zero
        movd    488(%rsp), %xmm11       # xmm11 = mem[0],zero,zero,zero
        punpcklbw       %xmm0, %xmm11   # xmm11 = xmm11[0],xmm0[0],xmm11[1],xmm0[1],xmm11[2],xmm0[2],xmm11[3],xmm0[3],xmm11[4],xmm0[4],xmm11[5],xmm0[5],xmm11[6],xmm0[6],xmm11[7],>
        punpcklwd       %xmm7, %xmm11   # xmm11 = xmm11[0],xmm7[0],xmm11[1],xmm7[1],xmm11[2],xmm7[2],xmm11[3],xmm7[3]
        punpckldq       %xmm5, %xmm11   # xmm11 = xmm11[0],xmm5[0],xmm11[1],xmm5[1]
        punpcklqdq      %xmm6, %xmm11   # xmm11 = xmm11[0],xmm6[0]
        paddb   %xmm4, %xmm11
        movd    1504(%rsp), %xmm0       # xmm0 = mem[0],zero,zero,zero
        movd    1496(%rsp), %xmm4       # xmm4 = mem[0],zero,zero,zero
        punpcklbw       %xmm0, %xmm4    # xmm4 = xmm4[0],xmm0[0],xmm4[1],xmm0[1],xmm4[2],xmm0[2],xmm4[3],xmm0[3],xmm4[4],xmm0[4],xmm4[5],xmm0[5],xmm4[6],xmm0[6],xmm4[7],xmm0[7]
        movd    1488(%rsp), %xmm0       # xmm0 = mem[0],zero,zero,zero
        movd    1480(%rsp), %xmm5       # xmm5 = mem[0],zero,zero,zero
        punpcklbw       %xmm0, %xmm5    # xmm5 = xmm5[0],xmm0[0],xmm5[1],xmm0[1],xmm5[2],xmm0[2],xmm5[3],xmm0[3],xmm5[4],xmm0[4],xmm5[5],xmm0[5],xmm5[6],xmm0[6],xmm5[7],xmm0[7]
        punpcklwd       %xmm4, %xmm5    # xmm5 = xmm5[0],xmm4[0],xmm5[1],xmm4[1],xmm5[2],xmm4[2],xmm5[3],xmm4[3]
        movd    1472(%rsp), %xmm0       # xmm0 = mem[0],zero,zero,zero
        movd    1464(%rsp), %xmm4       # xmm4 = mem[0],zero,zero,zero
        punpcklbw       %xmm0, %xmm4    # xmm4 = xmm4[0],xmm0[0],xmm4[1],xmm0[1],xmm4[2],xmm0[2],xmm4[3],xmm0[3],xmm4[4],xmm0[4],xmm4[5],xmm0[5],xmm4[6],xmm0[6],xmm4[7],xmm0[7]
        movd    1456(%rsp), %xmm0       # xmm0 = mem[0],zero,zero,zero
        movd    1448(%rsp), %xmm6       # xmm6 = mem[0],zero,zero,zero
        punpcklbw       %xmm0, %xmm6    # xmm6 = xmm6[0],xmm0[0],xmm6[1],xmm0[1],xmm6[2],xmm0[2],xmm6[3],xmm0[3],xmm6[4],xmm0[4],xmm6[5],xmm0[5],xmm6[6],xmm0[6],xmm6[7],xmm0[7]
        punpcklwd       %xmm4, %xmm6    # xmm6 = xmm6[0],xmm4[0],xmm6[1],xmm4[1],xmm6[2],xmm4[2],xmm6[3],xmm4[3]
        punpckldq       %xmm5, %xmm6    # xmm6 = xmm6[0],xmm5[0],xmm6[1],xmm5[1]
        movd    1440(%rsp), %xmm0       # xmm0 = mem[0],zero,zero,zero
        movd    1432(%rsp), %xmm4       # xmm4 = mem[0],zero,zero,zero
        punpcklbw       %xmm0, %xmm4    # xmm4 = xmm4[0],xmm0[0],xmm4[1],xmm0[1],xmm4[2],xmm0[2],xmm4[3],xmm0[3],xmm4[4],xmm0[4],xmm4[5],xmm0[5],xmm4[6],xmm0[6],xmm4[7],xmm0[7]
        movd    1424(%rsp), %xmm0       # xmm0 = mem[0],zero,zero,zero
        movd    1416(%rsp), %xmm7       # xmm7 = mem[0],zero,zero,zero
        punpcklbw       %xmm0, %xmm7    # xmm7 = xmm7[0],xmm0[0],xmm7[1],xmm0[1],xmm7[2],xmm0[2],xmm7[3],xmm0[3],xmm7[4],xmm0[4],xmm7[5],xmm0[5],xmm7[6],xmm0[6],xmm7[7],xmm0[7]
        punpcklwd       %xmm4, %xmm7    # xmm7 = xmm7[0],xmm4[0],xmm7[1],xmm4[1],xmm7[2],xmm4[2],xmm7[3],xmm4[3]
        movd    1408(%rsp), %xmm0       # xmm0 = mem[0],zero,zero,zero
        movd    1400(%rsp), %xmm4       # xmm4 = mem[0],zero,zero,zero
        punpcklbw       %xmm0, %xmm4    # xmm4 = xmm4[0],xmm0[0],xmm4[1],xmm0[1],xmm4[2],xmm0[2],xmm4[3],xmm0[3],xmm4[4],xmm0[4],xmm4[5],xmm0[5],xmm4[6],xmm0[6],xmm4[7],xmm0[7]
        movd    1392(%rsp), %xmm0       # xmm0 = mem[0],zero,zero,zero
        movd    1384(%rsp), %xmm5       # xmm5 = mem[0],zero,zero,zero
        punpcklbw       %xmm0, %xmm5    # xmm5 = xmm5[0],xmm0[0],xmm5[1],xmm0[1],xmm5[2],xmm0[2],xmm5[3],xmm0[3],xmm5[4],xmm0[4],xmm5[5],xmm0[5],xmm5[6],xmm0[6],xmm5[7],xmm0[7]
        punpcklwd       %xmm4, %xmm5    # xmm5 = xmm5[0],xmm4[0],xmm5[1],xmm4[1],xmm5[2],xmm4[2],xmm5[3],xmm4[3]
        punpckldq       %xmm7, %xmm5    # xmm5 = xmm5[0],xmm7[0],xmm5[1],xmm7[1]
        punpcklqdq      %xmm6, %xmm5    # xmm5 = xmm5[0],xmm6[0]
        movd    480(%rsp), %xmm0        # xmm0 = mem[0],zero,zero,zero
        movd    472(%rsp), %xmm4        # xmm4 = mem[0],zero,zero,zero
        punpcklbw       %xmm0, %xmm4    # xmm4 = xmm4[0],xmm0[0],xmm4[1],xmm0[1],xmm4[2],xmm0[2],xmm4[3],xmm0[3],xmm4[4],xmm0[4],xmm4[5],xmm0[5],xmm4[6],xmm0[6],xmm4[7],xmm0[7]
        movd    464(%rsp), %xmm0        # xmm0 = mem[0],zero,zero,zero
        movd    456(%rsp), %xmm6        # xmm6 = mem[0],zero,zero,zero
        punpcklbw       %xmm0, %xmm6    # xmm6 = xmm6[0],xmm0[0],xmm6[1],xmm0[1],xmm6[2],xmm0[2],xmm6[3],xmm0[3],xmm6[4],xmm0[4],xmm6[5],xmm0[5],xmm6[6],xmm0[6],xmm6[7],xmm0[7]
        punpcklwd       %xmm4, %xmm6    # xmm6 = xmm6[0],xmm4[0],xmm6[1],xmm4[1],xmm6[2],xmm4[2],xmm6[3],xmm4[3]
        movd    448(%rsp), %xmm0        # xmm0 = mem[0],zero,zero,zero
        movd    440(%rsp), %xmm4        # xmm4 = mem[0],zero,zero,zero
        punpcklbw       %xmm0, %xmm4    # xmm4 = xmm4[0],xmm0[0],xmm4[1],xmm0[1],xmm4[2],xmm0[2],xmm4[3],xmm0[3],xmm4[4],xmm0[4],xmm4[5],xmm0[5],xmm4[6],xmm0[6],xmm4[7],xmm0[7]
        movd    432(%rsp), %xmm0        # xmm0 = mem[0],zero,zero,zero
        movd    424(%rsp), %xmm7        # xmm7 = mem[0],zero,zero,zero
        punpcklbw       %xmm0, %xmm7    # xmm7 = xmm7[0],xmm0[0],xmm7[1],xmm0[1],xmm7[2],xmm0[2],xmm7[3],xmm0[3],xmm7[4],xmm0[4],xmm7[5],xmm0[5],xmm7[6],xmm0[6],xmm7[7],xmm0[7]
        punpcklwd       %xmm4, %xmm7    # xmm7 = xmm7[0],xmm4[0],xmm7[1],xmm4[1],xmm7[2],xmm4[2],xmm7[3],xmm4[3]
        punpckldq       %xmm6, %xmm7    # xmm7 = xmm7[0],xmm6[0],xmm7[1],xmm6[1]
        movd    416(%rsp), %xmm0        # xmm0 = mem[0],zero,zero,zero
        movd    408(%rsp), %xmm4        # xmm4 = mem[0],zero,zero,zero
        punpcklbw       %xmm0, %xmm4    # xmm4 = xmm4[0],xmm0[0],xmm4[1],xmm0[1],xmm4[2],xmm0[2],xmm4[3],xmm0[3],xmm4[4],xmm0[4],xmm4[5],xmm0[5],xmm4[6],xmm0[6],xmm4[7],xmm0[7]
        movd    400(%rsp), %xmm0        # xmm0 = mem[0],zero,zero,zero
        movd    392(%rsp), %xmm6        # xmm6 = mem[0],zero,zero,zero
        punpcklbw       %xmm0, %xmm6    # xmm6 = xmm6[0],xmm0[0],xmm6[1],xmm0[1],xmm6[2],xmm0[2],xmm6[3],xmm0[3],xmm6[4],xmm0[4],xmm6[5],xmm0[5],xmm6[6],xmm0[6],xmm6[7],xmm0[7]
        punpcklwd       %xmm4, %xmm6    # xmm6 = xmm6[0],xmm4[0],xmm6[1],xmm4[1],xmm6[2],xmm4[2],xmm6[3],xmm4[3]
        movd    384(%rsp), %xmm0        # xmm0 = mem[0],zero,zero,zero
        movd    376(%rsp), %xmm1        # xmm1 = mem[0],zero,zero,zero
        punpcklbw       %xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1],xmm1[2],xmm0[2],xmm1[3],xmm0[3],xmm1[4],xmm0[4],xmm1[5],xmm0[5],xmm1[6],xmm0[6],xmm1[7],xmm0[7]
        movd    368(%rsp), %xmm0        # xmm0 = mem[0],zero,zero,zero
        movd    360(%rsp), %xmm12       # xmm12 = mem[0],zero,zero,zero
        punpcklbw       %xmm0, %xmm12   # xmm12 = xmm12[0],xmm0[0],xmm12[1],xmm0[1],xmm12[2],xmm0[2],xmm12[3],xmm0[3],xmm12[4],xmm0[4],xmm12[5],xmm0[5],xmm12[6],xmm0[6],xmm12[7],>
        punpcklwd       %xmm1, %xmm12   # xmm12 = xmm12[0],xmm1[0],xmm12[1],xmm1[1],xmm12[2],xmm1[2],xmm12[3],xmm1[3]
        punpckldq       %xmm6, %xmm12   # xmm12 = xmm12[0],xmm6[0],xmm12[1],xmm6[1]
        punpcklqdq      %xmm7, %xmm12   # xmm12 = xmm12[0],xmm7[0]
        paddb   %xmm5, %xmm12
        movd    1376(%rsp), %xmm0       # xmm0 = mem[0],zero,zero,zero
        movd    1368(%rsp), %xmm1       # xmm1 = mem[0],zero,zero,zero
        punpcklbw       %xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1],xmm1[2],xmm0[2],xmm1[3],xmm0[3],xmm1[4],xmm0[4],xmm1[5],xmm0[5],xmm1[6],xmm0[6],xmm1[7],xmm0[7]
        movd    1360(%rsp), %xmm0       # xmm0 = mem[0],zero,zero,zero
        movd    1352(%rsp), %xmm5       # xmm5 = mem[0],zero,zero,zero
        punpcklbw       %xmm0, %xmm5    # xmm5 = xmm5[0],xmm0[0],xmm5[1],xmm0[1],xmm5[2],xmm0[2],xmm5[3],xmm0[3],xmm5[4],xmm0[4],xmm5[5],xmm0[5],xmm5[6],xmm0[6],xmm5[7],xmm0[7]
        punpcklwd       %xmm1, %xmm5    # xmm5 = xmm5[0],xmm1[0],xmm5[1],xmm1[1],xmm5[2],xmm1[2],xmm5[3],xmm1[3]
        movd    1344(%rsp), %xmm0       # xmm0 = mem[0],zero,zero,zero
        movd    1336(%rsp), %xmm1       # xmm1 = mem[0],zero,zero,zero
        punpcklbw       %xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1],xmm1[2],xmm0[2],xmm1[3],xmm0[3],xmm1[4],xmm0[4],xmm1[5],xmm0[5],xmm1[6],xmm0[6],xmm1[7],xmm0[7]
        movd    1328(%rsp), %xmm0       # xmm0 = mem[0],zero,zero,zero
        movd    1320(%rsp), %xmm7       # xmm7 = mem[0],zero,zero,zero
        punpcklbw       %xmm0, %xmm7    # xmm7 = xmm7[0],xmm0[0],xmm7[1],xmm0[1],xmm7[2],xmm0[2],xmm7[3],xmm0[3],xmm7[4],xmm0[4],xmm7[5],xmm0[5],xmm7[6],xmm0[6],xmm7[7],xmm0[7]
        punpcklwd       %xmm1, %xmm7    # xmm7 = xmm7[0],xmm1[0],xmm7[1],xmm1[1],xmm7[2],xmm1[2],xmm7[3],xmm1[3]
        punpckldq       %xmm5, %xmm7    # xmm7 = xmm7[0],xmm5[0],xmm7[1],xmm5[1]
        movd    1312(%rsp), %xmm0       # xmm0 = mem[0],zero,zero,zero
        movd    1304(%rsp), %xmm1       # xmm1 = mem[0],zero,zero,zero
        punpcklbw       %xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1],xmm1[2],xmm0[2],xmm1[3],xmm0[3],xmm1[4],xmm0[4],xmm1[5],xmm0[5],xmm1[6],xmm0[6],xmm1[7],xmm0[7]
        movd    1296(%rsp), %xmm0       # xmm0 = mem[0],zero,zero,zero
        movd    1288(%rsp), %xmm5       # xmm5 = mem[0],zero,zero,zero
        punpcklbw       %xmm0, %xmm5    # xmm5 = xmm5[0],xmm0[0],xmm5[1],xmm0[1],xmm5[2],xmm0[2],xmm5[3],xmm0[3],xmm5[4],xmm0[4],xmm5[5],xmm0[5],xmm5[6],xmm0[6],xmm5[7],xmm0[7]
        punpcklwd       %xmm1, %xmm5    # xmm5 = xmm5[0],xmm1[0],xmm5[1],xmm1[1],xmm5[2],xmm1[2],xmm5[3],xmm1[3]
        movd    1280(%rsp), %xmm0       # xmm0 = mem[0],zero,zero,zero
        movd    1272(%rsp), %xmm1       # xmm1 = mem[0],zero,zero,zero
        punpcklbw       %xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1],xmm1[2],xmm0[2],xmm1[3],xmm0[3],xmm1[4],xmm0[4],xmm1[5],xmm0[5],xmm1[6],xmm0[6],xmm1[7],xmm0[7]
        movd    1264(%rsp), %xmm0       # xmm0 = mem[0],zero,zero,zero
        movd    1256(%rsp), %xmm6       # xmm6 = mem[0],zero,zero,zero
        punpcklbw       %xmm0, %xmm6    # xmm6 = xmm6[0],xmm0[0],xmm6[1],xmm0[1],xmm6[2],xmm0[2],xmm6[3],xmm0[3],xmm6[4],xmm0[4],xmm6[5],xmm0[5],xmm6[6],xmm0[6],xmm6[7],xmm0[7]
        punpcklwd       %xmm1, %xmm6    # xmm6 = xmm6[0],xmm1[0],xmm6[1],xmm1[1],xmm6[2],xmm1[2],xmm6[3],xmm1[3]
        punpckldq       %xmm5, %xmm6    # xmm6 = xmm6[0],xmm5[0],xmm6[1],xmm5[1]
        punpcklqdq      %xmm7, %xmm6    # xmm6 = xmm6[0],xmm7[0]
        movd    352(%rsp), %xmm0        # xmm0 = mem[0],zero,zero,zero
        movd    344(%rsp), %xmm1        # xmm1 = mem[0],zero,zero,zero
        punpcklbw       %xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1],xmm1[2],xmm0[2],xmm1[3],xmm0[3],xmm1[4],xmm0[4],xmm1[5],xmm0[5],xmm1[6],xmm0[6],xmm1[7],xmm0[7]
        movd    336(%rsp), %xmm0        # xmm0 = mem[0],zero,zero,zero
        movd    328(%rsp), %xmm5        # xmm5 = mem[0],zero,zero,zero
        punpcklbw       %xmm0, %xmm5    # xmm5 = xmm5[0],xmm0[0],xmm5[1],xmm0[1],xmm5[2],xmm0[2],xmm5[3],xmm0[3],xmm5[4],xmm0[4],xmm5[5],xmm0[5],xmm5[6],xmm0[6],xmm5[7],xmm0[7]
        punpcklwd       %xmm1, %xmm5    # xmm5 = xmm5[0],xmm1[0],xmm5[1],xmm1[1],xmm5[2],xmm1[2],xmm5[3],xmm1[3]
        movd    320(%rsp), %xmm0        # xmm0 = mem[0],zero,zero,zero
        movd    312(%rsp), %xmm1        # xmm1 = mem[0],zero,zero,zero
        punpcklbw       %xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1],xmm1[2],xmm0[2],xmm1[3],xmm0[3],xmm1[4],xmm0[4],xmm1[5],xmm0[5],xmm1[6],xmm0[6],xmm1[7],xmm0[7]
        movd    304(%rsp), %xmm0        # xmm0 = mem[0],zero,zero,zero
        movd    296(%rsp), %xmm7        # xmm7 = mem[0],zero,zero,zero
        punpcklbw       %xmm0, %xmm7    # xmm7 = xmm7[0],xmm0[0],xmm7[1],xmm0[1],xmm7[2],xmm0[2],xmm7[3],xmm0[3],xmm7[4],xmm0[4],xmm7[5],xmm0[5],xmm7[6],xmm0[6],xmm7[7],xmm0[7]
        punpcklwd       %xmm1, %xmm7    # xmm7 = xmm7[0],xmm1[0],xmm7[1],xmm1[1],xmm7[2],xmm1[2],xmm7[3],xmm1[3]
        punpckldq       %xmm5, %xmm7    # xmm7 = xmm7[0],xmm5[0],xmm7[1],xmm5[1]
        movd    288(%rsp), %xmm0        # xmm0 = mem[0],zero,zero,zero
        movd    280(%rsp), %xmm1        # xmm1 = mem[0],zero,zero,zero
        punpcklbw       %xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1],xmm1[2],xmm0[2],xmm1[3],xmm0[3],xmm1[4],xmm0[4],xmm1[5],xmm0[5],xmm1[6],xmm0[6],xmm1[7],xmm0[7]
        movd    272(%rsp), %xmm0        # xmm0 = mem[0],zero,zero,zero
        movd    264(%rsp), %xmm2        # xmm2 = mem[0],zero,zero,zero
        punpcklbw       %xmm0, %xmm2    # xmm2 = xmm2[0],xmm0[0],xmm2[1],xmm0[1],xmm2[2],xmm0[2],xmm2[3],xmm0[3],xmm2[4],xmm0[4],xmm2[5],xmm0[5],xmm2[6],xmm0[6],xmm2[7],xmm0[7]
        punpcklwd       %xmm1, %xmm2    # xmm2 = xmm2[0],xmm1[0],xmm2[1],xmm1[1],xmm2[2],xmm1[2],xmm2[3],xmm1[3]
        movd    256(%rsp), %xmm0        # xmm0 = mem[0],zero,zero,zero
        movd    248(%rsp), %xmm1        # xmm1 = mem[0],zero,zero,zero
        punpcklbw       %xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1],xmm1[2],xmm0[2],xmm1[3],xmm0[3],xmm1[4],xmm0[4],xmm1[5],xmm0[5],xmm1[6],xmm0[6],xmm1[7],xmm0[7]
        movd    240(%rsp), %xmm0        # xmm0 = mem[0],zero,zero,zero
        movd    232(%rsp), %xmm5        # xmm5 = mem[0],zero,zero,zero
        punpcklbw       %xmm0, %xmm5    # xmm5 = xmm5[0],xmm0[0],xmm5[1],xmm0[1],xmm5[2],xmm0[2],xmm5[3],xmm0[3],xmm5[4],xmm0[4],xmm5[5],xmm0[5],xmm5[6],xmm0[6],xmm5[7],xmm0[7]
        punpcklwd       %xmm1, %xmm5    # xmm5 = xmm5[0],xmm1[0],xmm5[1],xmm1[1],xmm5[2],xmm1[2],xmm5[3],xmm1[3]
        punpckldq       %xmm2, %xmm5    # xmm5 = xmm5[0],xmm2[0],xmm5[1],xmm2[1]
        punpcklqdq      %xmm7, %xmm5    # xmm5 = xmm5[0],xmm7[0]
        paddb   %xmm6, %xmm5
        movd    1248(%rsp), %xmm0       # xmm0 = mem[0],zero,zero,zero
        movd    1240(%rsp), %xmm1       # xmm1 = mem[0],zero,zero,zero
        punpcklbw       %xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1],xmm1[2],xmm0[2],xmm1[3],xmm0[3],xmm1[4],xmm0[4],xmm1[5],xmm0[5],xmm1[6],xmm0[6],xmm1[7],xmm0[7]
        movd    1232(%rsp), %xmm0       # xmm0 = mem[0],zero,zero,zero
        movd    1224(%rsp), %xmm2       # xmm2 = mem[0],zero,zero,zero
        punpcklbw       %xmm0, %xmm2    # xmm2 = xmm2[0],xmm0[0],xmm2[1],xmm0[1],xmm2[2],xmm0[2],xmm2[3],xmm0[3],xmm2[4],xmm0[4],xmm2[5],xmm0[5],xmm2[6],xmm0[6],xmm2[7],xmm0[7]
        punpcklwd       %xmm1, %xmm2    # xmm2 = xmm2[0],xmm1[0],xmm2[1],xmm1[1],xmm2[2],xmm1[2],xmm2[3],xmm1[3]
        movd    1216(%rsp), %xmm0       # xmm0 = mem[0],zero,zero,zero
        movd    1208(%rsp), %xmm1       # xmm1 = mem[0],zero,zero,zero
        punpcklbw       %xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1],xmm1[2],xmm0[2],xmm1[3],xmm0[3],xmm1[4],xmm0[4],xmm1[5],xmm0[5],xmm1[6],xmm0[6],xmm1[7],xmm0[7]
        movd    1200(%rsp), %xmm0       # xmm0 = mem[0],zero,zero,zero
        movd    1192(%rsp), %xmm6       # xmm6 = mem[0],zero,zero,zero
        punpcklbw       %xmm0, %xmm6    # xmm6 = xmm6[0],xmm0[0],xmm6[1],xmm0[1],xmm6[2],xmm0[2],xmm6[3],xmm0[3],xmm6[4],xmm0[4],xmm6[5],xmm0[5],xmm6[6],xmm0[6],xmm6[7],xmm0[7]
        punpcklwd       %xmm1, %xmm6    # xmm6 = xmm6[0],xmm1[0],xmm6[1],xmm1[1],xmm6[2],xmm1[2],xmm6[3],xmm1[3]
        punpckldq       %xmm2, %xmm6    # xmm6 = xmm6[0],xmm2[0],xmm6[1],xmm2[1]
        movd    1184(%rsp), %xmm0       # xmm0 = mem[0],zero,zero,zero
        movd    1176(%rsp), %xmm1       # xmm1 = mem[0],zero,zero,zero
        punpcklbw       %xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1],xmm1[2],xmm0[2],xmm1[3],xmm0[3],xmm1[4],xmm0[4],xmm1[5],xmm0[5],xmm1[6],xmm0[6],xmm1[7],xmm0[7]
        movd    1168(%rsp), %xmm0       # xmm0 = mem[0],zero,zero,zero
        movd    1160(%rsp), %xmm2       # xmm2 = mem[0],zero,zero,zero
        punpcklbw       %xmm0, %xmm2    # xmm2 = xmm2[0],xmm0[0],xmm2[1],xmm0[1],xmm2[2],xmm0[2],xmm2[3],xmm0[3],xmm2[4],xmm0[4],xmm2[5],xmm0[5],xmm2[6],xmm0[6],xmm2[7],xmm0[7]
        punpcklwd       %xmm1, %xmm2    # xmm2 = xmm2[0],xmm1[0],xmm2[1],xmm1[1],xmm2[2],xmm1[2],xmm2[3],xmm1[3]
        movd    1152(%rsp), %xmm0       # xmm0 = mem[0],zero,zero,zero
        movd    1144(%rsp), %xmm1       # xmm1 = mem[0],zero,zero,zero
        punpcklbw       %xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1],xmm1[2],xmm0[2],xmm1[3],xmm0[3],xmm1[4],xmm0[4],xmm1[5],xmm0[5],xmm1[6],xmm0[6],xmm1[7],xmm0[7]
        movd    1136(%rsp), %xmm0       # xmm0 = mem[0],zero,zero,zero
        movd    1128(%rsp), %xmm7       # xmm7 = mem[0],zero,zero,zero
        punpcklbw       %xmm0, %xmm7    # xmm7 = xmm7[0],xmm0[0],xmm7[1],xmm0[1],xmm7[2],xmm0[2],xmm7[3],xmm0[3],xmm7[4],xmm0[4],xmm7[5],xmm0[5],xmm7[6],xmm0[6],xmm7[7],xmm0[7]
        punpcklwd       %xmm1, %xmm7    # xmm7 = xmm7[0],xmm1[0],xmm7[1],xmm1[1],xmm7[2],xmm1[2],xmm7[3],xmm1[3]
        punpckldq       %xmm2, %xmm7    # xmm7 = xmm7[0],xmm2[0],xmm7[1],xmm2[1]
        punpcklqdq      %xmm6, %xmm7    # xmm7 = xmm7[0],xmm6[0]
        movd    224(%rsp), %xmm0        # xmm0 = mem[0],zero,zero,zero
        movd    216(%rsp), %xmm1        # xmm1 = mem[0],zero,zero,zero
        punpcklbw       %xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1],xmm1[2],xmm0[2],xmm1[3],xmm0[3],xmm1[4],xmm0[4],xmm1[5],xmm0[5],xmm1[6],xmm0[6],xmm1[7],xmm0[7]
        movd    208(%rsp), %xmm0        # xmm0 = mem[0],zero,zero,zero
        movd    200(%rsp), %xmm2        # xmm2 = mem[0],zero,zero,zero
        punpcklbw       %xmm0, %xmm2    # xmm2 = xmm2[0],xmm0[0],xmm2[1],xmm0[1],xmm2[2],xmm0[2],xmm2[3],xmm0[3],xmm2[4],xmm0[4],xmm2[5],xmm0[5],xmm2[6],xmm0[6],xmm2[7],xmm0[7]
        punpcklwd       %xmm1, %xmm2    # xmm2 = xmm2[0],xmm1[0],xmm2[1],xmm1[1],xmm2[2],xmm1[2],xmm2[3],xmm1[3]
        movd    192(%rsp), %xmm0        # xmm0 = mem[0],zero,zero,zero
        movd    184(%rsp), %xmm1        # xmm1 = mem[0],zero,zero,zero
        punpcklbw       %xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1],xmm1[2],xmm0[2],xmm1[3],xmm0[3],xmm1[4],xmm0[4],xmm1[5],xmm0[5],xmm1[6],xmm0[6],xmm1[7],xmm0[7]
        movd    176(%rsp), %xmm0        # xmm0 = mem[0],zero,zero,zero
        movd    168(%rsp), %xmm3        # xmm3 = mem[0],zero,zero,zero
        punpcklbw       %xmm0, %xmm3    # xmm3 = xmm3[0],xmm0[0],xmm3[1],xmm0[1],xmm3[2],xmm0[2],xmm3[3],xmm0[3],xmm3[4],xmm0[4],xmm3[5],xmm0[5],xmm3[6],xmm0[6],xmm3[7],xmm0[7]
        punpcklwd       %xmm1, %xmm3    # xmm3 = xmm3[0],xmm1[0],xmm3[1],xmm1[1],xmm3[2],xmm1[2],xmm3[3],xmm1[3]
        punpckldq       %xmm2, %xmm3    # xmm3 = xmm3[0],xmm2[0],xmm3[1],xmm2[1]
        movd    160(%rsp), %xmm0        # xmm0 = mem[0],zero,zero,zero
        movd    152(%rsp), %xmm1        # xmm1 = mem[0],zero,zero,zero
        punpcklbw       %xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1],xmm1[2],xmm0[2],xmm1[3],xmm0[3],xmm1[4],xmm0[4],xmm1[5],xmm0[5],xmm1[6],xmm0[6],xmm1[7],xmm0[7]
        movd    144(%rsp), %xmm0        # xmm0 = mem[0],zero,zero,zero
        movd    136(%rsp), %xmm2        # xmm2 = mem[0],zero,zero,zero
        punpcklbw       %xmm0, %xmm2    # xmm2 = xmm2[0],xmm0[0],xmm2[1],xmm0[1],xmm2[2],xmm0[2],xmm2[3],xmm0[3],xmm2[4],xmm0[4],xmm2[5],xmm0[5],xmm2[6],xmm0[6],xmm2[7],xmm0[7]
        punpcklwd       %xmm1, %xmm2    # xmm2 = xmm2[0],xmm1[0],xmm2[1],xmm1[1],xmm2[2],xmm1[2],xmm2[3],xmm1[3]
        movd    128(%rsp), %xmm0        # xmm0 = mem[0],zero,zero,zero
        movd    120(%rsp), %xmm1        # xmm1 = mem[0],zero,zero,zero
        punpcklbw       %xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1],xmm1[2],xmm0[2],xmm1[3],xmm0[3],xmm1[4],xmm0[4],xmm1[5],xmm0[5],xmm1[6],xmm0[6],xmm1[7],xmm0[7]
        movd    112(%rsp), %xmm0        # xmm0 = mem[0],zero,zero,zero
        movd    104(%rsp), %xmm6        # xmm6 = mem[0],zero,zero,zero
        punpcklbw       %xmm0, %xmm6    # xmm6 = xmm6[0],xmm0[0],xmm6[1],xmm0[1],xmm6[2],xmm0[2],xmm6[3],xmm0[3],xmm6[4],xmm0[4],xmm6[5],xmm0[5],xmm6[6],xmm0[6],xmm6[7],xmm0[7]
        punpcklwd       %xmm1, %xmm6    # xmm6 = xmm6[0],xmm1[0],xmm6[1],xmm1[1],xmm6[2],xmm1[2],xmm6[3],xmm1[3]
        punpckldq       %xmm2, %xmm6    # xmm6 = xmm6[0],xmm2[0],xmm6[1],xmm2[1]
        punpcklqdq      %xmm3, %xmm6    # xmm6 = xmm6[0],xmm3[0]
        paddb   %xmm7, %xmm6
        movd    1120(%rsp), %xmm0       # xmm0 = mem[0],zero,zero,zero
        movd    1112(%rsp), %xmm1       # xmm1 = mem[0],zero,zero,zero
        punpcklbw       %xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1],xmm1[2],xmm0[2],xmm1[3],xmm0[3],xmm1[4],xmm0[4],xmm1[5],xmm0[5],xmm1[6],xmm0[6],xmm1[7],xmm0[7]
        movd    1104(%rsp), %xmm0       # xmm0 = mem[0],zero,zero,zero
        movd    1096(%rsp), %xmm2       # xmm2 = mem[0],zero,zero,zero
        punpcklbw       %xmm0, %xmm2    # xmm2 = xmm2[0],xmm0[0],xmm2[1],xmm0[1],xmm2[2],xmm0[2],xmm2[3],xmm0[3],xmm2[4],xmm0[4],xmm2[5],xmm0[5],xmm2[6],xmm0[6],xmm2[7],xmm0[7]
        punpcklwd       %xmm1, %xmm2    # xmm2 = xmm2[0],xmm1[0],xmm2[1],xmm1[1],xmm2[2],xmm1[2],xmm2[3],xmm1[3]
        movd    1088(%rsp), %xmm0       # xmm0 = mem[0],zero,zero,zero
        movd    1080(%rsp), %xmm1       # xmm1 = mem[0],zero,zero,zero
        punpcklbw       %xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1],xmm1[2],xmm0[2],xmm1[3],xmm0[3],xmm1[4],xmm0[4],xmm1[5],xmm0[5],xmm1[6],xmm0[6],xmm1[7],xmm0[7]
        movd    1072(%rsp), %xmm0       # xmm0 = mem[0],zero,zero,zero
        movd    1064(%rsp), %xmm3       # xmm3 = mem[0],zero,zero,zero
        punpcklbw       %xmm0, %xmm3    # xmm3 = xmm3[0],xmm0[0],xmm3[1],xmm0[1],xmm3[2],xmm0[2],xmm3[3],xmm0[3],xmm3[4],xmm0[4],xmm3[5],xmm0[5],xmm3[6],xmm0[6],xmm3[7],xmm0[7]
        punpcklwd       %xmm1, %xmm3    # xmm3 = xmm3[0],xmm1[0],xmm3[1],xmm1[1],xmm3[2],xmm1[2],xmm3[3],xmm1[3]
        punpckldq       %xmm2, %xmm3    # xmm3 = xmm3[0],xmm2[0],xmm3[1],xmm2[1]
        movd    1056(%rsp), %xmm0       # xmm0 = mem[0],zero,zero,zero
        movd    1048(%rsp), %xmm1       # xmm1 = mem[0],zero,zero,zero
        punpcklbw       %xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1],xmm1[2],xmm0[2],xmm1[3],xmm0[3],xmm1[4],xmm0[4],xmm1[5],xmm0[5],xmm1[6],xmm0[6],xmm1[7],xmm0[7]
        movd    1040(%rsp), %xmm0       # xmm0 = mem[0],zero,zero,zero
        movd    1032(%rsp), %xmm2       # xmm2 = mem[0],zero,zero,zero
        punpcklbw       %xmm0, %xmm2    # xmm2 = xmm2[0],xmm0[0],xmm2[1],xmm0[1],xmm2[2],xmm0[2],xmm2[3],xmm0[3],xmm2[4],xmm0[4],xmm2[5],xmm0[5],xmm2[6],xmm0[6],xmm2[7],xmm0[7]
        punpcklwd       %xmm1, %xmm2    # xmm2 = xmm2[0],xmm1[0],xmm2[1],xmm1[1],xmm2[2],xmm1[2],xmm2[3],xmm1[3]
        movd    1024(%rsp), %xmm0       # xmm0 = mem[0],zero,zero,zero
        movd    1016(%rsp), %xmm1       # xmm1 = mem[0],zero,zero,zero
        punpcklbw       %xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1],xmm1[2],xmm0[2],xmm1[3],xmm0[3],xmm1[4],xmm0[4],xmm1[5],xmm0[5],xmm1[6],xmm0[6],xmm1[7],xmm0[7]
        movd    1008(%rsp), %xmm7       # xmm7 = mem[0],zero,zero,zero
        movd    1000(%rsp), %xmm0       # xmm0 = mem[0],zero,zero,zero
        punpcklbw       %xmm7, %xmm0    # xmm0 = xmm0[0],xmm7[0],xmm0[1],xmm7[1],xmm0[2],xmm7[2],xmm0[3],xmm7[3],xmm0[4],xmm7[4],xmm0[5],xmm7[5],xmm0[6],xmm7[6],xmm0[7],xmm7[7]
        punpcklwd       %xmm1, %xmm0    # xmm0 = xmm0[0],xmm1[0],xmm0[1],xmm1[1],xmm0[2],xmm1[2],xmm0[3],xmm1[3]
        punpckldq       %xmm2, %xmm0    # xmm0 = xmm0[0],xmm2[0],xmm0[1],xmm2[1]
        punpcklqdq      %xmm3, %xmm0    # xmm0 = xmm0[0],xmm3[0]
        movd    96(%rsp), %xmm1         # xmm1 = mem[0],zero,zero,zero
        movd    88(%rsp), %xmm2         # xmm2 = mem[0],zero,zero,zero
        punpcklbw       %xmm1, %xmm2    # xmm2 = xmm2[0],xmm1[0],xmm2[1],xmm1[1],xmm2[2],xmm1[2],xmm2[3],xmm1[3],xmm2[4],xmm1[4],xmm2[5],xmm1[5],xmm2[6],xmm1[6],xmm2[7],xmm1[7]
        movd    80(%rsp), %xmm1         # xmm1 = mem[0],zero,zero,zero
        movd    72(%rsp), %xmm3         # xmm3 = mem[0],zero,zero,zero
        punpcklbw       %xmm1, %xmm3    # xmm3 = xmm3[0],xmm1[0],xmm3[1],xmm1[1],xmm3[2],xmm1[2],xmm3[3],xmm1[3],xmm3[4],xmm1[4],xmm3[5],xmm1[5],xmm3[6],xmm1[6],xmm3[7],xmm1[7]
        punpcklwd       %xmm2, %xmm3    # xmm3 = xmm3[0],xmm2[0],xmm3[1],xmm2[1],xmm3[2],xmm2[2],xmm3[3],xmm2[3]
        movd    64(%rsp), %xmm1         # xmm1 = mem[0],zero,zero,zero
        movd    56(%rsp), %xmm2         # xmm2 = mem[0],zero,zero,zero
        punpcklbw       %xmm1, %xmm2    # xmm2 = xmm2[0],xmm1[0],xmm2[1],xmm1[1],xmm2[2],xmm1[2],xmm2[3],xmm1[3],xmm2[4],xmm1[4],xmm2[5],xmm1[5],xmm2[6],xmm1[6],xmm2[7],xmm1[7]
        movd    48(%rsp), %xmm1         # xmm1 = mem[0],zero,zero,zero
        movd    40(%rsp), %xmm4         # xmm4 = mem[0],zero,zero,zero
        punpcklbw       %xmm1, %xmm4    # xmm4 = xmm4[0],xmm1[0],xmm4[1],xmm1[1],xmm4[2],xmm1[2],xmm4[3],xmm1[3],xmm4[4],xmm1[4],xmm4[5],xmm1[5],xmm4[6],xmm1[6],xmm4[7],xmm1[7]
        punpcklwd       %xmm2, %xmm4    # xmm4 = xmm4[0],xmm2[0],xmm4[1],xmm2[1],xmm4[2],xmm2[2],xmm4[3],xmm2[3]
        punpckldq       %xmm3, %xmm4    # xmm4 = xmm4[0],xmm3[0],xmm4[1],xmm3[1]
        movd    32(%rsp), %xmm1         # xmm1 = mem[0],zero,zero,zero
        movd    24(%rsp), %xmm2         # xmm2 = mem[0],zero,zero,zero
        punpcklbw       %xmm1, %xmm2    # xmm2 = xmm2[0],xmm1[0],xmm2[1],xmm1[1],xmm2[2],xmm1[2],xmm2[3],xmm1[3],xmm2[4],xmm1[4],xmm2[5],xmm1[5],xmm2[6],xmm1[6],xmm2[7],xmm1[7]
        movd    %r9d, %xmm1
        movd    16(%rsp), %xmm3         # xmm3 = mem[0],zero,zero,zero
        punpcklbw       %xmm3, %xmm1    # xmm1 = xmm1[0],xmm3[0],xmm1[1],xmm3[1],xmm1[2],xmm3[2],xmm1[3],xmm3[3],xmm1[4],xmm3[4],xmm1[5],xmm3[5],xmm1[6],xmm3[6],xmm1[7],xmm3[7]
        punpcklwd       %xmm2, %xmm1    # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1],xmm1[2],xmm2[2],xmm1[3],xmm2[3]
        movd    %r8d, %xmm2
        movd    %ecx, %xmm3
        punpcklbw       %xmm2, %xmm3    # xmm3 = xmm3[0],xmm2[0],xmm3[1],xmm2[1],xmm3[2],xmm2[2],xmm3[3],xmm2[3],xmm3[4],xmm2[4],xmm3[5],xmm2[5],xmm3[6],xmm2[6],xmm3[7],xmm2[7]
        movd    %edx, %xmm2
        movd    %esi, %xmm7
        punpcklbw       %xmm2, %xmm7    # xmm7 = xmm7[0],xmm2[0],xmm7[1],xmm2[1],xmm7[2],xmm2[2],xmm7[3],xmm2[3],xmm7[4],xmm2[4],xmm7[5],xmm2[5],xmm7[6],xmm2[6],xmm7[7],xmm2[7]
        punpcklwd       %xmm3, %xmm7    # xmm7 = xmm7[0],xmm3[0],xmm7[1],xmm3[1],xmm7[2],xmm3[2],xmm7[3],xmm3[3]
        punpckldq       %xmm1, %xmm7    # xmm7 = xmm7[0],xmm1[0],xmm7[1],xmm1[1]
        punpcklqdq      %xmm4, %xmm7    # xmm7 = xmm7[0],xmm4[0]
        paddb   %xmm0, %xmm7
        movdqa  %xmm8, -32(%rsp)
        movb    -17(%rsp), %al
        andb    $1, %al
        movb    %al, 14(%rdi)
        movb    -18(%rsp), %al
        andb    $1, %al
        movb    %al, 14(%rdi)
        movb    -19(%rsp), %al
        andb    $1, %al
        movb    %al, 14(%rdi)
        movb    -20(%rsp), %al
        andb    $1, %al
        movb    %al, 14(%rdi)
        movb    -21(%rsp), %al
        andb    $1, %al
        movb    %al, 14(%rdi)
        movb    -22(%rsp), %al
        andb    $1, %al
        movb    %al, 14(%rdi)
        movb    -23(%rsp), %al
        andb    $1, %al
        movb    %al, 14(%rdi)
        movb    -24(%rsp), %al
        andb    $1, %al
        movb    %al, 14(%rdi)
        movb    -25(%rsp), %al
        andb    $1, %al
        movb    %al, 14(%rdi)
        movb    -26(%rsp), %al
        andb    $1, %al
        movb    %al, 14(%rdi)
        movb    -27(%rsp), %al
        andb    $1, %al
        movb    %al, 14(%rdi)
        movb    -28(%rsp), %al
        andb    $1, %al
        movb    %al, 14(%rdi)
        movb    -29(%rsp), %al
        andb    $1, %al
        movb    %al, 14(%rdi)
        movb    -30(%rsp), %al
        andb    $1, %al
        movb    %al, 14(%rdi)
        movb    -32(%rsp), %al
        movb    -31(%rsp), %cl
        andb    $1, %cl
        movb    %cl, 14(%rdi)
        andb    $1, %al
        movb    %al, 14(%rdi)
        movdqa  %xmm9, -48(%rsp)
        movb    -33(%rsp), %al
        andb    $1, %al
        movb    %al, 12(%rdi)
        movb    -34(%rsp), %al
        andb    $1, %al
        movb    %al, 12(%rdi)
        movb    -35(%rsp), %al
        andb    $1, %al
        movb    %al, 12(%rdi)
        movb    -36(%rsp), %al
        andb    $1, %al
        movb    %al, 12(%rdi)
        movb    -37(%rsp), %al
        andb    $1, %al
        movb    %al, 12(%rdi)
        movb    -38(%rsp), %al
        andb    $1, %al
        movb    %al, 12(%rdi)
        movb    -39(%rsp), %al
        andb    $1, %al
        movb    %al, 12(%rdi)
        movb    -40(%rsp), %al
        andb    $1, %al
        movb    %al, 12(%rdi)
        movb    -41(%rsp), %al
        andb    $1, %al
        movb    %al, 12(%rdi)
        movb    -42(%rsp), %al
        andb    $1, %al
        movb    %al, 12(%rdi)
        movb    -43(%rsp), %al
        andb    $1, %al
        movb    %al, 12(%rdi)
        movb    -44(%rsp), %al
        andb    $1, %al
        movb    %al, 12(%rdi)
        movb    -45(%rsp), %al
        andb    $1, %al
        movb    %al, 12(%rdi)
        movb    -46(%rsp), %al
        andb    $1, %al
        movb    %al, 12(%rdi)
        movb    -48(%rsp), %al
        movb    -47(%rsp), %cl
        andb    $1, %cl
        movb    %cl, 12(%rdi)
        andb    $1, %al
        movb    %al, 12(%rdi)
        movdqa  %xmm10, -64(%rsp)
        movb    -49(%rsp), %al
        andb    $1, %al
        movb    %al, 10(%rdi)
        movb    -50(%rsp), %al
        andb    $1, %al
        movb    %al, 10(%rdi)
        movb    -51(%rsp), %al
        andb    $1, %al
        movb    %al, 10(%rdi)
        movb    -52(%rsp), %al
        andb    $1, %al
        movb    %al, 10(%rdi)
        movb    -53(%rsp), %al
        andb    $1, %al
        movb    %al, 10(%rdi)
        movb    -54(%rsp), %al
        andb    $1, %al
        movb    %al, 10(%rdi)
        movb    -55(%rsp), %al
        andb    $1, %al
        movb    %al, 10(%rdi)
        movb    -56(%rsp), %al
        andb    $1, %al
        movb    %al, 10(%rdi)
        movb    -57(%rsp), %al
        andb    $1, %al
        movb    %al, 10(%rdi)
        movb    -58(%rsp), %al
        andb    $1, %al
        movb    %al, 10(%rdi)
        movb    -59(%rsp), %al
        andb    $1, %al
        movb    %al, 10(%rdi)
        movb    -60(%rsp), %al
        andb    $1, %al
        movb    %al, 10(%rdi)
        movb    -61(%rsp), %al
        andb    $1, %al
        movb    %al, 10(%rdi)
        movb    -62(%rsp), %al
        andb    $1, %al
        movb    %al, 10(%rdi)
        movb    -64(%rsp), %al
        movb    -63(%rsp), %cl
        andb    $1, %cl
        movb    %cl, 10(%rdi)
        andb    $1, %al
        movb    %al, 10(%rdi)
        movdqa  %xmm11, -80(%rsp)
        movb    -65(%rsp), %al
        andb    $1, %al
        movb    %al, 8(%rdi)
        movb    -66(%rsp), %al
        andb    $1, %al
        movb    %al, 8(%rdi)
        movb    -67(%rsp), %al
        andb    $1, %al
        movb    %al, 8(%rdi)
        movb    -68(%rsp), %al
        andb    $1, %al
        movb    %al, 8(%rdi)
        movb    -69(%rsp), %al
        andb    $1, %al
        movb    %al, 8(%rdi)
        movb    -70(%rsp), %al
        andb    $1, %al
        movb    %al, 8(%rdi)
        movb    -71(%rsp), %al
        andb    $1, %al
        movb    %al, 8(%rdi)
        movb    -72(%rsp), %al
        andb    $1, %al
        movb    %al, 8(%rdi)
        movb    -73(%rsp), %al
        andb    $1, %al
        movb    %al, 8(%rdi)
        movb    -74(%rsp), %al
        andb    $1, %al
        movb    %al, 8(%rdi)
        movb    -75(%rsp), %al
        andb    $1, %al
        movb    %al, 8(%rdi)
        movb    -76(%rsp), %al
        andb    $1, %al
        movb    %al, 8(%rdi)
        movb    -77(%rsp), %al
        andb    $1, %al
        movb    %al, 8(%rdi)
        movb    -78(%rsp), %al
        andb    $1, %al
        movb    %al, 8(%rdi)
        movb    -80(%rsp), %al
        movb    -79(%rsp), %cl
        andb    $1, %cl
        movb    %cl, 8(%rdi)
        andb    $1, %al
        movb    %al, 8(%rdi)
        movdqa  %xmm12, -96(%rsp)
        movb    -81(%rsp), %al
        andb    $1, %al
        movb    %al, 6(%rdi)
        movb    -82(%rsp), %al
        andb    $1, %al
        movb    %al, 6(%rdi)
        movb    -83(%rsp), %al
        andb    $1, %al
        movb    %al, 6(%rdi)
        movb    -84(%rsp), %al
        andb    $1, %al
        movb    %al, 6(%rdi)
        movb    -85(%rsp), %al
        andb    $1, %al
        movb    %al, 6(%rdi)
        movb    -86(%rsp), %al
        andb    $1, %al
        movb    %al, 6(%rdi)
        movb    -87(%rsp), %al
        andb    $1, %al
        movb    %al, 6(%rdi)
        movb    -88(%rsp), %al
        andb    $1, %al
        movb    %al, 6(%rdi)
        movb    -89(%rsp), %al
        andb    $1, %al
        movb    %al, 6(%rdi)
        movb    -90(%rsp), %al
        andb    $1, %al
        movb    %al, 6(%rdi)
        movb    -91(%rsp), %al
        andb    $1, %al
        movb    %al, 6(%rdi)
        movb    -92(%rsp), %al
        andb    $1, %al
        movb    %al, 6(%rdi)
        movb    -93(%rsp), %al
        andb    $1, %al
        movb    %al, 6(%rdi)
        movb    -94(%rsp), %al
        andb    $1, %al
        movb    %al, 6(%rdi)
        movb    -96(%rsp), %al
        movb    -95(%rsp), %cl
        andb    $1, %cl
        movb    %cl, 6(%rdi)
        andb    $1, %al
        movb    %al, 6(%rdi)
        movdqa  %xmm5, -112(%rsp)
        movb    -97(%rsp), %al
        andb    $1, %al
        movb    %al, 4(%rdi)
        movb    -98(%rsp), %al
        andb    $1, %al
        movb    %al, 4(%rdi)
        movb    -99(%rsp), %al
        andb    $1, %al
        movb    %al, 4(%rdi)
        movb    -100(%rsp), %al
        andb    $1, %al
        movb    %al, 4(%rdi)
        movb    -101(%rsp), %al
        andb    $1, %al
        movb    %al, 4(%rdi)
        movb    -102(%rsp), %al
        andb    $1, %al
        movb    %al, 4(%rdi)
        movb    -103(%rsp), %al
        andb    $1, %al
        movb    %al, 4(%rdi)
        movb    -104(%rsp), %al
        andb    $1, %al
        movb    %al, 4(%rdi)
        movb    -105(%rsp), %al
        andb    $1, %al
        movb    %al, 4(%rdi)
        movb    -106(%rsp), %al
        andb    $1, %al
        movb    %al, 4(%rdi)
        movb    -107(%rsp), %al
        andb    $1, %al
        movb    %al, 4(%rdi)
        movb    -108(%rsp), %al
        andb    $1, %al
        movb    %al, 4(%rdi)
        movb    -109(%rsp), %al
        andb    $1, %al
        movb    %al, 4(%rdi)
        movb    -110(%rsp), %al
        andb    $1, %al
        movb    %al, 4(%rdi)
        movb    -112(%rsp), %al
        movb    -111(%rsp), %cl
        andb    $1, %cl
        movb    %cl, 4(%rdi)
        andb    $1, %al
        movb    %al, 4(%rdi)
        movdqa  %xmm6, -128(%rsp)
        movb    -113(%rsp), %al
        andb    $1, %al
        movb    %al, 2(%rdi)
        movb    -114(%rsp), %al
        andb    $1, %al
        movb    %al, 2(%rdi)
        movb    -115(%rsp), %al
        andb    $1, %al
        movb    %al, 2(%rdi)
        movb    -116(%rsp), %al
        andb    $1, %al
        movb    %al, 2(%rdi)
        movb    -117(%rsp), %al
        andb    $1, %al
        movb    %al, 2(%rdi)
        movb    -118(%rsp), %al
        andb    $1, %al
        movb    %al, 2(%rdi)
        movb    -119(%rsp), %al
        andb    $1, %al
        movb    %al, 2(%rdi)
        movb    -120(%rsp), %al
        andb    $1, %al
        movb    %al, 2(%rdi)
        movb    -121(%rsp), %al
        andb    $1, %al
        movb    %al, 2(%rdi)
        movb    -122(%rsp), %al
        andb    $1, %al
        movb    %al, 2(%rdi)
        movb    -123(%rsp), %al
        andb    $1, %al
        movb    %al, 2(%rdi)
        movb    -124(%rsp), %al
        andb    $1, %al
        movb    %al, 2(%rdi)
        movb    -125(%rsp), %al
        andb    $1, %al
        movb    %al, 2(%rdi)
        movb    -126(%rsp), %al
        andb    $1, %al
        movb    %al, 2(%rdi)
        movb    -128(%rsp), %al
        movb    -127(%rsp), %cl
        andb    $1, %cl
        movb    %cl, 2(%rdi)
        andb    $1, %al
        movb    %al, 2(%rdi)
        movdqa  %xmm7, -16(%rsp)
        movb    -1(%rsp), %al
        andb    $1, %al
        movb    %al, (%rdi)
        movb    -2(%rsp), %al
        andb    $1, %al
        movb    %al, (%rdi)
        movb    -3(%rsp), %al
        andb    $1, %al
        movb    %al, (%rdi)
        movb    -4(%rsp), %al
        andb    $1, %al
        movb    %al, (%rdi)
        movb    -5(%rsp), %al
        andb    $1, %al
        movb    %al, (%rdi)
        movb    -6(%rsp), %al
        andb    $1, %al
        movb    %al, (%rdi)
        movb    -7(%rsp), %al
        andb    $1, %al
        movb    %al, (%rdi)
        movb    -8(%rsp), %al
        andb    $1, %al
        movb    %al, (%rdi)
        movb    -9(%rsp), %al
        andb    $1, %al
        movb    %al, (%rdi)
        movb    -10(%rsp), %al
        andb    $1, %al
        movb    %al, (%rdi)
        movb    -11(%rsp), %al
        andb    $1, %al
        movb    %al, (%rdi)
        movb    -12(%rsp), %al
        andb    $1, %al
        movb    %al, (%rdi)
        movb    -13(%rsp), %al
        andb    $1, %al
        movb    %al, (%rdi)
        movb    -14(%rsp), %al
        andb    $1, %al
        movb    %al, (%rdi)
        movb    -16(%rsp), %al
        movb    -15(%rsp), %cl
        andb    $1, %cl
        movb    %cl, (%rdi)
        andb    $1, %al
        movb    %al, (%rdi)
        movq    %rdi, %rax
        popq    %rcx
        retq
.Lfunc_end0:
        .size   add, .Lfunc_end0-add
        .cfi_endproc
                                        # -- End function

        .section        ".note.GNU-stack","",@progbits