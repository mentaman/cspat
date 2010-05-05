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
36: LDC   3, 188(5)  push -1
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
46: LDC   3, 188(5)  push 1
47: SUB   3, 6, 3  push 1
48: JLE   3, 13(5)  push 1
49: ST    2, 0(6)  push 1
40: LDA   7, 9(7)  jump to start parsing str
50: LDC   2, 0(5)  load 0 as initial result
51: LDA   6, -1(6)  push 0
52: LDC   3, 188(5)  push 0
53: SUB   3, 6, 3  push 0
54: JLE   3, 13(5)  push 0
55: ST    2, 0(6)  push 0
56: LD    2, 0(6)  pop result into AC3
57: LDA   6, 1(6)  pop result into AC3
58: LDC   3, 10(5)  load 10 into ac4
59: MUL   2, 2, 3  mul result with 10
60: LDA   6, -1(6)  push result
61: LDC   3, 188(5)  push result
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
73: LDC   3, 188(5)  push result
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
91: LDC   0, 3(5)  load integer 3
92: LDA   1, 0(4)  load fp into ac2
93: ST    0, -5(1)  store int/bool/string into stack
94: LDC   0, 2(5)  load integer 2
95: LDA   1, 0(4)  load fp into ac2
96: ST    0, -6(1)  store int/bool/string into stack
97: LDA   1, 0(4)  load fp into ac2
98: LD    0, -5(1)  load int/bool/str from stack
99: LDA   6, -1(6)  push first child's value
100: LDC   3, 188(5)  push first child's value
101: SUB   3, 6, 3  push first child's value
102: JLE   3, 13(5)  push first child's value
103: ST    0, 0(6)  push first child's value
104: LDA   1, 0(4)  load fp into ac2
105: LD    0, -6(1)  load int/bool/str from stack
106: LD    1, 0(6)  pop first child's value
107: LDA   6, 1(6)  pop first child's value
108: ADD   0, 0, 1  add two children
109: LDA   6, -1(6)  push first child's value
110: LDC   3, 188(5)  push first child's value
111: SUB   3, 6, 3  push first child's value
112: JLE   3, 13(5)  push first child's value
113: ST    0, 0(6)  push first child's value
114: LDA   1, 0(4)  load fp into ac2
115: LD    0, -3(1)  load int/bool/str from stack
116: LD    1, 0(6)  pop first child's value
117: LDA   6, 1(6)  pop first child's value
118: ADD   0, 0, 1  add two children
119: ST    0, 187(5)  store int/bool/string into previous used static data
120: LD    0, 187(5)  load int/bool/str from static data
121: LDA   6, -1(6)  push first child's value
122: LDC   3, 188(5)  push first child's value
123: SUB   3, 6, 3  push first child's value
124: JLE   3, 13(5)  push first child's value
125: ST    0, 0(6)  push first child's value
126: LDC   0, 9(5)  load integer 9
127: LD    1, 0(6)  pop first child's value
128: LDA   6, 1(6)  pop first child's value
129: SUB   1, 1, 0  greater than
130: LDC   0, 1(5)  load 1 as true
131: JGT   1, 1(7)  skip load false
132: LDC   0, 0(5)  load 0 as false
134: LDC   0, 1(5)  load booleantrue
135: LDA   1, 0(4)  load fp into ac2
136: ST    0, -4(1)  store int/bool/string into stack
133: JEQ   0, 4(7)  if expr not true
138: LD    0, 187(5)  load int/bool/str from static data
139: LDA   6, -1(6)  push first child's value
140: LDC   3, 188(5)  push first child's value
141: SUB   3, 6, 3  push first child's value
142: JLE   3, 13(5)  push first child's value
143: ST    0, 0(6)  push first child's value
144: LDC   0, 7(5)  load integer 7
145: LD    1, 0(6)  pop first child's value
146: LDA   6, 1(6)  pop first child's value
147: SUB   1, 1, 0  greater than
148: LDC   0, 1(5)  load 1 as true
149: JGT   1, 1(7)  skip load false
150: LDC   0, 0(5)  load 0 as false
152: LDC   0, 0(5)  load booleanfalse
153: LDA   1, 0(4)  load fp into ac2
154: ST    0, -4(1)  store int/bool/string into stack
151: JEQ   0, 4(7)  if expr not true
156: LDC   0, 1(5)  load booleantrue
157: LDA   1, 0(4)  load fp into ac2
158: ST    0, -4(1)  store int/bool/string into stack
137: LDA   7, 21(7)  Jump to the end of if
155: LDA   7, 3(7)  Jump to the end of if
159: LDA   1, 0(4)  load fp into ac2
160: LD    0, -4(1)  load int/bool/str from stack
162: LDC   0, 126(5)  load string offset 126
163: LDA   1, 0(4)  load fp into ac2
164: ST    0, -2(1)  store int/bool/string into stack
161: JEQ   0, 4(7)  if expr not true
166: LDC   0, 78(5)  load string offset 78
167: LDA   1, 0(4)  load fp into ac2
168: ST    0, -2(1)  store int/bool/string into stack
165: LDA   7, 3(7)  Jump to the end of if
169: LD    0, -2(4)  load int/bool/string offset as return value
170: LD    1, -1(4)  load return address
171: LDA   6, 0(4)  change sp to fp + 1
172: LD    4, 0(6)  restore fp
173: LDA   6, 1(6)  restore fp
174: LDA   7, 0(1)  jump to the return address
2: LDA   7, 175(5)  jump to start of the program
175: LDC   0, 0(5)  load integer 0
176: ST    0, 187(5)  store int/bool/string into previous used static data
177: LDC   0, 0(5)  load integer 0
178: ST    0, 186(5)  store int/bool/string into previous used static data
179: LDA   6, -1(6)  push fp
180: LDC   3, 188(5)  push fp
181: SUB   3, 6, 3  push fp
182: JLE   3, 13(5)  push fp
183: ST    4, 0(6)  push fp
184: LDA   4, 0(6)  set fp to sp
191: LDA   6, -1(6)  push zero as return value
192: LDC   3, 188(5)  push zero as return value
193: SUB   3, 6, 3  push zero as return value
194: JLE   3, 13(5)  push zero as return value
195: ST    5, 0(6)  push zero as return value
196: LDC   0, 6(5)  load integer 6
197: LDA   6, -1(6)  push int/bool/str parameter
198: LDC   3, 188(5)  push int/bool/str parameter
199: SUB   3, 6, 3  push int/bool/str parameter
200: JLE   3, 13(5)  push int/bool/str parameter
201: ST    0, 0(6)  push int/bool/str parameter
202: LDA   6, -4(6)  preserve space for local vars
203: LDA   7, 91(5)  jump to procedure call
185: LDC   0, 204(5)  load return address into ac
186: LDA   6, -1(6)  push return address
187: LDC   3, 188(5)  push return address
188: SUB   3, 6, 3  push return address
189: JLE   3, 13(5)  push return address
190: ST    0, 0(6)  push return address
204: LD    1, 0(0)  load str length into ac2
205: JEQ   1, 5(7)  output nothing when empty
206: LDA   0, 1(0)  increase offset
207: LD    2, 0(0)  load char into ac3
208: OUTC   2, 2, 2  write char
209: LDA   1, -1(1)  decrease length of remaining string in ac2
210: JNE   1, -5(7)  continue print if not yet finish
211: OUTNL 0, 0, 0  write new line
212: LDA   6, -1(6)  push fp
213: LDC   3, 188(5)  push fp
214: SUB   3, 6, 3  push fp
215: JLE   3, 13(5)  push fp
216: ST    4, 0(6)  push fp
217: LDA   4, 0(6)  set fp to sp
224: LDA   6, -1(6)  push zero as return value
225: LDC   3, 188(5)  push zero as return value
226: SUB   3, 6, 3  push zero as return value
227: JLE   3, 13(5)  push zero as return value
228: ST    5, 0(6)  push zero as return value
229: LDC   0, 4(5)  load integer 4
230: LDA   6, -1(6)  push int/bool/str parameter
231: LDC   3, 188(5)  push int/bool/str parameter
232: SUB   3, 6, 3  push int/bool/str parameter
233: JLE   3, 13(5)  push int/bool/str parameter
234: ST    0, 0(6)  push int/bool/str parameter
235: LDA   6, -4(6)  preserve space for local vars
236: LDA   7, 91(5)  jump to procedure call
218: LDC   0, 237(5)  load return address into ac
219: LDA   6, -1(6)  push return address
220: LDC   3, 188(5)  push return address
221: SUB   3, 6, 3  push return address
222: JLE   3, 13(5)  push return address
223: ST    0, 0(6)  push return address
237: LD    1, 0(0)  load str length into ac2
238: JEQ   1, 5(7)  output nothing when empty
239: LDA   0, 1(0)  increase offset
240: LD    2, 0(0)  load char into ac3
241: OUTC   2, 2, 2  write char
242: LDA   1, -1(1)  decrease length of remaining string in ac2
243: JNE   1, -5(7)  continue print if not yet finish
244: OUTNL 0, 0, 0  write new line
245: LDA   6, -1(6)  push fp
246: LDC   3, 188(5)  push fp
247: SUB   3, 6, 3  push fp
248: JLE   3, 13(5)  push fp
249: ST    4, 0(6)  push fp
250: LDA   4, 0(6)  set fp to sp
257: LDA   6, -1(6)  push zero as return value
258: LDC   3, 188(5)  push zero as return value
259: SUB   3, 6, 3  push zero as return value
260: JLE   3, 13(5)  push zero as return value
261: ST    5, 0(6)  push zero as return value
262: LDC   0, 1(5)  load integer 1
263: LDA   6, -1(6)  push int/bool/str parameter
264: LDC   3, 188(5)  push int/bool/str parameter
265: SUB   3, 6, 3  push int/bool/str parameter
266: JLE   3, 13(5)  push int/bool/str parameter
267: ST    0, 0(6)  push int/bool/str parameter
268: LDA   6, -4(6)  preserve space for local vars
269: LDA   7, 91(5)  jump to procedure call
251: LDC   0, 270(5)  load return address into ac
252: LDA   6, -1(6)  push return address
253: LDC   3, 188(5)  push return address
254: SUB   3, 6, 3  push return address
255: JLE   3, 13(5)  push return address
256: ST    0, 0(6)  push return address
270: LD    1, 0(0)  load str length into ac2
271: JEQ   1, 5(7)  output nothing when empty
272: LDA   0, 1(0)  increase offset
273: LD    2, 0(0)  load char into ac3
274: OUTC   2, 2, 2  write char
275: LDA   1, -1(1)  decrease length of remaining string in ac2
276: JNE   1, -5(7)  continue print if not yet finish
277: OUTNL 0, 0, 0  write new line
278: LD    0, 187(5)  load int/bool/str from static data
279: OUT   0, 0, 0  write integer
280: OUTNL 0, 0, 0  write new line
281: LD    0, 186(5)  load int/bool/str from static data
282: OUT   0, 0, 0  write integer
283: OUTNL 0, 0, 0  write new line
284: HALT  0, 0, 0  program ends
