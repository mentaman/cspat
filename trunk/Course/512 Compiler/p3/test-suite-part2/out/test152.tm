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
.DATA    1
.SDATA   "b"
.DATA    1
.SDATA   "5"
.DATA    2
.SDATA   "50"
.DATA    18
.SDATA   "array index error!"
.DATA    3
.SDATA   "+50"
.DATA    5
.SDATA   "There"
.DATA    14
.SDATA   "should not see"
.DATA    0
.SDATA   ""
.DATA    15
.SDATA   "m > 4 || m <= 2"
.DATA    5
.SDATA   "first"
.DATA    1
.SDATA   " "
.DATA    5
.SDATA   "third"
.DATA    3
.SDATA   "abc"
.DATA    5
.SDATA   "inner"
.DATA    8
.SDATA   "Hi there"
.DATA    13
.SDATA   "out of memory"
.DATA    27
.SDATA   "- ( (3 > 0) + (i < 0) ) is "
.DATA    3
.SDATA   "10 "
.DATA    9
.SDATA   "a[1] is: "
.DATA    4
.SDATA   "Done"
.DATA    6
.SDATA   "fourth"
.DATA    3
.SDATA   "Hi "
.DATA    16
.SDATA   "after test(a[1])"
.DATA    5
.SDATA   " -10 "
.DATA    1
.SDATA   "a"
.DATA    3
.SDATA   "-50"
.DATA    1
.SDATA   "-"
.DATA    5
.SDATA   "c is "
.DATA    15
.SDATA   "m <= 4 && m > 2"
.DATA    11
.SDATA   "after break"
.DATA    1
.SDATA   "1"
.DATA    3
.SDATA   "1-0"
.DATA    1
.SDATA   "3"
.DATA    5
.SDATA   "outer"
.DATA    9
.SDATA   "i am a[1]"
.DATA    8
.SDATA   "int(s): "
.DATA    8
.SDATA   "Hi There"
.DATA    3
.SDATA   "end"
.DATA    9
.SDATA   "i am a[0]"
.DATA    6
.SDATA   "second"
0: LDC   0, 353(5)  store array start address: 353
1: LDC   1, 352(5)  store array offset into ac2: 352
2: ST    0, 0(1)  store array offset
3: LDC   0, 356(5)  store array start address: 356
4: LDC   1, 355(5)  store array offset into ac2: 355
5: ST    0, 0(1)  store array offset
6: LDC   0, 358(5)  store array start address: 358
7: LDC   1, 357(5)  store array offset into ac2: 357
8: ST    0, 0(1)  store array offset
9: LDC   0, 365(5)  store array start address: 365
10: LDC   1, 364(5)  store array offset into ac2: 364
11: ST    0, 0(1)  store array offset
12: LD    6, 0(5)  save stack pointer
13: LD    4, 0(5)  save frame pointer
15: LDC   0, 58(5)  load array error str address
16: LD    1, 0(0)  load str length into ac2
17: JEQ   1, 5(7)  output nothing when empty
18: LDA   0, 1(0)  increase offset
19: LD    2, 0(0)  load char into ac3
20: OUTC   2, 2, 2  write char
21: LDA   1, -1(1)  decrease length of remaining string in ac2
22: JNE   1, -5(7)  continue print if not yet finish
23: OUTNL 0, 0, 0  emit newline
24: HALT  0, 0, 0  stop because of array error
25: LDC   0, 152(5)  load out of memory str address
26: LD    1, 0(0)  load str length into ac2
27: JEQ   1, 5(7)  output nothing when empty
28: LDA   0, 1(0)  increase offset
29: LD    2, 0(0)  load char into ac3
30: OUTC   2, 2, 2  write char
31: LDA   1, -1(1)  decrease length of remaining string in ac2
32: JNE   1, -5(7)  continue print if not yet finish
33: OUTNL 0, 0, 0  emit newline
34: HALT  0, 0, 0  stop because of out of memory error
35: LD    0, -3(4)  load str offset
36: LD    1, 0(0)  load str length
37: LDA   0, 1(0)  increase str offset
38: LD    2, 0(0)  load char
39: LDC   3, 43(5)  load 43(+) into ac4
40: SUB   3, 2, 3  sub 43(+)
42: LDC   3, 45(5)  load 45(-) into ac4
43: SUB   3, 2, 3  sub 45(-)
45: LDA   1, -1(1)  decrease str length
46: LDC   2, -1(5)  load -1 into ac3
47: LDA   6, -1(6)  push -1
48: LDC   3, 389(5)  push -1
49: SUB   3, 6, 3  push -1
50: JLE   3, 25(5)  push -1
51: ST    2, 0(6)  push -1
44: JNE   3, 8(7)  jump if not equal '-'
53: LDA   0, -1(0)  move back str offset
54: LDA   1, 1(1)  increase str length
41: JEQ   3, 13(7)  jump if equal '+'
55: LDA   1, -1(1)  decrease str length
56: LDC   2, 1(5)  load 1 into ac3
57: LDA   6, -1(6)  push 1
58: LDC   3, 389(5)  push 1
59: SUB   3, 6, 3  push 1
60: JLE   3, 25(5)  push 1
61: ST    2, 0(6)  push 1
52: LDA   7, 9(7)  jump to start parsing str
62: LDC   2, 0(5)  load 0 as initial result
63: LDA   6, -1(6)  push 0
64: LDC   3, 389(5)  push 0
65: SUB   3, 6, 3  push 0
66: JLE   3, 25(5)  push 0
67: ST    2, 0(6)  push 0
68: LD    2, 0(6)  pop result into AC3
69: LDA   6, 1(6)  pop result into AC3
70: LDC   3, 10(5)  load 10 into ac4
71: MUL   2, 2, 3  mul result with 10
72: LDA   6, -1(6)  push result
73: LDC   3, 389(5)  push result
74: SUB   3, 6, 3  push result
75: JLE   3, 25(5)  push result
76: ST    2, 0(6)  push result
77: LDA   0, 1(0)  increase str offset
78: LD    2, 0(0)  load char
79: LDC   3, 48(5)  load 48 into ac4
80: SUB   2, 2, 3  compute int value
81: LD    3, 0(6)  pop result into AC4
82: LDA   6, 1(6)  pop result into AC4
83: ADD   2, 2, 3  compute result
84: LDA   6, -1(6)  push result
85: LDC   3, 389(5)  push result
86: SUB   3, 6, 3  push result
87: JLE   3, 25(5)  push result
88: ST    2, 0(6)  push result
89: LDA   1, -1(1)  decrease str length
90: JNE   1, 68(5)  continue if str length
91: LD    0, 0(6)  pop result
92: LDA   6, 1(6)  pop result
93: LD    1, 0(6)  pop symbol
94: LDA   6, 1(6)  pop symbol
95: MUL   0, 0, 1  multiply symbol
96: ST    0, -2(4)  save to return value
97: LD    0, -2(4)  load int/bool/string offset as return value
98: LD    1, -1(4)  load return address
99: LDA   6, 0(4)  change sp to fp + 1
100: LD    4, 0(6)  restore fp
101: LDA   6, 1(6)  restore fp
102: LDA   7, 0(1)  jump to the return address
103: LDC   0, 0(5)  load integer 0
104: LDA   6, -1(6)  push array index
105: LDC   3, 389(5)  push array index
106: SUB   3, 6, 3  push array index
107: JLE   3, 25(5)  push array index
108: ST    0, 0(6)  push array index
109: LDC   0, 1(5)  load integer 1
110: LDA   6, -1(6)  push array index
111: LDC   3, 389(5)  push array index
112: SUB   3, 6, 3  push array index
113: JLE   3, 25(5)  push array index
114: ST    0, 0(6)  push array index
115: LDC   0, 2(5)  load integer 2
116: LDA   6, -1(6)  push array index
117: LDC   3, 389(5)  push array index
118: SUB   3, 6, 3  push array index
119: JLE   3, 25(5)  push array index
120: ST    0, 0(6)  push array index
121: LDC   0, 3(5)  load integer 3
122: LDA   6, -1(6)  push array index
123: LDC   3, 389(5)  push array index
124: SUB   3, 6, 3  push array index
125: JLE   3, 25(5)  push array index
126: ST    0, 0(6)  push array index
127: LDC   0, 4(5)  push array dimension
128: LDC   0, 0(5)  load 0 to ac
129: LD    1, 0(6)  pop index
130: LDA   6, 1(6)  pop index
131: JLT   1, 15(5)  jump if index less than 0
132: LDC   3, 4(5)  load array size
133: SUB   3, 3, 1  sub max size with index
134: JLE   3, 15(5)  jump if index greater than size - 1
135: LDC   2, 6(5)  load size of subarray
136: MUL   1, 1, 2  compute 0 dim
137: ADD   0, 0, 1  add result
138: LD    1, 0(6)  pop index
139: LDA   6, 1(6)  pop index
140: JLT   1, 15(5)  jump if index less than 0
141: LDC   3, 3(5)  load array size
142: SUB   3, 3, 1  sub max size with index
143: JLE   3, 15(5)  jump if index greater than size - 1
144: LDC   2, 2(5)  load size of subarray
145: MUL   1, 1, 2  compute 1 dim
146: ADD   0, 0, 1  add result
147: LD    1, 0(6)  pop index
148: LDA   6, 1(6)  pop index
149: JLT   1, 15(5)  jump if index less than 0
150: LDC   3, 2(5)  load array size
151: SUB   3, 3, 1  sub max size with index
152: JLE   3, 15(5)  jump if index greater than size - 1
153: LDC   2, 1(5)  load size of subarray
154: MUL   1, 1, 2  compute 2 dim
155: ADD   0, 0, 1  add result
156: LD    1, 0(6)  pop index
157: LDA   6, 1(6)  pop index
158: JLT   1, 15(5)  jump if index less than 0
159: LDC   3, 1(5)  load array size
160: SUB   3, 3, 1  sub max size with index
161: JLE   3, 15(5)  jump if index greater than size - 1
162: LDC   2, 1(5)  load size of subarray
163: MUL   1, 1, 2  compute 3 dim
164: ADD   0, 0, 1  add result
165: LDA   1, 0(4)  load fp into ac2
166: LD    1, -2(1)  load local offset into ac2
167: ADD   0, 0, 1  compute final offset
168: LD    0, 0(0)  load data from array
169: OUT   0, 0, 0  write integer
170: OUTNL 0, 0, 0  write new line
171: LD    1, -1(4)  load return address
172: LDA   6, 0(4)  change sp to fp + 1
173: LD    4, 0(6)  restore fp
174: LDA   6, 1(6)  restore fp
175: LDA   7, 0(1)  jump to the return address
176: LDC   0, 0(5)  load integer 0
177: LDA   6, -1(6)  push array index
178: LDC   3, 389(5)  push array index
179: SUB   3, 6, 3  push array index
180: JLE   3, 25(5)  push array index
181: ST    0, 0(6)  push array index
182: LDC   0, 1(5)  load integer 1
183: LDA   6, -1(6)  push array index
184: LDC   3, 389(5)  push array index
185: SUB   3, 6, 3  push array index
186: JLE   3, 25(5)  push array index
187: ST    0, 0(6)  push array index
188: LDC   0, 2(5)  load integer 2
189: LDA   6, -1(6)  push array index
190: LDC   3, 389(5)  push array index
191: SUB   3, 6, 3  push array index
192: JLE   3, 25(5)  push array index
193: ST    0, 0(6)  push array index
194: LDC   0, 3(5)  push array dimension
195: LDC   0, 0(5)  load 0 to ac
196: LD    1, 0(6)  pop index
197: LDA   6, 1(6)  pop index
198: JLT   1, 15(5)  jump if index less than 0
199: LDC   3, 3(5)  load array size
200: SUB   3, 3, 1  sub max size with index
201: JLE   3, 15(5)  jump if index greater than size - 1
202: LDC   2, 2(5)  load size of subarray
203: MUL   1, 1, 2  compute 0 dim
204: ADD   0, 0, 1  add result
205: LD    1, 0(6)  pop index
206: LDA   6, 1(6)  pop index
207: JLT   1, 15(5)  jump if index less than 0
208: LDC   3, 2(5)  load array size
209: SUB   3, 3, 1  sub max size with index
210: JLE   3, 15(5)  jump if index greater than size - 1
211: LDC   2, 1(5)  load size of subarray
212: MUL   1, 1, 2  compute 1 dim
213: ADD   0, 0, 1  add result
214: LD    1, 0(6)  pop index
215: LDA   6, 1(6)  pop index
216: JLT   1, 15(5)  jump if index less than 0
217: LDC   3, 1(5)  load array size
218: SUB   3, 3, 1  sub max size with index
219: JLE   3, 15(5)  jump if index greater than size - 1
220: LDC   2, 1(5)  load size of subarray
221: MUL   1, 1, 2  compute 2 dim
222: ADD   0, 0, 1  add result
223: LDA   1, 0(4)  load fp into ac2
224: LD    1, -2(1)  load local offset into ac2
225: ADD   0, 0, 1  compute final offset
226: LD    0, 0(0)  load data from array
227: OUT   0, 0, 0  write integer
228: OUTNL 0, 0, 0  write new line
229: LD    1, -1(4)  load return address
230: LDA   6, 0(4)  change sp to fp + 1
231: LD    4, 0(6)  restore fp
232: LDA   6, 1(6)  restore fp
233: LDA   7, 0(1)  jump to the return address
234: LDC   0, 0(5)  load integer 0
235: LDA   6, -1(6)  push array index
236: LDC   3, 389(5)  push array index
237: SUB   3, 6, 3  push array index
238: JLE   3, 25(5)  push array index
239: ST    0, 0(6)  push array index
240: LDC   0, 1(5)  load integer 1
241: LDA   6, -1(6)  push array index
242: LDC   3, 389(5)  push array index
243: SUB   3, 6, 3  push array index
244: JLE   3, 25(5)  push array index
245: ST    0, 0(6)  push array index
246: LDC   0, 2(5)  push array dimension
247: LDC   0, 0(5)  load 0 to ac
248: LD    1, 0(6)  pop index
249: LDA   6, 1(6)  pop index
250: JLT   1, 15(5)  jump if index less than 0
251: LDC   3, 2(5)  load array size
252: SUB   3, 3, 1  sub max size with index
253: JLE   3, 15(5)  jump if index greater than size - 1
254: LDC   2, 1(5)  load size of subarray
255: MUL   1, 1, 2  compute 0 dim
256: ADD   0, 0, 1  add result
257: LD    1, 0(6)  pop index
258: LDA   6, 1(6)  pop index
259: JLT   1, 15(5)  jump if index less than 0
260: LDC   3, 1(5)  load array size
261: SUB   3, 3, 1  sub max size with index
262: JLE   3, 15(5)  jump if index greater than size - 1
263: LDC   2, 1(5)  load size of subarray
264: MUL   1, 1, 2  compute 1 dim
265: ADD   0, 0, 1  add result
266: LDA   1, 0(4)  load fp into ac2
267: LD    1, -2(1)  load local offset into ac2
268: ADD   0, 0, 1  compute final offset
269: LD    0, 0(0)  load data from array
270: OUT   0, 0, 0  write integer
271: OUTNL 0, 0, 0  write new line
272: LD    1, -1(4)  load return address
273: LDA   6, 0(4)  change sp to fp + 1
274: LD    4, 0(6)  restore fp
275: LDA   6, 1(6)  restore fp
276: LDA   7, 0(1)  jump to the return address
277: LDC   0, 0(5)  load integer 0
278: LDA   6, -1(6)  push array index
279: LDC   3, 389(5)  push array index
280: SUB   3, 6, 3  push array index
281: JLE   3, 25(5)  push array index
282: ST    0, 0(6)  push array index
283: LDC   0, 1(5)  push array dimension
284: LDC   0, 0(5)  load 0 to ac
285: LD    1, 0(6)  pop index
286: LDA   6, 1(6)  pop index
287: JLT   1, 15(5)  jump if index less than 0
288: LDC   3, 1(5)  load array size
289: SUB   3, 3, 1  sub max size with index
290: JLE   3, 15(5)  jump if index greater than size - 1
291: LDC   2, 1(5)  load size of subarray
292: MUL   1, 1, 2  compute 0 dim
293: ADD   0, 0, 1  add result
294: LDA   1, 0(4)  load fp into ac2
295: LD    1, -2(1)  load local offset into ac2
296: ADD   0, 0, 1  compute final offset
297: LD    0, 0(0)  load data from array
298: OUT   0, 0, 0  write integer
299: OUTNL 0, 0, 0  write new line
300: LD    1, -1(4)  load return address
301: LDA   6, 0(4)  change sp to fp + 1
302: LD    4, 0(6)  restore fp
303: LDA   6, 1(6)  restore fp
304: LDA   7, 0(1)  jump to the return address
14: LDA   7, 305(5)  jump to start of the program
305: LDC   0, 0(5)  load integer 0
306: LDA   6, -1(6)  push array index
307: LDC   3, 389(5)  push array index
308: SUB   3, 6, 3  push array index
309: JLE   3, 25(5)  push array index
310: ST    0, 0(6)  push array index
311: LDC   0, 1(5)  load integer 1
312: LDA   6, -1(6)  push array index
313: LDC   3, 389(5)  push array index
314: SUB   3, 6, 3  push array index
315: JLE   3, 25(5)  push array index
316: ST    0, 0(6)  push array index
317: LDC   0, 2(5)  load integer 2
318: LDA   6, -1(6)  push array index
319: LDC   3, 389(5)  push array index
320: SUB   3, 6, 3  push array index
321: JLE   3, 25(5)  push array index
322: ST    0, 0(6)  push array index
323: LDC   0, 3(5)  load integer 3
324: LDA   6, -1(6)  push array index
325: LDC   3, 389(5)  push array index
326: SUB   3, 6, 3  push array index
327: JLE   3, 25(5)  push array index
328: ST    0, 0(6)  push array index
329: LDC   0, 4(5)  push array dimension
330: LDC   0, 0(5)  load 0 to ac
331: LD    1, 0(6)  pop index
332: LDA   6, 1(6)  pop index
333: JLT   1, 15(5)  jump if index less than 0
334: LDC   3, 4(5)  load array size
335: SUB   3, 3, 1  sub max size with index
336: JLE   3, 15(5)  jump if index greater than size - 1
337: LDC   2, 6(5)  load size of subarray
338: MUL   1, 1, 2  compute 0 dim
339: ADD   0, 0, 1  add result
340: LD    1, 0(6)  pop index
341: LDA   6, 1(6)  pop index
342: JLT   1, 15(5)  jump if index less than 0
343: LDC   3, 3(5)  load array size
344: SUB   3, 3, 1  sub max size with index
345: JLE   3, 15(5)  jump if index greater than size - 1
346: LDC   2, 2(5)  load size of subarray
347: MUL   1, 1, 2  compute 1 dim
348: ADD   0, 0, 1  add result
349: LD    1, 0(6)  pop index
350: LDA   6, 1(6)  pop index
351: JLT   1, 15(5)  jump if index less than 0
352: LDC   3, 2(5)  load array size
353: SUB   3, 3, 1  sub max size with index
354: JLE   3, 15(5)  jump if index greater than size - 1
355: LDC   2, 1(5)  load size of subarray
356: MUL   1, 1, 2  compute 2 dim
357: ADD   0, 0, 1  add result
358: LD    1, 0(6)  pop index
359: LDA   6, 1(6)  pop index
360: JLT   1, 15(5)  jump if index less than 0
361: LDC   3, 1(5)  load array size
362: SUB   3, 3, 1  sub max size with index
363: JLE   3, 15(5)  jump if index greater than size - 1
364: LDC   2, 1(5)  load size of subarray
365: MUL   1, 1, 2  compute 3 dim
366: ADD   0, 0, 1  add result
367: LD    1, 364(5)  load offset into ac2
368: ADD   0, 0, 1  compute final offset
369: LDA   6, -1(6)  push final offset
370: LDC   3, 389(5)  push final offset
371: SUB   3, 6, 3  push final offset
372: JLE   3, 25(5)  push final offset
373: ST    0, 0(6)  push final offset
374: LDC   0, 17(5)  load integer 17
375: LD    1, 0(6)  pop final offset
376: LDA   6, 1(6)  pop final offset
377: ST    0, 0(1)  store value into array static data
378: LDC   0, 0(5)  load integer 0
379: LDA   6, -1(6)  push array index
380: LDC   3, 389(5)  push array index
381: SUB   3, 6, 3  push array index
382: JLE   3, 25(5)  push array index
383: ST    0, 0(6)  push array index
384: LDC   0, 1(5)  load integer 1
385: LDA   6, -1(6)  push array index
386: LDC   3, 389(5)  push array index
387: SUB   3, 6, 3  push array index
388: JLE   3, 25(5)  push array index
389: ST    0, 0(6)  push array index
390: LDC   0, 2(5)  load integer 2
391: LDA   6, -1(6)  push array index
392: LDC   3, 389(5)  push array index
393: SUB   3, 6, 3  push array index
394: JLE   3, 25(5)  push array index
395: ST    0, 0(6)  push array index
396: LDC   0, 3(5)  push array dimension
397: LDC   0, 0(5)  load 0 to ac
398: LD    1, 0(6)  pop index
399: LDA   6, 1(6)  pop index
400: JLT   1, 15(5)  jump if index less than 0
401: LDC   3, 3(5)  load array size
402: SUB   3, 3, 1  sub max size with index
403: JLE   3, 15(5)  jump if index greater than size - 1
404: LDC   2, 2(5)  load size of subarray
405: MUL   1, 1, 2  compute 0 dim
406: ADD   0, 0, 1  add result
407: LD    1, 0(6)  pop index
408: LDA   6, 1(6)  pop index
409: JLT   1, 15(5)  jump if index less than 0
410: LDC   3, 2(5)  load array size
411: SUB   3, 3, 1  sub max size with index
412: JLE   3, 15(5)  jump if index greater than size - 1
413: LDC   2, 1(5)  load size of subarray
414: MUL   1, 1, 2  compute 1 dim
415: ADD   0, 0, 1  add result
416: LD    1, 0(6)  pop index
417: LDA   6, 1(6)  pop index
418: JLT   1, 15(5)  jump if index less than 0
419: LDC   3, 1(5)  load array size
420: SUB   3, 3, 1  sub max size with index
421: JLE   3, 15(5)  jump if index greater than size - 1
422: LDC   2, 1(5)  load size of subarray
423: MUL   1, 1, 2  compute 2 dim
424: ADD   0, 0, 1  add result
425: LD    1, 357(5)  load offset into ac2
426: ADD   0, 0, 1  compute final offset
427: LDA   6, -1(6)  push final offset
428: LDC   3, 389(5)  push final offset
429: SUB   3, 6, 3  push final offset
430: JLE   3, 25(5)  push final offset
431: ST    0, 0(6)  push final offset
432: LDC   0, 16(5)  load integer 16
433: LD    1, 0(6)  pop final offset
434: LDA   6, 1(6)  pop final offset
435: ST    0, 0(1)  store value into array static data
436: LDC   0, 0(5)  load integer 0
437: LDA   6, -1(6)  push array index
438: LDC   3, 389(5)  push array index
439: SUB   3, 6, 3  push array index
440: JLE   3, 25(5)  push array index
441: ST    0, 0(6)  push array index
442: LDC   0, 1(5)  load integer 1
443: LDA   6, -1(6)  push array index
444: LDC   3, 389(5)  push array index
445: SUB   3, 6, 3  push array index
446: JLE   3, 25(5)  push array index
447: ST    0, 0(6)  push array index
448: LDC   0, 2(5)  push array dimension
449: LDC   0, 0(5)  load 0 to ac
450: LD    1, 0(6)  pop index
451: LDA   6, 1(6)  pop index
452: JLT   1, 15(5)  jump if index less than 0
453: LDC   3, 2(5)  load array size
454: SUB   3, 3, 1  sub max size with index
455: JLE   3, 15(5)  jump if index greater than size - 1
456: LDC   2, 1(5)  load size of subarray
457: MUL   1, 1, 2  compute 0 dim
458: ADD   0, 0, 1  add result
459: LD    1, 0(6)  pop index
460: LDA   6, 1(6)  pop index
461: JLT   1, 15(5)  jump if index less than 0
462: LDC   3, 1(5)  load array size
463: SUB   3, 3, 1  sub max size with index
464: JLE   3, 15(5)  jump if index greater than size - 1
465: LDC   2, 1(5)  load size of subarray
466: MUL   1, 1, 2  compute 1 dim
467: ADD   0, 0, 1  add result
468: LD    1, 352(5)  load offset into ac2
469: ADD   0, 0, 1  compute final offset
470: LDA   6, -1(6)  push final offset
471: LDC   3, 389(5)  push final offset
472: SUB   3, 6, 3  push final offset
473: JLE   3, 25(5)  push final offset
474: ST    0, 0(6)  push final offset
475: LDC   0, 15(5)  load integer 15
476: LD    1, 0(6)  pop final offset
477: LDA   6, 1(6)  pop final offset
478: ST    0, 0(1)  store value into array static data
479: LDC   0, 0(5)  load integer 0
480: LDA   6, -1(6)  push array index
481: LDC   3, 389(5)  push array index
482: SUB   3, 6, 3  push array index
483: JLE   3, 25(5)  push array index
484: ST    0, 0(6)  push array index
485: LDC   0, 1(5)  push array dimension
486: LDC   0, 0(5)  load 0 to ac
487: LD    1, 0(6)  pop index
488: LDA   6, 1(6)  pop index
489: JLT   1, 15(5)  jump if index less than 0
490: LDC   3, 1(5)  load array size
491: SUB   3, 3, 1  sub max size with index
492: JLE   3, 15(5)  jump if index greater than size - 1
493: LDC   2, 1(5)  load size of subarray
494: MUL   1, 1, 2  compute 0 dim
495: ADD   0, 0, 1  add result
496: LD    1, 355(5)  load offset into ac2
497: ADD   0, 0, 1  compute final offset
498: LDA   6, -1(6)  push final offset
499: LDC   3, 389(5)  push final offset
500: SUB   3, 6, 3  push final offset
501: JLE   3, 25(5)  push final offset
502: ST    0, 0(6)  push final offset
503: LDC   0, 14(5)  load integer 14
504: LD    1, 0(6)  pop final offset
505: LDA   6, 1(6)  pop final offset
506: ST    0, 0(1)  store value into array static data
507: LDA   6, -1(6)  push fp
508: LDC   3, 389(5)  push fp
509: SUB   3, 6, 3  push fp
510: JLE   3, 25(5)  push fp
511: ST    4, 0(6)  push fp
512: LDA   4, 0(6)  set fp to sp
519: LDC   0, 4(5)  push array dimension
520: LDC   0, 0(5)  load 0 to ac
521: LD    1, 364(5)  load global offset into ac2
522: ADD   0, 0, 1  compute final offset
523: LDA   6, -1(6)  push array parameter
524: LDC   3, 389(5)  push array parameter
525: SUB   3, 6, 3  push array parameter
526: JLE   3, 25(5)  push array parameter
527: ST    0, 0(6)  push array parameter
528: LDA   6, 0(6)  preserve space for local vars
529: LDA   7, 103(5)  jump to procedure call
513: LDC   0, 530(5)  load return address into ac
514: LDA   6, -1(6)  push return address
515: LDC   3, 389(5)  push return address
516: SUB   3, 6, 3  push return address
517: JLE   3, 25(5)  push return address
518: ST    0, 0(6)  push return address
530: LDA   6, -1(6)  push fp
531: LDC   3, 389(5)  push fp
532: SUB   3, 6, 3  push fp
533: JLE   3, 25(5)  push fp
534: ST    4, 0(6)  push fp
535: LDA   4, 0(6)  set fp to sp
542: LDC   0, 3(5)  load integer 3
543: LDA   6, -1(6)  push array index
544: LDC   3, 389(5)  push array index
545: SUB   3, 6, 3  push array index
546: JLE   3, 25(5)  push array index
547: ST    0, 0(6)  push array index
548: LDC   0, 4(5)  push array dimension
549: LDC   0, 0(5)  load 0 to ac
550: LD    1, 0(6)  pop index
551: LDA   6, 1(6)  pop index
552: JLT   1, 15(5)  jump if index less than 0
553: LDC   3, 4(5)  load array size
554: SUB   3, 3, 1  sub max size with index
555: JLE   3, 15(5)  jump if index greater than size - 1
556: LDC   2, 6(5)  load size of subarray
557: MUL   1, 1, 2  compute 0 dim
558: ADD   0, 0, 1  add result
559: LD    1, 364(5)  load global offset into ac2
560: ADD   0, 0, 1  compute final offset
561: LDA   6, -1(6)  push array parameter
562: LDC   3, 389(5)  push array parameter
563: SUB   3, 6, 3  push array parameter
564: JLE   3, 25(5)  push array parameter
565: ST    0, 0(6)  push array parameter
566: LDA   6, 0(6)  preserve space for local vars
567: LDA   7, 176(5)  jump to procedure call
536: LDC   0, 568(5)  load return address into ac
537: LDA   6, -1(6)  push return address
538: LDC   3, 389(5)  push return address
539: SUB   3, 6, 3  push return address
540: JLE   3, 25(5)  push return address
541: ST    0, 0(6)  push return address
568: LDA   6, -1(6)  push fp
569: LDC   3, 389(5)  push fp
570: SUB   3, 6, 3  push fp
571: JLE   3, 25(5)  push fp
572: ST    4, 0(6)  push fp
573: LDA   4, 0(6)  set fp to sp
580: LDC   0, 3(5)  push array dimension
581: LDC   0, 0(5)  load 0 to ac
582: LD    1, 357(5)  load global offset into ac2
583: ADD   0, 0, 1  compute final offset
584: LDA   6, -1(6)  push array parameter
585: LDC   3, 389(5)  push array parameter
586: SUB   3, 6, 3  push array parameter
587: JLE   3, 25(5)  push array parameter
588: ST    0, 0(6)  push array parameter
589: LDA   6, 0(6)  preserve space for local vars
590: LDA   7, 176(5)  jump to procedure call
574: LDC   0, 591(5)  load return address into ac
575: LDA   6, -1(6)  push return address
576: LDC   3, 389(5)  push return address
577: SUB   3, 6, 3  push return address
578: JLE   3, 25(5)  push return address
579: ST    0, 0(6)  push return address
591: LDA   6, -1(6)  push fp
592: LDC   3, 389(5)  push fp
593: SUB   3, 6, 3  push fp
594: JLE   3, 25(5)  push fp
595: ST    4, 0(6)  push fp
596: LDA   4, 0(6)  set fp to sp
603: LDC   0, 2(5)  load integer 2
604: LDA   6, -1(6)  push array index
605: LDC   3, 389(5)  push array index
606: SUB   3, 6, 3  push array index
607: JLE   3, 25(5)  push array index
608: ST    0, 0(6)  push array index
609: LDC   0, 3(5)  load integer 3
610: LDA   6, -1(6)  push array index
611: LDC   3, 389(5)  push array index
612: SUB   3, 6, 3  push array index
613: JLE   3, 25(5)  push array index
614: ST    0, 0(6)  push array index
615: LDC   0, 4(5)  push array dimension
616: LDC   0, 0(5)  load 0 to ac
617: LD    1, 0(6)  pop index
618: LDA   6, 1(6)  pop index
619: JLT   1, 15(5)  jump if index less than 0
620: LDC   3, 4(5)  load array size
621: SUB   3, 3, 1  sub max size with index
622: JLE   3, 15(5)  jump if index greater than size - 1
623: LDC   2, 6(5)  load size of subarray
624: MUL   1, 1, 2  compute 0 dim
625: ADD   0, 0, 1  add result
626: LD    1, 0(6)  pop index
627: LDA   6, 1(6)  pop index
628: JLT   1, 15(5)  jump if index less than 0
629: LDC   3, 3(5)  load array size
630: SUB   3, 3, 1  sub max size with index
631: JLE   3, 15(5)  jump if index greater than size - 1
632: LDC   2, 2(5)  load size of subarray
633: MUL   1, 1, 2  compute 1 dim
634: ADD   0, 0, 1  add result
635: LD    1, 364(5)  load global offset into ac2
636: ADD   0, 0, 1  compute final offset
637: LDA   6, -1(6)  push array parameter
638: LDC   3, 389(5)  push array parameter
639: SUB   3, 6, 3  push array parameter
640: JLE   3, 25(5)  push array parameter
641: ST    0, 0(6)  push array parameter
642: LDA   6, 0(6)  preserve space for local vars
643: LDA   7, 234(5)  jump to procedure call
597: LDC   0, 644(5)  load return address into ac
598: LDA   6, -1(6)  push return address
599: LDC   3, 389(5)  push return address
600: SUB   3, 6, 3  push return address
601: JLE   3, 25(5)  push return address
602: ST    0, 0(6)  push return address
644: LDA   6, -1(6)  push fp
645: LDC   3, 389(5)  push fp
646: SUB   3, 6, 3  push fp
647: JLE   3, 25(5)  push fp
648: ST    4, 0(6)  push fp
649: LDA   4, 0(6)  set fp to sp
656: LDC   0, 2(5)  load integer 2
657: LDA   6, -1(6)  push array index
658: LDC   3, 389(5)  push array index
659: SUB   3, 6, 3  push array index
660: JLE   3, 25(5)  push array index
661: ST    0, 0(6)  push array index
662: LDC   0, 3(5)  push array dimension
663: LDC   0, 0(5)  load 0 to ac
664: LD    1, 0(6)  pop index
665: LDA   6, 1(6)  pop index
666: JLT   1, 15(5)  jump if index less than 0
667: LDC   3, 3(5)  load array size
668: SUB   3, 3, 1  sub max size with index
669: JLE   3, 15(5)  jump if index greater than size - 1
670: LDC   2, 2(5)  load size of subarray
671: MUL   1, 1, 2  compute 0 dim
672: ADD   0, 0, 1  add result
673: LD    1, 357(5)  load global offset into ac2
674: ADD   0, 0, 1  compute final offset
675: LDA   6, -1(6)  push array parameter
676: LDC   3, 389(5)  push array parameter
677: SUB   3, 6, 3  push array parameter
678: JLE   3, 25(5)  push array parameter
679: ST    0, 0(6)  push array parameter
680: LDA   6, 0(6)  preserve space for local vars
681: LDA   7, 234(5)  jump to procedure call
650: LDC   0, 682(5)  load return address into ac
651: LDA   6, -1(6)  push return address
652: LDC   3, 389(5)  push return address
653: SUB   3, 6, 3  push return address
654: JLE   3, 25(5)  push return address
655: ST    0, 0(6)  push return address
682: LDA   6, -1(6)  push fp
683: LDC   3, 389(5)  push fp
684: SUB   3, 6, 3  push fp
685: JLE   3, 25(5)  push fp
686: ST    4, 0(6)  push fp
687: LDA   4, 0(6)  set fp to sp
694: LDC   0, 2(5)  push array dimension
695: LDC   0, 0(5)  load 0 to ac
696: LD    1, 352(5)  load global offset into ac2
697: ADD   0, 0, 1  compute final offset
698: LDA   6, -1(6)  push array parameter
699: LDC   3, 389(5)  push array parameter
700: SUB   3, 6, 3  push array parameter
701: JLE   3, 25(5)  push array parameter
702: ST    0, 0(6)  push array parameter
703: LDA   6, 0(6)  preserve space for local vars
704: LDA   7, 234(5)  jump to procedure call
688: LDC   0, 705(5)  load return address into ac
689: LDA   6, -1(6)  push return address
690: LDC   3, 389(5)  push return address
691: SUB   3, 6, 3  push return address
692: JLE   3, 25(5)  push return address
693: ST    0, 0(6)  push return address
705: LDA   6, -1(6)  push fp
706: LDC   3, 389(5)  push fp
707: SUB   3, 6, 3  push fp
708: JLE   3, 25(5)  push fp
709: ST    4, 0(6)  push fp
710: LDA   4, 0(6)  set fp to sp
717: LDC   0, 1(5)  load integer 1
718: LDA   6, -1(6)  push array index
719: LDC   3, 389(5)  push array index
720: SUB   3, 6, 3  push array index
721: JLE   3, 25(5)  push array index
722: ST    0, 0(6)  push array index
723: LDC   0, 2(5)  load integer 2
724: LDA   6, -1(6)  push array index
725: LDC   3, 389(5)  push array index
726: SUB   3, 6, 3  push array index
727: JLE   3, 25(5)  push array index
728: ST    0, 0(6)  push array index
729: LDC   0, 3(5)  load integer 3
730: LDA   6, -1(6)  push array index
731: LDC   3, 389(5)  push array index
732: SUB   3, 6, 3  push array index
733: JLE   3, 25(5)  push array index
734: ST    0, 0(6)  push array index
735: LDC   0, 4(5)  push array dimension
736: LDC   0, 0(5)  load 0 to ac
737: LD    1, 0(6)  pop index
738: LDA   6, 1(6)  pop index
739: JLT   1, 15(5)  jump if index less than 0
740: LDC   3, 4(5)  load array size
741: SUB   3, 3, 1  sub max size with index
742: JLE   3, 15(5)  jump if index greater than size - 1
743: LDC   2, 6(5)  load size of subarray
744: MUL   1, 1, 2  compute 0 dim
745: ADD   0, 0, 1  add result
746: LD    1, 0(6)  pop index
747: LDA   6, 1(6)  pop index
748: JLT   1, 15(5)  jump if index less than 0
749: LDC   3, 3(5)  load array size
750: SUB   3, 3, 1  sub max size with index
751: JLE   3, 15(5)  jump if index greater than size - 1
752: LDC   2, 2(5)  load size of subarray
753: MUL   1, 1, 2  compute 1 dim
754: ADD   0, 0, 1  add result
755: LD    1, 0(6)  pop index
756: LDA   6, 1(6)  pop index
757: JLT   1, 15(5)  jump if index less than 0
758: LDC   3, 2(5)  load array size
759: SUB   3, 3, 1  sub max size with index
760: JLE   3, 15(5)  jump if index greater than size - 1
761: LDC   2, 1(5)  load size of subarray
762: MUL   1, 1, 2  compute 2 dim
763: ADD   0, 0, 1  add result
764: LD    1, 364(5)  load global offset into ac2
765: ADD   0, 0, 1  compute final offset
766: LDA   6, -1(6)  push array parameter
767: LDC   3, 389(5)  push array parameter
768: SUB   3, 6, 3  push array parameter
769: JLE   3, 25(5)  push array parameter
770: ST    0, 0(6)  push array parameter
771: LDA   6, 0(6)  preserve space for local vars
772: LDA   7, 277(5)  jump to procedure call
711: LDC   0, 773(5)  load return address into ac
712: LDA   6, -1(6)  push return address
713: LDC   3, 389(5)  push return address
714: SUB   3, 6, 3  push return address
715: JLE   3, 25(5)  push return address
716: ST    0, 0(6)  push return address
773: LDA   6, -1(6)  push fp
774: LDC   3, 389(5)  push fp
775: SUB   3, 6, 3  push fp
776: JLE   3, 25(5)  push fp
777: ST    4, 0(6)  push fp
778: LDA   4, 0(6)  set fp to sp
785: LDC   0, 1(5)  load integer 1
786: LDA   6, -1(6)  push array index
787: LDC   3, 389(5)  push array index
788: SUB   3, 6, 3  push array index
789: JLE   3, 25(5)  push array index
790: ST    0, 0(6)  push array index
791: LDC   0, 2(5)  load integer 2
792: LDA   6, -1(6)  push array index
793: LDC   3, 389(5)  push array index
794: SUB   3, 6, 3  push array index
795: JLE   3, 25(5)  push array index
796: ST    0, 0(6)  push array index
797: LDC   0, 3(5)  push array dimension
798: LDC   0, 0(5)  load 0 to ac
799: LD    1, 0(6)  pop index
800: LDA   6, 1(6)  pop index
801: JLT   1, 15(5)  jump if index less than 0
802: LDC   3, 3(5)  load array size
803: SUB   3, 3, 1  sub max size with index
804: JLE   3, 15(5)  jump if index greater than size - 1
805: LDC   2, 2(5)  load size of subarray
806: MUL   1, 1, 2  compute 0 dim
807: ADD   0, 0, 1  add result
808: LD    1, 0(6)  pop index
809: LDA   6, 1(6)  pop index
810: JLT   1, 15(5)  jump if index less than 0
811: LDC   3, 2(5)  load array size
812: SUB   3, 3, 1  sub max size with index
813: JLE   3, 15(5)  jump if index greater than size - 1
814: LDC   2, 1(5)  load size of subarray
815: MUL   1, 1, 2  compute 1 dim
816: ADD   0, 0, 1  add result
817: LD    1, 357(5)  load global offset into ac2
818: ADD   0, 0, 1  compute final offset
819: LDA   6, -1(6)  push array parameter
820: LDC   3, 389(5)  push array parameter
821: SUB   3, 6, 3  push array parameter
822: JLE   3, 25(5)  push array parameter
823: ST    0, 0(6)  push array parameter
824: LDA   6, 0(6)  preserve space for local vars
825: LDA   7, 277(5)  jump to procedure call
779: LDC   0, 826(5)  load return address into ac
780: LDA   6, -1(6)  push return address
781: LDC   3, 389(5)  push return address
782: SUB   3, 6, 3  push return address
783: JLE   3, 25(5)  push return address
784: ST    0, 0(6)  push return address
826: LDA   6, -1(6)  push fp
827: LDC   3, 389(5)  push fp
828: SUB   3, 6, 3  push fp
829: JLE   3, 25(5)  push fp
830: ST    4, 0(6)  push fp
831: LDA   4, 0(6)  set fp to sp
838: LDC   0, 1(5)  load integer 1
839: LDA   6, -1(6)  push array index
840: LDC   3, 389(5)  push array index
841: SUB   3, 6, 3  push array index
842: JLE   3, 25(5)  push array index
843: ST    0, 0(6)  push array index
844: LDC   0, 2(5)  push array dimension
845: LDC   0, 0(5)  load 0 to ac
846: LD    1, 0(6)  pop index
847: LDA   6, 1(6)  pop index
848: JLT   1, 15(5)  jump if index less than 0
849: LDC   3, 2(5)  load array size
850: SUB   3, 3, 1  sub max size with index
851: JLE   3, 15(5)  jump if index greater than size - 1
852: LDC   2, 1(5)  load size of subarray
853: MUL   1, 1, 2  compute 0 dim
854: ADD   0, 0, 1  add result
855: LD    1, 352(5)  load global offset into ac2
856: ADD   0, 0, 1  compute final offset
857: LDA   6, -1(6)  push array parameter
858: LDC   3, 389(5)  push array parameter
859: SUB   3, 6, 3  push array parameter
860: JLE   3, 25(5)  push array parameter
861: ST    0, 0(6)  push array parameter
862: LDA   6, 0(6)  preserve space for local vars
863: LDA   7, 277(5)  jump to procedure call
832: LDC   0, 864(5)  load return address into ac
833: LDA   6, -1(6)  push return address
834: LDC   3, 389(5)  push return address
835: SUB   3, 6, 3  push return address
836: JLE   3, 25(5)  push return address
837: ST    0, 0(6)  push return address
864: LDA   6, -1(6)  push fp
865: LDC   3, 389(5)  push fp
866: SUB   3, 6, 3  push fp
867: JLE   3, 25(5)  push fp
868: ST    4, 0(6)  push fp
869: LDA   4, 0(6)  set fp to sp
876: LDC   0, 1(5)  push array dimension
877: LDC   0, 0(5)  load 0 to ac
878: LD    1, 355(5)  load global offset into ac2
879: ADD   0, 0, 1  compute final offset
880: LDA   6, -1(6)  push array parameter
881: LDC   3, 389(5)  push array parameter
882: SUB   3, 6, 3  push array parameter
883: JLE   3, 25(5)  push array parameter
884: ST    0, 0(6)  push array parameter
885: LDA   6, 0(6)  preserve space for local vars
886: LDA   7, 277(5)  jump to procedure call
870: LDC   0, 887(5)  load return address into ac
871: LDA   6, -1(6)  push return address
872: LDC   3, 389(5)  push return address
873: SUB   3, 6, 3  push return address
874: JLE   3, 25(5)  push return address
875: ST    0, 0(6)  push return address
887: HALT  0, 0, 0  program ends
