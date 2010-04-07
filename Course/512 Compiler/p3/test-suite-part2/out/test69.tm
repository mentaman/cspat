.DATA    13
.SDATA   "out of memory"
.DATA    18
.SDATA   "array index error!"
0: LDC   0, 35(5)  store array start address: 35
1: LDC   1, 34(5)  store array offset into ac2: 34
2: ST    0, 0(1)  store array offset
3: LD    6, 0(5)  save stack pointer
4: LD    4, 0(5)  save frame pointer
6: LDC   0, 15(5)  load array error str address
7: LD    1, 0(0)  load str length into ac2
8: JEQ   1, 5(7)  output nothing when empty
9: LDA   0, 1(0)  increase offset
10: LD    2, 0(0)  load char into ac3
11: OUTC   2, 2, 2  write char
12: LDA   1, -1(1)  decrease length of remaining string in ac2
13: JNE   1, -5(7)  continue print if not yet finish
14: OUTNL 0, 0, 0  emit newline
15: HALT  0, 0, 0  stop because of array error
16: LDC   0, 1(5)  load out of memory str address
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
30: LDC   3, 45(5)  push 0
31: SUB   3, 6, 3  push 0
32: JLE   3, 16(5)  push 0
33: ST    2, 0(6)  push 0
34: LD    2, 0(6)  pop result into AC3
35: LDA   6, 1(6)  pop result into AC3
36: LDC   3, 10(5)  load 10 into ac4
37: MUL   2, 2, 3  mul result with 10
38: LDA   6, -1(6)  push result
39: LDC   3, 45(5)  push result
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
51: LDC   3, 45(5)  push result
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
66: LDC   0, 1(5)  load booleantrue
67: LDA   1, 0(4)  load fp into ac2
68: ST    0, -5(1)  store int/bool/string into stack
69: LDC   0, 0(5)  load integer 0
70: LDA   1, 0(4)  load fp into ac2
71: ST    0, -2(1)  store int/bool/string into stack
72: LDA   1, 0(4)  load fp into ac2
73: LD    0, -3(1)  load int/bool/str from stack
74: LDA   6, -1(6)  push first child's value
75: LDC   3, 45(5)  push first child's value
76: SUB   3, 6, 3  push first child's value
77: JLE   3, 16(5)  push first child's value
78: ST    0, 0(6)  push first child's value
79: LDC   0, 0(5)  load integer 0
80: LD    1, 0(6)  pop first child's value
81: LDA   6, 1(6)  pop first child's value
82: SUB   1, 1, 0  greater than
83: LDC   0, 1(5)  load 1 as true
84: JEQ   1, 1(7)  skip load false
85: LDC   0, 0(5)  load 0 as false
86: JEQ   0, 1(7)  if expr not true
88: LDC   0, 0(5)  load integer 0
89: LDA   1, 0(4)  load fp into ac2
90: ST    0, -6(1)  store int/bool/string into stack
91: LDA   6, -1(6)  push fp
92: LDC   3, 45(5)  push fp
93: SUB   3, 6, 3  push fp
94: JLE   3, 16(5)  push fp
95: ST    4, 0(6)  push fp
96: LDA   4, 0(6)  set fp to sp
97: LDC   0, 0(5)  load integer 0
98: LDA   6, -1(6)  push low
99: LDC   3, 45(5)  push low
100: SUB   3, 6, 3  push low
101: JLE   3, 16(5)  push low
102: ST    0, 0(6)  push low
103: LDA   1, 0(4)  load fp into ac2
104: LD    1, 0(1)  load upper level fp into ac2
105: LD    0, -3(1)  load int/bool/str from stack
106: LDA   6, -1(6)  push first child's value
107: LDC   3, 45(5)  push first child's value
108: SUB   3, 6, 3  push first child's value
109: JLE   3, 16(5)  push first child's value
110: ST    0, 0(6)  push first child's value
111: LDC   0, 1(5)  load integer 1
112: LD    1, 0(6)  pop first child's value
113: LDA   6, 1(6)  pop first child's value
114: SUB   0, 1, 0  subtract two children
115: LDA   6, -1(6)  push hi
116: LDC   3, 45(5)  push hi
117: SUB   3, 6, 3  push hi
118: JLE   3, 16(5)  push hi
119: ST    0, 0(6)  push hi
120: LD    0, -2(4)  load hi into ac 
121: LD    1, -1(4)  load low into ac2 
122: SUB   0, 0, 1  subtract hi with low
124: LDA   1, 0(4)  load fp into ac2
125: LD    0, -1(1)  load int/bool/str from stack
126: LDA   6, -1(6)  push array index
127: LDC   3, 45(5)  push array index
128: SUB   3, 6, 3  push array index
129: JLE   3, 16(5)  push array index
130: ST    0, 0(6)  push array index
131: LDC   0, 1(5)  push array dimension
132: LDC   0, 0(5)  load 0 to ac
133: LD    1, 0(6)  pop index
134: LDA   6, 1(6)  pop index
135: JLT   1, 6(5)  jump if index less than 0
136: LDC   3, 10(5)  load array size
137: SUB   3, 3, 1  sub max size with index
138: JLE   3, 6(5)  jump if index greater than size - 1
139: LDC   2, 1(5)  load size of subarray
140: MUL   1, 1, 2  compute 0 dim
141: ADD   0, 0, 1  add result
142: LDA   1, 0(4)  load fp into ac2
143: LD    1, 0(1)  load upper level fp into ac2
144: LD    1, -4(1)  load local offset into ac2
145: ADD   0, 0, 1  compute final offset
146: LD    0, 0(0)  load data from array
147: LDA   6, -1(6)  push first child's value
148: LDC   3, 45(5)  push first child's value
149: SUB   3, 6, 3  push first child's value
150: JLE   3, 16(5)  push first child's value
151: ST    0, 0(6)  push first child's value
152: LDC   0, 43(5)  load integer 43
153: LD    1, 0(6)  pop first child's value
154: LDA   6, 1(6)  pop first child's value
155: SUB   1, 1, 0  greater than
156: LDC   0, 1(5)  load 1 as true
157: JEQ   1, 1(7)  skip load false
158: LDC   0, 0(5)  load 0 as false
159: LDA   6, -1(6)  push first child's value
160: LDC   3, 45(5)  push first child's value
161: SUB   3, 6, 3  push first child's value
162: JLE   3, 16(5)  push first child's value
163: ST    0, 0(6)  push first child's value
165: LDA   1, 0(4)  load fp into ac2
166: LD    0, -1(1)  load int/bool/str from stack
167: LDA   6, -1(6)  push array index
168: LDC   3, 45(5)  push array index
169: SUB   3, 6, 3  push array index
170: JLE   3, 16(5)  push array index
171: ST    0, 0(6)  push array index
172: LDC   0, 1(5)  push array dimension
173: LDC   0, 0(5)  load 0 to ac
174: LD    1, 0(6)  pop index
175: LDA   6, 1(6)  pop index
176: JLT   1, 6(5)  jump if index less than 0
177: LDC   3, 10(5)  load array size
178: SUB   3, 3, 1  sub max size with index
179: JLE   3, 6(5)  jump if index greater than size - 1
180: LDC   2, 1(5)  load size of subarray
181: MUL   1, 1, 2  compute 0 dim
182: ADD   0, 0, 1  add result
183: LDA   1, 0(4)  load fp into ac2
184: LD    1, 0(1)  load upper level fp into ac2
185: LD    1, -4(1)  load local offset into ac2
186: ADD   0, 0, 1  compute final offset
187: LD    0, 0(0)  load data from array
188: LDA   6, -1(6)  push first child's value
189: LDC   3, 45(5)  push first child's value
190: SUB   3, 6, 3  push first child's value
191: JLE   3, 16(5)  push first child's value
192: ST    0, 0(6)  push first child's value
193: LDC   0, 45(5)  load integer 45
194: LD    1, 0(6)  pop first child's value
195: LDA   6, 1(6)  pop first child's value
196: SUB   1, 1, 0  greater than
197: LDC   0, 1(5)  load 1 as true
198: JEQ   1, 1(7)  skip load false
199: LDC   0, 0(5)  load 0 as false
200: LD    1, 0(6)  pop first child's value
201: LDA   6, 1(6)  pop first child's value
202: ADD   1, 0, 1  add two children
203: LDC   0, 1(5)  load 1 as true
204: JNE   1, 1(7)  skip load false
205: LDC   0, 0(5)  load 0 as false
164: JNE   0, 41(7)  short circuit
206: LDA   6, -1(6)  push first child's value
207: LDC   3, 45(5)  push first child's value
208: SUB   3, 6, 3  push first child's value
209: JLE   3, 16(5)  push first child's value
210: ST    0, 0(6)  push first child's value
212: LDA   1, 0(4)  load fp into ac2
213: LD    0, -1(1)  load int/bool/str from stack
214: LDA   6, -1(6)  push array index
215: LDC   3, 45(5)  push array index
216: SUB   3, 6, 3  push array index
217: JLE   3, 16(5)  push array index
218: ST    0, 0(6)  push array index
219: LDC   0, 1(5)  push array dimension
220: LDC   0, 0(5)  load 0 to ac
221: LD    1, 0(6)  pop index
222: LDA   6, 1(6)  pop index
223: JLT   1, 6(5)  jump if index less than 0
224: LDC   3, 10(5)  load array size
225: SUB   3, 3, 1  sub max size with index
226: JLE   3, 6(5)  jump if index greater than size - 1
227: LDC   2, 1(5)  load size of subarray
228: MUL   1, 1, 2  compute 0 dim
229: ADD   0, 0, 1  add result
230: LDA   1, 0(4)  load fp into ac2
231: LD    1, 0(1)  load upper level fp into ac2
232: LD    1, -4(1)  load local offset into ac2
233: ADD   0, 0, 1  compute final offset
234: LD    0, 0(0)  load data from array
235: LDA   6, -1(6)  push first child's value
236: LDC   3, 45(5)  push first child's value
237: SUB   3, 6, 3  push first child's value
238: JLE   3, 16(5)  push first child's value
239: ST    0, 0(6)  push first child's value
240: LDC   0, 48(5)  load integer 48
241: LD    1, 0(6)  pop first child's value
242: LDA   6, 1(6)  pop first child's value
243: SUB   1, 1, 0  greater than
244: LDC   0, 1(5)  load 1 as true
245: JGE   1, 1(7)  skip load false
246: LDC   0, 0(5)  load 0 as false
248: LDA   6, -1(6)  push first child's value
249: LDC   3, 45(5)  push first child's value
250: SUB   3, 6, 3  push first child's value
251: JLE   3, 16(5)  push first child's value
252: ST    0, 0(6)  push first child's value
253: LDA   1, 0(4)  load fp into ac2
254: LD    0, -1(1)  load int/bool/str from stack
255: LDA   6, -1(6)  push array index
256: LDC   3, 45(5)  push array index
257: SUB   3, 6, 3  push array index
258: JLE   3, 16(5)  push array index
259: ST    0, 0(6)  push array index
260: LDC   0, 1(5)  push array dimension
261: LDC   0, 0(5)  load 0 to ac
262: LD    1, 0(6)  pop index
263: LDA   6, 1(6)  pop index
264: JLT   1, 6(5)  jump if index less than 0
265: LDC   3, 10(5)  load array size
266: SUB   3, 3, 1  sub max size with index
267: JLE   3, 6(5)  jump if index greater than size - 1
268: LDC   2, 1(5)  load size of subarray
269: MUL   1, 1, 2  compute 0 dim
270: ADD   0, 0, 1  add result
271: LDA   1, 0(4)  load fp into ac2
272: LD    1, 0(1)  load upper level fp into ac2
273: LD    1, -4(1)  load local offset into ac2
274: ADD   0, 0, 1  compute final offset
275: LD    0, 0(0)  load data from array
276: LDA   6, -1(6)  push first child's value
277: LDC   3, 45(5)  push first child's value
278: SUB   3, 6, 3  push first child's value
279: JLE   3, 16(5)  push first child's value
280: ST    0, 0(6)  push first child's value
281: LDC   0, 57(5)  load integer 57
282: LD    1, 0(6)  pop first child's value
283: LDA   6, 1(6)  pop first child's value
284: SUB   1, 1, 0  greater than
285: LDC   0, 1(5)  load 1 as true
286: JLE   1, 1(7)  skip load false
287: LDC   0, 0(5)  load 0 as false
288: LD    1, 0(6)  pop first child's value
289: LDA   6, 1(6)  pop first child's value
290: MUL   0, 0, 1  multiply two children
247: JEQ   0, 43(7)  short circuit
291: LD    1, 0(6)  pop first child's value
292: LDA   6, 1(6)  pop first child's value
293: ADD   1, 0, 1  add two children
294: LDC   0, 1(5)  load 1 as true
295: JNE   1, 1(7)  skip load false
296: LDC   0, 0(5)  load 0 as false
211: JNE   0, 85(7)  short circuit
297: JEQ   0, 1(7)  if expr not true
299: LDA   1, 0(4)  load fp into ac2
300: LD    1, 0(1)  load upper level fp into ac2
301: LD    0, -6(1)  load int/bool/str from stack
302: LDA   6, -1(6)  push first child's value
303: LDC   3, 45(5)  push first child's value
304: SUB   3, 6, 3  push first child's value
305: JLE   3, 16(5)  push first child's value
306: ST    0, 0(6)  push first child's value
307: LDC   0, 1(5)  load integer 1
308: LD    1, 0(6)  pop first child's value
309: LDA   6, 1(6)  pop first child's value
310: ADD   0, 0, 1  add two children
311: LDA   1, 0(4)  load fp into ac2
312: LD    1, 0(1)  load upper level fp into ac2
313: ST    0, -6(1)  store int/bool/string into stack
314: LD    0, -1(4)  load low into ac
315: LDA   0, 1(0)  decrease low
316: ST    0, -1(4)  save low
317: LDA   7, -198(7)  jump back to loop start
123: JLT   0, 194(7)  jump out of the fa loop
298: LDA   7, 19(7)  break -> jump out of the do loop
318: LDA   6, 0(4)  change sp to fp + 1
319: LD    4, 0(6)  restore fp
320: LDA   6, 1(6)  restore fp
321: LDA   1, 0(4)  load fp into ac2
322: LD    0, -6(1)  load int/bool/str from stack
323: LDA   6, -1(6)  push first child's value
324: LDC   3, 45(5)  push first child's value
325: SUB   3, 6, 3  push first child's value
326: JLE   3, 16(5)  push first child's value
327: ST    0, 0(6)  push first child's value
328: LDA   1, 0(4)  load fp into ac2
329: LD    0, -3(1)  load int/bool/str from stack
330: LD    1, 0(6)  pop first child's value
331: LDA   6, 1(6)  pop first child's value
332: SUB   1, 1, 0  greater than
333: LDC   0, 1(5)  load 1 as true
334: JEQ   1, 1(7)  skip load false
335: LDC   0, 0(5)  load 0 as false
336: JEQ   0, 1(7)  if expr not true
338: LDA   1, 0(4)  load fp into ac2
339: LD    0, -6(1)  load int/bool/str from stack
340: LDA   6, -1(6)  push array index
341: LDC   3, 45(5)  push array index
342: SUB   3, 6, 3  push array index
343: JLE   3, 16(5)  push array index
344: ST    0, 0(6)  push array index
345: LDC   0, 1(5)  push array dimension
346: LDC   0, 0(5)  load 0 to ac
347: LD    1, 0(6)  pop index
348: LDA   6, 1(6)  pop index
349: JLT   1, 6(5)  jump if index less than 0
350: LDC   3, 10(5)  load array size
351: SUB   3, 3, 1  sub max size with index
352: JLE   3, 6(5)  jump if index greater than size - 1
353: LDC   2, 1(5)  load size of subarray
354: MUL   1, 1, 2  compute 0 dim
355: ADD   0, 0, 1  add result
356: LDA   1, 0(4)  load fp into ac2
357: LD    1, -4(1)  load local offset into ac2
358: ADD   0, 0, 1  compute final offset
359: LD    0, 0(0)  load data from array
360: LDA   6, -1(6)  push first child's value
361: LDC   3, 45(5)  push first child's value
362: SUB   3, 6, 3  push first child's value
363: JLE   3, 16(5)  push first child's value
364: ST    0, 0(6)  push first child's value
365: LDC   0, 45(5)  load integer 45
366: LD    1, 0(6)  pop first child's value
367: LDA   6, 1(6)  pop first child's value
368: SUB   1, 1, 0  greater than
369: LDC   0, 1(5)  load 1 as true
370: JEQ   1, 1(7)  skip load false
371: LDC   0, 0(5)  load 0 as false
373: LDC   0, 0(5)  load booleanfalse
374: LDA   1, 0(4)  load fp into ac2
375: ST    0, -5(1)  store int/bool/string into stack
376: LDA   1, 0(4)  load fp into ac2
377: LD    0, -6(1)  load int/bool/str from stack
378: LDA   6, -1(6)  push first child's value
379: LDC   3, 45(5)  push first child's value
380: SUB   3, 6, 3  push first child's value
381: JLE   3, 16(5)  push first child's value
382: ST    0, 0(6)  push first child's value
383: LDC   0, 1(5)  load integer 1
384: LD    1, 0(6)  pop first child's value
385: LDA   6, 1(6)  pop first child's value
386: ADD   0, 0, 1  add two children
387: LDA   1, 0(4)  load fp into ac2
388: ST    0, -6(1)  store int/bool/string into stack
372: JEQ   0, 17(7)  if expr not true
390: LDA   1, 0(4)  load fp into ac2
391: LD    0, -6(1)  load int/bool/str from stack
392: LDA   6, -1(6)  push array index
393: LDC   3, 45(5)  push array index
394: SUB   3, 6, 3  push array index
395: JLE   3, 16(5)  push array index
396: ST    0, 0(6)  push array index
397: LDC   0, 1(5)  push array dimension
398: LDC   0, 0(5)  load 0 to ac
399: LD    1, 0(6)  pop index
400: LDA   6, 1(6)  pop index
401: JLT   1, 6(5)  jump if index less than 0
402: LDC   3, 10(5)  load array size
403: SUB   3, 3, 1  sub max size with index
404: JLE   3, 6(5)  jump if index greater than size - 1
405: LDC   2, 1(5)  load size of subarray
406: MUL   1, 1, 2  compute 0 dim
407: ADD   0, 0, 1  add result
408: LDA   1, 0(4)  load fp into ac2
409: LD    1, -4(1)  load local offset into ac2
410: ADD   0, 0, 1  compute final offset
411: LD    0, 0(0)  load data from array
412: LDA   6, -1(6)  push first child's value
413: LDC   3, 45(5)  push first child's value
414: SUB   3, 6, 3  push first child's value
415: JLE   3, 16(5)  push first child's value
416: ST    0, 0(6)  push first child's value
417: LDC   0, 43(5)  load integer 43
418: LD    1, 0(6)  pop first child's value
419: LDA   6, 1(6)  pop first child's value
420: SUB   1, 1, 0  greater than
421: LDC   0, 1(5)  load 1 as true
422: JEQ   1, 1(7)  skip load false
423: LDC   0, 0(5)  load 0 as false
425: LDA   1, 0(4)  load fp into ac2
426: LD    0, -6(1)  load int/bool/str from stack
427: LDA   6, -1(6)  push first child's value
428: LDC   3, 45(5)  push first child's value
429: SUB   3, 6, 3  push first child's value
430: JLE   3, 16(5)  push first child's value
431: ST    0, 0(6)  push first child's value
432: LDC   0, 1(5)  load integer 1
433: LD    1, 0(6)  pop first child's value
434: LDA   6, 1(6)  pop first child's value
435: ADD   0, 0, 1  add two children
436: LDA   1, 0(4)  load fp into ac2
437: ST    0, -6(1)  store int/bool/string into stack
424: JEQ   0, 14(7)  if expr not true
389: LDA   7, 49(7)  Jump to the end of if
438: LDA   7, 0(7)  Jump to the end of if
439: LDA   1, 0(4)  load fp into ac2
440: LD    0, -6(1)  load int/bool/str from stack
441: LDA   6, -1(6)  push first child's value
442: LDC   3, 45(5)  push first child's value
443: SUB   3, 6, 3  push first child's value
444: JLE   3, 16(5)  push first child's value
445: ST    0, 0(6)  push first child's value
446: LDA   1, 0(4)  load fp into ac2
447: LD    0, -3(1)  load int/bool/str from stack
448: LD    1, 0(6)  pop first child's value
449: LDA   6, 1(6)  pop first child's value
450: SUB   1, 1, 0  greater than
451: LDC   0, 1(5)  load 1 as true
452: JEQ   1, 1(7)  skip load false
453: LDC   0, 0(5)  load 0 as false
454: JEQ   0, 1(7)  if expr not true
456: LDA   6, -1(6)  push fp
457: LDC   3, 45(5)  push fp
458: SUB   3, 6, 3  push fp
459: JLE   3, 16(5)  push fp
460: ST    4, 0(6)  push fp
461: LDA   4, 0(6)  set fp to sp
462: LDA   1, 0(4)  load fp into ac2
463: LD    1, 0(1)  load upper level fp into ac2
464: LD    0, -6(1)  load int/bool/str from stack
465: LDA   6, -1(6)  push low
466: LDC   3, 45(5)  push low
467: SUB   3, 6, 3  push low
468: JLE   3, 16(5)  push low
469: ST    0, 0(6)  push low
470: LDA   1, 0(4)  load fp into ac2
471: LD    1, 0(1)  load upper level fp into ac2
472: LD    0, -3(1)  load int/bool/str from stack
473: LDA   6, -1(6)  push first child's value
474: LDC   3, 45(5)  push first child's value
475: SUB   3, 6, 3  push first child's value
476: JLE   3, 16(5)  push first child's value
477: ST    0, 0(6)  push first child's value
478: LDC   0, 1(5)  load integer 1
479: LD    1, 0(6)  pop first child's value
480: LDA   6, 1(6)  pop first child's value
481: SUB   0, 1, 0  subtract two children
482: LDA   6, -1(6)  push hi
483: LDC   3, 45(5)  push hi
484: SUB   3, 6, 3  push hi
485: JLE   3, 16(5)  push hi
486: ST    0, 0(6)  push hi
487: LD    0, -2(4)  load hi into ac 
488: LD    1, -1(4)  load low into ac2 
489: SUB   0, 0, 1  subtract hi with low
491: LDA   1, 0(4)  load fp into ac2
492: LD    0, -1(1)  load int/bool/str from stack
493: LDA   6, -1(6)  push array index
494: LDC   3, 45(5)  push array index
495: SUB   3, 6, 3  push array index
496: JLE   3, 16(5)  push array index
497: ST    0, 0(6)  push array index
498: LDC   0, 1(5)  push array dimension
499: LDC   0, 0(5)  load 0 to ac
500: LD    1, 0(6)  pop index
501: LDA   6, 1(6)  pop index
502: JLT   1, 6(5)  jump if index less than 0
503: LDC   3, 10(5)  load array size
504: SUB   3, 3, 1  sub max size with index
505: JLE   3, 6(5)  jump if index greater than size - 1
506: LDC   2, 1(5)  load size of subarray
507: MUL   1, 1, 2  compute 0 dim
508: ADD   0, 0, 1  add result
509: LDA   1, 0(4)  load fp into ac2
510: LD    1, 0(1)  load upper level fp into ac2
511: LD    1, -4(1)  load local offset into ac2
512: ADD   0, 0, 1  compute final offset
513: LD    0, 0(0)  load data from array
514: LDA   6, -1(6)  push first child's value
515: LDC   3, 45(5)  push first child's value
516: SUB   3, 6, 3  push first child's value
517: JLE   3, 16(5)  push first child's value
518: ST    0, 0(6)  push first child's value
519: LDC   0, 48(5)  load integer 48
520: LD    1, 0(6)  pop first child's value
521: LDA   6, 1(6)  pop first child's value
522: SUB   1, 1, 0  greater than
523: LDC   0, 1(5)  load 1 as true
524: JLT   1, 1(7)  skip load false
525: LDC   0, 0(5)  load 0 as false
526: LDA   6, -1(6)  push first child's value
527: LDC   3, 45(5)  push first child's value
528: SUB   3, 6, 3  push first child's value
529: JLE   3, 16(5)  push first child's value
530: ST    0, 0(6)  push first child's value
532: LDA   1, 0(4)  load fp into ac2
533: LD    0, -1(1)  load int/bool/str from stack
534: LDA   6, -1(6)  push array index
535: LDC   3, 45(5)  push array index
536: SUB   3, 6, 3  push array index
537: JLE   3, 16(5)  push array index
538: ST    0, 0(6)  push array index
539: LDC   0, 1(5)  push array dimension
540: LDC   0, 0(5)  load 0 to ac
541: LD    1, 0(6)  pop index
542: LDA   6, 1(6)  pop index
543: JLT   1, 6(5)  jump if index less than 0
544: LDC   3, 10(5)  load array size
545: SUB   3, 3, 1  sub max size with index
546: JLE   3, 6(5)  jump if index greater than size - 1
547: LDC   2, 1(5)  load size of subarray
548: MUL   1, 1, 2  compute 0 dim
549: ADD   0, 0, 1  add result
550: LDA   1, 0(4)  load fp into ac2
551: LD    1, 0(1)  load upper level fp into ac2
552: LD    1, -4(1)  load local offset into ac2
553: ADD   0, 0, 1  compute final offset
554: LD    0, 0(0)  load data from array
555: LDA   6, -1(6)  push first child's value
556: LDC   3, 45(5)  push first child's value
557: SUB   3, 6, 3  push first child's value
558: JLE   3, 16(5)  push first child's value
559: ST    0, 0(6)  push first child's value
560: LDC   0, 57(5)  load integer 57
561: LD    1, 0(6)  pop first child's value
562: LDA   6, 1(6)  pop first child's value
563: SUB   1, 1, 0  greater than
564: LDC   0, 1(5)  load 1 as true
565: JGT   1, 1(7)  skip load false
566: LDC   0, 0(5)  load 0 as false
567: LD    1, 0(6)  pop first child's value
568: LDA   6, 1(6)  pop first child's value
569: ADD   1, 0, 1  add two children
570: LDC   0, 1(5)  load 1 as true
571: JNE   1, 1(7)  skip load false
572: LDC   0, 0(5)  load 0 as false
531: JNE   0, 41(7)  short circuit
573: JEQ   0, 1(7)  if expr not true
575: LDC   0, 10(5)  load integer 10
576: LDA   6, -1(6)  push first child's value
577: LDC   3, 45(5)  push first child's value
578: SUB   3, 6, 3  push first child's value
579: JLE   3, 16(5)  push first child's value
580: ST    0, 0(6)  push first child's value
581: LDA   1, 0(4)  load fp into ac2
582: LD    1, 0(1)  load upper level fp into ac2
583: LD    0, -2(1)  load int/bool/str from stack
584: LD    1, 0(6)  pop first child's value
585: LDA   6, 1(6)  pop first child's value
586: MUL   0, 0, 1  multiply two children
587: LDA   6, -1(6)  push first child's value
588: LDC   3, 45(5)  push first child's value
589: SUB   3, 6, 3  push first child's value
590: JLE   3, 16(5)  push first child's value
591: ST    0, 0(6)  push first child's value
592: LDA   1, 0(4)  load fp into ac2
593: LD    0, -1(1)  load int/bool/str from stack
594: LDA   6, -1(6)  push array index
595: LDC   3, 45(5)  push array index
596: SUB   3, 6, 3  push array index
597: JLE   3, 16(5)  push array index
598: ST    0, 0(6)  push array index
599: LDC   0, 1(5)  push array dimension
600: LDC   0, 0(5)  load 0 to ac
601: LD    1, 0(6)  pop index
602: LDA   6, 1(6)  pop index
603: JLT   1, 6(5)  jump if index less than 0
604: LDC   3, 10(5)  load array size
605: SUB   3, 3, 1  sub max size with index
606: JLE   3, 6(5)  jump if index greater than size - 1
607: LDC   2, 1(5)  load size of subarray
608: MUL   1, 1, 2  compute 0 dim
609: ADD   0, 0, 1  add result
610: LDA   1, 0(4)  load fp into ac2
611: LD    1, 0(1)  load upper level fp into ac2
612: LD    1, -4(1)  load local offset into ac2
613: ADD   0, 0, 1  compute final offset
614: LD    0, 0(0)  load data from array
615: LD    1, 0(6)  pop first child's value
616: LDA   6, 1(6)  pop first child's value
617: ADD   0, 0, 1  add two children
618: LDA   6, -1(6)  push first child's value
619: LDC   3, 45(5)  push first child's value
620: SUB   3, 6, 3  push first child's value
621: JLE   3, 16(5)  push first child's value
622: ST    0, 0(6)  push first child's value
623: LDC   0, 48(5)  load integer 48
624: LD    1, 0(6)  pop first child's value
625: LDA   6, 1(6)  pop first child's value
626: SUB   0, 1, 0  subtract two children
627: LDA   1, 0(4)  load fp into ac2
628: LD    1, 0(1)  load upper level fp into ac2
629: ST    0, -2(1)  store int/bool/string into stack
630: LD    0, -1(4)  load low into ac
631: LDA   0, 1(0)  decrease low
632: ST    0, -1(4)  save low
633: LDA   7, -147(7)  jump back to loop start
490: JLT   0, 143(7)  jump out of the fa loop
574: LDA   7, 59(7)  break -> jump out of the do loop
634: LDA   6, 0(4)  change sp to fp + 1
635: LD    4, 0(6)  restore fp
636: LDA   6, 1(6)  restore fp
637: LDA   1, 0(4)  load fp into ac2
638: LD    0, -5(1)  load int/bool/str from stack
639: LDA   1, 0(0)  copy AC to AC2
640: LDC   0, 1(5)  load 1 as true
641: JEQ   1, 1(7)  skip load false
642: LDC   0, 0(5)  load 0 as false
644: LDA   1, 0(4)  load fp into ac2
645: LD    0, -2(1)  load int/bool/str from stack
646: LDC   1, 0(5)  load 0 into AC2
647: SUB   0, 1, 0  compute negative number
648: LDA   1, 0(4)  load fp into ac2
649: ST    0, -2(1)  store int/bool/string into stack
643: JEQ   0, 6(7)  if expr not true
87: LDA   7, 562(7)  return procedure call
337: LDA   7, 312(7)  return procedure call
455: LDA   7, 194(7)  return procedure call
650: LD    0, -2(4)  load int/bool/string offset as return value
651: LD    1, -1(4)  load return address
652: LDA   6, 0(4)  change sp to fp + 1
653: LD    4, 0(6)  restore fp
654: LDA   6, 1(6)  restore fp
655: LDA   7, 0(1)  jump to the return address
5: LDA   7, 656(5)  jump to start of the program
656: LDC   0, 0(5)  load integer 0
657: LDA   6, -1(6)  push array index
658: LDC   3, 45(5)  push array index
659: SUB   3, 6, 3  push array index
660: JLE   3, 16(5)  push array index
661: ST    0, 0(6)  push array index
662: LDC   0, 1(5)  push array dimension
663: LDC   0, 0(5)  load 0 to ac
664: LD    1, 0(6)  pop index
665: LDA   6, 1(6)  pop index
666: JLT   1, 6(5)  jump if index less than 0
667: LDC   3, 10(5)  load array size
668: SUB   3, 3, 1  sub max size with index
669: JLE   3, 6(5)  jump if index greater than size - 1
670: LDC   2, 1(5)  load size of subarray
671: MUL   1, 1, 2  compute 0 dim
672: ADD   0, 0, 1  add result
673: LD    1, 34(5)  load offset into ac2
674: ADD   0, 0, 1  compute final offset
675: LDA   6, -1(6)  push final offset
676: LDC   3, 45(5)  push final offset
677: SUB   3, 6, 3  push final offset
678: JLE   3, 16(5)  push final offset
679: ST    0, 0(6)  push final offset
680: LDC   0, 32(5)  load integer 32
681: LD    1, 0(6)  pop final offset
682: LDA   6, 1(6)  pop final offset
683: ST    0, 0(1)  store value into array static data
684: LDC   0, 1(5)  load integer 1
685: LDA   6, -1(6)  push array index
686: LDC   3, 45(5)  push array index
687: SUB   3, 6, 3  push array index
688: JLE   3, 16(5)  push array index
689: ST    0, 0(6)  push array index
690: LDC   0, 1(5)  push array dimension
691: LDC   0, 0(5)  load 0 to ac
692: LD    1, 0(6)  pop index
693: LDA   6, 1(6)  pop index
694: JLT   1, 6(5)  jump if index less than 0
695: LDC   3, 10(5)  load array size
696: SUB   3, 3, 1  sub max size with index
697: JLE   3, 6(5)  jump if index greater than size - 1
698: LDC   2, 1(5)  load size of subarray
699: MUL   1, 1, 2  compute 0 dim
700: ADD   0, 0, 1  add result
701: LD    1, 34(5)  load offset into ac2
702: ADD   0, 0, 1  compute final offset
703: LDA   6, -1(6)  push final offset
704: LDC   3, 45(5)  push final offset
705: SUB   3, 6, 3  push final offset
706: JLE   3, 16(5)  push final offset
707: ST    0, 0(6)  push final offset
708: LDC   0, 45(5)  load integer 45
709: LD    1, 0(6)  pop final offset
710: LDA   6, 1(6)  pop final offset
711: ST    0, 0(1)  store value into array static data
712: LDC   0, 2(5)  load integer 2
713: LDA   6, -1(6)  push array index
714: LDC   3, 45(5)  push array index
715: SUB   3, 6, 3  push array index
716: JLE   3, 16(5)  push array index
717: ST    0, 0(6)  push array index
718: LDC   0, 1(5)  push array dimension
719: LDC   0, 0(5)  load 0 to ac
720: LD    1, 0(6)  pop index
721: LDA   6, 1(6)  pop index
722: JLT   1, 6(5)  jump if index less than 0
723: LDC   3, 10(5)  load array size
724: SUB   3, 3, 1  sub max size with index
725: JLE   3, 6(5)  jump if index greater than size - 1
726: LDC   2, 1(5)  load size of subarray
727: MUL   1, 1, 2  compute 0 dim
728: ADD   0, 0, 1  add result
729: LD    1, 34(5)  load offset into ac2
730: ADD   0, 0, 1  compute final offset
731: LDA   6, -1(6)  push final offset
732: LDC   3, 45(5)  push final offset
733: SUB   3, 6, 3  push final offset
734: JLE   3, 16(5)  push final offset
735: ST    0, 0(6)  push final offset
736: LDC   0, 49(5)  load integer 49
737: LD    1, 0(6)  pop final offset
738: LDA   6, 1(6)  pop final offset
739: ST    0, 0(1)  store value into array static data
740: LDC   0, 3(5)  load integer 3
741: LDA   6, -1(6)  push array index
742: LDC   3, 45(5)  push array index
743: SUB   3, 6, 3  push array index
744: JLE   3, 16(5)  push array index
745: ST    0, 0(6)  push array index
746: LDC   0, 1(5)  push array dimension
747: LDC   0, 0(5)  load 0 to ac
748: LD    1, 0(6)  pop index
749: LDA   6, 1(6)  pop index
750: JLT   1, 6(5)  jump if index less than 0
751: LDC   3, 10(5)  load array size
752: SUB   3, 3, 1  sub max size with index
753: JLE   3, 6(5)  jump if index greater than size - 1
754: LDC   2, 1(5)  load size of subarray
755: MUL   1, 1, 2  compute 0 dim
756: ADD   0, 0, 1  add result
757: LD    1, 34(5)  load offset into ac2
758: ADD   0, 0, 1  compute final offset
759: LDA   6, -1(6)  push final offset
760: LDC   3, 45(5)  push final offset
761: SUB   3, 6, 3  push final offset
762: JLE   3, 16(5)  push final offset
763: ST    0, 0(6)  push final offset
764: LDC   0, 48(5)  load integer 48
765: LD    1, 0(6)  pop final offset
766: LDA   6, 1(6)  pop final offset
767: ST    0, 0(1)  store value into array static data
768: LDC   0, 4(5)  load integer 4
769: LDA   6, -1(6)  push array index
770: LDC   3, 45(5)  push array index
771: SUB   3, 6, 3  push array index
772: JLE   3, 16(5)  push array index
773: ST    0, 0(6)  push array index
774: LDC   0, 1(5)  push array dimension
775: LDC   0, 0(5)  load 0 to ac
776: LD    1, 0(6)  pop index
777: LDA   6, 1(6)  pop index
778: JLT   1, 6(5)  jump if index less than 0
779: LDC   3, 10(5)  load array size
780: SUB   3, 3, 1  sub max size with index
781: JLE   3, 6(5)  jump if index greater than size - 1
782: LDC   2, 1(5)  load size of subarray
783: MUL   1, 1, 2  compute 0 dim
784: ADD   0, 0, 1  add result
785: LD    1, 34(5)  load offset into ac2
786: ADD   0, 0, 1  compute final offset
787: LDA   6, -1(6)  push final offset
788: LDC   3, 45(5)  push final offset
789: SUB   3, 6, 3  push final offset
790: JLE   3, 16(5)  push final offset
791: ST    0, 0(6)  push final offset
792: LDC   0, 32(5)  load integer 32
793: LD    1, 0(6)  pop final offset
794: LDA   6, 1(6)  pop final offset
795: ST    0, 0(1)  store value into array static data
796: LDC   0, 5(5)  load integer 5
797: LDA   6, -1(6)  push array index
798: LDC   3, 45(5)  push array index
799: SUB   3, 6, 3  push array index
800: JLE   3, 16(5)  push array index
801: ST    0, 0(6)  push array index
802: LDC   0, 1(5)  push array dimension
803: LDC   0, 0(5)  load 0 to ac
804: LD    1, 0(6)  pop index
805: LDA   6, 1(6)  pop index
806: JLT   1, 6(5)  jump if index less than 0
807: LDC   3, 10(5)  load array size
808: SUB   3, 3, 1  sub max size with index
809: JLE   3, 6(5)  jump if index greater than size - 1
810: LDC   2, 1(5)  load size of subarray
811: MUL   1, 1, 2  compute 0 dim
812: ADD   0, 0, 1  add result
813: LD    1, 34(5)  load offset into ac2
814: ADD   0, 0, 1  compute final offset
815: LDA   6, -1(6)  push final offset
816: LDC   3, 45(5)  push final offset
817: SUB   3, 6, 3  push final offset
818: JLE   3, 16(5)  push final offset
819: ST    0, 0(6)  push final offset
820: LDC   0, 49(5)  load integer 49
821: LD    1, 0(6)  pop final offset
822: LDA   6, 1(6)  pop final offset
823: ST    0, 0(1)  store value into array static data
824: LDA   6, -1(6)  push fp
825: LDC   3, 45(5)  push fp
826: SUB   3, 6, 3  push fp
827: JLE   3, 16(5)  push fp
828: ST    4, 0(6)  push fp
829: LDA   4, 0(6)  set fp to sp
836: LDA   6, -1(6)  push zero as return value
837: LDC   3, 45(5)  push zero as return value
838: SUB   3, 6, 3  push zero as return value
839: JLE   3, 16(5)  push zero as return value
840: ST    5, 0(6)  push zero as return value
841: LDC   0, 5(5)  load integer 5
842: LDA   6, -1(6)  push int/bool/str parameter
843: LDC   3, 45(5)  push int/bool/str parameter
844: SUB   3, 6, 3  push int/bool/str parameter
845: JLE   3, 16(5)  push int/bool/str parameter
846: ST    0, 0(6)  push int/bool/str parameter
847: LDC   0, 1(5)  push array dimension
848: LDC   0, 0(5)  load 0 to ac
849: LD    1, 34(5)  load global offset into ac2
850: ADD   0, 0, 1  compute final offset
851: LDA   6, -1(6)  push array parameter
852: LDC   3, 45(5)  push array parameter
853: SUB   3, 6, 3  push array parameter
854: JLE   3, 16(5)  push array parameter
855: ST    0, 0(6)  push array parameter
856: LDA   6, -3(6)  preserve space for local vars
857: LDA   7, 66(5)  jump to procedure call
830: LDC   0, 858(5)  load return address into ac
831: LDA   6, -1(6)  push return address
832: LDC   3, 45(5)  push return address
833: SUB   3, 6, 3  push return address
834: JLE   3, 16(5)  push return address
835: ST    0, 0(6)  push return address
858: OUT   0, 0, 0  write integer
859: OUTNL 0, 0, 0  write new line
860: LDC   0, 0(5)  load integer 0
861: LDA   6, -1(6)  push array index
862: LDC   3, 45(5)  push array index
863: SUB   3, 6, 3  push array index
864: JLE   3, 16(5)  push array index
865: ST    0, 0(6)  push array index
866: LDC   0, 1(5)  push array dimension
867: LDC   0, 0(5)  load 0 to ac
868: LD    1, 0(6)  pop index
869: LDA   6, 1(6)  pop index
870: JLT   1, 6(5)  jump if index less than 0
871: LDC   3, 10(5)  load array size
872: SUB   3, 3, 1  sub max size with index
873: JLE   3, 6(5)  jump if index greater than size - 1
874: LDC   2, 1(5)  load size of subarray
875: MUL   1, 1, 2  compute 0 dim
876: ADD   0, 0, 1  add result
877: LD    1, 34(5)  load offset into ac2
878: ADD   0, 0, 1  compute final offset
879: LDA   6, -1(6)  push final offset
880: LDC   3, 45(5)  push final offset
881: SUB   3, 6, 3  push final offset
882: JLE   3, 16(5)  push final offset
883: ST    0, 0(6)  push final offset
884: LDC   0, 49(5)  load integer 49
885: LD    1, 0(6)  pop final offset
886: LDA   6, 1(6)  pop final offset
887: ST    0, 0(1)  store value into array static data
888: LDC   0, 1(5)  load integer 1
889: LDA   6, -1(6)  push array index
890: LDC   3, 45(5)  push array index
891: SUB   3, 6, 3  push array index
892: JLE   3, 16(5)  push array index
893: ST    0, 0(6)  push array index
894: LDC   0, 1(5)  push array dimension
895: LDC   0, 0(5)  load 0 to ac
896: LD    1, 0(6)  pop index
897: LDA   6, 1(6)  pop index
898: JLT   1, 6(5)  jump if index less than 0
899: LDC   3, 10(5)  load array size
900: SUB   3, 3, 1  sub max size with index
901: JLE   3, 6(5)  jump if index greater than size - 1
902: LDC   2, 1(5)  load size of subarray
903: MUL   1, 1, 2  compute 0 dim
904: ADD   0, 0, 1  add result
905: LD    1, 34(5)  load offset into ac2
906: ADD   0, 0, 1  compute final offset
907: LDA   6, -1(6)  push final offset
908: LDC   3, 45(5)  push final offset
909: SUB   3, 6, 3  push final offset
910: JLE   3, 16(5)  push final offset
911: ST    0, 0(6)  push final offset
912: LDC   0, 48(5)  load integer 48
913: LD    1, 0(6)  pop final offset
914: LDA   6, 1(6)  pop final offset
915: ST    0, 0(1)  store value into array static data
916: LDC   0, 2(5)  load integer 2
917: LDA   6, -1(6)  push array index
918: LDC   3, 45(5)  push array index
919: SUB   3, 6, 3  push array index
920: JLE   3, 16(5)  push array index
921: ST    0, 0(6)  push array index
922: LDC   0, 1(5)  push array dimension
923: LDC   0, 0(5)  load 0 to ac
924: LD    1, 0(6)  pop index
925: LDA   6, 1(6)  pop index
926: JLT   1, 6(5)  jump if index less than 0
927: LDC   3, 10(5)  load array size
928: SUB   3, 3, 1  sub max size with index
929: JLE   3, 6(5)  jump if index greater than size - 1
930: LDC   2, 1(5)  load size of subarray
931: MUL   1, 1, 2  compute 0 dim
932: ADD   0, 0, 1  add result
933: LD    1, 34(5)  load offset into ac2
934: ADD   0, 0, 1  compute final offset
935: LDA   6, -1(6)  push final offset
936: LDC   3, 45(5)  push final offset
937: SUB   3, 6, 3  push final offset
938: JLE   3, 16(5)  push final offset
939: ST    0, 0(6)  push final offset
940: LDC   0, 49(5)  load integer 49
941: LD    1, 0(6)  pop final offset
942: LDA   6, 1(6)  pop final offset
943: ST    0, 0(1)  store value into array static data
944: LDA   6, -1(6)  push fp
945: LDC   3, 45(5)  push fp
946: SUB   3, 6, 3  push fp
947: JLE   3, 16(5)  push fp
948: ST    4, 0(6)  push fp
949: LDA   4, 0(6)  set fp to sp
956: LDA   6, -1(6)  push zero as return value
957: LDC   3, 45(5)  push zero as return value
958: SUB   3, 6, 3  push zero as return value
959: JLE   3, 16(5)  push zero as return value
960: ST    5, 0(6)  push zero as return value
961: LDC   0, 2(5)  load integer 2
962: LDA   6, -1(6)  push int/bool/str parameter
963: LDC   3, 45(5)  push int/bool/str parameter
964: SUB   3, 6, 3  push int/bool/str parameter
965: JLE   3, 16(5)  push int/bool/str parameter
966: ST    0, 0(6)  push int/bool/str parameter
967: LDC   0, 1(5)  push array dimension
968: LDC   0, 0(5)  load 0 to ac
969: LD    1, 34(5)  load global offset into ac2
970: ADD   0, 0, 1  compute final offset
971: LDA   6, -1(6)  push array parameter
972: LDC   3, 45(5)  push array parameter
973: SUB   3, 6, 3  push array parameter
974: JLE   3, 16(5)  push array parameter
975: ST    0, 0(6)  push array parameter
976: LDA   6, -3(6)  preserve space for local vars
977: LDA   7, 66(5)  jump to procedure call
950: LDC   0, 978(5)  load return address into ac
951: LDA   6, -1(6)  push return address
952: LDC   3, 45(5)  push return address
953: SUB   3, 6, 3  push return address
954: JLE   3, 16(5)  push return address
955: ST    0, 0(6)  push return address
978: OUT   0, 0, 0  write integer
979: OUTNL 0, 0, 0  write new line
980: LDC   0, 0(5)  load integer 0
981: LDA   6, -1(6)  push array index
982: LDC   3, 45(5)  push array index
983: SUB   3, 6, 3  push array index
984: JLE   3, 16(5)  push array index
985: ST    0, 0(6)  push array index
986: LDC   0, 1(5)  push array dimension
987: LDC   0, 0(5)  load 0 to ac
988: LD    1, 0(6)  pop index
989: LDA   6, 1(6)  pop index
990: JLT   1, 6(5)  jump if index less than 0
991: LDC   3, 10(5)  load array size
992: SUB   3, 3, 1  sub max size with index
993: JLE   3, 6(5)  jump if index greater than size - 1
994: LDC   2, 1(5)  load size of subarray
995: MUL   1, 1, 2  compute 0 dim
996: ADD   0, 0, 1  add result
997: LD    1, 34(5)  load offset into ac2
998: ADD   0, 0, 1  compute final offset
999: LDA   6, -1(6)  push final offset
1000: LDC   3, 45(5)  push final offset
1001: SUB   3, 6, 3  push final offset
1002: JLE   3, 16(5)  push final offset
1003: ST    0, 0(6)  push final offset
1004: LDC   0, 49(5)  load integer 49
1005: LD    1, 0(6)  pop final offset
1006: LDA   6, 1(6)  pop final offset
1007: ST    0, 0(1)  store value into array static data
1008: LDC   0, 1(5)  load integer 1
1009: LDA   6, -1(6)  push array index
1010: LDC   3, 45(5)  push array index
1011: SUB   3, 6, 3  push array index
1012: JLE   3, 16(5)  push array index
1013: ST    0, 0(6)  push array index
1014: LDC   0, 1(5)  push array dimension
1015: LDC   0, 0(5)  load 0 to ac
1016: LD    1, 0(6)  pop index
1017: LDA   6, 1(6)  pop index
1018: JLT   1, 6(5)  jump if index less than 0
1019: LDC   3, 10(5)  load array size
1020: SUB   3, 3, 1  sub max size with index
1021: JLE   3, 6(5)  jump if index greater than size - 1
1022: LDC   2, 1(5)  load size of subarray
1023: MUL   1, 1, 2  compute 0 dim
1024: ADD   0, 0, 1  add result
1025: LD    1, 34(5)  load offset into ac2
1026: ADD   0, 0, 1  compute final offset
1027: LDA   6, -1(6)  push final offset
1028: LDC   3, 45(5)  push final offset
1029: SUB   3, 6, 3  push final offset
1030: JLE   3, 16(5)  push final offset
1031: ST    0, 0(6)  push final offset
1032: LDC   0, 48(5)  load integer 48
1033: LD    1, 0(6)  pop final offset
1034: LDA   6, 1(6)  pop final offset
1035: ST    0, 0(1)  store value into array static data
1036: LDC   0, 2(5)  load integer 2
1037: LDA   6, -1(6)  push array index
1038: LDC   3, 45(5)  push array index
1039: SUB   3, 6, 3  push array index
1040: JLE   3, 16(5)  push array index
1041: ST    0, 0(6)  push array index
1042: LDC   0, 1(5)  push array dimension
1043: LDC   0, 0(5)  load 0 to ac
1044: LD    1, 0(6)  pop index
1045: LDA   6, 1(6)  pop index
1046: JLT   1, 6(5)  jump if index less than 0
1047: LDC   3, 10(5)  load array size
1048: SUB   3, 3, 1  sub max size with index
1049: JLE   3, 6(5)  jump if index greater than size - 1
1050: LDC   2, 1(5)  load size of subarray
1051: MUL   1, 1, 2  compute 0 dim
1052: ADD   0, 0, 1  add result
1053: LD    1, 34(5)  load offset into ac2
1054: ADD   0, 0, 1  compute final offset
1055: LDA   6, -1(6)  push final offset
1056: LDC   3, 45(5)  push final offset
1057: SUB   3, 6, 3  push final offset
1058: JLE   3, 16(5)  push final offset
1059: ST    0, 0(6)  push final offset
1060: LDC   0, 32(5)  load integer 32
1061: LD    1, 0(6)  pop final offset
1062: LDA   6, 1(6)  pop final offset
1063: ST    0, 0(1)  store value into array static data
1064: LDC   0, 3(5)  load integer 3
1065: LDA   6, -1(6)  push array index
1066: LDC   3, 45(5)  push array index
1067: SUB   3, 6, 3  push array index
1068: JLE   3, 16(5)  push array index
1069: ST    0, 0(6)  push array index
1070: LDC   0, 1(5)  push array dimension
1071: LDC   0, 0(5)  load 0 to ac
1072: LD    1, 0(6)  pop index
1073: LDA   6, 1(6)  pop index
1074: JLT   1, 6(5)  jump if index less than 0
1075: LDC   3, 10(5)  load array size
1076: SUB   3, 3, 1  sub max size with index
1077: JLE   3, 6(5)  jump if index greater than size - 1
1078: LDC   2, 1(5)  load size of subarray
1079: MUL   1, 1, 2  compute 0 dim
1080: ADD   0, 0, 1  add result
1081: LD    1, 34(5)  load offset into ac2
1082: ADD   0, 0, 1  compute final offset
1083: LDA   6, -1(6)  push final offset
1084: LDC   3, 45(5)  push final offset
1085: SUB   3, 6, 3  push final offset
1086: JLE   3, 16(5)  push final offset
1087: ST    0, 0(6)  push final offset
1088: LDC   0, 49(5)  load integer 49
1089: LD    1, 0(6)  pop final offset
1090: LDA   6, 1(6)  pop final offset
1091: ST    0, 0(1)  store value into array static data
1092: LDA   6, -1(6)  push fp
1093: LDC   3, 45(5)  push fp
1094: SUB   3, 6, 3  push fp
1095: JLE   3, 16(5)  push fp
1096: ST    4, 0(6)  push fp
1097: LDA   4, 0(6)  set fp to sp
1104: LDA   6, -1(6)  push zero as return value
1105: LDC   3, 45(5)  push zero as return value
1106: SUB   3, 6, 3  push zero as return value
1107: JLE   3, 16(5)  push zero as return value
1108: ST    5, 0(6)  push zero as return value
1109: LDC   0, 3(5)  load integer 3
1110: LDA   6, -1(6)  push int/bool/str parameter
1111: LDC   3, 45(5)  push int/bool/str parameter
1112: SUB   3, 6, 3  push int/bool/str parameter
1113: JLE   3, 16(5)  push int/bool/str parameter
1114: ST    0, 0(6)  push int/bool/str parameter
1115: LDC   0, 1(5)  push array dimension
1116: LDC   0, 0(5)  load 0 to ac
1117: LD    1, 34(5)  load global offset into ac2
1118: ADD   0, 0, 1  compute final offset
1119: LDA   6, -1(6)  push array parameter
1120: LDC   3, 45(5)  push array parameter
1121: SUB   3, 6, 3  push array parameter
1122: JLE   3, 16(5)  push array parameter
1123: ST    0, 0(6)  push array parameter
1124: LDA   6, -3(6)  preserve space for local vars
1125: LDA   7, 66(5)  jump to procedure call
1098: LDC   0, 1126(5)  load return address into ac
1099: LDA   6, -1(6)  push return address
1100: LDC   3, 45(5)  push return address
1101: SUB   3, 6, 3  push return address
1102: JLE   3, 16(5)  push return address
1103: ST    0, 0(6)  push return address
1126: OUT   0, 0, 0  write integer
1127: OUTNL 0, 0, 0  write new line
1128: LDC   0, 0(5)  load integer 0
1129: LDA   6, -1(6)  push array index
1130: LDC   3, 45(5)  push array index
1131: SUB   3, 6, 3  push array index
1132: JLE   3, 16(5)  push array index
1133: ST    0, 0(6)  push array index
1134: LDC   0, 1(5)  push array dimension
1135: LDC   0, 0(5)  load 0 to ac
1136: LD    1, 0(6)  pop index
1137: LDA   6, 1(6)  pop index
1138: JLT   1, 6(5)  jump if index less than 0
1139: LDC   3, 10(5)  load array size
1140: SUB   3, 3, 1  sub max size with index
1141: JLE   3, 6(5)  jump if index greater than size - 1
1142: LDC   2, 1(5)  load size of subarray
1143: MUL   1, 1, 2  compute 0 dim
1144: ADD   0, 0, 1  add result
1145: LD    1, 34(5)  load offset into ac2
1146: ADD   0, 0, 1  compute final offset
1147: LDA   6, -1(6)  push final offset
1148: LDC   3, 45(5)  push final offset
1149: SUB   3, 6, 3  push final offset
1150: JLE   3, 16(5)  push final offset
1151: ST    0, 0(6)  push final offset
1152: LDC   0, 49(5)  load integer 49
1153: LD    1, 0(6)  pop final offset
1154: LDA   6, 1(6)  pop final offset
1155: ST    0, 0(1)  store value into array static data
1156: LDC   0, 1(5)  load integer 1
1157: LDA   6, -1(6)  push array index
1158: LDC   3, 45(5)  push array index
1159: SUB   3, 6, 3  push array index
1160: JLE   3, 16(5)  push array index
1161: ST    0, 0(6)  push array index
1162: LDC   0, 1(5)  push array dimension
1163: LDC   0, 0(5)  load 0 to ac
1164: LD    1, 0(6)  pop index
1165: LDA   6, 1(6)  pop index
1166: JLT   1, 6(5)  jump if index less than 0
1167: LDC   3, 10(5)  load array size
1168: SUB   3, 3, 1  sub max size with index
1169: JLE   3, 6(5)  jump if index greater than size - 1
1170: LDC   2, 1(5)  load size of subarray
1171: MUL   1, 1, 2  compute 0 dim
1172: ADD   0, 0, 1  add result
1173: LD    1, 34(5)  load offset into ac2
1174: ADD   0, 0, 1  compute final offset
1175: LDA   6, -1(6)  push final offset
1176: LDC   3, 45(5)  push final offset
1177: SUB   3, 6, 3  push final offset
1178: JLE   3, 16(5)  push final offset
1179: ST    0, 0(6)  push final offset
1180: LDC   0, 45(5)  load integer 45
1181: LD    1, 0(6)  pop final offset
1182: LDA   6, 1(6)  pop final offset
1183: ST    0, 0(1)  store value into array static data
1184: LDC   0, 2(5)  load integer 2
1185: LDA   6, -1(6)  push array index
1186: LDC   3, 45(5)  push array index
1187: SUB   3, 6, 3  push array index
1188: JLE   3, 16(5)  push array index
1189: ST    0, 0(6)  push array index
1190: LDC   0, 1(5)  push array dimension
1191: LDC   0, 0(5)  load 0 to ac
1192: LD    1, 0(6)  pop index
1193: LDA   6, 1(6)  pop index
1194: JLT   1, 6(5)  jump if index less than 0
1195: LDC   3, 10(5)  load array size
1196: SUB   3, 3, 1  sub max size with index
1197: JLE   3, 6(5)  jump if index greater than size - 1
1198: LDC   2, 1(5)  load size of subarray
1199: MUL   1, 1, 2  compute 0 dim
1200: ADD   0, 0, 1  add result
1201: LD    1, 34(5)  load offset into ac2
1202: ADD   0, 0, 1  compute final offset
1203: LDA   6, -1(6)  push final offset
1204: LDC   3, 45(5)  push final offset
1205: SUB   3, 6, 3  push final offset
1206: JLE   3, 16(5)  push final offset
1207: ST    0, 0(6)  push final offset
1208: LDC   0, 48(5)  load integer 48
1209: LD    1, 0(6)  pop final offset
1210: LDA   6, 1(6)  pop final offset
1211: ST    0, 0(1)  store value into array static data
1212: LDC   0, 3(5)  load integer 3
1213: LDA   6, -1(6)  push array index
1214: LDC   3, 45(5)  push array index
1215: SUB   3, 6, 3  push array index
1216: JLE   3, 16(5)  push array index
1217: ST    0, 0(6)  push array index
1218: LDC   0, 1(5)  push array dimension
1219: LDC   0, 0(5)  load 0 to ac
1220: LD    1, 0(6)  pop index
1221: LDA   6, 1(6)  pop index
1222: JLT   1, 6(5)  jump if index less than 0
1223: LDC   3, 10(5)  load array size
1224: SUB   3, 3, 1  sub max size with index
1225: JLE   3, 6(5)  jump if index greater than size - 1
1226: LDC   2, 1(5)  load size of subarray
1227: MUL   1, 1, 2  compute 0 dim
1228: ADD   0, 0, 1  add result
1229: LD    1, 34(5)  load offset into ac2
1230: ADD   0, 0, 1  compute final offset
1231: LDA   6, -1(6)  push final offset
1232: LDC   3, 45(5)  push final offset
1233: SUB   3, 6, 3  push final offset
1234: JLE   3, 16(5)  push final offset
1235: ST    0, 0(6)  push final offset
1236: LDC   0, 49(5)  load integer 49
1237: LD    1, 0(6)  pop final offset
1238: LDA   6, 1(6)  pop final offset
1239: ST    0, 0(1)  store value into array static data
1240: LDA   6, -1(6)  push fp
1241: LDC   3, 45(5)  push fp
1242: SUB   3, 6, 3  push fp
1243: JLE   3, 16(5)  push fp
1244: ST    4, 0(6)  push fp
1245: LDA   4, 0(6)  set fp to sp
1252: LDA   6, -1(6)  push zero as return value
1253: LDC   3, 45(5)  push zero as return value
1254: SUB   3, 6, 3  push zero as return value
1255: JLE   3, 16(5)  push zero as return value
1256: ST    5, 0(6)  push zero as return value
1257: LDC   0, 3(5)  load integer 3
1258: LDA   6, -1(6)  push int/bool/str parameter
1259: LDC   3, 45(5)  push int/bool/str parameter
1260: SUB   3, 6, 3  push int/bool/str parameter
1261: JLE   3, 16(5)  push int/bool/str parameter
1262: ST    0, 0(6)  push int/bool/str parameter
1263: LDC   0, 1(5)  push array dimension
1264: LDC   0, 0(5)  load 0 to ac
1265: LD    1, 34(5)  load global offset into ac2
1266: ADD   0, 0, 1  compute final offset
1267: LDA   6, -1(6)  push array parameter
1268: LDC   3, 45(5)  push array parameter
1269: SUB   3, 6, 3  push array parameter
1270: JLE   3, 16(5)  push array parameter
1271: ST    0, 0(6)  push array parameter
1272: LDA   6, -3(6)  preserve space for local vars
1273: LDA   7, 66(5)  jump to procedure call
1246: LDC   0, 1274(5)  load return address into ac
1247: LDA   6, -1(6)  push return address
1248: LDC   3, 45(5)  push return address
1249: SUB   3, 6, 3  push return address
1250: JLE   3, 16(5)  push return address
1251: ST    0, 0(6)  push return address
1274: OUT   0, 0, 0  write integer
1275: OUTNL 0, 0, 0  write new line
1276: LDA   6, -1(6)  push fp
1277: LDC   3, 45(5)  push fp
1278: SUB   3, 6, 3  push fp
1279: JLE   3, 16(5)  push fp
1280: ST    4, 0(6)  push fp
1281: LDA   4, 0(6)  set fp to sp
1288: LDA   6, -1(6)  push zero as return value
1289: LDC   3, 45(5)  push zero as return value
1290: SUB   3, 6, 3  push zero as return value
1291: JLE   3, 16(5)  push zero as return value
1292: ST    5, 0(6)  push zero as return value
1293: LDC   0, 0(5)  load integer 0
1294: LDA   6, -1(6)  push int/bool/str parameter
1295: LDC   3, 45(5)  push int/bool/str parameter
1296: SUB   3, 6, 3  push int/bool/str parameter
1297: JLE   3, 16(5)  push int/bool/str parameter
1298: ST    0, 0(6)  push int/bool/str parameter
1299: LDC   0, 1(5)  push array dimension
1300: LDC   0, 0(5)  load 0 to ac
1301: LD    1, 34(5)  load global offset into ac2
1302: ADD   0, 0, 1  compute final offset
1303: LDA   6, -1(6)  push array parameter
1304: LDC   3, 45(5)  push array parameter
1305: SUB   3, 6, 3  push array parameter
1306: JLE   3, 16(5)  push array parameter
1307: ST    0, 0(6)  push array parameter
1308: LDA   6, -3(6)  preserve space for local vars
1309: LDA   7, 66(5)  jump to procedure call
1282: LDC   0, 1310(5)  load return address into ac
1283: LDA   6, -1(6)  push return address
1284: LDC   3, 45(5)  push return address
1285: SUB   3, 6, 3  push return address
1286: JLE   3, 16(5)  push return address
1287: ST    0, 0(6)  push return address
1310: OUT   0, 0, 0  write integer
1311: OUTNL 0, 0, 0  write new line
1312: LDC   0, 0(5)  load integer 0
1313: LDA   6, -1(6)  push array index
1314: LDC   3, 45(5)  push array index
1315: SUB   3, 6, 3  push array index
1316: JLE   3, 16(5)  push array index
1317: ST    0, 0(6)  push array index
1318: LDC   0, 1(5)  push array dimension
1319: LDC   0, 0(5)  load 0 to ac
1320: LD    1, 0(6)  pop index
1321: LDA   6, 1(6)  pop index
1322: JLT   1, 6(5)  jump if index less than 0
1323: LDC   3, 10(5)  load array size
1324: SUB   3, 3, 1  sub max size with index
1325: JLE   3, 6(5)  jump if index greater than size - 1
1326: LDC   2, 1(5)  load size of subarray
1327: MUL   1, 1, 2  compute 0 dim
1328: ADD   0, 0, 1  add result
1329: LD    1, 34(5)  load offset into ac2
1330: ADD   0, 0, 1  compute final offset
1331: LDA   6, -1(6)  push final offset
1332: LDC   3, 45(5)  push final offset
1333: SUB   3, 6, 3  push final offset
1334: JLE   3, 16(5)  push final offset
1335: ST    0, 0(6)  push final offset
1336: LDC   0, 45(5)  load integer 45
1337: LD    1, 0(6)  pop final offset
1338: LDA   6, 1(6)  pop final offset
1339: ST    0, 0(1)  store value into array static data
1340: LDC   0, 1(5)  load integer 1
1341: LDA   6, -1(6)  push array index
1342: LDC   3, 45(5)  push array index
1343: SUB   3, 6, 3  push array index
1344: JLE   3, 16(5)  push array index
1345: ST    0, 0(6)  push array index
1346: LDC   0, 1(5)  push array dimension
1347: LDC   0, 0(5)  load 0 to ac
1348: LD    1, 0(6)  pop index
1349: LDA   6, 1(6)  pop index
1350: JLT   1, 6(5)  jump if index less than 0
1351: LDC   3, 10(5)  load array size
1352: SUB   3, 3, 1  sub max size with index
1353: JLE   3, 6(5)  jump if index greater than size - 1
1354: LDC   2, 1(5)  load size of subarray
1355: MUL   1, 1, 2  compute 0 dim
1356: ADD   0, 0, 1  add result
1357: LD    1, 34(5)  load offset into ac2
1358: ADD   0, 0, 1  compute final offset
1359: LDA   6, -1(6)  push final offset
1360: LDC   3, 45(5)  push final offset
1361: SUB   3, 6, 3  push final offset
1362: JLE   3, 16(5)  push final offset
1363: ST    0, 0(6)  push final offset
1364: LDC   0, 49(5)  load integer 49
1365: LD    1, 0(6)  pop final offset
1366: LDA   6, 1(6)  pop final offset
1367: ST    0, 0(1)  store value into array static data
1368: LDA   6, -1(6)  push fp
1369: LDC   3, 45(5)  push fp
1370: SUB   3, 6, 3  push fp
1371: JLE   3, 16(5)  push fp
1372: ST    4, 0(6)  push fp
1373: LDA   4, 0(6)  set fp to sp
1380: LDA   6, -1(6)  push zero as return value
1381: LDC   3, 45(5)  push zero as return value
1382: SUB   3, 6, 3  push zero as return value
1383: JLE   3, 16(5)  push zero as return value
1384: ST    5, 0(6)  push zero as return value
1385: LDC   0, 1(5)  load integer 1
1386: LDA   6, -1(6)  push int/bool/str parameter
1387: LDC   3, 45(5)  push int/bool/str parameter
1388: SUB   3, 6, 3  push int/bool/str parameter
1389: JLE   3, 16(5)  push int/bool/str parameter
1390: ST    0, 0(6)  push int/bool/str parameter
1391: LDC   0, 1(5)  push array dimension
1392: LDC   0, 0(5)  load 0 to ac
1393: LD    1, 34(5)  load global offset into ac2
1394: ADD   0, 0, 1  compute final offset
1395: LDA   6, -1(6)  push array parameter
1396: LDC   3, 45(5)  push array parameter
1397: SUB   3, 6, 3  push array parameter
1398: JLE   3, 16(5)  push array parameter
1399: ST    0, 0(6)  push array parameter
1400: LDA   6, -3(6)  preserve space for local vars
1401: LDA   7, 66(5)  jump to procedure call
1374: LDC   0, 1402(5)  load return address into ac
1375: LDA   6, -1(6)  push return address
1376: LDC   3, 45(5)  push return address
1377: SUB   3, 6, 3  push return address
1378: JLE   3, 16(5)  push return address
1379: ST    0, 0(6)  push return address
1402: OUT   0, 0, 0  write integer
1403: OUTNL 0, 0, 0  write new line
1404: LDC   0, 0(5)  load integer 0
1405: LDA   6, -1(6)  push array index
1406: LDC   3, 45(5)  push array index
1407: SUB   3, 6, 3  push array index
1408: JLE   3, 16(5)  push array index
1409: ST    0, 0(6)  push array index
1410: LDC   0, 1(5)  push array dimension
1411: LDC   0, 0(5)  load 0 to ac
1412: LD    1, 0(6)  pop index
1413: LDA   6, 1(6)  pop index
1414: JLT   1, 6(5)  jump if index less than 0
1415: LDC   3, 10(5)  load array size
1416: SUB   3, 3, 1  sub max size with index
1417: JLE   3, 6(5)  jump if index greater than size - 1
1418: LDC   2, 1(5)  load size of subarray
1419: MUL   1, 1, 2  compute 0 dim
1420: ADD   0, 0, 1  add result
1421: LD    1, 34(5)  load offset into ac2
1422: ADD   0, 0, 1  compute final offset
1423: LDA   6, -1(6)  push final offset
1424: LDC   3, 45(5)  push final offset
1425: SUB   3, 6, 3  push final offset
1426: JLE   3, 16(5)  push final offset
1427: ST    0, 0(6)  push final offset
1428: LDC   0, 97(5)  load integer 97
1429: LD    1, 0(6)  pop final offset
1430: LDA   6, 1(6)  pop final offset
1431: ST    0, 0(1)  store value into array static data
1432: LDC   0, 1(5)  load integer 1
1433: LDA   6, -1(6)  push array index
1434: LDC   3, 45(5)  push array index
1435: SUB   3, 6, 3  push array index
1436: JLE   3, 16(5)  push array index
1437: ST    0, 0(6)  push array index
1438: LDC   0, 1(5)  push array dimension
1439: LDC   0, 0(5)  load 0 to ac
1440: LD    1, 0(6)  pop index
1441: LDA   6, 1(6)  pop index
1442: JLT   1, 6(5)  jump if index less than 0
1443: LDC   3, 10(5)  load array size
1444: SUB   3, 3, 1  sub max size with index
1445: JLE   3, 6(5)  jump if index greater than size - 1
1446: LDC   2, 1(5)  load size of subarray
1447: MUL   1, 1, 2  compute 0 dim
1448: ADD   0, 0, 1  add result
1449: LD    1, 34(5)  load offset into ac2
1450: ADD   0, 0, 1  compute final offset
1451: LDA   6, -1(6)  push final offset
1452: LDC   3, 45(5)  push final offset
1453: SUB   3, 6, 3  push final offset
1454: JLE   3, 16(5)  push final offset
1455: ST    0, 0(6)  push final offset
1456: LDC   0, 98(5)  load integer 98
1457: LD    1, 0(6)  pop final offset
1458: LDA   6, 1(6)  pop final offset
1459: ST    0, 0(1)  store value into array static data
1460: LDC   0, 2(5)  load integer 2
1461: LDA   6, -1(6)  push array index
1462: LDC   3, 45(5)  push array index
1463: SUB   3, 6, 3  push array index
1464: JLE   3, 16(5)  push array index
1465: ST    0, 0(6)  push array index
1466: LDC   0, 1(5)  push array dimension
1467: LDC   0, 0(5)  load 0 to ac
1468: LD    1, 0(6)  pop index
1469: LDA   6, 1(6)  pop index
1470: JLT   1, 6(5)  jump if index less than 0
1471: LDC   3, 10(5)  load array size
1472: SUB   3, 3, 1  sub max size with index
1473: JLE   3, 6(5)  jump if index greater than size - 1
1474: LDC   2, 1(5)  load size of subarray
1475: MUL   1, 1, 2  compute 0 dim
1476: ADD   0, 0, 1  add result
1477: LD    1, 34(5)  load offset into ac2
1478: ADD   0, 0, 1  compute final offset
1479: LDA   6, -1(6)  push final offset
1480: LDC   3, 45(5)  push final offset
1481: SUB   3, 6, 3  push final offset
1482: JLE   3, 16(5)  push final offset
1483: ST    0, 0(6)  push final offset
1484: LDC   0, 99(5)  load integer 99
1485: LD    1, 0(6)  pop final offset
1486: LDA   6, 1(6)  pop final offset
1487: ST    0, 0(1)  store value into array static data
1488: LDC   0, 3(5)  load integer 3
1489: LDA   6, -1(6)  push array index
1490: LDC   3, 45(5)  push array index
1491: SUB   3, 6, 3  push array index
1492: JLE   3, 16(5)  push array index
1493: ST    0, 0(6)  push array index
1494: LDC   0, 1(5)  push array dimension
1495: LDC   0, 0(5)  load 0 to ac
1496: LD    1, 0(6)  pop index
1497: LDA   6, 1(6)  pop index
1498: JLT   1, 6(5)  jump if index less than 0
1499: LDC   3, 10(5)  load array size
1500: SUB   3, 3, 1  sub max size with index
1501: JLE   3, 6(5)  jump if index greater than size - 1
1502: LDC   2, 1(5)  load size of subarray
1503: MUL   1, 1, 2  compute 0 dim
1504: ADD   0, 0, 1  add result
1505: LD    1, 34(5)  load offset into ac2
1506: ADD   0, 0, 1  compute final offset
1507: LDA   6, -1(6)  push final offset
1508: LDC   3, 45(5)  push final offset
1509: SUB   3, 6, 3  push final offset
1510: JLE   3, 16(5)  push final offset
1511: ST    0, 0(6)  push final offset
1512: LDC   0, 49(5)  load integer 49
1513: LD    1, 0(6)  pop final offset
1514: LDA   6, 1(6)  pop final offset
1515: ST    0, 0(1)  store value into array static data
1516: LDA   6, -1(6)  push fp
1517: LDC   3, 45(5)  push fp
1518: SUB   3, 6, 3  push fp
1519: JLE   3, 16(5)  push fp
1520: ST    4, 0(6)  push fp
1521: LDA   4, 0(6)  set fp to sp
1528: LDA   6, -1(6)  push zero as return value
1529: LDC   3, 45(5)  push zero as return value
1530: SUB   3, 6, 3  push zero as return value
1531: JLE   3, 16(5)  push zero as return value
1532: ST    5, 0(6)  push zero as return value
1533: LDC   0, 3(5)  load integer 3
1534: LDA   6, -1(6)  push int/bool/str parameter
1535: LDC   3, 45(5)  push int/bool/str parameter
1536: SUB   3, 6, 3  push int/bool/str parameter
1537: JLE   3, 16(5)  push int/bool/str parameter
1538: ST    0, 0(6)  push int/bool/str parameter
1539: LDC   0, 1(5)  push array dimension
1540: LDC   0, 0(5)  load 0 to ac
1541: LD    1, 34(5)  load global offset into ac2
1542: ADD   0, 0, 1  compute final offset
1543: LDA   6, -1(6)  push array parameter
1544: LDC   3, 45(5)  push array parameter
1545: SUB   3, 6, 3  push array parameter
1546: JLE   3, 16(5)  push array parameter
1547: ST    0, 0(6)  push array parameter
1548: LDA   6, -3(6)  preserve space for local vars
1549: LDA   7, 66(5)  jump to procedure call
1522: LDC   0, 1550(5)  load return address into ac
1523: LDA   6, -1(6)  push return address
1524: LDC   3, 45(5)  push return address
1525: SUB   3, 6, 3  push return address
1526: JLE   3, 16(5)  push return address
1527: ST    0, 0(6)  push return address
1550: OUT   0, 0, 0  write integer
1551: OUTNL 0, 0, 0  write new line
1552: HALT  0, 0, 0  program ends
