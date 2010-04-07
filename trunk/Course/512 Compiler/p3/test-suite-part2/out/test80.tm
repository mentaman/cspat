.DATA    3
.SDATA   "+10"
.DATA    5
.SDATA   " -10 "
.DATA    3
.SDATA   "abc"
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
0: LD    6, 0(5)  save stack pointer
1: LD    4, 0(5)  save frame pointer
3: LDC   0, 35(5)  load array error str address
4: LD    1, 0(0)  load str length into ac2
5: JEQ   1, 5(7)  output nothing when empty
6: LDA   0, 1(0)  increase offset
7: LD    2, 0(0)  load char into ac3
8: OUTC   2, 2, 2  write char
9: LDA   1, -1(1)  decrease length of remaining string in ac2
10: JNE   1, -5(7)  continue print if not yet finish
11: OUTNL 0, 0, 0  emit newline
12: HALT  0, 0, 0  stop because of array error
13: LDC   0, 15(5)  load out of memory str address
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
27: LDC   3, 59(5)  push 0
28: SUB   3, 6, 3  push 0
29: JLE   3, 13(5)  push 0
30: ST    2, 0(6)  push 0
31: LD    2, 0(6)  pop result into AC3
32: LDA   6, 1(6)  pop result into AC3
33: LDC   3, 10(5)  load 10 into ac4
34: MUL   2, 2, 3  mul result with 10
35: LDA   6, -1(6)  push result
36: LDC   3, 59(5)  push result
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
48: LDC   3, 59(5)  push result
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
2: LDA   7, 63(5)  jump to start of the program
63: LDC   0, 1(5)  load integer 1
64: LDA   6, -1(6)  push first child's value
65: LDC   3, 59(5)  push first child's value
66: SUB   3, 6, 3  push first child's value
67: JLE   3, 13(5)  push first child's value
68: ST    0, 0(6)  push first child's value
69: LDC   0, 2(5)  load integer 2
70: LD    1, 0(6)  pop first child's value
71: LDA   6, 1(6)  pop first child's value
72: ADD   0, 0, 1  add two children
73: OUT   0, 0, 0  write integer
74: OUTNL 0, 0, 0  write new line
75: LDC   0, 1(5)  load integer 1
76: LDA   6, -1(6)  push first child's value
77: LDC   3, 59(5)  push first child's value
78: SUB   3, 6, 3  push first child's value
79: JLE   3, 13(5)  push first child's value
80: ST    0, 0(6)  push first child's value
81: LDC   0, 3(5)  load integer 3
82: LD    1, 0(6)  pop first child's value
83: LDA   6, 1(6)  pop first child's value
84: ADD   0, 0, 1  add two children
85: LDA   6, -1(6)  push first child's value
86: LDC   3, 59(5)  push first child's value
87: SUB   3, 6, 3  push first child's value
88: JLE   3, 13(5)  push first child's value
89: ST    0, 0(6)  push first child's value
90: LDC   0, 4(5)  load integer 4
91: LD    1, 0(6)  pop first child's value
92: LDA   6, 1(6)  pop first child's value
93: ADD   0, 0, 1  add two children
94: LDA   6, -1(6)  push first child's value
95: LDC   3, 59(5)  push first child's value
96: SUB   3, 6, 3  push first child's value
97: JLE   3, 13(5)  push first child's value
98: ST    0, 0(6)  push first child's value
99: LDC   0, 5(5)  load integer 5
100: LD    1, 0(6)  pop first child's value
101: LDA   6, 1(6)  pop first child's value
102: ADD   0, 0, 1  add two children
103: OUT   0, 0, 0  write integer
104: OUTNL 0, 0, 0  write new line
105: LDC   0, 1(5)  load integer 1
106: LDA   6, -1(6)  push first child's value
107: LDC   3, 59(5)  push first child's value
108: SUB   3, 6, 3  push first child's value
109: JLE   3, 13(5)  push first child's value
110: ST    0, 0(6)  push first child's value
111: LDC   0, 3(5)  load integer 3
112: LD    1, 0(6)  pop first child's value
113: LDA   6, 1(6)  pop first child's value
114: ADD   0, 0, 1  add two children
115: LDA   6, -1(6)  push first child's value
116: LDC   3, 59(5)  push first child's value
117: SUB   3, 6, 3  push first child's value
118: JLE   3, 13(5)  push first child's value
119: ST    0, 0(6)  push first child's value
120: LDC   0, 4(5)  load integer 4
121: LDA   6, -1(6)  push first child's value
122: LDC   3, 59(5)  push first child's value
123: SUB   3, 6, 3  push first child's value
124: JLE   3, 13(5)  push first child's value
125: ST    0, 0(6)  push first child's value
126: LDC   0, 5(5)  load integer 5
127: LD    1, 0(6)  pop first child's value
128: LDA   6, 1(6)  pop first child's value
129: ADD   0, 0, 1  add two children
130: LD    1, 0(6)  pop first child's value
131: LDA   6, 1(6)  pop first child's value
132: ADD   0, 0, 1  add two children
133: OUT   0, 0, 0  write integer
134: OUTNL 0, 0, 0  write new line
135: LDC   0, 1(5)  load booleantrue
136: LDA   6, -1(6)  push first child's value
137: LDC   3, 59(5)  push first child's value
138: SUB   3, 6, 3  push first child's value
139: JLE   3, 13(5)  push first child's value
140: ST    0, 0(6)  push first child's value
142: LDC   0, 0(5)  load booleanfalse
143: LD    1, 0(6)  pop first child's value
144: LDA   6, 1(6)  pop first child's value
145: ADD   1, 0, 1  add two children
146: LDC   0, 1(5)  load 1 as true
147: JNE   1, 1(7)  skip load false
148: LDC   0, 0(5)  load 0 as false
141: JNE   0, 7(7)  short circuit
149: OUT   0, 0, 0  write integer
150: OUTNL 0, 0, 0  write new line
151: LDC   0, 1(5)  load booleantrue
152: LDA   6, -1(6)  push first child's value
153: LDC   3, 59(5)  push first child's value
154: SUB   3, 6, 3  push first child's value
155: JLE   3, 13(5)  push first child's value
156: ST    0, 0(6)  push first child's value
158: LDC   0, 0(5)  load booleanfalse
159: LDA   6, -1(6)  push first child's value
160: LDC   3, 59(5)  push first child's value
161: SUB   3, 6, 3  push first child's value
162: JLE   3, 13(5)  push first child's value
163: ST    0, 0(6)  push first child's value
165: LDC   0, 0(5)  load booleanfalse
166: LD    1, 0(6)  pop first child's value
167: LDA   6, 1(6)  pop first child's value
168: ADD   1, 0, 1  add two children
169: LDC   0, 1(5)  load 1 as true
170: JNE   1, 1(7)  skip load false
171: LDC   0, 0(5)  load 0 as false
164: JNE   0, 7(7)  short circuit
172: LD    1, 0(6)  pop first child's value
173: LDA   6, 1(6)  pop first child's value
174: ADD   1, 0, 1  add two children
175: LDC   0, 1(5)  load 1 as true
176: JNE   1, 1(7)  skip load false
177: LDC   0, 0(5)  load 0 as false
157: JNE   0, 20(7)  short circuit
178: OUT   0, 0, 0  write integer
179: OUTNL 0, 0, 0  write new line
180: LDC   0, 1(5)  load booleantrue
181: LDA   6, -1(6)  push first child's value
182: LDC   3, 59(5)  push first child's value
183: SUB   3, 6, 3  push first child's value
184: JLE   3, 13(5)  push first child's value
185: ST    0, 0(6)  push first child's value
187: LDC   0, 1(5)  load booleantrue
188: LD    1, 0(6)  pop first child's value
189: LDA   6, 1(6)  pop first child's value
190: ADD   1, 0, 1  add two children
191: LDC   0, 1(5)  load 1 as true
192: JNE   1, 1(7)  skip load false
193: LDC   0, 0(5)  load 0 as false
186: JNE   0, 7(7)  short circuit
194: LDA   6, -1(6)  push first child's value
195: LDC   3, 59(5)  push first child's value
196: SUB   3, 6, 3  push first child's value
197: JLE   3, 13(5)  push first child's value
198: ST    0, 0(6)  push first child's value
200: LDC   0, 0(5)  load booleanfalse
201: LDA   6, -1(6)  push first child's value
202: LDC   3, 59(5)  push first child's value
203: SUB   3, 6, 3  push first child's value
204: JLE   3, 13(5)  push first child's value
205: ST    0, 0(6)  push first child's value
207: LDC   0, 0(5)  load booleanfalse
208: LD    1, 0(6)  pop first child's value
209: LDA   6, 1(6)  pop first child's value
210: ADD   1, 0, 1  add two children
211: LDC   0, 1(5)  load 1 as true
212: JNE   1, 1(7)  skip load false
213: LDC   0, 0(5)  load 0 as false
206: JNE   0, 7(7)  short circuit
214: LD    1, 0(6)  pop first child's value
215: LDA   6, 1(6)  pop first child's value
216: ADD   1, 0, 1  add two children
217: LDC   0, 1(5)  load 1 as true
218: JNE   1, 1(7)  skip load false
219: LDC   0, 0(5)  load 0 as false
199: JNE   0, 20(7)  short circuit
220: OUT   0, 0, 0  write integer
221: OUTNL 0, 0, 0  write new line
222: HALT  0, 0, 0  program ends
