.DATA    3
.SDATA   "Hi "
.DATA    2
.SDATA   "Hi"
.DATA    13
.SDATA   "out of memory"
.DATA    15
.SDATA   "m <= 4 && m > 2"
.DATA    18
.SDATA   "array index error!"
.DATA    5
.SDATA   "There"
.DATA    15
.SDATA   "m > 4 || m <= 2"
0: LDC   0, 80(5)  store array start address: 80
1: LDC   1, 79(5)  store array offset into ac2: 79
2: ST    0, 0(1)  store array offset
3: LD    6, 0(5)  save stack pointer
4: LD    4, 0(5)  save frame pointer
6: LDC   0, 38(5)  load array error str address
7: LD    1, 0(0)  load str length into ac2
8: JEQ   1, 5(7)  output nothing when empty
9: LDA   0, 1(0)  increase offset
10: LD    2, 0(0)  load char into ac3
11: OUTC   2, 2, 2  write char
12: LDA   1, -1(1)  decrease length of remaining string in ac2
13: JNE   1, -5(7)  continue print if not yet finish
14: OUTNL 0, 0, 0  emit newline
15: HALT  0, 0, 0  stop because of array error
16: LDC   0, 8(5)  load out of memory str address
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
28: LDC   2, 0(5)  load 0 as initial result
29: LDA   6, -1(6)  push 0
30: LDC   3, 84(5)  push 0
31: SUB   3, 6, 3  push 0
32: JLE   3, 16(5)  push 0
33: ST    2, 0(6)  push 0
34: LD    2, 0(6)  pop result into AC3
35: LDA   6, 1(6)  pop result into AC3
36: LDC   3, 10(5)  load 10 into ac4
37: MUL   2, 2, 3  mul result with 10
38: LDA   6, -1(6)  push result
39: LDC   3, 84(5)  push result
40: SUB   3, 6, 3  push result
41: JLE   3, 16(5)  push result
42: ST    2, 0(6)  push result
43: LDA   0, 1(0)  increase str offset
44: LD    2, 0(0)  load char
45: LDC   3, 48(5)  load 48 into ac4
46: SUB   2, 2, 3  compute int value
47: LD    3, 0(6)  pop result into AC4
48: LDA   6, 1(6)  pop result into AC4
49: ADD   2, 2, 3  compute result
50: LDA   6, -1(6)  push result
51: LDC   3, 84(5)  push result
52: SUB   3, 6, 3  push result
53: JLE   3, 16(5)  push result
54: ST    2, 0(6)  push result
55: LDA   1, -1(1)  decrease str length
56: JNE   1, 34(5)  continue if str length
57: LD    0, 0(6)  pop result
58: LDA   6, 1(6)  pop result
59: ST    0, -2(4)  save to return value
60: LD    0, -2(4)  load int/bool/string offset as return value
61: LD    1, -1(4)  load return address
62: LDA   6, 0(4)  change sp to fp + 1
63: LD    4, 0(6)  restore fp
64: LDA   6, 1(6)  restore fp
65: LDA   7, 0(1)  jump to the return address
66: LDC   0, 0(5)  load integer 0
67: LDA   6, -1(6)  push array index
68: LDC   3, 84(5)  push array index
69: SUB   3, 6, 3  push array index
70: JLE   3, 16(5)  push array index
71: ST    0, 0(6)  push array index
72: LDC   0, 1(5)  push array dimension
73: LDC   0, 0(5)  load 0 to ac
74: LD    1, 0(6)  pop index
75: LDA   6, 1(6)  pop index
76: JLT   1, 6(5)  jump if index less than 0
77: LDC   3, 4(5)  load array size
78: SUB   3, 3, 1  sub max size with index
79: JLE   3, 6(5)  jump if index greater than size - 1
80: LDC   2, 1(5)  load size of subarray
81: MUL   1, 1, 2  compute 0 dim
82: ADD   0, 0, 1  add result
83: LDA   1, 0(4)  load fp into ac2
84: LD    1, -2(1)  load local offset into ac2
85: ADD   0, 0, 1  compute final offset
86: LD    0, 0(0)  load data from array
87: OUT   0, 0, 0  write integer
88: OUTNL 0, 0, 0  write new line
89: LDC   0, 1(5)  load integer 1
90: LDA   6, -1(6)  push array index
91: LDC   3, 84(5)  push array index
92: SUB   3, 6, 3  push array index
93: JLE   3, 16(5)  push array index
94: ST    0, 0(6)  push array index
95: LDC   0, 1(5)  push array dimension
96: LDC   0, 0(5)  load 0 to ac
97: LD    1, 0(6)  pop index
98: LDA   6, 1(6)  pop index
99: JLT   1, 6(5)  jump if index less than 0
100: LDC   3, 4(5)  load array size
101: SUB   3, 3, 1  sub max size with index
102: JLE   3, 6(5)  jump if index greater than size - 1
103: LDC   2, 1(5)  load size of subarray
104: MUL   1, 1, 2  compute 0 dim
105: ADD   0, 0, 1  add result
106: LDA   1, 0(4)  load fp into ac2
107: LD    1, -2(1)  load local offset into ac2
108: ADD   0, 0, 1  compute final offset
109: LD    0, 0(0)  load data from array
110: OUT   0, 0, 0  write integer
111: OUTNL 0, 0, 0  write new line
112: LDC   0, 2(5)  load integer 2
113: LDA   6, -1(6)  push array index
114: LDC   3, 84(5)  push array index
115: SUB   3, 6, 3  push array index
116: JLE   3, 16(5)  push array index
117: ST    0, 0(6)  push array index
118: LDC   0, 1(5)  push array dimension
119: LDC   0, 0(5)  load 0 to ac
120: LD    1, 0(6)  pop index
121: LDA   6, 1(6)  pop index
122: JLT   1, 6(5)  jump if index less than 0
123: LDC   3, 4(5)  load array size
124: SUB   3, 3, 1  sub max size with index
125: JLE   3, 6(5)  jump if index greater than size - 1
126: LDC   2, 1(5)  load size of subarray
127: MUL   1, 1, 2  compute 0 dim
128: ADD   0, 0, 1  add result
129: LDA   1, 0(4)  load fp into ac2
130: LD    1, -2(1)  load local offset into ac2
131: ADD   0, 0, 1  compute final offset
132: LD    0, 0(0)  load data from array
133: OUT   0, 0, 0  write integer
134: OUTNL 0, 0, 0  write new line
135: LDC   0, 3(5)  load integer 3
136: LDA   6, -1(6)  push array index
137: LDC   3, 84(5)  push array index
138: SUB   3, 6, 3  push array index
139: JLE   3, 16(5)  push array index
140: ST    0, 0(6)  push array index
141: LDC   0, 1(5)  push array dimension
142: LDC   0, 0(5)  load 0 to ac
143: LD    1, 0(6)  pop index
144: LDA   6, 1(6)  pop index
145: JLT   1, 6(5)  jump if index less than 0
146: LDC   3, 4(5)  load array size
147: SUB   3, 3, 1  sub max size with index
148: JLE   3, 6(5)  jump if index greater than size - 1
149: LDC   2, 1(5)  load size of subarray
150: MUL   1, 1, 2  compute 0 dim
151: ADD   0, 0, 1  add result
152: LDA   1, 0(4)  load fp into ac2
153: LD    1, -2(1)  load local offset into ac2
154: ADD   0, 0, 1  compute final offset
155: LD    0, 0(0)  load data from array
156: OUT   0, 0, 0  write integer
157: OUTNL 0, 0, 0  write new line
158: LD    1, -1(4)  load return address
159: LDA   6, 0(4)  change sp to fp + 1
160: LD    4, 0(6)  restore fp
161: LDA   6, 1(6)  restore fp
162: LDA   7, 0(1)  jump to the return address
5: LDA   7, 163(5)  jump to start of the program
163: LDC   0, 0(5)  load integer 0
164: LDA   6, -1(6)  push array index
165: LDC   3, 84(5)  push array index
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
180: LD    1, 79(5)  load offset into ac2
181: ADD   0, 0, 1  compute final offset
182: LDA   6, -1(6)  push final offset
183: LDC   3, 84(5)  push final offset
184: SUB   3, 6, 3  push final offset
185: JLE   3, 16(5)  push final offset
186: ST    0, 0(6)  push final offset
187: LDC   0, 3(5)  load integer 3
188: LD    1, 0(6)  pop final offset
189: LDA   6, 1(6)  pop final offset
190: ST    0, 0(1)  store value into array static data
191: LDC   0, 1(5)  load integer 1
192: LDA   6, -1(6)  push array index
193: LDC   3, 84(5)  push array index
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
208: LD    1, 79(5)  load offset into ac2
209: ADD   0, 0, 1  compute final offset
210: LDA   6, -1(6)  push final offset
211: LDC   3, 84(5)  push final offset
212: SUB   3, 6, 3  push final offset
213: JLE   3, 16(5)  push final offset
214: ST    0, 0(6)  push final offset
215: LDC   0, 2(5)  load integer 2
216: LD    1, 0(6)  pop final offset
217: LDA   6, 1(6)  pop final offset
218: ST    0, 0(1)  store value into array static data
219: LDC   0, 2(5)  load integer 2
220: LDA   6, -1(6)  push array index
221: LDC   3, 84(5)  push array index
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
236: LD    1, 79(5)  load offset into ac2
237: ADD   0, 0, 1  compute final offset
238: LDA   6, -1(6)  push final offset
239: LDC   3, 84(5)  push final offset
240: SUB   3, 6, 3  push final offset
241: JLE   3, 16(5)  push final offset
242: ST    0, 0(6)  push final offset
243: LDC   0, 1(5)  load integer 1
244: LD    1, 0(6)  pop final offset
245: LDA   6, 1(6)  pop final offset
246: ST    0, 0(1)  store value into array static data
247: LDC   0, 3(5)  load integer 3
248: LDA   6, -1(6)  push array index
249: LDC   3, 84(5)  push array index
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
264: LD    1, 79(5)  load offset into ac2
265: ADD   0, 0, 1  compute final offset
266: LDA   6, -1(6)  push final offset
267: LDC   3, 84(5)  push final offset
268: SUB   3, 6, 3  push final offset
269: JLE   3, 16(5)  push final offset
270: ST    0, 0(6)  push final offset
271: LDC   0, 0(5)  load integer 0
272: LD    1, 0(6)  pop final offset
273: LDA   6, 1(6)  pop final offset
274: ST    0, 0(1)  store value into array static data
275: LDA   6, -1(6)  push fp
276: LDC   3, 84(5)  push fp
277: SUB   3, 6, 3  push fp
278: JLE   3, 16(5)  push fp
279: ST    4, 0(6)  push fp
280: LDA   4, 0(6)  set fp to sp
287: LDC   0, 1(5)  push array dimension
288: LDC   0, 0(5)  load 0 to ac
289: LD    1, 79(5)  load global offset into ac2
290: ADD   0, 0, 1  compute final offset
291: LDA   6, -1(6)  push array parameter
292: LDC   3, 84(5)  push array parameter
293: SUB   3, 6, 3  push array parameter
294: JLE   3, 16(5)  push array parameter
295: ST    0, 0(6)  push array parameter
296: LDA   6, 0(6)  preserve space for local vars
297: LDA   7, 66(5)  jump to procedure call
281: LDC   0, 298(5)  load return address into ac
282: LDA   6, -1(6)  push return address
283: LDC   3, 84(5)  push return address
284: SUB   3, 6, 3  push return address
285: JLE   3, 16(5)  push return address
286: ST    0, 0(6)  push return address
298: HALT  0, 0, 0  program ends
