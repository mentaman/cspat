.DATA    13
.SDATA   "out of memory"
.DATA    18
.SDATA   "array index error!"
0: LD    6, 0(5)  save stack pointer
1: LD    4, 0(5)  save frame pointer
3: LDC   0, 15(5)  load array error str address
4: LD    1, 0(0)  load str length into ac2
5: JEQ   1, 5(7)  output nothing when empty
6: LDA   0, 1(0)  increase offset
7: LD    2, 0(0)  load char into ac3
8: OUTC   2, 2, 2  write char
9: LDA   1, -1(1)  decrease length of remaining string in ac2
10: JNE   1, -5(7)  continue print if not yet finish
11: OUTNL 0, 0, 0  emit newline
12: HALT  0, 0, 0  stop because of array error
13: LDC   0, 1(5)  load out of memory str address
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
25: LDC   2, 0(5)  load 0 as initial result
26: LDA   6, -1(6)  push 0
27: LDC   3, 34(5)  push 0
28: SUB   3, 6, 3  push 0
29: JLE   3, 13(5)  push 0
30: ST    2, 0(6)  push 0
31: LD    2, 0(6)  pop result into AC3
32: LDA   6, 1(6)  pop result into AC3
33: LDC   3, 10(5)  load 10 into ac4
34: MUL   2, 2, 3  mul result with 10
35: LDA   6, -1(6)  push result
36: LDC   3, 34(5)  push result
37: SUB   3, 6, 3  push result
38: JLE   3, 13(5)  push result
39: ST    2, 0(6)  push result
40: LDA   0, 1(0)  increase str offset
41: LD    2, 0(0)  load char
42: LDC   3, 48(5)  load 48 into ac4
43: SUB   2, 2, 3  compute int value
44: LD    3, 0(6)  pop result into AC4
45: LDA   6, 1(6)  pop result into AC4
46: ADD   2, 2, 3  compute result
47: LDA   6, -1(6)  push result
48: LDC   3, 34(5)  push result
49: SUB   3, 6, 3  push result
50: JLE   3, 13(5)  push result
51: ST    2, 0(6)  push result
52: LDA   1, -1(1)  decrease str length
53: JNE   1, 31(5)  continue if str length
54: LD    0, 0(6)  pop result
55: LDA   6, 1(6)  pop result
56: ST    0, -2(4)  save to return value
57: LD    0, -2(4)  load int/bool/string offset as return value
58: LD    1, -1(4)  load return address
59: LDA   6, 0(4)  change sp to fp + 1
60: LD    4, 0(6)  restore fp
61: LDA   6, 1(6)  restore fp
62: LDA   7, 0(1)  jump to the return address
63: LDC   0, 0(5)  load integer 0
64: LDA   6, -1(6)  push array index
65: LDC   3, 34(5)  push array index
66: SUB   3, 6, 3  push array index
67: JLE   3, 13(5)  push array index
68: ST    0, 0(6)  push array index
69: LDC   0, 0(5)  load integer 0
70: LDA   6, -1(6)  push array index
71: LDC   3, 34(5)  push array index
72: SUB   3, 6, 3  push array index
73: JLE   3, 13(5)  push array index
74: ST    0, 0(6)  push array index
75: LDC   0, 2(5)  push array dimension
76: LDC   0, 0(5)  load 0 to ac
77: LD    1, 0(6)  pop index
78: LDA   6, 1(6)  pop index
79: JLT   1, 3(5)  jump if index less than 0
80: LDC   3, 1(5)  load array size
81: SUB   3, 3, 1  sub max size with index
82: JLE   3, 3(5)  jump if index greater than size - 1
83: LDC   2, 2(5)  load size of subarray
84: MUL   1, 1, 2  compute 0 dim
85: ADD   0, 0, 1  add result
86: LD    1, 0(6)  pop index
87: LDA   6, 1(6)  pop index
88: JLT   1, 3(5)  jump if index less than 0
89: LDC   3, 2(5)  load array size
90: SUB   3, 3, 1  sub max size with index
91: JLE   3, 3(5)  jump if index greater than size - 1
92: LDC   2, 1(5)  load size of subarray
93: MUL   1, 1, 2  compute 1 dim
94: ADD   0, 0, 1  add result
95: LDA   1, 0(4)  load fp into ac2
96: LD    1, -2(1)  load local offset into ac2
97: ADD   0, 0, 1  compute final offset
98: LD    0, 0(0)  load data from array
99: OUT   0, 0, 0  write integer
100: OUTNL 0, 0, 0  write new line
101: LDC   0, 1(5)  load integer 1
102: LDA   6, -1(6)  push array index
103: LDC   3, 34(5)  push array index
104: SUB   3, 6, 3  push array index
105: JLE   3, 13(5)  push array index
106: ST    0, 0(6)  push array index
107: LDC   0, 0(5)  load integer 0
108: LDA   6, -1(6)  push array index
109: LDC   3, 34(5)  push array index
110: SUB   3, 6, 3  push array index
111: JLE   3, 13(5)  push array index
112: ST    0, 0(6)  push array index
113: LDC   0, 2(5)  push array dimension
114: LDC   0, 0(5)  load 0 to ac
115: LD    1, 0(6)  pop index
116: LDA   6, 1(6)  pop index
117: JLT   1, 3(5)  jump if index less than 0
118: LDC   3, 1(5)  load array size
119: SUB   3, 3, 1  sub max size with index
120: JLE   3, 3(5)  jump if index greater than size - 1
121: LDC   2, 2(5)  load size of subarray
122: MUL   1, 1, 2  compute 0 dim
123: ADD   0, 0, 1  add result
124: LD    1, 0(6)  pop index
125: LDA   6, 1(6)  pop index
126: JLT   1, 3(5)  jump if index less than 0
127: LDC   3, 2(5)  load array size
128: SUB   3, 3, 1  sub max size with index
129: JLE   3, 3(5)  jump if index greater than size - 1
130: LDC   2, 1(5)  load size of subarray
131: MUL   1, 1, 2  compute 1 dim
132: ADD   0, 0, 1  add result
133: LDA   1, 0(4)  load fp into ac2
134: LD    1, -2(1)  load local offset into ac2
135: ADD   0, 0, 1  compute final offset
136: LD    0, 0(0)  load data from array
137: OUT   0, 0, 0  write integer
138: OUTNL 0, 0, 0  write new line
139: LD    1, -1(4)  load return address
140: LDA   6, 0(4)  change sp to fp + 1
141: LD    4, 0(6)  restore fp
142: LDA   6, 1(6)  restore fp
143: LDA   7, 0(1)  jump to the return address
144: LDC   0, 0(5)  load integer 0
145: LDA   6, -1(6)  push array index
146: LDC   3, 34(5)  push array index
147: SUB   3, 6, 3  push array index
148: JLE   3, 13(5)  push array index
149: ST    0, 0(6)  push array index
150: LDC   0, 0(5)  load integer 0
151: LDA   6, -1(6)  push array index
152: LDC   3, 34(5)  push array index
153: SUB   3, 6, 3  push array index
154: JLE   3, 13(5)  push array index
155: ST    0, 0(6)  push array index
156: LDC   0, 2(5)  push array dimension
157: LDC   0, 0(5)  load 0 to ac
158: LD    1, 0(6)  pop index
159: LDA   6, 1(6)  pop index
160: JLT   1, 3(5)  jump if index less than 0
161: LDC   3, 1(5)  load array size
162: SUB   3, 3, 1  sub max size with index
163: JLE   3, 3(5)  jump if index greater than size - 1
164: LDC   2, 2(5)  load size of subarray
165: MUL   1, 1, 2  compute 0 dim
166: ADD   0, 0, 1  add result
167: LD    1, 0(6)  pop index
168: LDA   6, 1(6)  pop index
169: JLT   1, 3(5)  jump if index less than 0
170: LDC   3, 2(5)  load array size
171: SUB   3, 3, 1  sub max size with index
172: JLE   3, 3(5)  jump if index greater than size - 1
173: LDC   2, 1(5)  load size of subarray
174: MUL   1, 1, 2  compute 1 dim
175: ADD   0, 0, 1  add result
176: LDA   1, 0(4)  load fp into ac2
177: LD    1, -4(1)  load local offset into ac2
178: ADD   0, 0, 1  compute final offset
179: LDA   6, -1(6)  push final offset
180: LDC   3, 34(5)  push final offset
181: SUB   3, 6, 3  push final offset
182: JLE   3, 13(5)  push final offset
183: ST    0, 0(6)  push final offset
184: LDC   0, 13(5)  load integer 13
185: LD    1, 0(6)  pop final offset
186: LDA   6, 1(6)  pop final offset
187: ST    0, 0(1)  store value into array static data
188: LDC   0, 1(5)  load integer 1
189: LDA   6, -1(6)  push array index
190: LDC   3, 34(5)  push array index
191: SUB   3, 6, 3  push array index
192: JLE   3, 13(5)  push array index
193: ST    0, 0(6)  push array index
194: LDC   0, 0(5)  load integer 0
195: LDA   6, -1(6)  push array index
196: LDC   3, 34(5)  push array index
197: SUB   3, 6, 3  push array index
198: JLE   3, 13(5)  push array index
199: ST    0, 0(6)  push array index
200: LDC   0, 2(5)  push array dimension
201: LDC   0, 0(5)  load 0 to ac
202: LD    1, 0(6)  pop index
203: LDA   6, 1(6)  pop index
204: JLT   1, 3(5)  jump if index less than 0
205: LDC   3, 1(5)  load array size
206: SUB   3, 3, 1  sub max size with index
207: JLE   3, 3(5)  jump if index greater than size - 1
208: LDC   2, 2(5)  load size of subarray
209: MUL   1, 1, 2  compute 0 dim
210: ADD   0, 0, 1  add result
211: LD    1, 0(6)  pop index
212: LDA   6, 1(6)  pop index
213: JLT   1, 3(5)  jump if index less than 0
214: LDC   3, 2(5)  load array size
215: SUB   3, 3, 1  sub max size with index
216: JLE   3, 3(5)  jump if index greater than size - 1
217: LDC   2, 1(5)  load size of subarray
218: MUL   1, 1, 2  compute 1 dim
219: ADD   0, 0, 1  add result
220: LDA   1, 0(4)  load fp into ac2
221: LD    1, -4(1)  load local offset into ac2
222: ADD   0, 0, 1  compute final offset
223: LDA   6, -1(6)  push final offset
224: LDC   3, 34(5)  push final offset
225: SUB   3, 6, 3  push final offset
226: JLE   3, 13(5)  push final offset
227: ST    0, 0(6)  push final offset
228: LDC   0, 16(5)  load integer 16
229: LD    1, 0(6)  pop final offset
230: LDA   6, 1(6)  pop final offset
231: ST    0, 0(1)  store value into array static data
232: LDA   6, -1(6)  push fp
233: LDC   3, 34(5)  push fp
234: SUB   3, 6, 3  push fp
235: JLE   3, 13(5)  push fp
236: ST    4, 0(6)  push fp
237: LDA   4, 0(6)  set fp to sp
244: LDC   0, 2(5)  push array dimension
245: LDC   0, 0(5)  load 0 to ac
246: LDA   1, 0(4)  load fp into ac2
247: LD    1, 0(1)  load upper level fp into ac2
248: LD    1, -4(1)  load local offset into ac2
249: ADD   0, 0, 1  compute final offset
250: LDA   6, -1(6)  push array parameter
251: LDC   3, 34(5)  push array parameter
252: SUB   3, 6, 3  push array parameter
253: JLE   3, 13(5)  push array parameter
254: ST    0, 0(6)  push array parameter
255: LDA   6, 0(6)  preserve space for local vars
256: LDA   7, 63(5)  jump to procedure call
238: LDC   0, 257(5)  load return address into ac
239: LDA   6, -1(6)  push return address
240: LDC   3, 34(5)  push return address
241: SUB   3, 6, 3  push return address
242: JLE   3, 13(5)  push return address
243: ST    0, 0(6)  push return address
257: LD    1, -1(4)  load return address
258: LDA   6, 0(4)  change sp to fp + 1
259: LD    4, 0(6)  restore fp
260: LDA   6, 1(6)  restore fp
261: LDA   7, 0(1)  jump to the return address
2: LDA   7, 262(5)  jump to start of the program
262: LDA   6, -1(6)  push fp
263: LDC   3, 34(5)  push fp
264: SUB   3, 6, 3  push fp
265: JLE   3, 13(5)  push fp
266: ST    4, 0(6)  push fp
267: LDA   4, 0(6)  set fp to sp
274: LDC   0, 2(5)  load array localVariableSize: 2
275: SUB   0, 6, 0  compute absolute address of the array
276: ST    0, -3(6)  store absolute array address
277: LDA   6, -3(6)  preserve space for local vars
278: LDA   7, 144(5)  jump to procedure call
268: LDC   0, 279(5)  load return address into ac
269: LDA   6, -1(6)  push return address
270: LDC   3, 34(5)  push return address
271: SUB   3, 6, 3  push return address
272: JLE   3, 13(5)  push return address
273: ST    0, 0(6)  push return address
279: HALT  0, 0, 0  program ends
