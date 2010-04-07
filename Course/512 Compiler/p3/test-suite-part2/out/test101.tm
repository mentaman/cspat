.DATA    5
.SDATA   "third"
.DATA    13
.SDATA   "out of memory"
.DATA    18
.SDATA   "array index error!"
.DATA    6
.SDATA   "second"
.DATA    5
.SDATA   "first"
0: LD    6, 0(5)  save stack pointer
1: LD    4, 0(5)  save frame pointer
3: LDC   0, 21(5)  load array error str address
4: LD    1, 0(0)  load str length into ac2
5: JEQ   1, 5(7)  output nothing when empty
6: LDA   0, 1(0)  increase offset
7: LD    2, 0(0)  load char into ac3
8: OUTC   2, 2, 2  write char
9: LDA   1, -1(1)  decrease length of remaining string in ac2
10: JNE   1, -5(7)  continue print if not yet finish
11: OUTNL 0, 0, 0  emit newline
12: HALT  0, 0, 0  stop because of array error
13: LDC   0, 7(5)  load out of memory str address
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
27: LDC   3, 53(5)  push 0
28: SUB   3, 6, 3  push 0
29: JLE   3, 13(5)  push 0
30: ST    2, 0(6)  push 0
31: LD    2, 0(6)  pop result into AC3
32: LDA   6, 1(6)  pop result into AC3
33: LDC   3, 10(5)  load 10 into ac4
34: MUL   2, 2, 3  mul result with 10
35: LDA   6, -1(6)  push result
36: LDC   3, 53(5)  push result
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
48: LDC   3, 53(5)  push result
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
63: LDC   0, 0(5)  load booleanfalse
65: LDC   0, 47(5)  load string offset 47
66: LD    1, 0(0)  load str length into ac2
67: JEQ   1, 5(7)  output nothing when empty
68: LDA   0, 1(0)  increase offset
69: LD    2, 0(0)  load char into ac3
70: OUTC   2, 2, 2  write char
71: LDA   1, -1(1)  decrease length of remaining string in ac2
72: JNE   1, -5(7)  continue print if not yet finish
73: OUTNL 0, 0, 0  write new line
64: JEQ   0, 10(7)  if expr not true
75: LDC   0, 1(5)  load booleantrue
77: LDC   0, 40(5)  load string offset 40
78: LD    1, 0(0)  load str length into ac2
79: JEQ   1, 5(7)  output nothing when empty
80: LDA   0, 1(0)  increase offset
81: LD    2, 0(0)  load char into ac3
82: OUTC   2, 2, 2  write char
83: LDA   1, -1(1)  decrease length of remaining string in ac2
84: JNE   1, -5(7)  continue print if not yet finish
85: OUTNL 0, 0, 0  write new line
76: JEQ   0, 10(7)  if expr not true
74: LDA   7, 12(7)  Jump to the end of if
86: LDA   7, 0(7)  Jump to the end of if
87: LDC   0, 1(5)  load string offset 1
88: LD    1, 0(0)  load str length into ac2
89: JEQ   1, 5(7)  output nothing when empty
90: LDA   0, 1(0)  increase offset
91: LD    2, 0(0)  load char into ac3
92: OUTC   2, 2, 2  write char
93: LDA   1, -1(1)  decrease length of remaining string in ac2
94: JNE   1, -5(7)  continue print if not yet finish
95: OUTNL 0, 0, 0  write new line
96: HALT  0, 0, 0  program ends
