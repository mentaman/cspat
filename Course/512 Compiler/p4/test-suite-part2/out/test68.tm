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
0: LD    6, 0(5)  save stack pointer
1: LD    4, 0(5)  save frame pointer
3: LDC   0, 101(5)  load array error str address
4: LD    1, 0(0)  load str length into ac2
5: JEQ   1, 5(7)  output nothing when empty
6: LDA   0, 1(0)  increase offset
7: LD    2, 0(0)  load char into ac3
8: OUTC   2, 2, 2  write char
9: LDA   1, -1(1)  decrease length of remaining string in ac2
10: JNE   1, -5(7)  continue print if not yet finish
11: OUTNL 0, 0, 0  emit newline
12: HALT  0, 0, 0  stop because of array error
13: LDC   0, 162(5)  load out of memory str address
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
36: LDC   3, 186(5)  push -1
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
46: LDC   3, 186(5)  push 1
47: SUB   3, 6, 3  push 1
48: JLE   3, 13(5)  push 1
49: ST    2, 0(6)  push 1
40: LDA   7, 9(7)  jump to start parsing str
50: LDC   2, 0(5)  load 0 as initial result
51: LDA   6, -1(6)  push 0
52: LDC   3, 186(5)  push 0
53: SUB   3, 6, 3  push 0
54: JLE   3, 13(5)  push 0
55: ST    2, 0(6)  push 0
56: LD    2, 0(6)  pop result into AC3
57: LDA   6, 1(6)  pop result into AC3
58: LDC   3, 10(5)  load 10 into ac4
59: MUL   2, 2, 3  mul result with 10
60: LDA   6, -1(6)  push result
61: LDC   3, 186(5)  push result
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
73: LDC   3, 186(5)  push result
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
91: LDC   0, 0(5)  load integer 0
92: LDA   6, -1(6)  push array index
93: LDC   3, 186(5)  push array index
94: SUB   3, 6, 3  push array index
95: JLE   3, 13(5)  push array index
96: ST    0, 0(6)  push array index
97: LDC   0, 0(5)  load integer 0
98: LDA   6, -1(6)  push array index
99: LDC   3, 186(5)  push array index
100: SUB   3, 6, 3  push array index
101: JLE   3, 13(5)  push array index
102: ST    0, 0(6)  push array index
103: LDC   0, 2(5)  push array dimension
104: LDC   0, 0(5)  load 0 to ac
105: LD    1, 0(6)  pop index
106: LDA   6, 1(6)  pop index
107: JLT   1, 3(5)  jump if index less than 0
108: LDC   3, 1(5)  load array size
109: SUB   3, 3, 1  sub max size with index
110: JLE   3, 3(5)  jump if index greater than size - 1
111: LDC   2, 2(5)  load size of subarray
112: MUL   1, 1, 2  compute 0 dim
113: ADD   0, 0, 1  add result
114: LD    1, 0(6)  pop index
115: LDA   6, 1(6)  pop index
116: JLT   1, 3(5)  jump if index less than 0
117: LDC   3, 2(5)  load array size
118: SUB   3, 3, 1  sub max size with index
119: JLE   3, 3(5)  jump if index greater than size - 1
120: LDC   2, 1(5)  load size of subarray
121: MUL   1, 1, 2  compute 1 dim
122: ADD   0, 0, 1  add result
123: LDA   1, 0(4)  load fp into ac2
124: LD    1, -2(1)  load local offset into ac2
125: ADD   0, 0, 1  compute final offset
126: LD    0, 0(0)  load data from array
127: OUT   0, 0, 0  write integer
128: OUTNL 0, 0, 0  write new line
129: LDC   0, 1(5)  load integer 1
130: LDA   6, -1(6)  push array index
131: LDC   3, 186(5)  push array index
132: SUB   3, 6, 3  push array index
133: JLE   3, 13(5)  push array index
134: ST    0, 0(6)  push array index
135: LDC   0, 0(5)  load integer 0
136: LDA   6, -1(6)  push array index
137: LDC   3, 186(5)  push array index
138: SUB   3, 6, 3  push array index
139: JLE   3, 13(5)  push array index
140: ST    0, 0(6)  push array index
141: LDC   0, 2(5)  push array dimension
142: LDC   0, 0(5)  load 0 to ac
143: LD    1, 0(6)  pop index
144: LDA   6, 1(6)  pop index
145: JLT   1, 3(5)  jump if index less than 0
146: LDC   3, 1(5)  load array size
147: SUB   3, 3, 1  sub max size with index
148: JLE   3, 3(5)  jump if index greater than size - 1
149: LDC   2, 2(5)  load size of subarray
150: MUL   1, 1, 2  compute 0 dim
151: ADD   0, 0, 1  add result
152: LD    1, 0(6)  pop index
153: LDA   6, 1(6)  pop index
154: JLT   1, 3(5)  jump if index less than 0
155: LDC   3, 2(5)  load array size
156: SUB   3, 3, 1  sub max size with index
157: JLE   3, 3(5)  jump if index greater than size - 1
158: LDC   2, 1(5)  load size of subarray
159: MUL   1, 1, 2  compute 1 dim
160: ADD   0, 0, 1  add result
161: LDA   1, 0(4)  load fp into ac2
162: LD    1, -2(1)  load local offset into ac2
163: ADD   0, 0, 1  compute final offset
164: LD    0, 0(0)  load data from array
165: OUT   0, 0, 0  write integer
166: OUTNL 0, 0, 0  write new line
167: LD    1, -1(4)  load return address
168: LDA   6, 0(4)  change sp to fp + 1
169: LD    4, 0(6)  restore fp
170: LDA   6, 1(6)  restore fp
171: LDA   7, 0(1)  jump to the return address
172: LDC   0, 0(5)  load integer 0
173: LDA   6, -1(6)  push array index
174: LDC   3, 186(5)  push array index
175: SUB   3, 6, 3  push array index
176: JLE   3, 13(5)  push array index
177: ST    0, 0(6)  push array index
178: LDC   0, 0(5)  load integer 0
179: LDA   6, -1(6)  push array index
180: LDC   3, 186(5)  push array index
181: SUB   3, 6, 3  push array index
182: JLE   3, 13(5)  push array index
183: ST    0, 0(6)  push array index
184: LDC   0, 2(5)  push array dimension
185: LDC   0, 0(5)  load 0 to ac
186: LD    1, 0(6)  pop index
187: LDA   6, 1(6)  pop index
188: JLT   1, 3(5)  jump if index less than 0
189: LDC   3, 1(5)  load array size
190: SUB   3, 3, 1  sub max size with index
191: JLE   3, 3(5)  jump if index greater than size - 1
192: LDC   2, 2(5)  load size of subarray
193: MUL   1, 1, 2  compute 0 dim
194: ADD   0, 0, 1  add result
195: LD    1, 0(6)  pop index
196: LDA   6, 1(6)  pop index
197: JLT   1, 3(5)  jump if index less than 0
198: LDC   3, 2(5)  load array size
199: SUB   3, 3, 1  sub max size with index
200: JLE   3, 3(5)  jump if index greater than size - 1
201: LDC   2, 1(5)  load size of subarray
202: MUL   1, 1, 2  compute 1 dim
203: ADD   0, 0, 1  add result
204: LDA   1, 0(4)  load fp into ac2
205: LD    1, -4(1)  load local offset into ac2
206: ADD   0, 0, 1  compute final offset
207: LDA   6, -1(6)  push final offset
208: LDC   3, 186(5)  push final offset
209: SUB   3, 6, 3  push final offset
210: JLE   3, 13(5)  push final offset
211: ST    0, 0(6)  push final offset
212: LDC   0, 13(5)  load integer 13
213: LD    1, 0(6)  pop final offset
214: LDA   6, 1(6)  pop final offset
215: ST    0, 0(1)  store value into array static data
216: LDC   0, 1(5)  load integer 1
217: LDA   6, -1(6)  push array index
218: LDC   3, 186(5)  push array index
219: SUB   3, 6, 3  push array index
220: JLE   3, 13(5)  push array index
221: ST    0, 0(6)  push array index
222: LDC   0, 0(5)  load integer 0
223: LDA   6, -1(6)  push array index
224: LDC   3, 186(5)  push array index
225: SUB   3, 6, 3  push array index
226: JLE   3, 13(5)  push array index
227: ST    0, 0(6)  push array index
228: LDC   0, 2(5)  push array dimension
229: LDC   0, 0(5)  load 0 to ac
230: LD    1, 0(6)  pop index
231: LDA   6, 1(6)  pop index
232: JLT   1, 3(5)  jump if index less than 0
233: LDC   3, 1(5)  load array size
234: SUB   3, 3, 1  sub max size with index
235: JLE   3, 3(5)  jump if index greater than size - 1
236: LDC   2, 2(5)  load size of subarray
237: MUL   1, 1, 2  compute 0 dim
238: ADD   0, 0, 1  add result
239: LD    1, 0(6)  pop index
240: LDA   6, 1(6)  pop index
241: JLT   1, 3(5)  jump if index less than 0
242: LDC   3, 2(5)  load array size
243: SUB   3, 3, 1  sub max size with index
244: JLE   3, 3(5)  jump if index greater than size - 1
245: LDC   2, 1(5)  load size of subarray
246: MUL   1, 1, 2  compute 1 dim
247: ADD   0, 0, 1  add result
248: LDA   1, 0(4)  load fp into ac2
249: LD    1, -4(1)  load local offset into ac2
250: ADD   0, 0, 1  compute final offset
251: LDA   6, -1(6)  push final offset
252: LDC   3, 186(5)  push final offset
253: SUB   3, 6, 3  push final offset
254: JLE   3, 13(5)  push final offset
255: ST    0, 0(6)  push final offset
256: LDC   0, 16(5)  load integer 16
257: LD    1, 0(6)  pop final offset
258: LDA   6, 1(6)  pop final offset
259: ST    0, 0(1)  store value into array static data
260: LDA   6, -1(6)  push fp
261: LDC   3, 186(5)  push fp
262: SUB   3, 6, 3  push fp
263: JLE   3, 13(5)  push fp
264: ST    4, 0(6)  push fp
265: LDA   4, 0(6)  set fp to sp
272: LDC   0, 2(5)  push array dimension
273: LDC   0, 0(5)  load 0 to ac
274: LDA   1, 0(4)  load fp into ac2
275: LD    1, 0(1)  load upper level fp into ac2
276: LD    1, -4(1)  load local offset into ac2
277: ADD   0, 0, 1  compute final offset
278: LDA   6, -1(6)  push array parameter
279: LDC   3, 186(5)  push array parameter
280: SUB   3, 6, 3  push array parameter
281: JLE   3, 13(5)  push array parameter
282: ST    0, 0(6)  push array parameter
283: LDA   6, 0(6)  preserve space for local vars
284: LDA   7, 91(5)  jump to procedure call
266: LDC   0, 285(5)  load return address into ac
267: LDA   6, -1(6)  push return address
268: LDC   3, 186(5)  push return address
269: SUB   3, 6, 3  push return address
270: JLE   3, 13(5)  push return address
271: ST    0, 0(6)  push return address
285: LD    1, -1(4)  load return address
286: LDA   6, 0(4)  change sp to fp + 1
287: LD    4, 0(6)  restore fp
288: LDA   6, 1(6)  restore fp
289: LDA   7, 0(1)  jump to the return address
2: LDA   7, 290(5)  jump to start of the program
290: LDA   6, -1(6)  push fp
291: LDC   3, 186(5)  push fp
292: SUB   3, 6, 3  push fp
293: JLE   3, 13(5)  push fp
294: ST    4, 0(6)  push fp
295: LDA   4, 0(6)  set fp to sp
302: LDC   0, 2(5)  load array localVariableSize: 2
303: SUB   0, 6, 0  compute absolute address of the array
304: ST    0, -3(6)  store absolute array address
305: LDA   6, -3(6)  preserve space for local vars
306: LDA   7, 172(5)  jump to procedure call
296: LDC   0, 307(5)  load return address into ac
297: LDA   6, -1(6)  push return address
298: LDC   3, 186(5)  push return address
299: SUB   3, 6, 3  push return address
300: JLE   3, 13(5)  push return address
301: ST    0, 0(6)  push return address
307: HALT  0, 0, 0  program ends
