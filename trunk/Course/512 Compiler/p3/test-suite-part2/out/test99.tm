.DATA    2
.SDATA   "Hi"
.DATA    3
.SDATA   "Hi "
.DATA    5
.SDATA   " -10 "
.DATA    3
.SDATA   "+10"
.DATA    1
.SDATA   "-"
.DATA    15
.SDATA   "m <= 4 && m > 2"
.DATA    18
.SDATA   "array index error!"
.DATA    5
.SDATA   "There"
.DATA    3
.SDATA   "1-0"
.DATA    0
.SDATA   ""
.DATA    15
.SDATA   "m > 4 || m <= 2"
.DATA    8
.SDATA   "Hi There"
.DATA    5
.SDATA   "first"
.DATA    1
.SDATA   " "
.DATA    3
.SDATA   "abc"
.DATA    8
.SDATA   "Hi there"
.DATA    13
.SDATA   "out of memory"
.DATA    3
.SDATA   "10 "
.DATA    6
.SDATA   "second"
0: LD    6, 0(5)  save stack pointer
1: LD    4, 0(5)  save frame pointer
3: LDC   0, 36(5)  load array error str address
4: LD    1, 0(0)  load str length into ac2
5: JEQ   1, 5(7)  output nothing when empty
6: LDA   0, 1(0)  increase offset
7: LD    2, 0(0)  load char into ac3
8: OUTC   2, 2, 2  write char
9: LDA   1, -1(1)  decrease length of remaining string in ac2
10: JNE   1, -5(7)  continue print if not yet finish
11: OUTNL 0, 0, 0  emit newline
12: HALT  0, 0, 0  stop because of array error
13: LDC   0, 112(5)  load out of memory str address
14: LD    1, 0(0)  load str length into ac2
15: JEQ   1, 5(7)  output nothing when empty
16: LDA   0, 1(0)  increase offset
17: LD    2, 0(0)  load char into ac3
18: OUTC   2, 2, 2  write char
19: LDA   1, -1(1)  decrease length of remaining string in ac2
20: JNE   1, -5(7)  continue print if not yet finish
21: OUTNL 0, 0, 0  emit newline
22: HALT  0, 0, 0  stop because of out of memory error
23: LD    0, -3(4)  load str offset
24: LD    1, 0(0)  load str length
25: LDC   2, 0(5)  load 0 as initial result
26: LDA   6, -1(6)  push 0
27: LDC   3, 137(5)  push 0
28: SUB   3, 6, 3  push 0
29: JLE   3, 13(5)  push 0
30: ST    2, 0(6)  push 0
31: LD    2, 0(6)  pop result into AC3
32: LDA   6, 1(6)  pop result into AC3
33: LDC   3, 10(5)  load 10 into ac4
34: MUL   2, 2, 3  mul result with 10
35: LDA   6, -1(6)  push result
36: LDC   3, 137(5)  push result
37: SUB   3, 6, 3  push result
38: JLE   3, 13(5)  push result
39: ST    2, 0(6)  push result
40: LDA   0, 1(0)  increase str offset
41: LD    2, 0(0)  load char
42: LDC   3, 48(5)  load 48 into ac4
43: SUB   2, 2, 3  compute int value
44: LD    3, 0(6)  pop result into AC4
45: LDA   6, 1(6)  pop result into AC4
46: ADD   2, 2, 3  compute result
47: LDA   6, -1(6)  push result
48: LDC   3, 137(5)  push result
49: SUB   3, 6, 3  push result
50: JLE   3, 13(5)  push result
51: ST    2, 0(6)  push result
52: LDA   1, -1(1)  decrease str length
53: JNE   1, 31(5)  continue if str length
54: LD    0, 0(6)  pop result
55: LDA   6, 1(6)  pop result
56: ST    0, -2(4)  save to return value
57: LD    0, -2(4)  load int/bool/string offset as return value
58: LD    1, -1(4)  load return address
59: LDA   6, 0(4)  change sp to fp + 1
60: LD    4, 0(6)  restore fp
61: LDA   6, 1(6)  restore fp
62: LDA   7, 0(1)  jump to the return address
2: LDA   7, 63(5)  jump to start of the program
63: LDC   0, 1(5)  load booleantrue
64: LDA   6, -1(6)  push first child's value
65: LDC   3, 137(5)  push first child's value
66: SUB   3, 6, 3  push first child's value
67: JLE   3, 13(5)  push first child's value
68: ST    0, 0(6)  push first child's value
70: LDC   0, 0(5)  load booleanfalse
71: LDA   1, 0(0)  copy AC to AC2
72: LDC   0, 1(5)  load 1 as true
73: JEQ   1, 1(7)  skip load false
74: LDC   0, 0(5)  load 0 as false
75: LD    1, 0(6)  pop first child's value
76: LDA   6, 1(6)  pop first child's value
77: ADD   1, 0, 1  add two children
78: LDC   0, 1(5)  load 1 as true
79: JNE   1, 1(7)  skip load false
80: LDC   0, 0(5)  load 0 as false
69: JNE   0, 11(7)  short circuit
82: LDC   0, 91(5)  load string offset 91
83: LD    1, 0(0)  load str length into ac2
84: JEQ   1, 5(7)  output nothing when empty
85: LDA   0, 1(0)  increase offset
86: LD    2, 0(0)  load char into ac3
87: OUTC   2, 2, 2  write char
88: LDA   1, -1(1)  decrease length of remaining string in ac2
89: JNE   1, -5(7)  continue print if not yet finish
90: OUTNL 0, 0, 0  write new line
81: JEQ   0, 9(7)  if expr not true
91: LDC   0, 130(5)  load string offset 130
92: LD    1, 0(0)  load str length into ac2
93: JEQ   1, 5(7)  output nothing when empty
94: LDA   0, 1(0)  increase offset
95: LD    2, 0(0)  load char into ac3
96: OUTC   2, 2, 2  write char
97: LDA   1, -1(1)  decrease length of remaining string in ac2
98: JNE   1, -5(7)  continue print if not yet finish
99: OUTNL 0, 0, 0  write new line
100: HALT  0, 0, 0  program ends
