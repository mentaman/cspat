.DATA    2
.SDATA   "Hi"
.DATA    3
.SDATA   "+10"
.DATA    25
.SDATA   "invalid numeric character"
.DATA    6
.SDATA   "i am c"
.DATA    9
.SDATA   "a[0] is: "
.DATA    2
.SDATA   "50"
.DATA    18
.SDATA   "array index error!"
.DATA    3
.SDATA   "+50"
.DATA    5
.SDATA   "There"
.DATA    0
.SDATA   ""
.DATA    15
.SDATA   "m > 4 || m <= 2"
.DATA    3
.SDATA   "abc"
.DATA    13
.SDATA   "out of memory"
.DATA    3
.SDATA   "10 "
.DATA    9
.SDATA   "a[1] is: "
.DATA    3
.SDATA   "Hi "
.DATA    16
.SDATA   "after test(a[1])"
.DATA    5
.SDATA   " -10 "
.DATA    3
.SDATA   "-50"
.DATA    1
.SDATA   "-"
.DATA    5
.SDATA   "c is "
.DATA    15
.SDATA   "m <= 4 && m > 2"
.DATA    3
.SDATA   "1-0"
.DATA    9
.SDATA   "i am a[1]"
.DATA    8
.SDATA   "int(s): "
.DATA    9
.SDATA   "i am a[0]"
0: LD    6, 0(5)  save stack pointer
1: LD    4, 0(5)  save frame pointer
3: LDC   0, 54(5)  load array error str address
4: LD    1, 0(0)  load str length into ac2
5: JEQ   1, 5(7)  output nothing when empty
6: LDA   0, 1(0)  increase offset
7: LD    2, 0(0)  load char into ac3
8: OUTC   2, 2, 2  write char
9: LDA   1, -1(1)  decrease length of remaining string in ac2
10: JNE   1, -5(7)  continue print if not yet finish
11: OUTNL 0, 0, 0  emit newline
12: HALT  0, 0, 0  stop because of array error
13: LDC   0, 104(5)  load out of memory str address
14: LD    1, 0(0)  load str length into ac2
15: JEQ   1, 5(7)  output nothing when empty
16: LDA   0, 1(0)  increase offset
17: LD    2, 0(0)  load char into ac3
18: OUTC   2, 2, 2  write char
19: LDA   1, -1(1)  decrease length of remaining string in ac2
20: JNE   1, -5(7)  continue print if not yet finish
21: OUTNL 0, 0, 0  emit newline
22: HALT  0, 0, 0  stop because of out of memory error
23: LD    0, -3(4)  load str offset
24: LD    1, 0(0)  load str length
25: LDA   0, 1(0)  increase str offset
26: LD    2, 0(0)  load char
27: LDC   3, 43(5)  load 43(+) into ac4
28: SUB   3, 2, 3  sub 43(+)
30: LDC   3, 45(5)  load 45(-) into ac4
31: SUB   3, 2, 3  sub 45(-)
33: LDA   1, -1(1)  decrease str length
34: LDC   2, -1(5)  load -1 into ac3
35: LDA   6, -1(6)  push -1
36: LDC   3, 221(5)  push -1
37: SUB   3, 6, 3  push -1
38: JLE   3, 13(5)  push -1
39: ST    2, 0(6)  push -1
32: JNE   3, 8(7)  jump if not equal '-'
41: LDA   0, -1(0)  move back str offset
42: LDA   1, 1(1)  increase str length
29: JEQ   3, 13(7)  jump if equal '+'
43: LDA   1, -1(1)  decrease str length
44: LDC   2, 1(5)  load 1 into ac3
45: LDA   6, -1(6)  push 1
46: LDC   3, 221(5)  push 1
47: SUB   3, 6, 3  push 1
48: JLE   3, 13(5)  push 1
49: ST    2, 0(6)  push 1
40: LDA   7, 9(7)  jump to start parsing str
50: LDC   2, 0(5)  load 0 as initial result
51: LDA   6, -1(6)  push 0
52: LDC   3, 221(5)  push 0
53: SUB   3, 6, 3  push 0
54: JLE   3, 13(5)  push 0
55: ST    2, 0(6)  push 0
56: LD    2, 0(6)  pop result into AC3
57: LDA   6, 1(6)  pop result into AC3
58: LDC   3, 10(5)  load 10 into ac4
59: MUL   2, 2, 3  mul result with 10
60: LDA   6, -1(6)  push result
61: LDC   3, 221(5)  push result
62: SUB   3, 6, 3  push result
63: JLE   3, 13(5)  push result
64: ST    2, 0(6)  push result
65: LDA   0, 1(0)  increase str offset
66: LD    2, 0(0)  load char
67: LDC   3, 48(5)  load 48 into ac4
68: SUB   2, 2, 3  compute int value
69: LD    3, 0(6)  pop result into AC4
70: LDA   6, 1(6)  pop result into AC4
71: ADD   2, 2, 3  compute result
72: LDA   6, -1(6)  push result
73: LDC   3, 221(5)  push result
74: SUB   3, 6, 3  push result
75: JLE   3, 13(5)  push result
76: ST    2, 0(6)  push result
77: LDA   1, -1(1)  decrease str length
78: JNE   1, 56(5)  continue if str length
79: LD    0, 0(6)  pop result
80: LDA   6, 1(6)  pop result
81: LD    1, 0(6)  pop symbol
82: LDA   6, 1(6)  pop symbol
83: MUL   0, 0, 1  multiply symbol
84: ST    0, -2(4)  save to return value
85: LD    0, -2(4)  load int/bool/string offset as return value
86: LD    1, -1(4)  load return address
87: LDA   6, 0(4)  change sp to fp + 1
88: LD    4, 0(6)  restore fp
89: LDA   6, 1(6)  restore fp
90: LDA   7, 0(1)  jump to the return address
91: LDC   0, 201(5)  load string offset 201
92: LD    1, 0(0)  load str length into ac2
93: JEQ   1, 5(7)  output nothing when empty
94: LDA   0, 1(0)  increase offset
95: LD    2, 0(0)  load char into ac3
96: OUTC   2, 2, 2  write char
97: LDA   1, -1(1)  decrease length of remaining string in ac2
98: JNE   1, -5(7)  continue print if not yet finish
99: LDA   6, -1(6)  push fp
100: LDC   3, 221(5)  push fp
101: SUB   3, 6, 3  push fp
102: JLE   3, 13(5)  push fp
103: ST    4, 0(6)  push fp
104: LDA   4, 0(6)  set fp to sp
111: LDA   6, -1(6)  push zero as return value
112: LDC   3, 221(5)  push zero as return value
113: SUB   3, 6, 3  push zero as return value
114: JLE   3, 13(5)  push zero as return value
115: ST    5, 0(6)  push zero as return value
116: LDA   1, 0(4)  load fp into ac2
117: LD    1, 0(1)  load upper level fp into ac2
118: LD    0, -3(1)  load int/bool/str from stack
119: LDA   6, -1(6)  push int/bool/str parameter
120: LDC   3, 221(5)  push int/bool/str parameter
121: SUB   3, 6, 3  push int/bool/str parameter
122: JLE   3, 13(5)  push int/bool/str parameter
123: ST    0, 0(6)  push int/bool/str parameter
124: LDA   6, -1(6)  preserve space for local vars
125: LDA   7, 23(5)  jump to procedure call
105: LDC   0, 126(5)  load return address into ac
106: LDA   6, -1(6)  push return address
107: LDC   3, 221(5)  push return address
108: SUB   3, 6, 3  push return address
109: JLE   3, 13(5)  push return address
110: ST    0, 0(6)  push return address
126: OUT   0, 0, 0  write integer
127: OUTNL 0, 0, 0  write new line
128: LDA   6, -1(6)  push fp
129: LDC   3, 221(5)  push fp
130: SUB   3, 6, 3  push fp
131: JLE   3, 13(5)  push fp
132: ST    4, 0(6)  push fp
133: LDA   4, 0(6)  set fp to sp
140: LDA   6, -1(6)  push zero as return value
141: LDC   3, 221(5)  push zero as return value
142: SUB   3, 6, 3  push zero as return value
143: JLE   3, 13(5)  push zero as return value
144: ST    5, 0(6)  push zero as return value
145: LDA   1, 0(4)  load fp into ac2
146: LD    1, 0(1)  load upper level fp into ac2
147: LD    0, -3(1)  load int/bool/str from stack
148: LDA   6, -1(6)  push int/bool/str parameter
149: LDC   3, 221(5)  push int/bool/str parameter
150: SUB   3, 6, 3  push int/bool/str parameter
151: JLE   3, 13(5)  push int/bool/str parameter
152: ST    0, 0(6)  push int/bool/str parameter
153: LDA   6, -1(6)  preserve space for local vars
154: LDA   7, 23(5)  jump to procedure call
134: LDC   0, 155(5)  load return address into ac
135: LDA   6, -1(6)  push return address
136: LDC   3, 221(5)  push return address
137: SUB   3, 6, 3  push return address
138: JLE   3, 13(5)  push return address
139: ST    0, 0(6)  push return address
155: LDA   1, 0(4)  load fp into ac2
156: ST    0, -2(1)  store int/bool/string into stack
157: LD    0, -2(4)  load int/bool/string offset as return value
158: LD    1, -1(4)  load return address
159: LDA   6, 0(4)  change sp to fp + 1
160: LD    4, 0(6)  restore fp
161: LDA   6, 1(6)  restore fp
162: LDA   7, 0(1)  jump to the return address
2: LDA   7, 163(5)  jump to start of the program
163: LDA   6, -1(6)  push fp
164: LDC   3, 221(5)  push fp
165: SUB   3, 6, 3  push fp
166: JLE   3, 13(5)  push fp
167: ST    4, 0(6)  push fp
168: LDA   4, 0(6)  set fp to sp
175: LDA   6, -1(6)  push zero as return value
176: LDC   3, 221(5)  push zero as return value
177: SUB   3, 6, 3  push zero as return value
178: JLE   3, 13(5)  push zero as return value
179: ST    5, 0(6)  push zero as return value
180: LDC   0, 153(5)  load string offset 153
181: LDA   6, -1(6)  push int/bool/str parameter
182: LDC   3, 221(5)  push int/bool/str parameter
183: SUB   3, 6, 3  push int/bool/str parameter
184: JLE   3, 13(5)  push int/bool/str parameter
185: ST    0, 0(6)  push int/bool/str parameter
186: LDA   6, -1(6)  preserve space for local vars
187: LDA   7, 91(5)  jump to procedure call
169: LDC   0, 188(5)  load return address into ac
170: LDA   6, -1(6)  push return address
171: LDC   3, 221(5)  push return address
172: SUB   3, 6, 3  push return address
173: JLE   3, 13(5)  push return address
174: ST    0, 0(6)  push return address
188: OUT   0, 0, 0  write integer
189: OUTNL 0, 0, 0  write new line
190: LDA   6, -1(6)  push fp
191: LDC   3, 221(5)  push fp
192: SUB   3, 6, 3  push fp
193: JLE   3, 13(5)  push fp
194: ST    4, 0(6)  push fp
195: LDA   4, 0(6)  set fp to sp
202: LDA   6, -1(6)  push zero as return value
203: LDC   3, 221(5)  push zero as return value
204: SUB   3, 6, 3  push zero as return value
205: JLE   3, 13(5)  push zero as return value
206: ST    5, 0(6)  push zero as return value
207: LDC   0, 4(5)  load string offset 4
208: LDA   6, -1(6)  push int/bool/str parameter
209: LDC   3, 221(5)  push int/bool/str parameter
210: SUB   3, 6, 3  push int/bool/str parameter
211: JLE   3, 13(5)  push int/bool/str parameter
212: ST    0, 0(6)  push int/bool/str parameter
213: LDA   6, -1(6)  preserve space for local vars
214: LDA   7, 23(5)  jump to procedure call
196: LDC   0, 215(5)  load return address into ac
197: LDA   6, -1(6)  push return address
198: LDC   3, 221(5)  push return address
199: SUB   3, 6, 3  push return address
200: JLE   3, 13(5)  push return address
201: ST    0, 0(6)  push return address
215: OUT   0, 0, 0  write integer
216: OUTNL 0, 0, 0  write new line
217: LDA   6, -1(6)  push fp
218: LDC   3, 221(5)  push fp
219: SUB   3, 6, 3  push fp
220: JLE   3, 13(5)  push fp
221: ST    4, 0(6)  push fp
222: LDA   4, 0(6)  set fp to sp
229: LDA   6, -1(6)  push zero as return value
230: LDC   3, 221(5)  push zero as return value
231: SUB   3, 6, 3  push zero as return value
232: JLE   3, 13(5)  push zero as return value
233: ST    5, 0(6)  push zero as return value
234: LDC   0, 118(5)  load string offset 118
235: LDA   6, -1(6)  push int/bool/str parameter
236: LDC   3, 221(5)  push int/bool/str parameter
237: SUB   3, 6, 3  push int/bool/str parameter
238: JLE   3, 13(5)  push int/bool/str parameter
239: ST    0, 0(6)  push int/bool/str parameter
240: LDA   6, -1(6)  preserve space for local vars
241: LDA   7, 23(5)  jump to procedure call
223: LDC   0, 242(5)  load return address into ac
224: LDA   6, -1(6)  push return address
225: LDC   3, 221(5)  push return address
226: SUB   3, 6, 3  push return address
227: JLE   3, 13(5)  push return address
228: ST    0, 0(6)  push return address
242: ST    0, 220(5)  store int/bool/string into previous used static data
243: LD    0, 220(5)  load int/bool/str from static data
244: OUT   0, 0, 0  write integer
245: OUTNL 0, 0, 0  write new line
246: LDA   6, -1(6)  push fp
247: LDC   3, 221(5)  push fp
248: SUB   3, 6, 3  push fp
249: JLE   3, 13(5)  push fp
250: ST    4, 0(6)  push fp
251: LDA   4, 0(6)  set fp to sp
258: LDA   6, -1(6)  push zero as return value
259: LDC   3, 221(5)  push zero as return value
260: SUB   3, 6, 3  push zero as return value
261: JLE   3, 13(5)  push zero as return value
262: ST    5, 0(6)  push zero as return value
263: LDC   0, 187(5)  load string offset 187
264: LDA   6, -1(6)  push int/bool/str parameter
265: LDC   3, 221(5)  push int/bool/str parameter
266: SUB   3, 6, 3  push int/bool/str parameter
267: JLE   3, 13(5)  push int/bool/str parameter
268: ST    0, 0(6)  push int/bool/str parameter
269: LDA   6, -1(6)  preserve space for local vars
270: LDA   7, 23(5)  jump to procedure call
252: LDC   0, 271(5)  load return address into ac
253: LDA   6, -1(6)  push return address
254: LDC   3, 221(5)  push return address
255: SUB   3, 6, 3  push return address
256: JLE   3, 13(5)  push return address
257: ST    0, 0(6)  push return address
271: OUT   0, 0, 0  write integer
272: OUTNL 0, 0, 0  write new line
273: LDA   6, -1(6)  push fp
274: LDC   3, 221(5)  push fp
275: SUB   3, 6, 3  push fp
276: JLE   3, 13(5)  push fp
277: ST    4, 0(6)  push fp
278: LDA   4, 0(6)  set fp to sp
285: LDA   6, -1(6)  push zero as return value
286: LDC   3, 221(5)  push zero as return value
287: SUB   3, 6, 3  push zero as return value
288: JLE   3, 13(5)  push zero as return value
289: ST    5, 0(6)  push zero as return value
290: LDC   0, 83(5)  load string offset 83
291: LDA   6, -1(6)  push int/bool/str parameter
292: LDC   3, 221(5)  push int/bool/str parameter
293: SUB   3, 6, 3  push int/bool/str parameter
294: JLE   3, 13(5)  push int/bool/str parameter
295: ST    0, 0(6)  push int/bool/str parameter
296: LDA   6, -1(6)  preserve space for local vars
297: LDA   7, 23(5)  jump to procedure call
279: LDC   0, 298(5)  load return address into ac
280: LDA   6, -1(6)  push return address
281: LDC   3, 221(5)  push return address
282: SUB   3, 6, 3  push return address
283: JLE   3, 13(5)  push return address
284: ST    0, 0(6)  push return address
298: OUT   0, 0, 0  write integer
299: OUTNL 0, 0, 0  write new line
300: LDA   6, -1(6)  push fp
301: LDC   3, 221(5)  push fp
302: SUB   3, 6, 3  push fp
303: JLE   3, 13(5)  push fp
304: ST    4, 0(6)  push fp
305: LDA   4, 0(6)  set fp to sp
312: LDA   6, -1(6)  push zero as return value
313: LDC   3, 221(5)  push zero as return value
314: SUB   3, 6, 3  push zero as return value
315: JLE   3, 13(5)  push zero as return value
316: ST    5, 0(6)  push zero as return value
317: LDC   0, 163(5)  load string offset 163
318: LDA   6, -1(6)  push int/bool/str parameter
319: LDC   3, 221(5)  push int/bool/str parameter
320: SUB   3, 6, 3  push int/bool/str parameter
321: JLE   3, 13(5)  push int/bool/str parameter
322: ST    0, 0(6)  push int/bool/str parameter
323: LDA   6, -1(6)  preserve space for local vars
324: LDA   7, 23(5)  jump to procedure call
306: LDC   0, 325(5)  load return address into ac
307: LDA   6, -1(6)  push return address
308: LDC   3, 221(5)  push return address
309: SUB   3, 6, 3  push return address
310: JLE   3, 13(5)  push return address
311: ST    0, 0(6)  push return address
325: OUT   0, 0, 0  write integer
326: OUTNL 0, 0, 0  write new line
327: LDA   6, -1(6)  push fp
328: LDC   3, 221(5)  push fp
329: SUB   3, 6, 3  push fp
330: JLE   3, 13(5)  push fp
331: ST    4, 0(6)  push fp
332: LDA   4, 0(6)  set fp to sp
339: LDA   6, -1(6)  push zero as return value
340: LDC   3, 221(5)  push zero as return value
341: SUB   3, 6, 3  push zero as return value
342: JLE   3, 13(5)  push zero as return value
343: ST    5, 0(6)  push zero as return value
344: LDC   0, 100(5)  load string offset 100
345: LDA   6, -1(6)  push int/bool/str parameter
346: LDC   3, 221(5)  push int/bool/str parameter
347: SUB   3, 6, 3  push int/bool/str parameter
348: JLE   3, 13(5)  push int/bool/str parameter
349: ST    0, 0(6)  push int/bool/str parameter
350: LDA   6, -1(6)  preserve space for local vars
351: LDA   7, 23(5)  jump to procedure call
333: LDC   0, 352(5)  load return address into ac
334: LDA   6, -1(6)  push return address
335: LDC   3, 221(5)  push return address
336: SUB   3, 6, 3  push return address
337: JLE   3, 13(5)  push return address
338: ST    0, 0(6)  push return address
352: OUT   0, 0, 0  write integer
353: OUTNL 0, 0, 0  write new line
354: HALT  0, 0, 0  program ends
