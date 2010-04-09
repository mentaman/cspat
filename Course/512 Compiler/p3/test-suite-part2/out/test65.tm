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
91: LDA   1, 0(4)  load fp into ac2
92: LD    0, -3(1)  load int/bool/str from stack
93: LDA   6, -1(6)  push array index
94: LDC   3, 186(5)  push array index
95: SUB   3, 6, 3  push array index
96: JLE   3, 13(5)  push array index
97: ST    0, 0(6)  push array index
98: LDA   1, 0(4)  load fp into ac2
99: LD    0, -2(1)  load int/bool/str from stack
100: LDA   6, -1(6)  push array index
101: LDC   3, 186(5)  push array index
102: SUB   3, 6, 3  push array index
103: JLE   3, 13(5)  push array index
104: ST    0, 0(6)  push array index
105: LDC   0, 2(5)  push array dimension
106: LDC   0, 0(5)  load 0 to ac
107: LD    1, 0(6)  pop index
108: LDA   6, 1(6)  pop index
109: JLT   1, 3(5)  jump if index less than 0
110: LDC   3, 2(5)  load array size
111: SUB   3, 3, 1  sub max size with index
112: JLE   3, 3(5)  jump if index greater than size - 1
113: LDC   2, 5(5)  load size of subarray
114: MUL   1, 1, 2  compute 0 dim
115: ADD   0, 0, 1  add result
116: LD    1, 0(6)  pop index
117: LDA   6, 1(6)  pop index
118: JLT   1, 3(5)  jump if index less than 0
119: LDC   3, 5(5)  load array size
120: SUB   3, 3, 1  sub max size with index
121: JLE   3, 3(5)  jump if index greater than size - 1
122: LDC   2, 1(5)  load size of subarray
123: MUL   1, 1, 2  compute 1 dim
124: ADD   0, 0, 1  add result
125: LDA   1, 0(4)  load fp into ac2
126: LD    1, -14(1)  load local offset into ac2
127: ADD   0, 0, 1  compute final offset
128: LDA   6, -1(6)  push final offset
129: LDC   3, 186(5)  push final offset
130: SUB   3, 6, 3  push final offset
131: JLE   3, 13(5)  push final offset
132: ST    0, 0(6)  push final offset
133: LDC   0, 3(5)  load integer 3
134: LD    1, 0(6)  pop final offset
135: LDA   6, 1(6)  pop final offset
136: ST    0, 0(1)  store value into array static data
137: LDA   1, 0(4)  load fp into ac2
138: LD    0, -3(1)  load int/bool/str from stack
139: LDA   6, -1(6)  push array index
140: LDC   3, 186(5)  push array index
141: SUB   3, 6, 3  push array index
142: JLE   3, 13(5)  push array index
143: ST    0, 0(6)  push array index
144: LDA   1, 0(4)  load fp into ac2
145: LD    0, -2(1)  load int/bool/str from stack
146: LDA   6, -1(6)  push array index
147: LDC   3, 186(5)  push array index
148: SUB   3, 6, 3  push array index
149: JLE   3, 13(5)  push array index
150: ST    0, 0(6)  push array index
151: LDC   0, 2(5)  push array dimension
152: LDC   0, 0(5)  load 0 to ac
153: LD    1, 0(6)  pop index
154: LDA   6, 1(6)  pop index
155: JLT   1, 3(5)  jump if index less than 0
156: LDC   3, 2(5)  load array size
157: SUB   3, 3, 1  sub max size with index
158: JLE   3, 3(5)  jump if index greater than size - 1
159: LDC   2, 5(5)  load size of subarray
160: MUL   1, 1, 2  compute 0 dim
161: ADD   0, 0, 1  add result
162: LD    1, 0(6)  pop index
163: LDA   6, 1(6)  pop index
164: JLT   1, 3(5)  jump if index less than 0
165: LDC   3, 5(5)  load array size
166: SUB   3, 3, 1  sub max size with index
167: JLE   3, 3(5)  jump if index greater than size - 1
168: LDC   2, 1(5)  load size of subarray
169: MUL   1, 1, 2  compute 1 dim
170: ADD   0, 0, 1  add result
171: LDA   1, 0(4)  load fp into ac2
172: LD    1, -14(1)  load local offset into ac2
173: ADD   0, 0, 1  compute final offset
174: LD    0, 0(0)  load data from array
175: OUT   0, 0, 0  write integer
176: OUTNL 0, 0, 0  write new line
177: LDA   1, 0(4)  load fp into ac2
178: LD    0, -2(1)  load int/bool/str from stack
179: OUT   0, 0, 0  write integer
180: OUTNL 0, 0, 0  write new line
181: LDA   1, 0(4)  load fp into ac2
182: LD    0, -3(1)  load int/bool/str from stack
183: OUT   0, 0, 0  write integer
184: OUTNL 0, 0, 0  write new line
185: LD    1, -1(4)  load return address
186: LDA   6, 0(4)  change sp to fp + 1
187: LD    4, 0(6)  restore fp
188: LDA   6, 1(6)  restore fp
189: LDA   7, 0(1)  jump to the return address
2: LDA   7, 190(5)  jump to start of the program
190: LDA   6, -1(6)  push fp
191: LDC   3, 186(5)  push fp
192: SUB   3, 6, 3  push fp
193: JLE   3, 13(5)  push fp
194: ST    4, 0(6)  push fp
195: LDA   4, 0(6)  set fp to sp
202: LDC   0, 1(5)  load integer 1
203: LDA   6, -1(6)  push int/bool/str parameter
204: LDC   3, 186(5)  push int/bool/str parameter
205: SUB   3, 6, 3  push int/bool/str parameter
206: JLE   3, 13(5)  push int/bool/str parameter
207: ST    0, 0(6)  push int/bool/str parameter
208: LDC   0, 4(5)  load integer 4
209: LDA   6, -1(6)  push int/bool/str parameter
210: LDC   3, 186(5)  push int/bool/str parameter
211: SUB   3, 6, 3  push int/bool/str parameter
212: JLE   3, 13(5)  push int/bool/str parameter
213: ST    0, 0(6)  push int/bool/str parameter
214: LDC   0, 10(5)  load array localVariableSize: 10
215: SUB   0, 6, 0  compute absolute address of the array
216: ST    0, -11(6)  store absolute array address
217: LDA   6, -11(6)  preserve space for local vars
218: LDA   7, 91(5)  jump to procedure call
196: LDC   0, 219(5)  load return address into ac
197: LDA   6, -1(6)  push return address
198: LDC   3, 186(5)  push return address
199: SUB   3, 6, 3  push return address
200: JLE   3, 13(5)  push return address
201: ST    0, 0(6)  push return address
219: LDA   6, -1(6)  push fp
220: LDC   3, 186(5)  push fp
221: SUB   3, 6, 3  push fp
222: JLE   3, 13(5)  push fp
223: ST    4, 0(6)  push fp
224: LDA   4, 0(6)  set fp to sp
231: LDC   0, 0(5)  load integer 0
232: LDA   6, -1(6)  push int/bool/str parameter
233: LDC   3, 186(5)  push int/bool/str parameter
234: SUB   3, 6, 3  push int/bool/str parameter
235: JLE   3, 13(5)  push int/bool/str parameter
236: ST    0, 0(6)  push int/bool/str parameter
237: LDC   0, 3(5)  load integer 3
238: LDA   6, -1(6)  push int/bool/str parameter
239: LDC   3, 186(5)  push int/bool/str parameter
240: SUB   3, 6, 3  push int/bool/str parameter
241: JLE   3, 13(5)  push int/bool/str parameter
242: ST    0, 0(6)  push int/bool/str parameter
243: LDC   0, 10(5)  load array localVariableSize: 10
244: SUB   0, 6, 0  compute absolute address of the array
245: ST    0, -11(6)  store absolute array address
246: LDA   6, -11(6)  preserve space for local vars
247: LDA   7, 91(5)  jump to procedure call
225: LDC   0, 248(5)  load return address into ac
226: LDA   6, -1(6)  push return address
227: LDC   3, 186(5)  push return address
228: SUB   3, 6, 3  push return address
229: JLE   3, 13(5)  push return address
230: ST    0, 0(6)  push return address
248: HALT  0, 0, 0  program ends
