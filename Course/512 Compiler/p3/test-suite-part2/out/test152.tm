.DATA    2
.SDATA   "Hi"
.DATA    3
.SDATA   "+10"
.DATA    1
.SDATA   "b"
.DATA    1
.SDATA   "5"
.DATA    18
.SDATA   "array index error!"
.DATA    5
.SDATA   "There"
.DATA    0
.SDATA   ""
.DATA    14
.SDATA   "should not see"
.DATA    15
.SDATA   "m > 4 || m <= 2"
.DATA    5
.SDATA   "first"
.DATA    1
.SDATA   " "
.DATA    3
.SDATA   "abc"
.DATA    5
.SDATA   "third"
.DATA    5
.SDATA   "inner"
.DATA    13
.SDATA   "out of memory"
.DATA    8
.SDATA   "Hi there"
.DATA    3
.SDATA   "10 "
.DATA    4
.SDATA   "Done"
.DATA    3
.SDATA   "Hi "
.DATA    6
.SDATA   "fourth"
.DATA    5
.SDATA   " -10 "
.DATA    1
.SDATA   "a"
.DATA    1
.SDATA   "-"
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
.DATA    8
.SDATA   "Hi There"
.DATA    3
.SDATA   "end"
.DATA    6
.SDATA   "second"
0: LDC   0, 209(5)  store array start address: 209
1: LDC   1, 208(5)  store array offset into ac2: 208
2: ST    0, 0(1)  store array offset
3: LDC   0, 212(5)  store array start address: 212
4: LDC   1, 211(5)  store array offset into ac2: 211
5: ST    0, 0(1)  store array offset
6: LDC   0, 214(5)  store array start address: 214
7: LDC   1, 213(5)  store array offset into ac2: 213
8: ST    0, 0(1)  store array offset
9: LDC   0, 221(5)  store array start address: 221
10: LDC   1, 220(5)  store array offset into ac2: 220
11: ST    0, 0(1)  store array offset
12: LD    6, 0(5)  save stack pointer
13: LD    4, 0(5)  save frame pointer
15: LDC   0, 12(5)  load array error str address
16: LD    1, 0(0)  load str length into ac2
17: JEQ   1, 5(7)  output nothing when empty
18: LDA   0, 1(0)  increase offset
19: LD    2, 0(0)  load char into ac3
20: OUTC   2, 2, 2  write char
21: LDA   1, -1(1)  decrease length of remaining string in ac2
22: JNE   1, -5(7)  continue print if not yet finish
23: OUTNL 0, 0, 0  emit newline
24: HALT  0, 0, 0  stop because of array error
25: LDC   0, 93(5)  load out of memory str address
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
37: LDC   2, 0(5)  load 0 as initial result
38: LDA   6, -1(6)  push 0
39: LDC   3, 245(5)  push 0
40: SUB   3, 6, 3  push 0
41: JLE   3, 25(5)  push 0
42: ST    2, 0(6)  push 0
43: LD    2, 0(6)  pop result into AC3
44: LDA   6, 1(6)  pop result into AC3
45: LDC   3, 10(5)  load 10 into ac4
46: MUL   2, 2, 3  mul result with 10
47: LDA   6, -1(6)  push result
48: LDC   3, 245(5)  push result
49: SUB   3, 6, 3  push result
50: JLE   3, 25(5)  push result
51: ST    2, 0(6)  push result
52: LDA   0, 1(0)  increase str offset
53: LD    2, 0(0)  load char
54: LDC   3, 48(5)  load 48 into ac4
55: SUB   2, 2, 3  compute int value
56: LD    3, 0(6)  pop result into AC4
57: LDA   6, 1(6)  pop result into AC4
58: ADD   2, 2, 3  compute result
59: LDA   6, -1(6)  push result
60: LDC   3, 245(5)  push result
61: SUB   3, 6, 3  push result
62: JLE   3, 25(5)  push result
63: ST    2, 0(6)  push result
64: LDA   1, -1(1)  decrease str length
65: JNE   1, 43(5)  continue if str length
66: LD    0, 0(6)  pop result
67: LDA   6, 1(6)  pop result
68: ST    0, -2(4)  save to return value
69: LD    0, -2(4)  load int/bool/string offset as return value
70: LD    1, -1(4)  load return address
71: LDA   6, 0(4)  change sp to fp + 1
72: LD    4, 0(6)  restore fp
73: LDA   6, 1(6)  restore fp
74: LDA   7, 0(1)  jump to the return address
75: LDC   0, 0(5)  load integer 0
76: LDA   6, -1(6)  push array index
77: LDC   3, 245(5)  push array index
78: SUB   3, 6, 3  push array index
79: JLE   3, 25(5)  push array index
80: ST    0, 0(6)  push array index
81: LDC   0, 1(5)  load integer 1
82: LDA   6, -1(6)  push array index
83: LDC   3, 245(5)  push array index
84: SUB   3, 6, 3  push array index
85: JLE   3, 25(5)  push array index
86: ST    0, 0(6)  push array index
87: LDC   0, 2(5)  load integer 2
88: LDA   6, -1(6)  push array index
89: LDC   3, 245(5)  push array index
90: SUB   3, 6, 3  push array index
91: JLE   3, 25(5)  push array index
92: ST    0, 0(6)  push array index
93: LDC   0, 3(5)  load integer 3
94: LDA   6, -1(6)  push array index
95: LDC   3, 245(5)  push array index
96: SUB   3, 6, 3  push array index
97: JLE   3, 25(5)  push array index
98: ST    0, 0(6)  push array index
99: LDC   0, 4(5)  push array dimension
100: LDC   0, 0(5)  load 0 to ac
101: LD    1, 0(6)  pop index
102: LDA   6, 1(6)  pop index
103: JLT   1, 15(5)  jump if index less than 0
104: LDC   3, 4(5)  load array size
105: SUB   3, 3, 1  sub max size with index
106: JLE   3, 15(5)  jump if index greater than size - 1
107: LDC   2, 6(5)  load size of subarray
108: MUL   1, 1, 2  compute 0 dim
109: ADD   0, 0, 1  add result
110: LD    1, 0(6)  pop index
111: LDA   6, 1(6)  pop index
112: JLT   1, 15(5)  jump if index less than 0
113: LDC   3, 3(5)  load array size
114: SUB   3, 3, 1  sub max size with index
115: JLE   3, 15(5)  jump if index greater than size - 1
116: LDC   2, 2(5)  load size of subarray
117: MUL   1, 1, 2  compute 1 dim
118: ADD   0, 0, 1  add result
119: LD    1, 0(6)  pop index
120: LDA   6, 1(6)  pop index
121: JLT   1, 15(5)  jump if index less than 0
122: LDC   3, 2(5)  load array size
123: SUB   3, 3, 1  sub max size with index
124: JLE   3, 15(5)  jump if index greater than size - 1
125: LDC   2, 1(5)  load size of subarray
126: MUL   1, 1, 2  compute 2 dim
127: ADD   0, 0, 1  add result
128: LD    1, 0(6)  pop index
129: LDA   6, 1(6)  pop index
130: JLT   1, 15(5)  jump if index less than 0
131: LDC   3, 1(5)  load array size
132: SUB   3, 3, 1  sub max size with index
133: JLE   3, 15(5)  jump if index greater than size - 1
134: LDC   2, 1(5)  load size of subarray
135: MUL   1, 1, 2  compute 3 dim
136: ADD   0, 0, 1  add result
137: LDA   1, 0(4)  load fp into ac2
138: LD    1, -2(1)  load local offset into ac2
139: ADD   0, 0, 1  compute final offset
140: LD    0, 0(0)  load data from array
141: OUT   0, 0, 0  write integer
142: OUTNL 0, 0, 0  write new line
143: LD    1, -1(4)  load return address
144: LDA   6, 0(4)  change sp to fp + 1
145: LD    4, 0(6)  restore fp
146: LDA   6, 1(6)  restore fp
147: LDA   7, 0(1)  jump to the return address
148: LDC   0, 0(5)  load integer 0
149: LDA   6, -1(6)  push array index
150: LDC   3, 245(5)  push array index
151: SUB   3, 6, 3  push array index
152: JLE   3, 25(5)  push array index
153: ST    0, 0(6)  push array index
154: LDC   0, 1(5)  load integer 1
155: LDA   6, -1(6)  push array index
156: LDC   3, 245(5)  push array index
157: SUB   3, 6, 3  push array index
158: JLE   3, 25(5)  push array index
159: ST    0, 0(6)  push array index
160: LDC   0, 2(5)  load integer 2
161: LDA   6, -1(6)  push array index
162: LDC   3, 245(5)  push array index
163: SUB   3, 6, 3  push array index
164: JLE   3, 25(5)  push array index
165: ST    0, 0(6)  push array index
166: LDC   0, 3(5)  push array dimension
167: LDC   0, 0(5)  load 0 to ac
168: LD    1, 0(6)  pop index
169: LDA   6, 1(6)  pop index
170: JLT   1, 15(5)  jump if index less than 0
171: LDC   3, 3(5)  load array size
172: SUB   3, 3, 1  sub max size with index
173: JLE   3, 15(5)  jump if index greater than size - 1
174: LDC   2, 2(5)  load size of subarray
175: MUL   1, 1, 2  compute 0 dim
176: ADD   0, 0, 1  add result
177: LD    1, 0(6)  pop index
178: LDA   6, 1(6)  pop index
179: JLT   1, 15(5)  jump if index less than 0
180: LDC   3, 2(5)  load array size
181: SUB   3, 3, 1  sub max size with index
182: JLE   3, 15(5)  jump if index greater than size - 1
183: LDC   2, 1(5)  load size of subarray
184: MUL   1, 1, 2  compute 1 dim
185: ADD   0, 0, 1  add result
186: LD    1, 0(6)  pop index
187: LDA   6, 1(6)  pop index
188: JLT   1, 15(5)  jump if index less than 0
189: LDC   3, 1(5)  load array size
190: SUB   3, 3, 1  sub max size with index
191: JLE   3, 15(5)  jump if index greater than size - 1
192: LDC   2, 1(5)  load size of subarray
193: MUL   1, 1, 2  compute 2 dim
194: ADD   0, 0, 1  add result
195: LDA   1, 0(4)  load fp into ac2
196: LD    1, -2(1)  load local offset into ac2
197: ADD   0, 0, 1  compute final offset
198: LD    0, 0(0)  load data from array
199: OUT   0, 0, 0  write integer
200: OUTNL 0, 0, 0  write new line
201: LD    1, -1(4)  load return address
202: LDA   6, 0(4)  change sp to fp + 1
203: LD    4, 0(6)  restore fp
204: LDA   6, 1(6)  restore fp
205: LDA   7, 0(1)  jump to the return address
206: LDC   0, 0(5)  load integer 0
207: LDA   6, -1(6)  push array index
208: LDC   3, 245(5)  push array index
209: SUB   3, 6, 3  push array index
210: JLE   3, 25(5)  push array index
211: ST    0, 0(6)  push array index
212: LDC   0, 1(5)  load integer 1
213: LDA   6, -1(6)  push array index
214: LDC   3, 245(5)  push array index
215: SUB   3, 6, 3  push array index
216: JLE   3, 25(5)  push array index
217: ST    0, 0(6)  push array index
218: LDC   0, 2(5)  push array dimension
219: LDC   0, 0(5)  load 0 to ac
220: LD    1, 0(6)  pop index
221: LDA   6, 1(6)  pop index
222: JLT   1, 15(5)  jump if index less than 0
223: LDC   3, 2(5)  load array size
224: SUB   3, 3, 1  sub max size with index
225: JLE   3, 15(5)  jump if index greater than size - 1
226: LDC   2, 1(5)  load size of subarray
227: MUL   1, 1, 2  compute 0 dim
228: ADD   0, 0, 1  add result
229: LD    1, 0(6)  pop index
230: LDA   6, 1(6)  pop index
231: JLT   1, 15(5)  jump if index less than 0
232: LDC   3, 1(5)  load array size
233: SUB   3, 3, 1  sub max size with index
234: JLE   3, 15(5)  jump if index greater than size - 1
235: LDC   2, 1(5)  load size of subarray
236: MUL   1, 1, 2  compute 1 dim
237: ADD   0, 0, 1  add result
238: LDA   1, 0(4)  load fp into ac2
239: LD    1, -2(1)  load local offset into ac2
240: ADD   0, 0, 1  compute final offset
241: LD    0, 0(0)  load data from array
242: OUT   0, 0, 0  write integer
243: OUTNL 0, 0, 0  write new line
244: LD    1, -1(4)  load return address
245: LDA   6, 0(4)  change sp to fp + 1
246: LD    4, 0(6)  restore fp
247: LDA   6, 1(6)  restore fp
248: LDA   7, 0(1)  jump to the return address
249: LDC   0, 0(5)  load integer 0
250: LDA   6, -1(6)  push array index
251: LDC   3, 245(5)  push array index
252: SUB   3, 6, 3  push array index
253: JLE   3, 25(5)  push array index
254: ST    0, 0(6)  push array index
255: LDC   0, 1(5)  push array dimension
256: LDC   0, 0(5)  load 0 to ac
257: LD    1, 0(6)  pop index
258: LDA   6, 1(6)  pop index
259: JLT   1, 15(5)  jump if index less than 0
260: LDC   3, 1(5)  load array size
261: SUB   3, 3, 1  sub max size with index
262: JLE   3, 15(5)  jump if index greater than size - 1
263: LDC   2, 1(5)  load size of subarray
264: MUL   1, 1, 2  compute 0 dim
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
14: LDA   7, 277(5)  jump to start of the program
277: LDC   0, 0(5)  load integer 0
278: LDA   6, -1(6)  push array index
279: LDC   3, 245(5)  push array index
280: SUB   3, 6, 3  push array index
281: JLE   3, 25(5)  push array index
282: ST    0, 0(6)  push array index
283: LDC   0, 1(5)  load integer 1
284: LDA   6, -1(6)  push array index
285: LDC   3, 245(5)  push array index
286: SUB   3, 6, 3  push array index
287: JLE   3, 25(5)  push array index
288: ST    0, 0(6)  push array index
289: LDC   0, 2(5)  load integer 2
290: LDA   6, -1(6)  push array index
291: LDC   3, 245(5)  push array index
292: SUB   3, 6, 3  push array index
293: JLE   3, 25(5)  push array index
294: ST    0, 0(6)  push array index
295: LDC   0, 3(5)  load integer 3
296: LDA   6, -1(6)  push array index
297: LDC   3, 245(5)  push array index
298: SUB   3, 6, 3  push array index
299: JLE   3, 25(5)  push array index
300: ST    0, 0(6)  push array index
301: LDC   0, 4(5)  push array dimension
302: LDC   0, 0(5)  load 0 to ac
303: LD    1, 0(6)  pop index
304: LDA   6, 1(6)  pop index
305: JLT   1, 15(5)  jump if index less than 0
306: LDC   3, 4(5)  load array size
307: SUB   3, 3, 1  sub max size with index
308: JLE   3, 15(5)  jump if index greater than size - 1
309: LDC   2, 6(5)  load size of subarray
310: MUL   1, 1, 2  compute 0 dim
311: ADD   0, 0, 1  add result
312: LD    1, 0(6)  pop index
313: LDA   6, 1(6)  pop index
314: JLT   1, 15(5)  jump if index less than 0
315: LDC   3, 3(5)  load array size
316: SUB   3, 3, 1  sub max size with index
317: JLE   3, 15(5)  jump if index greater than size - 1
318: LDC   2, 2(5)  load size of subarray
319: MUL   1, 1, 2  compute 1 dim
320: ADD   0, 0, 1  add result
321: LD    1, 0(6)  pop index
322: LDA   6, 1(6)  pop index
323: JLT   1, 15(5)  jump if index less than 0
324: LDC   3, 2(5)  load array size
325: SUB   3, 3, 1  sub max size with index
326: JLE   3, 15(5)  jump if index greater than size - 1
327: LDC   2, 1(5)  load size of subarray
328: MUL   1, 1, 2  compute 2 dim
329: ADD   0, 0, 1  add result
330: LD    1, 0(6)  pop index
331: LDA   6, 1(6)  pop index
332: JLT   1, 15(5)  jump if index less than 0
333: LDC   3, 1(5)  load array size
334: SUB   3, 3, 1  sub max size with index
335: JLE   3, 15(5)  jump if index greater than size - 1
336: LDC   2, 1(5)  load size of subarray
337: MUL   1, 1, 2  compute 3 dim
338: ADD   0, 0, 1  add result
339: LD    1, 220(5)  load offset into ac2
340: ADD   0, 0, 1  compute final offset
341: LDA   6, -1(6)  push final offset
342: LDC   3, 245(5)  push final offset
343: SUB   3, 6, 3  push final offset
344: JLE   3, 25(5)  push final offset
345: ST    0, 0(6)  push final offset
346: LDC   0, 17(5)  load integer 17
347: LD    1, 0(6)  pop final offset
348: LDA   6, 1(6)  pop final offset
349: ST    0, 0(1)  store value into array static data
350: LDC   0, 0(5)  load integer 0
351: LDA   6, -1(6)  push array index
352: LDC   3, 245(5)  push array index
353: SUB   3, 6, 3  push array index
354: JLE   3, 25(5)  push array index
355: ST    0, 0(6)  push array index
356: LDC   0, 1(5)  load integer 1
357: LDA   6, -1(6)  push array index
358: LDC   3, 245(5)  push array index
359: SUB   3, 6, 3  push array index
360: JLE   3, 25(5)  push array index
361: ST    0, 0(6)  push array index
362: LDC   0, 2(5)  load integer 2
363: LDA   6, -1(6)  push array index
364: LDC   3, 245(5)  push array index
365: SUB   3, 6, 3  push array index
366: JLE   3, 25(5)  push array index
367: ST    0, 0(6)  push array index
368: LDC   0, 3(5)  push array dimension
369: LDC   0, 0(5)  load 0 to ac
370: LD    1, 0(6)  pop index
371: LDA   6, 1(6)  pop index
372: JLT   1, 15(5)  jump if index less than 0
373: LDC   3, 3(5)  load array size
374: SUB   3, 3, 1  sub max size with index
375: JLE   3, 15(5)  jump if index greater than size - 1
376: LDC   2, 2(5)  load size of subarray
377: MUL   1, 1, 2  compute 0 dim
378: ADD   0, 0, 1  add result
379: LD    1, 0(6)  pop index
380: LDA   6, 1(6)  pop index
381: JLT   1, 15(5)  jump if index less than 0
382: LDC   3, 2(5)  load array size
383: SUB   3, 3, 1  sub max size with index
384: JLE   3, 15(5)  jump if index greater than size - 1
385: LDC   2, 1(5)  load size of subarray
386: MUL   1, 1, 2  compute 1 dim
387: ADD   0, 0, 1  add result
388: LD    1, 0(6)  pop index
389: LDA   6, 1(6)  pop index
390: JLT   1, 15(5)  jump if index less than 0
391: LDC   3, 1(5)  load array size
392: SUB   3, 3, 1  sub max size with index
393: JLE   3, 15(5)  jump if index greater than size - 1
394: LDC   2, 1(5)  load size of subarray
395: MUL   1, 1, 2  compute 2 dim
396: ADD   0, 0, 1  add result
397: LD    1, 213(5)  load offset into ac2
398: ADD   0, 0, 1  compute final offset
399: LDA   6, -1(6)  push final offset
400: LDC   3, 245(5)  push final offset
401: SUB   3, 6, 3  push final offset
402: JLE   3, 25(5)  push final offset
403: ST    0, 0(6)  push final offset
404: LDC   0, 16(5)  load integer 16
405: LD    1, 0(6)  pop final offset
406: LDA   6, 1(6)  pop final offset
407: ST    0, 0(1)  store value into array static data
408: LDC   0, 0(5)  load integer 0
409: LDA   6, -1(6)  push array index
410: LDC   3, 245(5)  push array index
411: SUB   3, 6, 3  push array index
412: JLE   3, 25(5)  push array index
413: ST    0, 0(6)  push array index
414: LDC   0, 1(5)  load integer 1
415: LDA   6, -1(6)  push array index
416: LDC   3, 245(5)  push array index
417: SUB   3, 6, 3  push array index
418: JLE   3, 25(5)  push array index
419: ST    0, 0(6)  push array index
420: LDC   0, 2(5)  push array dimension
421: LDC   0, 0(5)  load 0 to ac
422: LD    1, 0(6)  pop index
423: LDA   6, 1(6)  pop index
424: JLT   1, 15(5)  jump if index less than 0
425: LDC   3, 2(5)  load array size
426: SUB   3, 3, 1  sub max size with index
427: JLE   3, 15(5)  jump if index greater than size - 1
428: LDC   2, 1(5)  load size of subarray
429: MUL   1, 1, 2  compute 0 dim
430: ADD   0, 0, 1  add result
431: LD    1, 0(6)  pop index
432: LDA   6, 1(6)  pop index
433: JLT   1, 15(5)  jump if index less than 0
434: LDC   3, 1(5)  load array size
435: SUB   3, 3, 1  sub max size with index
436: JLE   3, 15(5)  jump if index greater than size - 1
437: LDC   2, 1(5)  load size of subarray
438: MUL   1, 1, 2  compute 1 dim
439: ADD   0, 0, 1  add result
440: LD    1, 208(5)  load offset into ac2
441: ADD   0, 0, 1  compute final offset
442: LDA   6, -1(6)  push final offset
443: LDC   3, 245(5)  push final offset
444: SUB   3, 6, 3  push final offset
445: JLE   3, 25(5)  push final offset
446: ST    0, 0(6)  push final offset
447: LDC   0, 15(5)  load integer 15
448: LD    1, 0(6)  pop final offset
449: LDA   6, 1(6)  pop final offset
450: ST    0, 0(1)  store value into array static data
451: LDC   0, 0(5)  load integer 0
452: LDA   6, -1(6)  push array index
453: LDC   3, 245(5)  push array index
454: SUB   3, 6, 3  push array index
455: JLE   3, 25(5)  push array index
456: ST    0, 0(6)  push array index
457: LDC   0, 1(5)  push array dimension
458: LDC   0, 0(5)  load 0 to ac
459: LD    1, 0(6)  pop index
460: LDA   6, 1(6)  pop index
461: JLT   1, 15(5)  jump if index less than 0
462: LDC   3, 1(5)  load array size
463: SUB   3, 3, 1  sub max size with index
464: JLE   3, 15(5)  jump if index greater than size - 1
465: LDC   2, 1(5)  load size of subarray
466: MUL   1, 1, 2  compute 0 dim
467: ADD   0, 0, 1  add result
468: LD    1, 211(5)  load offset into ac2
469: ADD   0, 0, 1  compute final offset
470: LDA   6, -1(6)  push final offset
471: LDC   3, 245(5)  push final offset
472: SUB   3, 6, 3  push final offset
473: JLE   3, 25(5)  push final offset
474: ST    0, 0(6)  push final offset
475: LDC   0, 14(5)  load integer 14
476: LD    1, 0(6)  pop final offset
477: LDA   6, 1(6)  pop final offset
478: ST    0, 0(1)  store value into array static data
479: LDA   6, -1(6)  push fp
480: LDC   3, 245(5)  push fp
481: SUB   3, 6, 3  push fp
482: JLE   3, 25(5)  push fp
483: ST    4, 0(6)  push fp
484: LDA   4, 0(6)  set fp to sp
491: LDC   0, 4(5)  push array dimension
492: LDC   0, 0(5)  load 0 to ac
493: LD    1, 220(5)  load global offset into ac2
494: ADD   0, 0, 1  compute final offset
495: LDA   6, -1(6)  push array parameter
496: LDC   3, 245(5)  push array parameter
497: SUB   3, 6, 3  push array parameter
498: JLE   3, 25(5)  push array parameter
499: ST    0, 0(6)  push array parameter
500: LDA   6, 0(6)  preserve space for local vars
501: LDA   7, 75(5)  jump to procedure call
485: LDC   0, 502(5)  load return address into ac
486: LDA   6, -1(6)  push return address
487: LDC   3, 245(5)  push return address
488: SUB   3, 6, 3  push return address
489: JLE   3, 25(5)  push return address
490: ST    0, 0(6)  push return address
502: LDA   6, -1(6)  push fp
503: LDC   3, 245(5)  push fp
504: SUB   3, 6, 3  push fp
505: JLE   3, 25(5)  push fp
506: ST    4, 0(6)  push fp
507: LDA   4, 0(6)  set fp to sp
514: LDC   0, 3(5)  load integer 3
515: LDA   6, -1(6)  push array index
516: LDC   3, 245(5)  push array index
517: SUB   3, 6, 3  push array index
518: JLE   3, 25(5)  push array index
519: ST    0, 0(6)  push array index
520: LDC   0, 4(5)  push array dimension
521: LDC   0, 0(5)  load 0 to ac
522: LD    1, 0(6)  pop index
523: LDA   6, 1(6)  pop index
524: JLT   1, 15(5)  jump if index less than 0
525: LDC   3, 4(5)  load array size
526: SUB   3, 3, 1  sub max size with index
527: JLE   3, 15(5)  jump if index greater than size - 1
528: LDC   2, 6(5)  load size of subarray
529: MUL   1, 1, 2  compute 0 dim
530: ADD   0, 0, 1  add result
531: LD    1, 220(5)  load global offset into ac2
532: ADD   0, 0, 1  compute final offset
533: LDA   6, -1(6)  push array parameter
534: LDC   3, 245(5)  push array parameter
535: SUB   3, 6, 3  push array parameter
536: JLE   3, 25(5)  push array parameter
537: ST    0, 0(6)  push array parameter
538: LDA   6, 0(6)  preserve space for local vars
539: LDA   7, 148(5)  jump to procedure call
508: LDC   0, 540(5)  load return address into ac
509: LDA   6, -1(6)  push return address
510: LDC   3, 245(5)  push return address
511: SUB   3, 6, 3  push return address
512: JLE   3, 25(5)  push return address
513: ST    0, 0(6)  push return address
540: LDA   6, -1(6)  push fp
541: LDC   3, 245(5)  push fp
542: SUB   3, 6, 3  push fp
543: JLE   3, 25(5)  push fp
544: ST    4, 0(6)  push fp
545: LDA   4, 0(6)  set fp to sp
552: LDC   0, 3(5)  push array dimension
553: LDC   0, 0(5)  load 0 to ac
554: LD    1, 213(5)  load global offset into ac2
555: ADD   0, 0, 1  compute final offset
556: LDA   6, -1(6)  push array parameter
557: LDC   3, 245(5)  push array parameter
558: SUB   3, 6, 3  push array parameter
559: JLE   3, 25(5)  push array parameter
560: ST    0, 0(6)  push array parameter
561: LDA   6, 0(6)  preserve space for local vars
562: LDA   7, 148(5)  jump to procedure call
546: LDC   0, 563(5)  load return address into ac
547: LDA   6, -1(6)  push return address
548: LDC   3, 245(5)  push return address
549: SUB   3, 6, 3  push return address
550: JLE   3, 25(5)  push return address
551: ST    0, 0(6)  push return address
563: LDA   6, -1(6)  push fp
564: LDC   3, 245(5)  push fp
565: SUB   3, 6, 3  push fp
566: JLE   3, 25(5)  push fp
567: ST    4, 0(6)  push fp
568: LDA   4, 0(6)  set fp to sp
575: LDC   0, 2(5)  load integer 2
576: LDA   6, -1(6)  push array index
577: LDC   3, 245(5)  push array index
578: SUB   3, 6, 3  push array index
579: JLE   3, 25(5)  push array index
580: ST    0, 0(6)  push array index
581: LDC   0, 3(5)  load integer 3
582: LDA   6, -1(6)  push array index
583: LDC   3, 245(5)  push array index
584: SUB   3, 6, 3  push array index
585: JLE   3, 25(5)  push array index
586: ST    0, 0(6)  push array index
587: LDC   0, 4(5)  push array dimension
588: LDC   0, 0(5)  load 0 to ac
589: LD    1, 0(6)  pop index
590: LDA   6, 1(6)  pop index
591: JLT   1, 15(5)  jump if index less than 0
592: LDC   3, 4(5)  load array size
593: SUB   3, 3, 1  sub max size with index
594: JLE   3, 15(5)  jump if index greater than size - 1
595: LDC   2, 6(5)  load size of subarray
596: MUL   1, 1, 2  compute 0 dim
597: ADD   0, 0, 1  add result
598: LD    1, 0(6)  pop index
599: LDA   6, 1(6)  pop index
600: JLT   1, 15(5)  jump if index less than 0
601: LDC   3, 3(5)  load array size
602: SUB   3, 3, 1  sub max size with index
603: JLE   3, 15(5)  jump if index greater than size - 1
604: LDC   2, 2(5)  load size of subarray
605: MUL   1, 1, 2  compute 1 dim
606: ADD   0, 0, 1  add result
607: LD    1, 220(5)  load global offset into ac2
608: ADD   0, 0, 1  compute final offset
609: LDA   6, -1(6)  push array parameter
610: LDC   3, 245(5)  push array parameter
611: SUB   3, 6, 3  push array parameter
612: JLE   3, 25(5)  push array parameter
613: ST    0, 0(6)  push array parameter
614: LDA   6, 0(6)  preserve space for local vars
615: LDA   7, 206(5)  jump to procedure call
569: LDC   0, 616(5)  load return address into ac
570: LDA   6, -1(6)  push return address
571: LDC   3, 245(5)  push return address
572: SUB   3, 6, 3  push return address
573: JLE   3, 25(5)  push return address
574: ST    0, 0(6)  push return address
616: LDA   6, -1(6)  push fp
617: LDC   3, 245(5)  push fp
618: SUB   3, 6, 3  push fp
619: JLE   3, 25(5)  push fp
620: ST    4, 0(6)  push fp
621: LDA   4, 0(6)  set fp to sp
628: LDC   0, 2(5)  load integer 2
629: LDA   6, -1(6)  push array index
630: LDC   3, 245(5)  push array index
631: SUB   3, 6, 3  push array index
632: JLE   3, 25(5)  push array index
633: ST    0, 0(6)  push array index
634: LDC   0, 3(5)  push array dimension
635: LDC   0, 0(5)  load 0 to ac
636: LD    1, 0(6)  pop index
637: LDA   6, 1(6)  pop index
638: JLT   1, 15(5)  jump if index less than 0
639: LDC   3, 3(5)  load array size
640: SUB   3, 3, 1  sub max size with index
641: JLE   3, 15(5)  jump if index greater than size - 1
642: LDC   2, 2(5)  load size of subarray
643: MUL   1, 1, 2  compute 0 dim
644: ADD   0, 0, 1  add result
645: LD    1, 213(5)  load global offset into ac2
646: ADD   0, 0, 1  compute final offset
647: LDA   6, -1(6)  push array parameter
648: LDC   3, 245(5)  push array parameter
649: SUB   3, 6, 3  push array parameter
650: JLE   3, 25(5)  push array parameter
651: ST    0, 0(6)  push array parameter
652: LDA   6, 0(6)  preserve space for local vars
653: LDA   7, 206(5)  jump to procedure call
622: LDC   0, 654(5)  load return address into ac
623: LDA   6, -1(6)  push return address
624: LDC   3, 245(5)  push return address
625: SUB   3, 6, 3  push return address
626: JLE   3, 25(5)  push return address
627: ST    0, 0(6)  push return address
654: LDA   6, -1(6)  push fp
655: LDC   3, 245(5)  push fp
656: SUB   3, 6, 3  push fp
657: JLE   3, 25(5)  push fp
658: ST    4, 0(6)  push fp
659: LDA   4, 0(6)  set fp to sp
666: LDC   0, 2(5)  push array dimension
667: LDC   0, 0(5)  load 0 to ac
668: LD    1, 208(5)  load global offset into ac2
669: ADD   0, 0, 1  compute final offset
670: LDA   6, -1(6)  push array parameter
671: LDC   3, 245(5)  push array parameter
672: SUB   3, 6, 3  push array parameter
673: JLE   3, 25(5)  push array parameter
674: ST    0, 0(6)  push array parameter
675: LDA   6, 0(6)  preserve space for local vars
676: LDA   7, 206(5)  jump to procedure call
660: LDC   0, 677(5)  load return address into ac
661: LDA   6, -1(6)  push return address
662: LDC   3, 245(5)  push return address
663: SUB   3, 6, 3  push return address
664: JLE   3, 25(5)  push return address
665: ST    0, 0(6)  push return address
677: LDA   6, -1(6)  push fp
678: LDC   3, 245(5)  push fp
679: SUB   3, 6, 3  push fp
680: JLE   3, 25(5)  push fp
681: ST    4, 0(6)  push fp
682: LDA   4, 0(6)  set fp to sp
689: LDC   0, 1(5)  load integer 1
690: LDA   6, -1(6)  push array index
691: LDC   3, 245(5)  push array index
692: SUB   3, 6, 3  push array index
693: JLE   3, 25(5)  push array index
694: ST    0, 0(6)  push array index
695: LDC   0, 2(5)  load integer 2
696: LDA   6, -1(6)  push array index
697: LDC   3, 245(5)  push array index
698: SUB   3, 6, 3  push array index
699: JLE   3, 25(5)  push array index
700: ST    0, 0(6)  push array index
701: LDC   0, 3(5)  load integer 3
702: LDA   6, -1(6)  push array index
703: LDC   3, 245(5)  push array index
704: SUB   3, 6, 3  push array index
705: JLE   3, 25(5)  push array index
706: ST    0, 0(6)  push array index
707: LDC   0, 4(5)  push array dimension
708: LDC   0, 0(5)  load 0 to ac
709: LD    1, 0(6)  pop index
710: LDA   6, 1(6)  pop index
711: JLT   1, 15(5)  jump if index less than 0
712: LDC   3, 4(5)  load array size
713: SUB   3, 3, 1  sub max size with index
714: JLE   3, 15(5)  jump if index greater than size - 1
715: LDC   2, 6(5)  load size of subarray
716: MUL   1, 1, 2  compute 0 dim
717: ADD   0, 0, 1  add result
718: LD    1, 0(6)  pop index
719: LDA   6, 1(6)  pop index
720: JLT   1, 15(5)  jump if index less than 0
721: LDC   3, 3(5)  load array size
722: SUB   3, 3, 1  sub max size with index
723: JLE   3, 15(5)  jump if index greater than size - 1
724: LDC   2, 2(5)  load size of subarray
725: MUL   1, 1, 2  compute 1 dim
726: ADD   0, 0, 1  add result
727: LD    1, 0(6)  pop index
728: LDA   6, 1(6)  pop index
729: JLT   1, 15(5)  jump if index less than 0
730: LDC   3, 2(5)  load array size
731: SUB   3, 3, 1  sub max size with index
732: JLE   3, 15(5)  jump if index greater than size - 1
733: LDC   2, 1(5)  load size of subarray
734: MUL   1, 1, 2  compute 2 dim
735: ADD   0, 0, 1  add result
736: LD    1, 220(5)  load global offset into ac2
737: ADD   0, 0, 1  compute final offset
738: LDA   6, -1(6)  push array parameter
739: LDC   3, 245(5)  push array parameter
740: SUB   3, 6, 3  push array parameter
741: JLE   3, 25(5)  push array parameter
742: ST    0, 0(6)  push array parameter
743: LDA   6, 0(6)  preserve space for local vars
744: LDA   7, 249(5)  jump to procedure call
683: LDC   0, 745(5)  load return address into ac
684: LDA   6, -1(6)  push return address
685: LDC   3, 245(5)  push return address
686: SUB   3, 6, 3  push return address
687: JLE   3, 25(5)  push return address
688: ST    0, 0(6)  push return address
745: LDA   6, -1(6)  push fp
746: LDC   3, 245(5)  push fp
747: SUB   3, 6, 3  push fp
748: JLE   3, 25(5)  push fp
749: ST    4, 0(6)  push fp
750: LDA   4, 0(6)  set fp to sp
757: LDC   0, 1(5)  load integer 1
758: LDA   6, -1(6)  push array index
759: LDC   3, 245(5)  push array index
760: SUB   3, 6, 3  push array index
761: JLE   3, 25(5)  push array index
762: ST    0, 0(6)  push array index
763: LDC   0, 2(5)  load integer 2
764: LDA   6, -1(6)  push array index
765: LDC   3, 245(5)  push array index
766: SUB   3, 6, 3  push array index
767: JLE   3, 25(5)  push array index
768: ST    0, 0(6)  push array index
769: LDC   0, 3(5)  push array dimension
770: LDC   0, 0(5)  load 0 to ac
771: LD    1, 0(6)  pop index
772: LDA   6, 1(6)  pop index
773: JLT   1, 15(5)  jump if index less than 0
774: LDC   3, 3(5)  load array size
775: SUB   3, 3, 1  sub max size with index
776: JLE   3, 15(5)  jump if index greater than size - 1
777: LDC   2, 2(5)  load size of subarray
778: MUL   1, 1, 2  compute 0 dim
779: ADD   0, 0, 1  add result
780: LD    1, 0(6)  pop index
781: LDA   6, 1(6)  pop index
782: JLT   1, 15(5)  jump if index less than 0
783: LDC   3, 2(5)  load array size
784: SUB   3, 3, 1  sub max size with index
785: JLE   3, 15(5)  jump if index greater than size - 1
786: LDC   2, 1(5)  load size of subarray
787: MUL   1, 1, 2  compute 1 dim
788: ADD   0, 0, 1  add result
789: LD    1, 213(5)  load global offset into ac2
790: ADD   0, 0, 1  compute final offset
791: LDA   6, -1(6)  push array parameter
792: LDC   3, 245(5)  push array parameter
793: SUB   3, 6, 3  push array parameter
794: JLE   3, 25(5)  push array parameter
795: ST    0, 0(6)  push array parameter
796: LDA   6, 0(6)  preserve space for local vars
797: LDA   7, 249(5)  jump to procedure call
751: LDC   0, 798(5)  load return address into ac
752: LDA   6, -1(6)  push return address
753: LDC   3, 245(5)  push return address
754: SUB   3, 6, 3  push return address
755: JLE   3, 25(5)  push return address
756: ST    0, 0(6)  push return address
798: LDA   6, -1(6)  push fp
799: LDC   3, 245(5)  push fp
800: SUB   3, 6, 3  push fp
801: JLE   3, 25(5)  push fp
802: ST    4, 0(6)  push fp
803: LDA   4, 0(6)  set fp to sp
810: LDC   0, 1(5)  load integer 1
811: LDA   6, -1(6)  push array index
812: LDC   3, 245(5)  push array index
813: SUB   3, 6, 3  push array index
814: JLE   3, 25(5)  push array index
815: ST    0, 0(6)  push array index
816: LDC   0, 2(5)  push array dimension
817: LDC   0, 0(5)  load 0 to ac
818: LD    1, 0(6)  pop index
819: LDA   6, 1(6)  pop index
820: JLT   1, 15(5)  jump if index less than 0
821: LDC   3, 2(5)  load array size
822: SUB   3, 3, 1  sub max size with index
823: JLE   3, 15(5)  jump if index greater than size - 1
824: LDC   2, 1(5)  load size of subarray
825: MUL   1, 1, 2  compute 0 dim
826: ADD   0, 0, 1  add result
827: LD    1, 208(5)  load global offset into ac2
828: ADD   0, 0, 1  compute final offset
829: LDA   6, -1(6)  push array parameter
830: LDC   3, 245(5)  push array parameter
831: SUB   3, 6, 3  push array parameter
832: JLE   3, 25(5)  push array parameter
833: ST    0, 0(6)  push array parameter
834: LDA   6, 0(6)  preserve space for local vars
835: LDA   7, 249(5)  jump to procedure call
804: LDC   0, 836(5)  load return address into ac
805: LDA   6, -1(6)  push return address
806: LDC   3, 245(5)  push return address
807: SUB   3, 6, 3  push return address
808: JLE   3, 25(5)  push return address
809: ST    0, 0(6)  push return address
836: LDA   6, -1(6)  push fp
837: LDC   3, 245(5)  push fp
838: SUB   3, 6, 3  push fp
839: JLE   3, 25(5)  push fp
840: ST    4, 0(6)  push fp
841: LDA   4, 0(6)  set fp to sp
848: LDC   0, 1(5)  push array dimension
849: LDC   0, 0(5)  load 0 to ac
850: LD    1, 211(5)  load global offset into ac2
851: ADD   0, 0, 1  compute final offset
852: LDA   6, -1(6)  push array parameter
853: LDC   3, 245(5)  push array parameter
854: SUB   3, 6, 3  push array parameter
855: JLE   3, 25(5)  push array parameter
856: ST    0, 0(6)  push array parameter
857: LDA   6, 0(6)  preserve space for local vars
858: LDA   7, 249(5)  jump to procedure call
842: LDC   0, 859(5)  load return address into ac
843: LDA   6, -1(6)  push return address
844: LDC   3, 245(5)  push return address
845: SUB   3, 6, 3  push return address
846: JLE   3, 25(5)  push return address
847: ST    0, 0(6)  push return address
859: HALT  0, 0, 0  program ends
