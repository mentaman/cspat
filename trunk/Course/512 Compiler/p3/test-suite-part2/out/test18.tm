.DATA    13
.SDATA   "out of memory"
.DATA    18
.SDATA   "array index error!"
0: LD    6, 0(5)  save stack pointer
1: LD    4, 0(5)  save frame pointer
3: LDC   0, 15(5)  load array error str address
4: LD    1, 0(0)  load str length into ac2
5: JEQ   1, 5(7)  output nothing when empty
6: LDA   0, 1(0)  increase offset
7: LD    2, 0(0)  load char into ac3
8: OUTC   2, 2, 2  write char
9: LDA   1, -1(1)  decrease length of remaining string in ac2
10: JNE   1, -5(7)  continue print if not yet finish
11: OUTNL 0, 0, 0  emit newline
12: HALT  0, 0, 0  stop because of array error
13: LDC   0, 1(5)  load out of memory str address
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
27: LDC   3, 34(5)  push 0
28: SUB   3, 6, 3  push 0
29: JLE   3, 13(5)  push 0
30: ST    2, 0(6)  push 0
31: LD    2, 0(6)  pop result into AC3
32: LDA   6, 1(6)  pop result into AC3
33: LDC   3, 10(5)  load 10 into ac4
34: MUL   2, 2, 3  mul result with 10
35: LDA   6, -1(6)  push result
36: LDC   3, 34(5)  push result
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
48: LDC   3, 34(5)  push result
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
64: LDA   6, -1(6)  push first child's value
65: LDC   3, 34(5)  push first child's value
66: SUB   3, 6, 3  push first child's value
67: JLE   3, 13(5)  push first child's value
68: ST    0, 0(6)  push first child's value
70: LDC   0, 0(5)  load booleanfalse
71: LD    1, 0(6)  pop first child's value
72: LDA   6, 1(6)  pop first child's value
73: ADD   1, 0, 1  add two children
74: LDC   0, 1(5)  load 1 as true
75: JNE   1, 1(7)  skip load false
76: LDC   0, 0(5)  load 0 as false
69: JNE   0, 7(7)  short circuit
77: OUT   0, 0, 0  write integer
78: OUTNL 0, 0, 0  write new line
79: LDC   0, 0(5)  load booleanfalse
80: LDA   6, -1(6)  push first child's value
81: LDC   3, 34(5)  push first child's value
82: SUB   3, 6, 3  push first child's value
83: JLE   3, 13(5)  push first child's value
84: ST    0, 0(6)  push first child's value
86: LDC   0, 1(5)  load booleantrue
87: LD    1, 0(6)  pop first child's value
88: LDA   6, 1(6)  pop first child's value
89: ADD   1, 0, 1  add two children
90: LDC   0, 1(5)  load 1 as true
91: JNE   1, 1(7)  skip load false
92: LDC   0, 0(5)  load 0 as false
85: JNE   0, 7(7)  short circuit
93: OUT   0, 0, 0  write integer
94: OUTNL 0, 0, 0  write new line
95: LDC   0, 1(5)  load booleantrue
96: LDA   6, -1(6)  push first child's value
97: LDC   3, 34(5)  push first child's value
98: SUB   3, 6, 3  push first child's value
99: JLE   3, 13(5)  push first child's value
100: ST    0, 0(6)  push first child's value
102: LDC   0, 0(5)  load booleanfalse
103: LD    1, 0(6)  pop first child's value
104: LDA   6, 1(6)  pop first child's value
105: ADD   1, 0, 1  add two children
106: LDC   0, 1(5)  load 1 as true
107: JNE   1, 1(7)  skip load false
108: LDC   0, 0(5)  load 0 as false
101: JNE   0, 7(7)  short circuit
109: OUT   0, 0, 0  write integer
110: OUTNL 0, 0, 0  write new line
111: LDC   0, 1(5)  load booleantrue
112: LDA   6, -1(6)  push first child's value
113: LDC   3, 34(5)  push first child's value
114: SUB   3, 6, 3  push first child's value
115: JLE   3, 13(5)  push first child's value
116: ST    0, 0(6)  push first child's value
118: LDC   0, 1(5)  load booleantrue
119: LD    1, 0(6)  pop first child's value
120: LDA   6, 1(6)  pop first child's value
121: ADD   1, 0, 1  add two children
122: LDC   0, 1(5)  load 1 as true
123: JNE   1, 1(7)  skip load false
124: LDC   0, 0(5)  load 0 as false
117: JNE   0, 7(7)  short circuit
125: OUT   0, 0, 0  write integer
126: OUTNL 0, 0, 0  write new line
127: HALT  0, 0, 0  program ends
