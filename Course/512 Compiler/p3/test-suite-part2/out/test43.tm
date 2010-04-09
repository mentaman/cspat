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
.DATA    2
.SDATA   "50"
.DATA    3
.SDATA   "+50"
.DATA    18
.SDATA   "array index error!"
.DATA    5
.SDATA   "There"
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
3: LDC   0, 85(5)  load array error str address
4: LD    1, 0(0)  load str length into ac2
5: JEQ   1, 5(7)  output nothing when empty
6: LDA   0, 1(0)  increase offset
7: LD    2, 0(0)  load char into ac3
8: OUTC   2, 2, 2  write char
9: LDA   1, -1(1)  decrease length of remaining string in ac2
10: JNE   1, -5(7)  continue print if not yet finish
11: OUTNL 0, 0, 0  emit newline
12: HALT  0, 0, 0  stop because of array error
13: LDC   0, 130(5)  load out of memory str address
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
36: LDC   3, 156(5)  push -1
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
46: LDC   3, 156(5)  push 1
47: SUB   3, 6, 3  push 1
48: JLE   3, 13(5)  push 1
49: ST    2, 0(6)  push 1
40: LDA   7, 9(7)  jump to start parsing str
50: LDC   2, 0(5)  load 0 as initial result
51: LDA   6, -1(6)  push 0
52: LDC   3, 156(5)  push 0
53: SUB   3, 6, 3  push 0
54: JLE   3, 13(5)  push 0
55: ST    2, 0(6)  push 0
56: LD    2, 0(6)  pop result into AC3
57: LDA   6, 1(6)  pop result into AC3
58: LDC   3, 10(5)  load 10 into ac4
59: MUL   2, 2, 3  mul result with 10
60: LDA   6, -1(6)  push result
61: LDC   3, 156(5)  push result
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
73: LDC   3, 156(5)  push result
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
91: LDC   0, 7(5)  load integer 7
92: LDA   1, 0(4)  load fp into ac2
93: ST    0, -4(1)  store int/bool/string into stack
94: LDC   0, 9(5)  load integer 9
95: LDA   1, 0(4)  load fp into ac2
96: ST    0, -5(1)  store int/bool/string into stack
97: LDA   1, 0(4)  load fp into ac2
98: LD    0, -3(1)  load int/bool/str from stack
100: LD    0, 155(5)  load int/bool/str from static data
101: LDA   6, -1(6)  push first child's value
102: LDC   3, 156(5)  push first child's value
103: SUB   3, 6, 3  push first child's value
104: JLE   3, 13(5)  push first child's value
105: ST    0, 0(6)  push first child's value
106: LDA   1, 0(4)  load fp into ac2
107: LD    0, -4(1)  load int/bool/str from stack
108: LD    1, 0(6)  pop first child's value
109: LDA   6, 1(6)  pop first child's value
110: ADD   0, 0, 1  add two children
111: LDA   6, -1(6)  push first child's value
112: LDC   3, 156(5)  push first child's value
113: SUB   3, 6, 3  push first child's value
114: JLE   3, 13(5)  push first child's value
115: ST    0, 0(6)  push first child's value
116: LDA   1, 0(4)  load fp into ac2
117: LD    0, -5(1)  load int/bool/str from stack
118: LD    1, 0(6)  pop first child's value
119: LDA   6, 1(6)  pop first child's value
120: ADD   0, 0, 1  add two children
121: LDA   6, -1(6)  push first child's value
122: LDC   3, 156(5)  push first child's value
123: SUB   3, 6, 3  push first child's value
124: JLE   3, 13(5)  push first child's value
125: ST    0, 0(6)  push first child's value
126: LDA   1, 0(4)  load fp into ac2
127: LD    0, -2(1)  load int/bool/str from stack
128: LD    1, 0(6)  pop first child's value
129: LDA   6, 1(6)  pop first child's value
130: ADD   0, 0, 1  add two children
131: ST    0, 155(5)  store int/bool/string into previous used static data
99: JEQ   0, 33(7)  if expr not true
133: LD    0, 155(5)  load int/bool/str from static data
134: LDA   6, -1(6)  push first child's value
135: LDC   3, 156(5)  push first child's value
136: SUB   3, 6, 3  push first child's value
137: JLE   3, 13(5)  push first child's value
138: ST    0, 0(6)  push first child's value
139: LDA   1, 0(4)  load fp into ac2
140: LD    0, -4(1)  load int/bool/str from stack
141: LD    1, 0(6)  pop first child's value
142: LDA   6, 1(6)  pop first child's value
143: ADD   0, 0, 1  add two children
144: LDA   6, -1(6)  push first child's value
145: LDC   3, 156(5)  push first child's value
146: SUB   3, 6, 3  push first child's value
147: JLE   3, 13(5)  push first child's value
148: ST    0, 0(6)  push first child's value
149: LDA   1, 0(4)  load fp into ac2
150: LD    0, -5(1)  load int/bool/str from stack
151: LD    1, 0(6)  pop first child's value
152: LDA   6, 1(6)  pop first child's value
153: ADD   0, 0, 1  add two children
154: ST    0, 155(5)  store int/bool/string into previous used static data
132: LDA   7, 22(7)  Jump to the end of if
155: LD    1, -1(4)  load return address
156: LDA   6, 0(4)  change sp to fp + 1
157: LD    4, 0(6)  restore fp
158: LDA   6, 1(6)  restore fp
159: LDA   7, 0(1)  jump to the return address
2: LDA   7, 160(5)  jump to start of the program
160: LDC   0, 16(5)  load integer 16
161: ST    0, 155(5)  store int/bool/string into previous used static data
162: LDC   0, 0(5)  load integer 0
163: ST    0, 154(5)  store int/bool/string into previous used static data
164: LDA   6, -1(6)  push fp
165: LDC   3, 156(5)  push fp
166: SUB   3, 6, 3  push fp
167: JLE   3, 13(5)  push fp
168: ST    4, 0(6)  push fp
169: LDA   4, 0(6)  set fp to sp
176: LDC   0, 100(5)  load integer 100
177: LDA   6, -1(6)  push int/bool/str parameter
178: LDC   3, 156(5)  push int/bool/str parameter
179: SUB   3, 6, 3  push int/bool/str parameter
180: JLE   3, 13(5)  push int/bool/str parameter
181: ST    0, 0(6)  push int/bool/str parameter
182: LDC   0, 0(5)  load booleanfalse
183: LDA   6, -1(6)  push int/bool/str parameter
184: LDC   3, 156(5)  push int/bool/str parameter
185: SUB   3, 6, 3  push int/bool/str parameter
186: JLE   3, 13(5)  push int/bool/str parameter
187: ST    0, 0(6)  push int/bool/str parameter
188: LDA   6, -2(6)  preserve space for local vars
189: LDA   7, 91(5)  jump to procedure call
170: LDC   0, 190(5)  load return address into ac
171: LDA   6, -1(6)  push return address
172: LDC   3, 156(5)  push return address
173: SUB   3, 6, 3  push return address
174: JLE   3, 13(5)  push return address
175: ST    0, 0(6)  push return address
190: LD    0, 155(5)  load int/bool/str from static data
191: OUT   0, 0, 0  write integer
192: OUTNL 0, 0, 0  write new line
193: LDA   6, -1(6)  push fp
194: LDC   3, 156(5)  push fp
195: SUB   3, 6, 3  push fp
196: JLE   3, 13(5)  push fp
197: ST    4, 0(6)  push fp
198: LDA   4, 0(6)  set fp to sp
205: LDC   0, 32(5)  load integer 32
206: LDC   1, 0(5)  load 0 into AC2
207: SUB   0, 1, 0  compute negative number
208: LDA   6, -1(6)  push int/bool/str parameter
209: LDC   3, 156(5)  push int/bool/str parameter
210: SUB   3, 6, 3  push int/bool/str parameter
211: JLE   3, 13(5)  push int/bool/str parameter
212: ST    0, 0(6)  push int/bool/str parameter
213: LDC   0, 1(5)  load booleantrue
214: LDA   6, -1(6)  push int/bool/str parameter
215: LDC   3, 156(5)  push int/bool/str parameter
216: SUB   3, 6, 3  push int/bool/str parameter
217: JLE   3, 13(5)  push int/bool/str parameter
218: ST    0, 0(6)  push int/bool/str parameter
219: LDA   6, -2(6)  preserve space for local vars
220: LDA   7, 91(5)  jump to procedure call
199: LDC   0, 221(5)  load return address into ac
200: LDA   6, -1(6)  push return address
201: LDC   3, 156(5)  push return address
202: SUB   3, 6, 3  push return address
203: JLE   3, 13(5)  push return address
204: ST    0, 0(6)  push return address
221: LD    0, 155(5)  load int/bool/str from static data
222: OUT   0, 0, 0  write integer
223: OUTNL 0, 0, 0  write new line
224: LD    0, 154(5)  load int/bool/str from static data
225: OUT   0, 0, 0  write integer
226: OUTNL 0, 0, 0  write new line
227: HALT  0, 0, 0  program ends
