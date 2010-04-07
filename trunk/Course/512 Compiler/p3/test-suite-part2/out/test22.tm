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
2: LDA   7, 63(5)  jump to start of the program
63: LDC   0, 7(5)  load integer 7
64: LDA   6, -1(6)  push first child's value
65: LDC   3, 34(5)  push first child's value
66: SUB   3, 6, 3  push first child's value
67: JLE   3, 13(5)  push first child's value
68: ST    0, 0(6)  push first child's value
69: LDC   0, 3(5)  load integer 3
70: LD    1, 0(6)  pop first child's value
71: LDA   6, 1(6)  pop first child's value
72: ADD   0, 0, 1  add two children
73: LDA   6, -1(6)  push first child's value
74: LDC   3, 34(5)  push first child's value
75: SUB   3, 6, 3  push first child's value
76: JLE   3, 13(5)  push first child's value
77: ST    0, 0(6)  push first child's value
78: LDC   0, 15(5)  load integer 15
79: LDA   6, -1(6)  push first child's value
80: LDC   3, 34(5)  push first child's value
81: SUB   3, 6, 3  push first child's value
82: JLE   3, 13(5)  push first child's value
83: ST    0, 0(6)  push first child's value
84: LDC   0, 5(5)  load integer 5
85: LD    1, 0(6)  pop first child's value
86: LDA   6, 1(6)  pop first child's value
87: SUB   0, 1, 0  subtract two children
88: LD    1, 0(6)  pop first child's value
89: LDA   6, 1(6)  pop first child's value
90: SUB   0, 1, 0  subtract two children
91: OUT   0, 0, 0  write integer
92: OUTNL 0, 0, 0  write new line
93: LDC   0, 2(5)  load integer 2
94: LDA   6, -1(6)  push first child's value
95: LDC   3, 34(5)  push first child's value
96: SUB   3, 6, 3  push first child's value
97: JLE   3, 13(5)  push first child's value
98: ST    0, 0(6)  push first child's value
99: LDC   0, 9(5)  load integer 9
100: LDA   6, -1(6)  push first child's value
101: LDC   3, 34(5)  push first child's value
102: SUB   3, 6, 3  push first child's value
103: JLE   3, 13(5)  push first child's value
104: ST    0, 0(6)  push first child's value
105: LDC   0, 3(5)  load integer 3
106: LD    1, 0(6)  pop first child's value
107: LDA   6, 1(6)  pop first child's value
108: DIV   0, 1, 0  divide two children
109: LD    1, 0(6)  pop first child's value
110: LDA   6, 1(6)  pop first child's value
111: MUL   0, 0, 1  multiply two children
112: LDA   6, -1(6)  push first child's value
113: LDC   3, 34(5)  push first child's value
114: SUB   3, 6, 3  push first child's value
115: JLE   3, 13(5)  push first child's value
116: ST    0, 0(6)  push first child's value
117: LDC   0, 1(5)  load integer 1
118: LDA   6, -1(6)  push first child's value
119: LDC   3, 34(5)  push first child's value
120: SUB   3, 6, 3  push first child's value
121: JLE   3, 13(5)  push first child's value
122: ST    0, 0(6)  push first child's value
123: LDC   0, 1(5)  load integer 1
124: LD    1, 0(6)  pop first child's value
125: LDA   6, 1(6)  pop first child's value
126: ADD   0, 0, 1  add two children
127: LDA   6, -1(6)  push first child's value
128: LDC   3, 34(5)  push first child's value
129: SUB   3, 6, 3  push first child's value
130: JLE   3, 13(5)  push first child's value
131: ST    0, 0(6)  push first child's value
132: LDC   0, 1(5)  load integer 1
133: LD    1, 0(6)  pop first child's value
134: LDA   6, 1(6)  pop first child's value
135: ADD   0, 0, 1  add two children
136: LDA   6, -1(6)  push first child's value
137: LDC   3, 34(5)  push first child's value
138: SUB   3, 6, 3  push first child's value
139: JLE   3, 13(5)  push first child's value
140: ST    0, 0(6)  push first child's value
141: LDC   0, 1(5)  load integer 1
142: LD    1, 0(6)  pop first child's value
143: LDA   6, 1(6)  pop first child's value
144: ADD   0, 0, 1  add two children
145: LD    1, 0(6)  pop first child's value
146: LDA   6, 1(6)  pop first child's value
147: ADD   0, 0, 1  add two children
148: OUT   0, 0, 0  write integer
149: OUTNL 0, 0, 0  write new line
150: LDC   0, 9(5)  load integer 9
151: LDA   6, -1(6)  push first child's value
152: LDC   3, 34(5)  push first child's value
153: SUB   3, 6, 3  push first child's value
154: JLE   3, 13(5)  push first child's value
155: ST    0, 0(6)  push first child's value
156: LDC   0, 1(5)  load integer 1
157: LDC   1, 0(5)  load 0 into AC2
158: SUB   0, 1, 0  compute negative number
159: LD    1, 0(6)  pop first child's value
160: LDA   6, 1(6)  pop first child's value
161: SUB   0, 1, 0  subtract two children
162: LDA   6, -1(6)  push first child's value
163: LDC   3, 34(5)  push first child's value
164: SUB   3, 6, 3  push first child's value
165: JLE   3, 13(5)  push first child's value
166: ST    0, 0(6)  push first child's value
167: LDC   0, 3(5)  load integer 3
168: LDA   6, -1(6)  push first child's value
169: LDC   3, 34(5)  push first child's value
170: SUB   3, 6, 3  push first child's value
171: JLE   3, 13(5)  push first child's value
172: ST    0, 0(6)  push first child's value
173: LDC   0, 3(5)  load integer 3
174: LD    1, 0(6)  pop first child's value
175: LDA   6, 1(6)  pop first child's value
176: MUL   0, 0, 1  multiply two children
177: LD    1, 0(6)  pop first child's value
178: LDA   6, 1(6)  pop first child's value
179: SUB   1, 1, 0  greater than
180: LDC   0, 1(5)  load 1 as true
181: JGT   1, 1(7)  skip load false
182: LDC   0, 0(5)  load 0 as false
183: OUT   0, 0, 0  write integer
184: OUTNL 0, 0, 0  write new line
185: LDC   0, 7(5)  load integer 7
186: LDA   6, -1(6)  push first child's value
187: LDC   3, 34(5)  push first child's value
188: SUB   3, 6, 3  push first child's value
189: JLE   3, 13(5)  push first child's value
190: ST    0, 0(6)  push first child's value
191: LDC   0, 6(5)  load integer 6
192: LD    1, 0(6)  pop first child's value
193: LDA   6, 1(6)  pop first child's value
194: SUB   1, 1, 0  greater than
195: LDC   0, 1(5)  load 1 as true
196: JGT   1, 1(7)  skip load false
197: LDC   0, 0(5)  load 0 as false
198: LDA   6, -1(6)  push first child's value
199: LDC   3, 34(5)  push first child's value
200: SUB   3, 6, 3  push first child's value
201: JLE   3, 13(5)  push first child's value
202: ST    0, 0(6)  push first child's value
204: LDC   0, 7(5)  load integer 7
205: LDA   6, -1(6)  push first child's value
206: LDC   3, 34(5)  push first child's value
207: SUB   3, 6, 3  push first child's value
208: JLE   3, 13(5)  push first child's value
209: ST    0, 0(6)  push first child's value
210: LDC   0, 6(5)  load integer 6
211: LD    1, 0(6)  pop first child's value
212: LDA   6, 1(6)  pop first child's value
213: SUB   1, 1, 0  greater than
214: LDC   0, 1(5)  load 1 as true
215: JEQ   1, 1(7)  skip load false
216: LDC   0, 0(5)  load 0 as false
217: LDA   1, 0(0)  copy AC to AC2
218: LDC   0, 1(5)  load 1 as true
219: JEQ   1, 1(7)  skip load false
220: LDC   0, 0(5)  load 0 as false
221: LD    1, 0(6)  pop first child's value
222: LDA   6, 1(6)  pop first child's value
223: ADD   1, 0, 1  add two children
224: LDC   0, 1(5)  load 1 as true
225: JNE   1, 1(7)  skip load false
226: LDC   0, 0(5)  load 0 as false
203: JNE   0, 23(7)  short circuit
227: LDA   6, -1(6)  push first child's value
228: LDC   3, 34(5)  push first child's value
229: SUB   3, 6, 3  push first child's value
230: JLE   3, 13(5)  push first child's value
231: ST    0, 0(6)  push first child's value
233: LDC   0, 7(5)  load integer 7
234: LDA   6, -1(6)  push first child's value
235: LDC   3, 34(5)  push first child's value
236: SUB   3, 6, 3  push first child's value
237: JLE   3, 13(5)  push first child's value
238: ST    0, 0(6)  push first child's value
239: LDC   0, 3(5)  load integer 3
240: LD    1, 0(6)  pop first child's value
241: LDA   6, 1(6)  pop first child's value
242: SUB   1, 1, 0  greater than
243: LDC   0, 1(5)  load 1 as true
244: JLE   1, 1(7)  skip load false
245: LDC   0, 0(5)  load 0 as false
246: LD    1, 0(6)  pop first child's value
247: LDA   6, 1(6)  pop first child's value
248: ADD   1, 0, 1  add two children
249: LDC   0, 1(5)  load 1 as true
250: JNE   1, 1(7)  skip load false
251: LDC   0, 0(5)  load 0 as false
232: JNE   0, 19(7)  short circuit
252: OUT   0, 0, 0  write integer
253: OUTNL 0, 0, 0  write new line
254: HALT  0, 0, 0  program ends
