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
.DATA    2
.SDATA   "50"
.DATA    3
.SDATA   "+50"
.DATA    18
.SDATA   "array index error!"
.DATA    9
.SDATA   "i am a[1]"
.DATA    9
.SDATA   "i am a[0]"
.DATA    13
.SDATA   "out of memory"
.DATA    9
.SDATA   "a[1] is: "
0: LDC   0, 142(5)  store array start address: 142
1: LDC   1, 141(5)  store array offset into ac2: 141
2: ST    0, 0(1)  store array offset
3: LD    6, 0(5)  save stack pointer
4: LD    4, 0(5)  save frame pointer
6: LDC   0, 78(5)  load array error str address
7: LD    1, 0(0)  load str length into ac2
8: JEQ   1, 5(7)  output nothing when empty
9: LDA   0, 1(0)  increase offset
10: LD    2, 0(0)  load char into ac3
11: OUTC   2, 2, 2  write char
12: LDA   1, -1(1)  decrease length of remaining string in ac2
13: JNE   1, -5(7)  continue print if not yet finish
14: OUTNL 0, 0, 0  emit newline
15: HALT  0, 0, 0  stop because of array error
16: LDC   0, 117(5)  load out of memory str address
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
39: LDC   3, 144(5)  push -1
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
49: LDC   3, 144(5)  push 1
50: SUB   3, 6, 3  push 1
51: JLE   3, 16(5)  push 1
52: ST    2, 0(6)  push 1
43: LDA   7, 9(7)  jump to start parsing str
53: LDC   2, 0(5)  load 0 as initial result
54: LDA   6, -1(6)  push 0
55: LDC   3, 144(5)  push 0
56: SUB   3, 6, 3  push 0
57: JLE   3, 16(5)  push 0
58: ST    2, 0(6)  push 0
59: LD    2, 0(6)  pop result into AC3
60: LDA   6, 1(6)  pop result into AC3
61: LDC   3, 10(5)  load 10 into ac4
62: MUL   2, 2, 3  mul result with 10
63: LDA   6, -1(6)  push result
64: LDC   3, 144(5)  push result
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
76: LDC   3, 144(5)  push result
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
94: LDC   0, 65(5)  load string offset 65
95: LD    1, 0(0)  load str length into ac2
96: JEQ   1, 5(7)  output nothing when empty
97: LDA   0, 1(0)  increase offset
98: LD    2, 0(0)  load char into ac3
99: OUTC   2, 2, 2  write char
100: LDA   1, -1(1)  decrease length of remaining string in ac2
101: JNE   1, -5(7)  continue print if not yet finish
102: LDA   1, 0(4)  load fp into ac2
103: LD    0, -2(1)  load int/bool/str from stack
104: LD    1, 0(0)  load str length into ac2
105: JEQ   1, 5(7)  output nothing when empty
106: LDA   0, 1(0)  increase offset
107: LD    2, 0(0)  load char into ac3
108: OUTC   2, 2, 2  write char
109: LDA   1, -1(1)  decrease length of remaining string in ac2
110: JNE   1, -5(7)  continue print if not yet finish
111: OUTNL 0, 0, 0  write new line
112: LDC   0, 48(5)  load string offset 48
113: LDA   1, 0(4)  load fp into ac2
114: ST    0, -2(1)  store int/bool/string into stack
115: LDC   0, 65(5)  load string offset 65
116: LD    1, 0(0)  load str length into ac2
117: JEQ   1, 5(7)  output nothing when empty
118: LDA   0, 1(0)  increase offset
119: LD    2, 0(0)  load char into ac3
120: OUTC   2, 2, 2  write char
121: LDA   1, -1(1)  decrease length of remaining string in ac2
122: JNE   1, -5(7)  continue print if not yet finish
123: LDA   1, 0(4)  load fp into ac2
124: LD    0, -2(1)  load int/bool/str from stack
125: LD    1, 0(0)  load str length into ac2
126: JEQ   1, 5(7)  output nothing when empty
127: LDA   0, 1(0)  increase offset
128: LD    2, 0(0)  load char into ac3
129: OUTC   2, 2, 2  write char
130: LDA   1, -1(1)  decrease length of remaining string in ac2
131: JNE   1, -5(7)  continue print if not yet finish
132: OUTNL 0, 0, 0  write new line
133: LD    1, -1(4)  load return address
134: LDA   6, 0(4)  change sp to fp + 1
135: LD    4, 0(6)  restore fp
136: LDA   6, 1(6)  restore fp
137: LDA   7, 0(1)  jump to the return address
5: LDA   7, 138(5)  jump to start of the program
138: LDC   0, 0(5)  load integer 0
139: LDA   6, -1(6)  push array index
140: LDC   3, 144(5)  push array index
141: SUB   3, 6, 3  push array index
142: JLE   3, 16(5)  push array index
143: ST    0, 0(6)  push array index
144: LDC   0, 1(5)  push array dimension
145: LDC   0, 0(5)  load 0 to ac
146: LD    1, 0(6)  pop index
147: LDA   6, 1(6)  pop index
148: JLT   1, 6(5)  jump if index less than 0
149: LDC   3, 2(5)  load array size
150: SUB   3, 3, 1  sub max size with index
151: JLE   3, 6(5)  jump if index greater than size - 1
152: LDC   2, 1(5)  load size of subarray
153: MUL   1, 1, 2  compute 0 dim
154: ADD   0, 0, 1  add result
155: LD    1, 141(5)  load offset into ac2
156: ADD   0, 0, 1  compute final offset
157: LDA   6, -1(6)  push final offset
158: LDC   3, 144(5)  push final offset
159: SUB   3, 6, 3  push final offset
160: JLE   3, 16(5)  push final offset
161: ST    0, 0(6)  push final offset
162: LDC   0, 107(5)  load string offset 107
163: LD    1, 0(6)  pop final offset
164: LDA   6, 1(6)  pop final offset
165: ST    0, 0(1)  store value into array static data
166: LDC   0, 1(5)  load integer 1
167: LDA   6, -1(6)  push array index
168: LDC   3, 144(5)  push array index
169: SUB   3, 6, 3  push array index
170: JLE   3, 16(5)  push array index
171: ST    0, 0(6)  push array index
172: LDC   0, 1(5)  push array dimension
173: LDC   0, 0(5)  load 0 to ac
174: LD    1, 0(6)  pop index
175: LDA   6, 1(6)  pop index
176: JLT   1, 6(5)  jump if index less than 0
177: LDC   3, 2(5)  load array size
178: SUB   3, 3, 1  sub max size with index
179: JLE   3, 6(5)  jump if index greater than size - 1
180: LDC   2, 1(5)  load size of subarray
181: MUL   1, 1, 2  compute 0 dim
182: ADD   0, 0, 1  add result
183: LD    1, 141(5)  load offset into ac2
184: ADD   0, 0, 1  compute final offset
185: LDA   6, -1(6)  push final offset
186: LDC   3, 144(5)  push final offset
187: SUB   3, 6, 3  push final offset
188: JLE   3, 16(5)  push final offset
189: ST    0, 0(6)  push final offset
190: LDC   0, 97(5)  load string offset 97
191: LD    1, 0(6)  pop final offset
192: LDA   6, 1(6)  pop final offset
193: ST    0, 0(1)  store value into array static data
194: LDC   0, 55(5)  load string offset 55
195: LD    1, 0(0)  load str length into ac2
196: JEQ   1, 5(7)  output nothing when empty
197: LDA   0, 1(0)  increase offset
198: LD    2, 0(0)  load char into ac3
199: OUTC   2, 2, 2  write char
200: LDA   1, -1(1)  decrease length of remaining string in ac2
201: JNE   1, -5(7)  continue print if not yet finish
202: LDC   0, 0(5)  load integer 0
203: LDA   6, -1(6)  push array index
204: LDC   3, 144(5)  push array index
205: SUB   3, 6, 3  push array index
206: JLE   3, 16(5)  push array index
207: ST    0, 0(6)  push array index
208: LDC   0, 1(5)  push array dimension
209: LDC   0, 0(5)  load 0 to ac
210: LD    1, 0(6)  pop index
211: LDA   6, 1(6)  pop index
212: JLT   1, 6(5)  jump if index less than 0
213: LDC   3, 2(5)  load array size
214: SUB   3, 3, 1  sub max size with index
215: JLE   3, 6(5)  jump if index greater than size - 1
216: LDC   2, 1(5)  load size of subarray
217: MUL   1, 1, 2  compute 0 dim
218: ADD   0, 0, 1  add result
219: LD    1, 141(5)  load global offset into ac2
220: ADD   0, 0, 1  compute final offset
221: LD    0, 0(0)  load data from array
222: LD    1, 0(0)  load str length into ac2
223: JEQ   1, 5(7)  output nothing when empty
224: LDA   0, 1(0)  increase offset
225: LD    2, 0(0)  load char into ac3
226: OUTC   2, 2, 2  write char
227: LDA   1, -1(1)  decrease length of remaining string in ac2
228: JNE   1, -5(7)  continue print if not yet finish
229: OUTNL 0, 0, 0  write new line
230: LDC   0, 131(5)  load string offset 131
231: LD    1, 0(0)  load str length into ac2
232: JEQ   1, 5(7)  output nothing when empty
233: LDA   0, 1(0)  increase offset
234: LD    2, 0(0)  load char into ac3
235: OUTC   2, 2, 2  write char
236: LDA   1, -1(1)  decrease length of remaining string in ac2
237: JNE   1, -5(7)  continue print if not yet finish
238: LDC   0, 1(5)  load integer 1
239: LDA   6, -1(6)  push array index
240: LDC   3, 144(5)  push array index
241: SUB   3, 6, 3  push array index
242: JLE   3, 16(5)  push array index
243: ST    0, 0(6)  push array index
244: LDC   0, 1(5)  push array dimension
245: LDC   0, 0(5)  load 0 to ac
246: LD    1, 0(6)  pop index
247: LDA   6, 1(6)  pop index
248: JLT   1, 6(5)  jump if index less than 0
249: LDC   3, 2(5)  load array size
250: SUB   3, 3, 1  sub max size with index
251: JLE   3, 6(5)  jump if index greater than size - 1
252: LDC   2, 1(5)  load size of subarray
253: MUL   1, 1, 2  compute 0 dim
254: ADD   0, 0, 1  add result
255: LD    1, 141(5)  load global offset into ac2
256: ADD   0, 0, 1  compute final offset
257: LD    0, 0(0)  load data from array
258: LD    1, 0(0)  load str length into ac2
259: JEQ   1, 5(7)  output nothing when empty
260: LDA   0, 1(0)  increase offset
261: LD    2, 0(0)  load char into ac3
262: OUTC   2, 2, 2  write char
263: LDA   1, -1(1)  decrease length of remaining string in ac2
264: JNE   1, -5(7)  continue print if not yet finish
265: OUTNL 0, 0, 0  write new line
266: LDA   6, -1(6)  push fp
267: LDC   3, 144(5)  push fp
268: SUB   3, 6, 3  push fp
269: JLE   3, 16(5)  push fp
270: ST    4, 0(6)  push fp
271: LDA   4, 0(6)  set fp to sp
278: LDC   0, 1(5)  load integer 1
279: LDA   6, -1(6)  push array index
280: LDC   3, 144(5)  push array index
281: SUB   3, 6, 3  push array index
282: JLE   3, 16(5)  push array index
283: ST    0, 0(6)  push array index
284: LDC   0, 1(5)  push array dimension
285: LDC   0, 0(5)  load 0 to ac
286: LD    1, 0(6)  pop index
287: LDA   6, 1(6)  pop index
288: JLT   1, 6(5)  jump if index less than 0
289: LDC   3, 2(5)  load array size
290: SUB   3, 3, 1  sub max size with index
291: JLE   3, 6(5)  jump if index greater than size - 1
292: LDC   2, 1(5)  load size of subarray
293: MUL   1, 1, 2  compute 0 dim
294: ADD   0, 0, 1  add result
295: LD    1, 141(5)  load global offset into ac2
296: ADD   0, 0, 1  compute final offset
297: LD    0, 0(0)  load data from array
298: LDA   6, -1(6)  push int/bool/str parameter
299: LDC   3, 144(5)  push int/bool/str parameter
300: SUB   3, 6, 3  push int/bool/str parameter
301: JLE   3, 16(5)  push int/bool/str parameter
302: ST    0, 0(6)  push int/bool/str parameter
303: LDA   6, 0(6)  preserve space for local vars
304: LDA   7, 94(5)  jump to procedure call
272: LDC   0, 305(5)  load return address into ac
273: LDA   6, -1(6)  push return address
274: LDC   3, 144(5)  push return address
275: SUB   3, 6, 3  push return address
276: JLE   3, 16(5)  push return address
277: ST    0, 0(6)  push return address
305: LDC   0, 1(5)  load string offset 1
306: LD    1, 0(0)  load str length into ac2
307: JEQ   1, 5(7)  output nothing when empty
308: LDA   0, 1(0)  increase offset
309: LD    2, 0(0)  load char into ac3
310: OUTC   2, 2, 2  write char
311: LDA   1, -1(1)  decrease length of remaining string in ac2
312: JNE   1, -5(7)  continue print if not yet finish
313: OUTNL 0, 0, 0  write new line
314: LDC   0, 131(5)  load string offset 131
315: LD    1, 0(0)  load str length into ac2
316: JEQ   1, 5(7)  output nothing when empty
317: LDA   0, 1(0)  increase offset
318: LD    2, 0(0)  load char into ac3
319: OUTC   2, 2, 2  write char
320: LDA   1, -1(1)  decrease length of remaining string in ac2
321: JNE   1, -5(7)  continue print if not yet finish
322: LDC   0, 1(5)  load integer 1
323: LDA   6, -1(6)  push array index
324: LDC   3, 144(5)  push array index
325: SUB   3, 6, 3  push array index
326: JLE   3, 16(5)  push array index
327: ST    0, 0(6)  push array index
328: LDC   0, 1(5)  push array dimension
329: LDC   0, 0(5)  load 0 to ac
330: LD    1, 0(6)  pop index
331: LDA   6, 1(6)  pop index
332: JLT   1, 6(5)  jump if index less than 0
333: LDC   3, 2(5)  load array size
334: SUB   3, 3, 1  sub max size with index
335: JLE   3, 6(5)  jump if index greater than size - 1
336: LDC   2, 1(5)  load size of subarray
337: MUL   1, 1, 2  compute 0 dim
338: ADD   0, 0, 1  add result
339: LD    1, 141(5)  load global offset into ac2
340: ADD   0, 0, 1  compute final offset
341: LD    0, 0(0)  load data from array
342: LD    1, 0(0)  load str length into ac2
343: JEQ   1, 5(7)  output nothing when empty
344: LDA   0, 1(0)  increase offset
345: LD    2, 0(0)  load char into ac3
346: OUTC   2, 2, 2  write char
347: LDA   1, -1(1)  decrease length of remaining string in ac2
348: JNE   1, -5(7)  continue print if not yet finish
349: OUTNL 0, 0, 0  write new line
350: HALT  0, 0, 0  program ends
