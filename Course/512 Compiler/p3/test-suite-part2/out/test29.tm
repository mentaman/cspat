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
91: LDC   0, 6(5)  load integer 6
92: LDA   6, -1(6)  push first child's value
93: LDC   3, 141(5)  push first child's value
94: SUB   3, 6, 3  push first child's value
95: JLE   3, 13(5)  push first child's value
96: ST    0, 0(6)  push first child's value
97: LDC   0, 6(5)  load integer 6
98: LD    1, 0(6)  pop first child's value
99: LDA   6, 1(6)  pop first child's value
100: SUB   1, 1, 0  greater than
101: LDC   0, 1(5)  load 1 as true
102: JGE   1, 1(7)  skip load false
103: LDC   0, 0(5)  load 0 as false
105: LDC   0, 1(5)  load integer 1
106: OUT   0, 0, 0  write integer
107: OUTNL 0, 0, 0  write new line
104: JEQ   0, 4(7)  if expr not true
109: LDC   0, 1(5)  load integer 1
110: LDA   6, -1(6)  push first child's value
111: LDC   3, 141(5)  push first child's value
112: SUB   3, 6, 3  push first child's value
113: JLE   3, 13(5)  push first child's value
114: ST    0, 0(6)  push first child's value
115: LDC   0, 6(5)  load integer 6
116: LD    1, 0(6)  pop first child's value
117: LDA   6, 1(6)  pop first child's value
118: SUB   1, 1, 0  greater than
119: LDC   0, 1(5)  load 1 as true
120: JGE   1, 1(7)  skip load false
121: LDC   0, 0(5)  load 0 as false
123: LDC   0, 2(5)  load integer 2
124: OUT   0, 0, 0  write integer
125: OUTNL 0, 0, 0  write new line
122: JEQ   0, 4(7)  if expr not true
127: LDC   0, 6(5)  load integer 6
128: LDA   6, -1(6)  push first child's value
129: LDC   3, 141(5)  push first child's value
130: SUB   3, 6, 3  push first child's value
131: JLE   3, 13(5)  push first child's value
132: ST    0, 0(6)  push first child's value
133: LDC   0, 6(5)  load integer 6
134: LD    1, 0(6)  pop first child's value
135: LDA   6, 1(6)  pop first child's value
136: SUB   1, 1, 0  greater than
137: LDC   0, 1(5)  load 1 as true
138: JGE   1, 1(7)  skip load false
139: LDC   0, 0(5)  load 0 as false
141: LDC   0, 3(5)  load integer 3
142: OUT   0, 0, 0  write integer
143: OUTNL 0, 0, 0  write new line
140: JEQ   0, 4(7)  if expr not true
145: LDC   0, 4(5)  load integer 4
146: OUT   0, 0, 0  write integer
147: OUTNL 0, 0, 0  write new line
108: LDA   7, 39(7)  Jump to the end of if
126: LDA   7, 21(7)  Jump to the end of if
144: LDA   7, 3(7)  Jump to the end of if
148: LDC   0, 5(5)  load integer 5
149: OUT   0, 0, 0  write integer
150: OUTNL 0, 0, 0  write new line
151: LDC   0, 0(5)  load integer 0
152: LDA   6, -1(6)  push first child's value
153: LDC   3, 141(5)  push first child's value
154: SUB   3, 6, 3  push first child's value
155: JLE   3, 13(5)  push first child's value
156: ST    0, 0(6)  push first child's value
157: LDC   0, 6(5)  load integer 6
158: LD    1, 0(6)  pop first child's value
159: LDA   6, 1(6)  pop first child's value
160: SUB   1, 1, 0  greater than
161: LDC   0, 1(5)  load 1 as true
162: JGE   1, 1(7)  skip load false
163: LDC   0, 0(5)  load 0 as false
165: LDC   0, 1(5)  load integer 1
166: OUT   0, 0, 0  write integer
167: OUTNL 0, 0, 0  write new line
164: JEQ   0, 4(7)  if expr not true
169: LDC   0, 6(5)  load integer 6
170: LDA   6, -1(6)  push first child's value
171: LDC   3, 141(5)  push first child's value
172: SUB   3, 6, 3  push first child's value
173: JLE   3, 13(5)  push first child's value
174: ST    0, 0(6)  push first child's value
175: LDC   0, 6(5)  load integer 6
176: LD    1, 0(6)  pop first child's value
177: LDA   6, 1(6)  pop first child's value
178: SUB   1, 1, 0  greater than
179: LDC   0, 1(5)  load 1 as true
180: JGE   1, 1(7)  skip load false
181: LDC   0, 0(5)  load 0 as false
183: LDC   0, 2(5)  load integer 2
184: OUT   0, 0, 0  write integer
185: OUTNL 0, 0, 0  write new line
182: JEQ   0, 4(7)  if expr not true
187: LDC   0, 6(5)  load integer 6
188: LDA   6, -1(6)  push first child's value
189: LDC   3, 141(5)  push first child's value
190: SUB   3, 6, 3  push first child's value
191: JLE   3, 13(5)  push first child's value
192: ST    0, 0(6)  push first child's value
193: LDC   0, 6(5)  load integer 6
194: LD    1, 0(6)  pop first child's value
195: LDA   6, 1(6)  pop first child's value
196: SUB   1, 1, 0  greater than
197: LDC   0, 1(5)  load 1 as true
198: JGE   1, 1(7)  skip load false
199: LDC   0, 0(5)  load 0 as false
201: LDC   0, 3(5)  load integer 3
202: OUT   0, 0, 0  write integer
203: OUTNL 0, 0, 0  write new line
200: JEQ   0, 4(7)  if expr not true
205: LDC   0, 4(5)  load integer 4
206: OUT   0, 0, 0  write integer
207: OUTNL 0, 0, 0  write new line
168: LDA   7, 39(7)  Jump to the end of if
186: LDA   7, 21(7)  Jump to the end of if
204: LDA   7, 3(7)  Jump to the end of if
208: LDC   0, 5(5)  load integer 5
209: OUT   0, 0, 0  write integer
210: OUTNL 0, 0, 0  write new line
211: LDC   0, 0(5)  load integer 0
212: LDA   6, -1(6)  push first child's value
213: LDC   3, 141(5)  push first child's value
214: SUB   3, 6, 3  push first child's value
215: JLE   3, 13(5)  push first child's value
216: ST    0, 0(6)  push first child's value
217: LDC   0, 6(5)  load integer 6
218: LD    1, 0(6)  pop first child's value
219: LDA   6, 1(6)  pop first child's value
220: SUB   1, 1, 0  greater than
221: LDC   0, 1(5)  load 1 as true
222: JGE   1, 1(7)  skip load false
223: LDC   0, 0(5)  load 0 as false
225: LDC   0, 1(5)  load integer 1
226: OUT   0, 0, 0  write integer
227: OUTNL 0, 0, 0  write new line
224: JEQ   0, 4(7)  if expr not true
229: LDC   0, 1(5)  load integer 1
230: LDA   6, -1(6)  push first child's value
231: LDC   3, 141(5)  push first child's value
232: SUB   3, 6, 3  push first child's value
233: JLE   3, 13(5)  push first child's value
234: ST    0, 0(6)  push first child's value
235: LDC   0, 6(5)  load integer 6
236: LD    1, 0(6)  pop first child's value
237: LDA   6, 1(6)  pop first child's value
238: SUB   1, 1, 0  greater than
239: LDC   0, 1(5)  load 1 as true
240: JGE   1, 1(7)  skip load false
241: LDC   0, 0(5)  load 0 as false
243: LDC   0, 2(5)  load integer 2
244: OUT   0, 0, 0  write integer
245: OUTNL 0, 0, 0  write new line
242: JEQ   0, 4(7)  if expr not true
247: LDC   0, 6(5)  load integer 6
248: LDA   6, -1(6)  push first child's value
249: LDC   3, 141(5)  push first child's value
250: SUB   3, 6, 3  push first child's value
251: JLE   3, 13(5)  push first child's value
252: ST    0, 0(6)  push first child's value
253: LDC   0, 6(5)  load integer 6
254: LD    1, 0(6)  pop first child's value
255: LDA   6, 1(6)  pop first child's value
256: SUB   1, 1, 0  greater than
257: LDC   0, 1(5)  load 1 as true
258: JGE   1, 1(7)  skip load false
259: LDC   0, 0(5)  load 0 as false
261: LDC   0, 3(5)  load integer 3
262: OUT   0, 0, 0  write integer
263: OUTNL 0, 0, 0  write new line
260: JEQ   0, 4(7)  if expr not true
265: LDC   0, 4(5)  load integer 4
266: OUT   0, 0, 0  write integer
267: OUTNL 0, 0, 0  write new line
228: LDA   7, 39(7)  Jump to the end of if
246: LDA   7, 21(7)  Jump to the end of if
264: LDA   7, 3(7)  Jump to the end of if
268: LDC   0, 5(5)  load integer 5
269: OUT   0, 0, 0  write integer
270: OUTNL 0, 0, 0  write new line
271: LDC   0, 0(5)  load integer 0
272: LDA   6, -1(6)  push first child's value
273: LDC   3, 141(5)  push first child's value
274: SUB   3, 6, 3  push first child's value
275: JLE   3, 13(5)  push first child's value
276: ST    0, 0(6)  push first child's value
277: LDC   0, 6(5)  load integer 6
278: LD    1, 0(6)  pop first child's value
279: LDA   6, 1(6)  pop first child's value
280: SUB   1, 1, 0  greater than
281: LDC   0, 1(5)  load 1 as true
282: JGE   1, 1(7)  skip load false
283: LDC   0, 0(5)  load 0 as false
285: LDC   0, 1(5)  load integer 1
286: OUT   0, 0, 0  write integer
287: OUTNL 0, 0, 0  write new line
284: JEQ   0, 4(7)  if expr not true
289: LDC   0, 1(5)  load integer 1
290: LDA   6, -1(6)  push first child's value
291: LDC   3, 141(5)  push first child's value
292: SUB   3, 6, 3  push first child's value
293: JLE   3, 13(5)  push first child's value
294: ST    0, 0(6)  push first child's value
295: LDC   0, 6(5)  load integer 6
296: LD    1, 0(6)  pop first child's value
297: LDA   6, 1(6)  pop first child's value
298: SUB   1, 1, 0  greater than
299: LDC   0, 1(5)  load 1 as true
300: JGE   1, 1(7)  skip load false
301: LDC   0, 0(5)  load 0 as false
303: LDC   0, 2(5)  load integer 2
304: OUT   0, 0, 0  write integer
305: OUTNL 0, 0, 0  write new line
302: JEQ   0, 4(7)  if expr not true
307: LDC   0, 2(5)  load integer 2
308: LDA   6, -1(6)  push first child's value
309: LDC   3, 141(5)  push first child's value
310: SUB   3, 6, 3  push first child's value
311: JLE   3, 13(5)  push first child's value
312: ST    0, 0(6)  push first child's value
313: LDC   0, 6(5)  load integer 6
314: LD    1, 0(6)  pop first child's value
315: LDA   6, 1(6)  pop first child's value
316: SUB   1, 1, 0  greater than
317: LDC   0, 1(5)  load 1 as true
318: JGE   1, 1(7)  skip load false
319: LDC   0, 0(5)  load 0 as false
321: LDC   0, 3(5)  load integer 3
322: OUT   0, 0, 0  write integer
323: OUTNL 0, 0, 0  write new line
320: JEQ   0, 4(7)  if expr not true
325: LDC   0, 4(5)  load integer 4
326: OUT   0, 0, 0  write integer
327: OUTNL 0, 0, 0  write new line
288: LDA   7, 39(7)  Jump to the end of if
306: LDA   7, 21(7)  Jump to the end of if
324: LDA   7, 3(7)  Jump to the end of if
328: LDC   0, 5(5)  load integer 5
329: OUT   0, 0, 0  write integer
330: OUTNL 0, 0, 0  write new line
331: HALT  0, 0, 0  program ends
