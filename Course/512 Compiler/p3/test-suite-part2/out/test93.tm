.DATA    3
.SDATA   "+10"
.DATA    5
.SDATA   " -10 "
.DATA    3
.SDATA   "abc"
.DATA    13
.SDATA   "out of memory"
.DATA    1
.SDATA   "-"
.DATA    3
.SDATA   "10 "
.DATA    18
.SDATA   "array index error!"
.DATA    0
.SDATA   ""
.DATA    3
.SDATA   "1-0"
0: LD    6, 0(5)  save stack pointer
1: LD    4, 0(5)  save frame pointer
3: LDC   0, 35(5)  load array error str address
4: LD    1, 0(0)  load str length into ac2
5: JEQ   1, 5(7)  output nothing when empty
6: LDA   0, 1(0)  increase offset
7: LD    2, 0(0)  load char into ac3
8: OUTC   2, 2, 2  write char
9: LDA   1, -1(1)  decrease length of remaining string in ac2
10: JNE   1, -5(7)  continue print if not yet finish
11: OUTNL 0, 0, 0  emit newline
12: HALT  0, 0, 0  stop because of array error
13: LDC   0, 15(5)  load out of memory str address
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
27: LDC   3, 59(5)  push 0
28: SUB   3, 6, 3  push 0
29: JLE   3, 13(5)  push 0
30: ST    2, 0(6)  push 0
31: LD    2, 0(6)  pop result into AC3
32: LDA   6, 1(6)  pop result into AC3
33: LDC   3, 10(5)  load 10 into ac4
34: MUL   2, 2, 3  mul result with 10
35: LDA   6, -1(6)  push result
36: LDC   3, 59(5)  push result
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
48: LDC   3, 59(5)  push result
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
63: LDC   0, 1(5)  load integer 1
64: LDA   6, -1(6)  push first child's value
65: LDC   3, 59(5)  push first child's value
66: SUB   3, 6, 3  push first child's value
67: JLE   3, 13(5)  push first child's value
68: ST    0, 0(6)  push first child's value
69: LDC   0, 1(5)  load integer 1
70: LD    1, 0(6)  pop first child's value
71: LDA   6, 1(6)  pop first child's value
72: ADD   0, 0, 1  add two children
73: LDA   6, -1(6)  push first child's value
74: LDC   3, 59(5)  push first child's value
75: SUB   3, 6, 3  push first child's value
76: JLE   3, 13(5)  push first child's value
77: ST    0, 0(6)  push first child's value
78: LDC   0, 2(5)  load integer 2
79: LD    1, 0(6)  pop first child's value
80: LDA   6, 1(6)  pop first child's value
81: SUB   1, 1, 0  greater than
82: LDC   0, 1(5)  load 1 as true
83: JEQ   1, 1(7)  skip load false
84: LDC   0, 0(5)  load 0 as false
85: OUT   0, 0, 0  write integer
86: OUTNL 0, 0, 0  write new line
87: LDC   0, 1(5)  load integer 1
88: LDA   6, -1(6)  push first child's value
89: LDC   3, 59(5)  push first child's value
90: SUB   3, 6, 3  push first child's value
91: JLE   3, 13(5)  push first child's value
92: ST    0, 0(6)  push first child's value
93: LDC   0, 1(5)  load integer 1
94: LD    1, 0(6)  pop first child's value
95: LDA   6, 1(6)  pop first child's value
96: ADD   0, 0, 1  add two children
97: LDA   6, -1(6)  push first child's value
98: LDC   3, 59(5)  push first child's value
99: SUB   3, 6, 3  push first child's value
100: JLE   3, 13(5)  push first child's value
101: ST    0, 0(6)  push first child's value
102: LDC   0, 1(5)  load integer 1
103: LD    1, 0(6)  pop first child's value
104: LDA   6, 1(6)  pop first child's value
105: SUB   0, 1, 0  subtract two children
106: LDA   6, -1(6)  push first child's value
107: LDC   3, 59(5)  push first child's value
108: SUB   3, 6, 3  push first child's value
109: JLE   3, 13(5)  push first child's value
110: ST    0, 0(6)  push first child's value
111: LDC   0, 0(5)  load integer 0
112: LD    1, 0(6)  pop first child's value
113: LDA   6, 1(6)  pop first child's value
114: SUB   1, 1, 0  greater than
115: LDC   0, 1(5)  load 1 as true
116: JEQ   1, 1(7)  skip load false
117: LDC   0, 0(5)  load 0 as false
118: OUT   0, 0, 0  write integer
119: OUTNL 0, 0, 0  write new line
120: LDC   0, 1(5)  load booleantrue
122: LDA   6, -1(6)  push first child's value
123: LDC   3, 59(5)  push first child's value
124: SUB   3, 6, 3  push first child's value
125: JLE   3, 13(5)  push first child's value
126: ST    0, 0(6)  push first child's value
127: LDC   0, 0(5)  load booleanfalse
128: LD    1, 0(6)  pop first child's value
129: LDA   6, 1(6)  pop first child's value
130: MUL   0, 0, 1  multiply two children
121: JEQ   0, 9(7)  short circuit
131: LDA   6, -1(6)  push first child's value
132: LDC   3, 59(5)  push first child's value
133: SUB   3, 6, 3  push first child's value
134: JLE   3, 13(5)  push first child's value
135: ST    0, 0(6)  push first child's value
136: LDC   0, 4(5)  load integer 4
137: LDA   6, -1(6)  push first child's value
138: LDC   3, 59(5)  push first child's value
139: SUB   3, 6, 3  push first child's value
140: JLE   3, 13(5)  push first child's value
141: ST    0, 0(6)  push first child's value
142: LDC   0, 5(5)  load integer 5
143: LD    1, 0(6)  pop first child's value
144: LDA   6, 1(6)  pop first child's value
145: SUB   1, 1, 0  greater than
146: LDC   0, 1(5)  load 1 as true
147: JEQ   1, 1(7)  skip load false
148: LDC   0, 0(5)  load 0 as false
149: LD    1, 0(6)  pop first child's value
150: LDA   6, 1(6)  pop first child's value
151: SUB   1, 1, 0  greater than
152: LDC   0, 1(5)  load 1 as true
153: JEQ   1, 1(7)  skip load false
154: LDC   0, 0(5)  load 0 as false
155: OUT   0, 0, 0  write integer
156: OUTNL 0, 0, 0  write new line
157: LDC   0, 1(5)  load booleantrue
159: LDA   6, -1(6)  push first child's value
160: LDC   3, 59(5)  push first child's value
161: SUB   3, 6, 3  push first child's value
162: JLE   3, 13(5)  push first child's value
163: ST    0, 0(6)  push first child's value
164: LDC   0, 0(5)  load booleanfalse
165: LD    1, 0(6)  pop first child's value
166: LDA   6, 1(6)  pop first child's value
167: MUL   0, 0, 1  multiply two children
158: JEQ   0, 9(7)  short circuit
168: LDA   6, -1(6)  push first child's value
169: LDC   3, 59(5)  push first child's value
170: SUB   3, 6, 3  push first child's value
171: JLE   3, 13(5)  push first child's value
172: ST    0, 0(6)  push first child's value
174: LDC   0, 1(5)  load booleantrue
175: LD    1, 0(6)  pop first child's value
176: LDA   6, 1(6)  pop first child's value
177: ADD   1, 0, 1  add two children
178: LDC   0, 1(5)  load 1 as true
179: JNE   1, 1(7)  skip load false
180: LDC   0, 0(5)  load 0 as false
173: JNE   0, 7(7)  short circuit
181: OUT   0, 0, 0  write integer
182: OUTNL 0, 0, 0  write new line
183: LDC   0, 1(5)  load integer 1
184: LDA   6, -1(6)  push first child's value
185: LDC   3, 59(5)  push first child's value
186: SUB   3, 6, 3  push first child's value
187: JLE   3, 13(5)  push first child's value
188: ST    0, 0(6)  push first child's value
189: LDC   0, 3(5)  load integer 3
190: LD    1, 0(6)  pop first child's value
191: LDA   6, 1(6)  pop first child's value
192: DIV   0, 1, 0  divide two children
193: LDA   6, -1(6)  push first child's value
194: LDC   3, 59(5)  push first child's value
195: SUB   3, 6, 3  push first child's value
196: JLE   3, 13(5)  push first child's value
197: ST    0, 0(6)  push first child's value
198: LDC   0, 4(5)  load integer 4
199: LD    1, 0(6)  pop first child's value
200: LDA   6, 1(6)  pop first child's value
201: MUL   0, 0, 1  multiply two children
202: LDA   6, -1(6)  push first child's value
203: LDC   3, 59(5)  push first child's value
204: SUB   3, 6, 3  push first child's value
205: JLE   3, 13(5)  push first child's value
206: ST    0, 0(6)  push first child's value
207: LDC   0, 12(5)  load integer 12
208: LD    1, 0(6)  pop first child's value
209: LDA   6, 1(6)  pop first child's value
210: SUB   1, 1, 0  greater than
211: LDC   0, 1(5)  load 1 as true
212: JEQ   1, 1(7)  skip load false
213: LDC   0, 0(5)  load 0 as false
214: OUT   0, 0, 0  write integer
215: OUTNL 0, 0, 0  write new line
216: LDC   0, 1(5)  load integer 1
217: LDA   6, -1(6)  push first child's value
218: LDC   3, 59(5)  push first child's value
219: SUB   3, 6, 3  push first child's value
220: JLE   3, 13(5)  push first child's value
221: ST    0, 0(6)  push first child's value
222: LDC   0, 3(5)  load integer 3
223: LD    1, 0(6)  pop first child's value
224: LDA   6, 1(6)  pop first child's value
225: DIV   2, 1, 0  divide two children
226: MUL   0, 2, 0  multiply quotient and divisor
227: SUB   0, 1, 0  compute mod
228: LDA   6, -1(6)  push first child's value
229: LDC   3, 59(5)  push first child's value
230: SUB   3, 6, 3  push first child's value
231: JLE   3, 13(5)  push first child's value
232: ST    0, 0(6)  push first child's value
233: LDC   0, 4(5)  load integer 4
234: LD    1, 0(6)  pop first child's value
235: LDA   6, 1(6)  pop first child's value
236: DIV   0, 1, 0  divide two children
237: LDA   6, -1(6)  push first child's value
238: LDC   3, 59(5)  push first child's value
239: SUB   3, 6, 3  push first child's value
240: JLE   3, 13(5)  push first child's value
241: ST    0, 0(6)  push first child's value
242: LDC   0, 4(5)  load integer 4
243: LD    1, 0(6)  pop first child's value
244: LDA   6, 1(6)  pop first child's value
245: ADD   0, 0, 1  add two children
246: LDA   6, -1(6)  push first child's value
247: LDC   3, 59(5)  push first child's value
248: SUB   3, 6, 3  push first child's value
249: JLE   3, 13(5)  push first child's value
250: ST    0, 0(6)  push first child's value
251: LDC   0, 3(5)  load integer 3
252: LDC   1, 0(5)  load 0 into AC2
253: SUB   0, 1, 0  compute negative number
254: LD    1, 0(6)  pop first child's value
255: LDA   6, 1(6)  pop first child's value
256: SUB   0, 1, 0  subtract two children
257: LDA   6, -1(6)  push first child's value
258: LDC   3, 59(5)  push first child's value
259: SUB   3, 6, 3  push first child's value
260: JLE   3, 13(5)  push first child's value
261: ST    0, 0(6)  push first child's value
262: LDC   0, 1(5)  load booleantrue
263: LDA   1, 0(0)  copy AC to AC2
264: LDC   0, 1(5)  load 1 as true
265: JEQ   1, 1(7)  skip load false
266: LDC   0, 0(5)  load 0 as false
267: LD    1, 0(6)  pop first child's value
268: LDA   6, 1(6)  pop first child's value
269: SUB   1, 1, 0  greater than
270: LDC   0, 1(5)  load 1 as true
271: JGE   1, 1(7)  skip load false
272: LDC   0, 0(5)  load 0 as false
273: OUT   0, 0, 0  write integer
274: OUTNL 0, 0, 0  write new line
275: LDC   0, 1(5)  load booleantrue
276: LDA   6, -1(6)  push first child's value
277: LDC   3, 59(5)  push first child's value
278: SUB   3, 6, 3  push first child's value
279: JLE   3, 13(5)  push first child's value
280: ST    0, 0(6)  push first child's value
282: LDC   0, 4(5)  load integer 4
283: LDA   6, -1(6)  push first child's value
284: LDC   3, 59(5)  push first child's value
285: SUB   3, 6, 3  push first child's value
286: JLE   3, 13(5)  push first child's value
287: ST    0, 0(6)  push first child's value
288: LDC   0, 5(5)  load integer 5
289: LD    1, 0(6)  pop first child's value
290: LDA   6, 1(6)  pop first child's value
291: SUB   1, 1, 0  greater than
292: LDC   0, 1(5)  load 1 as true
293: JGE   1, 1(7)  skip load false
294: LDC   0, 0(5)  load 0 as false
295: LDA   1, 0(0)  copy AC to AC2
296: LDC   0, 1(5)  load 1 as true
297: JEQ   1, 1(7)  skip load false
298: LDC   0, 0(5)  load 0 as false
299: LD    1, 0(6)  pop first child's value
300: LDA   6, 1(6)  pop first child's value
301: ADD   1, 0, 1  add two children
302: LDC   0, 1(5)  load 1 as true
303: JNE   1, 1(7)  skip load false
304: LDC   0, 0(5)  load 0 as false
281: JNE   0, 23(7)  short circuit
305: LDA   6, -1(6)  push first child's value
306: LDC   3, 59(5)  push first child's value
307: SUB   3, 6, 3  push first child's value
308: JLE   3, 13(5)  push first child's value
309: ST    0, 0(6)  push first child's value
310: LDC   0, 4(5)  load integer 4
311: LDA   6, -1(6)  push first child's value
312: LDC   3, 59(5)  push first child's value
313: SUB   3, 6, 3  push first child's value
314: JLE   3, 13(5)  push first child's value
315: ST    0, 0(6)  push first child's value
316: LDC   0, 5(5)  load integer 5
317: LDC   1, 0(5)  load 0 into AC2
318: SUB   0, 1, 0  compute negative number
319: LD    1, 0(6)  pop first child's value
320: LDA   6, 1(6)  pop first child's value
321: SUB   1, 1, 0  greater than
322: LDC   0, 1(5)  load 1 as true
323: JEQ   1, 1(7)  skip load false
324: LDC   0, 0(5)  load 0 as false
325: LD    1, 0(6)  pop first child's value
326: LDA   6, 1(6)  pop first child's value
327: SUB   1, 1, 0  greater than
328: LDC   0, 1(5)  load 1 as true
329: JNE   1, 1(7)  skip load false
330: LDC   0, 0(5)  load 0 as false
331: OUT   0, 0, 0  write integer
332: OUTNL 0, 0, 0  write new line
333: HALT  0, 0, 0  program ends
