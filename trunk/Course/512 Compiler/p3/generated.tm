.DATA    3
.SDATA   "112"
0: LD    6, 0(5)  save stack pointer
1: LD    4, 0(5)  save frame pointer
3: LD    0, -3(4)  load str offset
4: LD    1, 0(0)  load str length
5: LDC   2, 0(5)  load 0 as initial result
6: LDA   6, -1(6)  push 0
7: ST    2, 0(6)  push 0
8: LD    2, 0(6)  pop result into AC3
9: LDA   6, 1(6)  pop result into AC3
10: LDC   3, 10(5)  load 10 into ac4
11: MUL   2, 2, 3  mul result with 10
12: LDA   6, -1(6)  push result
13: ST    2, 0(6)  push result
14: LDA   0, 1(0)  increase str offset
15: LD    2, 0(0)  load char
16: LDC   3, 48(5)  load 48 into ac4
17: SUB   2, 2, 3  compute int value
18: LD    3, 0(6)  pop result into AC4
19: LDA   6, 1(6)  pop result into AC4
20: ADD   2, 2, 3  compute result
21: LDA   6, -1(6)  push result
22: ST    2, 0(6)  push result
23: LDA   1, -1(1)  decrease str length
24: JNE   1, 8(5)  continue if str length
25: LD    0, 0(6)  pop result
26: LDA   6, 1(6)  pop result
27: ST    0, -2(4)  save to return value
28: LD    0, -2(4)  load int/bool/string offset as return value
29: LD    1, -1(4)  load return address
30: LDA   6, 0(4)  change sp to fp + 1
31: LD    4, 0(6)  restore fp
32: LDA   6, 1(6)  restore fp
33: LDA   7, 0(1)  jump to the return address
2: LDA   7, 34(5)  jump to start of the program
34: LDA   6, -1(6)  push fp
35: ST    4, 0(6)  push fp
36: LDA   4, 0(6)  set fp to sp
40: LDA   6, -1(6)  push zero as return value
41: ST    5, 0(6)  push zero as return value
42: LDC   0, 1(5)  load string offset 1
43: LDA   6, -1(6)  push int/bool/str parameter
44: ST    0, 0(6)  push int/bool/str parameter
45: LDA   6, 0(6)  preserve space for local vars
46: LDA   7, 3(5)  jump to procedure call
37: LDC   0, 47(5)  load return address into ac
38: LDA   6, -1(6)  push return address
39: ST    0, 0(6)  push return address
47: LDA   6, -1(6)  push first child's value
48: ST    0, 0(6)  push first child's value
49: LDC   0, 1(5)  load integer 1
50: LD    1, 0(6)  pop first child's value
51: LDA   6, 1(6)  pop first child's value
52: ADD   0, 0, 1  add two children
53: OUT   0, 0, 0  write integer
54: OUTNL 0, 0, 0  write new line
55: HALT  0, 0, 0  program ends
