.DATA    2
.SDATA   "Hi"
.DATA    3
.SDATA   "+10"
.DATA    18
.SDATA   "array index error!"
.DATA    5
.SDATA   "There"
.DATA    0
.SDATA   ""
.DATA    14
.SDATA   "should not see"
.DATA    15
.SDATA   "m > 4 || m <= 2"
.DATA    5
.SDATA   "first"
.DATA    1
.SDATA   " "
.DATA    3
.SDATA   "abc"
.DATA    5
.SDATA   "third"
.DATA    5
.SDATA   "inner"
.DATA    13
.SDATA   "out of memory"
.DATA    8
.SDATA   "Hi there"
.DATA    3
.SDATA   "10 "
.DATA    4
.SDATA   "Done"
.DATA    3
.SDATA   "Hi "
.DATA    6
.SDATA   "fourth"
.DATA    5
.SDATA   " -10 "
.DATA    1
.SDATA   "-"
.DATA    15
.SDATA   "m <= 4 && m > 2"
.DATA    11
.SDATA   "after break"
.DATA    3
.SDATA   "1-0"
.DATA    1
.SDATA   "3"
.DATA    5
.SDATA   "outer"
.DATA    8
.SDATA   "Hi There"
.DATA    3
.SDATA   "end"
.DATA    6
.SDATA   "second"
0: LD    6, 0(5)  save stack pointer
1: LD    4, 0(5)  save frame pointer
3: LDC   0, 8(5)  load array error str address
4: LD    1, 0(0)  load str length into ac2
5: JEQ   1, 5(7)  output nothing when empty
6: LDA   0, 1(0)  increase offset
7: LD    2, 0(0)  load char into ac3
8: OUTC   2, 2, 2  write char
9: LDA   1, -1(1)  decrease length of remaining string in ac2
10: JNE   1, -5(7)  continue print if not yet finish
11: OUTNL 0, 0, 0  emit newline
12: HALT  0, 0, 0  stop because of array error
13: LDC   0, 89(5)  load out of memory str address
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
27: LDC   3, 200(5)  push 0
28: SUB   3, 6, 3  push 0
29: JLE   3, 13(5)  push 0
30: ST    2, 0(6)  push 0
31: LD    2, 0(6)  pop result into AC3
32: LDA   6, 1(6)  pop result into AC3
33: LDC   3, 10(5)  load 10 into ac4
34: MUL   2, 2, 3  mul result with 10
35: LDA   6, -1(6)  push result
36: LDC   3, 200(5)  push result
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
48: LDC   3, 200(5)  push result
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
63: LDA   1, 0(4)  load fp into ac2
64: LD    0, -2(1)  load int/bool/str from stack
65: OUT   0, 0, 0  write integer
66: OUTNL 0, 0, 0  write new line
67: LD    1, -1(4)  load return address
68: LDA   6, 0(4)  change sp to fp + 1
69: LD    4, 0(6)  restore fp
70: LDA   6, 1(6)  restore fp
71: LDA   7, 0(1)  jump to the return address
2: LDA   7, 72(5)  jump to start of the program
72: LDA   6, -1(6)  push fp
73: LDC   3, 200(5)  push fp
74: SUB   3, 6, 3  push fp
75: JLE   3, 13(5)  push fp
76: ST    4, 0(6)  push fp
77: LDA   4, 0(6)  set fp to sp
84: LDC   0, 0(5)  load integer 0
85: LDA   6, -1(6)  push first child's value
86: LDC   3, 200(5)  push first child's value
87: SUB   3, 6, 3  push first child's value
88: JLE   3, 13(5)  push first child's value
89: ST    0, 0(6)  push first child's value
90: LDC   0, 5(5)  load integer 5
91: LD    1, 0(6)  pop first child's value
92: LDA   6, 1(6)  pop first child's value
93: ADD   0, 0, 1  add two children
94: LDA   6, -1(6)  push int/bool/str parameter
95: LDC   3, 200(5)  push int/bool/str parameter
96: SUB   3, 6, 3  push int/bool/str parameter
97: JLE   3, 13(5)  push int/bool/str parameter
98: ST    0, 0(6)  push int/bool/str parameter
99: LDA   6, 0(6)  preserve space for local vars
100: LDA   7, 63(5)  jump to procedure call
78: LDC   0, 101(5)  load return address into ac
79: LDA   6, -1(6)  push return address
80: LDC   3, 200(5)  push return address
81: SUB   3, 6, 3  push return address
82: JLE   3, 13(5)  push return address
83: ST    0, 0(6)  push return address
101: HALT  0, 0, 0  program ends
