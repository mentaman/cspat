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
63: LDC   0, 1(5)  load booleantrue
64: LDA   1, 0(4)  load fp into ac2
65: ST    0, -2(1)  store int/bool/string into stack
66: LDC   0, 1(5)  load integer 1
67: OUT   0, 0, 0  write integer
68: OUTNL 0, 0, 0  write new line
69: LD    0, -2(4)  load int/bool/string offset as return value
70: LD    1, -1(4)  load return address
71: LDA   6, 0(4)  change sp to fp + 1
72: LD    4, 0(6)  restore fp
73: LDA   6, 1(6)  restore fp
74: LDA   7, 0(1)  jump to the return address
2: LDA   7, 75(5)  jump to start of the program
75: LDC   0, 1(5)  load booleantrue
76: LDA   6, -1(6)  push first child's value
77: LDC   3, 34(5)  push first child's value
78: SUB   3, 6, 3  push first child's value
79: JLE   3, 13(5)  push first child's value
80: ST    0, 0(6)  push first child's value
82: LDA   6, -1(6)  push fp
83: LDC   3, 34(5)  push fp
84: SUB   3, 6, 3  push fp
85: JLE   3, 13(5)  push fp
86: ST    4, 0(6)  push fp
87: LDA   4, 0(6)  set fp to sp
94: LDA   6, -1(6)  push zero as return value
95: LDC   3, 34(5)  push zero as return value
96: SUB   3, 6, 3  push zero as return value
97: JLE   3, 13(5)  push zero as return value
98: ST    5, 0(6)  push zero as return value
99: LDA   6, -1(6)  preserve space for local vars
100: LDA   7, 63(5)  jump to procedure call
88: LDC   0, 101(5)  load return address into ac
89: LDA   6, -1(6)  push return address
90: LDC   3, 34(5)  push return address
91: SUB   3, 6, 3  push return address
92: JLE   3, 13(5)  push return address
93: ST    0, 0(6)  push return address
101: LD    1, 0(6)  pop first child's value
102: LDA   6, 1(6)  pop first child's value
103: ADD   1, 0, 1  add two children
104: LDC   0, 1(5)  load 1 as true
105: JNE   1, 1(7)  skip load false
106: LDC   0, 0(5)  load 0 as false
81: JNE   0, 25(7)  short circuit
108: LDC   0, 2(5)  load integer 2
109: OUT   0, 0, 0  write integer
110: OUTNL 0, 0, 0  write new line
107: JEQ   0, 3(7)  if expr not true
111: LDC   0, 0(5)  load booleanfalse
113: LDA   6, -1(6)  push first child's value
114: LDC   3, 34(5)  push first child's value
115: SUB   3, 6, 3  push first child's value
116: JLE   3, 13(5)  push first child's value
117: ST    0, 0(6)  push first child's value
118: LDA   6, -1(6)  push fp
119: LDC   3, 34(5)  push fp
120: SUB   3, 6, 3  push fp
121: JLE   3, 13(5)  push fp
122: ST    4, 0(6)  push fp
123: LDA   4, 0(6)  set fp to sp
130: LDA   6, -1(6)  push zero as return value
131: LDC   3, 34(5)  push zero as return value
132: SUB   3, 6, 3  push zero as return value
133: JLE   3, 13(5)  push zero as return value
134: ST    5, 0(6)  push zero as return value
135: LDA   6, -1(6)  preserve space for local vars
136: LDA   7, 63(5)  jump to procedure call
124: LDC   0, 137(5)  load return address into ac
125: LDA   6, -1(6)  push return address
126: LDC   3, 34(5)  push return address
127: SUB   3, 6, 3  push return address
128: JLE   3, 13(5)  push return address
129: ST    0, 0(6)  push return address
137: LD    1, 0(6)  pop first child's value
138: LDA   6, 1(6)  pop first child's value
139: MUL   0, 0, 1  multiply two children
112: JEQ   0, 27(7)  short circuit
140: LDA   1, 0(0)  copy AC to AC2
141: LDC   0, 1(5)  load 1 as true
142: JEQ   1, 1(7)  skip load false
143: LDC   0, 0(5)  load 0 as false
145: LDC   0, 3(5)  load integer 3
146: OUT   0, 0, 0  write integer
147: OUTNL 0, 0, 0  write new line
144: JEQ   0, 3(7)  if expr not true
148: LDC   0, 4(5)  load integer 4
149: OUT   0, 0, 0  write integer
150: OUTNL 0, 0, 0  write new line
151: HALT  0, 0, 0  program ends
