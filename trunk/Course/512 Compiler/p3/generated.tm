.DATA    12
.SDATA   "Sorted list:"
.DATA    6
.SDATA   "Input "
.DATA    18
.SDATA   "array index error!"
.DATA    2
.SDATA   ": "
.DATA    5
.SDATA   "wrong"
.DATA    30
.SDATA   "Input length of array (1-100):"
0: LDC   0, 82(5)  store array start address: 82
1: LDC   1, 81(5)  store array offset into ac2: 81
2: ST    0, 0(1)  store array offset
3: LD    6, 0(5)  save stack pointer
4: LD    4, 0(5)  save frame pointer
6: LDC   0, 21(5)  load array error str address
7: LD    1, 0(0)  load str length into ac2
8: LDA   0, 1(0)  increase offset
9: LD    2, 0(0)  load char into ac3
10: OUTC   2, 2, 2  write char
11: LDA   1, -1(1)  decrease length of remaining string in ac2
12: JNE   1, -5(7)  continue print if not yet finish
13: OUTNL 0, 0, 0  emit newline
14: HALT  0, 0, 0  stop because of standard error
15: LD    0, -3(4)  load str offset
16: LD    1, 0(0)  load str length
17: LDC   2, 0(5)  load 0 as initial result
18: LDA   6, -1(6)  push 0
19: ST    2, 0(6)  push 0
20: LD    2, 0(6)  pop result into AC3
21: LDA   6, 1(6)  pop result into AC3
22: LDC   3, 10(5)  load 10 into ac4
23: MUL   2, 2, 3  mul result with 10
24: LDA   6, -1(6)  push result
25: ST    2, 0(6)  push result
26: LDA   0, 1(0)  increase str offset
27: LD    2, 0(0)  load char
28: LDC   3, 48(5)  load 48 into ac4
29: SUB   2, 2, 3  compute int value
30: LD    3, 0(6)  pop result into AC4
31: LDA   6, 1(6)  pop result into AC4
32: ADD   2, 2, 3  compute result
33: LDA   6, -1(6)  push result
34: ST    2, 0(6)  push result
35: LDA   1, -1(1)  decrease str length
36: JNE   1, 20(5)  continue if str length
37: LD    0, 0(6)  pop result
38: LDA   6, 1(6)  pop result
39: ST    0, -2(4)  save to return value
40: LD    0, -2(4)  load int/bool/string offset as return value
41: LD    1, -1(4)  load return address
42: LDA   6, 0(4)  change sp to fp + 1
43: LD    4, 0(6)  restore fp
44: LDA   6, 1(6)  restore fp
45: LDA   7, 0(1)  jump to the return address
5: LDA   7, 46(5)  jump to start of the program
46: LDC   0, 49(5)  load string offset 49
47: LD    1, 0(0)  load str length into ac2
48: LDA   0, 1(0)  increase offset
49: LD    2, 0(0)  load char into ac3
50: OUTC   2, 2, 2  write char
51: LDA   1, -1(1)  decrease length of remaining string in ac2
52: JNE   1, -5(7)  continue print if not yet finish
53: OUTNL 0, 0, 0  write new line
54: IN   0, 0, 0  read integer from stdin
55: ST    0, 182(5)  store int/bool/string into previous used static data
56: LD    0, 182(5)  load int/bool/str from static data
57: LDA   6, -1(6)  push first child's value
58: ST    0, 0(6)  push first child's value
59: LDC   0, 1(5)  load integer 1
60: LD    1, 0(6)  pop first child's value
61: LDA   6, 1(6)  pop first child's value
62: SUB   1, 1, 0  greater than
63: LDC   0, 1(5)  load 1 as true
64: JLT   1, 1(7)  skip load false
65: LDC   0, 0(5)  load 0 as false
66: LDA   6, -1(6)  push first child's value
67: ST    0, 0(6)  push first child's value
69: LD    0, 182(5)  load int/bool/str from static data
70: LDA   6, -1(6)  push first child's value
71: ST    0, 0(6)  push first child's value
72: LDC   0, 100(5)  load integer 100
73: LD    1, 0(6)  pop first child's value
74: LDA   6, 1(6)  pop first child's value
75: SUB   1, 1, 0  greater than
76: LDC   0, 1(5)  load 1 as true
77: JGT   1, 1(7)  skip load false
78: LDC   0, 0(5)  load 0 as false
79: LD    1, 0(6)  pop first child's value
80: LDA   6, 1(6)  pop first child's value
81: ADD   1, 0, 1  add two children
82: LDC   0, 1(5)  load 1 as true
83: JNE   1, 1(7)  skip load false
84: LDC   0, 0(5)  load 0 as false
68: JNE   0, 16(7)  short circuit
86: LDC   0, 43(5)  load string offset 43
87: LD    1, 0(0)  load str length into ac2
88: LDA   0, 1(0)  increase offset
89: LD    2, 0(0)  load char into ac3
90: OUTC   2, 2, 2  write char
91: LDA   1, -1(1)  decrease length of remaining string in ac2
92: JNE   1, -5(7)  continue print if not yet finish
93: OUTNL 0, 0, 0  write new line
94: HALT  0, 0, 0  exit program
85: JEQ   0, 9(7)  if expr not true
95: LD    0, 182(5)  load int/bool/str from static data
96: LDA   6, -1(6)  push first child's value
97: ST    0, 0(6)  push first child's value
98: LDC   0, 1(5)  load integer 1
99: LD    1, 0(6)  pop first child's value
100: LDA   6, 1(6)  pop first child's value
101: SUB   0, 1, 0  subtract two children
102: ST    0, 182(5)  store int/bool/string into previous used static data
103: LDA   6, -1(6)  push fp
104: ST    4, 0(6)  push fp
105: LDA   4, 0(6)  set fp to sp
106: LDC   0, 0(5)  load integer 0
107: LDA   6, -1(6)  push low
108: ST    0, 0(6)  push low
109: LD    0, 182(5)  load int/bool/str from static data
110: LDA   6, -1(6)  push hi
111: ST    0, 0(6)  push hi
112: LD    0, -2(4)  load hi into ac 
113: LD    1, -1(4)  load low into ac2 
114: SUB   0, 0, 1  subtract hi with low
116: LDC   0, 14(5)  load string offset 14
117: LD    1, 0(0)  load str length into ac2
118: LDA   0, 1(0)  increase offset
119: LD    2, 0(0)  load char into ac3
120: OUTC   2, 2, 2  write char
121: LDA   1, -1(1)  decrease length of remaining string in ac2
122: JNE   1, -5(7)  continue print if not yet finish
123: LDA   1, 0(4)  load fp into ac2
124: LD    0, -1(1)  load int/bool/str from stack
125: LDA   6, -1(6)  push first child's value
126: ST    0, 0(6)  push first child's value
127: LDC   0, 1(5)  load integer 1
128: LD    1, 0(6)  pop first child's value
129: LDA   6, 1(6)  pop first child's value
130: ADD   0, 0, 1  add two children
131: OUT   0, 0, 0  write integer
132: LDC   0, 40(5)  load string offset 40
133: LD    1, 0(0)  load str length into ac2
134: LDA   0, 1(0)  increase offset
135: LD    2, 0(0)  load char into ac3
136: OUTC   2, 2, 2  write char
137: LDA   1, -1(1)  decrease length of remaining string in ac2
138: JNE   1, -5(7)  continue print if not yet finish
139: LDA   1, 0(4)  load fp into ac2
140: LD    0, -1(1)  load int/bool/str from stack
141: LDA   6, -1(6)  push array index
142: ST    0, 0(6)  push array index
143: LDC   0, 1(5)  push array dimension
144: LDC   0, 0(5)  load 0 to ac
145: LD    1, 0(6)  pop index
146: LDA   6, 1(6)  pop index
147: JLT   1, 6(5)  jump if index less than 0
148: LDC   3, 100(5)  load array size
149: SUB   3, 3, 1  sub max size with index
150: JLE   3, 6(5)  jump if index greater than size - 1
151: LDC   2, 1(5)  load size of subarray
152: MUL   1, 1, 2  compute 0 dim
153: ADD   0, 0, 1  add result
154: LD    1, 81(5)  load offset into ac2
155: ADD   0, 0, 1  compute final offset
156: LDA   6, -1(6)  push final offset
157: ST    0, 0(6)  push final offset
158: IN   0, 0, 0  read integer from stdin
159: LD    1, 0(6)  pop final offset
160: LDA   6, 1(6)  pop final offset
161: ST    0, 0(1)  store value into array static data
162: LD    0, -1(4)  load low into ac
163: LDA   0, 1(0)  decrease low
164: ST    0, -1(4)  save low
165: LDA   7, -54(7)  jump back to loop start
115: JLT   0, 50(7)  jump out of the fa loop
166: LDA   6, 0(4)  change sp to fp + 1
167: LD    4, 0(6)  restore fp
168: LDA   6, 1(6)  restore fp
169: LDA   6, -1(6)  push fp
170: ST    4, 0(6)  push fp
171: LDA   4, 0(6)  set fp to sp
172: LDC   0, 0(5)  load integer 0
173: LDA   6, -1(6)  push low
174: ST    0, 0(6)  push low
175: LD    0, 182(5)  load int/bool/str from static data
176: LDA   6, -1(6)  push first child's value
177: ST    0, 0(6)  push first child's value
178: LDC   0, 1(5)  load integer 1
179: LD    1, 0(6)  pop first child's value
180: LDA   6, 1(6)  pop first child's value
181: SUB   0, 1, 0  subtract two children
182: LDA   6, -1(6)  push hi
183: ST    0, 0(6)  push hi
184: LD    0, -2(4)  load hi into ac 
185: LD    1, -1(4)  load low into ac2 
186: SUB   0, 0, 1  subtract hi with low
188: LDA   6, -1(6)  push fp
189: ST    4, 0(6)  push fp
190: LDA   4, 0(6)  set fp to sp
191: LDA   1, 0(4)  load fp into ac2
192: LD    1, 0(1)  load upper level fp into ac2
193: LD    0, -1(1)  load int/bool/str from stack
194: LDA   6, -1(6)  push first child's value
195: ST    0, 0(6)  push first child's value
196: LDC   0, 1(5)  load integer 1
197: LD    1, 0(6)  pop first child's value
198: LDA   6, 1(6)  pop first child's value
199: ADD   0, 0, 1  add two children
200: LDA   6, -1(6)  push low
201: ST    0, 0(6)  push low
202: LD    0, 182(5)  load int/bool/str from static data
203: LDA   6, -1(6)  push hi
204: ST    0, 0(6)  push hi
205: LD    0, -2(4)  load hi into ac 
206: LD    1, -1(4)  load low into ac2 
207: SUB   0, 0, 1  subtract hi with low
209: LDA   1, 0(4)  load fp into ac2
210: LD    1, 0(1)  load upper level fp into ac2
211: LD    0, -1(1)  load int/bool/str from stack
212: LDA   6, -1(6)  push array index
213: ST    0, 0(6)  push array index
214: LDC   0, 1(5)  push array dimension
215: LDC   0, 0(5)  load 0 to ac
216: LD    1, 0(6)  pop index
217: LDA   6, 1(6)  pop index
218: JLT   1, 6(5)  jump if index less than 0
219: LDC   3, 100(5)  load array size
220: SUB   3, 3, 1  sub max size with index
221: JLE   3, 6(5)  jump if index greater than size - 1
222: LDC   2, 1(5)  load size of subarray
223: MUL   1, 1, 2  compute 0 dim
224: ADD   0, 0, 1  add result
225: LD    1, 81(5)  load global offset into ac2
226: ADD   0, 0, 1  compute final offset
227: LD    0, 0(0)  load data from array
228: LDA   6, -1(6)  push first child's value
229: ST    0, 0(6)  push first child's value
230: LDA   1, 0(4)  load fp into ac2
231: LD    0, -1(1)  load int/bool/str from stack
232: LDA   6, -1(6)  push array index
233: ST    0, 0(6)  push array index
234: LDC   0, 1(5)  push array dimension
235: LDC   0, 0(5)  load 0 to ac
236: LD    1, 0(6)  pop index
237: LDA   6, 1(6)  pop index
238: JLT   1, 6(5)  jump if index less than 0
239: LDC   3, 100(5)  load array size
240: SUB   3, 3, 1  sub max size with index
241: JLE   3, 6(5)  jump if index greater than size - 1
242: LDC   2, 1(5)  load size of subarray
243: MUL   1, 1, 2  compute 0 dim
244: ADD   0, 0, 1  add result
245: LD    1, 81(5)  load global offset into ac2
246: ADD   0, 0, 1  compute final offset
247: LD    0, 0(0)  load data from array
248: LD    1, 0(6)  pop first child's value
249: LDA   6, 1(6)  pop first child's value
250: SUB   1, 1, 0  greater than
251: LDC   0, 1(5)  load 1 as true
252: JGT   1, 1(7)  skip load false
253: LDC   0, 0(5)  load 0 as false
255: LDA   1, 0(4)  load fp into ac2
256: LD    1, 0(1)  load upper level fp into ac2
257: LD    0, -1(1)  load int/bool/str from stack
258: LDA   6, -1(6)  push array index
259: ST    0, 0(6)  push array index
260: LDC   0, 1(5)  push array dimension
261: LDC   0, 0(5)  load 0 to ac
262: LD    1, 0(6)  pop index
263: LDA   6, 1(6)  pop index
264: JLT   1, 6(5)  jump if index less than 0
265: LDC   3, 100(5)  load array size
266: SUB   3, 3, 1  sub max size with index
267: JLE   3, 6(5)  jump if index greater than size - 1
268: LDC   2, 1(5)  load size of subarray
269: MUL   1, 1, 2  compute 0 dim
270: ADD   0, 0, 1  add result
271: LD    1, 81(5)  load global offset into ac2
272: ADD   0, 0, 1  compute final offset
273: LD    0, 0(0)  load data from array
274: ST    0, 80(5)  store int/bool/string into previous used static data
275: LDA   1, 0(4)  load fp into ac2
276: LD    1, 0(1)  load upper level fp into ac2
277: LD    0, -1(1)  load int/bool/str from stack
278: LDA   6, -1(6)  push array index
279: ST    0, 0(6)  push array index
280: LDC   0, 1(5)  push array dimension
281: LDC   0, 0(5)  load 0 to ac
282: LD    1, 0(6)  pop index
283: LDA   6, 1(6)  pop index
284: JLT   1, 6(5)  jump if index less than 0
285: LDC   3, 100(5)  load array size
286: SUB   3, 3, 1  sub max size with index
287: JLE   3, 6(5)  jump if index greater than size - 1
288: LDC   2, 1(5)  load size of subarray
289: MUL   1, 1, 2  compute 0 dim
290: ADD   0, 0, 1  add result
291: LD    1, 81(5)  load offset into ac2
292: ADD   0, 0, 1  compute final offset
293: LDA   6, -1(6)  push final offset
294: ST    0, 0(6)  push final offset
295: LDA   1, 0(4)  load fp into ac2
296: LD    0, -1(1)  load int/bool/str from stack
297: LDA   6, -1(6)  push array index
298: ST    0, 0(6)  push array index
299: LDC   0, 1(5)  push array dimension
300: LDC   0, 0(5)  load 0 to ac
301: LD    1, 0(6)  pop index
302: LDA   6, 1(6)  pop index
303: JLT   1, 6(5)  jump if index less than 0
304: LDC   3, 100(5)  load array size
305: SUB   3, 3, 1  sub max size with index
306: JLE   3, 6(5)  jump if index greater than size - 1
307: LDC   2, 1(5)  load size of subarray
308: MUL   1, 1, 2  compute 0 dim
309: ADD   0, 0, 1  add result
310: LD    1, 81(5)  load global offset into ac2
311: ADD   0, 0, 1  compute final offset
312: LD    0, 0(0)  load data from array
313: LD    1, 0(6)  pop final offset
314: LDA   6, 1(6)  pop final offset
315: ST    0, 0(1)  store value into array static data
316: LDA   1, 0(4)  load fp into ac2
317: LD    0, -1(1)  load int/bool/str from stack
318: LDA   6, -1(6)  push array index
319: ST    0, 0(6)  push array index
320: LDC   0, 1(5)  push array dimension
321: LDC   0, 0(5)  load 0 to ac
322: LD    1, 0(6)  pop index
323: LDA   6, 1(6)  pop index
324: JLT   1, 6(5)  jump if index less than 0
325: LDC   3, 100(5)  load array size
326: SUB   3, 3, 1  sub max size with index
327: JLE   3, 6(5)  jump if index greater than size - 1
328: LDC   2, 1(5)  load size of subarray
329: MUL   1, 1, 2  compute 0 dim
330: ADD   0, 0, 1  add result
331: LD    1, 81(5)  load offset into ac2
332: ADD   0, 0, 1  compute final offset
333: LDA   6, -1(6)  push final offset
334: ST    0, 0(6)  push final offset
335: LD    0, 80(5)  load int/bool/str from static data
336: LD    1, 0(6)  pop final offset
337: LDA   6, 1(6)  pop final offset
338: ST    0, 0(1)  store value into array static data
254: JEQ   0, 84(7)  if expr not true
339: LD    0, -1(4)  load low into ac
340: LDA   0, 1(0)  decrease low
341: ST    0, -1(4)  save low
342: LDA   7, -138(7)  jump back to loop start
208: JLT   0, 134(7)  jump out of the fa loop
343: LDA   6, 0(4)  change sp to fp + 1
344: LD    4, 0(6)  restore fp
345: LDA   6, 1(6)  restore fp
346: LD    0, -1(4)  load low into ac
347: LDA   0, 1(0)  decrease low
348: ST    0, -1(4)  save low
349: LDA   7, -166(7)  jump back to loop start
187: JLT   0, 162(7)  jump out of the fa loop
350: LDA   6, 0(4)  change sp to fp + 1
351: LD    4, 0(6)  restore fp
352: LDA   6, 1(6)  restore fp
353: LDC   0, 1(5)  load string offset 1
354: LD    1, 0(0)  load str length into ac2
355: LDA   0, 1(0)  increase offset
356: LD    2, 0(0)  load char into ac3
357: OUTC   2, 2, 2  write char
358: LDA   1, -1(1)  decrease length of remaining string in ac2
359: JNE   1, -5(7)  continue print if not yet finish
360: OUTNL 0, 0, 0  write new line
361: LDA   6, -1(6)  push fp
362: ST    4, 0(6)  push fp
363: LDA   4, 0(6)  set fp to sp
364: LDC   0, 0(5)  load integer 0
365: LDA   6, -1(6)  push low
366: ST    0, 0(6)  push low
367: LD    0, 182(5)  load int/bool/str from static data
368: LDA   6, -1(6)  push hi
369: ST    0, 0(6)  push hi
370: LD    0, -2(4)  load hi into ac 
371: LD    1, -1(4)  load low into ac2 
372: SUB   0, 0, 1  subtract hi with low
374: LDA   1, 0(4)  load fp into ac2
375: LD    0, -1(1)  load int/bool/str from stack
376: LDA   6, -1(6)  push array index
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
389: LD    1, 81(5)  load global offset into ac2
390: ADD   0, 0, 1  compute final offset
391: LD    0, 0(0)  load data from array
392: OUT   0, 0, 0  write integer
393: OUTNL 0, 0, 0  write new line
394: LD    0, -1(4)  load low into ac
395: LDA   0, 1(0)  decrease low
396: ST    0, -1(4)  save low
397: LDA   7, -28(7)  jump back to loop start
373: JLT   0, 24(7)  jump out of the fa loop
398: LDA   6, 0(4)  change sp to fp + 1
399: LD    4, 0(6)  restore fp
400: LDA   6, 1(6)  restore fp
401: HALT  0, 0, 0  program ends
