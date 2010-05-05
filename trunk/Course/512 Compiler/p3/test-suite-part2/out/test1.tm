.DATA    12
.SDATA   "Sorted list:"
.DATA    25
.SDATA   "invalid numeric character"
.DATA    3
.SDATA   "-50"
.DATA    13
.SDATA   "out of memory"
.DATA    6
.SDATA   "Input "
.DATA    2
.SDATA   "50"
.DATA    18
.SDATA   "array index error!"
.DATA    3
.SDATA   "+50"
.DATA    2
.SDATA   ": "
.DATA    5
.SDATA   "wrong"
.DATA    30
.SDATA   "Input length of array (1-100):"
0: LDC   0, 133(5)  store array start address: 133
1: LDC   1, 132(5)  store array offset into ac2: 132
2: ST    0, 0(1)  store array offset
3: LD    6, 0(5)  save stack pointer
4: LD    4, 0(5)  save frame pointer
6: LDC   0, 68(5)  load array error str address
7: LD    1, 0(0)  load str length into ac2
8: JEQ   1, 5(7)  output nothing when empty
9: LDA   0, 1(0)  increase offset
10: LD    2, 0(0)  load char into ac3
11: OUTC   2, 2, 2  write char
12: LDA   1, -1(1)  decrease length of remaining string in ac2
13: JNE   1, -5(7)  continue print if not yet finish
14: OUTNL 0, 0, 0  emit newline
15: HALT  0, 0, 0  stop because of array error
16: LDC   0, 44(5)  load out of memory str address
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
39: LDC   3, 234(5)  push -1
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
49: LDC   3, 234(5)  push 1
50: SUB   3, 6, 3  push 1
51: JLE   3, 16(5)  push 1
52: ST    2, 0(6)  push 1
43: LDA   7, 9(7)  jump to start parsing str
53: LDC   2, 0(5)  load 0 as initial result
54: LDA   6, -1(6)  push 0
55: LDC   3, 234(5)  push 0
56: SUB   3, 6, 3  push 0
57: JLE   3, 16(5)  push 0
58: ST    2, 0(6)  push 0
59: LD    2, 0(6)  pop result into AC3
60: LDA   6, 1(6)  pop result into AC3
61: LDC   3, 10(5)  load 10 into ac4
62: MUL   2, 2, 3  mul result with 10
63: LDA   6, -1(6)  push result
64: LDC   3, 234(5)  push result
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
76: LDC   3, 234(5)  push result
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
5: LDA   7, 94(5)  jump to start of the program
94: LDC   0, 100(5)  load string offset 100
95: LD    1, 0(0)  load str length into ac2
96: JEQ   1, 5(7)  output nothing when empty
97: LDA   0, 1(0)  increase offset
98: LD    2, 0(0)  load char into ac3
99: OUTC   2, 2, 2  write char
100: LDA   1, -1(1)  decrease length of remaining string in ac2
101: JNE   1, -5(7)  continue print if not yet finish
102: OUTNL 0, 0, 0  write new line
103: IN   0, 0, 0  read integer from stdin
104: ST    0, 233(5)  store int/bool/string into previous used static data
105: LD    0, 233(5)  load int/bool/str from static data
106: LDA   6, -1(6)  push first child's value
107: LDC   3, 234(5)  push first child's value
108: SUB   3, 6, 3  push first child's value
109: JLE   3, 16(5)  push first child's value
110: ST    0, 0(6)  push first child's value
111: LDC   0, 1(5)  load integer 1
112: LD    1, 0(6)  pop first child's value
113: LDA   6, 1(6)  pop first child's value
114: SUB   1, 1, 0  greater than
115: LDC   0, 1(5)  load 1 as true
116: JLT   1, 1(7)  skip load false
117: LDC   0, 0(5)  load 0 as false
118: LDA   6, -1(6)  push first child's value
119: LDC   3, 234(5)  push first child's value
120: SUB   3, 6, 3  push first child's value
121: JLE   3, 16(5)  push first child's value
122: ST    0, 0(6)  push first child's value
124: LD    0, 233(5)  load int/bool/str from static data
125: LDA   6, -1(6)  push first child's value
126: LDC   3, 234(5)  push first child's value
127: SUB   3, 6, 3  push first child's value
128: JLE   3, 16(5)  push first child's value
129: ST    0, 0(6)  push first child's value
130: LDC   0, 100(5)  load integer 100
131: LD    1, 0(6)  pop first child's value
132: LDA   6, 1(6)  pop first child's value
133: SUB   1, 1, 0  greater than
134: LDC   0, 1(5)  load 1 as true
135: JGT   1, 1(7)  skip load false
136: LDC   0, 0(5)  load 0 as false
137: LD    1, 0(6)  pop first child's value
138: LDA   6, 1(6)  pop first child's value
139: ADD   1, 0, 1  add two children
140: LDC   0, 1(5)  load 1 as true
141: JNE   1, 1(7)  skip load false
142: LDC   0, 0(5)  load 0 as false
123: JNE   0, 19(7)  short circuit
144: LDC   0, 94(5)  load string offset 94
145: LD    1, 0(0)  load str length into ac2
146: JEQ   1, 5(7)  output nothing when empty
147: LDA   0, 1(0)  increase offset
148: LD    2, 0(0)  load char into ac3
149: OUTC   2, 2, 2  write char
150: LDA   1, -1(1)  decrease length of remaining string in ac2
151: JNE   1, -5(7)  continue print if not yet finish
152: OUTNL 0, 0, 0  write new line
153: HALT  0, 0, 0  exit program
143: JEQ   0, 10(7)  if expr not true
154: LD    0, 233(5)  load int/bool/str from static data
155: LDA   6, -1(6)  push first child's value
156: LDC   3, 234(5)  push first child's value
157: SUB   3, 6, 3  push first child's value
158: JLE   3, 16(5)  push first child's value
159: ST    0, 0(6)  push first child's value
160: LDC   0, 1(5)  load integer 1
161: LD    1, 0(6)  pop first child's value
162: LDA   6, 1(6)  pop first child's value
163: SUB   0, 1, 0  subtract two children
164: ST    0, 233(5)  store int/bool/string into previous used static data
165: LDA   6, -1(6)  push fp
166: LDC   3, 234(5)  push fp
167: SUB   3, 6, 3  push fp
168: JLE   3, 16(5)  push fp
169: ST    4, 0(6)  push fp
170: LDA   4, 0(6)  set fp to sp
171: LDC   0, 0(5)  load integer 0
172: LDA   6, -1(6)  push low
173: LDC   3, 234(5)  push low
174: SUB   3, 6, 3  push low
175: JLE   3, 16(5)  push low
176: ST    0, 0(6)  push low
177: LD    0, 233(5)  load int/bool/str from static data
178: LDA   6, -1(6)  push hi
179: LDC   3, 234(5)  push hi
180: SUB   3, 6, 3  push hi
181: JLE   3, 16(5)  push hi
182: ST    0, 0(6)  push hi
183: LD    0, -2(4)  load hi into ac 
184: LD    1, -1(4)  load low into ac2 
185: SUB   0, 0, 1  subtract hi with low
187: LDC   0, 58(5)  load string offset 58
188: LD    1, 0(0)  load str length into ac2
189: JEQ   1, 5(7)  output nothing when empty
190: LDA   0, 1(0)  increase offset
191: LD    2, 0(0)  load char into ac3
192: OUTC   2, 2, 2  write char
193: LDA   1, -1(1)  decrease length of remaining string in ac2
194: JNE   1, -5(7)  continue print if not yet finish
195: LDA   1, 0(4)  load fp into ac2
196: LD    0, -1(1)  load int/bool/str from stack
197: LDA   6, -1(6)  push first child's value
198: LDC   3, 234(5)  push first child's value
199: SUB   3, 6, 3  push first child's value
200: JLE   3, 16(5)  push first child's value
201: ST    0, 0(6)  push first child's value
202: LDC   0, 1(5)  load integer 1
203: LD    1, 0(6)  pop first child's value
204: LDA   6, 1(6)  pop first child's value
205: ADD   0, 0, 1  add two children
206: OUT   0, 0, 0  write integer
207: LDC   0, 91(5)  load string offset 91
208: LD    1, 0(0)  load str length into ac2
209: JEQ   1, 5(7)  output nothing when empty
210: LDA   0, 1(0)  increase offset
211: LD    2, 0(0)  load char into ac3
212: OUTC   2, 2, 2  write char
213: LDA   1, -1(1)  decrease length of remaining string in ac2
214: JNE   1, -5(7)  continue print if not yet finish
215: LDA   1, 0(4)  load fp into ac2
216: LD    0, -1(1)  load int/bool/str from stack
217: LDA   6, -1(6)  push array index
218: LDC   3, 234(5)  push array index
219: SUB   3, 6, 3  push array index
220: JLE   3, 16(5)  push array index
221: ST    0, 0(6)  push array index
222: LDC   0, 1(5)  push array dimension
223: LDC   0, 0(5)  load 0 to ac
224: LD    1, 0(6)  pop index
225: LDA   6, 1(6)  pop index
226: JLT   1, 6(5)  jump if index less than 0
227: LDC   3, 100(5)  load array size
228: SUB   3, 3, 1  sub max size with index
229: JLE   3, 6(5)  jump if index greater than size - 1
230: LDC   2, 1(5)  load size of subarray
231: MUL   1, 1, 2  compute 0 dim
232: ADD   0, 0, 1  add result
233: LD    1, 132(5)  load offset into ac2
234: ADD   0, 0, 1  compute final offset
235: LDA   6, -1(6)  push final offset
236: LDC   3, 234(5)  push final offset
237: SUB   3, 6, 3  push final offset
238: JLE   3, 16(5)  push final offset
239: ST    0, 0(6)  push final offset
240: IN   0, 0, 0  read integer from stdin
241: LD    1, 0(6)  pop final offset
242: LDA   6, 1(6)  pop final offset
243: ST    0, 0(1)  store value into array static data
244: LD    0, -1(4)  load low into ac
245: LDA   0, 1(0)  decrease low
246: ST    0, -1(4)  save low
247: LDA   7, -65(7)  jump back to loop start
186: JLT   0, 61(7)  jump out of the fa loop
248: LDA   6, 0(4)  change sp to fp + 1
249: LD    4, 0(6)  restore fp
250: LDA   6, 1(6)  restore fp
251: LDA   6, -1(6)  push fp
252: LDC   3, 234(5)  push fp
253: SUB   3, 6, 3  push fp
254: JLE   3, 16(5)  push fp
255: ST    4, 0(6)  push fp
256: LDA   4, 0(6)  set fp to sp
257: LDC   0, 0(5)  load integer 0
258: LDA   6, -1(6)  push low
259: LDC   3, 234(5)  push low
260: SUB   3, 6, 3  push low
261: JLE   3, 16(5)  push low
262: ST    0, 0(6)  push low
263: LD    0, 233(5)  load int/bool/str from static data
264: LDA   6, -1(6)  push first child's value
265: LDC   3, 234(5)  push first child's value
266: SUB   3, 6, 3  push first child's value
267: JLE   3, 16(5)  push first child's value
268: ST    0, 0(6)  push first child's value
269: LDC   0, 1(5)  load integer 1
270: LD    1, 0(6)  pop first child's value
271: LDA   6, 1(6)  pop first child's value
272: SUB   0, 1, 0  subtract two children
273: LDA   6, -1(6)  push hi
274: LDC   3, 234(5)  push hi
275: SUB   3, 6, 3  push hi
276: JLE   3, 16(5)  push hi
277: ST    0, 0(6)  push hi
278: LD    0, -2(4)  load hi into ac 
279: LD    1, -1(4)  load low into ac2 
280: SUB   0, 0, 1  subtract hi with low
282: LDA   6, -1(6)  push fp
283: LDC   3, 234(5)  push fp
284: SUB   3, 6, 3  push fp
285: JLE   3, 16(5)  push fp
286: ST    4, 0(6)  push fp
287: LDA   4, 0(6)  set fp to sp
288: LDA   1, 0(4)  load fp into ac2
289: LD    1, 0(1)  load upper level fp into ac2
290: LD    0, -1(1)  load int/bool/str from stack
291: LDA   6, -1(6)  push first child's value
292: LDC   3, 234(5)  push first child's value
293: SUB   3, 6, 3  push first child's value
294: JLE   3, 16(5)  push first child's value
295: ST    0, 0(6)  push first child's value
296: LDC   0, 1(5)  load integer 1
297: LD    1, 0(6)  pop first child's value
298: LDA   6, 1(6)  pop first child's value
299: ADD   0, 0, 1  add two children
300: LDA   6, -1(6)  push low
301: LDC   3, 234(5)  push low
302: SUB   3, 6, 3  push low
303: JLE   3, 16(5)  push low
304: ST    0, 0(6)  push low
305: LD    0, 233(5)  load int/bool/str from static data
306: LDA   6, -1(6)  push hi
307: LDC   3, 234(5)  push hi
308: SUB   3, 6, 3  push hi
309: JLE   3, 16(5)  push hi
310: ST    0, 0(6)  push hi
311: LD    0, -2(4)  load hi into ac 
312: LD    1, -1(4)  load low into ac2 
313: SUB   0, 0, 1  subtract hi with low
315: LDA   1, 0(4)  load fp into ac2
316: LD    1, 0(1)  load upper level fp into ac2
317: LD    0, -1(1)  load int/bool/str from stack
318: LDA   6, -1(6)  push array index
319: LDC   3, 234(5)  push array index
320: SUB   3, 6, 3  push array index
321: JLE   3, 16(5)  push array index
322: ST    0, 0(6)  push array index
323: LDC   0, 1(5)  push array dimension
324: LDC   0, 0(5)  load 0 to ac
325: LD    1, 0(6)  pop index
326: LDA   6, 1(6)  pop index
327: JLT   1, 6(5)  jump if index less than 0
328: LDC   3, 100(5)  load array size
329: SUB   3, 3, 1  sub max size with index
330: JLE   3, 6(5)  jump if index greater than size - 1
331: LDC   2, 1(5)  load size of subarray
332: MUL   1, 1, 2  compute 0 dim
333: ADD   0, 0, 1  add result
334: LD    1, 132(5)  load global offset into ac2
335: ADD   0, 0, 1  compute final offset
336: LD    0, 0(0)  load data from array
337: LDA   6, -1(6)  push first child's value
338: LDC   3, 234(5)  push first child's value
339: SUB   3, 6, 3  push first child's value
340: JLE   3, 16(5)  push first child's value
341: ST    0, 0(6)  push first child's value
342: LDA   1, 0(4)  load fp into ac2
343: LD    0, -1(1)  load int/bool/str from stack
344: LDA   6, -1(6)  push array index
345: LDC   3, 234(5)  push array index
346: SUB   3, 6, 3  push array index
347: JLE   3, 16(5)  push array index
348: ST    0, 0(6)  push array index
349: LDC   0, 1(5)  push array dimension
350: LDC   0, 0(5)  load 0 to ac
351: LD    1, 0(6)  pop index
352: LDA   6, 1(6)  pop index
353: JLT   1, 6(5)  jump if index less than 0
354: LDC   3, 100(5)  load array size
355: SUB   3, 3, 1  sub max size with index
356: JLE   3, 6(5)  jump if index greater than size - 1
357: LDC   2, 1(5)  load size of subarray
358: MUL   1, 1, 2  compute 0 dim
359: ADD   0, 0, 1  add result
360: LD    1, 132(5)  load global offset into ac2
361: ADD   0, 0, 1  compute final offset
362: LD    0, 0(0)  load data from array
363: LD    1, 0(6)  pop first child's value
364: LDA   6, 1(6)  pop first child's value
365: SUB   1, 1, 0  greater than
366: LDC   0, 1(5)  load 1 as true
367: JGT   1, 1(7)  skip load false
368: LDC   0, 0(5)  load 0 as false
370: LDA   1, 0(4)  load fp into ac2
371: LD    1, 0(1)  load upper level fp into ac2
372: LD    0, -1(1)  load int/bool/str from stack
373: LDA   6, -1(6)  push array index
374: LDC   3, 234(5)  push array index
375: SUB   3, 6, 3  push array index
376: JLE   3, 16(5)  push array index
377: ST    0, 0(6)  push array index
378: LDC   0, 1(5)  push array dimension
379: LDC   0, 0(5)  load 0 to ac
380: LD    1, 0(6)  pop index
381: LDA   6, 1(6)  pop index
382: JLT   1, 6(5)  jump if index less than 0
383: LDC   3, 100(5)  load array size
384: SUB   3, 3, 1  sub max size with index
385: JLE   3, 6(5)  jump if index greater than size - 1
386: LDC   2, 1(5)  load size of subarray
387: MUL   1, 1, 2  compute 0 dim
388: ADD   0, 0, 1  add result
389: LD    1, 132(5)  load global offset into ac2
390: ADD   0, 0, 1  compute final offset
391: LD    0, 0(0)  load data from array
392: ST    0, 131(5)  store int/bool/string into previous used static data
393: LDA   1, 0(4)  load fp into ac2
394: LD    1, 0(1)  load upper level fp into ac2
395: LD    0, -1(1)  load int/bool/str from stack
396: LDA   6, -1(6)  push array index
397: LDC   3, 234(5)  push array index
398: SUB   3, 6, 3  push array index
399: JLE   3, 16(5)  push array index
400: ST    0, 0(6)  push array index
401: LDC   0, 1(5)  push array dimension
402: LDC   0, 0(5)  load 0 to ac
403: LD    1, 0(6)  pop index
404: LDA   6, 1(6)  pop index
405: JLT   1, 6(5)  jump if index less than 0
406: LDC   3, 100(5)  load array size
407: SUB   3, 3, 1  sub max size with index
408: JLE   3, 6(5)  jump if index greater than size - 1
409: LDC   2, 1(5)  load size of subarray
410: MUL   1, 1, 2  compute 0 dim
411: ADD   0, 0, 1  add result
412: LD    1, 132(5)  load offset into ac2
413: ADD   0, 0, 1  compute final offset
414: LDA   6, -1(6)  push final offset
415: LDC   3, 234(5)  push final offset
416: SUB   3, 6, 3  push final offset
417: JLE   3, 16(5)  push final offset
418: ST    0, 0(6)  push final offset
419: LDA   1, 0(4)  load fp into ac2
420: LD    0, -1(1)  load int/bool/str from stack
421: LDA   6, -1(6)  push array index
422: LDC   3, 234(5)  push array index
423: SUB   3, 6, 3  push array index
424: JLE   3, 16(5)  push array index
425: ST    0, 0(6)  push array index
426: LDC   0, 1(5)  push array dimension
427: LDC   0, 0(5)  load 0 to ac
428: LD    1, 0(6)  pop index
429: LDA   6, 1(6)  pop index
430: JLT   1, 6(5)  jump if index less than 0
431: LDC   3, 100(5)  load array size
432: SUB   3, 3, 1  sub max size with index
433: JLE   3, 6(5)  jump if index greater than size - 1
434: LDC   2, 1(5)  load size of subarray
435: MUL   1, 1, 2  compute 0 dim
436: ADD   0, 0, 1  add result
437: LD    1, 132(5)  load global offset into ac2
438: ADD   0, 0, 1  compute final offset
439: LD    0, 0(0)  load data from array
440: LD    1, 0(6)  pop final offset
441: LDA   6, 1(6)  pop final offset
442: ST    0, 0(1)  store value into array static data
443: LDA   1, 0(4)  load fp into ac2
444: LD    0, -1(1)  load int/bool/str from stack
445: LDA   6, -1(6)  push array index
446: LDC   3, 234(5)  push array index
447: SUB   3, 6, 3  push array index
448: JLE   3, 16(5)  push array index
449: ST    0, 0(6)  push array index
450: LDC   0, 1(5)  push array dimension
451: LDC   0, 0(5)  load 0 to ac
452: LD    1, 0(6)  pop index
453: LDA   6, 1(6)  pop index
454: JLT   1, 6(5)  jump if index less than 0
455: LDC   3, 100(5)  load array size
456: SUB   3, 3, 1  sub max size with index
457: JLE   3, 6(5)  jump if index greater than size - 1
458: LDC   2, 1(5)  load size of subarray
459: MUL   1, 1, 2  compute 0 dim
460: ADD   0, 0, 1  add result
461: LD    1, 132(5)  load offset into ac2
462: ADD   0, 0, 1  compute final offset
463: LDA   6, -1(6)  push final offset
464: LDC   3, 234(5)  push final offset
465: SUB   3, 6, 3  push final offset
466: JLE   3, 16(5)  push final offset
467: ST    0, 0(6)  push final offset
468: LD    0, 131(5)  load int/bool/str from static data
469: LD    1, 0(6)  pop final offset
470: LDA   6, 1(6)  pop final offset
471: ST    0, 0(1)  store value into array static data
369: JEQ   0, 102(7)  if expr not true
472: LD    0, -1(4)  load low into ac
473: LDA   0, 1(0)  decrease low
474: ST    0, -1(4)  save low
475: LDA   7, -165(7)  jump back to loop start
314: JLT   0, 161(7)  jump out of the fa loop
476: LDA   6, 0(4)  change sp to fp + 1
477: LD    4, 0(6)  restore fp
478: LDA   6, 1(6)  restore fp
479: LD    0, -1(4)  load low into ac
480: LDA   0, 1(0)  decrease low
481: ST    0, -1(4)  save low
482: LDA   7, -205(7)  jump back to loop start
281: JLT   0, 201(7)  jump out of the fa loop
483: LDA   6, 0(4)  change sp to fp + 1
484: LD    4, 0(6)  restore fp
485: LDA   6, 1(6)  restore fp
486: LDC   0, 1(5)  load string offset 1
487: LD    1, 0(0)  load str length into ac2
488: JEQ   1, 5(7)  output nothing when empty
489: LDA   0, 1(0)  increase offset
490: LD    2, 0(0)  load char into ac3
491: OUTC   2, 2, 2  write char
492: LDA   1, -1(1)  decrease length of remaining string in ac2
493: JNE   1, -5(7)  continue print if not yet finish
494: OUTNL 0, 0, 0  write new line
495: LDA   6, -1(6)  push fp
496: LDC   3, 234(5)  push fp
497: SUB   3, 6, 3  push fp
498: JLE   3, 16(5)  push fp
499: ST    4, 0(6)  push fp
500: LDA   4, 0(6)  set fp to sp
501: LDC   0, 0(5)  load integer 0
502: LDA   6, -1(6)  push low
503: LDC   3, 234(5)  push low
504: SUB   3, 6, 3  push low
505: JLE   3, 16(5)  push low
506: ST    0, 0(6)  push low
507: LD    0, 233(5)  load int/bool/str from static data
508: LDA   6, -1(6)  push hi
509: LDC   3, 234(5)  push hi
510: SUB   3, 6, 3  push hi
511: JLE   3, 16(5)  push hi
512: ST    0, 0(6)  push hi
513: LD    0, -2(4)  load hi into ac 
514: LD    1, -1(4)  load low into ac2 
515: SUB   0, 0, 1  subtract hi with low
517: LDA   1, 0(4)  load fp into ac2
518: LD    0, -1(1)  load int/bool/str from stack
519: LDA   6, -1(6)  push array index
520: LDC   3, 234(5)  push array index
521: SUB   3, 6, 3  push array index
522: JLE   3, 16(5)  push array index
523: ST    0, 0(6)  push array index
524: LDC   0, 1(5)  push array dimension
525: LDC   0, 0(5)  load 0 to ac
526: LD    1, 0(6)  pop index
527: LDA   6, 1(6)  pop index
528: JLT   1, 6(5)  jump if index less than 0
529: LDC   3, 100(5)  load array size
530: SUB   3, 3, 1  sub max size with index
531: JLE   3, 6(5)  jump if index greater than size - 1
532: LDC   2, 1(5)  load size of subarray
533: MUL   1, 1, 2  compute 0 dim
534: ADD   0, 0, 1  add result
535: LD    1, 132(5)  load global offset into ac2
536: ADD   0, 0, 1  compute final offset
537: LD    0, 0(0)  load data from array
538: OUT   0, 0, 0  write integer
539: OUTNL 0, 0, 0  write new line
540: LD    0, -1(4)  load low into ac
541: LDA   0, 1(0)  decrease low
542: ST    0, -1(4)  save low
543: LDA   7, -31(7)  jump back to loop start
516: JLT   0, 27(7)  jump out of the fa loop
544: LDA   6, 0(4)  change sp to fp + 1
545: LD    4, 0(6)  restore fp
546: LDA   6, 1(6)  restore fp
547: HALT  0, 0, 0  program ends
