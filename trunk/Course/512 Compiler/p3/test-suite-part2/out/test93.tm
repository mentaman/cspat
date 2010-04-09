.DATA    2
.SDATA   "Hi"
.DATA    3
.SDATA   "+10"
.DATA    25
.SDATA   "invalid numeric character"
.DATA    6
.SDATA   "i am c"
.DATA    9
.SDATA   "a[0] is: "
.DATA    2
.SDATA   "50"
.DATA    18
.SDATA   "array index error!"
.DATA    3
.SDATA   "+50"
.DATA    5
.SDATA   "There"
.DATA    0
.SDATA   ""
.DATA    15
.SDATA   "m > 4 || m <= 2"
.DATA    3
.SDATA   "abc"
.DATA    13
.SDATA   "out of memory"
.DATA    3
.SDATA   "10 "
.DATA    9
.SDATA   "a[1] is: "
.DATA    3
.SDATA   "Hi "
.DATA    16
.SDATA   "after test(a[1])"
.DATA    5
.SDATA   " -10 "
.DATA    3
.SDATA   "-50"
.DATA    1
.SDATA   "-"
.DATA    5
.SDATA   "c is "
.DATA    15
.SDATA   "m <= 4 && m > 2"
.DATA    3
.SDATA   "1-0"
.DATA    9
.SDATA   "i am a[1]"
.DATA    8
.SDATA   "int(s): "
.DATA    9
.SDATA   "i am a[0]"
0: LD    6, 0(5)  save stack pointer
1: LD    4, 0(5)  save frame pointer
3: LDC   0, 54(5)  load array error str address
4: LD    1, 0(0)  load str length into ac2
5: JEQ   1, 5(7)  output nothing when empty
6: LDA   0, 1(0)  increase offset
7: LD    2, 0(0)  load char into ac3
8: OUTC   2, 2, 2  write char
9: LDA   1, -1(1)  decrease length of remaining string in ac2
10: JNE   1, -5(7)  continue print if not yet finish
11: OUTNL 0, 0, 0  emit newline
12: HALT  0, 0, 0  stop because of array error
13: LDC   0, 104(5)  load out of memory str address
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
36: LDC   3, 220(5)  push -1
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
46: LDC   3, 220(5)  push 1
47: SUB   3, 6, 3  push 1
48: JLE   3, 13(5)  push 1
49: ST    2, 0(6)  push 1
40: LDA   7, 9(7)  jump to start parsing str
50: LDC   2, 0(5)  load 0 as initial result
51: LDA   6, -1(6)  push 0
52: LDC   3, 220(5)  push 0
53: SUB   3, 6, 3  push 0
54: JLE   3, 13(5)  push 0
55: ST    2, 0(6)  push 0
56: LD    2, 0(6)  pop result into AC3
57: LDA   6, 1(6)  pop result into AC3
58: LDC   3, 10(5)  load 10 into ac4
59: MUL   2, 2, 3  mul result with 10
60: LDA   6, -1(6)  push result
61: LDC   3, 220(5)  push result
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
73: LDC   3, 220(5)  push result
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
91: LDC   0, 1(5)  load integer 1
92: LDA   6, -1(6)  push first child's value
93: LDC   3, 220(5)  push first child's value
94: SUB   3, 6, 3  push first child's value
95: JLE   3, 13(5)  push first child's value
96: ST    0, 0(6)  push first child's value
97: LDC   0, 1(5)  load integer 1
98: LD    1, 0(6)  pop first child's value
99: LDA   6, 1(6)  pop first child's value
100: ADD   0, 0, 1  add two children
101: LDA   6, -1(6)  push first child's value
102: LDC   3, 220(5)  push first child's value
103: SUB   3, 6, 3  push first child's value
104: JLE   3, 13(5)  push first child's value
105: ST    0, 0(6)  push first child's value
106: LDC   0, 2(5)  load integer 2
107: LD    1, 0(6)  pop first child's value
108: LDA   6, 1(6)  pop first child's value
109: SUB   1, 1, 0  greater than
110: LDC   0, 1(5)  load 1 as true
111: JEQ   1, 1(7)  skip load false
112: LDC   0, 0(5)  load 0 as false
113: OUT   0, 0, 0  write integer
114: OUTNL 0, 0, 0  write new line
115: LDC   0, 1(5)  load integer 1
116: LDA   6, -1(6)  push first child's value
117: LDC   3, 220(5)  push first child's value
118: SUB   3, 6, 3  push first child's value
119: JLE   3, 13(5)  push first child's value
120: ST    0, 0(6)  push first child's value
121: LDC   0, 1(5)  load integer 1
122: LD    1, 0(6)  pop first child's value
123: LDA   6, 1(6)  pop first child's value
124: ADD   0, 0, 1  add two children
125: LDA   6, -1(6)  push first child's value
126: LDC   3, 220(5)  push first child's value
127: SUB   3, 6, 3  push first child's value
128: JLE   3, 13(5)  push first child's value
129: ST    0, 0(6)  push first child's value
130: LDC   0, 1(5)  load integer 1
131: LD    1, 0(6)  pop first child's value
132: LDA   6, 1(6)  pop first child's value
133: SUB   0, 1, 0  subtract two children
134: LDA   6, -1(6)  push first child's value
135: LDC   3, 220(5)  push first child's value
136: SUB   3, 6, 3  push first child's value
137: JLE   3, 13(5)  push first child's value
138: ST    0, 0(6)  push first child's value
139: LDC   0, 0(5)  load integer 0
140: LD    1, 0(6)  pop first child's value
141: LDA   6, 1(6)  pop first child's value
142: SUB   1, 1, 0  greater than
143: LDC   0, 1(5)  load 1 as true
144: JEQ   1, 1(7)  skip load false
145: LDC   0, 0(5)  load 0 as false
146: OUT   0, 0, 0  write integer
147: OUTNL 0, 0, 0  write new line
148: LDC   0, 1(5)  load booleantrue
150: LDA   6, -1(6)  push first child's value
151: LDC   3, 220(5)  push first child's value
152: SUB   3, 6, 3  push first child's value
153: JLE   3, 13(5)  push first child's value
154: ST    0, 0(6)  push first child's value
155: LDC   0, 0(5)  load booleanfalse
156: LD    1, 0(6)  pop first child's value
157: LDA   6, 1(6)  pop first child's value
158: MUL   0, 0, 1  multiply two children
149: JEQ   0, 9(7)  short circuit
159: LDA   6, -1(6)  push first child's value
160: LDC   3, 220(5)  push first child's value
161: SUB   3, 6, 3  push first child's value
162: JLE   3, 13(5)  push first child's value
163: ST    0, 0(6)  push first child's value
164: LDC   0, 4(5)  load integer 4
165: LDA   6, -1(6)  push first child's value
166: LDC   3, 220(5)  push first child's value
167: SUB   3, 6, 3  push first child's value
168: JLE   3, 13(5)  push first child's value
169: ST    0, 0(6)  push first child's value
170: LDC   0, 5(5)  load integer 5
171: LD    1, 0(6)  pop first child's value
172: LDA   6, 1(6)  pop first child's value
173: SUB   1, 1, 0  greater than
174: LDC   0, 1(5)  load 1 as true
175: JEQ   1, 1(7)  skip load false
176: LDC   0, 0(5)  load 0 as false
177: LD    1, 0(6)  pop first child's value
178: LDA   6, 1(6)  pop first child's value
179: SUB   1, 1, 0  greater than
180: LDC   0, 1(5)  load 1 as true
181: JEQ   1, 1(7)  skip load false
182: LDC   0, 0(5)  load 0 as false
183: OUT   0, 0, 0  write integer
184: OUTNL 0, 0, 0  write new line
185: LDC   0, 1(5)  load booleantrue
187: LDA   6, -1(6)  push first child's value
188: LDC   3, 220(5)  push first child's value
189: SUB   3, 6, 3  push first child's value
190: JLE   3, 13(5)  push first child's value
191: ST    0, 0(6)  push first child's value
192: LDC   0, 0(5)  load booleanfalse
193: LD    1, 0(6)  pop first child's value
194: LDA   6, 1(6)  pop first child's value
195: MUL   0, 0, 1  multiply two children
186: JEQ   0, 9(7)  short circuit
196: LDA   6, -1(6)  push first child's value
197: LDC   3, 220(5)  push first child's value
198: SUB   3, 6, 3  push first child's value
199: JLE   3, 13(5)  push first child's value
200: ST    0, 0(6)  push first child's value
202: LDC   0, 1(5)  load booleantrue
203: LD    1, 0(6)  pop first child's value
204: LDA   6, 1(6)  pop first child's value
205: ADD   1, 0, 1  add two children
206: LDC   0, 1(5)  load 1 as true
207: JNE   1, 1(7)  skip load false
208: LDC   0, 0(5)  load 0 as false
201: JNE   0, 7(7)  short circuit
209: OUT   0, 0, 0  write integer
210: OUTNL 0, 0, 0  write new line
211: LDC   0, 1(5)  load integer 1
212: LDA   6, -1(6)  push first child's value
213: LDC   3, 220(5)  push first child's value
214: SUB   3, 6, 3  push first child's value
215: JLE   3, 13(5)  push first child's value
216: ST    0, 0(6)  push first child's value
217: LDC   0, 3(5)  load integer 3
218: LD    1, 0(6)  pop first child's value
219: LDA   6, 1(6)  pop first child's value
220: DIV   0, 1, 0  divide two children
221: LDA   6, -1(6)  push first child's value
222: LDC   3, 220(5)  push first child's value
223: SUB   3, 6, 3  push first child's value
224: JLE   3, 13(5)  push first child's value
225: ST    0, 0(6)  push first child's value
226: LDC   0, 4(5)  load integer 4
227: LD    1, 0(6)  pop first child's value
228: LDA   6, 1(6)  pop first child's value
229: MUL   0, 0, 1  multiply two children
230: LDA   6, -1(6)  push first child's value
231: LDC   3, 220(5)  push first child's value
232: SUB   3, 6, 3  push first child's value
233: JLE   3, 13(5)  push first child's value
234: ST    0, 0(6)  push first child's value
235: LDC   0, 12(5)  load integer 12
236: LD    1, 0(6)  pop first child's value
237: LDA   6, 1(6)  pop first child's value
238: SUB   1, 1, 0  greater than
239: LDC   0, 1(5)  load 1 as true
240: JEQ   1, 1(7)  skip load false
241: LDC   0, 0(5)  load 0 as false
242: OUT   0, 0, 0  write integer
243: OUTNL 0, 0, 0  write new line
244: LDC   0, 1(5)  load integer 1
245: LDA   6, -1(6)  push first child's value
246: LDC   3, 220(5)  push first child's value
247: SUB   3, 6, 3  push first child's value
248: JLE   3, 13(5)  push first child's value
249: ST    0, 0(6)  push first child's value
250: LDC   0, 3(5)  load integer 3
251: LD    1, 0(6)  pop first child's value
252: LDA   6, 1(6)  pop first child's value
253: DIV   2, 1, 0  divide two children
254: MUL   0, 2, 0  multiply quotient and divisor
255: SUB   0, 1, 0  compute mod
256: LDA   6, -1(6)  push first child's value
257: LDC   3, 220(5)  push first child's value
258: SUB   3, 6, 3  push first child's value
259: JLE   3, 13(5)  push first child's value
260: ST    0, 0(6)  push first child's value
261: LDC   0, 4(5)  load integer 4
262: LD    1, 0(6)  pop first child's value
263: LDA   6, 1(6)  pop first child's value
264: DIV   0, 1, 0  divide two children
265: LDA   6, -1(6)  push first child's value
266: LDC   3, 220(5)  push first child's value
267: SUB   3, 6, 3  push first child's value
268: JLE   3, 13(5)  push first child's value
269: ST    0, 0(6)  push first child's value
270: LDC   0, 4(5)  load integer 4
271: LD    1, 0(6)  pop first child's value
272: LDA   6, 1(6)  pop first child's value
273: ADD   0, 0, 1  add two children
274: LDA   6, -1(6)  push first child's value
275: LDC   3, 220(5)  push first child's value
276: SUB   3, 6, 3  push first child's value
277: JLE   3, 13(5)  push first child's value
278: ST    0, 0(6)  push first child's value
279: LDC   0, 3(5)  load integer 3
280: LDC   1, 0(5)  load 0 into AC2
281: SUB   0, 1, 0  compute negative number
282: LD    1, 0(6)  pop first child's value
283: LDA   6, 1(6)  pop first child's value
284: SUB   0, 1, 0  subtract two children
285: LDA   6, -1(6)  push first child's value
286: LDC   3, 220(5)  push first child's value
287: SUB   3, 6, 3  push first child's value
288: JLE   3, 13(5)  push first child's value
289: ST    0, 0(6)  push first child's value
290: LDC   0, 1(5)  load booleantrue
291: LDA   1, 0(0)  copy AC to AC2
292: LDC   0, 1(5)  load 1 as true
293: JEQ   1, 1(7)  skip load false
294: LDC   0, 0(5)  load 0 as false
295: LD    1, 0(6)  pop first child's value
296: LDA   6, 1(6)  pop first child's value
297: SUB   1, 1, 0  greater than
298: LDC   0, 1(5)  load 1 as true
299: JGE   1, 1(7)  skip load false
300: LDC   0, 0(5)  load 0 as false
301: OUT   0, 0, 0  write integer
302: OUTNL 0, 0, 0  write new line
303: LDC   0, 1(5)  load booleantrue
304: LDA   6, -1(6)  push first child's value
305: LDC   3, 220(5)  push first child's value
306: SUB   3, 6, 3  push first child's value
307: JLE   3, 13(5)  push first child's value
308: ST    0, 0(6)  push first child's value
310: LDC   0, 4(5)  load integer 4
311: LDA   6, -1(6)  push first child's value
312: LDC   3, 220(5)  push first child's value
313: SUB   3, 6, 3  push first child's value
314: JLE   3, 13(5)  push first child's value
315: ST    0, 0(6)  push first child's value
316: LDC   0, 5(5)  load integer 5
317: LD    1, 0(6)  pop first child's value
318: LDA   6, 1(6)  pop first child's value
319: SUB   1, 1, 0  greater than
320: LDC   0, 1(5)  load 1 as true
321: JGE   1, 1(7)  skip load false
322: LDC   0, 0(5)  load 0 as false
323: LDA   1, 0(0)  copy AC to AC2
324: LDC   0, 1(5)  load 1 as true
325: JEQ   1, 1(7)  skip load false
326: LDC   0, 0(5)  load 0 as false
327: LD    1, 0(6)  pop first child's value
328: LDA   6, 1(6)  pop first child's value
329: ADD   1, 0, 1  add two children
330: LDC   0, 1(5)  load 1 as true
331: JNE   1, 1(7)  skip load false
332: LDC   0, 0(5)  load 0 as false
309: JNE   0, 23(7)  short circuit
333: LDA   6, -1(6)  push first child's value
334: LDC   3, 220(5)  push first child's value
335: SUB   3, 6, 3  push first child's value
336: JLE   3, 13(5)  push first child's value
337: ST    0, 0(6)  push first child's value
338: LDC   0, 4(5)  load integer 4
339: LDA   6, -1(6)  push first child's value
340: LDC   3, 220(5)  push first child's value
341: SUB   3, 6, 3  push first child's value
342: JLE   3, 13(5)  push first child's value
343: ST    0, 0(6)  push first child's value
344: LDC   0, 5(5)  load integer 5
345: LDC   1, 0(5)  load 0 into AC2
346: SUB   0, 1, 0  compute negative number
347: LD    1, 0(6)  pop first child's value
348: LDA   6, 1(6)  pop first child's value
349: SUB   1, 1, 0  greater than
350: LDC   0, 1(5)  load 1 as true
351: JEQ   1, 1(7)  skip load false
352: LDC   0, 0(5)  load 0 as false
353: LD    1, 0(6)  pop first child's value
354: LDA   6, 1(6)  pop first child's value
355: SUB   1, 1, 0  greater than
356: LDC   0, 1(5)  load 1 as true
357: JNE   1, 1(7)  skip load false
358: LDC   0, 0(5)  load 0 as false
359: OUT   0, 0, 0  write integer
360: OUTNL 0, 0, 0  write new line
361: HALT  0, 0, 0  program ends
