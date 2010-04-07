.DATA    3
.SDATA   "Hi "
.DATA    2
.SDATA   "Hi"
.DATA    13
.SDATA   "out of memory"
.DATA    18
.SDATA   "array index error!"
.DATA    5
.SDATA   "There"
0: LD    6, 0(5)  save stack pointer
1: LD    4, 0(5)  save frame pointer
3: LDC   0, 22(5)  load array error str address
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
27: LDC   3, 47(5)  push 0
28: SUB   3, 6, 3  push 0
29: JLE   3, 13(5)  push 0
30: ST    2, 0(6)  push 0
31: LD    2, 0(6)  pop result into AC3
32: LDA   6, 1(6)  pop result into AC3
33: LDC   3, 10(5)  load 10 into ac4
34: MUL   2, 2, 3  mul result with 10
35: LDA   6, -1(6)  push result
36: LDC   3, 47(5)  push result
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
48: LDC   3, 47(5)  push result
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
64: LD    0, -3(1)  load int/bool/str from stack
65: LDA   6, -1(6)  push first child's value
66: LDC   3, 47(5)  push first child's value
67: SUB   3, 6, 3  push first child's value
68: JLE   3, 13(5)  push first child's value
69: ST    0, 0(6)  push first child's value
70: LDA   1, 0(4)  load fp into ac2
71: LD    0, -4(1)  load int/bool/str from stack
72: LD    1, 0(6)  pop first child's value
73: LDA   6, 1(6)  pop first child's value
74: ADD   0, 0, 1  add two children
75: LDA   1, 0(4)  load fp into ac2
76: ST    0, -5(1)  store int/bool/string into stack
77: LDA   1, 0(4)  load fp into ac2
78: LD    0, -5(1)  load int/bool/str from stack
79: LDA   6, -1(6)  push first child's value
80: LDC   3, 47(5)  push first child's value
81: SUB   3, 6, 3  push first child's value
82: JLE   3, 13(5)  push first child's value
83: ST    0, 0(6)  push first child's value
84: LDC   0, 6(5)  load integer 6
85: LD    1, 0(6)  pop first child's value
86: LDA   6, 1(6)  pop first child's value
87: SUB   1, 1, 0  greater than
88: LDC   0, 1(5)  load 1 as true
89: JLT   1, 1(7)  skip load false
90: LDC   0, 0(5)  load 0 as false
92: LDC   0, 1(5)  load booleantrue
93: LDA   1, 0(4)  load fp into ac2
94: ST    0, -2(1)  store int/bool/string into stack
91: JEQ   0, 4(7)  if expr not true
96: LDC   0, 0(5)  load booleanfalse
97: LDA   1, 0(4)  load fp into ac2
98: ST    0, -2(1)  store int/bool/string into stack
95: LDA   7, 3(7)  Jump to the end of if
99: LD    0, -2(4)  load int/bool/string offset as return value
100: LD    1, -1(4)  load return address
101: LDA   6, 0(4)  change sp to fp + 1
102: LD    4, 0(6)  restore fp
103: LDA   6, 1(6)  restore fp
104: LDA   7, 0(1)  jump to the return address
2: LDA   7, 105(5)  jump to start of the program
105: LDA   6, -1(6)  push fp
106: LDC   3, 47(5)  push fp
107: SUB   3, 6, 3  push fp
108: JLE   3, 13(5)  push fp
109: ST    4, 0(6)  push fp
110: LDA   4, 0(6)  set fp to sp
117: LDA   6, -1(6)  push zero as return value
118: LDC   3, 47(5)  push zero as return value
119: SUB   3, 6, 3  push zero as return value
120: JLE   3, 13(5)  push zero as return value
121: ST    5, 0(6)  push zero as return value
122: LDC   0, 1(5)  load integer 1
123: LDA   6, -1(6)  push int/bool/str parameter
124: LDC   3, 47(5)  push int/bool/str parameter
125: SUB   3, 6, 3  push int/bool/str parameter
126: JLE   3, 13(5)  push int/bool/str parameter
127: ST    0, 0(6)  push int/bool/str parameter
128: LDC   0, 2(5)  load integer 2
129: LDA   6, -1(6)  push int/bool/str parameter
130: LDC   3, 47(5)  push int/bool/str parameter
131: SUB   3, 6, 3  push int/bool/str parameter
132: JLE   3, 13(5)  push int/bool/str parameter
133: ST    0, 0(6)  push int/bool/str parameter
134: LDA   6, -2(6)  preserve space for local vars
135: LDA   7, 63(5)  jump to procedure call
111: LDC   0, 136(5)  load return address into ac
112: LDA   6, -1(6)  push return address
113: LDC   3, 47(5)  push return address
114: SUB   3, 6, 3  push return address
115: JLE   3, 13(5)  push return address
116: ST    0, 0(6)  push return address
136: OUT   0, 0, 0  write integer
137: OUTNL 0, 0, 0  write new line
138: LDA   6, -1(6)  push fp
139: LDC   3, 47(5)  push fp
140: SUB   3, 6, 3  push fp
141: JLE   3, 13(5)  push fp
142: ST    4, 0(6)  push fp
143: LDA   4, 0(6)  set fp to sp
150: LDA   6, -1(6)  push zero as return value
151: LDC   3, 47(5)  push zero as return value
152: SUB   3, 6, 3  push zero as return value
153: JLE   3, 13(5)  push zero as return value
154: ST    5, 0(6)  push zero as return value
155: LDC   0, 3(5)  load integer 3
156: LDA   6, -1(6)  push int/bool/str parameter
157: LDC   3, 47(5)  push int/bool/str parameter
158: SUB   3, 6, 3  push int/bool/str parameter
159: JLE   3, 13(5)  push int/bool/str parameter
160: ST    0, 0(6)  push int/bool/str parameter
161: LDC   0, 3(5)  load integer 3
162: LDA   6, -1(6)  push int/bool/str parameter
163: LDC   3, 47(5)  push int/bool/str parameter
164: SUB   3, 6, 3  push int/bool/str parameter
165: JLE   3, 13(5)  push int/bool/str parameter
166: ST    0, 0(6)  push int/bool/str parameter
167: LDA   6, -2(6)  preserve space for local vars
168: LDA   7, 63(5)  jump to procedure call
144: LDC   0, 169(5)  load return address into ac
145: LDA   6, -1(6)  push return address
146: LDC   3, 47(5)  push return address
147: SUB   3, 6, 3  push return address
148: JLE   3, 13(5)  push return address
149: ST    0, 0(6)  push return address
169: OUT   0, 0, 0  write integer
170: OUTNL 0, 0, 0  write new line
171: HALT  0, 0, 0  program ends
