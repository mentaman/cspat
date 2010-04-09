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
.DATA    14
.SDATA   "should not see"
.DATA    0
.SDATA   ""
.DATA    15
.SDATA   "m > 4 || m <= 2"
.DATA    5
.SDATA   "first"
.DATA    1
.SDATA   " "
.DATA    5
.SDATA   "third"
.DATA    3
.SDATA   "abc"
.DATA    5
.SDATA   "inner"
.DATA    8
.SDATA   "Hi there"
.DATA    13
.SDATA   "out of memory"
.DATA    27
.SDATA   "- ( (3 > 0) + (i < 0) ) is "
.DATA    3
.SDATA   "10 "
.DATA    9
.SDATA   "a[1] is: "
.DATA    4
.SDATA   "Done"
.DATA    6
.SDATA   "fourth"
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
.DATA    9
.SDATA   "i am a[1]"
.DATA    8
.SDATA   "int(s): "
.DATA    8
.SDATA   "Hi There"
.DATA    3
.SDATA   "end"
.DATA    9
.SDATA   "i am a[0]"
.DATA    6
.SDATA   "second"
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
13: LDC   0, 148(5)  load out of memory str address
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
36: LDC   3, 348(5)  push -1
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
46: LDC   3, 348(5)  push 1
47: SUB   3, 6, 3  push 1
48: JLE   3, 13(5)  push 1
49: ST    2, 0(6)  push 1
40: LDA   7, 9(7)  jump to start parsing str
50: LDC   2, 0(5)  load 0 as initial result
51: LDA   6, -1(6)  push 0
52: LDC   3, 348(5)  push 0
53: SUB   3, 6, 3  push 0
54: JLE   3, 13(5)  push 0
55: ST    2, 0(6)  push 0
56: LD    2, 0(6)  pop result into AC3
57: LDA   6, 1(6)  pop result into AC3
58: LDC   3, 10(5)  load 10 into ac4
59: MUL   2, 2, 3  mul result with 10
60: LDA   6, -1(6)  push result
61: LDC   3, 348(5)  push result
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
73: LDC   3, 348(5)  push result
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
2: LDA   7, 91(5)  jump to start of the program
91: LDC   0, 0(5)  load integer 0
92: ST    0, 347(5)  store int/bool/string into previous used static data
93: LD    0, 347(5)  load int/bool/str from static data
94: LDA   6, -1(6)  push first child's value
95: LDC   3, 348(5)  push first child's value
96: SUB   3, 6, 3  push first child's value
97: JLE   3, 13(5)  push first child's value
98: ST    0, 0(6)  push first child's value
99: LDC   0, 1(5)  load integer 1
100: LD    1, 0(6)  pop first child's value
101: LDA   6, 1(6)  pop first child's value
102: ADD   0, 0, 1  add two children
103: LDA   6, -1(6)  push first child's value
104: LDC   3, 348(5)  push first child's value
105: SUB   3, 6, 3  push first child's value
106: JLE   3, 13(5)  push first child's value
107: ST    0, 0(6)  push first child's value
108: LDC   0, 1(5)  load booleantrue
109: LD    1, 0(6)  pop first child's value
110: LDA   6, 1(6)  pop first child's value
111: DIV   0, 1, 0  divide two children
112: LDA   6, -1(6)  push first child's value
113: LDC   3, 348(5)  push first child's value
114: SUB   3, 6, 3  push first child's value
115: JLE   3, 13(5)  push first child's value
116: ST    0, 0(6)  push first child's value
117: LDA   6, -1(6)  push fp
118: LDC   3, 348(5)  push fp
119: SUB   3, 6, 3  push fp
120: JLE   3, 13(5)  push fp
121: ST    4, 0(6)  push fp
122: LDA   4, 0(6)  set fp to sp
129: LDA   6, -1(6)  push zero as return value
130: LDC   3, 348(5)  push zero as return value
131: SUB   3, 6, 3  push zero as return value
132: JLE   3, 13(5)  push zero as return value
133: ST    5, 0(6)  push zero as return value
134: LDC   0, 283(5)  load string offset 283
135: LDA   6, -1(6)  push int/bool/str parameter
136: LDC   3, 348(5)  push int/bool/str parameter
137: SUB   3, 6, 3  push int/bool/str parameter
138: JLE   3, 13(5)  push int/bool/str parameter
139: ST    0, 0(6)  push int/bool/str parameter
140: LDA   6, -1(6)  preserve space for local vars
141: LDA   7, 23(5)  jump to procedure call
123: LDC   0, 142(5)  load return address into ac
124: LDA   6, -1(6)  push return address
125: LDC   3, 348(5)  push return address
126: SUB   3, 6, 3  push return address
127: JLE   3, 13(5)  push return address
128: ST    0, 0(6)  push return address
142: LD    1, 0(6)  pop first child's value
143: LDA   6, 1(6)  pop first child's value
144: MUL   0, 0, 1  multiply two children
145: LDA   6, -1(6)  push first child's value
146: LDC   3, 348(5)  push first child's value
147: SUB   3, 6, 3  push first child's value
148: JLE   3, 13(5)  push first child's value
149: ST    0, 0(6)  push first child's value
150: LD    0, 347(5)  load int/bool/str from static data
151: LDA   6, -1(6)  push first child's value
152: LDC   3, 348(5)  push first child's value
153: SUB   3, 6, 3  push first child's value
154: JLE   3, 13(5)  push first child's value
155: ST    0, 0(6)  push first child's value
156: LDC   0, 0(5)  load integer 0
157: LD    1, 0(6)  pop first child's value
158: LDA   6, 1(6)  pop first child's value
159: SUB   1, 1, 0  greater than
160: LDC   0, 1(5)  load 1 as true
161: JNE   1, 1(7)  skip load false
162: LDC   0, 0(5)  load 0 as false
163: LDA   6, -1(6)  push first child's value
164: LDC   3, 348(5)  push first child's value
165: SUB   3, 6, 3  push first child's value
166: JLE   3, 13(5)  push first child's value
167: ST    0, 0(6)  push first child's value
168: LDC   0, 10(5)  load integer 10
169: LDC   1, 0(5)  load 0 into AC2
170: SUB   0, 1, 0  compute negative number
171: LD    1, 0(6)  pop first child's value
172: LDA   6, 1(6)  pop first child's value
173: SUB   0, 1, 0  subtract two children
174: LD    1, 0(6)  pop first child's value
175: LDA   6, 1(6)  pop first child's value
176: DIV   2, 1, 0  divide two children
177: MUL   0, 2, 0  multiply quotient and divisor
178: SUB   0, 1, 0  compute mod
179: ST    0, 347(5)  store int/bool/string into previous used static data
180: LD    0, 347(5)  load int/bool/str from static data
181: OUT   0, 0, 0  write integer
182: OUTNL 0, 0, 0  write new line
183: LD    0, 347(5)  load int/bool/str from static data
184: LDA   6, -1(6)  push first child's value
185: LDC   3, 348(5)  push first child's value
186: SUB   3, 6, 3  push first child's value
187: JLE   3, 13(5)  push first child's value
188: ST    0, 0(6)  push first child's value
189: LDC   0, 2(5)  load integer 2
190: LD    1, 0(6)  pop first child's value
191: LDA   6, 1(6)  pop first child's value
192: SUB   1, 1, 0  greater than
193: LDC   0, 1(5)  load 1 as true
194: JEQ   1, 1(7)  skip load false
195: LDC   0, 0(5)  load 0 as false
196: LDA   6, -1(6)  push first child's value
197: LDC   3, 348(5)  push first child's value
198: SUB   3, 6, 3  push first child's value
199: JLE   3, 13(5)  push first child's value
200: ST    0, 0(6)  push first child's value
202: LDC   0, 1(5)  load booleantrue
204: LDA   6, -1(6)  push first child's value
205: LDC   3, 348(5)  push first child's value
206: SUB   3, 6, 3  push first child's value
207: JLE   3, 13(5)  push first child's value
208: ST    0, 0(6)  push first child's value
209: LDC   0, 0(5)  load booleanfalse
210: LD    1, 0(6)  pop first child's value
211: LDA   6, 1(6)  pop first child's value
212: MUL   0, 0, 1  multiply two children
203: JEQ   0, 9(7)  short circuit
213: LD    1, 0(6)  pop first child's value
214: LDA   6, 1(6)  pop first child's value
215: ADD   1, 0, 1  add two children
216: LDC   0, 1(5)  load 1 as true
217: JNE   1, 1(7)  skip load false
218: LDC   0, 0(5)  load 0 as false
201: JNE   0, 17(7)  short circuit
219: LDA   6, -1(6)  push first child's value
220: LDC   3, 348(5)  push first child's value
221: SUB   3, 6, 3  push first child's value
222: JLE   3, 13(5)  push first child's value
223: ST    0, 0(6)  push first child's value
225: LDC   0, 3(5)  load integer 3
226: LDA   6, -1(6)  push first child's value
227: LDC   3, 348(5)  push first child's value
228: SUB   3, 6, 3  push first child's value
229: JLE   3, 13(5)  push first child's value
230: ST    0, 0(6)  push first child's value
231: LDC   0, 0(5)  load integer 0
232: LD    1, 0(6)  pop first child's value
233: LDA   6, 1(6)  pop first child's value
234: SUB   1, 1, 0  greater than
235: LDC   0, 1(5)  load 1 as true
236: JGT   1, 1(7)  skip load false
237: LDC   0, 0(5)  load 0 as false
238: LDA   6, -1(6)  push first child's value
239: LDC   3, 348(5)  push first child's value
240: SUB   3, 6, 3  push first child's value
241: JLE   3, 13(5)  push first child's value
242: ST    0, 0(6)  push first child's value
244: LD    0, 347(5)  load int/bool/str from static data
245: LDA   6, -1(6)  push first child's value
246: LDC   3, 348(5)  push first child's value
247: SUB   3, 6, 3  push first child's value
248: JLE   3, 13(5)  push first child's value
249: ST    0, 0(6)  push first child's value
250: LDC   0, 0(5)  load integer 0
251: LD    1, 0(6)  pop first child's value
252: LDA   6, 1(6)  pop first child's value
253: SUB   1, 1, 0  greater than
254: LDC   0, 1(5)  load 1 as true
255: JLT   1, 1(7)  skip load false
256: LDC   0, 0(5)  load 0 as false
257: LD    1, 0(6)  pop first child's value
258: LDA   6, 1(6)  pop first child's value
259: ADD   1, 0, 1  add two children
260: LDC   0, 1(5)  load 1 as true
261: JNE   1, 1(7)  skip load false
262: LDC   0, 0(5)  load 0 as false
243: JNE   0, 19(7)  short circuit
263: LDA   1, 0(0)  copy AC to AC2
264: LDC   0, 1(5)  load 1 as true
265: JEQ   1, 1(7)  skip load false
266: LDC   0, 0(5)  load 0 as false
267: LD    1, 0(6)  pop first child's value
268: LDA   6, 1(6)  pop first child's value
269: ADD   1, 0, 1  add two children
270: LDC   0, 1(5)  load 1 as true
271: JNE   1, 1(7)  skip load false
272: LDC   0, 0(5)  load 0 as false
224: JNE   0, 48(7)  short circuit
273: ST    0, 346(5)  store int/bool/string into previous used static data
274: LDC   0, 162(5)  load string offset 162
275: LD    1, 0(0)  load str length into ac2
276: JEQ   1, 5(7)  output nothing when empty
277: LDA   0, 1(0)  increase offset
278: LD    2, 0(0)  load char into ac3
279: OUTC   2, 2, 2  write char
280: LDA   1, -1(1)  decrease length of remaining string in ac2
281: JNE   1, -5(7)  continue print if not yet finish
282: LDC   0, 3(5)  load integer 3
283: LDA   6, -1(6)  push first child's value
284: LDC   3, 348(5)  push first child's value
285: SUB   3, 6, 3  push first child's value
286: JLE   3, 13(5)  push first child's value
287: ST    0, 0(6)  push first child's value
288: LDC   0, 0(5)  load integer 0
289: LD    1, 0(6)  pop first child's value
290: LDA   6, 1(6)  pop first child's value
291: SUB   1, 1, 0  greater than
292: LDC   0, 1(5)  load 1 as true
293: JGT   1, 1(7)  skip load false
294: LDC   0, 0(5)  load 0 as false
295: LDA   6, -1(6)  push first child's value
296: LDC   3, 348(5)  push first child's value
297: SUB   3, 6, 3  push first child's value
298: JLE   3, 13(5)  push first child's value
299: ST    0, 0(6)  push first child's value
301: LD    0, 347(5)  load int/bool/str from static data
302: LDA   6, -1(6)  push first child's value
303: LDC   3, 348(5)  push first child's value
304: SUB   3, 6, 3  push first child's value
305: JLE   3, 13(5)  push first child's value
306: ST    0, 0(6)  push first child's value
307: LDC   0, 0(5)  load integer 0
308: LD    1, 0(6)  pop first child's value
309: LDA   6, 1(6)  pop first child's value
310: SUB   1, 1, 0  greater than
311: LDC   0, 1(5)  load 1 as true
312: JLT   1, 1(7)  skip load false
313: LDC   0, 0(5)  load 0 as false
314: LD    1, 0(6)  pop first child's value
315: LDA   6, 1(6)  pop first child's value
316: ADD   1, 0, 1  add two children
317: LDC   0, 1(5)  load 1 as true
318: JNE   1, 1(7)  skip load false
319: LDC   0, 0(5)  load 0 as false
300: JNE   0, 19(7)  short circuit
320: LDA   1, 0(0)  copy AC to AC2
321: LDC   0, 1(5)  load 1 as true
322: JEQ   1, 1(7)  skip load false
323: LDC   0, 0(5)  load 0 as false
324: OUT   0, 0, 0  write integer
325: OUTNL 0, 0, 0  write new line
326: LD    0, 346(5)  load int/bool/str from static data
327: OUT   0, 0, 0  write integer
328: OUTNL 0, 0, 0  write new line
329: HALT  0, 0, 0  program ends
