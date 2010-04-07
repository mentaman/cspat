.DATA    42
.SDATA   " is too few sticks; pick a larger number. "
.DATA    18
.SDATA   "array index error!"
.DATA    31
.SDATA   "stick loses.  That will be you."
.DATA    26
.SDATA   "Congratulations!  You won."
.DATA    45
.SDATA   "You must pick 1, 2, or 3 sticks.  Try again: "
.DATA    6
.SDATA   "Thanks"
.DATA    31
.SDATA   "I don't understand your answer."
.DATA    15
.SDATA   "There are only "
.DATA    2
.SDATA   "OK"
.DATA    13
.SDATA   "Well I don't!"
.DATA    42
.SDATA   "You must pick 1, 2, or 3 sticks each turn."
.DATA    40
.SDATA   "It is your turn.  How many do you want? "
.DATA    19
.SDATA   " is a lot of sticks"
.DATA    18
.SDATA   " sticks remaining."
.DATA    6
.SDATA   "I won."
.DATA    24
.SDATA   "Enter number of sticks: "
.DATA    10
.SDATA   "Game over."
.DATA    63
.SDATA   "Do you really want to play this long of a game? 0=no / 1= yes: "
.DATA    41
.SDATA   "Do you want instructions? 0=no / 1= yes: "
.DATA    54
.SDATA   "Oops, I got confused and let you take too many sticks."
.DATA    48
.SDATA   "There only one stick remaining.  I must pick it."
.DATA    13
.SDATA   "You go first."
.DATA    50
.SDATA   "You don't seem to understand this game.  Good bye."
.DATA    10
.SDATA   "There are "
.DATA    4
.SDATA   "N :="
.DATA    11
.SDATA   "You picked "
.DATA    23
.SDATA   "It is my pick.  I pick "
.DATA    8
.SDATA   " sticks."
.DATA    67
.SDATA   "We alternate picking 1, 2, or 3 sticks.  The one who picks the last"
.DATA    21
.SDATA   " sticks.  Try again: "
0: LD    6, 0(5)  save stack pointer
1: LD    4, 0(5)  save frame pointer
3: LDC   0, 44(5)  load array error str address
4: LD    1, 0(0)  load str length into ac2
5: JEQ   1, 5(7)  output nothing when empty
6: LDA   0, 1(0)  increase offset
7: LD    2, 0(0)  load char into ac3
8: OUTC   2, 2, 2  write char
9: LDA   1, -1(1)  decrease length of remaining string in ac2
10: JNE   1, -5(7)  continue print if not yet finish
11: OUTNL 0, 0, 0  emit newline
12: HALT  0, 0, 0  stop because of standard error
13: LD    0, -3(4)  load str offset
14: LD    1, 0(0)  load str length
15: LDC   2, 0(5)  load 0 as initial result
16: LDA   6, -1(6)  push 0
17: ST    2, 0(6)  push 0
18: LD    2, 0(6)  pop result into AC3
19: LDA   6, 1(6)  pop result into AC3
20: LDC   3, 10(5)  load 10 into ac4
21: MUL   2, 2, 3  mul result with 10
22: LDA   6, -1(6)  push result
23: ST    2, 0(6)  push result
24: LDA   0, 1(0)  increase str offset
25: LD    2, 0(0)  load char
26: LDC   3, 48(5)  load 48 into ac4
27: SUB   2, 2, 3  compute int value
28: LD    3, 0(6)  pop result into AC4
29: LDA   6, 1(6)  pop result into AC4
30: ADD   2, 2, 3  compute result
31: LDA   6, -1(6)  push result
32: ST    2, 0(6)  push result
33: LDA   1, -1(1)  decrease str length
34: JNE   1, 18(5)  continue if str length
35: LD    0, 0(6)  pop result
36: LDA   6, 1(6)  pop result
37: ST    0, -2(4)  save to return value
38: LD    0, -2(4)  load int/bool/string offset as return value
39: LD    1, -1(4)  load return address
40: LDA   6, 0(4)  change sp to fp + 1
41: LD    4, 0(6)  restore fp
42: LDA   6, 1(6)  restore fp
43: LDA   7, 0(1)  jump to the return address
44: LDA   6, -1(6)  push fp
45: ST    4, 0(6)  push fp
46: LDA   4, 0(6)  set fp to sp
47: LDC   0, 1(5)  load integer 1
48: LDA   6, -1(6)  push low
49: ST    0, 0(6)  push low
50: LDC   0, 3(5)  load integer 3
51: LDA   6, -1(6)  push hi
52: ST    0, 0(6)  push hi
53: LD    0, -2(4)  load hi into ac 
54: LD    1, -1(4)  load low into ac2 
55: SUB   0, 0, 1  subtract hi with low
57: LDC   0, 370(5)  load string offset 370
58: LD    1, 0(0)  load str length into ac2
59: JEQ   1, 5(7)  output nothing when empty
60: LDA   0, 1(0)  increase offset
61: LD    2, 0(0)  load char into ac3
62: OUTC   2, 2, 2  write char
63: LDA   1, -1(1)  decrease length of remaining string in ac2
64: JNE   1, -5(7)  continue print if not yet finish
65: IN   0, 0, 0  read integer from stdin
66: LDA   1, 0(4)  load fp into ac2
67: LD    1, 0(1)  load upper level fp into ac2
68: ST    0, -2(1)  store int/bool/string into stack
69: LDA   1, 0(4)  load fp into ac2
70: LD    1, 0(1)  load upper level fp into ac2
71: LD    0, -2(1)  load int/bool/str from stack
72: LDA   6, -1(6)  push first child's value
73: ST    0, 0(6)  push first child's value
74: LDC   0, 15(5)  load integer 15
75: LD    1, 0(6)  pop first child's value
76: LDA   6, 1(6)  pop first child's value
77: SUB   1, 1, 0  greater than
78: LDC   0, 1(5)  load 1 as true
79: JLT   1, 1(7)  skip load false
80: LDC   0, 0(5)  load 0 as false
82: LDA   1, 0(4)  load fp into ac2
83: LD    1, 0(1)  load upper level fp into ac2
84: LD    0, -2(1)  load int/bool/str from stack
85: OUT   0, 0, 0  write integer
86: LDC   0, 1(5)  load string offset 1
87: LD    1, 0(0)  load str length into ac2
88: JEQ   1, 5(7)  output nothing when empty
89: LDA   0, 1(0)  increase offset
90: LD    2, 0(0)  load char into ac3
91: OUTC   2, 2, 2  write char
92: LDA   1, -1(1)  decrease length of remaining string in ac2
93: JNE   1, -5(7)  continue print if not yet finish
81: JEQ   0, 13(7)  if expr not true
95: LDA   1, 0(4)  load fp into ac2
96: LD    1, 0(1)  load upper level fp into ac2
97: LD    0, -2(1)  load int/bool/str from stack
98: LDA   6, -1(6)  push first child's value
99: ST    0, 0(6)  push first child's value
100: LDC   0, 100(5)  load integer 100
101: LD    1, 0(6)  pop first child's value
102: LDA   6, 1(6)  pop first child's value
103: SUB   1, 1, 0  greater than
104: LDC   0, 1(5)  load 1 as true
105: JLT   1, 1(7)  skip load false
106: LDC   0, 0(5)  load 0 as false
108: LD    4, 0(4)  load upper level fp
107: JEQ   0, 3(7)  if expr not true
111: LDA   6, -1(6)  push fp
112: ST    4, 0(6)  push fp
113: LDA   4, 0(6)  set fp to sp
114: LDC   0, 1(5)  load integer 1
115: LDA   6, -1(6)  push low
116: ST    0, 0(6)  push low
117: LDC   0, 3(5)  load integer 3
118: LDA   6, -1(6)  push hi
119: ST    0, 0(6)  push hi
120: LD    0, -2(4)  load hi into ac 
121: LD    1, -1(4)  load low into ac2 
122: SUB   0, 0, 1  subtract hi with low
124: LDA   1, 0(4)  load fp into ac2
125: LD    1, 0(1)  load upper level fp into ac2
126: LD    1, 0(1)  load upper level fp into ac2
127: LD    0, -2(1)  load int/bool/str from stack
128: OUT   0, 0, 0  write integer
129: LDC   0, 324(5)  load string offset 324
130: LD    1, 0(0)  load str length into ac2
131: JEQ   1, 5(7)  output nothing when empty
132: LDA   0, 1(0)  increase offset
133: LD    2, 0(0)  load char into ac3
134: OUTC   2, 2, 2  write char
135: LDA   1, -1(1)  decrease length of remaining string in ac2
136: JNE   1, -5(7)  continue print if not yet finish
137: OUTNL 0, 0, 0  write new line
138: LDC   0, 406(5)  load string offset 406
139: LD    1, 0(0)  load str length into ac2
140: JEQ   1, 5(7)  output nothing when empty
141: LDA   0, 1(0)  increase offset
142: LD    2, 0(0)  load char into ac3
143: OUTC   2, 2, 2  write char
144: LDA   1, -1(1)  decrease length of remaining string in ac2
145: JNE   1, -5(7)  continue print if not yet finish
146: IN   0, 0, 0  read integer from stdin
147: LDA   1, 0(4)  load fp into ac2
148: LD    1, 0(1)  load upper level fp into ac2
149: LD    1, 0(1)  load upper level fp into ac2
150: ST    0, -3(1)  store int/bool/string into stack
151: LDA   1, 0(4)  load fp into ac2
152: LD    1, 0(1)  load upper level fp into ac2
153: LD    1, 0(1)  load upper level fp into ac2
154: LD    0, -3(1)  load int/bool/str from stack
155: LDA   6, -1(6)  push first child's value
156: ST    0, 0(6)  push first child's value
157: LDC   0, 1(5)  load integer 1
158: LD    1, 0(6)  pop first child's value
159: LDA   6, 1(6)  pop first child's value
160: SUB   1, 1, 0  greater than
161: LDC   0, 1(5)  load 1 as true
162: JEQ   1, 1(7)  skip load false
163: LDC   0, 0(5)  load 0 as false
165: LDA   6, -1(6)  push first child's value
166: ST    0, 0(6)  push first child's value
167: LDA   1, 0(4)  load fp into ac2
168: LD    1, 0(1)  load upper level fp into ac2
169: LD    1, 0(1)  load upper level fp into ac2
170: LD    0, -2(1)  load int/bool/str from stack
171: LDA   6, -1(6)  push first child's value
172: ST    0, 0(6)  push first child's value
173: LDC   0, 200(5)  load integer 200
174: LD    1, 0(6)  pop first child's value
175: LDA   6, 1(6)  pop first child's value
176: SUB   1, 1, 0  greater than
177: LDC   0, 1(5)  load 1 as true
178: JLE   1, 1(7)  skip load false
179: LDC   0, 0(5)  load 0 as false
180: LD    1, 0(6)  pop first child's value
181: LDA   6, 1(6)  pop first child's value
182: MUL   0, 0, 1  multiply two children
164: JEQ   0, 18(7)  short circuit
184: LDC   0, 223(5)  load string offset 223
185: LD    1, 0(0)  load str length into ac2
186: JEQ   1, 5(7)  output nothing when empty
187: LDA   0, 1(0)  increase offset
188: LD    2, 0(0)  load char into ac3
189: OUTC   2, 2, 2  write char
190: LDA   1, -1(1)  decrease length of remaining string in ac2
191: JNE   1, -5(7)  continue print if not yet finish
192: OUTNL 0, 0, 0  write new line
193: LD    4, 0(4)  load upper level fp
194: LD    4, 0(4)  load upper level fp
183: JEQ   0, 13(7)  if expr not true
197: LDA   1, 0(4)  load fp into ac2
198: LD    1, 0(1)  load upper level fp into ac2
199: LD    1, 0(1)  load upper level fp into ac2
200: LD    0, -3(1)  load int/bool/str from stack
201: LDA   6, -1(6)  push first child's value
202: ST    0, 0(6)  push first child's value
203: LDC   0, 1(5)  load integer 1
204: LD    1, 0(6)  pop first child's value
205: LDA   6, 1(6)  pop first child's value
206: SUB   1, 1, 0  greater than
207: LDC   0, 1(5)  load 1 as true
208: JEQ   1, 1(7)  skip load false
209: LDC   0, 0(5)  load 0 as false
211: LDC   0, 226(5)  load string offset 226
212: LD    1, 0(0)  load str length into ac2
213: JEQ   1, 5(7)  output nothing when empty
214: LDA   0, 1(0)  increase offset
215: LD    2, 0(0)  load char into ac3
216: OUTC   2, 2, 2  write char
217: LDA   1, -1(1)  decrease length of remaining string in ac2
218: JNE   1, -5(7)  continue print if not yet finish
219: OUTNL 0, 0, 0  write new line
220: HALT  0, 0, 0  exit program
210: JEQ   0, 11(7)  if expr not true
222: LDA   1, 0(4)  load fp into ac2
223: LD    1, 0(1)  load upper level fp into ac2
224: LD    1, 0(1)  load upper level fp into ac2
225: LD    0, -3(1)  load int/bool/str from stack
226: LDA   6, -1(6)  push first child's value
227: ST    0, 0(6)  push first child's value
228: LDC   0, 0(5)  load integer 0
229: LD    1, 0(6)  pop first child's value
230: LDA   6, 1(6)  pop first child's value
231: SUB   1, 1, 0  greater than
232: LDC   0, 1(5)  load 1 as true
233: JEQ   1, 1(7)  skip load false
234: LDC   0, 0(5)  load 0 as false
235: JEQ   0, 2(7)  if expr not true
238: LDC   0, 175(5)  load string offset 175
239: LD    1, 0(0)  load str length into ac2
240: JEQ   1, 5(7)  output nothing when empty
241: LDA   0, 1(0)  increase offset
242: LD    2, 0(0)  load char into ac3
243: OUTC   2, 2, 2  write char
244: LDA   1, -1(1)  decrease length of remaining string in ac2
245: JNE   1, -5(7)  continue print if not yet finish
246: OUTNL 0, 0, 0  write new line
196: LDA   7, 50(7)  Jump to the end of if
221: LDA   7, 25(7)  Jump to the end of if
237: LDA   7, 9(7)  Jump to the end of if
247: LD    0, -1(4)  load low into ac
248: LDA   0, 1(0)  decrease low
249: ST    0, -1(4)  save low
250: LDA   7, -131(7)  jump back to loop start
123: JLT   0, 127(7)  jump out of the fa loop
236: LDA   7, 14(7)  break -> jump out of the do loop
251: LDA   6, 0(4)  change sp to fp + 1
252: LD    4, 0(6)  restore fp
253: LDA   6, 1(6)  restore fp
254: LDA   1, 0(4)  load fp into ac2
255: LD    1, 0(1)  load upper level fp into ac2
256: LD    0, -3(1)  load int/bool/str from stack
257: LDA   6, -1(6)  push first child's value
258: ST    0, 0(6)  push first child's value
259: LDC   0, 1(5)  load integer 1
260: LD    1, 0(6)  pop first child's value
261: LDA   6, 1(6)  pop first child's value
262: SUB   1, 1, 0  greater than
263: LDC   0, 1(5)  load 1 as true
264: JNE   1, 1(7)  skip load false
265: LDC   0, 0(5)  load 0 as false
267: HALT  0, 0, 0  exit program
266: JEQ   0, 1(7)  if expr not true
94: LDA   7, 173(7)  Jump to the end of if
110: LDA   7, 157(7)  Jump to the end of if
268: LD    0, -1(4)  load low into ac
269: LDA   0, 1(0)  decrease low
270: ST    0, -1(4)  save low
271: LDA   7, -219(7)  jump back to loop start
56: JLT   0, 215(7)  jump out of the fa loop
272: LDA   6, 0(4)  change sp to fp + 1
273: LD    4, 0(6)  restore fp
274: LDA   6, 1(6)  restore fp
275: HALT  0, 0, 0  exit program
109: LDA   7, 166(7)  return procedure call
195: LDA   7, 80(7)  return procedure call
276: LD    0, -2(4)  load int/bool/string offset as return value
277: LD    1, -1(4)  load return address
278: LDA   6, 0(4)  change sp to fp + 1
279: LD    4, 0(6)  restore fp
280: LDA   6, 1(6)  restore fp
281: LDA   7, 0(1)  jump to the return address
282: LDC   0, 512(5)  load string offset 512
283: LD    1, 0(0)  load str length into ac2
284: JEQ   1, 5(7)  output nothing when empty
285: LDA   0, 1(0)  increase offset
286: LD    2, 0(0)  load char into ac3
287: OUTC   2, 2, 2  write char
288: LDA   1, -1(1)  decrease length of remaining string in ac2
289: JNE   1, -5(7)  continue print if not yet finish
290: OUTNL 0, 0, 0  write new line
291: LDC   0, 395(5)  load string offset 395
292: LD    1, 0(0)  load str length into ac2
293: JEQ   1, 5(7)  output nothing when empty
294: LDA   0, 1(0)  increase offset
295: LD    2, 0(0)  load char into ac3
296: OUTC   2, 2, 2  write char
297: LDA   1, -1(1)  decrease length of remaining string in ac2
298: JNE   1, -5(7)  continue print if not yet finish
299: OUTNL 0, 0, 0  write new line
300: HALT  0, 0, 0  exit program
301: LD    0, -2(4)  load int/bool/string offset as return value
302: LD    1, -1(4)  load return address
303: LDA   6, 0(4)  change sp to fp + 1
304: LD    4, 0(6)  restore fp
305: LDA   6, 1(6)  restore fp
306: LDA   7, 0(1)  jump to the return address
307: LDA   1, 0(4)  load fp into ac2
308: LD    0, -3(1)  load int/bool/str from stack
309: LDA   6, -1(6)  push first child's value
310: ST    0, 0(6)  push first child's value
311: LDC   0, 0(5)  load integer 0
312: LD    1, 0(6)  pop first child's value
313: LDA   6, 1(6)  pop first child's value
314: SUB   1, 1, 0  greater than
315: LDC   0, 1(5)  load 1 as true
316: JLT   1, 1(7)  skip load false
317: LDC   0, 0(5)  load 0 as false
319: LDA   6, -1(6)  push fp
320: ST    4, 0(6)  push fp
321: LDA   4, 0(6)  set fp to sp
325: LDA   6, -1(6)  preserve space for local vars
326: LDA   7, 282(5)  jump to procedure call
322: LDC   0, 327(5)  load return address into ac
323: LDA   6, -1(6)  push return address
324: ST    0, 0(6)  push return address
318: JEQ   0, 9(7)  if expr not true
328: LDA   1, 0(4)  load fp into ac2
329: LD    0, -3(1)  load int/bool/str from stack
330: LDA   6, -1(6)  push first child's value
331: ST    0, 0(6)  push first child's value
332: LDC   0, 1(5)  load integer 1
333: LD    1, 0(6)  pop first child's value
334: LDA   6, 1(6)  pop first child's value
335: SUB   1, 1, 0  greater than
336: LDC   0, 1(5)  load 1 as true
337: JEQ   1, 1(7)  skip load false
338: LDC   0, 0(5)  load 0 as false
340: LDC   0, 1(5)  load integer 1
341: LDA   1, 0(4)  load fp into ac2
342: ST    0, -2(1)  store int/bool/string into stack
339: JEQ   0, 4(7)  if expr not true
344: LDA   1, 0(4)  load fp into ac2
345: LD    0, -3(1)  load int/bool/str from stack
346: LDA   6, -1(6)  push first child's value
347: ST    0, 0(6)  push first child's value
348: LDC   0, 4(5)  load integer 4
349: LD    1, 0(6)  pop first child's value
350: LDA   6, 1(6)  pop first child's value
351: SUB   1, 1, 0  greater than
352: LDC   0, 1(5)  load 1 as true
353: JLT   1, 1(7)  skip load false
354: LDC   0, 0(5)  load 0 as false
356: LDA   1, 0(4)  load fp into ac2
357: LD    0, -3(1)  load int/bool/str from stack
358: LDA   6, -1(6)  push first child's value
359: ST    0, 0(6)  push first child's value
360: LDC   0, 1(5)  load integer 1
361: LD    1, 0(6)  pop first child's value
362: LDA   6, 1(6)  pop first child's value
363: SUB   0, 1, 0  subtract two children
364: LDA   1, 0(4)  load fp into ac2
365: ST    0, -2(1)  store int/bool/string into stack
355: JEQ   0, 11(7)  if expr not true
367: LDA   1, 0(4)  load fp into ac2
368: LD    0, -3(1)  load int/bool/str from stack
369: LDA   6, -1(6)  push first child's value
370: ST    0, 0(6)  push first child's value
371: LDC   0, 1(5)  load integer 1
372: LD    1, 0(6)  pop first child's value
373: LDA   6, 1(6)  pop first child's value
374: SUB   0, 1, 0  subtract two children
375: LDA   6, -1(6)  push first child's value
376: ST    0, 0(6)  push first child's value
377: LDC   0, 4(5)  load integer 4
378: LD    1, 0(6)  pop first child's value
379: LDA   6, 1(6)  pop first child's value
380: DIV   2, 1, 0  divide two children
381: MUL   0, 2, 0  multiply quotient and divisor
382: SUB   0, 1, 0  compute mod
383: LDA   1, 0(4)  load fp into ac2
384: ST    0, -2(1)  store int/bool/string into stack
385: LDA   1, 0(4)  load fp into ac2
386: LD    0, -2(1)  load int/bool/str from stack
387: LDA   6, -1(6)  push first child's value
388: ST    0, 0(6)  push first child's value
389: LDC   0, 0(5)  load integer 0
390: LD    1, 0(6)  pop first child's value
391: LDA   6, 1(6)  pop first child's value
392: SUB   1, 1, 0  greater than
393: LDC   0, 1(5)  load 1 as true
394: JEQ   1, 1(7)  skip load false
395: LDC   0, 0(5)  load 0 as false
397: LDC   0, 1(5)  load integer 1
398: LDA   1, 0(4)  load fp into ac2
399: ST    0, -2(1)  store int/bool/string into stack
396: JEQ   0, 3(7)  if expr not true
327: LDA   7, 72(7)  Jump to the end of if
343: LDA   7, 56(7)  Jump to the end of if
366: LDA   7, 33(7)  Jump to the end of if
400: LD    0, -2(4)  load int/bool/string offset as return value
401: LD    1, -1(4)  load return address
402: LDA   6, 0(4)  change sp to fp + 1
403: LD    4, 0(6)  restore fp
404: LDA   6, 1(6)  restore fp
405: LDA   7, 0(1)  jump to the return address
2: LDA   7, 406(5)  jump to start of the program
406: LDC   0, 470(5)  load string offset 470
407: LD    1, 0(0)  load str length into ac2
408: JEQ   1, 5(7)  output nothing when empty
409: LDA   0, 1(0)  increase offset
410: LD    2, 0(0)  load char into ac3
411: OUTC   2, 2, 2  write char
412: LDA   1, -1(1)  decrease length of remaining string in ac2
413: JNE   1, -5(7)  continue print if not yet finish
414: IN   0, 0, 0  read integer from stdin
415: ST    0, 835(5)  store int/bool/string into previous used static data
416: LD    0, 835(5)  load int/bool/str from static data
417: LDA   6, -1(6)  push first child's value
418: ST    0, 0(6)  push first child's value
419: LDC   0, 1(5)  load integer 1
420: LD    1, 0(6)  pop first child's value
421: LDA   6, 1(6)  pop first child's value
422: SUB   1, 1, 0  greater than
423: LDC   0, 1(5)  load 1 as true
424: JEQ   1, 1(7)  skip load false
425: LDC   0, 0(5)  load 0 as false
427: LDC   0, 742(5)  load string offset 742
428: LD    1, 0(0)  load str length into ac2
429: JEQ   1, 5(7)  output nothing when empty
430: LDA   0, 1(0)  increase offset
431: LD    2, 0(0)  load char into ac3
432: OUTC   2, 2, 2  write char
433: LDA   1, -1(1)  decrease length of remaining string in ac2
434: JNE   1, -5(7)  continue print if not yet finish
435: OUTNL 0, 0, 0  write new line
436: LDC   0, 63(5)  load string offset 63
437: LD    1, 0(0)  load str length into ac2
438: JEQ   1, 5(7)  output nothing when empty
439: LDA   0, 1(0)  increase offset
440: LD    2, 0(0)  load char into ac3
441: OUTC   2, 2, 2  write char
442: LDA   1, -1(1)  decrease length of remaining string in ac2
443: JNE   1, -5(7)  continue print if not yet finish
444: OUTNL 0, 0, 0  write new line
445: LDC   0, 616(5)  load string offset 616
446: LD    1, 0(0)  load str length into ac2
447: JEQ   1, 5(7)  output nothing when empty
448: LDA   0, 1(0)  increase offset
449: LD    2, 0(0)  load char into ac3
450: OUTC   2, 2, 2  write char
451: LDA   1, -1(1)  decrease length of remaining string in ac2
452: JNE   1, -5(7)  continue print if not yet finish
453: OUTNL 0, 0, 0  write new line
426: JEQ   0, 27(7)  if expr not true
454: LDA   6, -1(6)  push fp
455: ST    4, 0(6)  push fp
456: LDA   4, 0(6)  set fp to sp
460: LDA   6, -1(6)  push zero as return value
461: ST    5, 0(6)  push zero as return value
462: LDA   6, -2(6)  preserve space for local vars
463: LDA   7, 44(5)  jump to procedure call
457: LDC   0, 464(5)  load return address into ac
458: LDA   6, -1(6)  push return address
459: ST    0, 0(6)  push return address
464: ST    0, 834(5)  store int/bool/string into previous used static data
465: LDC   0, 692(5)  load string offset 692
466: LD    1, 0(0)  load str length into ac2
467: JEQ   1, 5(7)  output nothing when empty
468: LDA   0, 1(0)  increase offset
469: LD    2, 0(0)  load char into ac3
470: OUTC   2, 2, 2  write char
471: LDA   1, -1(1)  decrease length of remaining string in ac2
472: JNE   1, -5(7)  continue print if not yet finish
473: LD    0, 834(5)  load int/bool/str from static data
474: OUT   0, 0, 0  write integer
475: OUTNL 0, 0, 0  write new line
476: LDC   0, 240(5)  load string offset 240
477: LD    1, 0(0)  load str length into ac2
478: JEQ   1, 5(7)  output nothing when empty
479: LDA   0, 1(0)  increase offset
480: LD    2, 0(0)  load char into ac3
481: OUTC   2, 2, 2  write char
482: LDA   1, -1(1)  decrease length of remaining string in ac2
483: JNE   1, -5(7)  continue print if not yet finish
484: OUTNL 0, 0, 0  write new line
485: LD    0, 834(5)  load int/bool/str from static data
486: LDA   6, -1(6)  push first child's value
487: ST    0, 0(6)  push first child's value
488: LDC   0, 0(5)  load integer 0
489: LD    1, 0(6)  pop first child's value
490: LDA   6, 1(6)  pop first child's value
491: SUB   1, 1, 0  greater than
492: LDC   0, 1(5)  load 1 as true
493: JGT   1, 1(7)  skip load false
494: LDC   0, 0(5)  load 0 as false
496: LDC   0, 681(5)  load string offset 681
497: LD    1, 0(0)  load str length into ac2
498: JEQ   1, 5(7)  output nothing when empty
499: LDA   0, 1(0)  increase offset
500: LD    2, 0(0)  load char into ac3
501: OUTC   2, 2, 2  write char
502: LDA   1, -1(1)  decrease length of remaining string in ac2
503: JNE   1, -5(7)  continue print if not yet finish
504: LD    0, 834(5)  load int/bool/str from static data
505: OUT   0, 0, 0  write integer
506: LDC   0, 344(5)  load string offset 344
507: LD    1, 0(0)  load str length into ac2
508: JEQ   1, 5(7)  output nothing when empty
509: LDA   0, 1(0)  increase offset
510: LD    2, 0(0)  load char into ac3
511: OUTC   2, 2, 2  write char
512: LDA   1, -1(1)  decrease length of remaining string in ac2
513: JNE   1, -5(7)  continue print if not yet finish
514: OUTNL 0, 0, 0  write new line
515: LDC   0, 283(5)  load string offset 283
516: LD    1, 0(0)  load str length into ac2
517: JEQ   1, 5(7)  output nothing when empty
518: LDA   0, 1(0)  increase offset
519: LD    2, 0(0)  load char into ac3
520: OUTC   2, 2, 2  write char
521: LDA   1, -1(1)  decrease length of remaining string in ac2
522: JNE   1, -5(7)  continue print if not yet finish
523: LDC   0, 0(5)  load integer 0
524: ST    0, 835(5)  store int/bool/string into previous used static data
525: LD    0, 835(5)  load int/bool/str from static data
526: LDA   6, -1(6)  push first child's value
527: ST    0, 0(6)  push first child's value
528: LDC   0, 4(5)  load integer 4
529: LD    1, 0(6)  pop first child's value
530: LDA   6, 1(6)  pop first child's value
531: SUB   1, 1, 0  greater than
532: LDC   0, 1(5)  load 1 as true
533: JLT   1, 1(7)  skip load false
534: LDC   0, 0(5)  load 0 as false
536: LD    0, 835(5)  load int/bool/str from static data
537: LDA   6, -1(6)  push first child's value
538: ST    0, 0(6)  push first child's value
539: LDC   0, 1(5)  load integer 1
540: LD    1, 0(6)  pop first child's value
541: LDA   6, 1(6)  pop first child's value
542: ADD   0, 0, 1  add two children
543: ST    0, 835(5)  store int/bool/string into previous used static data
544: IN   0, 0, 0  read integer from stdin
545: ST    0, 833(5)  store int/bool/string into previous used static data
546: LDC   0, 697(5)  load string offset 697
547: LD    1, 0(0)  load str length into ac2
548: JEQ   1, 5(7)  output nothing when empty
549: LDA   0, 1(0)  increase offset
550: LD    2, 0(0)  load char into ac3
551: OUTC   2, 2, 2  write char
552: LDA   1, -1(1)  decrease length of remaining string in ac2
553: JNE   1, -5(7)  continue print if not yet finish
554: LD    0, 833(5)  load int/bool/str from static data
555: OUT   0, 0, 0  write integer
556: OUTNL 0, 0, 0  write new line
557: LD    0, 833(5)  load int/bool/str from static data
558: LDA   6, -1(6)  push first child's value
559: ST    0, 0(6)  push first child's value
560: LDC   0, 1(5)  load integer 1
561: LD    1, 0(6)  pop first child's value
562: LDA   6, 1(6)  pop first child's value
563: SUB   1, 1, 0  greater than
564: LDC   0, 1(5)  load 1 as true
565: JLT   1, 1(7)  skip load false
566: LDC   0, 0(5)  load 0 as false
567: LDA   6, -1(6)  push first child's value
568: ST    0, 0(6)  push first child's value
570: LD    0, 833(5)  load int/bool/str from static data
571: LDA   6, -1(6)  push first child's value
572: ST    0, 0(6)  push first child's value
573: LDC   0, 3(5)  load integer 3
574: LD    1, 0(6)  pop first child's value
575: LDA   6, 1(6)  pop first child's value
576: SUB   1, 1, 0  greater than
577: LDC   0, 1(5)  load 1 as true
578: JGT   1, 1(7)  skip load false
579: LDC   0, 0(5)  load 0 as false
580: LD    1, 0(6)  pop first child's value
581: LDA   6, 1(6)  pop first child's value
582: ADD   1, 0, 1  add two children
583: LDC   0, 1(5)  load 1 as true
584: JNE   1, 1(7)  skip load false
585: LDC   0, 0(5)  load 0 as false
569: JNE   0, 16(7)  short circuit
587: LDC   0, 122(5)  load string offset 122
588: LD    1, 0(0)  load str length into ac2
589: JEQ   1, 5(7)  output nothing when empty
590: LDA   0, 1(0)  increase offset
591: LD    2, 0(0)  load char into ac3
592: OUTC   2, 2, 2  write char
593: LDA   1, -1(1)  decrease length of remaining string in ac2
594: JNE   1, -5(7)  continue print if not yet finish
586: JEQ   0, 9(7)  if expr not true
596: LD    0, 833(5)  load int/bool/str from static data
597: LDA   6, -1(6)  push first child's value
598: ST    0, 0(6)  push first child's value
599: LD    0, 834(5)  load int/bool/str from static data
600: LD    1, 0(6)  pop first child's value
601: LDA   6, 1(6)  pop first child's value
602: SUB   1, 1, 0  greater than
603: LDC   0, 1(5)  load 1 as true
604: JGT   1, 1(7)  skip load false
605: LDC   0, 0(5)  load 0 as false
607: LDC   0, 207(5)  load string offset 207
608: LD    1, 0(0)  load str length into ac2
609: JEQ   1, 5(7)  output nothing when empty
610: LDA   0, 1(0)  increase offset
611: LD    2, 0(0)  load char into ac3
612: OUTC   2, 2, 2  write char
613: LDA   1, -1(1)  decrease length of remaining string in ac2
614: JNE   1, -5(7)  continue print if not yet finish
615: LD    0, 834(5)  load int/bool/str from static data
616: OUT   0, 0, 0  write integer
617: LDC   0, 810(5)  load string offset 810
618: LD    1, 0(0)  load str length into ac2
619: JEQ   1, 5(7)  output nothing when empty
620: LDA   0, 1(0)  increase offset
621: LD    2, 0(0)  load char into ac3
622: OUTC   2, 2, 2  write char
623: LDA   1, -1(1)  decrease length of remaining string in ac2
624: JNE   1, -5(7)  continue print if not yet finish
606: JEQ   0, 19(7)  if expr not true
595: LDA   7, 31(7)  Jump to the end of if
625: LDA   7, 1(7)  Jump to the end of if
627: LDA   7, -103(7)  jump back to loop start
535: JEQ   0, 92(7)  jump out of the do loop
626: LDA   7, 1(7)  break -> jump out of the do loop
628: LD    0, 833(5)  load int/bool/str from static data
629: LDA   6, -1(6)  push first child's value
630: ST    0, 0(6)  push first child's value
631: LDC   0, 0(5)  load integer 0
632: LD    1, 0(6)  pop first child's value
633: LDA   6, 1(6)  pop first child's value
634: SUB   1, 1, 0  greater than
635: LDC   0, 1(5)  load 1 as true
636: JLT   1, 1(7)  skip load false
637: LDC   0, 0(5)  load 0 as false
638: LDA   6, -1(6)  push first child's value
639: ST    0, 0(6)  push first child's value
641: LD    0, 833(5)  load int/bool/str from static data
642: LDA   6, -1(6)  push first child's value
643: ST    0, 0(6)  push first child's value
644: LDC   0, 3(5)  load integer 3
645: LD    1, 0(6)  pop first child's value
646: LDA   6, 1(6)  pop first child's value
647: SUB   1, 1, 0  greater than
648: LDC   0, 1(5)  load 1 as true
649: JGT   1, 1(7)  skip load false
650: LDC   0, 0(5)  load 0 as false
651: LD    1, 0(6)  pop first child's value
652: LDA   6, 1(6)  pop first child's value
653: ADD   1, 0, 1  add two children
654: LDC   0, 1(5)  load 1 as true
655: JNE   1, 1(7)  skip load false
656: LDC   0, 0(5)  load 0 as false
640: JNE   0, 16(7)  short circuit
658: LDC   0, 630(5)  load string offset 630
659: LD    1, 0(0)  load str length into ac2
660: JEQ   1, 5(7)  output nothing when empty
661: LDA   0, 1(0)  increase offset
662: LD    2, 0(0)  load char into ac3
663: OUTC   2, 2, 2  write char
664: LDA   1, -1(1)  decrease length of remaining string in ac2
665: JNE   1, -5(7)  continue print if not yet finish
666: OUTNL 0, 0, 0  write new line
667: HALT  0, 0, 0  exit program
657: JEQ   0, 10(7)  if expr not true
668: LD    0, 834(5)  load int/bool/str from static data
669: LDA   6, -1(6)  push first child's value
670: ST    0, 0(6)  push first child's value
671: LD    0, 833(5)  load int/bool/str from static data
672: LD    1, 0(6)  pop first child's value
673: LDA   6, 1(6)  pop first child's value
674: SUB   0, 1, 0  subtract two children
675: ST    0, 834(5)  store int/bool/string into previous used static data
676: LD    0, 834(5)  load int/bool/str from static data
677: LDA   6, -1(6)  push first child's value
678: ST    0, 0(6)  push first child's value
679: LDC   0, 0(5)  load integer 0
680: LD    1, 0(6)  pop first child's value
681: LDA   6, 1(6)  pop first child's value
682: SUB   1, 1, 0  greater than
683: LDC   0, 1(5)  load 1 as true
684: JLT   1, 1(7)  skip load false
685: LDC   0, 0(5)  load 0 as false
687: LDA   6, -1(6)  push fp
688: ST    4, 0(6)  push fp
689: LDA   4, 0(6)  set fp to sp
693: LDA   6, -1(6)  preserve space for local vars
694: LDA   7, 282(5)  jump to procedure call
690: LDC   0, 695(5)  load return address into ac
691: LDA   6, -1(6)  push return address
692: ST    0, 0(6)  push return address
686: JEQ   0, 9(7)  if expr not true
696: LD    0, 834(5)  load int/bool/str from static data
697: LDA   6, -1(6)  push first child's value
698: ST    0, 0(6)  push first child's value
699: LDC   0, 0(5)  load integer 0
700: LD    1, 0(6)  pop first child's value
701: LDA   6, 1(6)  pop first child's value
702: SUB   1, 1, 0  greater than
703: LDC   0, 1(5)  load 1 as true
704: JEQ   1, 1(7)  skip load false
705: LDC   0, 0(5)  load 0 as false
707: LDC   0, 363(5)  load string offset 363
708: LD    1, 0(0)  load str length into ac2
709: JEQ   1, 5(7)  output nothing when empty
710: LDA   0, 1(0)  increase offset
711: LD    2, 0(0)  load char into ac3
712: OUTC   2, 2, 2  write char
713: LDA   1, -1(1)  decrease length of remaining string in ac2
714: JNE   1, -5(7)  continue print if not yet finish
715: OUTNL 0, 0, 0  write new line
706: JEQ   0, 11(7)  if expr not true
718: LD    0, 834(5)  load int/bool/str from static data
719: LDA   6, -1(6)  push first child's value
720: ST    0, 0(6)  push first child's value
721: LDC   0, 1(5)  load integer 1
722: LD    1, 0(6)  pop first child's value
723: LDA   6, 1(6)  pop first child's value
724: SUB   1, 1, 0  greater than
725: LDC   0, 1(5)  load 1 as true
726: JEQ   1, 1(7)  skip load false
727: LDC   0, 0(5)  load 0 as false
729: LDC   0, 567(5)  load string offset 567
730: LD    1, 0(0)  load str length into ac2
731: JEQ   1, 5(7)  output nothing when empty
732: LDA   0, 1(0)  increase offset
733: LD    2, 0(0)  load char into ac3
734: OUTC   2, 2, 2  write char
735: LDA   1, -1(1)  decrease length of remaining string in ac2
736: JNE   1, -5(7)  continue print if not yet finish
737: OUTNL 0, 0, 0  write new line
738: LDC   0, 95(5)  load string offset 95
739: LD    1, 0(0)  load str length into ac2
740: JEQ   1, 5(7)  output nothing when empty
741: LDA   0, 1(0)  increase offset
742: LD    2, 0(0)  load char into ac3
743: OUTC   2, 2, 2  write char
744: LDA   1, -1(1)  decrease length of remaining string in ac2
745: JNE   1, -5(7)  continue print if not yet finish
746: OUTNL 0, 0, 0  write new line
728: JEQ   0, 20(7)  if expr not true
749: LDC   0, 681(5)  load string offset 681
750: LD    1, 0(0)  load str length into ac2
751: JEQ   1, 5(7)  output nothing when empty
752: LDA   0, 1(0)  increase offset
753: LD    2, 0(0)  load char into ac3
754: OUTC   2, 2, 2  write char
755: LDA   1, -1(1)  decrease length of remaining string in ac2
756: JNE   1, -5(7)  continue print if not yet finish
757: LD    0, 834(5)  load int/bool/str from static data
758: OUT   0, 0, 0  write integer
759: LDC   0, 344(5)  load string offset 344
760: LD    1, 0(0)  load str length into ac2
761: JEQ   1, 5(7)  output nothing when empty
762: LDA   0, 1(0)  increase offset
763: LD    2, 0(0)  load char into ac3
764: OUTC   2, 2, 2  write char
765: LDA   1, -1(1)  decrease length of remaining string in ac2
766: JNE   1, -5(7)  continue print if not yet finish
767: OUTNL 0, 0, 0  write new line
768: LDC   0, 709(5)  load string offset 709
769: LD    1, 0(0)  load str length into ac2
770: JEQ   1, 5(7)  output nothing when empty
771: LDA   0, 1(0)  increase offset
772: LD    2, 0(0)  load char into ac3
773: OUTC   2, 2, 2  write char
774: LDA   1, -1(1)  decrease length of remaining string in ac2
775: JNE   1, -5(7)  continue print if not yet finish
776: LDA   6, -1(6)  push fp
777: ST    4, 0(6)  push fp
778: LDA   4, 0(6)  set fp to sp
782: LDA   6, -1(6)  push zero as return value
783: ST    5, 0(6)  push zero as return value
784: LD    0, 834(5)  load int/bool/str from static data
785: LDA   6, -1(6)  push int/bool/str parameter
786: ST    0, 0(6)  push int/bool/str parameter
787: LDA   6, -2(6)  preserve space for local vars
788: LDA   7, 307(5)  jump to procedure call
779: LDC   0, 789(5)  load return address into ac
780: LDA   6, -1(6)  push return address
781: ST    0, 0(6)  push return address
789: ST    0, 833(5)  store int/bool/string into previous used static data
790: LD    0, 833(5)  load int/bool/str from static data
791: OUT   0, 0, 0  write integer
792: LDC   0, 733(5)  load string offset 733
793: LD    1, 0(0)  load str length into ac2
794: JEQ   1, 5(7)  output nothing when empty
795: LDA   0, 1(0)  increase offset
796: LD    2, 0(0)  load char into ac3
797: OUTC   2, 2, 2  write char
798: LDA   1, -1(1)  decrease length of remaining string in ac2
799: JNE   1, -5(7)  continue print if not yet finish
800: OUTNL 0, 0, 0  write new line
801: LD    0, 834(5)  load int/bool/str from static data
802: LDA   6, -1(6)  push first child's value
803: ST    0, 0(6)  push first child's value
804: LD    0, 833(5)  load int/bool/str from static data
805: LD    1, 0(6)  pop first child's value
806: LDA   6, 1(6)  pop first child's value
807: SUB   0, 1, 0  subtract two children
808: ST    0, 834(5)  store int/bool/string into previous used static data
695: LDA   7, 113(7)  Jump to the end of if
717: LDA   7, 91(7)  Jump to the end of if
748: LDA   7, 60(7)  Jump to the end of if
809: LDA   7, -325(7)  jump back to loop start
495: JEQ   0, 314(7)  jump out of the do loop
716: LDA   7, 93(7)  break -> jump out of the do loop
747: LDA   7, 62(7)  break -> jump out of the do loop
810: LDC   0, 168(5)  load string offset 168
811: LD    1, 0(0)  load str length into ac2
812: JEQ   1, 5(7)  output nothing when empty
813: LDA   0, 1(0)  increase offset
814: LD    2, 0(0)  load char into ac3
815: OUTC   2, 2, 2  write char
816: LDA   1, -1(1)  decrease length of remaining string in ac2
817: JNE   1, -5(7)  continue print if not yet finish
818: OUTNL 0, 0, 0  write new line
819: HALT  0, 0, 0  program ends
