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
39: LDC   3, 191(5)  push -1
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
49: LDC   3, 191(5)  push 1
50: SUB   3, 6, 3  push 1
51: JLE   3, 16(5)  push 1
52: ST    2, 0(6)  push 1
43: LDA   7, 9(7)  jump to start parsing str
53: LDC   2, 0(5)  load 0 as initial result
54: LDA   6, -1(6)  push 0
55: LDC   3, 191(5)  push 0
56: SUB   3, 6, 3  push 0
57: JLE   3, 16(5)  push 0
58: ST    2, 0(6)  push 0
59: LD    2, 0(6)  pop result into AC3
60: LDA   6, 1(6)  pop result into AC3
61: LDC   3, 10(5)  load 10 into ac4
62: MUL   2, 2, 3  mul result with 10
63: LDA   6, -1(6)  push result
64: LDC   3, 191(5)  push result
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
76: LDC   3, 191(5)  push result
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
94: LDC   0, 0(5)  load integer 0
95: LDA   6, -1(6)  push array index
96: LDC   3, 191(5)  push array index
97: SUB   3, 6, 3  push array index
98: JLE   3, 16(5)  push array index
99: ST    0, 0(6)  push array index
100: LDC   0, 1(5)  push array dimension
101: LDC   0, 0(5)  load 0 to ac
102: LD    1, 0(6)  pop index
103: LDA   6, 1(6)  pop index
104: JLT   1, 6(5)  jump if index less than 0
105: LDC   3, 4(5)  load array size
106: SUB   3, 3, 1  sub max size with index
107: JLE   3, 6(5)  jump if index greater than size - 1
108: LDC   2, 1(5)  load size of subarray
109: MUL   1, 1, 2  compute 0 dim
110: ADD   0, 0, 1  add result
111: LDA   1, 0(4)  load fp into ac2
112: LD    1, -2(1)  load local offset into ac2
113: ADD   0, 0, 1  compute final offset
114: LD    0, 0(0)  load data from array
115: OUT   0, 0, 0  write integer
116: OUTNL 0, 0, 0  write new line
117: LDC   0, 1(5)  load integer 1
118: LDA   6, -1(6)  push array index
119: LDC   3, 191(5)  push array index
120: SUB   3, 6, 3  push array index
121: JLE   3, 16(5)  push array index
122: ST    0, 0(6)  push array index
123: LDC   0, 1(5)  push array dimension
124: LDC   0, 0(5)  load 0 to ac
125: LD    1, 0(6)  pop index
126: LDA   6, 1(6)  pop index
127: JLT   1, 6(5)  jump if index less than 0
128: LDC   3, 4(5)  load array size
129: SUB   3, 3, 1  sub max size with index
130: JLE   3, 6(5)  jump if index greater than size - 1
131: LDC   2, 1(5)  load size of subarray
132: MUL   1, 1, 2  compute 0 dim
133: ADD   0, 0, 1  add result
134: LDA   1, 0(4)  load fp into ac2
135: LD    1, -2(1)  load local offset into ac2
136: ADD   0, 0, 1  compute final offset
137: LD    0, 0(0)  load data from array
138: OUT   0, 0, 0  write integer
139: OUTNL 0, 0, 0  write new line
140: LDC   0, 2(5)  load integer 2
141: LDA   6, -1(6)  push array index
142: LDC   3, 191(5)  push array index
143: SUB   3, 6, 3  push array index
144: JLE   3, 16(5)  push array index
145: ST    0, 0(6)  push array index
146: LDC   0, 1(5)  push array dimension
147: LDC   0, 0(5)  load 0 to ac
148: LD    1, 0(6)  pop index
149: LDA   6, 1(6)  pop index
150: JLT   1, 6(5)  jump if index less than 0
151: LDC   3, 4(5)  load array size
152: SUB   3, 3, 1  sub max size with index
153: JLE   3, 6(5)  jump if index greater than size - 1
154: LDC   2, 1(5)  load size of subarray
155: MUL   1, 1, 2  compute 0 dim
156: ADD   0, 0, 1  add result
157: LDA   1, 0(4)  load fp into ac2
158: LD    1, -2(1)  load local offset into ac2
159: ADD   0, 0, 1  compute final offset
160: LD    0, 0(0)  load data from array
161: OUT   0, 0, 0  write integer
162: OUTNL 0, 0, 0  write new line
163: LDC   0, 3(5)  load integer 3
164: LDA   6, -1(6)  push array index
165: LDC   3, 191(5)  push array index
166: SUB   3, 6, 3  push array index
167: JLE   3, 16(5)  push array index
168: ST    0, 0(6)  push array index
169: LDC   0, 1(5)  push array dimension
170: LDC   0, 0(5)  load 0 to ac
171: LD    1, 0(6)  pop index
172: LDA   6, 1(6)  pop index
173: JLT   1, 6(5)  jump if index less than 0
174: LDC   3, 4(5)  load array size
175: SUB   3, 3, 1  sub max size with index
176: JLE   3, 6(5)  jump if index greater than size - 1
177: LDC   2, 1(5)  load size of subarray
178: MUL   1, 1, 2  compute 0 dim
179: ADD   0, 0, 1  add result
180: LDA   1, 0(4)  load fp into ac2
181: LD    1, -2(1)  load local offset into ac2
182: ADD   0, 0, 1  compute final offset
183: LD    0, 0(0)  load data from array
184: OUT   0, 0, 0  write integer
185: OUTNL 0, 0, 0  write new line
186: LD    1, -1(4)  load return address
187: LDA   6, 0(4)  change sp to fp + 1
188: LD    4, 0(6)  restore fp
189: LDA   6, 1(6)  restore fp
190: LDA   7, 0(1)  jump to the return address
5: LDA   7, 191(5)  jump to start of the program
191: LDC   0, 0(5)  load integer 0
192: LDA   6, -1(6)  push array index
193: LDC   3, 191(5)  push array index
194: SUB   3, 6, 3  push array index
195: JLE   3, 16(5)  push array index
196: ST    0, 0(6)  push array index
197: LDC   0, 1(5)  push array dimension
198: LDC   0, 0(5)  load 0 to ac
199: LD    1, 0(6)  pop index
200: LDA   6, 1(6)  pop index
201: JLT   1, 6(5)  jump if index less than 0
202: LDC   3, 4(5)  load array size
203: SUB   3, 3, 1  sub max size with index
204: JLE   3, 6(5)  jump if index greater than size - 1
205: LDC   2, 1(5)  load size of subarray
206: MUL   1, 1, 2  compute 0 dim
207: ADD   0, 0, 1  add result
208: LD    1, 186(5)  load offset into ac2
209: ADD   0, 0, 1  compute final offset
210: LDA   6, -1(6)  push final offset
211: LDC   3, 191(5)  push final offset
212: SUB   3, 6, 3  push final offset
213: JLE   3, 16(5)  push final offset
214: ST    0, 0(6)  push final offset
215: LDC   0, 3(5)  load integer 3
216: LD    1, 0(6)  pop final offset
217: LDA   6, 1(6)  pop final offset
218: ST    0, 0(1)  store value into array static data
219: LDC   0, 1(5)  load integer 1
220: LDA   6, -1(6)  push array index
221: LDC   3, 191(5)  push array index
222: SUB   3, 6, 3  push array index
223: JLE   3, 16(5)  push array index
224: ST    0, 0(6)  push array index
225: LDC   0, 1(5)  push array dimension
226: LDC   0, 0(5)  load 0 to ac
227: LD    1, 0(6)  pop index
228: LDA   6, 1(6)  pop index
229: JLT   1, 6(5)  jump if index less than 0
230: LDC   3, 4(5)  load array size
231: SUB   3, 3, 1  sub max size with index
232: JLE   3, 6(5)  jump if index greater than size - 1
233: LDC   2, 1(5)  load size of subarray
234: MUL   1, 1, 2  compute 0 dim
235: ADD   0, 0, 1  add result
236: LD    1, 186(5)  load offset into ac2
237: ADD   0, 0, 1  compute final offset
238: LDA   6, -1(6)  push final offset
239: LDC   3, 191(5)  push final offset
240: SUB   3, 6, 3  push final offset
241: JLE   3, 16(5)  push final offset
242: ST    0, 0(6)  push final offset
243: LDC   0, 2(5)  load integer 2
244: LD    1, 0(6)  pop final offset
245: LDA   6, 1(6)  pop final offset
246: ST    0, 0(1)  store value into array static data
247: LDC   0, 2(5)  load integer 2
248: LDA   6, -1(6)  push array index
249: LDC   3, 191(5)  push array index
250: SUB   3, 6, 3  push array index
251: JLE   3, 16(5)  push array index
252: ST    0, 0(6)  push array index
253: LDC   0, 1(5)  push array dimension
254: LDC   0, 0(5)  load 0 to ac
255: LD    1, 0(6)  pop index
256: LDA   6, 1(6)  pop index
257: JLT   1, 6(5)  jump if index less than 0
258: LDC   3, 4(5)  load array size
259: SUB   3, 3, 1  sub max size with index
260: JLE   3, 6(5)  jump if index greater than size - 1
261: LDC   2, 1(5)  load size of subarray
262: MUL   1, 1, 2  compute 0 dim
263: ADD   0, 0, 1  add result
264: LD    1, 186(5)  load offset into ac2
265: ADD   0, 0, 1  compute final offset
266: LDA   6, -1(6)  push final offset
267: LDC   3, 191(5)  push final offset
268: SUB   3, 6, 3  push final offset
269: JLE   3, 16(5)  push final offset
270: ST    0, 0(6)  push final offset
271: LDC   0, 1(5)  load integer 1
272: LD    1, 0(6)  pop final offset
273: LDA   6, 1(6)  pop final offset
274: ST    0, 0(1)  store value into array static data
275: LDC   0, 3(5)  load integer 3
276: LDA   6, -1(6)  push array index
277: LDC   3, 191(5)  push array index
278: SUB   3, 6, 3  push array index
279: JLE   3, 16(5)  push array index
280: ST    0, 0(6)  push array index
281: LDC   0, 1(5)  push array dimension
282: LDC   0, 0(5)  load 0 to ac
283: LD    1, 0(6)  pop index
284: LDA   6, 1(6)  pop index
285: JLT   1, 6(5)  jump if index less than 0
286: LDC   3, 4(5)  load array size
287: SUB   3, 3, 1  sub max size with index
288: JLE   3, 6(5)  jump if index greater than size - 1
289: LDC   2, 1(5)  load size of subarray
290: MUL   1, 1, 2  compute 0 dim
291: ADD   0, 0, 1  add result
292: LD    1, 186(5)  load offset into ac2
293: ADD   0, 0, 1  compute final offset
294: LDA   6, -1(6)  push final offset
295: LDC   3, 191(5)  push final offset
296: SUB   3, 6, 3  push final offset
297: JLE   3, 16(5)  push final offset
298: ST    0, 0(6)  push final offset
299: LDC   0, 0(5)  load integer 0
300: LD    1, 0(6)  pop final offset
301: LDA   6, 1(6)  pop final offset
302: ST    0, 0(1)  store value into array static data
303: LDA   6, -1(6)  push fp
304: LDC   3, 191(5)  push fp
305: SUB   3, 6, 3  push fp
306: JLE   3, 16(5)  push fp
307: ST    4, 0(6)  push fp
308: LDA   4, 0(6)  set fp to sp
315: LDC   0, 1(5)  push array dimension
316: LDC   0, 0(5)  load 0 to ac
317: LD    1, 186(5)  load global offset into ac2
318: ADD   0, 0, 1  compute final offset
319: LDA   6, -1(6)  push array parameter
320: LDC   3, 191(5)  push array parameter
321: SUB   3, 6, 3  push array parameter
322: JLE   3, 16(5)  push array parameter
323: ST    0, 0(6)  push array parameter
324: LDA   6, 0(6)  preserve space for local vars
325: LDA   7, 94(5)  jump to procedure call
309: LDC   0, 326(5)  load return address into ac
310: LDA   6, -1(6)  push return address
311: LDC   3, 191(5)  push return address
312: SUB   3, 6, 3  push return address
313: JLE   3, 16(5)  push return address
314: ST    0, 0(6)  push return address
326: HALT  0, 0, 0  program ends
