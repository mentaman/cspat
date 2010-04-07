.DATA    2
.SDATA   "Hi"
.DATA    6
.SDATA   "fourth"
.DATA    18
.SDATA   "array index error!"
.DATA    11
.SDATA   "after break"
.DATA    1
.SDATA   "1"
.DATA    14
.SDATA   "should not see"
.DATA    1
.SDATA   "3"
.DATA    5
.SDATA   "outer"
.DATA    5
.SDATA   "first"
.DATA    3
.SDATA   "end"
.DATA    1
.SDATA   " "
.DATA    5
.SDATA   "third"
.DATA    13
.SDATA   "out of memory"
.DATA    5
.SDATA   "inner"
.DATA    4
.SDATA   "Done"
.DATA    6
.SDATA   "second"
0: LD    6, 0(5)  save stack pointer
1: LD    4, 0(5)  save frame pointer
3: LDC   0, 11(5)  load array error str address
4: LD    1, 0(0)  load str length into ac2
5: JEQ   1, 5(7)  output nothing when empty
6: LDA   0, 1(0)  increase offset
7: LD    2, 0(0)  load char into ac3
8: OUTC   2, 2, 2  write char
9: LDA   1, -1(1)  decrease length of remaining string in ac2
10: JNE   1, -5(7)  continue print if not yet finish
11: OUTNL 0, 0, 0  emit newline
12: HALT  0, 0, 0  stop because of array error
13: LDC   0, 85(5)  load out of memory str address
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
27: LDC   3, 119(5)  push 0
28: SUB   3, 6, 3  push 0
29: JLE   3, 13(5)  push 0
30: ST    2, 0(6)  push 0
31: LD    2, 0(6)  pop result into AC3
32: LDA   6, 1(6)  pop result into AC3
33: LDC   3, 10(5)  load 10 into ac4
34: MUL   2, 2, 3  mul result with 10
35: LDA   6, -1(6)  push result
36: LDC   3, 119(5)  push result
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
48: LDC   3, 119(5)  push result
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
63: LDC   0, 0(5)  load integer 0
64: ST    0, 118(5)  store int/bool/string into previous used static data
65: LD    0, 118(5)  load int/bool/str from static data
66: LDA   6, -1(6)  push first child's value
67: LDC   3, 119(5)  push first child's value
68: SUB   3, 6, 3  push first child's value
69: JLE   3, 13(5)  push first child's value
70: ST    0, 0(6)  push first child's value
71: LDC   0, 1(5)  load integer 1
72: LD    1, 0(6)  pop first child's value
73: LDA   6, 1(6)  pop first child's value
74: ADD   0, 0, 1  add two children
75: LDA   6, -1(6)  push first child's value
76: LDC   3, 119(5)  push first child's value
77: SUB   3, 6, 3  push first child's value
78: JLE   3, 13(5)  push first child's value
79: ST    0, 0(6)  push first child's value
80: LDC   0, 1(5)  load booleantrue
81: LD    1, 0(6)  pop first child's value
82: LDA   6, 1(6)  pop first child's value
83: DIV   0, 1, 0  divide two children
84: LDA   6, -1(6)  push first child's value
85: LDC   3, 119(5)  push first child's value
86: SUB   3, 6, 3  push first child's value
87: JLE   3, 13(5)  push first child's value
88: ST    0, 0(6)  push first child's value
89: LDA   6, -1(6)  push fp
90: LDC   3, 119(5)  push fp
91: SUB   3, 6, 3  push fp
92: JLE   3, 13(5)  push fp
93: ST    4, 0(6)  push fp
94: LDA   4, 0(6)  set fp to sp
101: LDA   6, -1(6)  push zero as return value
102: LDC   3, 119(5)  push zero as return value
103: SUB   3, 6, 3  push zero as return value
104: JLE   3, 13(5)  push zero as return value
105: ST    5, 0(6)  push zero as return value
106: LDC   0, 42(5)  load string offset 42
107: LDA   6, -1(6)  push int/bool/str parameter
108: LDC   3, 119(5)  push int/bool/str parameter
109: SUB   3, 6, 3  push int/bool/str parameter
110: JLE   3, 13(5)  push int/bool/str parameter
111: ST    0, 0(6)  push int/bool/str parameter
112: LDA   6, -1(6)  preserve space for local vars
113: LDA   7, 23(5)  jump to procedure call
95: LDC   0, 114(5)  load return address into ac
96: LDA   6, -1(6)  push return address
97: LDC   3, 119(5)  push return address
98: SUB   3, 6, 3  push return address
99: JLE   3, 13(5)  push return address
100: ST    0, 0(6)  push return address
114: LD    1, 0(6)  pop first child's value
115: LDA   6, 1(6)  pop first child's value
116: MUL   0, 0, 1  multiply two children
117: LDA   6, -1(6)  push first child's value
118: LDC   3, 119(5)  push first child's value
119: SUB   3, 6, 3  push first child's value
120: JLE   3, 13(5)  push first child's value
121: ST    0, 0(6)  push first child's value
122: LD    0, 118(5)  load int/bool/str from static data
123: LDA   6, -1(6)  push first child's value
124: LDC   3, 119(5)  push first child's value
125: SUB   3, 6, 3  push first child's value
126: JLE   3, 13(5)  push first child's value
127: ST    0, 0(6)  push first child's value
128: LDC   0, 0(5)  load integer 0
129: LD    1, 0(6)  pop first child's value
130: LDA   6, 1(6)  pop first child's value
131: SUB   1, 1, 0  greater than
132: LDC   0, 1(5)  load 1 as true
133: JNE   1, 1(7)  skip load false
134: LDC   0, 0(5)  load 0 as false
135: LDA   6, -1(6)  push first child's value
136: LDC   3, 119(5)  push first child's value
137: SUB   3, 6, 3  push first child's value
138: JLE   3, 13(5)  push first child's value
139: ST    0, 0(6)  push first child's value
140: LDC   0, 10(5)  load integer 10
141: LDC   1, 0(5)  load 0 into AC2
142: SUB   0, 1, 0  compute negative number
143: LD    1, 0(6)  pop first child's value
144: LDA   6, 1(6)  pop first child's value
145: SUB   0, 1, 0  subtract two children
146: LD    1, 0(6)  pop first child's value
147: LDA   6, 1(6)  pop first child's value
148: DIV   2, 1, 0  divide two children
149: MUL   0, 2, 0  multiply quotient and divisor
150: SUB   0, 1, 0  compute mod
151: ST    0, 118(5)  store int/bool/string into previous used static data
152: LD    0, 118(5)  load int/bool/str from static data
153: OUT   0, 0, 0  write integer
154: OUTNL 0, 0, 0  write new line
155: LD    0, 118(5)  load int/bool/str from static data
156: LDA   6, -1(6)  push first child's value
157: LDC   3, 119(5)  push first child's value
158: SUB   3, 6, 3  push first child's value
159: JLE   3, 13(5)  push first child's value
160: ST    0, 0(6)  push first child's value
161: LDC   0, 2(5)  load integer 2
162: LD    1, 0(6)  pop first child's value
163: LDA   6, 1(6)  pop first child's value
164: SUB   1, 1, 0  greater than
165: LDC   0, 1(5)  load 1 as true
166: JEQ   1, 1(7)  skip load false
167: LDC   0, 0(5)  load 0 as false
168: LDA   6, -1(6)  push first child's value
169: LDC   3, 119(5)  push first child's value
170: SUB   3, 6, 3  push first child's value
171: JLE   3, 13(5)  push first child's value
172: ST    0, 0(6)  push first child's value
174: LDC   0, 1(5)  load booleantrue
176: LDA   6, -1(6)  push first child's value
177: LDC   3, 119(5)  push first child's value
178: SUB   3, 6, 3  push first child's value
179: JLE   3, 13(5)  push first child's value
180: ST    0, 0(6)  push first child's value
181: LDC   0, 0(5)  load booleanfalse
182: LD    1, 0(6)  pop first child's value
183: LDA   6, 1(6)  pop first child's value
184: MUL   0, 0, 1  multiply two children
175: JEQ   0, 9(7)  short circuit
185: LD    1, 0(6)  pop first child's value
186: LDA   6, 1(6)  pop first child's value
187: ADD   1, 0, 1  add two children
188: LDC   0, 1(5)  load 1 as true
189: JNE   1, 1(7)  skip load false
190: LDC   0, 0(5)  load 0 as false
173: JNE   0, 17(7)  short circuit
191: LDA   6, -1(6)  push first child's value
192: LDC   3, 119(5)  push first child's value
193: SUB   3, 6, 3  push first child's value
194: JLE   3, 13(5)  push first child's value
195: ST    0, 0(6)  push first child's value
197: LDC   0, 3(5)  load integer 3
198: LDA   6, -1(6)  push first child's value
199: LDC   3, 119(5)  push first child's value
200: SUB   3, 6, 3  push first child's value
201: JLE   3, 13(5)  push first child's value
202: ST    0, 0(6)  push first child's value
203: LDC   0, 0(5)  load integer 0
204: LD    1, 0(6)  pop first child's value
205: LDA   6, 1(6)  pop first child's value
206: SUB   1, 1, 0  greater than
207: LDC   0, 1(5)  load 1 as true
208: JGT   1, 1(7)  skip load false
209: LDC   0, 0(5)  load 0 as false
210: LDA   6, -1(6)  push first child's value
211: LDC   3, 119(5)  push first child's value
212: SUB   3, 6, 3  push first child's value
213: JLE   3, 13(5)  push first child's value
214: ST    0, 0(6)  push first child's value
216: LD    0, 118(5)  load int/bool/str from static data
217: LDA   6, -1(6)  push first child's value
218: LDC   3, 119(5)  push first child's value
219: SUB   3, 6, 3  push first child's value
220: JLE   3, 13(5)  push first child's value
221: ST    0, 0(6)  push first child's value
222: LDC   0, 0(5)  load integer 0
223: LD    1, 0(6)  pop first child's value
224: LDA   6, 1(6)  pop first child's value
225: SUB   1, 1, 0  greater than
226: LDC   0, 1(5)  load 1 as true
227: JLT   1, 1(7)  skip load false
228: LDC   0, 0(5)  load 0 as false
229: LD    1, 0(6)  pop first child's value
230: LDA   6, 1(6)  pop first child's value
231: ADD   1, 0, 1  add two children
232: LDC   0, 1(5)  load 1 as true
233: JNE   1, 1(7)  skip load false
234: LDC   0, 0(5)  load 0 as false
215: JNE   0, 19(7)  short circuit
235: LDA   1, 0(0)  copy AC to AC2
236: LDC   0, 1(5)  load 1 as true
237: JEQ   1, 1(7)  skip load false
238: LDC   0, 0(5)  load 0 as false
239: LD    1, 0(6)  pop first child's value
240: LDA   6, 1(6)  pop first child's value
241: ADD   1, 0, 1  add two children
242: LDC   0, 1(5)  load 1 as true
243: JNE   1, 1(7)  skip load false
244: LDC   0, 0(5)  load 0 as false
196: JNE   0, 48(7)  short circuit
245: ST    0, 117(5)  store int/bool/string into previous used static data
246: LD    0, 117(5)  load int/bool/str from static data
247: OUT   0, 0, 0  write integer
248: OUTNL 0, 0, 0  write new line
249: HALT  0, 0, 0  program ends
