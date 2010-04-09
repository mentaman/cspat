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
.DATA    1
.SDATA   "b"
.DATA    1
.SDATA   "5"
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
.DATA    1
.SDATA   "a"
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
0: LDC   0, 354(5)  store array start address: 354
1: LDC   1, 353(5)  store array offset into ac2: 353
2: ST    0, 0(1)  store array offset
3: LDC   0, 357(5)  store array start address: 357
4: LDC   1, 356(5)  store array offset into ac2: 356
5: ST    0, 0(1)  store array offset
6: LDC   0, 362(5)  store array start address: 362
7: LDC   1, 361(5)  store array offset into ac2: 361
8: ST    0, 0(1)  store array offset
9: LD    6, 0(5)  save stack pointer
10: LD    4, 0(5)  save frame pointer
12: LDC   0, 58(5)  load array error str address
13: LD    1, 0(0)  load str length into ac2
14: JEQ   1, 5(7)  output nothing when empty
15: LDA   0, 1(0)  increase offset
16: LD    2, 0(0)  load char into ac3
17: OUTC   2, 2, 2  write char
18: LDA   1, -1(1)  decrease length of remaining string in ac2
19: JNE   1, -5(7)  continue print if not yet finish
20: OUTNL 0, 0, 0  emit newline
21: HALT  0, 0, 0  stop because of array error
22: LDC   0, 152(5)  load out of memory str address
23: LD    1, 0(0)  load str length into ac2
24: JEQ   1, 5(7)  output nothing when empty
25: LDA   0, 1(0)  increase offset
26: LD    2, 0(0)  load char into ac3
27: OUTC   2, 2, 2  write char
28: LDA   1, -1(1)  decrease length of remaining string in ac2
29: JNE   1, -5(7)  continue print if not yet finish
30: OUTNL 0, 0, 0  emit newline
31: HALT  0, 0, 0  stop because of out of memory error
32: LD    0, -3(4)  load str offset
33: LD    1, 0(0)  load str length
34: LDA   0, 1(0)  increase str offset
35: LD    2, 0(0)  load char
36: LDC   3, 43(5)  load 43(+) into ac4
37: SUB   3, 2, 3  sub 43(+)
39: LDC   3, 45(5)  load 45(-) into ac4
40: SUB   3, 2, 3  sub 45(-)
42: LDA   1, -1(1)  decrease str length
43: LDC   2, -1(5)  load -1 into ac3
44: LDA   6, -1(6)  push -1
45: LDC   3, 370(5)  push -1
46: SUB   3, 6, 3  push -1
47: JLE   3, 22(5)  push -1
48: ST    2, 0(6)  push -1
41: JNE   3, 8(7)  jump if not equal '-'
50: LDA   0, -1(0)  move back str offset
51: LDA   1, 1(1)  increase str length
38: JEQ   3, 13(7)  jump if equal '+'
52: LDA   1, -1(1)  decrease str length
53: LDC   2, 1(5)  load 1 into ac3
54: LDA   6, -1(6)  push 1
55: LDC   3, 370(5)  push 1
56: SUB   3, 6, 3  push 1
57: JLE   3, 22(5)  push 1
58: ST    2, 0(6)  push 1
49: LDA   7, 9(7)  jump to start parsing str
59: LDC   2, 0(5)  load 0 as initial result
60: LDA   6, -1(6)  push 0
61: LDC   3, 370(5)  push 0
62: SUB   3, 6, 3  push 0
63: JLE   3, 22(5)  push 0
64: ST    2, 0(6)  push 0
65: LD    2, 0(6)  pop result into AC3
66: LDA   6, 1(6)  pop result into AC3
67: LDC   3, 10(5)  load 10 into ac4
68: MUL   2, 2, 3  mul result with 10
69: LDA   6, -1(6)  push result
70: LDC   3, 370(5)  push result
71: SUB   3, 6, 3  push result
72: JLE   3, 22(5)  push result
73: ST    2, 0(6)  push result
74: LDA   0, 1(0)  increase str offset
75: LD    2, 0(0)  load char
76: LDC   3, 48(5)  load 48 into ac4
77: SUB   2, 2, 3  compute int value
78: LD    3, 0(6)  pop result into AC4
79: LDA   6, 1(6)  pop result into AC4
80: ADD   2, 2, 3  compute result
81: LDA   6, -1(6)  push result
82: LDC   3, 370(5)  push result
83: SUB   3, 6, 3  push result
84: JLE   3, 22(5)  push result
85: ST    2, 0(6)  push result
86: LDA   1, -1(1)  decrease str length
87: JNE   1, 65(5)  continue if str length
88: LD    0, 0(6)  pop result
89: LDA   6, 1(6)  pop result
90: LD    1, 0(6)  pop symbol
91: LDA   6, 1(6)  pop symbol
92: MUL   0, 0, 1  multiply symbol
93: ST    0, -2(4)  save to return value
94: LD    0, -2(4)  load int/bool/string offset as return value
95: LD    1, -1(4)  load return address
96: LDA   6, 0(4)  change sp to fp + 1
97: LD    4, 0(6)  restore fp
98: LDA   6, 1(6)  restore fp
99: LDA   7, 0(1)  jump to the return address
11: LDA   7, 100(5)  jump to start of the program
100: LDC   0, 0(5)  load integer 0
101: LDA   6, -1(6)  push array index
102: LDC   3, 370(5)  push array index
103: SUB   3, 6, 3  push array index
104: JLE   3, 22(5)  push array index
105: ST    0, 0(6)  push array index
106: LDC   0, 0(5)  load integer 0
107: LDA   6, -1(6)  push array index
108: LDC   3, 370(5)  push array index
109: SUB   3, 6, 3  push array index
110: JLE   3, 22(5)  push array index
111: ST    0, 0(6)  push array index
112: LDC   0, 0(5)  load integer 0
113: LDA   6, -1(6)  push array index
114: LDC   3, 370(5)  push array index
115: SUB   3, 6, 3  push array index
116: JLE   3, 22(5)  push array index
117: ST    0, 0(6)  push array index
118: LD    0, 352(5)  load int/bool/str from static data
119: LDA   6, -1(6)  push array index
120: LDC   3, 370(5)  push array index
121: SUB   3, 6, 3  push array index
122: JLE   3, 22(5)  push array index
123: ST    0, 0(6)  push array index
124: LDC   0, 1(5)  push array dimension
125: LDC   0, 0(5)  load 0 to ac
126: LD    1, 0(6)  pop index
127: LDA   6, 1(6)  pop index
128: JLT   1, 12(5)  jump if index less than 0
129: LDC   3, 2(5)  load array size
130: SUB   3, 3, 1  sub max size with index
131: JLE   3, 12(5)  jump if index greater than size - 1
132: LDC   2, 1(5)  load size of subarray
133: MUL   1, 1, 2  compute 0 dim
134: ADD   0, 0, 1  add result
135: LD    1, 353(5)  load global offset into ac2
136: ADD   0, 0, 1  compute final offset
137: LD    0, 0(0)  load data from array
138: LDA   6, -1(6)  push array index
139: LDC   3, 370(5)  push array index
140: SUB   3, 6, 3  push array index
141: JLE   3, 22(5)  push array index
142: ST    0, 0(6)  push array index
143: LDC   0, 2(5)  push array dimension
144: LDC   0, 0(5)  load 0 to ac
145: LD    1, 0(6)  pop index
146: LDA   6, 1(6)  pop index
147: JLT   1, 12(5)  jump if index less than 0
148: LDC   3, 2(5)  load array size
149: SUB   3, 3, 1  sub max size with index
150: JLE   3, 12(5)  jump if index greater than size - 1
151: LDC   2, 2(5)  load size of subarray
152: MUL   1, 1, 2  compute 0 dim
153: ADD   0, 0, 1  add result
154: LD    1, 0(6)  pop index
155: LDA   6, 1(6)  pop index
156: JLT   1, 12(5)  jump if index less than 0
157: LDC   3, 2(5)  load array size
158: SUB   3, 3, 1  sub max size with index
159: JLE   3, 12(5)  jump if index greater than size - 1
160: LDC   2, 1(5)  load size of subarray
161: MUL   1, 1, 2  compute 1 dim
162: ADD   0, 0, 1  add result
163: LD    1, 356(5)  load global offset into ac2
164: ADD   0, 0, 1  compute final offset
165: LD    0, 0(0)  load data from array
166: LDA   6, -1(6)  push array index
167: LDC   3, 370(5)  push array index
168: SUB   3, 6, 3  push array index
169: JLE   3, 22(5)  push array index
170: ST    0, 0(6)  push array index
171: LDC   0, 3(5)  push array dimension
172: LDC   0, 0(5)  load 0 to ac
173: LD    1, 0(6)  pop index
174: LDA   6, 1(6)  pop index
175: JLT   1, 12(5)  jump if index less than 0
176: LDC   3, 2(5)  load array size
177: SUB   3, 3, 1  sub max size with index
178: JLE   3, 12(5)  jump if index greater than size - 1
179: LDC   2, 4(5)  load size of subarray
180: MUL   1, 1, 2  compute 0 dim
181: ADD   0, 0, 1  add result
182: LD    1, 0(6)  pop index
183: LDA   6, 1(6)  pop index
184: JLT   1, 12(5)  jump if index less than 0
185: LDC   3, 2(5)  load array size
186: SUB   3, 3, 1  sub max size with index
187: JLE   3, 12(5)  jump if index greater than size - 1
188: LDC   2, 2(5)  load size of subarray
189: MUL   1, 1, 2  compute 1 dim
190: ADD   0, 0, 1  add result
191: LD    1, 0(6)  pop index
192: LDA   6, 1(6)  pop index
193: JLT   1, 12(5)  jump if index less than 0
194: LDC   3, 2(5)  load array size
195: SUB   3, 3, 1  sub max size with index
196: JLE   3, 12(5)  jump if index greater than size - 1
197: LDC   2, 1(5)  load size of subarray
198: MUL   1, 1, 2  compute 2 dim
199: ADD   0, 0, 1  add result
200: LD    1, 361(5)  load offset into ac2
201: ADD   0, 0, 1  compute final offset
202: LDA   6, -1(6)  push final offset
203: LDC   3, 370(5)  push final offset
204: SUB   3, 6, 3  push final offset
205: JLE   3, 22(5)  push final offset
206: ST    0, 0(6)  push final offset
207: LDC   0, 3(5)  load integer 3
208: LD    1, 0(6)  pop final offset
209: LDA   6, 1(6)  pop final offset
210: ST    0, 0(1)  store value into array static data
211: LDC   0, 0(5)  load integer 0
212: LDA   6, -1(6)  push array index
213: LDC   3, 370(5)  push array index
214: SUB   3, 6, 3  push array index
215: JLE   3, 22(5)  push array index
216: ST    0, 0(6)  push array index
217: LDC   0, 0(5)  load integer 0
218: LDA   6, -1(6)  push array index
219: LDC   3, 370(5)  push array index
220: SUB   3, 6, 3  push array index
221: JLE   3, 22(5)  push array index
222: ST    0, 0(6)  push array index
223: LDC   0, 0(5)  load integer 0
224: LDA   6, -1(6)  push array index
225: LDC   3, 370(5)  push array index
226: SUB   3, 6, 3  push array index
227: JLE   3, 22(5)  push array index
228: ST    0, 0(6)  push array index
229: LD    0, 352(5)  load int/bool/str from static data
230: LDA   6, -1(6)  push array index
231: LDC   3, 370(5)  push array index
232: SUB   3, 6, 3  push array index
233: JLE   3, 22(5)  push array index
234: ST    0, 0(6)  push array index
235: LDC   0, 1(5)  push array dimension
236: LDC   0, 0(5)  load 0 to ac
237: LD    1, 0(6)  pop index
238: LDA   6, 1(6)  pop index
239: JLT   1, 12(5)  jump if index less than 0
240: LDC   3, 2(5)  load array size
241: SUB   3, 3, 1  sub max size with index
242: JLE   3, 12(5)  jump if index greater than size - 1
243: LDC   2, 1(5)  load size of subarray
244: MUL   1, 1, 2  compute 0 dim
245: ADD   0, 0, 1  add result
246: LD    1, 353(5)  load global offset into ac2
247: ADD   0, 0, 1  compute final offset
248: LD    0, 0(0)  load data from array
249: LDA   6, -1(6)  push array index
250: LDC   3, 370(5)  push array index
251: SUB   3, 6, 3  push array index
252: JLE   3, 22(5)  push array index
253: ST    0, 0(6)  push array index
254: LDC   0, 2(5)  push array dimension
255: LDC   0, 0(5)  load 0 to ac
256: LD    1, 0(6)  pop index
257: LDA   6, 1(6)  pop index
258: JLT   1, 12(5)  jump if index less than 0
259: LDC   3, 2(5)  load array size
260: SUB   3, 3, 1  sub max size with index
261: JLE   3, 12(5)  jump if index greater than size - 1
262: LDC   2, 2(5)  load size of subarray
263: MUL   1, 1, 2  compute 0 dim
264: ADD   0, 0, 1  add result
265: LD    1, 0(6)  pop index
266: LDA   6, 1(6)  pop index
267: JLT   1, 12(5)  jump if index less than 0
268: LDC   3, 2(5)  load array size
269: SUB   3, 3, 1  sub max size with index
270: JLE   3, 12(5)  jump if index greater than size - 1
271: LDC   2, 1(5)  load size of subarray
272: MUL   1, 1, 2  compute 1 dim
273: ADD   0, 0, 1  add result
274: LD    1, 356(5)  load global offset into ac2
275: ADD   0, 0, 1  compute final offset
276: LD    0, 0(0)  load data from array
277: LDA   6, -1(6)  push array index
278: LDC   3, 370(5)  push array index
279: SUB   3, 6, 3  push array index
280: JLE   3, 22(5)  push array index
281: ST    0, 0(6)  push array index
282: LDC   0, 3(5)  push array dimension
283: LDC   0, 0(5)  load 0 to ac
284: LD    1, 0(6)  pop index
285: LDA   6, 1(6)  pop index
286: JLT   1, 12(5)  jump if index less than 0
287: LDC   3, 2(5)  load array size
288: SUB   3, 3, 1  sub max size with index
289: JLE   3, 12(5)  jump if index greater than size - 1
290: LDC   2, 4(5)  load size of subarray
291: MUL   1, 1, 2  compute 0 dim
292: ADD   0, 0, 1  add result
293: LD    1, 0(6)  pop index
294: LDA   6, 1(6)  pop index
295: JLT   1, 12(5)  jump if index less than 0
296: LDC   3, 2(5)  load array size
297: SUB   3, 3, 1  sub max size with index
298: JLE   3, 12(5)  jump if index greater than size - 1
299: LDC   2, 2(5)  load size of subarray
300: MUL   1, 1, 2  compute 1 dim
301: ADD   0, 0, 1  add result
302: LD    1, 0(6)  pop index
303: LDA   6, 1(6)  pop index
304: JLT   1, 12(5)  jump if index less than 0
305: LDC   3, 2(5)  load array size
306: SUB   3, 3, 1  sub max size with index
307: JLE   3, 12(5)  jump if index greater than size - 1
308: LDC   2, 1(5)  load size of subarray
309: MUL   1, 1, 2  compute 2 dim
310: ADD   0, 0, 1  add result
311: LD    1, 361(5)  load global offset into ac2
312: ADD   0, 0, 1  compute final offset
313: LD    0, 0(0)  load data from array
314: OUT   0, 0, 0  write integer
315: OUTNL 0, 0, 0  write new line
316: HALT  0, 0, 0  program ends
