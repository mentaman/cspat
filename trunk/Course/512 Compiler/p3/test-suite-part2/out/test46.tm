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
0: LD    6, 0(5)  save stack pointer
1: LD    4, 0(5)  save frame pointer
3: LDC   0, 38(5)  load array error str address
4: LD    1, 0(0)  load str length into ac2
5: JEQ   1, 5(7)  output nothing when empty
6: LDA   0, 1(0)  increase offset
7: LD    2, 0(0)  load char into ac3
8: OUTC   2, 2, 2  write char
9: LDA   1, -1(1)  decrease length of remaining string in ac2
10: JNE   1, -5(7)  continue print if not yet finish
11: OUTNL 0, 0, 0  emit newline
12: HALT  0, 0, 0  stop because of array error
13: LDC   0, 8(5)  load out of memory str address
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
27: LDC   3, 81(5)  push 0
28: SUB   3, 6, 3  push 0
29: JLE   3, 13(5)  push 0
30: ST    2, 0(6)  push 0
31: LD    2, 0(6)  pop result into AC3
32: LDA   6, 1(6)  pop result into AC3
33: LDC   3, 10(5)  load 10 into ac4
34: MUL   2, 2, 3  mul result with 10
35: LDA   6, -1(6)  push result
36: LDC   3, 81(5)  push result
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
48: LDC   3, 81(5)  push result
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
63: LDC   0, 3(5)  load integer 3
64: LDA   1, 0(4)  load fp into ac2
65: ST    0, -5(1)  store int/bool/string into stack
66: LDC   0, 2(5)  load integer 2
67: LDA   1, 0(4)  load fp into ac2
68: ST    0, -6(1)  store int/bool/string into stack
69: LDA   1, 0(4)  load fp into ac2
70: LD    0, -5(1)  load int/bool/str from stack
71: LDA   6, -1(6)  push first child's value
72: LDC   3, 81(5)  push first child's value
73: SUB   3, 6, 3  push first child's value
74: JLE   3, 13(5)  push first child's value
75: ST    0, 0(6)  push first child's value
76: LDA   1, 0(4)  load fp into ac2
77: LD    0, -6(1)  load int/bool/str from stack
78: LD    1, 0(6)  pop first child's value
79: LDA   6, 1(6)  pop first child's value
80: ADD   0, 0, 1  add two children
81: LDA   6, -1(6)  push first child's value
82: LDC   3, 81(5)  push first child's value
83: SUB   3, 6, 3  push first child's value
84: JLE   3, 13(5)  push first child's value
85: ST    0, 0(6)  push first child's value
86: LDA   1, 0(4)  load fp into ac2
87: LD    0, -3(1)  load int/bool/str from stack
88: LD    1, 0(6)  pop first child's value
89: LDA   6, 1(6)  pop first child's value
90: ADD   0, 0, 1  add two children
91: ST    0, 80(5)  store int/bool/string into previous used static data
92: LD    0, 80(5)  load int/bool/str from static data
93: LDA   6, -1(6)  push first child's value
94: LDC   3, 81(5)  push first child's value
95: SUB   3, 6, 3  push first child's value
96: JLE   3, 13(5)  push first child's value
97: ST    0, 0(6)  push first child's value
98: LDC   0, 9(5)  load integer 9
99: LD    1, 0(6)  pop first child's value
100: LDA   6, 1(6)  pop first child's value
101: SUB   1, 1, 0  greater than
102: LDC   0, 1(5)  load 1 as true
103: JGT   1, 1(7)  skip load false
104: LDC   0, 0(5)  load 0 as false
106: LDC   0, 1(5)  load booleantrue
107: LDA   1, 0(4)  load fp into ac2
108: ST    0, -4(1)  store int/bool/string into stack
105: JEQ   0, 4(7)  if expr not true
110: LD    0, 80(5)  load int/bool/str from static data
111: LDA   6, -1(6)  push first child's value
112: LDC   3, 81(5)  push first child's value
113: SUB   3, 6, 3  push first child's value
114: JLE   3, 13(5)  push first child's value
115: ST    0, 0(6)  push first child's value
116: LDC   0, 7(5)  load integer 7
117: LD    1, 0(6)  pop first child's value
118: LDA   6, 1(6)  pop first child's value
119: SUB   1, 1, 0  greater than
120: LDC   0, 1(5)  load 1 as true
121: JGT   1, 1(7)  skip load false
122: LDC   0, 0(5)  load 0 as false
124: LDC   0, 0(5)  load booleanfalse
125: LDA   1, 0(4)  load fp into ac2
126: ST    0, -4(1)  store int/bool/string into stack
123: JEQ   0, 4(7)  if expr not true
128: LDC   0, 1(5)  load booleantrue
129: LDA   1, 0(4)  load fp into ac2
130: ST    0, -4(1)  store int/bool/string into stack
109: LDA   7, 21(7)  Jump to the end of if
127: LDA   7, 3(7)  Jump to the end of if
131: LDA   1, 0(4)  load fp into ac2
132: LD    0, -4(1)  load int/bool/str from stack
134: LDC   0, 63(5)  load string offset 63
135: LDA   1, 0(4)  load fp into ac2
136: ST    0, -2(1)  store int/bool/string into stack
133: JEQ   0, 4(7)  if expr not true
138: LDC   0, 22(5)  load string offset 22
139: LDA   1, 0(4)  load fp into ac2
140: ST    0, -2(1)  store int/bool/string into stack
137: LDA   7, 3(7)  Jump to the end of if
141: LD    0, -2(4)  load int/bool/string offset as return value
142: LD    1, -1(4)  load return address
143: LDA   6, 0(4)  change sp to fp + 1
144: LD    4, 0(6)  restore fp
145: LDA   6, 1(6)  restore fp
146: LDA   7, 0(1)  jump to the return address
2: LDA   7, 147(5)  jump to start of the program
147: LDC   0, 0(5)  load integer 0
148: ST    0, 80(5)  store int/bool/string into previous used static data
149: LDC   0, 0(5)  load integer 0
150: ST    0, 79(5)  store int/bool/string into previous used static data
151: LDA   6, -1(6)  push fp
152: LDC   3, 81(5)  push fp
153: SUB   3, 6, 3  push fp
154: JLE   3, 13(5)  push fp
155: ST    4, 0(6)  push fp
156: LDA   4, 0(6)  set fp to sp
163: LDA   6, -1(6)  push zero as return value
164: LDC   3, 81(5)  push zero as return value
165: SUB   3, 6, 3  push zero as return value
166: JLE   3, 13(5)  push zero as return value
167: ST    5, 0(6)  push zero as return value
168: LDC   0, 6(5)  load integer 6
169: LDA   6, -1(6)  push int/bool/str parameter
170: LDC   3, 81(5)  push int/bool/str parameter
171: SUB   3, 6, 3  push int/bool/str parameter
172: JLE   3, 13(5)  push int/bool/str parameter
173: ST    0, 0(6)  push int/bool/str parameter
174: LDA   6, -4(6)  preserve space for local vars
175: LDA   7, 63(5)  jump to procedure call
157: LDC   0, 176(5)  load return address into ac
158: LDA   6, -1(6)  push return address
159: LDC   3, 81(5)  push return address
160: SUB   3, 6, 3  push return address
161: JLE   3, 13(5)  push return address
162: ST    0, 0(6)  push return address
176: LD    1, 0(0)  load str length into ac2
177: JEQ   1, 5(7)  output nothing when empty
178: LDA   0, 1(0)  increase offset
179: LD    2, 0(0)  load char into ac3
180: OUTC   2, 2, 2  write char
181: LDA   1, -1(1)  decrease length of remaining string in ac2
182: JNE   1, -5(7)  continue print if not yet finish
183: OUTNL 0, 0, 0  write new line
184: LDA   6, -1(6)  push fp
185: LDC   3, 81(5)  push fp
186: SUB   3, 6, 3  push fp
187: JLE   3, 13(5)  push fp
188: ST    4, 0(6)  push fp
189: LDA   4, 0(6)  set fp to sp
196: LDA   6, -1(6)  push zero as return value
197: LDC   3, 81(5)  push zero as return value
198: SUB   3, 6, 3  push zero as return value
199: JLE   3, 13(5)  push zero as return value
200: ST    5, 0(6)  push zero as return value
201: LDC   0, 4(5)  load integer 4
202: LDA   6, -1(6)  push int/bool/str parameter
203: LDC   3, 81(5)  push int/bool/str parameter
204: SUB   3, 6, 3  push int/bool/str parameter
205: JLE   3, 13(5)  push int/bool/str parameter
206: ST    0, 0(6)  push int/bool/str parameter
207: LDA   6, -4(6)  preserve space for local vars
208: LDA   7, 63(5)  jump to procedure call
190: LDC   0, 209(5)  load return address into ac
191: LDA   6, -1(6)  push return address
192: LDC   3, 81(5)  push return address
193: SUB   3, 6, 3  push return address
194: JLE   3, 13(5)  push return address
195: ST    0, 0(6)  push return address
209: LD    1, 0(0)  load str length into ac2
210: JEQ   1, 5(7)  output nothing when empty
211: LDA   0, 1(0)  increase offset
212: LD    2, 0(0)  load char into ac3
213: OUTC   2, 2, 2  write char
214: LDA   1, -1(1)  decrease length of remaining string in ac2
215: JNE   1, -5(7)  continue print if not yet finish
216: OUTNL 0, 0, 0  write new line
217: LDA   6, -1(6)  push fp
218: LDC   3, 81(5)  push fp
219: SUB   3, 6, 3  push fp
220: JLE   3, 13(5)  push fp
221: ST    4, 0(6)  push fp
222: LDA   4, 0(6)  set fp to sp
229: LDA   6, -1(6)  push zero as return value
230: LDC   3, 81(5)  push zero as return value
231: SUB   3, 6, 3  push zero as return value
232: JLE   3, 13(5)  push zero as return value
233: ST    5, 0(6)  push zero as return value
234: LDC   0, 1(5)  load integer 1
235: LDA   6, -1(6)  push int/bool/str parameter
236: LDC   3, 81(5)  push int/bool/str parameter
237: SUB   3, 6, 3  push int/bool/str parameter
238: JLE   3, 13(5)  push int/bool/str parameter
239: ST    0, 0(6)  push int/bool/str parameter
240: LDA   6, -4(6)  preserve space for local vars
241: LDA   7, 63(5)  jump to procedure call
223: LDC   0, 242(5)  load return address into ac
224: LDA   6, -1(6)  push return address
225: LDC   3, 81(5)  push return address
226: SUB   3, 6, 3  push return address
227: JLE   3, 13(5)  push return address
228: ST    0, 0(6)  push return address
242: LD    1, 0(0)  load str length into ac2
243: JEQ   1, 5(7)  output nothing when empty
244: LDA   0, 1(0)  increase offset
245: LD    2, 0(0)  load char into ac3
246: OUTC   2, 2, 2  write char
247: LDA   1, -1(1)  decrease length of remaining string in ac2
248: JNE   1, -5(7)  continue print if not yet finish
249: OUTNL 0, 0, 0  write new line
250: LD    0, 80(5)  load int/bool/str from static data
251: OUT   0, 0, 0  write integer
252: OUTNL 0, 0, 0  write new line
253: LD    0, 79(5)  load int/bool/str from static data
254: OUT   0, 0, 0  write integer
255: OUTNL 0, 0, 0  write new line
256: HALT  0, 0, 0  program ends
