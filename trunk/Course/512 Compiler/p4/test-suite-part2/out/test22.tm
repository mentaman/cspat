.DATA    16
.SDATA   "after test(a[1])"
.DATA    3
.SDATA   "-50"
.DATA    25
.SDATA   "invalid numeric character"
.DATA    6
.SDATA   "i am c"
.DATA    9
.SDATA   "a[0] is: "
.DATA    5
.SDATA   "c is "
.DATA    2
.SDATA   "50"
.DATA    3
.SDATA   "+50"
.DATA    18
.SDATA   "array index error!"
.DATA    9
.SDATA   "i am a[1]"
.DATA    9
.SDATA   "i am a[0]"
.DATA    13
.SDATA   "out of memory"
.DATA    9
.SDATA   "a[1] is: "
0: LD    6, 0(5)  save stack pointer
1: LD    4, 0(5)  save frame pointer
3: LDC   0, 78(5)  load array error str address
4: LD    1, 0(0)  load str length into ac2
5: JEQ   1, 5(7)  output nothing when empty
6: LDA   0, 1(0)  increase offset
7: LD    2, 0(0)  load char into ac3
8: OUTC   2, 2, 2  write char
9: LDA   1, -1(1)  decrease length of remaining string in ac2
10: JNE   1, -5(7)  continue print if not yet finish
11: OUTNL 0, 0, 0  emit newline
12: HALT  0, 0, 0  stop because of array error
13: LDC   0, 117(5)  load out of memory str address
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
25: LDA   0, 1(0)  increase str offset
26: LD    2, 0(0)  load char
27: LDC   3, 43(5)  load 43(+) into ac4
28: SUB   3, 2, 3  sub 43(+)
30: LDC   3, 45(5)  load 45(-) into ac4
31: SUB   3, 2, 3  sub 45(-)
33: LDA   1, -1(1)  decrease str length
34: LDC   2, -1(5)  load -1 into ac3
35: LDA   6, -1(6)  push -1
36: LDC   3, 141(5)  push -1
37: SUB   3, 6, 3  push -1
38: JLE   3, 13(5)  push -1
39: ST    2, 0(6)  push -1
32: JNE   3, 8(7)  jump if not equal '-'
41: LDA   0, -1(0)  move back str offset
42: LDA   1, 1(1)  increase str length
29: JEQ   3, 13(7)  jump if equal '+'
43: LDA   1, -1(1)  decrease str length
44: LDC   2, 1(5)  load 1 into ac3
45: LDA   6, -1(6)  push 1
46: LDC   3, 141(5)  push 1
47: SUB   3, 6, 3  push 1
48: JLE   3, 13(5)  push 1
49: ST    2, 0(6)  push 1
40: LDA   7, 9(7)  jump to start parsing str
50: LDC   2, 0(5)  load 0 as initial result
51: LDA   6, -1(6)  push 0
52: LDC   3, 141(5)  push 0
53: SUB   3, 6, 3  push 0
54: JLE   3, 13(5)  push 0
55: ST    2, 0(6)  push 0
56: LD    2, 0(6)  pop result into AC3
57: LDA   6, 1(6)  pop result into AC3
58: LDC   3, 10(5)  load 10 into ac4
59: MUL   2, 2, 3  mul result with 10
60: LDA   6, -1(6)  push result
61: LDC   3, 141(5)  push result
62: SUB   3, 6, 3  push result
63: JLE   3, 13(5)  push result
64: ST    2, 0(6)  push result
65: LDA   0, 1(0)  increase str offset
66: LD    2, 0(0)  load char
67: LDC   3, 48(5)  load 48 into ac4
68: SUB   2, 2, 3  compute int value
69: LD    3, 0(6)  pop result into AC4
70: LDA   6, 1(6)  pop result into AC4
71: ADD   2, 2, 3  compute result
72: LDA   6, -1(6)  push result
73: LDC   3, 141(5)  push result
74: SUB   3, 6, 3  push result
75: JLE   3, 13(5)  push result
76: ST    2, 0(6)  push result
77: LDA   1, -1(1)  decrease str length
78: JNE   1, 56(5)  continue if str length
79: LD    0, 0(6)  pop result
80: LDA   6, 1(6)  pop result
81: LD    1, 0(6)  pop symbol
82: LDA   6, 1(6)  pop symbol
83: MUL   0, 0, 1  multiply symbol
84: ST    0, -2(4)  save to return value
85: LD    0, -2(4)  load int/bool/string offset as return value
86: LD    1, -1(4)  load return address
87: LDA   6, 0(4)  change sp to fp + 1
88: LD    4, 0(6)  restore fp
89: LDA   6, 1(6)  restore fp
90: LDA   7, 0(1)  jump to the return address
2: LDA   7, 91(5)  jump to start of the program
91: LDC   0, 7(5)  load integer 7
92: LDA   6, -1(6)  push first child's value
93: LDC   3, 141(5)  push first child's value
94: SUB   3, 6, 3  push first child's value
95: JLE   3, 13(5)  push first child's value
96: ST    0, 0(6)  push first child's value
97: LDC   0, 3(5)  load integer 3
98: LD    1, 0(6)  pop first child's value
99: LDA   6, 1(6)  pop first child's value
100: ADD   0, 0, 1  add two children
101: LDA   6, -1(6)  push first child's value
102: LDC   3, 141(5)  push first child's value
103: SUB   3, 6, 3  push first child's value
104: JLE   3, 13(5)  push first child's value
105: ST    0, 0(6)  push first child's value
106: LDC   0, 15(5)  load integer 15
107: LDA   6, -1(6)  push first child's value
108: LDC   3, 141(5)  push first child's value
109: SUB   3, 6, 3  push first child's value
110: JLE   3, 13(5)  push first child's value
111: ST    0, 0(6)  push first child's value
112: LDC   0, 5(5)  load integer 5
113: LD    1, 0(6)  pop first child's value
114: LDA   6, 1(6)  pop first child's value
115: SUB   0, 1, 0  subtract two children
116: LD    1, 0(6)  pop first child's value
117: LDA   6, 1(6)  pop first child's value
118: SUB   0, 1, 0  subtract two children
119: OUT   0, 0, 0  write integer
120: OUTNL 0, 0, 0  write new line
121: LDC   0, 2(5)  load integer 2
122: LDA   6, -1(6)  push first child's value
123: LDC   3, 141(5)  push first child's value
124: SUB   3, 6, 3  push first child's value
125: JLE   3, 13(5)  push first child's value
126: ST    0, 0(6)  push first child's value
127: LDC   0, 9(5)  load integer 9
128: LDA   6, -1(6)  push first child's value
129: LDC   3, 141(5)  push first child's value
130: SUB   3, 6, 3  push first child's value
131: JLE   3, 13(5)  push first child's value
132: ST    0, 0(6)  push first child's value
133: LDC   0, 3(5)  load integer 3
134: LD    1, 0(6)  pop first child's value
135: LDA   6, 1(6)  pop first child's value
136: DIV   0, 1, 0  divide two children
137: LD    1, 0(6)  pop first child's value
138: LDA   6, 1(6)  pop first child's value
139: MUL   0, 0, 1  multiply two children
140: LDA   6, -1(6)  push first child's value
141: LDC   3, 141(5)  push first child's value
142: SUB   3, 6, 3  push first child's value
143: JLE   3, 13(5)  push first child's value
144: ST    0, 0(6)  push first child's value
145: LDC   0, 1(5)  load integer 1
146: LDA   6, -1(6)  push first child's value
147: LDC   3, 141(5)  push first child's value
148: SUB   3, 6, 3  push first child's value
149: JLE   3, 13(5)  push first child's value
150: ST    0, 0(6)  push first child's value
151: LDC   0, 1(5)  load integer 1
152: LD    1, 0(6)  pop first child's value
153: LDA   6, 1(6)  pop first child's value
154: ADD   0, 0, 1  add two children
155: LDA   6, -1(6)  push first child's value
156: LDC   3, 141(5)  push first child's value
157: SUB   3, 6, 3  push first child's value
158: JLE   3, 13(5)  push first child's value
159: ST    0, 0(6)  push first child's value
160: LDC   0, 1(5)  load integer 1
161: LD    1, 0(6)  pop first child's value
162: LDA   6, 1(6)  pop first child's value
163: ADD   0, 0, 1  add two children
164: LDA   6, -1(6)  push first child's value
165: LDC   3, 141(5)  push first child's value
166: SUB   3, 6, 3  push first child's value
167: JLE   3, 13(5)  push first child's value
168: ST    0, 0(6)  push first child's value
169: LDC   0, 1(5)  load integer 1
170: LD    1, 0(6)  pop first child's value
171: LDA   6, 1(6)  pop first child's value
172: ADD   0, 0, 1  add two children
173: LD    1, 0(6)  pop first child's value
174: LDA   6, 1(6)  pop first child's value
175: ADD   0, 0, 1  add two children
176: OUT   0, 0, 0  write integer
177: OUTNL 0, 0, 0  write new line
178: LDC   0, 9(5)  load integer 9
179: LDA   6, -1(6)  push first child's value
180: LDC   3, 141(5)  push first child's value
181: SUB   3, 6, 3  push first child's value
182: JLE   3, 13(5)  push first child's value
183: ST    0, 0(6)  push first child's value
184: LDC   0, 1(5)  load integer 1
185: LDC   1, 0(5)  load 0 into AC2
186: SUB   0, 1, 0  compute negative number
187: LD    1, 0(6)  pop first child's value
188: LDA   6, 1(6)  pop first child's value
189: SUB   0, 1, 0  subtract two children
190: LDA   6, -1(6)  push first child's value
191: LDC   3, 141(5)  push first child's value
192: SUB   3, 6, 3  push first child's value
193: JLE   3, 13(5)  push first child's value
194: ST    0, 0(6)  push first child's value
195: LDC   0, 3(5)  load integer 3
196: LDA   6, -1(6)  push first child's value
197: LDC   3, 141(5)  push first child's value
198: SUB   3, 6, 3  push first child's value
199: JLE   3, 13(5)  push first child's value
200: ST    0, 0(6)  push first child's value
201: LDC   0, 3(5)  load integer 3
202: LD    1, 0(6)  pop first child's value
203: LDA   6, 1(6)  pop first child's value
204: MUL   0, 0, 1  multiply two children
205: LD    1, 0(6)  pop first child's value
206: LDA   6, 1(6)  pop first child's value
207: SUB   1, 1, 0  greater than
208: LDC   0, 1(5)  load 1 as true
209: JGT   1, 1(7)  skip load false
210: LDC   0, 0(5)  load 0 as false
211: OUT   0, 0, 0  write integer
212: OUTNL 0, 0, 0  write new line
213: LDC   0, 7(5)  load integer 7
214: LDA   6, -1(6)  push first child's value
215: LDC   3, 141(5)  push first child's value
216: SUB   3, 6, 3  push first child's value
217: JLE   3, 13(5)  push first child's value
218: ST    0, 0(6)  push first child's value
219: LDC   0, 6(5)  load integer 6
220: LD    1, 0(6)  pop first child's value
221: LDA   6, 1(6)  pop first child's value
222: SUB   1, 1, 0  greater than
223: LDC   0, 1(5)  load 1 as true
224: JGT   1, 1(7)  skip load false
225: LDC   0, 0(5)  load 0 as false
226: LDA   6, -1(6)  push first child's value
227: LDC   3, 141(5)  push first child's value
228: SUB   3, 6, 3  push first child's value
229: JLE   3, 13(5)  push first child's value
230: ST    0, 0(6)  push first child's value
232: LDC   0, 7(5)  load integer 7
233: LDA   6, -1(6)  push first child's value
234: LDC   3, 141(5)  push first child's value
235: SUB   3, 6, 3  push first child's value
236: JLE   3, 13(5)  push first child's value
237: ST    0, 0(6)  push first child's value
238: LDC   0, 6(5)  load integer 6
239: LD    1, 0(6)  pop first child's value
240: LDA   6, 1(6)  pop first child's value
241: SUB   1, 1, 0  greater than
242: LDC   0, 1(5)  load 1 as true
243: JEQ   1, 1(7)  skip load false
244: LDC   0, 0(5)  load 0 as false
245: LDA   1, 0(0)  copy AC to AC2
246: LDC   0, 1(5)  load 1 as true
247: JEQ   1, 1(7)  skip load false
248: LDC   0, 0(5)  load 0 as false
249: LD    1, 0(6)  pop first child's value
250: LDA   6, 1(6)  pop first child's value
251: ADD   1, 0, 1  add two children
252: LDC   0, 1(5)  load 1 as true
253: JNE   1, 1(7)  skip load false
254: LDC   0, 0(5)  load 0 as false
231: JNE   0, 23(7)  short circuit
255: LDA   6, -1(6)  push first child's value
256: LDC   3, 141(5)  push first child's value
257: SUB   3, 6, 3  push first child's value
258: JLE   3, 13(5)  push first child's value
259: ST    0, 0(6)  push first child's value
261: LDC   0, 7(5)  load integer 7
262: LDA   6, -1(6)  push first child's value
263: LDC   3, 141(5)  push first child's value
264: SUB   3, 6, 3  push first child's value
265: JLE   3, 13(5)  push first child's value
266: ST    0, 0(6)  push first child's value
267: LDC   0, 3(5)  load integer 3
268: LD    1, 0(6)  pop first child's value
269: LDA   6, 1(6)  pop first child's value
270: SUB   1, 1, 0  greater than
271: LDC   0, 1(5)  load 1 as true
272: JLE   1, 1(7)  skip load false
273: LDC   0, 0(5)  load 0 as false
274: LD    1, 0(6)  pop first child's value
275: LDA   6, 1(6)  pop first child's value
276: ADD   1, 0, 1  add two children
277: LDC   0, 1(5)  load 1 as true
278: JNE   1, 1(7)  skip load false
279: LDC   0, 0(5)  load 0 as false
260: JNE   0, 19(7)  short circuit
280: OUT   0, 0, 0  write integer
281: OUTNL 0, 0, 0  write new line
282: HALT  0, 0, 0  program ends
