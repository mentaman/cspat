.DATA    18
.SDATA   "array index error!"
.DATA    3
.SDATA   "123"
0: LD    6, 0(5)  save stack pointer
1: LD    4, 0(5)  save frame pointer
3: LDC   0, 1(5)  load array error str address
4: LD    1, 0(0)  load str length into ac2
5: LDA   0, 1(0)  increase offset
6: LD    2, 0(0)  load char into ac3
7: OUTC   2, 2, 2  write char
8: LDA   1, -1(1)  decrease length of remaining string in ac2
9: JNE   1, -5(7)  continue print if not yet finish
10: OUTNL 0, 0, 0  emit newline
11: HALT  0, 0, 0  stop because of standard error
12: LD    0, -3(4)  load str offset
13: LD    1, 0(0)  load str length
14: LDC   2, 0(5)  load 0 as initial result
15: LDA   6, -1(6)  push 0
16: ST    2, 0(6)  push 0
17: LD    2, 0(6)  pop result into AC3
18: LDA   6, 1(6)  pop result into AC3
19: LDC   3, 10(5)  load 10 into ac4
20: MUL   2, 2, 3  mul result with 10
21: LDA   6, -1(6)  push result
22: ST    2, 0(6)  push result
23: LDA   0, 1(0)  increase str offset
24: LD    2, 0(0)  load char
25: LDC   3, 48(5)  load 48 into ac4
26: SUB   2, 2, 3  compute int value
27: LD    3, 0(6)  pop result into AC4
28: LDA   6, 1(6)  pop result into AC4
29: ADD   2, 2, 3  compute result
30: LDA   6, -1(6)  push result
31: ST    2, 0(6)  push result
32: LDA   1, -1(1)  decrease str length
33: JNE   1, 17(5)  continue if str length
34: LD    0, 0(6)  pop result
35: LDA   6, 1(6)  pop result
36: ST    0, -2(4)  save to return value
37: LD    0, -2(4)  load int/bool/string offset as return value
38: LD    1, -1(4)  load return address
39: LDA   6, 0(4)  change sp to fp + 1
40: LD    4, 0(6)  restore fp
41: LDA   6, 1(6)  restore fp
42: LDA   7, 0(1)  jump to the return address
2: LDA   7, 43(5)  jump to start of the program
43: LDC   0, 1000(5)  load integer 1000
44: ST    0, 24(5)  store int/bool/string into previous used static data
45: LDC   0, 2(5)  load integer 2
46: LDA   6, -1(6)  push first child's value
47: ST    0, 0(6)  push first child's value
48: LDA   6, -1(6)  push fp
49: ST    4, 0(6)  push fp
50: LDA   4, 0(6)  set fp to sp
54: LDA   6, -1(6)  push zero as return value
55: ST    5, 0(6)  push zero as return value
56: LDC   0, 20(5)  load string offset 20
57: LDA   6, -1(6)  push int/bool/str parameter
58: ST    0, 0(6)  push int/bool/str parameter
59: LDA   6, 0(6)  preserve space for local vars
60: LDA   7, 12(5)  jump to procedure call
51: LDC   0, 61(5)  load return address into ac
52: LDA   6, -1(6)  push return address
53: ST    0, 0(6)  push return address
61: LD    1, 0(6)  pop first child's value
62: LDA   6, 1(6)  pop first child's value
63: MUL   0, 0, 1  multiply two children
64: OUT   0, 0, 0  write integer
65: OUTNL 0, 0, 0  write new line
66: HALT  0, 0, 0  program ends
