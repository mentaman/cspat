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
0: LDC   0, 80(5)  store array start address: 80
1: LDC   1, 79(5)  store array offset into ac2: 79
2: ST    0, 0(1)  store array offset
3: LD    6, 0(5)  save stack pointer
4: LD    4, 0(5)  save frame pointer
6: LDC   0, 38(5)  load array error str address
7: LD    1, 0(0)  load str length into ac2
8: JEQ   1, 5(7)  output nothing when empty
9: LDA   0, 1(0)  increase offset
10: LD    2, 0(0)  load char into ac3
11: OUTC   2, 2, 2  write char
12: LDA   1, -1(1)  decrease length of remaining string in ac2
13: JNE   1, -5(7)  continue print if not yet finish
14: OUTNL 0, 0, 0  emit newline
15: HALT  0, 0, 0  stop because of array error
16: LDC   0, 8(5)  load out of memory str address
17: LD    1, 0(0)  load str length into ac2
18: JEQ   1, 5(7)  output nothing when empty
19: LDA   0, 1(0)  increase offset
20: LD    2, 0(0)  load char into ac3
21: OUTC   2, 2, 2  write char
22: LDA   1, -1(1)  decrease length of remaining string in ac2
23: JNE   1, -5(7)  continue print if not yet finish
24: OUTNL 0, 0, 0  emit newline
25: HALT  0, 0, 0  stop because of out of memory error
26: LD    0, -3(4)  load str offset
27: LD    1, 0(0)  load str length
28: LDC   2, 0(5)  load 0 as initial result
29: LDA   6, -1(6)  push 0
30: LDC   3, 88(5)  push 0
31: SUB   3, 6, 3  push 0
32: JLE   3, 16(5)  push 0
33: ST    2, 0(6)  push 0
34: LD    2, 0(6)  pop result into AC3
35: LDA   6, 1(6)  pop result into AC3
36: LDC   3, 10(5)  load 10 into ac4
37: MUL   2, 2, 3  mul result with 10
38: LDA   6, -1(6)  push result
39: LDC   3, 88(5)  push result
40: SUB   3, 6, 3  push result
41: JLE   3, 16(5)  push result
42: ST    2, 0(6)  push result
43: LDA   0, 1(0)  increase str offset
44: LD    2, 0(0)  load char
45: LDC   3, 48(5)  load 48 into ac4
46: SUB   2, 2, 3  compute int value
47: LD    3, 0(6)  pop result into AC4
48: LDA   6, 1(6)  pop result into AC4
49: ADD   2, 2, 3  compute result
50: LDA   6, -1(6)  push result
51: LDC   3, 88(5)  push result
52: SUB   3, 6, 3  push result
53: JLE   3, 16(5)  push result
54: ST    2, 0(6)  push result
55: LDA   1, -1(1)  decrease str length
56: JNE   1, 34(5)  continue if str length
57: LD    0, 0(6)  pop result
58: LDA   6, 1(6)  pop result
59: ST    0, -2(4)  save to return value
60: LD    0, -2(4)  load int/bool/string offset as return value
61: LD    1, -1(4)  load return address
62: LDA   6, 0(4)  change sp to fp + 1
63: LD    4, 0(6)  restore fp
64: LDA   6, 1(6)  restore fp
65: LDA   7, 0(1)  jump to the return address
66: LDC   0, 0(5)  load integer 0
67: LDA   6, -1(6)  push array index
68: LDC   3, 88(5)  push array index
69: SUB   3, 6, 3  push array index
70: JLE   3, 16(5)  push array index
71: ST    0, 0(6)  push array index
72: LDC   0, 0(5)  load integer 0
73: LDA   6, -1(6)  push array index
74: LDC   3, 88(5)  push array index
75: SUB   3, 6, 3  push array index
76: JLE   3, 16(5)  push array index
77: ST    0, 0(6)  push array index
78: LDC   0, 2(5)  push array dimension
79: LDC   0, 0(5)  load 0 to ac
80: LD    1, 0(6)  pop index
81: LDA   6, 1(6)  pop index
82: JLT   1, 6(5)  jump if index less than 0
83: LDC   3, 4(5)  load array size
84: SUB   3, 3, 1  sub max size with index
85: JLE   3, 6(5)  jump if index greater than size - 1
86: LDC   2, 2(5)  load size of subarray
87: MUL   1, 1, 2  compute 0 dim
88: ADD   0, 0, 1  add result
89: LD    1, 0(6)  pop index
90: LDA   6, 1(6)  pop index
91: JLT   1, 6(5)  jump if index less than 0
92: LDC   3, 2(5)  load array size
93: SUB   3, 3, 1  sub max size with index
94: JLE   3, 6(5)  jump if index greater than size - 1
95: LDC   2, 1(5)  load size of subarray
96: MUL   1, 1, 2  compute 1 dim
97: ADD   0, 0, 1  add result
98: LDA   1, 0(4)  load fp into ac2
99: LD    1, -2(1)  load local offset into ac2
100: ADD   0, 0, 1  compute final offset
101: LD    0, 0(0)  load data from array
102: OUT   0, 0, 0  write integer
103: OUTNL 0, 0, 0  write new line
104: LDC   0, 0(5)  load integer 0
105: LDA   6, -1(6)  push array index
106: LDC   3, 88(5)  push array index
107: SUB   3, 6, 3  push array index
108: JLE   3, 16(5)  push array index
109: ST    0, 0(6)  push array index
110: LDC   0, 1(5)  load integer 1
111: LDA   6, -1(6)  push array index
112: LDC   3, 88(5)  push array index
113: SUB   3, 6, 3  push array index
114: JLE   3, 16(5)  push array index
115: ST    0, 0(6)  push array index
116: LDC   0, 2(5)  push array dimension
117: LDC   0, 0(5)  load 0 to ac
118: LD    1, 0(6)  pop index
119: LDA   6, 1(6)  pop index
120: JLT   1, 6(5)  jump if index less than 0
121: LDC   3, 4(5)  load array size
122: SUB   3, 3, 1  sub max size with index
123: JLE   3, 6(5)  jump if index greater than size - 1
124: LDC   2, 2(5)  load size of subarray
125: MUL   1, 1, 2  compute 0 dim
126: ADD   0, 0, 1  add result
127: LD    1, 0(6)  pop index
128: LDA   6, 1(6)  pop index
129: JLT   1, 6(5)  jump if index less than 0
130: LDC   3, 2(5)  load array size
131: SUB   3, 3, 1  sub max size with index
132: JLE   3, 6(5)  jump if index greater than size - 1
133: LDC   2, 1(5)  load size of subarray
134: MUL   1, 1, 2  compute 1 dim
135: ADD   0, 0, 1  add result
136: LDA   1, 0(4)  load fp into ac2
137: LD    1, -2(1)  load local offset into ac2
138: ADD   0, 0, 1  compute final offset
139: LD    0, 0(0)  load data from array
140: OUT   0, 0, 0  write integer
141: OUTNL 0, 0, 0  write new line
142: LDC   0, 0(5)  load integer 0
143: LDA   6, -1(6)  push array index
144: LDC   3, 88(5)  push array index
145: SUB   3, 6, 3  push array index
146: JLE   3, 16(5)  push array index
147: ST    0, 0(6)  push array index
148: LDC   0, 2(5)  load integer 2
149: LDA   6, -1(6)  push array index
150: LDC   3, 88(5)  push array index
151: SUB   3, 6, 3  push array index
152: JLE   3, 16(5)  push array index
153: ST    0, 0(6)  push array index
154: LDC   0, 2(5)  push array dimension
155: LDC   0, 0(5)  load 0 to ac
156: LD    1, 0(6)  pop index
157: LDA   6, 1(6)  pop index
158: JLT   1, 6(5)  jump if index less than 0
159: LDC   3, 4(5)  load array size
160: SUB   3, 3, 1  sub max size with index
161: JLE   3, 6(5)  jump if index greater than size - 1
162: LDC   2, 2(5)  load size of subarray
163: MUL   1, 1, 2  compute 0 dim
164: ADD   0, 0, 1  add result
165: LD    1, 0(6)  pop index
166: LDA   6, 1(6)  pop index
167: JLT   1, 6(5)  jump if index less than 0
168: LDC   3, 2(5)  load array size
169: SUB   3, 3, 1  sub max size with index
170: JLE   3, 6(5)  jump if index greater than size - 1
171: LDC   2, 1(5)  load size of subarray
172: MUL   1, 1, 2  compute 1 dim
173: ADD   0, 0, 1  add result
174: LDA   1, 0(4)  load fp into ac2
175: LD    1, -2(1)  load local offset into ac2
176: ADD   0, 0, 1  compute final offset
177: LD    0, 0(0)  load data from array
178: OUT   0, 0, 0  write integer
179: OUTNL 0, 0, 0  write new line
180: LDC   0, 0(5)  load integer 0
181: LDA   6, -1(6)  push array index
182: LDC   3, 88(5)  push array index
183: SUB   3, 6, 3  push array index
184: JLE   3, 16(5)  push array index
185: ST    0, 0(6)  push array index
186: LDC   0, 3(5)  load integer 3
187: LDA   6, -1(6)  push array index
188: LDC   3, 88(5)  push array index
189: SUB   3, 6, 3  push array index
190: JLE   3, 16(5)  push array index
191: ST    0, 0(6)  push array index
192: LDC   0, 2(5)  push array dimension
193: LDC   0, 0(5)  load 0 to ac
194: LD    1, 0(6)  pop index
195: LDA   6, 1(6)  pop index
196: JLT   1, 6(5)  jump if index less than 0
197: LDC   3, 4(5)  load array size
198: SUB   3, 3, 1  sub max size with index
199: JLE   3, 6(5)  jump if index greater than size - 1
200: LDC   2, 2(5)  load size of subarray
201: MUL   1, 1, 2  compute 0 dim
202: ADD   0, 0, 1  add result
203: LD    1, 0(6)  pop index
204: LDA   6, 1(6)  pop index
205: JLT   1, 6(5)  jump if index less than 0
206: LDC   3, 2(5)  load array size
207: SUB   3, 3, 1  sub max size with index
208: JLE   3, 6(5)  jump if index greater than size - 1
209: LDC   2, 1(5)  load size of subarray
210: MUL   1, 1, 2  compute 1 dim
211: ADD   0, 0, 1  add result
212: LDA   1, 0(4)  load fp into ac2
213: LD    1, -2(1)  load local offset into ac2
214: ADD   0, 0, 1  compute final offset
215: LD    0, 0(0)  load data from array
216: OUT   0, 0, 0  write integer
217: OUTNL 0, 0, 0  write new line
218: LDC   0, 1(5)  load integer 1
219: LDA   6, -1(6)  push array index
220: LDC   3, 88(5)  push array index
221: SUB   3, 6, 3  push array index
222: JLE   3, 16(5)  push array index
223: ST    0, 0(6)  push array index
224: LDC   0, 0(5)  load integer 0
225: LDA   6, -1(6)  push array index
226: LDC   3, 88(5)  push array index
227: SUB   3, 6, 3  push array index
228: JLE   3, 16(5)  push array index
229: ST    0, 0(6)  push array index
230: LDC   0, 2(5)  push array dimension
231: LDC   0, 0(5)  load 0 to ac
232: LD    1, 0(6)  pop index
233: LDA   6, 1(6)  pop index
234: JLT   1, 6(5)  jump if index less than 0
235: LDC   3, 4(5)  load array size
236: SUB   3, 3, 1  sub max size with index
237: JLE   3, 6(5)  jump if index greater than size - 1
238: LDC   2, 2(5)  load size of subarray
239: MUL   1, 1, 2  compute 0 dim
240: ADD   0, 0, 1  add result
241: LD    1, 0(6)  pop index
242: LDA   6, 1(6)  pop index
243: JLT   1, 6(5)  jump if index less than 0
244: LDC   3, 2(5)  load array size
245: SUB   3, 3, 1  sub max size with index
246: JLE   3, 6(5)  jump if index greater than size - 1
247: LDC   2, 1(5)  load size of subarray
248: MUL   1, 1, 2  compute 1 dim
249: ADD   0, 0, 1  add result
250: LDA   1, 0(4)  load fp into ac2
251: LD    1, -2(1)  load local offset into ac2
252: ADD   0, 0, 1  compute final offset
253: LD    0, 0(0)  load data from array
254: OUT   0, 0, 0  write integer
255: OUTNL 0, 0, 0  write new line
256: LDC   0, 1(5)  load integer 1
257: LDA   6, -1(6)  push array index
258: LDC   3, 88(5)  push array index
259: SUB   3, 6, 3  push array index
260: JLE   3, 16(5)  push array index
261: ST    0, 0(6)  push array index
262: LDC   0, 1(5)  load integer 1
263: LDA   6, -1(6)  push array index
264: LDC   3, 88(5)  push array index
265: SUB   3, 6, 3  push array index
266: JLE   3, 16(5)  push array index
267: ST    0, 0(6)  push array index
268: LDC   0, 2(5)  push array dimension
269: LDC   0, 0(5)  load 0 to ac
270: LD    1, 0(6)  pop index
271: LDA   6, 1(6)  pop index
272: JLT   1, 6(5)  jump if index less than 0
273: LDC   3, 4(5)  load array size
274: SUB   3, 3, 1  sub max size with index
275: JLE   3, 6(5)  jump if index greater than size - 1
276: LDC   2, 2(5)  load size of subarray
277: MUL   1, 1, 2  compute 0 dim
278: ADD   0, 0, 1  add result
279: LD    1, 0(6)  pop index
280: LDA   6, 1(6)  pop index
281: JLT   1, 6(5)  jump if index less than 0
282: LDC   3, 2(5)  load array size
283: SUB   3, 3, 1  sub max size with index
284: JLE   3, 6(5)  jump if index greater than size - 1
285: LDC   2, 1(5)  load size of subarray
286: MUL   1, 1, 2  compute 1 dim
287: ADD   0, 0, 1  add result
288: LDA   1, 0(4)  load fp into ac2
289: LD    1, -2(1)  load local offset into ac2
290: ADD   0, 0, 1  compute final offset
291: LD    0, 0(0)  load data from array
292: OUT   0, 0, 0  write integer
293: OUTNL 0, 0, 0  write new line
294: LDC   0, 1(5)  load integer 1
295: LDA   6, -1(6)  push array index
296: LDC   3, 88(5)  push array index
297: SUB   3, 6, 3  push array index
298: JLE   3, 16(5)  push array index
299: ST    0, 0(6)  push array index
300: LDC   0, 2(5)  load integer 2
301: LDA   6, -1(6)  push array index
302: LDC   3, 88(5)  push array index
303: SUB   3, 6, 3  push array index
304: JLE   3, 16(5)  push array index
305: ST    0, 0(6)  push array index
306: LDC   0, 2(5)  push array dimension
307: LDC   0, 0(5)  load 0 to ac
308: LD    1, 0(6)  pop index
309: LDA   6, 1(6)  pop index
310: JLT   1, 6(5)  jump if index less than 0
311: LDC   3, 4(5)  load array size
312: SUB   3, 3, 1  sub max size with index
313: JLE   3, 6(5)  jump if index greater than size - 1
314: LDC   2, 2(5)  load size of subarray
315: MUL   1, 1, 2  compute 0 dim
316: ADD   0, 0, 1  add result
317: LD    1, 0(6)  pop index
318: LDA   6, 1(6)  pop index
319: JLT   1, 6(5)  jump if index less than 0
320: LDC   3, 2(5)  load array size
321: SUB   3, 3, 1  sub max size with index
322: JLE   3, 6(5)  jump if index greater than size - 1
323: LDC   2, 1(5)  load size of subarray
324: MUL   1, 1, 2  compute 1 dim
325: ADD   0, 0, 1  add result
326: LDA   1, 0(4)  load fp into ac2
327: LD    1, -2(1)  load local offset into ac2
328: ADD   0, 0, 1  compute final offset
329: LD    0, 0(0)  load data from array
330: OUT   0, 0, 0  write integer
331: OUTNL 0, 0, 0  write new line
332: LDC   0, 1(5)  load integer 1
333: LDA   6, -1(6)  push array index
334: LDC   3, 88(5)  push array index
335: SUB   3, 6, 3  push array index
336: JLE   3, 16(5)  push array index
337: ST    0, 0(6)  push array index
338: LDC   0, 3(5)  load integer 3
339: LDA   6, -1(6)  push array index
340: LDC   3, 88(5)  push array index
341: SUB   3, 6, 3  push array index
342: JLE   3, 16(5)  push array index
343: ST    0, 0(6)  push array index
344: LDC   0, 2(5)  push array dimension
345: LDC   0, 0(5)  load 0 to ac
346: LD    1, 0(6)  pop index
347: LDA   6, 1(6)  pop index
348: JLT   1, 6(5)  jump if index less than 0
349: LDC   3, 4(5)  load array size
350: SUB   3, 3, 1  sub max size with index
351: JLE   3, 6(5)  jump if index greater than size - 1
352: LDC   2, 2(5)  load size of subarray
353: MUL   1, 1, 2  compute 0 dim
354: ADD   0, 0, 1  add result
355: LD    1, 0(6)  pop index
356: LDA   6, 1(6)  pop index
357: JLT   1, 6(5)  jump if index less than 0
358: LDC   3, 2(5)  load array size
359: SUB   3, 3, 1  sub max size with index
360: JLE   3, 6(5)  jump if index greater than size - 1
361: LDC   2, 1(5)  load size of subarray
362: MUL   1, 1, 2  compute 1 dim
363: ADD   0, 0, 1  add result
364: LDA   1, 0(4)  load fp into ac2
365: LD    1, -2(1)  load local offset into ac2
366: ADD   0, 0, 1  compute final offset
367: LD    0, 0(0)  load data from array
368: OUT   0, 0, 0  write integer
369: OUTNL 0, 0, 0  write new line
370: LD    1, -1(4)  load return address
371: LDA   6, 0(4)  change sp to fp + 1
372: LD    4, 0(6)  restore fp
373: LDA   6, 1(6)  restore fp
374: LDA   7, 0(1)  jump to the return address
5: LDA   7, 375(5)  jump to start of the program
375: LDC   0, 0(5)  load integer 0
376: LDA   6, -1(6)  push array index
377: LDC   3, 88(5)  push array index
378: SUB   3, 6, 3  push array index
379: JLE   3, 16(5)  push array index
380: ST    0, 0(6)  push array index
381: LDC   0, 0(5)  load integer 0
382: LDA   6, -1(6)  push array index
383: LDC   3, 88(5)  push array index
384: SUB   3, 6, 3  push array index
385: JLE   3, 16(5)  push array index
386: ST    0, 0(6)  push array index
387: LDC   0, 2(5)  push array dimension
388: LDC   0, 0(5)  load 0 to ac
389: LD    1, 0(6)  pop index
390: LDA   6, 1(6)  pop index
391: JLT   1, 6(5)  jump if index less than 0
392: LDC   3, 4(5)  load array size
393: SUB   3, 3, 1  sub max size with index
394: JLE   3, 6(5)  jump if index greater than size - 1
395: LDC   2, 2(5)  load size of subarray
396: MUL   1, 1, 2  compute 0 dim
397: ADD   0, 0, 1  add result
398: LD    1, 0(6)  pop index
399: LDA   6, 1(6)  pop index
400: JLT   1, 6(5)  jump if index less than 0
401: LDC   3, 2(5)  load array size
402: SUB   3, 3, 1  sub max size with index
403: JLE   3, 6(5)  jump if index greater than size - 1
404: LDC   2, 1(5)  load size of subarray
405: MUL   1, 1, 2  compute 1 dim
406: ADD   0, 0, 1  add result
407: LD    1, 79(5)  load offset into ac2
408: ADD   0, 0, 1  compute final offset
409: LDA   6, -1(6)  push final offset
410: LDC   3, 88(5)  push final offset
411: SUB   3, 6, 3  push final offset
412: JLE   3, 16(5)  push final offset
413: ST    0, 0(6)  push final offset
414: LDC   0, 3(5)  load integer 3
415: LD    1, 0(6)  pop final offset
416: LDA   6, 1(6)  pop final offset
417: ST    0, 0(1)  store value into array static data
418: LDC   0, 0(5)  load integer 0
419: LDA   6, -1(6)  push array index
420: LDC   3, 88(5)  push array index
421: SUB   3, 6, 3  push array index
422: JLE   3, 16(5)  push array index
423: ST    0, 0(6)  push array index
424: LDC   0, 1(5)  load integer 1
425: LDA   6, -1(6)  push array index
426: LDC   3, 88(5)  push array index
427: SUB   3, 6, 3  push array index
428: JLE   3, 16(5)  push array index
429: ST    0, 0(6)  push array index
430: LDC   0, 2(5)  push array dimension
431: LDC   0, 0(5)  load 0 to ac
432: LD    1, 0(6)  pop index
433: LDA   6, 1(6)  pop index
434: JLT   1, 6(5)  jump if index less than 0
435: LDC   3, 4(5)  load array size
436: SUB   3, 3, 1  sub max size with index
437: JLE   3, 6(5)  jump if index greater than size - 1
438: LDC   2, 2(5)  load size of subarray
439: MUL   1, 1, 2  compute 0 dim
440: ADD   0, 0, 1  add result
441: LD    1, 0(6)  pop index
442: LDA   6, 1(6)  pop index
443: JLT   1, 6(5)  jump if index less than 0
444: LDC   3, 2(5)  load array size
445: SUB   3, 3, 1  sub max size with index
446: JLE   3, 6(5)  jump if index greater than size - 1
447: LDC   2, 1(5)  load size of subarray
448: MUL   1, 1, 2  compute 1 dim
449: ADD   0, 0, 1  add result
450: LD    1, 79(5)  load offset into ac2
451: ADD   0, 0, 1  compute final offset
452: LDA   6, -1(6)  push final offset
453: LDC   3, 88(5)  push final offset
454: SUB   3, 6, 3  push final offset
455: JLE   3, 16(5)  push final offset
456: ST    0, 0(6)  push final offset
457: LDC   0, 2(5)  load integer 2
458: LD    1, 0(6)  pop final offset
459: LDA   6, 1(6)  pop final offset
460: ST    0, 0(1)  store value into array static data
461: LDC   0, 0(5)  load integer 0
462: LDA   6, -1(6)  push array index
463: LDC   3, 88(5)  push array index
464: SUB   3, 6, 3  push array index
465: JLE   3, 16(5)  push array index
466: ST    0, 0(6)  push array index
467: LDC   0, 2(5)  load integer 2
468: LDA   6, -1(6)  push array index
469: LDC   3, 88(5)  push array index
470: SUB   3, 6, 3  push array index
471: JLE   3, 16(5)  push array index
472: ST    0, 0(6)  push array index
473: LDC   0, 2(5)  push array dimension
474: LDC   0, 0(5)  load 0 to ac
475: LD    1, 0(6)  pop index
476: LDA   6, 1(6)  pop index
477: JLT   1, 6(5)  jump if index less than 0
478: LDC   3, 4(5)  load array size
479: SUB   3, 3, 1  sub max size with index
480: JLE   3, 6(5)  jump if index greater than size - 1
481: LDC   2, 2(5)  load size of subarray
482: MUL   1, 1, 2  compute 0 dim
483: ADD   0, 0, 1  add result
484: LD    1, 0(6)  pop index
485: LDA   6, 1(6)  pop index
486: JLT   1, 6(5)  jump if index less than 0
487: LDC   3, 2(5)  load array size
488: SUB   3, 3, 1  sub max size with index
489: JLE   3, 6(5)  jump if index greater than size - 1
490: LDC   2, 1(5)  load size of subarray
491: MUL   1, 1, 2  compute 1 dim
492: ADD   0, 0, 1  add result
493: LD    1, 79(5)  load offset into ac2
494: ADD   0, 0, 1  compute final offset
495: LDA   6, -1(6)  push final offset
496: LDC   3, 88(5)  push final offset
497: SUB   3, 6, 3  push final offset
498: JLE   3, 16(5)  push final offset
499: ST    0, 0(6)  push final offset
500: LDC   0, 1(5)  load integer 1
501: LD    1, 0(6)  pop final offset
502: LDA   6, 1(6)  pop final offset
503: ST    0, 0(1)  store value into array static data
504: LDC   0, 0(5)  load integer 0
505: LDA   6, -1(6)  push array index
506: LDC   3, 88(5)  push array index
507: SUB   3, 6, 3  push array index
508: JLE   3, 16(5)  push array index
509: ST    0, 0(6)  push array index
510: LDC   0, 3(5)  load integer 3
511: LDA   6, -1(6)  push array index
512: LDC   3, 88(5)  push array index
513: SUB   3, 6, 3  push array index
514: JLE   3, 16(5)  push array index
515: ST    0, 0(6)  push array index
516: LDC   0, 2(5)  push array dimension
517: LDC   0, 0(5)  load 0 to ac
518: LD    1, 0(6)  pop index
519: LDA   6, 1(6)  pop index
520: JLT   1, 6(5)  jump if index less than 0
521: LDC   3, 4(5)  load array size
522: SUB   3, 3, 1  sub max size with index
523: JLE   3, 6(5)  jump if index greater than size - 1
524: LDC   2, 2(5)  load size of subarray
525: MUL   1, 1, 2  compute 0 dim
526: ADD   0, 0, 1  add result
527: LD    1, 0(6)  pop index
528: LDA   6, 1(6)  pop index
529: JLT   1, 6(5)  jump if index less than 0
530: LDC   3, 2(5)  load array size
531: SUB   3, 3, 1  sub max size with index
532: JLE   3, 6(5)  jump if index greater than size - 1
533: LDC   2, 1(5)  load size of subarray
534: MUL   1, 1, 2  compute 1 dim
535: ADD   0, 0, 1  add result
536: LD    1, 79(5)  load offset into ac2
537: ADD   0, 0, 1  compute final offset
538: LDA   6, -1(6)  push final offset
539: LDC   3, 88(5)  push final offset
540: SUB   3, 6, 3  push final offset
541: JLE   3, 16(5)  push final offset
542: ST    0, 0(6)  push final offset
543: LDC   0, 0(5)  load integer 0
544: LD    1, 0(6)  pop final offset
545: LDA   6, 1(6)  pop final offset
546: ST    0, 0(1)  store value into array static data
547: LDC   0, 1(5)  load integer 1
548: LDA   6, -1(6)  push array index
549: LDC   3, 88(5)  push array index
550: SUB   3, 6, 3  push array index
551: JLE   3, 16(5)  push array index
552: ST    0, 0(6)  push array index
553: LDC   0, 0(5)  load integer 0
554: LDA   6, -1(6)  push array index
555: LDC   3, 88(5)  push array index
556: SUB   3, 6, 3  push array index
557: JLE   3, 16(5)  push array index
558: ST    0, 0(6)  push array index
559: LDC   0, 2(5)  push array dimension
560: LDC   0, 0(5)  load 0 to ac
561: LD    1, 0(6)  pop index
562: LDA   6, 1(6)  pop index
563: JLT   1, 6(5)  jump if index less than 0
564: LDC   3, 4(5)  load array size
565: SUB   3, 3, 1  sub max size with index
566: JLE   3, 6(5)  jump if index greater than size - 1
567: LDC   2, 2(5)  load size of subarray
568: MUL   1, 1, 2  compute 0 dim
569: ADD   0, 0, 1  add result
570: LD    1, 0(6)  pop index
571: LDA   6, 1(6)  pop index
572: JLT   1, 6(5)  jump if index less than 0
573: LDC   3, 2(5)  load array size
574: SUB   3, 3, 1  sub max size with index
575: JLE   3, 6(5)  jump if index greater than size - 1
576: LDC   2, 1(5)  load size of subarray
577: MUL   1, 1, 2  compute 1 dim
578: ADD   0, 0, 1  add result
579: LD    1, 79(5)  load offset into ac2
580: ADD   0, 0, 1  compute final offset
581: LDA   6, -1(6)  push final offset
582: LDC   3, 88(5)  push final offset
583: SUB   3, 6, 3  push final offset
584: JLE   3, 16(5)  push final offset
585: ST    0, 0(6)  push final offset
586: LDC   0, 1(5)  load integer 1
587: LDC   1, 0(5)  load 0 into AC2
588: SUB   0, 1, 0  compute negative number
589: LD    1, 0(6)  pop final offset
590: LDA   6, 1(6)  pop final offset
591: ST    0, 0(1)  store value into array static data
592: LDC   0, 1(5)  load integer 1
593: LDA   6, -1(6)  push array index
594: LDC   3, 88(5)  push array index
595: SUB   3, 6, 3  push array index
596: JLE   3, 16(5)  push array index
597: ST    0, 0(6)  push array index
598: LDC   0, 1(5)  load integer 1
599: LDA   6, -1(6)  push array index
600: LDC   3, 88(5)  push array index
601: SUB   3, 6, 3  push array index
602: JLE   3, 16(5)  push array index
603: ST    0, 0(6)  push array index
604: LDC   0, 2(5)  push array dimension
605: LDC   0, 0(5)  load 0 to ac
606: LD    1, 0(6)  pop index
607: LDA   6, 1(6)  pop index
608: JLT   1, 6(5)  jump if index less than 0
609: LDC   3, 4(5)  load array size
610: SUB   3, 3, 1  sub max size with index
611: JLE   3, 6(5)  jump if index greater than size - 1
612: LDC   2, 2(5)  load size of subarray
613: MUL   1, 1, 2  compute 0 dim
614: ADD   0, 0, 1  add result
615: LD    1, 0(6)  pop index
616: LDA   6, 1(6)  pop index
617: JLT   1, 6(5)  jump if index less than 0
618: LDC   3, 2(5)  load array size
619: SUB   3, 3, 1  sub max size with index
620: JLE   3, 6(5)  jump if index greater than size - 1
621: LDC   2, 1(5)  load size of subarray
622: MUL   1, 1, 2  compute 1 dim
623: ADD   0, 0, 1  add result
624: LD    1, 79(5)  load offset into ac2
625: ADD   0, 0, 1  compute final offset
626: LDA   6, -1(6)  push final offset
627: LDC   3, 88(5)  push final offset
628: SUB   3, 6, 3  push final offset
629: JLE   3, 16(5)  push final offset
630: ST    0, 0(6)  push final offset
631: LDC   0, 2(5)  load integer 2
632: LDC   1, 0(5)  load 0 into AC2
633: SUB   0, 1, 0  compute negative number
634: LD    1, 0(6)  pop final offset
635: LDA   6, 1(6)  pop final offset
636: ST    0, 0(1)  store value into array static data
637: LDC   0, 1(5)  load integer 1
638: LDA   6, -1(6)  push array index
639: LDC   3, 88(5)  push array index
640: SUB   3, 6, 3  push array index
641: JLE   3, 16(5)  push array index
642: ST    0, 0(6)  push array index
643: LDC   0, 2(5)  load integer 2
644: LDA   6, -1(6)  push array index
645: LDC   3, 88(5)  push array index
646: SUB   3, 6, 3  push array index
647: JLE   3, 16(5)  push array index
648: ST    0, 0(6)  push array index
649: LDC   0, 2(5)  push array dimension
650: LDC   0, 0(5)  load 0 to ac
651: LD    1, 0(6)  pop index
652: LDA   6, 1(6)  pop index
653: JLT   1, 6(5)  jump if index less than 0
654: LDC   3, 4(5)  load array size
655: SUB   3, 3, 1  sub max size with index
656: JLE   3, 6(5)  jump if index greater than size - 1
657: LDC   2, 2(5)  load size of subarray
658: MUL   1, 1, 2  compute 0 dim
659: ADD   0, 0, 1  add result
660: LD    1, 0(6)  pop index
661: LDA   6, 1(6)  pop index
662: JLT   1, 6(5)  jump if index less than 0
663: LDC   3, 2(5)  load array size
664: SUB   3, 3, 1  sub max size with index
665: JLE   3, 6(5)  jump if index greater than size - 1
666: LDC   2, 1(5)  load size of subarray
667: MUL   1, 1, 2  compute 1 dim
668: ADD   0, 0, 1  add result
669: LD    1, 79(5)  load offset into ac2
670: ADD   0, 0, 1  compute final offset
671: LDA   6, -1(6)  push final offset
672: LDC   3, 88(5)  push final offset
673: SUB   3, 6, 3  push final offset
674: JLE   3, 16(5)  push final offset
675: ST    0, 0(6)  push final offset
676: LDC   0, 3(5)  load integer 3
677: LDC   1, 0(5)  load 0 into AC2
678: SUB   0, 1, 0  compute negative number
679: LD    1, 0(6)  pop final offset
680: LDA   6, 1(6)  pop final offset
681: ST    0, 0(1)  store value into array static data
682: LDC   0, 1(5)  load integer 1
683: LDA   6, -1(6)  push array index
684: LDC   3, 88(5)  push array index
685: SUB   3, 6, 3  push array index
686: JLE   3, 16(5)  push array index
687: ST    0, 0(6)  push array index
688: LDC   0, 3(5)  load integer 3
689: LDA   6, -1(6)  push array index
690: LDC   3, 88(5)  push array index
691: SUB   3, 6, 3  push array index
692: JLE   3, 16(5)  push array index
693: ST    0, 0(6)  push array index
694: LDC   0, 2(5)  push array dimension
695: LDC   0, 0(5)  load 0 to ac
696: LD    1, 0(6)  pop index
697: LDA   6, 1(6)  pop index
698: JLT   1, 6(5)  jump if index less than 0
699: LDC   3, 4(5)  load array size
700: SUB   3, 3, 1  sub max size with index
701: JLE   3, 6(5)  jump if index greater than size - 1
702: LDC   2, 2(5)  load size of subarray
703: MUL   1, 1, 2  compute 0 dim
704: ADD   0, 0, 1  add result
705: LD    1, 0(6)  pop index
706: LDA   6, 1(6)  pop index
707: JLT   1, 6(5)  jump if index less than 0
708: LDC   3, 2(5)  load array size
709: SUB   3, 3, 1  sub max size with index
710: JLE   3, 6(5)  jump if index greater than size - 1
711: LDC   2, 1(5)  load size of subarray
712: MUL   1, 1, 2  compute 1 dim
713: ADD   0, 0, 1  add result
714: LD    1, 79(5)  load offset into ac2
715: ADD   0, 0, 1  compute final offset
716: LDA   6, -1(6)  push final offset
717: LDC   3, 88(5)  push final offset
718: SUB   3, 6, 3  push final offset
719: JLE   3, 16(5)  push final offset
720: ST    0, 0(6)  push final offset
721: LDC   0, 4(5)  load integer 4
722: LDC   1, 0(5)  load 0 into AC2
723: SUB   0, 1, 0  compute negative number
724: LD    1, 0(6)  pop final offset
725: LDA   6, 1(6)  pop final offset
726: ST    0, 0(1)  store value into array static data
727: LDA   6, -1(6)  push fp
728: LDC   3, 88(5)  push fp
729: SUB   3, 6, 3  push fp
730: JLE   3, 16(5)  push fp
731: ST    4, 0(6)  push fp
732: LDA   4, 0(6)  set fp to sp
739: LDC   0, 2(5)  push array dimension
740: LDC   0, 0(5)  load 0 to ac
741: LD    1, 79(5)  load global offset into ac2
742: ADD   0, 0, 1  compute final offset
743: LDA   6, -1(6)  push array parameter
744: LDC   3, 88(5)  push array parameter
745: SUB   3, 6, 3  push array parameter
746: JLE   3, 16(5)  push array parameter
747: ST    0, 0(6)  push array parameter
748: LDA   6, 0(6)  preserve space for local vars
749: LDA   7, 66(5)  jump to procedure call
733: LDC   0, 750(5)  load return address into ac
734: LDA   6, -1(6)  push return address
735: LDC   3, 88(5)  push return address
736: SUB   3, 6, 3  push return address
737: JLE   3, 16(5)  push return address
738: ST    0, 0(6)  push return address
750: HALT  0, 0, 0  program ends
