.DATA    3
.SDATA   "+10"
.DATA    5
.SDATA   " -10 "
.DATA    13
.SDATA   "out of memory"
.DATA    1
.SDATA   "-"
.DATA    3
.SDATA   "10 "
.DATA    18
.SDATA   "array index error!"
.DATA    0
.SDATA   ""
.DATA    3
.SDATA   "1-0"
.DATA    1
.SDATA   "2"
.DATA    8
.SDATA   "int(s): "
0: LD    6, 0(5)  save stack pointer
1: LD    4, 0(5)  save frame pointer
3: LDC   0, 31(5)  load array error str address
4: LD    1, 0(0)  load str length into ac2
5: JEQ   1, 5(7)  output nothing when empty
6: LDA   0, 1(0)  increase offset
7: LD    2, 0(0)  load char into ac3
8: OUTC   2, 2, 2  write char
9: LDA   1, -1(1)  decrease length of remaining string in ac2
10: JNE   1, -5(7)  continue print if not yet finish
11: OUTNL 0, 0, 0  emit newline
12: HALT  0, 0, 0  stop because of array error
13: LDC   0, 11(5)  load out of memory str address
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
27: LDC   3, 67(5)  push 0
28: SUB   3, 6, 3  push 0
29: JLE   3, 13(5)  push 0
30: ST    2, 0(6)  push 0
31: LD    2, 0(6)  pop result into AC3
32: LDA   6, 1(6)  pop result into AC3
33: LDC   3, 10(5)  load 10 into ac4
34: MUL   2, 2, 3  mul result with 10
35: LDA   6, -1(6)  push result
36: LDC   3, 67(5)  push result
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
48: LDC   3, 67(5)  push result
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
63: LDC   0, 57(5)  load string offset 57
64: LD    1, 0(0)  load str length into ac2
65: JEQ   1, 5(7)  output nothing when empty
66: LDA   0, 1(0)  increase offset
67: LD    2, 0(0)  load char into ac3
68: OUTC   2, 2, 2  write char
69: LDA   1, -1(1)  decrease length of remaining string in ac2
70: JNE   1, -5(7)  continue print if not yet finish
71: LDA   6, -1(6)  push fp
72: LDC   3, 67(5)  push fp
73: SUB   3, 6, 3  push fp
74: JLE   3, 13(5)  push fp
75: ST    4, 0(6)  push fp
76: LDA   4, 0(6)  set fp to sp
83: LDA   6, -1(6)  push zero as return value
84: LDC   3, 67(5)  push zero as return value
85: SUB   3, 6, 3  push zero as return value
86: JLE   3, 13(5)  push zero as return value
87: ST    5, 0(6)  push zero as return value
88: LDA   1, 0(4)  load fp into ac2
89: LD    1, 0(1)  load upper level fp into ac2
90: LD    0, -3(1)  load int/bool/str from stack
91: LDA   6, -1(6)  push int/bool/str parameter
92: LDC   3, 67(5)  push int/bool/str parameter
93: SUB   3, 6, 3  push int/bool/str parameter
94: JLE   3, 13(5)  push int/bool/str parameter
95: ST    0, 0(6)  push int/bool/str parameter
96: LDA   6, -1(6)  preserve space for local vars
97: LDA   7, 23(5)  jump to procedure call
77: LDC   0, 98(5)  load return address into ac
78: LDA   6, -1(6)  push return address
79: LDC   3, 67(5)  push return address
80: SUB   3, 6, 3  push return address
81: JLE   3, 13(5)  push return address
82: ST    0, 0(6)  push return address
98: OUT   0, 0, 0  write integer
99: OUTNL 0, 0, 0  write new line
100: LDA   6, -1(6)  push fp
101: LDC   3, 67(5)  push fp
102: SUB   3, 6, 3  push fp
103: JLE   3, 13(5)  push fp
104: ST    4, 0(6)  push fp
105: LDA   4, 0(6)  set fp to sp
112: LDA   6, -1(6)  push zero as return value
113: LDC   3, 67(5)  push zero as return value
114: SUB   3, 6, 3  push zero as return value
115: JLE   3, 13(5)  push zero as return value
116: ST    5, 0(6)  push zero as return value
117: LDA   1, 0(4)  load fp into ac2
118: LD    1, 0(1)  load upper level fp into ac2
119: LD    0, -3(1)  load int/bool/str from stack
120: LDA   6, -1(6)  push int/bool/str parameter
121: LDC   3, 67(5)  push int/bool/str parameter
122: SUB   3, 6, 3  push int/bool/str parameter
123: JLE   3, 13(5)  push int/bool/str parameter
124: ST    0, 0(6)  push int/bool/str parameter
125: LDA   6, -1(6)  preserve space for local vars
126: LDA   7, 23(5)  jump to procedure call
106: LDC   0, 127(5)  load return address into ac
107: LDA   6, -1(6)  push return address
108: LDC   3, 67(5)  push return address
109: SUB   3, 6, 3  push return address
110: JLE   3, 13(5)  push return address
111: ST    0, 0(6)  push return address
127: LDA   1, 0(4)  load fp into ac2
128: ST    0, -2(1)  store int/bool/string into stack
129: LD    0, -2(4)  load int/bool/string offset as return value
130: LD    1, -1(4)  load return address
131: LDA   6, 0(4)  change sp to fp + 1
132: LD    4, 0(6)  restore fp
133: LDA   6, 1(6)  restore fp
134: LDA   7, 0(1)  jump to the return address
2: LDA   7, 135(5)  jump to start of the program
135: LDA   6, -1(6)  push fp
136: LDC   3, 67(5)  push fp
137: SUB   3, 6, 3  push fp
138: JLE   3, 13(5)  push fp
139: ST    4, 0(6)  push fp
140: LDA   4, 0(6)  set fp to sp
147: LDA   6, -1(6)  push zero as return value
148: LDC   3, 67(5)  push zero as return value
149: SUB   3, 6, 3  push zero as return value
150: JLE   3, 13(5)  push zero as return value
151: ST    5, 0(6)  push zero as return value
152: LDC   0, 55(5)  load string offset 55
153: LDA   6, -1(6)  push int/bool/str parameter
154: LDC   3, 67(5)  push int/bool/str parameter
155: SUB   3, 6, 3  push int/bool/str parameter
156: JLE   3, 13(5)  push int/bool/str parameter
157: ST    0, 0(6)  push int/bool/str parameter
158: LDA   6, -1(6)  preserve space for local vars
159: LDA   7, 23(5)  jump to procedure call
141: LDC   0, 160(5)  load return address into ac
142: LDA   6, -1(6)  push return address
143: LDC   3, 67(5)  push return address
144: SUB   3, 6, 3  push return address
145: JLE   3, 13(5)  push return address
146: ST    0, 0(6)  push return address
160: OUT   0, 0, 0  write integer
161: OUTNL 0, 0, 0  write new line
162: LDA   6, -1(6)  push fp
163: LDC   3, 67(5)  push fp
164: SUB   3, 6, 3  push fp
165: JLE   3, 13(5)  push fp
166: ST    4, 0(6)  push fp
167: LDA   4, 0(6)  set fp to sp
174: LDA   6, -1(6)  push zero as return value
175: LDC   3, 67(5)  push zero as return value
176: SUB   3, 6, 3  push zero as return value
177: JLE   3, 13(5)  push zero as return value
178: ST    5, 0(6)  push zero as return value
179: LDC   0, 5(5)  load string offset 5
180: LDA   6, -1(6)  push int/bool/str parameter
181: LDC   3, 67(5)  push int/bool/str parameter
182: SUB   3, 6, 3  push int/bool/str parameter
183: JLE   3, 13(5)  push int/bool/str parameter
184: ST    0, 0(6)  push int/bool/str parameter
185: LDA   6, -1(6)  preserve space for local vars
186: LDA   7, 63(5)  jump to procedure call
168: LDC   0, 187(5)  load return address into ac
169: LDA   6, -1(6)  push return address
170: LDC   3, 67(5)  push return address
171: SUB   3, 6, 3  push return address
172: JLE   3, 13(5)  push return address
173: ST    0, 0(6)  push return address
187: OUT   0, 0, 0  write integer
188: OUTNL 0, 0, 0  write new line
189: LDA   6, -1(6)  push fp
190: LDC   3, 67(5)  push fp
191: SUB   3, 6, 3  push fp
192: JLE   3, 13(5)  push fp
193: ST    4, 0(6)  push fp
194: LDA   4, 0(6)  set fp to sp
201: LDA   6, -1(6)  push zero as return value
202: LDC   3, 67(5)  push zero as return value
203: SUB   3, 6, 3  push zero as return value
204: JLE   3, 13(5)  push zero as return value
205: ST    5, 0(6)  push zero as return value
206: LDC   0, 1(5)  load string offset 1
207: LDA   6, -1(6)  push int/bool/str parameter
208: LDC   3, 67(5)  push int/bool/str parameter
209: SUB   3, 6, 3  push int/bool/str parameter
210: JLE   3, 13(5)  push int/bool/str parameter
211: ST    0, 0(6)  push int/bool/str parameter
212: LDA   6, -1(6)  preserve space for local vars
213: LDA   7, 23(5)  jump to procedure call
195: LDC   0, 214(5)  load return address into ac
196: LDA   6, -1(6)  push return address
197: LDC   3, 67(5)  push return address
198: SUB   3, 6, 3  push return address
199: JLE   3, 13(5)  push return address
200: ST    0, 0(6)  push return address
214: OUT   0, 0, 0  write integer
215: OUTNL 0, 0, 0  write new line
216: LDA   6, -1(6)  push fp
217: LDC   3, 67(5)  push fp
218: SUB   3, 6, 3  push fp
219: JLE   3, 13(5)  push fp
220: ST    4, 0(6)  push fp
221: LDA   4, 0(6)  set fp to sp
228: LDA   6, -1(6)  push zero as return value
229: LDC   3, 67(5)  push zero as return value
230: SUB   3, 6, 3  push zero as return value
231: JLE   3, 13(5)  push zero as return value
232: ST    5, 0(6)  push zero as return value
233: LDC   0, 27(5)  load string offset 27
234: LDA   6, -1(6)  push int/bool/str parameter
235: LDC   3, 67(5)  push int/bool/str parameter
236: SUB   3, 6, 3  push int/bool/str parameter
237: JLE   3, 13(5)  push int/bool/str parameter
238: ST    0, 0(6)  push int/bool/str parameter
239: LDA   6, -1(6)  preserve space for local vars
240: LDA   7, 23(5)  jump to procedure call
222: LDC   0, 241(5)  load return address into ac
223: LDA   6, -1(6)  push return address
224: LDC   3, 67(5)  push return address
225: SUB   3, 6, 3  push return address
226: JLE   3, 13(5)  push return address
227: ST    0, 0(6)  push return address
241: ST    0, 66(5)  store int/bool/string into previous used static data
242: LD    0, 66(5)  load int/bool/str from static data
243: OUT   0, 0, 0  write integer
244: OUTNL 0, 0, 0  write new line
245: LDA   6, -1(6)  push fp
246: LDC   3, 67(5)  push fp
247: SUB   3, 6, 3  push fp
248: JLE   3, 13(5)  push fp
249: ST    4, 0(6)  push fp
250: LDA   4, 0(6)  set fp to sp
257: LDA   6, -1(6)  push zero as return value
258: LDC   3, 67(5)  push zero as return value
259: SUB   3, 6, 3  push zero as return value
260: JLE   3, 13(5)  push zero as return value
261: ST    5, 0(6)  push zero as return value
262: LDC   0, 51(5)  load string offset 51
263: LDA   6, -1(6)  push int/bool/str parameter
264: LDC   3, 67(5)  push int/bool/str parameter
265: SUB   3, 6, 3  push int/bool/str parameter
266: JLE   3, 13(5)  push int/bool/str parameter
267: ST    0, 0(6)  push int/bool/str parameter
268: LDA   6, -1(6)  preserve space for local vars
269: LDA   7, 23(5)  jump to procedure call
251: LDC   0, 270(5)  load return address into ac
252: LDA   6, -1(6)  push return address
253: LDC   3, 67(5)  push return address
254: SUB   3, 6, 3  push return address
255: JLE   3, 13(5)  push return address
256: ST    0, 0(6)  push return address
270: OUT   0, 0, 0  write integer
271: OUTNL 0, 0, 0  write new line
272: LDA   6, -1(6)  push fp
273: LDC   3, 67(5)  push fp
274: SUB   3, 6, 3  push fp
275: JLE   3, 13(5)  push fp
276: ST    4, 0(6)  push fp
277: LDA   4, 0(6)  set fp to sp
284: LDA   6, -1(6)  push zero as return value
285: LDC   3, 67(5)  push zero as return value
286: SUB   3, 6, 3  push zero as return value
287: JLE   3, 13(5)  push zero as return value
288: ST    5, 0(6)  push zero as return value
289: LDC   0, 50(5)  load string offset 50
290: LDA   6, -1(6)  push int/bool/str parameter
291: LDC   3, 67(5)  push int/bool/str parameter
292: SUB   3, 6, 3  push int/bool/str parameter
293: JLE   3, 13(5)  push int/bool/str parameter
294: ST    0, 0(6)  push int/bool/str parameter
295: LDA   6, -1(6)  preserve space for local vars
296: LDA   7, 23(5)  jump to procedure call
278: LDC   0, 297(5)  load return address into ac
279: LDA   6, -1(6)  push return address
280: LDC   3, 67(5)  push return address
281: SUB   3, 6, 3  push return address
282: JLE   3, 13(5)  push return address
283: ST    0, 0(6)  push return address
297: OUT   0, 0, 0  write integer
298: OUTNL 0, 0, 0  write new line
299: LDA   6, -1(6)  push fp
300: LDC   3, 67(5)  push fp
301: SUB   3, 6, 3  push fp
302: JLE   3, 13(5)  push fp
303: ST    4, 0(6)  push fp
304: LDA   4, 0(6)  set fp to sp
311: LDA   6, -1(6)  push zero as return value
312: LDC   3, 67(5)  push zero as return value
313: SUB   3, 6, 3  push zero as return value
314: JLE   3, 13(5)  push zero as return value
315: ST    5, 0(6)  push zero as return value
316: LDC   0, 25(5)  load string offset 25
317: LDA   6, -1(6)  push int/bool/str parameter
318: LDC   3, 67(5)  push int/bool/str parameter
319: SUB   3, 6, 3  push int/bool/str parameter
320: JLE   3, 13(5)  push int/bool/str parameter
321: ST    0, 0(6)  push int/bool/str parameter
322: LDA   6, -1(6)  preserve space for local vars
323: LDA   7, 23(5)  jump to procedure call
305: LDC   0, 324(5)  load return address into ac
306: LDA   6, -1(6)  push return address
307: LDC   3, 67(5)  push return address
308: SUB   3, 6, 3  push return address
309: JLE   3, 13(5)  push return address
310: ST    0, 0(6)  push return address
324: OUT   0, 0, 0  write integer
325: OUTNL 0, 0, 0  write new line
326: HALT  0, 0, 0  program ends
