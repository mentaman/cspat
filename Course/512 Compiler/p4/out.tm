.DATA    4
.SDATA   "\n\t"
.DATA    5
.SDATA   " are:"
.DATA    25
.SDATA   "invalid numeric character"
.DATA    13
.SDATA   "out of memory"
.DATA    18
.SDATA   "array index error!"
.DATA    0
.SDATA   ""
.DATA    2
.SDATA   "\t"
.DATA    24
.SDATA   "The prime numbers under "
0: LDC   0, 104(5)  store array start address: 104
1: LDC   1, 103(5)  store array offset into ac2: 103
2: ST    0, 0(1)  store array offset
3: LD    6, 0(5)  save stack pointer
4: LD    4, 0(5)  save frame pointer
6: LDC   0, 52(5)  load array error str address
7: LD    1, 0(0)  load str length into ac2
8: JEQ   1, 5(7)  output nothing when empty
9: LDA   0, 1(0)  increase offset
10: LD    2, 0(0)  load char into ac3
11: OUTC   2, 2, 2  write char
12: LDA   1, -1(1)  decrease length of remaining string in ac2
13: JNE   1, -5(7)  continue print if not yet finish
14: OUTNL 0, 0, 0  emit newline
15: HALT  0, 0, 0  stop because of array error
16: LDC   0, 38(5)  load out of memory str address
17: LD    1, 0(0)  load str length into ac2
18: JEQ   1, 5(7)  output nothing when empty
19: LDA   0, 1(0)  increase offset
20: LD    2, 0(0)  load char into ac3
21: OUTC   2, 2, 2  write char
22: LDA   1, -1(1)  decrease length of remaining string in ac2
23: JNE   1, -5(7)  continue print if not yet finish
24: OUTNL 0, 0, 0  emit newline
25: HALT  0, 0, 0  stop because of out of memory error
26: LDC   0, 1000(5)  load integer 1000
27: ST    0, 102(5)  store int/bool/string into previous used static data
28: LDC   0, 500(5)  load integer 500
29: ST    0, 101(5)  store int/bool/string into previous used static data
30: LDC   0, 1(5)  load integer 1
31: LDA   6, -1(6)  push array index
32: LDC   3, 1105(5)  push array index
33: SUB   3, 6, 3  push array index
34: JLE   3, 16(5)  push array index
35: ST    0, 0(6)  push array index
36: LDC   0, 1(5)  push array dimension
37: LDC   0, 0(5)  load 0 to ac
38: LD    1, 0(6)  pop index
39: LDA   6, 1(6)  pop index
40: JLT   1, 6(5)  jump if index less than 0
41: LDC   3, 1001(5)  load array size
42: SUB   3, 3, 1  sub max size with index
43: JLE   3, 6(5)  jump if index greater than size - 1
44: LDC   2, 1(5)  load size of subarray
45: MUL   1, 1, 2  compute 0 dim
46: ADD   0, 0, 1  add result
47: LD    1, 103(5)  load offset into ac2
48: ADD   0, 0, 1  compute final offset
49: LDA   6, -1(6)  push final offset
50: LDC   3, 1105(5)  push final offset
51: SUB   3, 6, 3  push final offset
52: JLE   3, 16(5)  push final offset
53: ST    0, 0(6)  push final offset
54: LDC   0, 0(5)  load booleanfalse
55: LD    1, 0(6)  pop final offset
56: LDA   6, 1(6)  pop final offset
57: ST    0, 0(1)  store value into array static data
58: LDA   6, -1(6)  push fp
59: LDC   3, 1105(5)  push fp
60: SUB   3, 6, 3  push fp
61: JLE   3, 16(5)  push fp
62: ST    4, 0(6)  push fp
63: LDA   4, 0(6)  set fp to sp
64: LDC   0, 2(5)  load integer 2
65: LDA   6, -1(6)  push low
66: LDC   3, 1105(5)  push low
67: SUB   3, 6, 3  push low
68: JLE   3, 16(5)  push low
69: ST    0, 0(6)  push low
70: LDC   0, 1000(5)  load integer 1000
71: LDA   6, -1(6)  push hi
72: LDC   3, 1105(5)  push hi
73: SUB   3, 6, 3  push hi
74: JLE   3, 16(5)  push hi
75: ST    0, 0(6)  push hi
76: LD    0, -2(4)  load hi into ac 
77: LD    1, -1(4)  load low into ac2 
78: SUB   0, 0, 1  subtract hi with low
80: LDA   1, 0(4)  load fp into ac2
81: LD    0, -1(1)  load int/bool/str from stack
82: LDA   6, -1(6)  push array index
83: LDC   3, 1105(5)  push array index
84: SUB   3, 6, 3  push array index
85: JLE   3, 16(5)  push array index
86: ST    0, 0(6)  push array index
87: LDC   0, 1(5)  push array dimension
88: LDC   0, 0(5)  load 0 to ac
89: LD    1, 0(6)  pop index
90: LDA   6, 1(6)  pop index
91: JLT   1, 6(5)  jump if index less than 0
92: LDC   3, 1001(5)  load array size
93: SUB   3, 3, 1  sub max size with index
94: JLE   3, 6(5)  jump if index greater than size - 1
95: LDC   2, 1(5)  load size of subarray
96: MUL   1, 1, 2  compute 0 dim
97: ADD   0, 0, 1  add result
98: LD    1, 103(5)  load offset into ac2
99: ADD   0, 0, 1  compute final offset
100: LDA   6, -1(6)  push final offset
101: LDC   3, 1105(5)  push final offset
102: SUB   3, 6, 3  push final offset
103: JLE   3, 16(5)  push final offset
104: ST    0, 0(6)  push final offset
105: LDC   0, 1(5)  load booleantrue
106: LD    1, 0(6)  pop final offset
107: LDA   6, 1(6)  pop final offset
108: ST    0, 0(1)  store value into array static data
109: LD    0, -1(4)  load low into ac
110: LDA   0, 1(0)  decrease low
111: ST    0, -1(4)  save low
79: JLT   0, 33(7)  jump out of the fa loop
113: LDA   6, 0(4)  change sp to fp + 1
114: LD    4, 0(6)  restore fp
115: LDA   6, 1(6)  restore fp
116: LDA   6, -1(6)  push fp
117: LDC   3, 1105(5)  push fp
118: SUB   3, 6, 3  push fp
119: JLE   3, 16(5)  push fp
120: ST    4, 0(6)  push fp
121: LDA   4, 0(6)  set fp to sp
122: LDC   0, 2(5)  load integer 2
123: LDA   6, -1(6)  push low
124: LDC   3, 1105(5)  push low
125: SUB   3, 6, 3  push low
126: JLE   3, 16(5)  push low
127: ST    0, 0(6)  push low
128: LD    0, 101(5)  load int/bool/str from static data
129: LDA   6, -1(6)  push hi
130: LDC   3, 1105(5)  push hi
131: SUB   3, 6, 3  push hi
132: JLE   3, 16(5)  push hi
133: ST    0, 0(6)  push hi
134: LD    0, -2(4)  load hi into ac 
135: LD    1, -1(4)  load low into ac2 
136: SUB   0, 0, 1  subtract hi with low
138: LDA   6, -1(6)  push fp
139: LDC   3, 1105(5)  push fp
140: SUB   3, 6, 3  push fp
141: JLE   3, 16(5)  push fp
142: ST    4, 0(6)  push fp
143: LDA   4, 0(6)  set fp to sp
144: LDA   1, 0(4)  load fp into ac2
145: LD    1, 0(1)  load upper level fp into ac2
146: LD    0, -1(1)  load int/bool/str from stack
147: LDA   6, -1(6)  push first child's value
148: LDC   3, 1105(5)  push first child's value
149: SUB   3, 6, 3  push first child's value
150: JLE   3, 16(5)  push first child's value
151: ST    0, 0(6)  push first child's value
152: LDC   0, 1(5)  load integer 1
153: LD    1, 0(6)  pop first child's value
154: LDA   6, 1(6)  pop first child's value
155: ADD   0, 0, 1  add two children
156: LDA   6, -1(6)  push low
157: LDC   3, 1105(5)  push low
158: SUB   3, 6, 3  push low
159: JLE   3, 16(5)  push low
160: ST    0, 0(6)  push low
161: LD    0, 102(5)  load int/bool/str from static data
162: LDA   6, -1(6)  push hi
163: LDC   3, 1105(5)  push hi
164: SUB   3, 6, 3  push hi
165: JLE   3, 16(5)  push hi
166: ST    0, 0(6)  push hi
167: LD    0, -2(4)  load hi into ac 
168: LD    1, -1(4)  load low into ac2 
169: SUB   0, 0, 1  subtract hi with low
171: LDA   1, 0(4)  load fp into ac2
172: LD    0, -1(1)  load int/bool/str from stack
173: LDA   6, -1(6)  push first child's value
174: LDC   3, 1105(5)  push first child's value
175: SUB   3, 6, 3  push first child's value
176: JLE   3, 16(5)  push first child's value
177: ST    0, 0(6)  push first child's value
178: LDA   1, 0(4)  load fp into ac2
179: LD    1, 0(1)  load upper level fp into ac2
180: LD    0, -1(1)  load int/bool/str from stack
181: LD    1, 0(6)  pop first child's value
182: LDA   6, 1(6)  pop first child's value
183: DIV   2, 1, 0  divide two children
184: MUL   0, 2, 0  multiply quotient and divisor
185: SUB   0, 1, 0  compute mod
186: LDA   6, -1(6)  push first child's value
187: LDC   3, 1105(5)  push first child's value
188: SUB   3, 6, 3  push first child's value
189: JLE   3, 16(5)  push first child's value
190: ST    0, 0(6)  push first child's value
191: LDC   0, 0(5)  load integer 0
192: LD    1, 0(6)  pop first child's value
193: LDA   6, 1(6)  pop first child's value
194: SUB   1, 1, 0  greater than
195: LDC   0, 1(5)  load 1 as true
196: JEQ   1, 1(7)  skip load false
197: LDC   0, 0(5)  load 0 as false
199: LDA   1, 0(4)  load fp into ac2
200: LD    0, -1(1)  load int/bool/str from stack
201: LDA   6, -1(6)  push array index
202: LDC   3, 1105(5)  push array index
203: SUB   3, 6, 3  push array index
204: JLE   3, 16(5)  push array index
205: ST    0, 0(6)  push array index
206: LDC   0, 1(5)  push array dimension
207: LDC   0, 0(5)  load 0 to ac
208: LD    1, 0(6)  pop index
209: LDA   6, 1(6)  pop index
210: JLT   1, 6(5)  jump if index less than 0
211: LDC   3, 1001(5)  load array size
212: SUB   3, 3, 1  sub max size with index
213: JLE   3, 6(5)  jump if index greater than size - 1
214: LDC   2, 1(5)  load size of subarray
215: MUL   1, 1, 2  compute 0 dim
216: ADD   0, 0, 1  add result
217: LD    1, 103(5)  load offset into ac2
218: ADD   0, 0, 1  compute final offset
219: LDA   6, -1(6)  push final offset
220: LDC   3, 1105(5)  push final offset
221: SUB   3, 6, 3  push final offset
222: JLE   3, 16(5)  push final offset
223: ST    0, 0(6)  push final offset
224: LDC   0, 0(5)  load booleanfalse
225: LD    1, 0(6)  pop final offset
226: LDA   6, 1(6)  pop final offset
227: ST    0, 0(1)  store value into array static data
198: JEQ   0, 29(7)  if expr not true
228: LD    0, -1(4)  load low into ac
229: LDA   0, 1(0)  decrease low
230: ST    0, -1(4)  save low
170: JLT   0, 61(7)  jump out of the fa loop
232: LDA   6, 0(4)  change sp to fp + 1
233: LD    4, 0(6)  restore fp
234: LDA   6, 1(6)  restore fp
235: LD    0, -1(4)  load low into ac
236: LDA   0, 1(0)  decrease low
237: ST    0, -1(4)  save low
137: JLT   0, 101(7)  jump out of the fa loop
239: LDA   6, 0(4)  change sp to fp + 1
240: LD    4, 0(6)  restore fp
241: LDA   6, 1(6)  restore fp
242: LDC   0, 75(5)  load string offset 75
243: LD    1, 0(0)  load str length into ac2
244: JEQ   1, 5(7)  output nothing when empty
245: LDA   0, 1(0)  increase offset
246: LD    2, 0(0)  load char into ac3
247: OUTC   2, 2, 2  write char
248: LDA   1, -1(1)  decrease length of remaining string in ac2
249: JNE   1, -5(7)  continue print if not yet finish
250: LD    0, 102(5)  load int/bool/str from static data
251: OUT   0, 0, 0  write integer
252: LDC   0, 6(5)  load string offset 6
253: LD    1, 0(0)  load str length into ac2
254: JEQ   1, 5(7)  output nothing when empty
255: LDA   0, 1(0)  increase offset
256: LD    2, 0(0)  load char into ac3
257: OUTC   2, 2, 2  write char
258: LDA   1, -1(1)  decrease length of remaining string in ac2
259: JNE   1, -5(7)  continue print if not yet finish
260: OUTNL 0, 0, 0  write new line
261: LDC   0, 72(5)  load string offset 72
262: LD    1, 0(0)  load str length into ac2
263: JEQ   1, 5(7)  output nothing when empty
264: LDA   0, 1(0)  increase offset
265: LD    2, 0(0)  load char into ac3
266: OUTC   2, 2, 2  write char
267: LDA   1, -1(1)  decrease length of remaining string in ac2
268: JNE   1, -5(7)  continue print if not yet finish
269: LDC   0, 0(5)  load integer 0
270: ST    0, 100(5)  store int/bool/string into previous used static data
271: LDA   6, -1(6)  push fp
272: LDC   3, 1105(5)  push fp
273: SUB   3, 6, 3  push fp
274: JLE   3, 16(5)  push fp
275: ST    4, 0(6)  push fp
276: LDA   4, 0(6)  set fp to sp
277: LDC   0, 2(5)  load integer 2
278: LDA   6, -1(6)  push low
279: LDC   3, 1105(5)  push low
280: SUB   3, 6, 3  push low
281: JLE   3, 16(5)  push low
282: ST    0, 0(6)  push low
283: LD    0, 102(5)  load int/bool/str from static data
284: LDA   6, -1(6)  push hi
285: LDC   3, 1105(5)  push hi
286: SUB   3, 6, 3  push hi
287: JLE   3, 16(5)  push hi
288: ST    0, 0(6)  push hi
289: LD    0, -2(4)  load hi into ac 
290: LD    1, -1(4)  load low into ac2 
291: SUB   0, 0, 1  subtract hi with low
293: LDA   1, 0(4)  load fp into ac2
294: LD    0, -1(1)  load int/bool/str from stack
295: LDA   6, -1(6)  push array index
296: LDC   3, 1105(5)  push array index
297: SUB   3, 6, 3  push array index
298: JLE   3, 16(5)  push array index
299: ST    0, 0(6)  push array index
300: LDC   0, 1(5)  push array dimension
301: LDC   0, 0(5)  load 0 to ac
302: LD    1, 0(6)  pop index
303: LDA   6, 1(6)  pop index
304: JLT   1, 6(5)  jump if index less than 0
305: LDC   3, 1001(5)  load array size
306: SUB   3, 3, 1  sub max size with index
307: JLE   3, 6(5)  jump if index greater than size - 1
308: LDC   2, 1(5)  load size of subarray
309: MUL   1, 1, 2  compute 0 dim
310: ADD   0, 0, 1  add result
311: LD    1, 103(5)  load global offset into ac2
312: ADD   0, 0, 1  compute final offset
313: LD    0, 0(0)  load data from array
315: LDA   1, 0(4)  load fp into ac2
316: LD    0, -1(1)  load int/bool/str from stack
317: OUT   0, 0, 0  write integer
318: LDC   0, 72(5)  load string offset 72
319: LD    1, 0(0)  load str length into ac2
320: JEQ   1, 5(7)  output nothing when empty
321: LDA   0, 1(0)  increase offset
322: LD    2, 0(0)  load char into ac3
323: OUTC   2, 2, 2  write char
324: LDA   1, -1(1)  decrease length of remaining string in ac2
325: JNE   1, -5(7)  continue print if not yet finish
326: LD    0, 100(5)  load int/bool/str from static data
327: LDA   6, -1(6)  push first child's value
328: LDC   3, 1105(5)  push first child's value
329: SUB   3, 6, 3  push first child's value
330: JLE   3, 16(5)  push first child's value
331: ST    0, 0(6)  push first child's value
332: LDC   0, 1(5)  load integer 1
333: LD    1, 0(6)  pop first child's value
334: LDA   6, 1(6)  pop first child's value
335: ADD   0, 0, 1  add two children
336: ST    0, 100(5)  store int/bool/string into previous used static data
337: LD    0, 100(5)  load int/bool/str from static data
338: LDA   6, -1(6)  push first child's value
339: LDC   3, 1105(5)  push first child's value
340: SUB   3, 6, 3  push first child's value
341: JLE   3, 16(5)  push first child's value
342: ST    0, 0(6)  push first child's value
343: LDC   0, 8(5)  load integer 8
344: LD    1, 0(6)  pop first child's value
345: LDA   6, 1(6)  pop first child's value
346: SUB   1, 1, 0  greater than
347: LDC   0, 1(5)  load 1 as true
348: JGT   1, 1(7)  skip load false
349: LDC   0, 0(5)  load 0 as false
351: LDC   0, 1(5)  load string offset 1
352: LD    1, 0(0)  load str length into ac2
353: JEQ   1, 5(7)  output nothing when empty
354: LDA   0, 1(0)  increase offset
355: LD    2, 0(0)  load char into ac3
356: OUTC   2, 2, 2  write char
357: LDA   1, -1(1)  decrease length of remaining string in ac2
358: JNE   1, -5(7)  continue print if not yet finish
359: LDC   0, 0(5)  load integer 0
360: ST    0, 100(5)  store int/bool/string into previous used static data
350: JEQ   0, 10(7)  if expr not true
314: JEQ   0, 46(7)  if expr not true
361: LD    0, -1(4)  load low into ac
362: LDA   0, 1(0)  decrease low
363: ST    0, -1(4)  save low
292: JLT   0, 72(7)  jump out of the fa loop
365: LDA   6, 0(4)  change sp to fp + 1
366: LD    4, 0(6)  restore fp
367: LDA   6, 1(6)  restore fp
368: LDC   0, 71(5)  load string offset 71
369: LD    1, 0(0)  load str length into ac2
370: JEQ   1, 5(7)  output nothing when empty
371: LDA   0, 1(0)  increase offset
372: LD    2, 0(0)  load char into ac3
373: OUTC   2, 2, 2  write char
374: LDA   1, -1(1)  decrease length of remaining string in ac2
375: JNE   1, -5(7)  continue print if not yet finish
376: OUTNL 0, 0, 0  write new line
377: HALT  0, 0, 0  program ends
364: LDC   7, 289(0)  optimized to new destination
112: LDC   7, 76(0)  optimized to new destination
5: LDC   7, 26(0)  optimized to new destination
231: LDC   7, 167(0)  optimized to new destination
238: LDC   7, 134(0)  optimized to new destination
