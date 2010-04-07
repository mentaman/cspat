.DATA    3
.SDATA   "Hi "
.DATA    2
.SDATA   "Hi"
.DATA    13
.SDATA   "out of memory"
.DATA    15
.SDATA   "m <= 4 && m > 2"
.DATA    18
.SDATA   "array index error!"
.DATA    5
.SDATA   "There"
.DATA    15
.SDATA   "m > 4 || m <= 2"
0: LD    6, 0(5)  save stack pointer
1: LD    4, 0(5)  save frame pointer
3: LDC   0, 38(5)  load array error str address
4: LD    1, 0(0)  load str length into ac2
5: JEQ   1, 5(7)  output nothing when empty
6: LDA   0, 1(0)  increase offset
7: LD    2, 0(0)  load char into ac3
8: OUTC   2, 2, 2  write char
9: LDA   1, -1(1)  decrease length of remaining string in ac2
10: JNE   1, -5(7)  continue print if not yet finish
11: OUTNL 0, 0, 0  emit newline
12: HALT  0, 0, 0  stop because of array error
13: LDC   0, 8(5)  load out of memory str address
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
27: LDC   3, 79(5)  push 0
28: SUB   3, 6, 3  push 0
29: JLE   3, 13(5)  push 0
30: ST    2, 0(6)  push 0
31: LD    2, 0(6)  pop result into AC3
32: LDA   6, 1(6)  pop result into AC3
33: LDC   3, 10(5)  load 10 into ac4
34: MUL   2, 2, 3  mul result with 10
35: LDA   6, -1(6)  push result
36: LDC   3, 79(5)  push result
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
48: LDC   3, 79(5)  push result
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
63: LDC   0, 0(5)  load integer 0
64: LDA   1, 0(4)  load fp into ac2
65: ST    0, -2(1)  store int/bool/string into stack
66: LDA   1, 0(4)  load fp into ac2
67: LD    0, -2(1)  load int/bool/str from stack
68: LDA   6, -1(6)  push first child's value
69: LDC   3, 79(5)  push first child's value
70: SUB   3, 6, 3  push first child's value
71: JLE   3, 13(5)  push first child's value
72: ST    0, 0(6)  push first child's value
73: LDC   0, 5(5)  load integer 5
74: LD    1, 0(6)  pop first child's value
75: LDA   6, 1(6)  pop first child's value
76: SUB   1, 1, 0  greater than
77: LDC   0, 1(5)  load 1 as true
78: JLT   1, 1(7)  skip load false
79: LDC   0, 0(5)  load 0 as false
81: LDA   1, 0(4)  load fp into ac2
82: LD    0, -2(1)  load int/bool/str from stack
83: LDA   6, -1(6)  push first child's value
84: LDC   3, 79(5)  push first child's value
85: SUB   3, 6, 3  push first child's value
86: JLE   3, 13(5)  push first child's value
87: ST    0, 0(6)  push first child's value
88: LDC   0, 3(5)  load integer 3
89: LD    1, 0(6)  pop first child's value
90: LDA   6, 1(6)  pop first child's value
91: SUB   1, 1, 0  greater than
92: LDC   0, 1(5)  load 1 as true
93: JEQ   1, 1(7)  skip load false
94: LDC   0, 0(5)  load 0 as false
95: JEQ   0, 1(7)  if expr not true
97: LDA   1, 0(4)  load fp into ac2
98: LD    0, -2(1)  load int/bool/str from stack
99: OUT   0, 0, 0  write integer
100: OUTNL 0, 0, 0  write new line
101: LDA   1, 0(4)  load fp into ac2
102: LD    0, -2(1)  load int/bool/str from stack
103: LDA   6, -1(6)  push first child's value
104: LDC   3, 79(5)  push first child's value
105: SUB   3, 6, 3  push first child's value
106: JLE   3, 13(5)  push first child's value
107: ST    0, 0(6)  push first child's value
108: LDC   0, 1(5)  load integer 1
109: LD    1, 0(6)  pop first child's value
110: LDA   6, 1(6)  pop first child's value
111: ADD   0, 0, 1  add two children
112: LDA   1, 0(4)  load fp into ac2
113: ST    0, -2(1)  store int/bool/string into stack
114: LDA   7, -49(7)  jump back to loop start
80: JEQ   0, 34(7)  jump out of the do loop
96: LDA   7, 18(7)  break -> jump out of the do loop
115: LD    1, -1(4)  load return address
116: LDA   6, 0(4)  change sp to fp + 1
117: LD    4, 0(6)  restore fp
118: LDA   6, 1(6)  restore fp
119: LDA   7, 0(1)  jump to the return address
2: LDA   7, 120(5)  jump to start of the program
120: LDA   6, -1(6)  push fp
121: LDC   3, 79(5)  push fp
122: SUB   3, 6, 3  push fp
123: JLE   3, 13(5)  push fp
124: ST    4, 0(6)  push fp
125: LDA   4, 0(6)  set fp to sp
132: LDA   6, -1(6)  preserve space for local vars
133: LDA   7, 63(5)  jump to procedure call
126: LDC   0, 134(5)  load return address into ac
127: LDA   6, -1(6)  push return address
128: LDC   3, 79(5)  push return address
129: SUB   3, 6, 3  push return address
130: JLE   3, 13(5)  push return address
131: ST    0, 0(6)  push return address
134: LDC   0, 6(5)  load integer 6
135: OUT   0, 0, 0  write integer
136: OUTNL 0, 0, 0  write new line
137: HALT  0, 0, 0  program ends
