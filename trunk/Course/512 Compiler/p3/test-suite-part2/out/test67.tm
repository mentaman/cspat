.DATA    3
.SDATA   "Hi "
.DATA    2
.SDATA   "Hi"
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
.DATA    15
.SDATA   "m <= 4 && m > 2"
.DATA    2
.SDATA   "50"
.DATA    3
.SDATA   "+50"
.DATA    18
.SDATA   "array index error!"
.DATA    5
.SDATA   "There"
.DATA    15
.SDATA   "m > 4 || m <= 2"
.DATA    9
.SDATA   "i am a[1]"
.DATA    9
.SDATA   "i am a[0]"
.DATA    13
.SDATA   "out of memory"
.DATA    9
.SDATA   "a[1] is: "
0: LDC   0, 187(5)  store array start address: 187
1: LDC   1, 186(5)  store array offset into ac2: 186
2: ST    0, 0(1)  store array offset
3: LD    6, 0(5)  save stack pointer
4: LD    4, 0(5)  save frame pointer
6: LDC   0, 101(5)  load array error str address
7: LD    1, 0(0)  load str length into ac2
8: JEQ   1, 5(7)  output nothing when empty
9: LDA   0, 1(0)  increase offset
10: LD    2, 0(0)  load char into ac3
11: OUTC   2, 2, 2  write char
12: LDA   1, -1(1)  decrease length of remaining string in ac2
13: JNE   1, -5(7)  continue print if not yet finish
14: OUTNL 0, 0, 0  emit newline
15: HALT  0, 0, 0  stop because of array error
16: LDC   0, 162(5)  load out of memory str address
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
28: LDA   0, 1(0)  increase str offset
29: LD    2, 0(0)  load char
30: LDC   3, 43(5)  load 43(+) into ac4
31: SUB   3, 2, 3  sub 43(+)
33: LDC   3, 45(5)  load 45(-) into ac4
34: SUB   3, 2, 3  sub 45(-)
36: LDA   1, -1(1)  decrease str length
37: LDC   2, -1(5)  load -1 into ac3
38: LDA   6, -1(6)  push -1
39: LDC   3, 195(5)  push -1
40: SUB   3, 6, 3  push -1
41: JLE   3, 16(5)  push -1
42: ST    2, 0(6)  push -1
35: JNE   3, 8(7)  jump if not equal '-'
44: LDA   0, -1(0)  move back str offset
45: LDA   1, 1(1)  increase str length
32: JEQ   3, 13(7)  jump if equal '+'
46: LDA   1, -1(1)  decrease str length
47: LDC   2, 1(5)  load 1 into ac3
48: LDA   6, -1(6)  push 1
49: LDC   3, 195(5)  push 1
50: SUB   3, 6, 3  push 1
51: JLE   3, 16(5)  push 1
52: ST    2, 0(6)  push 1
43: LDA   7, 9(7)  jump to start parsing str
53: LDC   2, 0(5)  load 0 as initial result
54: LDA   6, -1(6)  push 0
55: LDC   3, 195(5)  push 0
56: SUB   3, 6, 3  push 0
57: JLE   3, 16(5)  push 0
58: ST    2, 0(6)  push 0
59: LD    2, 0(6)  pop result into AC3
60: LDA   6, 1(6)  pop result into AC3
61: LDC   3, 10(5)  load 10 into ac4
62: MUL   2, 2, 3  mul result with 10
63: LDA   6, -1(6)  push result
64: LDC   3, 195(5)  push result
65: SUB   3, 6, 3  push result
66: JLE   3, 16(5)  push result
67: ST    2, 0(6)  push result
68: LDA   0, 1(0)  increase str offset
69: LD    2, 0(0)  load char
70: LDC   3, 48(5)  load 48 into ac4
71: SUB   2, 2, 3  compute int value
72: LD    3, 0(6)  pop result into AC4
73: LDA   6, 1(6)  pop result into AC4
74: ADD   2, 2, 3  compute result
75: LDA   6, -1(6)  push result
76: LDC   3, 195(5)  push result
77: SUB   3, 6, 3  push result
78: JLE   3, 16(5)  push result
79: ST    2, 0(6)  push result
80: LDA   1, -1(1)  decrease str length
81: JNE   1, 59(5)  continue if str length
82: LD    0, 0(6)  pop result
83: LDA   6, 1(6)  pop result
84: LD    1, 0(6)  pop symbol
85: LDA   6, 1(6)  pop symbol
86: MUL   0, 0, 1  multiply symbol
87: ST    0, -2(4)  save to return value
88: LD    0, -2(4)  load int/bool/string offset as return value
89: LD    1, -1(4)  load return address
90: LDA   6, 0(4)  change sp to fp + 1
91: LD    4, 0(6)  restore fp
92: LDA   6, 1(6)  restore fp
93: LDA   7, 0(1)  jump to the return address
94: LDC   0, 0(5)  load integer 0
95: LDA   6, -1(6)  push array index
96: LDC   3, 195(5)  push array index
97: SUB   3, 6, 3  push array index
98: JLE   3, 16(5)  push array index
99: ST    0, 0(6)  push array index
100: LDC   0, 0(5)  load integer 0
101: LDA   6, -1(6)  push array index
102: LDC   3, 195(5)  push array index
103: SUB   3, 6, 3  push array index
104: JLE   3, 16(5)  push array index
105: ST    0, 0(6)  push array index
106: LDC   0, 2(5)  push array dimension
107: LDC   0, 0(5)  load 0 to ac
108: LD    1, 0(6)  pop index
109: LDA   6, 1(6)  pop index
110: JLT   1, 6(5)  jump if index less than 0
111: LDC   3, 4(5)  load array size
112: SUB   3, 3, 1  sub max size with index
113: JLE   3, 6(5)  jump if index greater than size - 1
114: LDC   2, 2(5)  load size of subarray
115: MUL   1, 1, 2  compute 0 dim
116: ADD   0, 0, 1  add result
117: LD    1, 0(6)  pop index
118: LDA   6, 1(6)  pop index
119: JLT   1, 6(5)  jump if index less than 0
120: LDC   3, 2(5)  load array size
121: SUB   3, 3, 1  sub max size with index
122: JLE   3, 6(5)  jump if index greater than size - 1
123: LDC   2, 1(5)  load size of subarray
124: MUL   1, 1, 2  compute 1 dim
125: ADD   0, 0, 1  add result
126: LDA   1, 0(4)  load fp into ac2
127: LD    1, -2(1)  load local offset into ac2
128: ADD   0, 0, 1  compute final offset
129: LD    0, 0(0)  load data from array
130: OUT   0, 0, 0  write integer
131: OUTNL 0, 0, 0  write new line
132: LDC   0, 0(5)  load integer 0
133: LDA   6, -1(6)  push array index
134: LDC   3, 195(5)  push array index
135: SUB   3, 6, 3  push array index
136: JLE   3, 16(5)  push array index
137: ST    0, 0(6)  push array index
138: LDC   0, 1(5)  load integer 1
139: LDA   6, -1(6)  push array index
140: LDC   3, 195(5)  push array index
141: SUB   3, 6, 3  push array index
142: JLE   3, 16(5)  push array index
143: ST    0, 0(6)  push array index
144: LDC   0, 2(5)  push array dimension
145: LDC   0, 0(5)  load 0 to ac
146: LD    1, 0(6)  pop index
147: LDA   6, 1(6)  pop index
148: JLT   1, 6(5)  jump if index less than 0
149: LDC   3, 4(5)  load array size
150: SUB   3, 3, 1  sub max size with index
151: JLE   3, 6(5)  jump if index greater than size - 1
152: LDC   2, 2(5)  load size of subarray
153: MUL   1, 1, 2  compute 0 dim
154: ADD   0, 0, 1  add result
155: LD    1, 0(6)  pop index
156: LDA   6, 1(6)  pop index
157: JLT   1, 6(5)  jump if index less than 0
158: LDC   3, 2(5)  load array size
159: SUB   3, 3, 1  sub max size with index
160: JLE   3, 6(5)  jump if index greater than size - 1
161: LDC   2, 1(5)  load size of subarray
162: MUL   1, 1, 2  compute 1 dim
163: ADD   0, 0, 1  add result
164: LDA   1, 0(4)  load fp into ac2
165: LD    1, -2(1)  load local offset into ac2
166: ADD   0, 0, 1  compute final offset
167: LD    0, 0(0)  load data from array
168: OUT   0, 0, 0  write integer
169: OUTNL 0, 0, 0  write new line
170: LDC   0, 0(5)  load integer 0
171: LDA   6, -1(6)  push array index
172: LDC   3, 195(5)  push array index
173: SUB   3, 6, 3  push array index
174: JLE   3, 16(5)  push array index
175: ST    0, 0(6)  push array index
176: LDC   0, 2(5)  load integer 2
177: LDA   6, -1(6)  push array index
178: LDC   3, 195(5)  push array index
179: SUB   3, 6, 3  push array index
180: JLE   3, 16(5)  push array index
181: ST    0, 0(6)  push array index
182: LDC   0, 2(5)  push array dimension
183: LDC   0, 0(5)  load 0 to ac
184: LD    1, 0(6)  pop index
185: LDA   6, 1(6)  pop index
186: JLT   1, 6(5)  jump if index less than 0
187: LDC   3, 4(5)  load array size
188: SUB   3, 3, 1  sub max size with index
189: JLE   3, 6(5)  jump if index greater than size - 1
190: LDC   2, 2(5)  load size of subarray
191: MUL   1, 1, 2  compute 0 dim
192: ADD   0, 0, 1  add result
193: LD    1, 0(6)  pop index
194: LDA   6, 1(6)  pop index
195: JLT   1, 6(5)  jump if index less than 0
196: LDC   3, 2(5)  load array size
197: SUB   3, 3, 1  sub max size with index
198: JLE   3, 6(5)  jump if index greater than size - 1
199: LDC   2, 1(5)  load size of subarray
200: MUL   1, 1, 2  compute 1 dim
201: ADD   0, 0, 1  add result
202: LDA   1, 0(4)  load fp into ac2
203: LD    1, -2(1)  load local offset into ac2
204: ADD   0, 0, 1  compute final offset
205: LD    0, 0(0)  load data from array
206: OUT   0, 0, 0  write integer
207: OUTNL 0, 0, 0  write new line
208: LDC   0, 0(5)  load integer 0
209: LDA   6, -1(6)  push array index
210: LDC   3, 195(5)  push array index
211: SUB   3, 6, 3  push array index
212: JLE   3, 16(5)  push array index
213: ST    0, 0(6)  push array index
214: LDC   0, 3(5)  load integer 3
215: LDA   6, -1(6)  push array index
216: LDC   3, 195(5)  push array index
217: SUB   3, 6, 3  push array index
218: JLE   3, 16(5)  push array index
219: ST    0, 0(6)  push array index
220: LDC   0, 2(5)  push array dimension
221: LDC   0, 0(5)  load 0 to ac
222: LD    1, 0(6)  pop index
223: LDA   6, 1(6)  pop index
224: JLT   1, 6(5)  jump if index less than 0
225: LDC   3, 4(5)  load array size
226: SUB   3, 3, 1  sub max size with index
227: JLE   3, 6(5)  jump if index greater than size - 1
228: LDC   2, 2(5)  load size of subarray
229: MUL   1, 1, 2  compute 0 dim
230: ADD   0, 0, 1  add result
231: LD    1, 0(6)  pop index
232: LDA   6, 1(6)  pop index
233: JLT   1, 6(5)  jump if index less than 0
234: LDC   3, 2(5)  load array size
235: SUB   3, 3, 1  sub max size with index
236: JLE   3, 6(5)  jump if index greater than size - 1
237: LDC   2, 1(5)  load size of subarray
238: MUL   1, 1, 2  compute 1 dim
239: ADD   0, 0, 1  add result
240: LDA   1, 0(4)  load fp into ac2
241: LD    1, -2(1)  load local offset into ac2
242: ADD   0, 0, 1  compute final offset
243: LD    0, 0(0)  load data from array
244: OUT   0, 0, 0  write integer
245: OUTNL 0, 0, 0  write new line
246: LDC   0, 1(5)  load integer 1
247: LDA   6, -1(6)  push array index
248: LDC   3, 195(5)  push array index
249: SUB   3, 6, 3  push array index
250: JLE   3, 16(5)  push array index
251: ST    0, 0(6)  push array index
252: LDC   0, 0(5)  load integer 0
253: LDA   6, -1(6)  push array index
254: LDC   3, 195(5)  push array index
255: SUB   3, 6, 3  push array index
256: JLE   3, 16(5)  push array index
257: ST    0, 0(6)  push array index
258: LDC   0, 2(5)  push array dimension
259: LDC   0, 0(5)  load 0 to ac
260: LD    1, 0(6)  pop index
261: LDA   6, 1(6)  pop index
262: JLT   1, 6(5)  jump if index less than 0
263: LDC   3, 4(5)  load array size
264: SUB   3, 3, 1  sub max size with index
265: JLE   3, 6(5)  jump if index greater than size - 1
266: LDC   2, 2(5)  load size of subarray
267: MUL   1, 1, 2  compute 0 dim
268: ADD   0, 0, 1  add result
269: LD    1, 0(6)  pop index
270: LDA   6, 1(6)  pop index
271: JLT   1, 6(5)  jump if index less than 0
272: LDC   3, 2(5)  load array size
273: SUB   3, 3, 1  sub max size with index
274: JLE   3, 6(5)  jump if index greater than size - 1
275: LDC   2, 1(5)  load size of subarray
276: MUL   1, 1, 2  compute 1 dim
277: ADD   0, 0, 1  add result
278: LDA   1, 0(4)  load fp into ac2
279: LD    1, -2(1)  load local offset into ac2
280: ADD   0, 0, 1  compute final offset
281: LD    0, 0(0)  load data from array
282: OUT   0, 0, 0  write integer
283: OUTNL 0, 0, 0  write new line
284: LDC   0, 1(5)  load integer 1
285: LDA   6, -1(6)  push array index
286: LDC   3, 195(5)  push array index
287: SUB   3, 6, 3  push array index
288: JLE   3, 16(5)  push array index
289: ST    0, 0(6)  push array index
290: LDC   0, 1(5)  load integer 1
291: LDA   6, -1(6)  push array index
292: LDC   3, 195(5)  push array index
293: SUB   3, 6, 3  push array index
294: JLE   3, 16(5)  push array index
295: ST    0, 0(6)  push array index
296: LDC   0, 2(5)  push array dimension
297: LDC   0, 0(5)  load 0 to ac
298: LD    1, 0(6)  pop index
299: LDA   6, 1(6)  pop index
300: JLT   1, 6(5)  jump if index less than 0
301: LDC   3, 4(5)  load array size
302: SUB   3, 3, 1  sub max size with index
303: JLE   3, 6(5)  jump if index greater than size - 1
304: LDC   2, 2(5)  load size of subarray
305: MUL   1, 1, 2  compute 0 dim
306: ADD   0, 0, 1  add result
307: LD    1, 0(6)  pop index
308: LDA   6, 1(6)  pop index
309: JLT   1, 6(5)  jump if index less than 0
310: LDC   3, 2(5)  load array size
311: SUB   3, 3, 1  sub max size with index
312: JLE   3, 6(5)  jump if index greater than size - 1
313: LDC   2, 1(5)  load size of subarray
314: MUL   1, 1, 2  compute 1 dim
315: ADD   0, 0, 1  add result
316: LDA   1, 0(4)  load fp into ac2
317: LD    1, -2(1)  load local offset into ac2
318: ADD   0, 0, 1  compute final offset
319: LD    0, 0(0)  load data from array
320: OUT   0, 0, 0  write integer
321: OUTNL 0, 0, 0  write new line
322: LDC   0, 1(5)  load integer 1
323: LDA   6, -1(6)  push array index
324: LDC   3, 195(5)  push array index
325: SUB   3, 6, 3  push array index
326: JLE   3, 16(5)  push array index
327: ST    0, 0(6)  push array index
328: LDC   0, 2(5)  load integer 2
329: LDA   6, -1(6)  push array index
330: LDC   3, 195(5)  push array index
331: SUB   3, 6, 3  push array index
332: JLE   3, 16(5)  push array index
333: ST    0, 0(6)  push array index
334: LDC   0, 2(5)  push array dimension
335: LDC   0, 0(5)  load 0 to ac
336: LD    1, 0(6)  pop index
337: LDA   6, 1(6)  pop index
338: JLT   1, 6(5)  jump if index less than 0
339: LDC   3, 4(5)  load array size
340: SUB   3, 3, 1  sub max size with index
341: JLE   3, 6(5)  jump if index greater than size - 1
342: LDC   2, 2(5)  load size of subarray
343: MUL   1, 1, 2  compute 0 dim
344: ADD   0, 0, 1  add result
345: LD    1, 0(6)  pop index
346: LDA   6, 1(6)  pop index
347: JLT   1, 6(5)  jump if index less than 0
348: LDC   3, 2(5)  load array size
349: SUB   3, 3, 1  sub max size with index
350: JLE   3, 6(5)  jump if index greater than size - 1
351: LDC   2, 1(5)  load size of subarray
352: MUL   1, 1, 2  compute 1 dim
353: ADD   0, 0, 1  add result
354: LDA   1, 0(4)  load fp into ac2
355: LD    1, -2(1)  load local offset into ac2
356: ADD   0, 0, 1  compute final offset
357: LD    0, 0(0)  load data from array
358: OUT   0, 0, 0  write integer
359: OUTNL 0, 0, 0  write new line
360: LDC   0, 1(5)  load integer 1
361: LDA   6, -1(6)  push array index
362: LDC   3, 195(5)  push array index
363: SUB   3, 6, 3  push array index
364: JLE   3, 16(5)  push array index
365: ST    0, 0(6)  push array index
366: LDC   0, 3(5)  load integer 3
367: LDA   6, -1(6)  push array index
368: LDC   3, 195(5)  push array index
369: SUB   3, 6, 3  push array index
370: JLE   3, 16(5)  push array index
371: ST    0, 0(6)  push array index
372: LDC   0, 2(5)  push array dimension
373: LDC   0, 0(5)  load 0 to ac
374: LD    1, 0(6)  pop index
375: LDA   6, 1(6)  pop index
376: JLT   1, 6(5)  jump if index less than 0
377: LDC   3, 4(5)  load array size
378: SUB   3, 3, 1  sub max size with index
379: JLE   3, 6(5)  jump if index greater than size - 1
380: LDC   2, 2(5)  load size of subarray
381: MUL   1, 1, 2  compute 0 dim
382: ADD   0, 0, 1  add result
383: LD    1, 0(6)  pop index
384: LDA   6, 1(6)  pop index
385: JLT   1, 6(5)  jump if index less than 0
386: LDC   3, 2(5)  load array size
387: SUB   3, 3, 1  sub max size with index
388: JLE   3, 6(5)  jump if index greater than size - 1
389: LDC   2, 1(5)  load size of subarray
390: MUL   1, 1, 2  compute 1 dim
391: ADD   0, 0, 1  add result
392: LDA   1, 0(4)  load fp into ac2
393: LD    1, -2(1)  load local offset into ac2
394: ADD   0, 0, 1  compute final offset
395: LD    0, 0(0)  load data from array
396: OUT   0, 0, 0  write integer
397: OUTNL 0, 0, 0  write new line
398: LD    1, -1(4)  load return address
399: LDA   6, 0(4)  change sp to fp + 1
400: LD    4, 0(6)  restore fp
401: LDA   6, 1(6)  restore fp
402: LDA   7, 0(1)  jump to the return address
5: LDA   7, 403(5)  jump to start of the program
403: LDC   0, 0(5)  load integer 0
404: LDA   6, -1(6)  push array index
405: LDC   3, 195(5)  push array index
406: SUB   3, 6, 3  push array index
407: JLE   3, 16(5)  push array index
408: ST    0, 0(6)  push array index
409: LDC   0, 0(5)  load integer 0
410: LDA   6, -1(6)  push array index
411: LDC   3, 195(5)  push array index
412: SUB   3, 6, 3  push array index
413: JLE   3, 16(5)  push array index
414: ST    0, 0(6)  push array index
415: LDC   0, 2(5)  push array dimension
416: LDC   0, 0(5)  load 0 to ac
417: LD    1, 0(6)  pop index
418: LDA   6, 1(6)  pop index
419: JLT   1, 6(5)  jump if index less than 0
420: LDC   3, 4(5)  load array size
421: SUB   3, 3, 1  sub max size with index
422: JLE   3, 6(5)  jump if index greater than size - 1
423: LDC   2, 2(5)  load size of subarray
424: MUL   1, 1, 2  compute 0 dim
425: ADD   0, 0, 1  add result
426: LD    1, 0(6)  pop index
427: LDA   6, 1(6)  pop index
428: JLT   1, 6(5)  jump if index less than 0
429: LDC   3, 2(5)  load array size
430: SUB   3, 3, 1  sub max size with index
431: JLE   3, 6(5)  jump if index greater than size - 1
432: LDC   2, 1(5)  load size of subarray
433: MUL   1, 1, 2  compute 1 dim
434: ADD   0, 0, 1  add result
435: LD    1, 186(5)  load offset into ac2
436: ADD   0, 0, 1  compute final offset
437: LDA   6, -1(6)  push final offset
438: LDC   3, 195(5)  push final offset
439: SUB   3, 6, 3  push final offset
440: JLE   3, 16(5)  push final offset
441: ST    0, 0(6)  push final offset
442: LDC   0, 3(5)  load integer 3
443: LD    1, 0(6)  pop final offset
444: LDA   6, 1(6)  pop final offset
445: ST    0, 0(1)  store value into array static data
446: LDC   0, 0(5)  load integer 0
447: LDA   6, -1(6)  push array index
448: LDC   3, 195(5)  push array index
449: SUB   3, 6, 3  push array index
450: JLE   3, 16(5)  push array index
451: ST    0, 0(6)  push array index
452: LDC   0, 1(5)  load integer 1
453: LDA   6, -1(6)  push array index
454: LDC   3, 195(5)  push array index
455: SUB   3, 6, 3  push array index
456: JLE   3, 16(5)  push array index
457: ST    0, 0(6)  push array index
458: LDC   0, 2(5)  push array dimension
459: LDC   0, 0(5)  load 0 to ac
460: LD    1, 0(6)  pop index
461: LDA   6, 1(6)  pop index
462: JLT   1, 6(5)  jump if index less than 0
463: LDC   3, 4(5)  load array size
464: SUB   3, 3, 1  sub max size with index
465: JLE   3, 6(5)  jump if index greater than size - 1
466: LDC   2, 2(5)  load size of subarray
467: MUL   1, 1, 2  compute 0 dim
468: ADD   0, 0, 1  add result
469: LD    1, 0(6)  pop index
470: LDA   6, 1(6)  pop index
471: JLT   1, 6(5)  jump if index less than 0
472: LDC   3, 2(5)  load array size
473: SUB   3, 3, 1  sub max size with index
474: JLE   3, 6(5)  jump if index greater than size - 1
475: LDC   2, 1(5)  load size of subarray
476: MUL   1, 1, 2  compute 1 dim
477: ADD   0, 0, 1  add result
478: LD    1, 186(5)  load offset into ac2
479: ADD   0, 0, 1  compute final offset
480: LDA   6, -1(6)  push final offset
481: LDC   3, 195(5)  push final offset
482: SUB   3, 6, 3  push final offset
483: JLE   3, 16(5)  push final offset
484: ST    0, 0(6)  push final offset
485: LDC   0, 2(5)  load integer 2
486: LD    1, 0(6)  pop final offset
487: LDA   6, 1(6)  pop final offset
488: ST    0, 0(1)  store value into array static data
489: LDC   0, 0(5)  load integer 0
490: LDA   6, -1(6)  push array index
491: LDC   3, 195(5)  push array index
492: SUB   3, 6, 3  push array index
493: JLE   3, 16(5)  push array index
494: ST    0, 0(6)  push array index
495: LDC   0, 2(5)  load integer 2
496: LDA   6, -1(6)  push array index
497: LDC   3, 195(5)  push array index
498: SUB   3, 6, 3  push array index
499: JLE   3, 16(5)  push array index
500: ST    0, 0(6)  push array index
501: LDC   0, 2(5)  push array dimension
502: LDC   0, 0(5)  load 0 to ac
503: LD    1, 0(6)  pop index
504: LDA   6, 1(6)  pop index
505: JLT   1, 6(5)  jump if index less than 0
506: LDC   3, 4(5)  load array size
507: SUB   3, 3, 1  sub max size with index
508: JLE   3, 6(5)  jump if index greater than size - 1
509: LDC   2, 2(5)  load size of subarray
510: MUL   1, 1, 2  compute 0 dim
511: ADD   0, 0, 1  add result
512: LD    1, 0(6)  pop index
513: LDA   6, 1(6)  pop index
514: JLT   1, 6(5)  jump if index less than 0
515: LDC   3, 2(5)  load array size
516: SUB   3, 3, 1  sub max size with index
517: JLE   3, 6(5)  jump if index greater than size - 1
518: LDC   2, 1(5)  load size of subarray
519: MUL   1, 1, 2  compute 1 dim
520: ADD   0, 0, 1  add result
521: LD    1, 186(5)  load offset into ac2
522: ADD   0, 0, 1  compute final offset
523: LDA   6, -1(6)  push final offset
524: LDC   3, 195(5)  push final offset
525: SUB   3, 6, 3  push final offset
526: JLE   3, 16(5)  push final offset
527: ST    0, 0(6)  push final offset
528: LDC   0, 1(5)  load integer 1
529: LD    1, 0(6)  pop final offset
530: LDA   6, 1(6)  pop final offset
531: ST    0, 0(1)  store value into array static data
532: LDC   0, 0(5)  load integer 0
533: LDA   6, -1(6)  push array index
534: LDC   3, 195(5)  push array index
535: SUB   3, 6, 3  push array index
536: JLE   3, 16(5)  push array index
537: ST    0, 0(6)  push array index
538: LDC   0, 3(5)  load integer 3
539: LDA   6, -1(6)  push array index
540: LDC   3, 195(5)  push array index
541: SUB   3, 6, 3  push array index
542: JLE   3, 16(5)  push array index
543: ST    0, 0(6)  push array index
544: LDC   0, 2(5)  push array dimension
545: LDC   0, 0(5)  load 0 to ac
546: LD    1, 0(6)  pop index
547: LDA   6, 1(6)  pop index
548: JLT   1, 6(5)  jump if index less than 0
549: LDC   3, 4(5)  load array size
550: SUB   3, 3, 1  sub max size with index
551: JLE   3, 6(5)  jump if index greater than size - 1
552: LDC   2, 2(5)  load size of subarray
553: MUL   1, 1, 2  compute 0 dim
554: ADD   0, 0, 1  add result
555: LD    1, 0(6)  pop index
556: LDA   6, 1(6)  pop index
557: JLT   1, 6(5)  jump if index less than 0
558: LDC   3, 2(5)  load array size
559: SUB   3, 3, 1  sub max size with index
560: JLE   3, 6(5)  jump if index greater than size - 1
561: LDC   2, 1(5)  load size of subarray
562: MUL   1, 1, 2  compute 1 dim
563: ADD   0, 0, 1  add result
564: LD    1, 186(5)  load offset into ac2
565: ADD   0, 0, 1  compute final offset
566: LDA   6, -1(6)  push final offset
567: LDC   3, 195(5)  push final offset
568: SUB   3, 6, 3  push final offset
569: JLE   3, 16(5)  push final offset
570: ST    0, 0(6)  push final offset
571: LDC   0, 0(5)  load integer 0
572: LD    1, 0(6)  pop final offset
573: LDA   6, 1(6)  pop final offset
574: ST    0, 0(1)  store value into array static data
575: LDC   0, 1(5)  load integer 1
576: LDA   6, -1(6)  push array index
577: LDC   3, 195(5)  push array index
578: SUB   3, 6, 3  push array index
579: JLE   3, 16(5)  push array index
580: ST    0, 0(6)  push array index
581: LDC   0, 0(5)  load integer 0
582: LDA   6, -1(6)  push array index
583: LDC   3, 195(5)  push array index
584: SUB   3, 6, 3  push array index
585: JLE   3, 16(5)  push array index
586: ST    0, 0(6)  push array index
587: LDC   0, 2(5)  push array dimension
588: LDC   0, 0(5)  load 0 to ac
589: LD    1, 0(6)  pop index
590: LDA   6, 1(6)  pop index
591: JLT   1, 6(5)  jump if index less than 0
592: LDC   3, 4(5)  load array size
593: SUB   3, 3, 1  sub max size with index
594: JLE   3, 6(5)  jump if index greater than size - 1
595: LDC   2, 2(5)  load size of subarray
596: MUL   1, 1, 2  compute 0 dim
597: ADD   0, 0, 1  add result
598: LD    1, 0(6)  pop index
599: LDA   6, 1(6)  pop index
600: JLT   1, 6(5)  jump if index less than 0
601: LDC   3, 2(5)  load array size
602: SUB   3, 3, 1  sub max size with index
603: JLE   3, 6(5)  jump if index greater than size - 1
604: LDC   2, 1(5)  load size of subarray
605: MUL   1, 1, 2  compute 1 dim
606: ADD   0, 0, 1  add result
607: LD    1, 186(5)  load offset into ac2
608: ADD   0, 0, 1  compute final offset
609: LDA   6, -1(6)  push final offset
610: LDC   3, 195(5)  push final offset
611: SUB   3, 6, 3  push final offset
612: JLE   3, 16(5)  push final offset
613: ST    0, 0(6)  push final offset
614: LDC   0, 1(5)  load integer 1
615: LDC   1, 0(5)  load 0 into AC2
616: SUB   0, 1, 0  compute negative number
617: LD    1, 0(6)  pop final offset
618: LDA   6, 1(6)  pop final offset
619: ST    0, 0(1)  store value into array static data
620: LDC   0, 1(5)  load integer 1
621: LDA   6, -1(6)  push array index
622: LDC   3, 195(5)  push array index
623: SUB   3, 6, 3  push array index
624: JLE   3, 16(5)  push array index
625: ST    0, 0(6)  push array index
626: LDC   0, 1(5)  load integer 1
627: LDA   6, -1(6)  push array index
628: LDC   3, 195(5)  push array index
629: SUB   3, 6, 3  push array index
630: JLE   3, 16(5)  push array index
631: ST    0, 0(6)  push array index
632: LDC   0, 2(5)  push array dimension
633: LDC   0, 0(5)  load 0 to ac
634: LD    1, 0(6)  pop index
635: LDA   6, 1(6)  pop index
636: JLT   1, 6(5)  jump if index less than 0
637: LDC   3, 4(5)  load array size
638: SUB   3, 3, 1  sub max size with index
639: JLE   3, 6(5)  jump if index greater than size - 1
640: LDC   2, 2(5)  load size of subarray
641: MUL   1, 1, 2  compute 0 dim
642: ADD   0, 0, 1  add result
643: LD    1, 0(6)  pop index
644: LDA   6, 1(6)  pop index
645: JLT   1, 6(5)  jump if index less than 0
646: LDC   3, 2(5)  load array size
647: SUB   3, 3, 1  sub max size with index
648: JLE   3, 6(5)  jump if index greater than size - 1
649: LDC   2, 1(5)  load size of subarray
650: MUL   1, 1, 2  compute 1 dim
651: ADD   0, 0, 1  add result
652: LD    1, 186(5)  load offset into ac2
653: ADD   0, 0, 1  compute final offset
654: LDA   6, -1(6)  push final offset
655: LDC   3, 195(5)  push final offset
656: SUB   3, 6, 3  push final offset
657: JLE   3, 16(5)  push final offset
658: ST    0, 0(6)  push final offset
659: LDC   0, 2(5)  load integer 2
660: LDC   1, 0(5)  load 0 into AC2
661: SUB   0, 1, 0  compute negative number
662: LD    1, 0(6)  pop final offset
663: LDA   6, 1(6)  pop final offset
664: ST    0, 0(1)  store value into array static data
665: LDC   0, 1(5)  load integer 1
666: LDA   6, -1(6)  push array index
667: LDC   3, 195(5)  push array index
668: SUB   3, 6, 3  push array index
669: JLE   3, 16(5)  push array index
670: ST    0, 0(6)  push array index
671: LDC   0, 2(5)  load integer 2
672: LDA   6, -1(6)  push array index
673: LDC   3, 195(5)  push array index
674: SUB   3, 6, 3  push array index
675: JLE   3, 16(5)  push array index
676: ST    0, 0(6)  push array index
677: LDC   0, 2(5)  push array dimension
678: LDC   0, 0(5)  load 0 to ac
679: LD    1, 0(6)  pop index
680: LDA   6, 1(6)  pop index
681: JLT   1, 6(5)  jump if index less than 0
682: LDC   3, 4(5)  load array size
683: SUB   3, 3, 1  sub max size with index
684: JLE   3, 6(5)  jump if index greater than size - 1
685: LDC   2, 2(5)  load size of subarray
686: MUL   1, 1, 2  compute 0 dim
687: ADD   0, 0, 1  add result
688: LD    1, 0(6)  pop index
689: LDA   6, 1(6)  pop index
690: JLT   1, 6(5)  jump if index less than 0
691: LDC   3, 2(5)  load array size
692: SUB   3, 3, 1  sub max size with index
693: JLE   3, 6(5)  jump if index greater than size - 1
694: LDC   2, 1(5)  load size of subarray
695: MUL   1, 1, 2  compute 1 dim
696: ADD   0, 0, 1  add result
697: LD    1, 186(5)  load offset into ac2
698: ADD   0, 0, 1  compute final offset
699: LDA   6, -1(6)  push final offset
700: LDC   3, 195(5)  push final offset
701: SUB   3, 6, 3  push final offset
702: JLE   3, 16(5)  push final offset
703: ST    0, 0(6)  push final offset
704: LDC   0, 3(5)  load integer 3
705: LDC   1, 0(5)  load 0 into AC2
706: SUB   0, 1, 0  compute negative number
707: LD    1, 0(6)  pop final offset
708: LDA   6, 1(6)  pop final offset
709: ST    0, 0(1)  store value into array static data
710: LDC   0, 1(5)  load integer 1
711: LDA   6, -1(6)  push array index
712: LDC   3, 195(5)  push array index
713: SUB   3, 6, 3  push array index
714: JLE   3, 16(5)  push array index
715: ST    0, 0(6)  push array index
716: LDC   0, 3(5)  load integer 3
717: LDA   6, -1(6)  push array index
718: LDC   3, 195(5)  push array index
719: SUB   3, 6, 3  push array index
720: JLE   3, 16(5)  push array index
721: ST    0, 0(6)  push array index
722: LDC   0, 2(5)  push array dimension
723: LDC   0, 0(5)  load 0 to ac
724: LD    1, 0(6)  pop index
725: LDA   6, 1(6)  pop index
726: JLT   1, 6(5)  jump if index less than 0
727: LDC   3, 4(5)  load array size
728: SUB   3, 3, 1  sub max size with index
729: JLE   3, 6(5)  jump if index greater than size - 1
730: LDC   2, 2(5)  load size of subarray
731: MUL   1, 1, 2  compute 0 dim
732: ADD   0, 0, 1  add result
733: LD    1, 0(6)  pop index
734: LDA   6, 1(6)  pop index
735: JLT   1, 6(5)  jump if index less than 0
736: LDC   3, 2(5)  load array size
737: SUB   3, 3, 1  sub max size with index
738: JLE   3, 6(5)  jump if index greater than size - 1
739: LDC   2, 1(5)  load size of subarray
740: MUL   1, 1, 2  compute 1 dim
741: ADD   0, 0, 1  add result
742: LD    1, 186(5)  load offset into ac2
743: ADD   0, 0, 1  compute final offset
744: LDA   6, -1(6)  push final offset
745: LDC   3, 195(5)  push final offset
746: SUB   3, 6, 3  push final offset
747: JLE   3, 16(5)  push final offset
748: ST    0, 0(6)  push final offset
749: LDC   0, 4(5)  load integer 4
750: LDC   1, 0(5)  load 0 into AC2
751: SUB   0, 1, 0  compute negative number
752: LD    1, 0(6)  pop final offset
753: LDA   6, 1(6)  pop final offset
754: ST    0, 0(1)  store value into array static data
755: LDA   6, -1(6)  push fp
756: LDC   3, 195(5)  push fp
757: SUB   3, 6, 3  push fp
758: JLE   3, 16(5)  push fp
759: ST    4, 0(6)  push fp
760: LDA   4, 0(6)  set fp to sp
767: LDC   0, 2(5)  push array dimension
768: LDC   0, 0(5)  load 0 to ac
769: LD    1, 186(5)  load global offset into ac2
770: ADD   0, 0, 1  compute final offset
771: LDA   6, -1(6)  push array parameter
772: LDC   3, 195(5)  push array parameter
773: SUB   3, 6, 3  push array parameter
774: JLE   3, 16(5)  push array parameter
775: ST    0, 0(6)  push array parameter
776: LDA   6, 0(6)  preserve space for local vars
777: LDA   7, 94(5)  jump to procedure call
761: LDC   0, 778(5)  load return address into ac
762: LDA   6, -1(6)  push return address
763: LDC   3, 195(5)  push return address
764: SUB   3, 6, 3  push return address
765: JLE   3, 16(5)  push return address
766: ST    0, 0(6)  push return address
778: HALT  0, 0, 0  program ends
