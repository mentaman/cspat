.DATA    2
.SDATA   "Hi"
.DATA    3
.SDATA   "Hi "
.DATA    5
.SDATA   " -10 "
.DATA    3
.SDATA   "+10"
.DATA    1
.SDATA   "-"
.DATA    15
.SDATA   "m <= 4 && m > 2"
.DATA    18
.SDATA   "array index error!"
.DATA    5
.SDATA   "There"
.DATA    3
.SDATA   "1-0"
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
0: LD    6, 0(5)  save stack pointer
1: LD    4, 0(5)  save frame pointer
3: LDC   0, 36(5)  load array error str address
4: LD    1, 0(0)  load str length into ac2
5: JEQ   1, 5(7)  output nothing when empty
6: LDA   0, 1(0)  increase offset
7: LD    2, 0(0)  load char into ac3
8: OUTC   2, 2, 2  write char
9: LDA   1, -1(1)  decrease length of remaining string in ac2
10: JNE   1, -5(7)  continue print if not yet finish
11: OUTNL 0, 0, 0  emit newline
12: HALT  0, 0, 0  stop because of array error
13: LDC   0, 86(5)  load out of memory str address
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
27: LDC   3, 105(5)  push 0
28: SUB   3, 6, 3  push 0
29: JLE   3, 13(5)  push 0
30: ST    2, 0(6)  push 0
31: LD    2, 0(6)  pop result into AC3
32: LDA   6, 1(6)  pop result into AC3
33: LDC   3, 10(5)  load 10 into ac4
34: MUL   2, 2, 3  mul result with 10
35: LDA   6, -1(6)  push result
36: LDC   3, 105(5)  push result
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
48: LDC   3, 105(5)  push result
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
63: LDA   6, -1(6)  push fp
64: LDC   3, 105(5)  push fp
65: SUB   3, 6, 3  push fp
66: JLE   3, 13(5)  push fp
67: ST    4, 0(6)  push fp
68: LDA   4, 0(6)  set fp to sp
75: LDA   6, -1(6)  push zero as return value
76: LDC   3, 105(5)  push zero as return value
77: SUB   3, 6, 3  push zero as return value
78: JLE   3, 13(5)  push zero as return value
79: ST    5, 0(6)  push zero as return value
80: LDA   1, 0(4)  load fp into ac2
81: LD    1, 0(1)  load upper level fp into ac2
82: LD    0, -3(1)  load int/bool/str from stack
83: LDA   6, -1(6)  push int/bool/str parameter
84: LDC   3, 105(5)  push int/bool/str parameter
85: SUB   3, 6, 3  push int/bool/str parameter
86: JLE   3, 13(5)  push int/bool/str parameter
87: ST    0, 0(6)  push int/bool/str parameter
88: LDA   6, -1(6)  preserve space for local vars
89: LDA   7, 23(5)  jump to procedure call
69: LDC   0, 90(5)  load return address into ac
70: LDA   6, -1(6)  push return address
71: LDC   3, 105(5)  push return address
72: SUB   3, 6, 3  push return address
73: JLE   3, 13(5)  push return address
74: ST    0, 0(6)  push return address
90: LDA   1, 0(4)  load fp into ac2
91: ST    0, -2(1)  store int/bool/string into stack
92: LD    0, -2(4)  load int/bool/string offset as return value
93: LD    1, -1(4)  load return address
94: LDA   6, 0(4)  change sp to fp + 1
95: LD    4, 0(6)  restore fp
96: LDA   6, 1(6)  restore fp
97: LDA   7, 0(1)  jump to the return address
2: LDA   7, 98(5)  jump to start of the program
98: LDA   6, -1(6)  push fp
99: LDC   3, 105(5)  push fp
100: SUB   3, 6, 3  push fp
101: JLE   3, 13(5)  push fp
102: ST    4, 0(6)  push fp
103: LDA   4, 0(6)  set fp to sp
110: LDA   6, -1(6)  push zero as return value
111: LDC   3, 105(5)  push zero as return value
112: SUB   3, 6, 3  push zero as return value
113: JLE   3, 13(5)  push zero as return value
114: ST    5, 0(6)  push zero as return value
115: LDC   0, 8(5)  load string offset 8
116: LDA   6, -1(6)  push int/bool/str parameter
117: LDC   3, 105(5)  push int/bool/str parameter
118: SUB   3, 6, 3  push int/bool/str parameter
119: JLE   3, 13(5)  push int/bool/str parameter
120: ST    0, 0(6)  push int/bool/str parameter
121: LDA   6, -1(6)  preserve space for local vars
122: LDA   7, 63(5)  jump to procedure call
104: LDC   0, 123(5)  load return address into ac
105: LDA   6, -1(6)  push return address
106: LDC   3, 105(5)  push return address
107: SUB   3, 6, 3  push return address
108: JLE   3, 13(5)  push return address
109: ST    0, 0(6)  push return address
123: OUT   0, 0, 0  write integer
124: OUTNL 0, 0, 0  write new line
125: LDA   6, -1(6)  push fp
126: LDC   3, 105(5)  push fp
127: SUB   3, 6, 3  push fp
128: JLE   3, 13(5)  push fp
129: ST    4, 0(6)  push fp
130: LDA   4, 0(6)  set fp to sp
137: LDA   6, -1(6)  push zero as return value
138: LDC   3, 105(5)  push zero as return value
139: SUB   3, 6, 3  push zero as return value
140: JLE   3, 13(5)  push zero as return value
141: ST    5, 0(6)  push zero as return value
142: LDC   0, 14(5)  load string offset 14
143: LDA   6, -1(6)  push int/bool/str parameter
144: LDC   3, 105(5)  push int/bool/str parameter
145: SUB   3, 6, 3  push int/bool/str parameter
146: JLE   3, 13(5)  push int/bool/str parameter
147: ST    0, 0(6)  push int/bool/str parameter
148: LDA   6, -1(6)  preserve space for local vars
149: LDA   7, 23(5)  jump to procedure call
131: LDC   0, 150(5)  load return address into ac
132: LDA   6, -1(6)  push return address
133: LDC   3, 105(5)  push return address
134: SUB   3, 6, 3  push return address
135: JLE   3, 13(5)  push return address
136: ST    0, 0(6)  push return address
150: OUT   0, 0, 0  write integer
151: OUTNL 0, 0, 0  write new line
152: LDA   6, -1(6)  push fp
153: LDC   3, 105(5)  push fp
154: SUB   3, 6, 3  push fp
155: JLE   3, 13(5)  push fp
156: ST    4, 0(6)  push fp
157: LDA   4, 0(6)  set fp to sp
164: LDA   6, -1(6)  push zero as return value
165: LDC   3, 105(5)  push zero as return value
166: SUB   3, 6, 3  push zero as return value
167: JLE   3, 13(5)  push zero as return value
168: ST    5, 0(6)  push zero as return value
169: LDC   0, 100(5)  load string offset 100
170: LDA   6, -1(6)  push int/bool/str parameter
171: LDC   3, 105(5)  push int/bool/str parameter
172: SUB   3, 6, 3  push int/bool/str parameter
173: JLE   3, 13(5)  push int/bool/str parameter
174: ST    0, 0(6)  push int/bool/str parameter
175: LDA   6, -1(6)  preserve space for local vars
176: LDA   7, 23(5)  jump to procedure call
158: LDC   0, 177(5)  load return address into ac
159: LDA   6, -1(6)  push return address
160: LDC   3, 105(5)  push return address
161: SUB   3, 6, 3  push return address
162: JLE   3, 13(5)  push return address
163: ST    0, 0(6)  push return address
177: ST    0, 104(5)  store int/bool/string into previous used static data
178: LD    0, 104(5)  load int/bool/str from static data
179: OUT   0, 0, 0  write integer
180: OUTNL 0, 0, 0  write new line
181: LDA   6, -1(6)  push fp
182: LDC   3, 105(5)  push fp
183: SUB   3, 6, 3  push fp
184: JLE   3, 13(5)  push fp
185: ST    4, 0(6)  push fp
186: LDA   4, 0(6)  set fp to sp
193: LDA   6, -1(6)  push zero as return value
194: LDC   3, 105(5)  push zero as return value
195: SUB   3, 6, 3  push zero as return value
196: JLE   3, 13(5)  push zero as return value
197: ST    5, 0(6)  push zero as return value
198: LDC   0, 61(5)  load string offset 61
199: LDA   6, -1(6)  push int/bool/str parameter
200: LDC   3, 105(5)  push int/bool/str parameter
201: SUB   3, 6, 3  push int/bool/str parameter
202: JLE   3, 13(5)  push int/bool/str parameter
203: ST    0, 0(6)  push int/bool/str parameter
204: LDA   6, -1(6)  preserve space for local vars
205: LDA   7, 23(5)  jump to procedure call
187: LDC   0, 206(5)  load return address into ac
188: LDA   6, -1(6)  push return address
189: LDC   3, 105(5)  push return address
190: SUB   3, 6, 3  push return address
191: JLE   3, 13(5)  push return address
192: ST    0, 0(6)  push return address
206: OUT   0, 0, 0  write integer
207: OUTNL 0, 0, 0  write new line
208: LDA   6, -1(6)  push fp
209: LDC   3, 105(5)  push fp
210: SUB   3, 6, 3  push fp
211: JLE   3, 13(5)  push fp
212: ST    4, 0(6)  push fp
213: LDA   4, 0(6)  set fp to sp
220: LDA   6, -1(6)  push zero as return value
221: LDC   3, 105(5)  push zero as return value
222: SUB   3, 6, 3  push zero as return value
223: JLE   3, 13(5)  push zero as return value
224: ST    5, 0(6)  push zero as return value
225: LDC   0, 65(5)  load string offset 65
226: LDA   6, -1(6)  push int/bool/str parameter
227: LDC   3, 105(5)  push int/bool/str parameter
228: SUB   3, 6, 3  push int/bool/str parameter
229: JLE   3, 13(5)  push int/bool/str parameter
230: ST    0, 0(6)  push int/bool/str parameter
231: LDA   6, -1(6)  preserve space for local vars
232: LDA   7, 23(5)  jump to procedure call
214: LDC   0, 233(5)  load return address into ac
215: LDA   6, -1(6)  push return address
216: LDC   3, 105(5)  push return address
217: SUB   3, 6, 3  push return address
218: JLE   3, 13(5)  push return address
219: ST    0, 0(6)  push return address
233: OUT   0, 0, 0  write integer
234: OUTNL 0, 0, 0  write new line
235: LDA   6, -1(6)  push fp
236: LDC   3, 105(5)  push fp
237: SUB   3, 6, 3  push fp
238: JLE   3, 13(5)  push fp
239: ST    4, 0(6)  push fp
240: LDA   4, 0(6)  set fp to sp
247: LDA   6, -1(6)  push zero as return value
248: LDC   3, 105(5)  push zero as return value
249: SUB   3, 6, 3  push zero as return value
250: JLE   3, 13(5)  push zero as return value
251: ST    5, 0(6)  push zero as return value
252: LDC   0, 18(5)  load string offset 18
253: LDA   6, -1(6)  push int/bool/str parameter
254: LDC   3, 105(5)  push int/bool/str parameter
255: SUB   3, 6, 3  push int/bool/str parameter
256: JLE   3, 13(5)  push int/bool/str parameter
257: ST    0, 0(6)  push int/bool/str parameter
258: LDA   6, -1(6)  preserve space for local vars
259: LDA   7, 23(5)  jump to procedure call
241: LDC   0, 260(5)  load return address into ac
242: LDA   6, -1(6)  push return address
243: LDC   3, 105(5)  push return address
244: SUB   3, 6, 3  push return address
245: JLE   3, 13(5)  push return address
246: ST    0, 0(6)  push return address
260: OUT   0, 0, 0  write integer
261: OUTNL 0, 0, 0  write new line
262: LDA   6, -1(6)  push fp
263: LDC   3, 105(5)  push fp
264: SUB   3, 6, 3  push fp
265: JLE   3, 13(5)  push fp
266: ST    4, 0(6)  push fp
267: LDA   4, 0(6)  set fp to sp
274: LDA   6, -1(6)  push zero as return value
275: LDC   3, 105(5)  push zero as return value
276: SUB   3, 6, 3  push zero as return value
277: JLE   3, 13(5)  push zero as return value
278: ST    5, 0(6)  push zero as return value
279: LDC   0, 82(5)  load string offset 82
280: LDA   6, -1(6)  push int/bool/str parameter
281: LDC   3, 105(5)  push int/bool/str parameter
282: SUB   3, 6, 3  push int/bool/str parameter
283: JLE   3, 13(5)  push int/bool/str parameter
284: ST    0, 0(6)  push int/bool/str parameter
285: LDA   6, -1(6)  preserve space for local vars
286: LDA   7, 23(5)  jump to procedure call
268: LDC   0, 287(5)  load return address into ac
269: LDA   6, -1(6)  push return address
270: LDC   3, 105(5)  push return address
271: SUB   3, 6, 3  push return address
272: JLE   3, 13(5)  push return address
273: ST    0, 0(6)  push return address
287: OUT   0, 0, 0  write integer
288: OUTNL 0, 0, 0  write new line
289: HALT  0, 0, 0  program ends
