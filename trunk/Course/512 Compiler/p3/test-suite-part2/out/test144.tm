.DATA    2
.SDATA   "Hi"
.DATA    3
.SDATA   "+10"
.DATA    1
.SDATA   "b"
.DATA    1
.SDATA   "5"
.DATA    18
.SDATA   "array index error!"
.DATA    5
.SDATA   "There"
.DATA    0
.SDATA   ""
.DATA    14
.SDATA   "should not see"
.DATA    15
.SDATA   "m > 4 || m <= 2"
.DATA    5
.SDATA   "first"
.DATA    1
.SDATA   " "
.DATA    3
.SDATA   "abc"
.DATA    5
.SDATA   "third"
.DATA    5
.SDATA   "inner"
.DATA    13
.SDATA   "out of memory"
.DATA    8
.SDATA   "Hi there"
.DATA    3
.SDATA   "10 "
.DATA    4
.SDATA   "Done"
.DATA    3
.SDATA   "Hi "
.DATA    6
.SDATA   "fourth"
.DATA    5
.SDATA   " -10 "
.DATA    1
.SDATA   "a"
.DATA    1
.SDATA   "-"
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
.DATA    8
.SDATA   "Hi There"
.DATA    3
.SDATA   "end"
.DATA    6
.SDATA   "second"
0: LDC   0, 210(5)  store array start address: 210
1: LDC   1, 209(5)  store array offset into ac2: 209
2: ST    0, 0(1)  store array offset
3: LDC   0, 213(5)  store array start address: 213
4: LDC   1, 212(5)  store array offset into ac2: 212
5: ST    0, 0(1)  store array offset
6: LDC   0, 218(5)  store array start address: 218
7: LDC   1, 217(5)  store array offset into ac2: 217
8: ST    0, 0(1)  store array offset
9: LD    6, 0(5)  save stack pointer
10: LD    4, 0(5)  save frame pointer
12: LDC   0, 12(5)  load array error str address
13: LD    1, 0(0)  load str length into ac2
14: JEQ   1, 5(7)  output nothing when empty
15: LDA   0, 1(0)  increase offset
16: LD    2, 0(0)  load char into ac3
17: OUTC   2, 2, 2  write char
18: LDA   1, -1(1)  decrease length of remaining string in ac2
19: JNE   1, -5(7)  continue print if not yet finish
20: OUTNL 0, 0, 0  emit newline
21: HALT  0, 0, 0  stop because of array error
22: LDC   0, 93(5)  load out of memory str address
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
34: LDC   2, 0(5)  load 0 as initial result
35: LDA   6, -1(6)  push 0
36: LDC   3, 226(5)  push 0
37: SUB   3, 6, 3  push 0
38: JLE   3, 22(5)  push 0
39: ST    2, 0(6)  push 0
40: LD    2, 0(6)  pop result into AC3
41: LDA   6, 1(6)  pop result into AC3
42: LDC   3, 10(5)  load 10 into ac4
43: MUL   2, 2, 3  mul result with 10
44: LDA   6, -1(6)  push result
45: LDC   3, 226(5)  push result
46: SUB   3, 6, 3  push result
47: JLE   3, 22(5)  push result
48: ST    2, 0(6)  push result
49: LDA   0, 1(0)  increase str offset
50: LD    2, 0(0)  load char
51: LDC   3, 48(5)  load 48 into ac4
52: SUB   2, 2, 3  compute int value
53: LD    3, 0(6)  pop result into AC4
54: LDA   6, 1(6)  pop result into AC4
55: ADD   2, 2, 3  compute result
56: LDA   6, -1(6)  push result
57: LDC   3, 226(5)  push result
58: SUB   3, 6, 3  push result
59: JLE   3, 22(5)  push result
60: ST    2, 0(6)  push result
61: LDA   1, -1(1)  decrease str length
62: JNE   1, 40(5)  continue if str length
63: LD    0, 0(6)  pop result
64: LDA   6, 1(6)  pop result
65: ST    0, -2(4)  save to return value
66: LD    0, -2(4)  load int/bool/string offset as return value
67: LD    1, -1(4)  load return address
68: LDA   6, 0(4)  change sp to fp + 1
69: LD    4, 0(6)  restore fp
70: LDA   6, 1(6)  restore fp
71: LDA   7, 0(1)  jump to the return address
11: LDA   7, 72(5)  jump to start of the program
72: LDC   0, 0(5)  load integer 0
73: LDA   6, -1(6)  push array index
74: LDC   3, 226(5)  push array index
75: SUB   3, 6, 3  push array index
76: JLE   3, 22(5)  push array index
77: ST    0, 0(6)  push array index
78: LDC   0, 0(5)  load integer 0
79: LDA   6, -1(6)  push array index
80: LDC   3, 226(5)  push array index
81: SUB   3, 6, 3  push array index
82: JLE   3, 22(5)  push array index
83: ST    0, 0(6)  push array index
84: LDC   0, 0(5)  load integer 0
85: LDA   6, -1(6)  push array index
86: LDC   3, 226(5)  push array index
87: SUB   3, 6, 3  push array index
88: JLE   3, 22(5)  push array index
89: ST    0, 0(6)  push array index
90: LD    0, 208(5)  load int/bool/str from static data
91: LDA   6, -1(6)  push array index
92: LDC   3, 226(5)  push array index
93: SUB   3, 6, 3  push array index
94: JLE   3, 22(5)  push array index
95: ST    0, 0(6)  push array index
96: LDC   0, 1(5)  push array dimension
97: LDC   0, 0(5)  load 0 to ac
98: LD    1, 0(6)  pop index
99: LDA   6, 1(6)  pop index
100: JLT   1, 12(5)  jump if index less than 0
101: LDC   3, 2(5)  load array size
102: SUB   3, 3, 1  sub max size with index
103: JLE   3, 12(5)  jump if index greater than size - 1
104: LDC   2, 1(5)  load size of subarray
105: MUL   1, 1, 2  compute 0 dim
106: ADD   0, 0, 1  add result
107: LD    1, 209(5)  load global offset into ac2
108: ADD   0, 0, 1  compute final offset
109: LD    0, 0(0)  load data from array
110: LDA   6, -1(6)  push array index
111: LDC   3, 226(5)  push array index
112: SUB   3, 6, 3  push array index
113: JLE   3, 22(5)  push array index
114: ST    0, 0(6)  push array index
115: LDC   0, 2(5)  push array dimension
116: LDC   0, 0(5)  load 0 to ac
117: LD    1, 0(6)  pop index
118: LDA   6, 1(6)  pop index
119: JLT   1, 12(5)  jump if index less than 0
120: LDC   3, 2(5)  load array size
121: SUB   3, 3, 1  sub max size with index
122: JLE   3, 12(5)  jump if index greater than size - 1
123: LDC   2, 2(5)  load size of subarray
124: MUL   1, 1, 2  compute 0 dim
125: ADD   0, 0, 1  add result
126: LD    1, 0(6)  pop index
127: LDA   6, 1(6)  pop index
128: JLT   1, 12(5)  jump if index less than 0
129: LDC   3, 2(5)  load array size
130: SUB   3, 3, 1  sub max size with index
131: JLE   3, 12(5)  jump if index greater than size - 1
132: LDC   2, 1(5)  load size of subarray
133: MUL   1, 1, 2  compute 1 dim
134: ADD   0, 0, 1  add result
135: LD    1, 212(5)  load global offset into ac2
136: ADD   0, 0, 1  compute final offset
137: LD    0, 0(0)  load data from array
138: LDA   6, -1(6)  push array index
139: LDC   3, 226(5)  push array index
140: SUB   3, 6, 3  push array index
141: JLE   3, 22(5)  push array index
142: ST    0, 0(6)  push array index
143: LDC   0, 3(5)  push array dimension
144: LDC   0, 0(5)  load 0 to ac
145: LD    1, 0(6)  pop index
146: LDA   6, 1(6)  pop index
147: JLT   1, 12(5)  jump if index less than 0
148: LDC   3, 2(5)  load array size
149: SUB   3, 3, 1  sub max size with index
150: JLE   3, 12(5)  jump if index greater than size - 1
151: LDC   2, 4(5)  load size of subarray
152: MUL   1, 1, 2  compute 0 dim
153: ADD   0, 0, 1  add result
154: LD    1, 0(6)  pop index
155: LDA   6, 1(6)  pop index
156: JLT   1, 12(5)  jump if index less than 0
157: LDC   3, 2(5)  load array size
158: SUB   3, 3, 1  sub max size with index
159: JLE   3, 12(5)  jump if index greater than size - 1
160: LDC   2, 2(5)  load size of subarray
161: MUL   1, 1, 2  compute 1 dim
162: ADD   0, 0, 1  add result
163: LD    1, 0(6)  pop index
164: LDA   6, 1(6)  pop index
165: JLT   1, 12(5)  jump if index less than 0
166: LDC   3, 2(5)  load array size
167: SUB   3, 3, 1  sub max size with index
168: JLE   3, 12(5)  jump if index greater than size - 1
169: LDC   2, 1(5)  load size of subarray
170: MUL   1, 1, 2  compute 2 dim
171: ADD   0, 0, 1  add result
172: LD    1, 217(5)  load offset into ac2
173: ADD   0, 0, 1  compute final offset
174: LDA   6, -1(6)  push final offset
175: LDC   3, 226(5)  push final offset
176: SUB   3, 6, 3  push final offset
177: JLE   3, 22(5)  push final offset
178: ST    0, 0(6)  push final offset
179: LDC   0, 3(5)  load integer 3
180: LD    1, 0(6)  pop final offset
181: LDA   6, 1(6)  pop final offset
182: ST    0, 0(1)  store value into array static data
183: LDC   0, 0(5)  load integer 0
184: LDA   6, -1(6)  push array index
185: LDC   3, 226(5)  push array index
186: SUB   3, 6, 3  push array index
187: JLE   3, 22(5)  push array index
188: ST    0, 0(6)  push array index
189: LDC   0, 0(5)  load integer 0
190: LDA   6, -1(6)  push array index
191: LDC   3, 226(5)  push array index
192: SUB   3, 6, 3  push array index
193: JLE   3, 22(5)  push array index
194: ST    0, 0(6)  push array index
195: LDC   0, 0(5)  load integer 0
196: LDA   6, -1(6)  push array index
197: LDC   3, 226(5)  push array index
198: SUB   3, 6, 3  push array index
199: JLE   3, 22(5)  push array index
200: ST    0, 0(6)  push array index
201: LD    0, 208(5)  load int/bool/str from static data
202: LDA   6, -1(6)  push array index
203: LDC   3, 226(5)  push array index
204: SUB   3, 6, 3  push array index
205: JLE   3, 22(5)  push array index
206: ST    0, 0(6)  push array index
207: LDC   0, 1(5)  push array dimension
208: LDC   0, 0(5)  load 0 to ac
209: LD    1, 0(6)  pop index
210: LDA   6, 1(6)  pop index
211: JLT   1, 12(5)  jump if index less than 0
212: LDC   3, 2(5)  load array size
213: SUB   3, 3, 1  sub max size with index
214: JLE   3, 12(5)  jump if index greater than size - 1
215: LDC   2, 1(5)  load size of subarray
216: MUL   1, 1, 2  compute 0 dim
217: ADD   0, 0, 1  add result
218: LD    1, 209(5)  load global offset into ac2
219: ADD   0, 0, 1  compute final offset
220: LD    0, 0(0)  load data from array
221: LDA   6, -1(6)  push array index
222: LDC   3, 226(5)  push array index
223: SUB   3, 6, 3  push array index
224: JLE   3, 22(5)  push array index
225: ST    0, 0(6)  push array index
226: LDC   0, 2(5)  push array dimension
227: LDC   0, 0(5)  load 0 to ac
228: LD    1, 0(6)  pop index
229: LDA   6, 1(6)  pop index
230: JLT   1, 12(5)  jump if index less than 0
231: LDC   3, 2(5)  load array size
232: SUB   3, 3, 1  sub max size with index
233: JLE   3, 12(5)  jump if index greater than size - 1
234: LDC   2, 2(5)  load size of subarray
235: MUL   1, 1, 2  compute 0 dim
236: ADD   0, 0, 1  add result
237: LD    1, 0(6)  pop index
238: LDA   6, 1(6)  pop index
239: JLT   1, 12(5)  jump if index less than 0
240: LDC   3, 2(5)  load array size
241: SUB   3, 3, 1  sub max size with index
242: JLE   3, 12(5)  jump if index greater than size - 1
243: LDC   2, 1(5)  load size of subarray
244: MUL   1, 1, 2  compute 1 dim
245: ADD   0, 0, 1  add result
246: LD    1, 212(5)  load global offset into ac2
247: ADD   0, 0, 1  compute final offset
248: LD    0, 0(0)  load data from array
249: LDA   6, -1(6)  push array index
250: LDC   3, 226(5)  push array index
251: SUB   3, 6, 3  push array index
252: JLE   3, 22(5)  push array index
253: ST    0, 0(6)  push array index
254: LDC   0, 3(5)  push array dimension
255: LDC   0, 0(5)  load 0 to ac
256: LD    1, 0(6)  pop index
257: LDA   6, 1(6)  pop index
258: JLT   1, 12(5)  jump if index less than 0
259: LDC   3, 2(5)  load array size
260: SUB   3, 3, 1  sub max size with index
261: JLE   3, 12(5)  jump if index greater than size - 1
262: LDC   2, 4(5)  load size of subarray
263: MUL   1, 1, 2  compute 0 dim
264: ADD   0, 0, 1  add result
265: LD    1, 0(6)  pop index
266: LDA   6, 1(6)  pop index
267: JLT   1, 12(5)  jump if index less than 0
268: LDC   3, 2(5)  load array size
269: SUB   3, 3, 1  sub max size with index
270: JLE   3, 12(5)  jump if index greater than size - 1
271: LDC   2, 2(5)  load size of subarray
272: MUL   1, 1, 2  compute 1 dim
273: ADD   0, 0, 1  add result
274: LD    1, 0(6)  pop index
275: LDA   6, 1(6)  pop index
276: JLT   1, 12(5)  jump if index less than 0
277: LDC   3, 2(5)  load array size
278: SUB   3, 3, 1  sub max size with index
279: JLE   3, 12(5)  jump if index greater than size - 1
280: LDC   2, 1(5)  load size of subarray
281: MUL   1, 1, 2  compute 2 dim
282: ADD   0, 0, 1  add result
283: LD    1, 217(5)  load global offset into ac2
284: ADD   0, 0, 1  compute final offset
285: LD    0, 0(0)  load data from array
286: OUT   0, 0, 0  write integer
287: OUTNL 0, 0, 0  write new line
288: HALT  0, 0, 0  program ends
