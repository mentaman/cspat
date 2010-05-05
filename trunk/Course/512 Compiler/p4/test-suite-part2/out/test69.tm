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
39: LDC   3, 197(5)  push -1
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
49: LDC   3, 197(5)  push 1
50: SUB   3, 6, 3  push 1
51: JLE   3, 16(5)  push 1
52: ST    2, 0(6)  push 1
43: LDA   7, 9(7)  jump to start parsing str
53: LDC   2, 0(5)  load 0 as initial result
54: LDA   6, -1(6)  push 0
55: LDC   3, 197(5)  push 0
56: SUB   3, 6, 3  push 0
57: JLE   3, 16(5)  push 0
58: ST    2, 0(6)  push 0
59: LD    2, 0(6)  pop result into AC3
60: LDA   6, 1(6)  pop result into AC3
61: LDC   3, 10(5)  load 10 into ac4
62: MUL   2, 2, 3  mul result with 10
63: LDA   6, -1(6)  push result
64: LDC   3, 197(5)  push result
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
76: LDC   3, 197(5)  push result
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
94: LDC   0, 1(5)  load booleantrue
95: LDA   1, 0(4)  load fp into ac2
96: ST    0, -5(1)  store int/bool/string into stack
97: LDC   0, 0(5)  load integer 0
98: LDA   1, 0(4)  load fp into ac2
99: ST    0, -2(1)  store int/bool/string into stack
100: LDA   1, 0(4)  load fp into ac2
101: LD    0, -3(1)  load int/bool/str from stack
102: LDA   6, -1(6)  push first child's value
103: LDC   3, 197(5)  push first child's value
104: SUB   3, 6, 3  push first child's value
105: JLE   3, 16(5)  push first child's value
106: ST    0, 0(6)  push first child's value
107: LDC   0, 0(5)  load integer 0
108: LD    1, 0(6)  pop first child's value
109: LDA   6, 1(6)  pop first child's value
110: SUB   1, 1, 0  greater than
111: LDC   0, 1(5)  load 1 as true
112: JEQ   1, 1(7)  skip load false
113: LDC   0, 0(5)  load 0 as false
114: JEQ   0, 1(7)  if expr not true
116: LDC   0, 0(5)  load integer 0
117: LDA   1, 0(4)  load fp into ac2
118: ST    0, -6(1)  store int/bool/string into stack
119: LDA   6, -1(6)  push fp
120: LDC   3, 197(5)  push fp
121: SUB   3, 6, 3  push fp
122: JLE   3, 16(5)  push fp
123: ST    4, 0(6)  push fp
124: LDA   4, 0(6)  set fp to sp
125: LDC   0, 0(5)  load integer 0
126: LDA   6, -1(6)  push low
127: LDC   3, 197(5)  push low
128: SUB   3, 6, 3  push low
129: JLE   3, 16(5)  push low
130: ST    0, 0(6)  push low
131: LDA   1, 0(4)  load fp into ac2
132: LD    1, 0(1)  load upper level fp into ac2
133: LD    0, -3(1)  load int/bool/str from stack
134: LDA   6, -1(6)  push first child's value
135: LDC   3, 197(5)  push first child's value
136: SUB   3, 6, 3  push first child's value
137: JLE   3, 16(5)  push first child's value
138: ST    0, 0(6)  push first child's value
139: LDC   0, 1(5)  load integer 1
140: LD    1, 0(6)  pop first child's value
141: LDA   6, 1(6)  pop first child's value
142: SUB   0, 1, 0  subtract two children
143: LDA   6, -1(6)  push hi
144: LDC   3, 197(5)  push hi
145: SUB   3, 6, 3  push hi
146: JLE   3, 16(5)  push hi
147: ST    0, 0(6)  push hi
148: LD    0, -2(4)  load hi into ac 
149: LD    1, -1(4)  load low into ac2 
150: SUB   0, 0, 1  subtract hi with low
152: LDA   1, 0(4)  load fp into ac2
153: LD    0, -1(1)  load int/bool/str from stack
154: LDA   6, -1(6)  push array index
155: LDC   3, 197(5)  push array index
156: SUB   3, 6, 3  push array index
157: JLE   3, 16(5)  push array index
158: ST    0, 0(6)  push array index
159: LDC   0, 1(5)  push array dimension
160: LDC   0, 0(5)  load 0 to ac
161: LD    1, 0(6)  pop index
162: LDA   6, 1(6)  pop index
163: JLT   1, 6(5)  jump if index less than 0
164: LDC   3, 10(5)  load array size
165: SUB   3, 3, 1  sub max size with index
166: JLE   3, 6(5)  jump if index greater than size - 1
167: LDC   2, 1(5)  load size of subarray
168: MUL   1, 1, 2  compute 0 dim
169: ADD   0, 0, 1  add result
170: LDA   1, 0(4)  load fp into ac2
171: LD    1, 0(1)  load upper level fp into ac2
172: LD    1, -4(1)  load local offset into ac2
173: ADD   0, 0, 1  compute final offset
174: LD    0, 0(0)  load data from array
175: LDA   6, -1(6)  push first child's value
176: LDC   3, 197(5)  push first child's value
177: SUB   3, 6, 3  push first child's value
178: JLE   3, 16(5)  push first child's value
179: ST    0, 0(6)  push first child's value
180: LDC   0, 43(5)  load integer 43
181: LD    1, 0(6)  pop first child's value
182: LDA   6, 1(6)  pop first child's value
183: SUB   1, 1, 0  greater than
184: LDC   0, 1(5)  load 1 as true
185: JEQ   1, 1(7)  skip load false
186: LDC   0, 0(5)  load 0 as false
187: LDA   6, -1(6)  push first child's value
188: LDC   3, 197(5)  push first child's value
189: SUB   3, 6, 3  push first child's value
190: JLE   3, 16(5)  push first child's value
191: ST    0, 0(6)  push first child's value
193: LDA   1, 0(4)  load fp into ac2
194: LD    0, -1(1)  load int/bool/str from stack
195: LDA   6, -1(6)  push array index
196: LDC   3, 197(5)  push array index
197: SUB   3, 6, 3  push array index
198: JLE   3, 16(5)  push array index
199: ST    0, 0(6)  push array index
200: LDC   0, 1(5)  push array dimension
201: LDC   0, 0(5)  load 0 to ac
202: LD    1, 0(6)  pop index
203: LDA   6, 1(6)  pop index
204: JLT   1, 6(5)  jump if index less than 0
205: LDC   3, 10(5)  load array size
206: SUB   3, 3, 1  sub max size with index
207: JLE   3, 6(5)  jump if index greater than size - 1
208: LDC   2, 1(5)  load size of subarray
209: MUL   1, 1, 2  compute 0 dim
210: ADD   0, 0, 1  add result
211: LDA   1, 0(4)  load fp into ac2
212: LD    1, 0(1)  load upper level fp into ac2
213: LD    1, -4(1)  load local offset into ac2
214: ADD   0, 0, 1  compute final offset
215: LD    0, 0(0)  load data from array
216: LDA   6, -1(6)  push first child's value
217: LDC   3, 197(5)  push first child's value
218: SUB   3, 6, 3  push first child's value
219: JLE   3, 16(5)  push first child's value
220: ST    0, 0(6)  push first child's value
221: LDC   0, 45(5)  load integer 45
222: LD    1, 0(6)  pop first child's value
223: LDA   6, 1(6)  pop first child's value
224: SUB   1, 1, 0  greater than
225: LDC   0, 1(5)  load 1 as true
226: JEQ   1, 1(7)  skip load false
227: LDC   0, 0(5)  load 0 as false
228: LD    1, 0(6)  pop first child's value
229: LDA   6, 1(6)  pop first child's value
230: ADD   1, 0, 1  add two children
231: LDC   0, 1(5)  load 1 as true
232: JNE   1, 1(7)  skip load false
233: LDC   0, 0(5)  load 0 as false
192: JNE   0, 41(7)  short circuit
234: LDA   6, -1(6)  push first child's value
235: LDC   3, 197(5)  push first child's value
236: SUB   3, 6, 3  push first child's value
237: JLE   3, 16(5)  push first child's value
238: ST    0, 0(6)  push first child's value
240: LDA   1, 0(4)  load fp into ac2
241: LD    0, -1(1)  load int/bool/str from stack
242: LDA   6, -1(6)  push array index
243: LDC   3, 197(5)  push array index
244: SUB   3, 6, 3  push array index
245: JLE   3, 16(5)  push array index
246: ST    0, 0(6)  push array index
247: LDC   0, 1(5)  push array dimension
248: LDC   0, 0(5)  load 0 to ac
249: LD    1, 0(6)  pop index
250: LDA   6, 1(6)  pop index
251: JLT   1, 6(5)  jump if index less than 0
252: LDC   3, 10(5)  load array size
253: SUB   3, 3, 1  sub max size with index
254: JLE   3, 6(5)  jump if index greater than size - 1
255: LDC   2, 1(5)  load size of subarray
256: MUL   1, 1, 2  compute 0 dim
257: ADD   0, 0, 1  add result
258: LDA   1, 0(4)  load fp into ac2
259: LD    1, 0(1)  load upper level fp into ac2
260: LD    1, -4(1)  load local offset into ac2
261: ADD   0, 0, 1  compute final offset
262: LD    0, 0(0)  load data from array
263: LDA   6, -1(6)  push first child's value
264: LDC   3, 197(5)  push first child's value
265: SUB   3, 6, 3  push first child's value
266: JLE   3, 16(5)  push first child's value
267: ST    0, 0(6)  push first child's value
268: LDC   0, 48(5)  load integer 48
269: LD    1, 0(6)  pop first child's value
270: LDA   6, 1(6)  pop first child's value
271: SUB   1, 1, 0  greater than
272: LDC   0, 1(5)  load 1 as true
273: JGE   1, 1(7)  skip load false
274: LDC   0, 0(5)  load 0 as false
276: LDA   6, -1(6)  push first child's value
277: LDC   3, 197(5)  push first child's value
278: SUB   3, 6, 3  push first child's value
279: JLE   3, 16(5)  push first child's value
280: ST    0, 0(6)  push first child's value
281: LDA   1, 0(4)  load fp into ac2
282: LD    0, -1(1)  load int/bool/str from stack
283: LDA   6, -1(6)  push array index
284: LDC   3, 197(5)  push array index
285: SUB   3, 6, 3  push array index
286: JLE   3, 16(5)  push array index
287: ST    0, 0(6)  push array index
288: LDC   0, 1(5)  push array dimension
289: LDC   0, 0(5)  load 0 to ac
290: LD    1, 0(6)  pop index
291: LDA   6, 1(6)  pop index
292: JLT   1, 6(5)  jump if index less than 0
293: LDC   3, 10(5)  load array size
294: SUB   3, 3, 1  sub max size with index
295: JLE   3, 6(5)  jump if index greater than size - 1
296: LDC   2, 1(5)  load size of subarray
297: MUL   1, 1, 2  compute 0 dim
298: ADD   0, 0, 1  add result
299: LDA   1, 0(4)  load fp into ac2
300: LD    1, 0(1)  load upper level fp into ac2
301: LD    1, -4(1)  load local offset into ac2
302: ADD   0, 0, 1  compute final offset
303: LD    0, 0(0)  load data from array
304: LDA   6, -1(6)  push first child's value
305: LDC   3, 197(5)  push first child's value
306: SUB   3, 6, 3  push first child's value
307: JLE   3, 16(5)  push first child's value
308: ST    0, 0(6)  push first child's value
309: LDC   0, 57(5)  load integer 57
310: LD    1, 0(6)  pop first child's value
311: LDA   6, 1(6)  pop first child's value
312: SUB   1, 1, 0  greater than
313: LDC   0, 1(5)  load 1 as true
314: JLE   1, 1(7)  skip load false
315: LDC   0, 0(5)  load 0 as false
316: LD    1, 0(6)  pop first child's value
317: LDA   6, 1(6)  pop first child's value
318: MUL   0, 0, 1  multiply two children
275: JEQ   0, 43(7)  short circuit
319: LD    1, 0(6)  pop first child's value
320: LDA   6, 1(6)  pop first child's value
321: ADD   1, 0, 1  add two children
322: LDC   0, 1(5)  load 1 as true
323: JNE   1, 1(7)  skip load false
324: LDC   0, 0(5)  load 0 as false
239: JNE   0, 85(7)  short circuit
325: JEQ   0, 1(7)  if expr not true
327: LDA   1, 0(4)  load fp into ac2
328: LD    1, 0(1)  load upper level fp into ac2
329: LD    0, -6(1)  load int/bool/str from stack
330: LDA   6, -1(6)  push first child's value
331: LDC   3, 197(5)  push first child's value
332: SUB   3, 6, 3  push first child's value
333: JLE   3, 16(5)  push first child's value
334: ST    0, 0(6)  push first child's value
335: LDC   0, 1(5)  load integer 1
336: LD    1, 0(6)  pop first child's value
337: LDA   6, 1(6)  pop first child's value
338: ADD   0, 0, 1  add two children
339: LDA   1, 0(4)  load fp into ac2
340: LD    1, 0(1)  load upper level fp into ac2
341: ST    0, -6(1)  store int/bool/string into stack
342: LD    0, -1(4)  load low into ac
343: LDA   0, 1(0)  decrease low
344: ST    0, -1(4)  save low
345: LDA   7, -198(7)  jump back to loop start
151: JLT   0, 194(7)  jump out of the fa loop
326: LDA   7, 19(7)  break -> jump out of the do loop
346: LDA   6, 0(4)  change sp to fp + 1
347: LD    4, 0(6)  restore fp
348: LDA   6, 1(6)  restore fp
349: LDA   1, 0(4)  load fp into ac2
350: LD    0, -6(1)  load int/bool/str from stack
351: LDA   6, -1(6)  push first child's value
352: LDC   3, 197(5)  push first child's value
353: SUB   3, 6, 3  push first child's value
354: JLE   3, 16(5)  push first child's value
355: ST    0, 0(6)  push first child's value
356: LDA   1, 0(4)  load fp into ac2
357: LD    0, -3(1)  load int/bool/str from stack
358: LD    1, 0(6)  pop first child's value
359: LDA   6, 1(6)  pop first child's value
360: SUB   1, 1, 0  greater than
361: LDC   0, 1(5)  load 1 as true
362: JEQ   1, 1(7)  skip load false
363: LDC   0, 0(5)  load 0 as false
364: JEQ   0, 1(7)  if expr not true
366: LDA   1, 0(4)  load fp into ac2
367: LD    0, -6(1)  load int/bool/str from stack
368: LDA   6, -1(6)  push array index
369: LDC   3, 197(5)  push array index
370: SUB   3, 6, 3  push array index
371: JLE   3, 16(5)  push array index
372: ST    0, 0(6)  push array index
373: LDC   0, 1(5)  push array dimension
374: LDC   0, 0(5)  load 0 to ac
375: LD    1, 0(6)  pop index
376: LDA   6, 1(6)  pop index
377: JLT   1, 6(5)  jump if index less than 0
378: LDC   3, 10(5)  load array size
379: SUB   3, 3, 1  sub max size with index
380: JLE   3, 6(5)  jump if index greater than size - 1
381: LDC   2, 1(5)  load size of subarray
382: MUL   1, 1, 2  compute 0 dim
383: ADD   0, 0, 1  add result
384: LDA   1, 0(4)  load fp into ac2
385: LD    1, -4(1)  load local offset into ac2
386: ADD   0, 0, 1  compute final offset
387: LD    0, 0(0)  load data from array
388: LDA   6, -1(6)  push first child's value
389: LDC   3, 197(5)  push first child's value
390: SUB   3, 6, 3  push first child's value
391: JLE   3, 16(5)  push first child's value
392: ST    0, 0(6)  push first child's value
393: LDC   0, 45(5)  load integer 45
394: LD    1, 0(6)  pop first child's value
395: LDA   6, 1(6)  pop first child's value
396: SUB   1, 1, 0  greater than
397: LDC   0, 1(5)  load 1 as true
398: JEQ   1, 1(7)  skip load false
399: LDC   0, 0(5)  load 0 as false
401: LDC   0, 0(5)  load booleanfalse
402: LDA   1, 0(4)  load fp into ac2
403: ST    0, -5(1)  store int/bool/string into stack
404: LDA   1, 0(4)  load fp into ac2
405: LD    0, -6(1)  load int/bool/str from stack
406: LDA   6, -1(6)  push first child's value
407: LDC   3, 197(5)  push first child's value
408: SUB   3, 6, 3  push first child's value
409: JLE   3, 16(5)  push first child's value
410: ST    0, 0(6)  push first child's value
411: LDC   0, 1(5)  load integer 1
412: LD    1, 0(6)  pop first child's value
413: LDA   6, 1(6)  pop first child's value
414: ADD   0, 0, 1  add two children
415: LDA   1, 0(4)  load fp into ac2
416: ST    0, -6(1)  store int/bool/string into stack
400: JEQ   0, 17(7)  if expr not true
418: LDA   1, 0(4)  load fp into ac2
419: LD    0, -6(1)  load int/bool/str from stack
420: LDA   6, -1(6)  push array index
421: LDC   3, 197(5)  push array index
422: SUB   3, 6, 3  push array index
423: JLE   3, 16(5)  push array index
424: ST    0, 0(6)  push array index
425: LDC   0, 1(5)  push array dimension
426: LDC   0, 0(5)  load 0 to ac
427: LD    1, 0(6)  pop index
428: LDA   6, 1(6)  pop index
429: JLT   1, 6(5)  jump if index less than 0
430: LDC   3, 10(5)  load array size
431: SUB   3, 3, 1  sub max size with index
432: JLE   3, 6(5)  jump if index greater than size - 1
433: LDC   2, 1(5)  load size of subarray
434: MUL   1, 1, 2  compute 0 dim
435: ADD   0, 0, 1  add result
436: LDA   1, 0(4)  load fp into ac2
437: LD    1, -4(1)  load local offset into ac2
438: ADD   0, 0, 1  compute final offset
439: LD    0, 0(0)  load data from array
440: LDA   6, -1(6)  push first child's value
441: LDC   3, 197(5)  push first child's value
442: SUB   3, 6, 3  push first child's value
443: JLE   3, 16(5)  push first child's value
444: ST    0, 0(6)  push first child's value
445: LDC   0, 43(5)  load integer 43
446: LD    1, 0(6)  pop first child's value
447: LDA   6, 1(6)  pop first child's value
448: SUB   1, 1, 0  greater than
449: LDC   0, 1(5)  load 1 as true
450: JEQ   1, 1(7)  skip load false
451: LDC   0, 0(5)  load 0 as false
453: LDA   1, 0(4)  load fp into ac2
454: LD    0, -6(1)  load int/bool/str from stack
455: LDA   6, -1(6)  push first child's value
456: LDC   3, 197(5)  push first child's value
457: SUB   3, 6, 3  push first child's value
458: JLE   3, 16(5)  push first child's value
459: ST    0, 0(6)  push first child's value
460: LDC   0, 1(5)  load integer 1
461: LD    1, 0(6)  pop first child's value
462: LDA   6, 1(6)  pop first child's value
463: ADD   0, 0, 1  add two children
464: LDA   1, 0(4)  load fp into ac2
465: ST    0, -6(1)  store int/bool/string into stack
452: JEQ   0, 14(7)  if expr not true
417: LDA   7, 49(7)  Jump to the end of if
466: LDA   7, 0(7)  Jump to the end of if
467: LDA   1, 0(4)  load fp into ac2
468: LD    0, -6(1)  load int/bool/str from stack
469: LDA   6, -1(6)  push first child's value
470: LDC   3, 197(5)  push first child's value
471: SUB   3, 6, 3  push first child's value
472: JLE   3, 16(5)  push first child's value
473: ST    0, 0(6)  push first child's value
474: LDA   1, 0(4)  load fp into ac2
475: LD    0, -3(1)  load int/bool/str from stack
476: LD    1, 0(6)  pop first child's value
477: LDA   6, 1(6)  pop first child's value
478: SUB   1, 1, 0  greater than
479: LDC   0, 1(5)  load 1 as true
480: JEQ   1, 1(7)  skip load false
481: LDC   0, 0(5)  load 0 as false
482: JEQ   0, 1(7)  if expr not true
484: LDA   6, -1(6)  push fp
485: LDC   3, 197(5)  push fp
486: SUB   3, 6, 3  push fp
487: JLE   3, 16(5)  push fp
488: ST    4, 0(6)  push fp
489: LDA   4, 0(6)  set fp to sp
490: LDA   1, 0(4)  load fp into ac2
491: LD    1, 0(1)  load upper level fp into ac2
492: LD    0, -6(1)  load int/bool/str from stack
493: LDA   6, -1(6)  push low
494: LDC   3, 197(5)  push low
495: SUB   3, 6, 3  push low
496: JLE   3, 16(5)  push low
497: ST    0, 0(6)  push low
498: LDA   1, 0(4)  load fp into ac2
499: LD    1, 0(1)  load upper level fp into ac2
500: LD    0, -3(1)  load int/bool/str from stack
501: LDA   6, -1(6)  push first child's value
502: LDC   3, 197(5)  push first child's value
503: SUB   3, 6, 3  push first child's value
504: JLE   3, 16(5)  push first child's value
505: ST    0, 0(6)  push first child's value
506: LDC   0, 1(5)  load integer 1
507: LD    1, 0(6)  pop first child's value
508: LDA   6, 1(6)  pop first child's value
509: SUB   0, 1, 0  subtract two children
510: LDA   6, -1(6)  push hi
511: LDC   3, 197(5)  push hi
512: SUB   3, 6, 3  push hi
513: JLE   3, 16(5)  push hi
514: ST    0, 0(6)  push hi
515: LD    0, -2(4)  load hi into ac 
516: LD    1, -1(4)  load low into ac2 
517: SUB   0, 0, 1  subtract hi with low
519: LDA   1, 0(4)  load fp into ac2
520: LD    0, -1(1)  load int/bool/str from stack
521: LDA   6, -1(6)  push array index
522: LDC   3, 197(5)  push array index
523: SUB   3, 6, 3  push array index
524: JLE   3, 16(5)  push array index
525: ST    0, 0(6)  push array index
526: LDC   0, 1(5)  push array dimension
527: LDC   0, 0(5)  load 0 to ac
528: LD    1, 0(6)  pop index
529: LDA   6, 1(6)  pop index
530: JLT   1, 6(5)  jump if index less than 0
531: LDC   3, 10(5)  load array size
532: SUB   3, 3, 1  sub max size with index
533: JLE   3, 6(5)  jump if index greater than size - 1
534: LDC   2, 1(5)  load size of subarray
535: MUL   1, 1, 2  compute 0 dim
536: ADD   0, 0, 1  add result
537: LDA   1, 0(4)  load fp into ac2
538: LD    1, 0(1)  load upper level fp into ac2
539: LD    1, -4(1)  load local offset into ac2
540: ADD   0, 0, 1  compute final offset
541: LD    0, 0(0)  load data from array
542: LDA   6, -1(6)  push first child's value
543: LDC   3, 197(5)  push first child's value
544: SUB   3, 6, 3  push first child's value
545: JLE   3, 16(5)  push first child's value
546: ST    0, 0(6)  push first child's value
547: LDC   0, 48(5)  load integer 48
548: LD    1, 0(6)  pop first child's value
549: LDA   6, 1(6)  pop first child's value
550: SUB   1, 1, 0  greater than
551: LDC   0, 1(5)  load 1 as true
552: JLT   1, 1(7)  skip load false
553: LDC   0, 0(5)  load 0 as false
554: LDA   6, -1(6)  push first child's value
555: LDC   3, 197(5)  push first child's value
556: SUB   3, 6, 3  push first child's value
557: JLE   3, 16(5)  push first child's value
558: ST    0, 0(6)  push first child's value
560: LDA   1, 0(4)  load fp into ac2
561: LD    0, -1(1)  load int/bool/str from stack
562: LDA   6, -1(6)  push array index
563: LDC   3, 197(5)  push array index
564: SUB   3, 6, 3  push array index
565: JLE   3, 16(5)  push array index
566: ST    0, 0(6)  push array index
567: LDC   0, 1(5)  push array dimension
568: LDC   0, 0(5)  load 0 to ac
569: LD    1, 0(6)  pop index
570: LDA   6, 1(6)  pop index
571: JLT   1, 6(5)  jump if index less than 0
572: LDC   3, 10(5)  load array size
573: SUB   3, 3, 1  sub max size with index
574: JLE   3, 6(5)  jump if index greater than size - 1
575: LDC   2, 1(5)  load size of subarray
576: MUL   1, 1, 2  compute 0 dim
577: ADD   0, 0, 1  add result
578: LDA   1, 0(4)  load fp into ac2
579: LD    1, 0(1)  load upper level fp into ac2
580: LD    1, -4(1)  load local offset into ac2
581: ADD   0, 0, 1  compute final offset
582: LD    0, 0(0)  load data from array
583: LDA   6, -1(6)  push first child's value
584: LDC   3, 197(5)  push first child's value
585: SUB   3, 6, 3  push first child's value
586: JLE   3, 16(5)  push first child's value
587: ST    0, 0(6)  push first child's value
588: LDC   0, 57(5)  load integer 57
589: LD    1, 0(6)  pop first child's value
590: LDA   6, 1(6)  pop first child's value
591: SUB   1, 1, 0  greater than
592: LDC   0, 1(5)  load 1 as true
593: JGT   1, 1(7)  skip load false
594: LDC   0, 0(5)  load 0 as false
595: LD    1, 0(6)  pop first child's value
596: LDA   6, 1(6)  pop first child's value
597: ADD   1, 0, 1  add two children
598: LDC   0, 1(5)  load 1 as true
599: JNE   1, 1(7)  skip load false
600: LDC   0, 0(5)  load 0 as false
559: JNE   0, 41(7)  short circuit
601: JEQ   0, 1(7)  if expr not true
603: LDC   0, 10(5)  load integer 10
604: LDA   6, -1(6)  push first child's value
605: LDC   3, 197(5)  push first child's value
606: SUB   3, 6, 3  push first child's value
607: JLE   3, 16(5)  push first child's value
608: ST    0, 0(6)  push first child's value
609: LDA   1, 0(4)  load fp into ac2
610: LD    1, 0(1)  load upper level fp into ac2
611: LD    0, -2(1)  load int/bool/str from stack
612: LD    1, 0(6)  pop first child's value
613: LDA   6, 1(6)  pop first child's value
614: MUL   0, 0, 1  multiply two children
615: LDA   6, -1(6)  push first child's value
616: LDC   3, 197(5)  push first child's value
617: SUB   3, 6, 3  push first child's value
618: JLE   3, 16(5)  push first child's value
619: ST    0, 0(6)  push first child's value
620: LDA   1, 0(4)  load fp into ac2
621: LD    0, -1(1)  load int/bool/str from stack
622: LDA   6, -1(6)  push array index
623: LDC   3, 197(5)  push array index
624: SUB   3, 6, 3  push array index
625: JLE   3, 16(5)  push array index
626: ST    0, 0(6)  push array index
627: LDC   0, 1(5)  push array dimension
628: LDC   0, 0(5)  load 0 to ac
629: LD    1, 0(6)  pop index
630: LDA   6, 1(6)  pop index
631: JLT   1, 6(5)  jump if index less than 0
632: LDC   3, 10(5)  load array size
633: SUB   3, 3, 1  sub max size with index
634: JLE   3, 6(5)  jump if index greater than size - 1
635: LDC   2, 1(5)  load size of subarray
636: MUL   1, 1, 2  compute 0 dim
637: ADD   0, 0, 1  add result
638: LDA   1, 0(4)  load fp into ac2
639: LD    1, 0(1)  load upper level fp into ac2
640: LD    1, -4(1)  load local offset into ac2
641: ADD   0, 0, 1  compute final offset
642: LD    0, 0(0)  load data from array
643: LD    1, 0(6)  pop first child's value
644: LDA   6, 1(6)  pop first child's value
645: ADD   0, 0, 1  add two children
646: LDA   6, -1(6)  push first child's value
647: LDC   3, 197(5)  push first child's value
648: SUB   3, 6, 3  push first child's value
649: JLE   3, 16(5)  push first child's value
650: ST    0, 0(6)  push first child's value
651: LDC   0, 48(5)  load integer 48
652: LD    1, 0(6)  pop first child's value
653: LDA   6, 1(6)  pop first child's value
654: SUB   0, 1, 0  subtract two children
655: LDA   1, 0(4)  load fp into ac2
656: LD    1, 0(1)  load upper level fp into ac2
657: ST    0, -2(1)  store int/bool/string into stack
658: LD    0, -1(4)  load low into ac
659: LDA   0, 1(0)  decrease low
660: ST    0, -1(4)  save low
661: LDA   7, -147(7)  jump back to loop start
518: JLT   0, 143(7)  jump out of the fa loop
602: LDA   7, 59(7)  break -> jump out of the do loop
662: LDA   6, 0(4)  change sp to fp + 1
663: LD    4, 0(6)  restore fp
664: LDA   6, 1(6)  restore fp
665: LDA   1, 0(4)  load fp into ac2
666: LD    0, -5(1)  load int/bool/str from stack
667: LDA   1, 0(0)  copy AC to AC2
668: LDC   0, 1(5)  load 1 as true
669: JEQ   1, 1(7)  skip load false
670: LDC   0, 0(5)  load 0 as false
672: LDA   1, 0(4)  load fp into ac2
673: LD    0, -2(1)  load int/bool/str from stack
674: LDC   1, 0(5)  load 0 into AC2
675: SUB   0, 1, 0  compute negative number
676: LDA   1, 0(4)  load fp into ac2
677: ST    0, -2(1)  store int/bool/string into stack
671: JEQ   0, 6(7)  if expr not true
115: LDA   7, 562(7)  return procedure call
365: LDA   7, 312(7)  return procedure call
483: LDA   7, 194(7)  return procedure call
678: LD    0, -2(4)  load int/bool/string offset as return value
679: LD    1, -1(4)  load return address
680: LDA   6, 0(4)  change sp to fp + 1
681: LD    4, 0(6)  restore fp
682: LDA   6, 1(6)  restore fp
683: LDA   7, 0(1)  jump to the return address
5: LDA   7, 684(5)  jump to start of the program
684: LDC   0, 0(5)  load integer 0
685: LDA   6, -1(6)  push array index
686: LDC   3, 197(5)  push array index
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
701: LD    1, 186(5)  load offset into ac2
702: ADD   0, 0, 1  compute final offset
703: LDA   6, -1(6)  push final offset
704: LDC   3, 197(5)  push final offset
705: SUB   3, 6, 3  push final offset
706: JLE   3, 16(5)  push final offset
707: ST    0, 0(6)  push final offset
708: LDC   0, 32(5)  load integer 32
709: LD    1, 0(6)  pop final offset
710: LDA   6, 1(6)  pop final offset
711: ST    0, 0(1)  store value into array static data
712: LDC   0, 1(5)  load integer 1
713: LDA   6, -1(6)  push array index
714: LDC   3, 197(5)  push array index
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
729: LD    1, 186(5)  load offset into ac2
730: ADD   0, 0, 1  compute final offset
731: LDA   6, -1(6)  push final offset
732: LDC   3, 197(5)  push final offset
733: SUB   3, 6, 3  push final offset
734: JLE   3, 16(5)  push final offset
735: ST    0, 0(6)  push final offset
736: LDC   0, 45(5)  load integer 45
737: LD    1, 0(6)  pop final offset
738: LDA   6, 1(6)  pop final offset
739: ST    0, 0(1)  store value into array static data
740: LDC   0, 2(5)  load integer 2
741: LDA   6, -1(6)  push array index
742: LDC   3, 197(5)  push array index
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
757: LD    1, 186(5)  load offset into ac2
758: ADD   0, 0, 1  compute final offset
759: LDA   6, -1(6)  push final offset
760: LDC   3, 197(5)  push final offset
761: SUB   3, 6, 3  push final offset
762: JLE   3, 16(5)  push final offset
763: ST    0, 0(6)  push final offset
764: LDC   0, 49(5)  load integer 49
765: LD    1, 0(6)  pop final offset
766: LDA   6, 1(6)  pop final offset
767: ST    0, 0(1)  store value into array static data
768: LDC   0, 3(5)  load integer 3
769: LDA   6, -1(6)  push array index
770: LDC   3, 197(5)  push array index
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
785: LD    1, 186(5)  load offset into ac2
786: ADD   0, 0, 1  compute final offset
787: LDA   6, -1(6)  push final offset
788: LDC   3, 197(5)  push final offset
789: SUB   3, 6, 3  push final offset
790: JLE   3, 16(5)  push final offset
791: ST    0, 0(6)  push final offset
792: LDC   0, 48(5)  load integer 48
793: LD    1, 0(6)  pop final offset
794: LDA   6, 1(6)  pop final offset
795: ST    0, 0(1)  store value into array static data
796: LDC   0, 4(5)  load integer 4
797: LDA   6, -1(6)  push array index
798: LDC   3, 197(5)  push array index
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
813: LD    1, 186(5)  load offset into ac2
814: ADD   0, 0, 1  compute final offset
815: LDA   6, -1(6)  push final offset
816: LDC   3, 197(5)  push final offset
817: SUB   3, 6, 3  push final offset
818: JLE   3, 16(5)  push final offset
819: ST    0, 0(6)  push final offset
820: LDC   0, 32(5)  load integer 32
821: LD    1, 0(6)  pop final offset
822: LDA   6, 1(6)  pop final offset
823: ST    0, 0(1)  store value into array static data
824: LDC   0, 5(5)  load integer 5
825: LDA   6, -1(6)  push array index
826: LDC   3, 197(5)  push array index
827: SUB   3, 6, 3  push array index
828: JLE   3, 16(5)  push array index
829: ST    0, 0(6)  push array index
830: LDC   0, 1(5)  push array dimension
831: LDC   0, 0(5)  load 0 to ac
832: LD    1, 0(6)  pop index
833: LDA   6, 1(6)  pop index
834: JLT   1, 6(5)  jump if index less than 0
835: LDC   3, 10(5)  load array size
836: SUB   3, 3, 1  sub max size with index
837: JLE   3, 6(5)  jump if index greater than size - 1
838: LDC   2, 1(5)  load size of subarray
839: MUL   1, 1, 2  compute 0 dim
840: ADD   0, 0, 1  add result
841: LD    1, 186(5)  load offset into ac2
842: ADD   0, 0, 1  compute final offset
843: LDA   6, -1(6)  push final offset
844: LDC   3, 197(5)  push final offset
845: SUB   3, 6, 3  push final offset
846: JLE   3, 16(5)  push final offset
847: ST    0, 0(6)  push final offset
848: LDC   0, 49(5)  load integer 49
849: LD    1, 0(6)  pop final offset
850: LDA   6, 1(6)  pop final offset
851: ST    0, 0(1)  store value into array static data
852: LDA   6, -1(6)  push fp
853: LDC   3, 197(5)  push fp
854: SUB   3, 6, 3  push fp
855: JLE   3, 16(5)  push fp
856: ST    4, 0(6)  push fp
857: LDA   4, 0(6)  set fp to sp
864: LDA   6, -1(6)  push zero as return value
865: LDC   3, 197(5)  push zero as return value
866: SUB   3, 6, 3  push zero as return value
867: JLE   3, 16(5)  push zero as return value
868: ST    5, 0(6)  push zero as return value
869: LDC   0, 5(5)  load integer 5
870: LDA   6, -1(6)  push int/bool/str parameter
871: LDC   3, 197(5)  push int/bool/str parameter
872: SUB   3, 6, 3  push int/bool/str parameter
873: JLE   3, 16(5)  push int/bool/str parameter
874: ST    0, 0(6)  push int/bool/str parameter
875: LDC   0, 1(5)  push array dimension
876: LDC   0, 0(5)  load 0 to ac
877: LD    1, 186(5)  load global offset into ac2
878: ADD   0, 0, 1  compute final offset
879: LDA   6, -1(6)  push array parameter
880: LDC   3, 197(5)  push array parameter
881: SUB   3, 6, 3  push array parameter
882: JLE   3, 16(5)  push array parameter
883: ST    0, 0(6)  push array parameter
884: LDA   6, -3(6)  preserve space for local vars
885: LDA   7, 94(5)  jump to procedure call
858: LDC   0, 886(5)  load return address into ac
859: LDA   6, -1(6)  push return address
860: LDC   3, 197(5)  push return address
861: SUB   3, 6, 3  push return address
862: JLE   3, 16(5)  push return address
863: ST    0, 0(6)  push return address
886: OUT   0, 0, 0  write integer
887: OUTNL 0, 0, 0  write new line
888: LDC   0, 0(5)  load integer 0
889: LDA   6, -1(6)  push array index
890: LDC   3, 197(5)  push array index
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
905: LD    1, 186(5)  load offset into ac2
906: ADD   0, 0, 1  compute final offset
907: LDA   6, -1(6)  push final offset
908: LDC   3, 197(5)  push final offset
909: SUB   3, 6, 3  push final offset
910: JLE   3, 16(5)  push final offset
911: ST    0, 0(6)  push final offset
912: LDC   0, 49(5)  load integer 49
913: LD    1, 0(6)  pop final offset
914: LDA   6, 1(6)  pop final offset
915: ST    0, 0(1)  store value into array static data
916: LDC   0, 1(5)  load integer 1
917: LDA   6, -1(6)  push array index
918: LDC   3, 197(5)  push array index
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
933: LD    1, 186(5)  load offset into ac2
934: ADD   0, 0, 1  compute final offset
935: LDA   6, -1(6)  push final offset
936: LDC   3, 197(5)  push final offset
937: SUB   3, 6, 3  push final offset
938: JLE   3, 16(5)  push final offset
939: ST    0, 0(6)  push final offset
940: LDC   0, 48(5)  load integer 48
941: LD    1, 0(6)  pop final offset
942: LDA   6, 1(6)  pop final offset
943: ST    0, 0(1)  store value into array static data
944: LDC   0, 2(5)  load integer 2
945: LDA   6, -1(6)  push array index
946: LDC   3, 197(5)  push array index
947: SUB   3, 6, 3  push array index
948: JLE   3, 16(5)  push array index
949: ST    0, 0(6)  push array index
950: LDC   0, 1(5)  push array dimension
951: LDC   0, 0(5)  load 0 to ac
952: LD    1, 0(6)  pop index
953: LDA   6, 1(6)  pop index
954: JLT   1, 6(5)  jump if index less than 0
955: LDC   3, 10(5)  load array size
956: SUB   3, 3, 1  sub max size with index
957: JLE   3, 6(5)  jump if index greater than size - 1
958: LDC   2, 1(5)  load size of subarray
959: MUL   1, 1, 2  compute 0 dim
960: ADD   0, 0, 1  add result
961: LD    1, 186(5)  load offset into ac2
962: ADD   0, 0, 1  compute final offset
963: LDA   6, -1(6)  push final offset
964: LDC   3, 197(5)  push final offset
965: SUB   3, 6, 3  push final offset
966: JLE   3, 16(5)  push final offset
967: ST    0, 0(6)  push final offset
968: LDC   0, 49(5)  load integer 49
969: LD    1, 0(6)  pop final offset
970: LDA   6, 1(6)  pop final offset
971: ST    0, 0(1)  store value into array static data
972: LDA   6, -1(6)  push fp
973: LDC   3, 197(5)  push fp
974: SUB   3, 6, 3  push fp
975: JLE   3, 16(5)  push fp
976: ST    4, 0(6)  push fp
977: LDA   4, 0(6)  set fp to sp
984: LDA   6, -1(6)  push zero as return value
985: LDC   3, 197(5)  push zero as return value
986: SUB   3, 6, 3  push zero as return value
987: JLE   3, 16(5)  push zero as return value
988: ST    5, 0(6)  push zero as return value
989: LDC   0, 2(5)  load integer 2
990: LDA   6, -1(6)  push int/bool/str parameter
991: LDC   3, 197(5)  push int/bool/str parameter
992: SUB   3, 6, 3  push int/bool/str parameter
993: JLE   3, 16(5)  push int/bool/str parameter
994: ST    0, 0(6)  push int/bool/str parameter
995: LDC   0, 1(5)  push array dimension
996: LDC   0, 0(5)  load 0 to ac
997: LD    1, 186(5)  load global offset into ac2
998: ADD   0, 0, 1  compute final offset
999: LDA   6, -1(6)  push array parameter
1000: LDC   3, 197(5)  push array parameter
1001: SUB   3, 6, 3  push array parameter
1002: JLE   3, 16(5)  push array parameter
1003: ST    0, 0(6)  push array parameter
1004: LDA   6, -3(6)  preserve space for local vars
1005: LDA   7, 94(5)  jump to procedure call
978: LDC   0, 1006(5)  load return address into ac
979: LDA   6, -1(6)  push return address
980: LDC   3, 197(5)  push return address
981: SUB   3, 6, 3  push return address
982: JLE   3, 16(5)  push return address
983: ST    0, 0(6)  push return address
1006: OUT   0, 0, 0  write integer
1007: OUTNL 0, 0, 0  write new line
1008: LDC   0, 0(5)  load integer 0
1009: LDA   6, -1(6)  push array index
1010: LDC   3, 197(5)  push array index
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
1025: LD    1, 186(5)  load offset into ac2
1026: ADD   0, 0, 1  compute final offset
1027: LDA   6, -1(6)  push final offset
1028: LDC   3, 197(5)  push final offset
1029: SUB   3, 6, 3  push final offset
1030: JLE   3, 16(5)  push final offset
1031: ST    0, 0(6)  push final offset
1032: LDC   0, 49(5)  load integer 49
1033: LD    1, 0(6)  pop final offset
1034: LDA   6, 1(6)  pop final offset
1035: ST    0, 0(1)  store value into array static data
1036: LDC   0, 1(5)  load integer 1
1037: LDA   6, -1(6)  push array index
1038: LDC   3, 197(5)  push array index
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
1053: LD    1, 186(5)  load offset into ac2
1054: ADD   0, 0, 1  compute final offset
1055: LDA   6, -1(6)  push final offset
1056: LDC   3, 197(5)  push final offset
1057: SUB   3, 6, 3  push final offset
1058: JLE   3, 16(5)  push final offset
1059: ST    0, 0(6)  push final offset
1060: LDC   0, 48(5)  load integer 48
1061: LD    1, 0(6)  pop final offset
1062: LDA   6, 1(6)  pop final offset
1063: ST    0, 0(1)  store value into array static data
1064: LDC   0, 2(5)  load integer 2
1065: LDA   6, -1(6)  push array index
1066: LDC   3, 197(5)  push array index
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
1081: LD    1, 186(5)  load offset into ac2
1082: ADD   0, 0, 1  compute final offset
1083: LDA   6, -1(6)  push final offset
1084: LDC   3, 197(5)  push final offset
1085: SUB   3, 6, 3  push final offset
1086: JLE   3, 16(5)  push final offset
1087: ST    0, 0(6)  push final offset
1088: LDC   0, 32(5)  load integer 32
1089: LD    1, 0(6)  pop final offset
1090: LDA   6, 1(6)  pop final offset
1091: ST    0, 0(1)  store value into array static data
1092: LDC   0, 3(5)  load integer 3
1093: LDA   6, -1(6)  push array index
1094: LDC   3, 197(5)  push array index
1095: SUB   3, 6, 3  push array index
1096: JLE   3, 16(5)  push array index
1097: ST    0, 0(6)  push array index
1098: LDC   0, 1(5)  push array dimension
1099: LDC   0, 0(5)  load 0 to ac
1100: LD    1, 0(6)  pop index
1101: LDA   6, 1(6)  pop index
1102: JLT   1, 6(5)  jump if index less than 0
1103: LDC   3, 10(5)  load array size
1104: SUB   3, 3, 1  sub max size with index
1105: JLE   3, 6(5)  jump if index greater than size - 1
1106: LDC   2, 1(5)  load size of subarray
1107: MUL   1, 1, 2  compute 0 dim
1108: ADD   0, 0, 1  add result
1109: LD    1, 186(5)  load offset into ac2
1110: ADD   0, 0, 1  compute final offset
1111: LDA   6, -1(6)  push final offset
1112: LDC   3, 197(5)  push final offset
1113: SUB   3, 6, 3  push final offset
1114: JLE   3, 16(5)  push final offset
1115: ST    0, 0(6)  push final offset
1116: LDC   0, 49(5)  load integer 49
1117: LD    1, 0(6)  pop final offset
1118: LDA   6, 1(6)  pop final offset
1119: ST    0, 0(1)  store value into array static data
1120: LDA   6, -1(6)  push fp
1121: LDC   3, 197(5)  push fp
1122: SUB   3, 6, 3  push fp
1123: JLE   3, 16(5)  push fp
1124: ST    4, 0(6)  push fp
1125: LDA   4, 0(6)  set fp to sp
1132: LDA   6, -1(6)  push zero as return value
1133: LDC   3, 197(5)  push zero as return value
1134: SUB   3, 6, 3  push zero as return value
1135: JLE   3, 16(5)  push zero as return value
1136: ST    5, 0(6)  push zero as return value
1137: LDC   0, 3(5)  load integer 3
1138: LDA   6, -1(6)  push int/bool/str parameter
1139: LDC   3, 197(5)  push int/bool/str parameter
1140: SUB   3, 6, 3  push int/bool/str parameter
1141: JLE   3, 16(5)  push int/bool/str parameter
1142: ST    0, 0(6)  push int/bool/str parameter
1143: LDC   0, 1(5)  push array dimension
1144: LDC   0, 0(5)  load 0 to ac
1145: LD    1, 186(5)  load global offset into ac2
1146: ADD   0, 0, 1  compute final offset
1147: LDA   6, -1(6)  push array parameter
1148: LDC   3, 197(5)  push array parameter
1149: SUB   3, 6, 3  push array parameter
1150: JLE   3, 16(5)  push array parameter
1151: ST    0, 0(6)  push array parameter
1152: LDA   6, -3(6)  preserve space for local vars
1153: LDA   7, 94(5)  jump to procedure call
1126: LDC   0, 1154(5)  load return address into ac
1127: LDA   6, -1(6)  push return address
1128: LDC   3, 197(5)  push return address
1129: SUB   3, 6, 3  push return address
1130: JLE   3, 16(5)  push return address
1131: ST    0, 0(6)  push return address
1154: OUT   0, 0, 0  write integer
1155: OUTNL 0, 0, 0  write new line
1156: LDC   0, 0(5)  load integer 0
1157: LDA   6, -1(6)  push array index
1158: LDC   3, 197(5)  push array index
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
1173: LD    1, 186(5)  load offset into ac2
1174: ADD   0, 0, 1  compute final offset
1175: LDA   6, -1(6)  push final offset
1176: LDC   3, 197(5)  push final offset
1177: SUB   3, 6, 3  push final offset
1178: JLE   3, 16(5)  push final offset
1179: ST    0, 0(6)  push final offset
1180: LDC   0, 49(5)  load integer 49
1181: LD    1, 0(6)  pop final offset
1182: LDA   6, 1(6)  pop final offset
1183: ST    0, 0(1)  store value into array static data
1184: LDC   0, 1(5)  load integer 1
1185: LDA   6, -1(6)  push array index
1186: LDC   3, 197(5)  push array index
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
1201: LD    1, 186(5)  load offset into ac2
1202: ADD   0, 0, 1  compute final offset
1203: LDA   6, -1(6)  push final offset
1204: LDC   3, 197(5)  push final offset
1205: SUB   3, 6, 3  push final offset
1206: JLE   3, 16(5)  push final offset
1207: ST    0, 0(6)  push final offset
1208: LDC   0, 45(5)  load integer 45
1209: LD    1, 0(6)  pop final offset
1210: LDA   6, 1(6)  pop final offset
1211: ST    0, 0(1)  store value into array static data
1212: LDC   0, 2(5)  load integer 2
1213: LDA   6, -1(6)  push array index
1214: LDC   3, 197(5)  push array index
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
1229: LD    1, 186(5)  load offset into ac2
1230: ADD   0, 0, 1  compute final offset
1231: LDA   6, -1(6)  push final offset
1232: LDC   3, 197(5)  push final offset
1233: SUB   3, 6, 3  push final offset
1234: JLE   3, 16(5)  push final offset
1235: ST    0, 0(6)  push final offset
1236: LDC   0, 48(5)  load integer 48
1237: LD    1, 0(6)  pop final offset
1238: LDA   6, 1(6)  pop final offset
1239: ST    0, 0(1)  store value into array static data
1240: LDC   0, 3(5)  load integer 3
1241: LDA   6, -1(6)  push array index
1242: LDC   3, 197(5)  push array index
1243: SUB   3, 6, 3  push array index
1244: JLE   3, 16(5)  push array index
1245: ST    0, 0(6)  push array index
1246: LDC   0, 1(5)  push array dimension
1247: LDC   0, 0(5)  load 0 to ac
1248: LD    1, 0(6)  pop index
1249: LDA   6, 1(6)  pop index
1250: JLT   1, 6(5)  jump if index less than 0
1251: LDC   3, 10(5)  load array size
1252: SUB   3, 3, 1  sub max size with index
1253: JLE   3, 6(5)  jump if index greater than size - 1
1254: LDC   2, 1(5)  load size of subarray
1255: MUL   1, 1, 2  compute 0 dim
1256: ADD   0, 0, 1  add result
1257: LD    1, 186(5)  load offset into ac2
1258: ADD   0, 0, 1  compute final offset
1259: LDA   6, -1(6)  push final offset
1260: LDC   3, 197(5)  push final offset
1261: SUB   3, 6, 3  push final offset
1262: JLE   3, 16(5)  push final offset
1263: ST    0, 0(6)  push final offset
1264: LDC   0, 49(5)  load integer 49
1265: LD    1, 0(6)  pop final offset
1266: LDA   6, 1(6)  pop final offset
1267: ST    0, 0(1)  store value into array static data
1268: LDA   6, -1(6)  push fp
1269: LDC   3, 197(5)  push fp
1270: SUB   3, 6, 3  push fp
1271: JLE   3, 16(5)  push fp
1272: ST    4, 0(6)  push fp
1273: LDA   4, 0(6)  set fp to sp
1280: LDA   6, -1(6)  push zero as return value
1281: LDC   3, 197(5)  push zero as return value
1282: SUB   3, 6, 3  push zero as return value
1283: JLE   3, 16(5)  push zero as return value
1284: ST    5, 0(6)  push zero as return value
1285: LDC   0, 3(5)  load integer 3
1286: LDA   6, -1(6)  push int/bool/str parameter
1287: LDC   3, 197(5)  push int/bool/str parameter
1288: SUB   3, 6, 3  push int/bool/str parameter
1289: JLE   3, 16(5)  push int/bool/str parameter
1290: ST    0, 0(6)  push int/bool/str parameter
1291: LDC   0, 1(5)  push array dimension
1292: LDC   0, 0(5)  load 0 to ac
1293: LD    1, 186(5)  load global offset into ac2
1294: ADD   0, 0, 1  compute final offset
1295: LDA   6, -1(6)  push array parameter
1296: LDC   3, 197(5)  push array parameter
1297: SUB   3, 6, 3  push array parameter
1298: JLE   3, 16(5)  push array parameter
1299: ST    0, 0(6)  push array parameter
1300: LDA   6, -3(6)  preserve space for local vars
1301: LDA   7, 94(5)  jump to procedure call
1274: LDC   0, 1302(5)  load return address into ac
1275: LDA   6, -1(6)  push return address
1276: LDC   3, 197(5)  push return address
1277: SUB   3, 6, 3  push return address
1278: JLE   3, 16(5)  push return address
1279: ST    0, 0(6)  push return address
1302: OUT   0, 0, 0  write integer
1303: OUTNL 0, 0, 0  write new line
1304: LDA   6, -1(6)  push fp
1305: LDC   3, 197(5)  push fp
1306: SUB   3, 6, 3  push fp
1307: JLE   3, 16(5)  push fp
1308: ST    4, 0(6)  push fp
1309: LDA   4, 0(6)  set fp to sp
1316: LDA   6, -1(6)  push zero as return value
1317: LDC   3, 197(5)  push zero as return value
1318: SUB   3, 6, 3  push zero as return value
1319: JLE   3, 16(5)  push zero as return value
1320: ST    5, 0(6)  push zero as return value
1321: LDC   0, 0(5)  load integer 0
1322: LDA   6, -1(6)  push int/bool/str parameter
1323: LDC   3, 197(5)  push int/bool/str parameter
1324: SUB   3, 6, 3  push int/bool/str parameter
1325: JLE   3, 16(5)  push int/bool/str parameter
1326: ST    0, 0(6)  push int/bool/str parameter
1327: LDC   0, 1(5)  push array dimension
1328: LDC   0, 0(5)  load 0 to ac
1329: LD    1, 186(5)  load global offset into ac2
1330: ADD   0, 0, 1  compute final offset
1331: LDA   6, -1(6)  push array parameter
1332: LDC   3, 197(5)  push array parameter
1333: SUB   3, 6, 3  push array parameter
1334: JLE   3, 16(5)  push array parameter
1335: ST    0, 0(6)  push array parameter
1336: LDA   6, -3(6)  preserve space for local vars
1337: LDA   7, 94(5)  jump to procedure call
1310: LDC   0, 1338(5)  load return address into ac
1311: LDA   6, -1(6)  push return address
1312: LDC   3, 197(5)  push return address
1313: SUB   3, 6, 3  push return address
1314: JLE   3, 16(5)  push return address
1315: ST    0, 0(6)  push return address
1338: OUT   0, 0, 0  write integer
1339: OUTNL 0, 0, 0  write new line
1340: LDC   0, 0(5)  load integer 0
1341: LDA   6, -1(6)  push array index
1342: LDC   3, 197(5)  push array index
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
1357: LD    1, 186(5)  load offset into ac2
1358: ADD   0, 0, 1  compute final offset
1359: LDA   6, -1(6)  push final offset
1360: LDC   3, 197(5)  push final offset
1361: SUB   3, 6, 3  push final offset
1362: JLE   3, 16(5)  push final offset
1363: ST    0, 0(6)  push final offset
1364: LDC   0, 45(5)  load integer 45
1365: LD    1, 0(6)  pop final offset
1366: LDA   6, 1(6)  pop final offset
1367: ST    0, 0(1)  store value into array static data
1368: LDC   0, 1(5)  load integer 1
1369: LDA   6, -1(6)  push array index
1370: LDC   3, 197(5)  push array index
1371: SUB   3, 6, 3  push array index
1372: JLE   3, 16(5)  push array index
1373: ST    0, 0(6)  push array index
1374: LDC   0, 1(5)  push array dimension
1375: LDC   0, 0(5)  load 0 to ac
1376: LD    1, 0(6)  pop index
1377: LDA   6, 1(6)  pop index
1378: JLT   1, 6(5)  jump if index less than 0
1379: LDC   3, 10(5)  load array size
1380: SUB   3, 3, 1  sub max size with index
1381: JLE   3, 6(5)  jump if index greater than size - 1
1382: LDC   2, 1(5)  load size of subarray
1383: MUL   1, 1, 2  compute 0 dim
1384: ADD   0, 0, 1  add result
1385: LD    1, 186(5)  load offset into ac2
1386: ADD   0, 0, 1  compute final offset
1387: LDA   6, -1(6)  push final offset
1388: LDC   3, 197(5)  push final offset
1389: SUB   3, 6, 3  push final offset
1390: JLE   3, 16(5)  push final offset
1391: ST    0, 0(6)  push final offset
1392: LDC   0, 49(5)  load integer 49
1393: LD    1, 0(6)  pop final offset
1394: LDA   6, 1(6)  pop final offset
1395: ST    0, 0(1)  store value into array static data
1396: LDA   6, -1(6)  push fp
1397: LDC   3, 197(5)  push fp
1398: SUB   3, 6, 3  push fp
1399: JLE   3, 16(5)  push fp
1400: ST    4, 0(6)  push fp
1401: LDA   4, 0(6)  set fp to sp
1408: LDA   6, -1(6)  push zero as return value
1409: LDC   3, 197(5)  push zero as return value
1410: SUB   3, 6, 3  push zero as return value
1411: JLE   3, 16(5)  push zero as return value
1412: ST    5, 0(6)  push zero as return value
1413: LDC   0, 1(5)  load integer 1
1414: LDA   6, -1(6)  push int/bool/str parameter
1415: LDC   3, 197(5)  push int/bool/str parameter
1416: SUB   3, 6, 3  push int/bool/str parameter
1417: JLE   3, 16(5)  push int/bool/str parameter
1418: ST    0, 0(6)  push int/bool/str parameter
1419: LDC   0, 1(5)  push array dimension
1420: LDC   0, 0(5)  load 0 to ac
1421: LD    1, 186(5)  load global offset into ac2
1422: ADD   0, 0, 1  compute final offset
1423: LDA   6, -1(6)  push array parameter
1424: LDC   3, 197(5)  push array parameter
1425: SUB   3, 6, 3  push array parameter
1426: JLE   3, 16(5)  push array parameter
1427: ST    0, 0(6)  push array parameter
1428: LDA   6, -3(6)  preserve space for local vars
1429: LDA   7, 94(5)  jump to procedure call
1402: LDC   0, 1430(5)  load return address into ac
1403: LDA   6, -1(6)  push return address
1404: LDC   3, 197(5)  push return address
1405: SUB   3, 6, 3  push return address
1406: JLE   3, 16(5)  push return address
1407: ST    0, 0(6)  push return address
1430: OUT   0, 0, 0  write integer
1431: OUTNL 0, 0, 0  write new line
1432: LDC   0, 0(5)  load integer 0
1433: LDA   6, -1(6)  push array index
1434: LDC   3, 197(5)  push array index
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
1449: LD    1, 186(5)  load offset into ac2
1450: ADD   0, 0, 1  compute final offset
1451: LDA   6, -1(6)  push final offset
1452: LDC   3, 197(5)  push final offset
1453: SUB   3, 6, 3  push final offset
1454: JLE   3, 16(5)  push final offset
1455: ST    0, 0(6)  push final offset
1456: LDC   0, 97(5)  load integer 97
1457: LD    1, 0(6)  pop final offset
1458: LDA   6, 1(6)  pop final offset
1459: ST    0, 0(1)  store value into array static data
1460: LDC   0, 1(5)  load integer 1
1461: LDA   6, -1(6)  push array index
1462: LDC   3, 197(5)  push array index
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
1477: LD    1, 186(5)  load offset into ac2
1478: ADD   0, 0, 1  compute final offset
1479: LDA   6, -1(6)  push final offset
1480: LDC   3, 197(5)  push final offset
1481: SUB   3, 6, 3  push final offset
1482: JLE   3, 16(5)  push final offset
1483: ST    0, 0(6)  push final offset
1484: LDC   0, 98(5)  load integer 98
1485: LD    1, 0(6)  pop final offset
1486: LDA   6, 1(6)  pop final offset
1487: ST    0, 0(1)  store value into array static data
1488: LDC   0, 2(5)  load integer 2
1489: LDA   6, -1(6)  push array index
1490: LDC   3, 197(5)  push array index
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
1505: LD    1, 186(5)  load offset into ac2
1506: ADD   0, 0, 1  compute final offset
1507: LDA   6, -1(6)  push final offset
1508: LDC   3, 197(5)  push final offset
1509: SUB   3, 6, 3  push final offset
1510: JLE   3, 16(5)  push final offset
1511: ST    0, 0(6)  push final offset
1512: LDC   0, 99(5)  load integer 99
1513: LD    1, 0(6)  pop final offset
1514: LDA   6, 1(6)  pop final offset
1515: ST    0, 0(1)  store value into array static data
1516: LDC   0, 3(5)  load integer 3
1517: LDA   6, -1(6)  push array index
1518: LDC   3, 197(5)  push array index
1519: SUB   3, 6, 3  push array index
1520: JLE   3, 16(5)  push array index
1521: ST    0, 0(6)  push array index
1522: LDC   0, 1(5)  push array dimension
1523: LDC   0, 0(5)  load 0 to ac
1524: LD    1, 0(6)  pop index
1525: LDA   6, 1(6)  pop index
1526: JLT   1, 6(5)  jump if index less than 0
1527: LDC   3, 10(5)  load array size
1528: SUB   3, 3, 1  sub max size with index
1529: JLE   3, 6(5)  jump if index greater than size - 1
1530: LDC   2, 1(5)  load size of subarray
1531: MUL   1, 1, 2  compute 0 dim
1532: ADD   0, 0, 1  add result
1533: LD    1, 186(5)  load offset into ac2
1534: ADD   0, 0, 1  compute final offset
1535: LDA   6, -1(6)  push final offset
1536: LDC   3, 197(5)  push final offset
1537: SUB   3, 6, 3  push final offset
1538: JLE   3, 16(5)  push final offset
1539: ST    0, 0(6)  push final offset
1540: LDC   0, 49(5)  load integer 49
1541: LD    1, 0(6)  pop final offset
1542: LDA   6, 1(6)  pop final offset
1543: ST    0, 0(1)  store value into array static data
1544: LDA   6, -1(6)  push fp
1545: LDC   3, 197(5)  push fp
1546: SUB   3, 6, 3  push fp
1547: JLE   3, 16(5)  push fp
1548: ST    4, 0(6)  push fp
1549: LDA   4, 0(6)  set fp to sp
1556: LDA   6, -1(6)  push zero as return value
1557: LDC   3, 197(5)  push zero as return value
1558: SUB   3, 6, 3  push zero as return value
1559: JLE   3, 16(5)  push zero as return value
1560: ST    5, 0(6)  push zero as return value
1561: LDC   0, 3(5)  load integer 3
1562: LDA   6, -1(6)  push int/bool/str parameter
1563: LDC   3, 197(5)  push int/bool/str parameter
1564: SUB   3, 6, 3  push int/bool/str parameter
1565: JLE   3, 16(5)  push int/bool/str parameter
1566: ST    0, 0(6)  push int/bool/str parameter
1567: LDC   0, 1(5)  push array dimension
1568: LDC   0, 0(5)  load 0 to ac
1569: LD    1, 186(5)  load global offset into ac2
1570: ADD   0, 0, 1  compute final offset
1571: LDA   6, -1(6)  push array parameter
1572: LDC   3, 197(5)  push array parameter
1573: SUB   3, 6, 3  push array parameter
1574: JLE   3, 16(5)  push array parameter
1575: ST    0, 0(6)  push array parameter
1576: LDA   6, -3(6)  preserve space for local vars
1577: LDA   7, 94(5)  jump to procedure call
1550: LDC   0, 1578(5)  load return address into ac
1551: LDA   6, -1(6)  push return address
1552: LDC   3, 197(5)  push return address
1553: SUB   3, 6, 3  push return address
1554: JLE   3, 16(5)  push return address
1555: ST    0, 0(6)  push return address
1578: OUT   0, 0, 0  write integer
1579: OUTNL 0, 0, 0  write new line
1580: HALT  0, 0, 0  program ends
