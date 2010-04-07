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
27: LDC   3, 49(5)  push 0
28: SUB   3, 6, 3  push 0
29: JLE   3, 13(5)  push 0
30: ST    2, 0(6)  push 0
31: LD    2, 0(6)  pop result into AC3
32: LDA   6, 1(6)  pop result into AC3
33: LDC   3, 10(5)  load 10 into ac4
34: MUL   2, 2, 3  mul result with 10
35: LDA   6, -1(6)  push result
36: LDC   3, 49(5)  push result
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
48: LDC   3, 49(5)  push result
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
63: LDC   0, 7(5)  load integer 7
64: LDA   1, 0(4)  load fp into ac2
65: ST    0, -4(1)  store int/bool/string into stack
66: LDC   0, 9(5)  load integer 9
67: LDA   1, 0(4)  load fp into ac2
68: ST    0, -5(1)  store int/bool/string into stack
69: LDA   1, 0(4)  load fp into ac2
70: LD    0, -3(1)  load int/bool/str from stack
72: LD    0, 48(5)  load int/bool/str from static data
73: LDA   6, -1(6)  push first child's value
74: LDC   3, 49(5)  push first child's value
75: SUB   3, 6, 3  push first child's value
76: JLE   3, 13(5)  push first child's value
77: ST    0, 0(6)  push first child's value
78: LDA   1, 0(4)  load fp into ac2
79: LD    0, -4(1)  load int/bool/str from stack
80: LD    1, 0(6)  pop first child's value
81: LDA   6, 1(6)  pop first child's value
82: ADD   0, 0, 1  add two children
83: LDA   6, -1(6)  push first child's value
84: LDC   3, 49(5)  push first child's value
85: SUB   3, 6, 3  push first child's value
86: JLE   3, 13(5)  push first child's value
87: ST    0, 0(6)  push first child's value
88: LDA   1, 0(4)  load fp into ac2
89: LD    0, -5(1)  load int/bool/str from stack
90: LD    1, 0(6)  pop first child's value
91: LDA   6, 1(6)  pop first child's value
92: ADD   0, 0, 1  add two children
93: LDA   6, -1(6)  push first child's value
94: LDC   3, 49(5)  push first child's value
95: SUB   3, 6, 3  push first child's value
96: JLE   3, 13(5)  push first child's value
97: ST    0, 0(6)  push first child's value
98: LDA   1, 0(4)  load fp into ac2
99: LD    0, -2(1)  load int/bool/str from stack
100: LD    1, 0(6)  pop first child's value
101: LDA   6, 1(6)  pop first child's value
102: ADD   0, 0, 1  add two children
103: ST    0, 48(5)  store int/bool/string into previous used static data
71: JEQ   0, 33(7)  if expr not true
105: LD    0, 48(5)  load int/bool/str from static data
106: LDA   6, -1(6)  push first child's value
107: LDC   3, 49(5)  push first child's value
108: SUB   3, 6, 3  push first child's value
109: JLE   3, 13(5)  push first child's value
110: ST    0, 0(6)  push first child's value
111: LDA   1, 0(4)  load fp into ac2
112: LD    0, -4(1)  load int/bool/str from stack
113: LD    1, 0(6)  pop first child's value
114: LDA   6, 1(6)  pop first child's value
115: ADD   0, 0, 1  add two children
116: LDA   6, -1(6)  push first child's value
117: LDC   3, 49(5)  push first child's value
118: SUB   3, 6, 3  push first child's value
119: JLE   3, 13(5)  push first child's value
120: ST    0, 0(6)  push first child's value
121: LDA   1, 0(4)  load fp into ac2
122: LD    0, -5(1)  load int/bool/str from stack
123: LD    1, 0(6)  pop first child's value
124: LDA   6, 1(6)  pop first child's value
125: ADD   0, 0, 1  add two children
126: ST    0, 48(5)  store int/bool/string into previous used static data
104: LDA   7, 22(7)  Jump to the end of if
127: LD    1, -1(4)  load return address
128: LDA   6, 0(4)  change sp to fp + 1
129: LD    4, 0(6)  restore fp
130: LDA   6, 1(6)  restore fp
131: LDA   7, 0(1)  jump to the return address
2: LDA   7, 132(5)  jump to start of the program
132: LDC   0, 16(5)  load integer 16
133: ST    0, 48(5)  store int/bool/string into previous used static data
134: LDC   0, 0(5)  load integer 0
135: ST    0, 47(5)  store int/bool/string into previous used static data
136: LDA   6, -1(6)  push fp
137: LDC   3, 49(5)  push fp
138: SUB   3, 6, 3  push fp
139: JLE   3, 13(5)  push fp
140: ST    4, 0(6)  push fp
141: LDA   4, 0(6)  set fp to sp
148: LDC   0, 100(5)  load integer 100
149: LDA   6, -1(6)  push int/bool/str parameter
150: LDC   3, 49(5)  push int/bool/str parameter
151: SUB   3, 6, 3  push int/bool/str parameter
152: JLE   3, 13(5)  push int/bool/str parameter
153: ST    0, 0(6)  push int/bool/str parameter
154: LDC   0, 0(5)  load booleanfalse
155: LDA   6, -1(6)  push int/bool/str parameter
156: LDC   3, 49(5)  push int/bool/str parameter
157: SUB   3, 6, 3  push int/bool/str parameter
158: JLE   3, 13(5)  push int/bool/str parameter
159: ST    0, 0(6)  push int/bool/str parameter
160: LDA   6, -2(6)  preserve space for local vars
161: LDA   7, 63(5)  jump to procedure call
142: LDC   0, 162(5)  load return address into ac
143: LDA   6, -1(6)  push return address
144: LDC   3, 49(5)  push return address
145: SUB   3, 6, 3  push return address
146: JLE   3, 13(5)  push return address
147: ST    0, 0(6)  push return address
162: LD    0, 48(5)  load int/bool/str from static data
163: OUT   0, 0, 0  write integer
164: OUTNL 0, 0, 0  write new line
165: LDA   6, -1(6)  push fp
166: LDC   3, 49(5)  push fp
167: SUB   3, 6, 3  push fp
168: JLE   3, 13(5)  push fp
169: ST    4, 0(6)  push fp
170: LDA   4, 0(6)  set fp to sp
177: LDC   0, 32(5)  load integer 32
178: LDC   1, 0(5)  load 0 into AC2
179: SUB   0, 1, 0  compute negative number
180: LDA   6, -1(6)  push int/bool/str parameter
181: LDC   3, 49(5)  push int/bool/str parameter
182: SUB   3, 6, 3  push int/bool/str parameter
183: JLE   3, 13(5)  push int/bool/str parameter
184: ST    0, 0(6)  push int/bool/str parameter
185: LDC   0, 1(5)  load booleantrue
186: LDA   6, -1(6)  push int/bool/str parameter
187: LDC   3, 49(5)  push int/bool/str parameter
188: SUB   3, 6, 3  push int/bool/str parameter
189: JLE   3, 13(5)  push int/bool/str parameter
190: ST    0, 0(6)  push int/bool/str parameter
191: LDA   6, -2(6)  preserve space for local vars
192: LDA   7, 63(5)  jump to procedure call
171: LDC   0, 193(5)  load return address into ac
172: LDA   6, -1(6)  push return address
173: LDC   3, 49(5)  push return address
174: SUB   3, 6, 3  push return address
175: JLE   3, 13(5)  push return address
176: ST    0, 0(6)  push return address
193: LD    0, 48(5)  load int/bool/str from static data
194: OUT   0, 0, 0  write integer
195: OUTNL 0, 0, 0  write new line
196: LD    0, 47(5)  load int/bool/str from static data
197: OUT   0, 0, 0  write integer
198: OUTNL 0, 0, 0  write new line
199: HALT  0, 0, 0  program ends
