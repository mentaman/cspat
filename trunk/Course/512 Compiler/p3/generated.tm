.DATA    4
.SDATA   "true"
.DATA    18
.SDATA   "array index error!"
.DATA    5
.SDATA   "false"
.DATA    7
.SDATA   "in proc"
0: LD    6, 0(5)  save stack pointer
1: LD    4, 0(5)  save frame pointer
3: LDC   0, 6(5)  load array error str address
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
43: LDC   0, 31(5)  load string offset 31
44: LD    1, 0(0)  load str length into ac2
45: LDA   0, 1(0)  increase offset
46: LD    2, 0(0)  load char into ac3
47: OUTC   2, 2, 2  write char
48: LDA   1, -1(1)  decrease length of remaining string in ac2
49: JNE   1, -5(7)  continue print if not yet finish
50: OUTNL 0, 0, 0  write new line
51: LDC   0, 0(5)  load booleanfalse
52: LDA   1, 0(4)  load fp into ac2
53: ST    0, -2(1)  store int/bool/string into stack
54: LD    0, -2(4)  load int/bool/string offset as return value
55: LD    1, -1(4)  load return address
56: LDA   6, 0(4)  change sp to fp + 1
57: LD    4, 0(6)  restore fp
58: LDA   6, 1(6)  restore fp
59: LDA   7, 0(1)  jump to the return address
2: LDA   7, 60(5)  jump to start of the program
60: LDC   0, 1(5)  load booleantrue
61: LDA   6, -1(6)  push first child's value
62: ST    0, 0(6)  push first child's value
64: LDA   6, -1(6)  push fp
65: ST    4, 0(6)  push fp
66: LDA   4, 0(6)  set fp to sp
70: LDA   6, -1(6)  push zero as return value
71: ST    5, 0(6)  push zero as return value
72: LDA   6, 0(6)  preserve space for local vars
73: LDA   7, 43(5)  jump to procedure call
67: LDC   0, 74(5)  load return address into ac
68: LDA   6, -1(6)  push return address
69: ST    0, 0(6)  push return address
74: LD    1, 0(6)  pop first child's value
75: LDA   6, 1(6)  pop first child's value
76: ADD   1, 0, 1  add two children
77: LDC   0, 1(5)  load 1 as true
78: JNE   1, 1(7)  skip load false
79: LDC   0, 0(5)  load 0 as false
63: JNE   0, 16(7)  short curcuit
81: LDC   0, 1(5)  load string offset 1
82: LD    1, 0(0)  load str length into ac2
83: LDA   0, 1(0)  increase offset
84: LD    2, 0(0)  load char into ac3
85: OUTC   2, 2, 2  write char
86: LDA   1, -1(1)  decrease length of remaining string in ac2
87: JNE   1, -5(7)  continue print if not yet finish
88: OUTNL 0, 0, 0  write new line
80: JEQ   0, 9(7)  if expr not true
90: LDC   0, 25(5)  load string offset 25
91: LD    1, 0(0)  load str length into ac2
92: LDA   0, 1(0)  increase offset
93: LD    2, 0(0)  load char into ac3
94: OUTC   2, 2, 2  write char
95: LDA   1, -1(1)  decrease length of remaining string in ac2
96: JNE   1, -5(7)  continue print if not yet finish
97: OUTNL 0, 0, 0  write new line
89: LDA   7, 8(7)  Jump to the end of if
98: LDC   0, 0(5)  load booleanfalse
100: LDA   6, -1(6)  push first child's value
101: ST    0, 0(6)  push first child's value
102: LDA   6, -1(6)  push fp
103: ST    4, 0(6)  push fp
104: LDA   4, 0(6)  set fp to sp
108: LDA   6, -1(6)  push zero as return value
109: ST    5, 0(6)  push zero as return value
110: LDA   6, 0(6)  preserve space for local vars
111: LDA   7, 43(5)  jump to procedure call
105: LDC   0, 112(5)  load return address into ac
106: LDA   6, -1(6)  push return address
107: ST    0, 0(6)  push return address
112: LD    1, 0(6)  pop first child's value
113: LDA   6, 1(6)  pop first child's value
114: MUL   0, 0, 1  multiply two children
99: JEQ   0, 15(7)  short curcuit
116: LDC   0, 1(5)  load string offset 1
117: LD    1, 0(0)  load str length into ac2
118: LDA   0, 1(0)  increase offset
119: LD    2, 0(0)  load char into ac3
120: OUTC   2, 2, 2  write char
121: LDA   1, -1(1)  decrease length of remaining string in ac2
122: JNE   1, -5(7)  continue print if not yet finish
123: OUTNL 0, 0, 0  write new line
115: JEQ   0, 9(7)  if expr not true
125: LDC   0, 25(5)  load string offset 25
126: LD    1, 0(0)  load str length into ac2
127: LDA   0, 1(0)  increase offset
128: LD    2, 0(0)  load char into ac3
129: OUTC   2, 2, 2  write char
130: LDA   1, -1(1)  decrease length of remaining string in ac2
131: JNE   1, -5(7)  continue print if not yet finish
132: OUTNL 0, 0, 0  write new line
124: LDA   7, 8(7)  Jump to the end of if
133: HALT  0, 0, 0  program ends
