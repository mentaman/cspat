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
3: LDC   0, 78(5)  load array error str address
4: LD    1, 0(0)  load str length into ac2
5: JEQ   1, 5(7)  output nothing when empty
6: LDA   0, 1(0)  increase offset
7: LD    2, 0(0)  load char into ac3
8: OUTC   2, 2, 2  write char
9: LDA   1, -1(1)  decrease length of remaining string in ac2
10: JNE   1, -5(7)  continue print if not yet finish
11: OUTNL 0, 0, 0  emit newline
12: HALT  0, 0, 0  stop because of array error
13: LDC   0, 117(5)  load out of memory str address
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
36: LDC   3, 141(5)  push -1
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
46: LDC   3, 141(5)  push 1
47: SUB   3, 6, 3  push 1
48: JLE   3, 13(5)  push 1
49: ST    2, 0(6)  push 1
40: LDA   7, 9(7)  jump to start parsing str
50: LDC   2, 0(5)  load 0 as initial result
51: LDA   6, -1(6)  push 0
52: LDC   3, 141(5)  push 0
53: SUB   3, 6, 3  push 0
54: JLE   3, 13(5)  push 0
55: ST    2, 0(6)  push 0
56: LD    2, 0(6)  pop result into AC3
57: LDA   6, 1(6)  pop result into AC3
58: LDC   3, 10(5)  load 10 into ac4
59: MUL   2, 2, 3  mul result with 10
60: LDA   6, -1(6)  push result
61: LDC   3, 141(5)  push result
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
73: LDC   3, 141(5)  push result
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
2: LDA   7, 91(5)  jump to start of the program
91: LDC   0, 0(5)  load integer 0
92: LDA   6, -1(6)  push first child's value
93: LDC   3, 141(5)  push first child's value
94: SUB   3, 6, 3  push first child's value
95: JLE   3, 13(5)  push first child's value
96: ST    0, 0(6)  push first child's value
97: LDC   0, 6(5)  load integer 6
98: LD    1, 0(6)  pop first child's value
99: LDA   6, 1(6)  pop first child's value
100: SUB   1, 1, 0  greater than
101: LDC   0, 1(5)  load 1 as true
102: JGE   1, 1(7)  skip load false
103: LDC   0, 0(5)  load 0 as false
105: LDC   0, 1(5)  load integer 1
106: OUT   0, 0, 0  write integer
107: OUTNL 0, 0, 0  write new line
104: JEQ   0, 4(7)  if expr not true
109: LDC   0, 1(5)  load integer 1
110: LDA   6, -1(6)  push first child's value
111: LDC   3, 141(5)  push first child's value
112: SUB   3, 6, 3  push first child's value
113: JLE   3, 13(5)  push first child's value
114: ST    0, 0(6)  push first child's value
115: LDC   0, 6(5)  load integer 6
116: LD    1, 0(6)  pop first child's value
117: LDA   6, 1(6)  pop first child's value
118: SUB   1, 1, 0  greater than
119: LDC   0, 1(5)  load 1 as true
120: JGE   1, 1(7)  skip load false
121: LDC   0, 0(5)  load 0 as false
123: LDC   0, 2(5)  load integer 2
124: OUT   0, 0, 0  write integer
125: OUTNL 0, 0, 0  write new line
122: JEQ   0, 4(7)  if expr not true
127: LDC   0, 6(5)  load integer 6
128: LDA   6, -1(6)  push first child's value
129: LDC   3, 141(5)  push first child's value
130: SUB   3, 6, 3  push first child's value
131: JLE   3, 13(5)  push first child's value
132: ST    0, 0(6)  push first child's value
133: LDC   0, 6(5)  load integer 6
134: LD    1, 0(6)  pop first child's value
135: LDA   6, 1(6)  pop first child's value
136: SUB   1, 1, 0  greater than
137: LDC   0, 1(5)  load 1 as true
138: JGE   1, 1(7)  skip load false
139: LDC   0, 0(5)  load 0 as false
141: LDC   0, 3(5)  load integer 3
142: OUT   0, 0, 0  write integer
143: OUTNL 0, 0, 0  write new line
140: JEQ   0, 4(7)  if expr not true
108: LDA   7, 36(7)  Jump to the end of if
126: LDA   7, 18(7)  Jump to the end of if
144: LDA   7, 0(7)  Jump to the end of if
145: LDC   0, 4(5)  load integer 4
146: OUT   0, 0, 0  write integer
147: OUTNL 0, 0, 0  write new line
148: LDC   0, 6(5)  load integer 6
149: LDA   6, -1(6)  push first child's value
150: LDC   3, 141(5)  push first child's value
151: SUB   3, 6, 3  push first child's value
152: JLE   3, 13(5)  push first child's value
153: ST    0, 0(6)  push first child's value
154: LDC   0, 6(5)  load integer 6
155: LD    1, 0(6)  pop first child's value
156: LDA   6, 1(6)  pop first child's value
157: SUB   1, 1, 0  greater than
158: LDC   0, 1(5)  load 1 as true
159: JGE   1, 1(7)  skip load false
160: LDC   0, 0(5)  load 0 as false
162: LDC   0, 1(5)  load integer 1
163: OUT   0, 0, 0  write integer
164: OUTNL 0, 0, 0  write new line
161: JEQ   0, 4(7)  if expr not true
166: LDC   0, 1(5)  load integer 1
167: LDA   6, -1(6)  push first child's value
168: LDC   3, 141(5)  push first child's value
169: SUB   3, 6, 3  push first child's value
170: JLE   3, 13(5)  push first child's value
171: ST    0, 0(6)  push first child's value
172: LDC   0, 6(5)  load integer 6
173: LD    1, 0(6)  pop first child's value
174: LDA   6, 1(6)  pop first child's value
175: SUB   1, 1, 0  greater than
176: LDC   0, 1(5)  load 1 as true
177: JGE   1, 1(7)  skip load false
178: LDC   0, 0(5)  load 0 as false
180: LDC   0, 2(5)  load integer 2
181: OUT   0, 0, 0  write integer
182: OUTNL 0, 0, 0  write new line
179: JEQ   0, 4(7)  if expr not true
184: LDC   0, 0(5)  load integer 0
185: LDA   6, -1(6)  push first child's value
186: LDC   3, 141(5)  push first child's value
187: SUB   3, 6, 3  push first child's value
188: JLE   3, 13(5)  push first child's value
189: ST    0, 0(6)  push first child's value
190: LDC   0, 6(5)  load integer 6
191: LD    1, 0(6)  pop first child's value
192: LDA   6, 1(6)  pop first child's value
193: SUB   1, 1, 0  greater than
194: LDC   0, 1(5)  load 1 as true
195: JGE   1, 1(7)  skip load false
196: LDC   0, 0(5)  load 0 as false
198: LDC   0, 3(5)  load integer 3
199: OUT   0, 0, 0  write integer
200: OUTNL 0, 0, 0  write new line
197: JEQ   0, 4(7)  if expr not true
165: LDA   7, 36(7)  Jump to the end of if
183: LDA   7, 18(7)  Jump to the end of if
201: LDA   7, 0(7)  Jump to the end of if
202: LDC   0, 4(5)  load integer 4
203: OUT   0, 0, 0  write integer
204: OUTNL 0, 0, 0  write new line
205: LDC   0, 0(5)  load integer 0
206: LDA   6, -1(6)  push first child's value
207: LDC   3, 141(5)  push first child's value
208: SUB   3, 6, 3  push first child's value
209: JLE   3, 13(5)  push first child's value
210: ST    0, 0(6)  push first child's value
211: LDC   0, 6(5)  load integer 6
212: LD    1, 0(6)  pop first child's value
213: LDA   6, 1(6)  pop first child's value
214: SUB   1, 1, 0  greater than
215: LDC   0, 1(5)  load 1 as true
216: JGE   1, 1(7)  skip load false
217: LDC   0, 0(5)  load 0 as false
219: LDC   0, 1(5)  load integer 1
220: OUT   0, 0, 0  write integer
221: OUTNL 0, 0, 0  write new line
218: JEQ   0, 4(7)  if expr not true
223: LDC   0, 6(5)  load integer 6
224: LDA   6, -1(6)  push first child's value
225: LDC   3, 141(5)  push first child's value
226: SUB   3, 6, 3  push first child's value
227: JLE   3, 13(5)  push first child's value
228: ST    0, 0(6)  push first child's value
229: LDC   0, 6(5)  load integer 6
230: LD    1, 0(6)  pop first child's value
231: LDA   6, 1(6)  pop first child's value
232: SUB   1, 1, 0  greater than
233: LDC   0, 1(5)  load 1 as true
234: JGE   1, 1(7)  skip load false
235: LDC   0, 0(5)  load 0 as false
237: LDC   0, 2(5)  load integer 2
238: OUT   0, 0, 0  write integer
239: OUTNL 0, 0, 0  write new line
236: JEQ   0, 4(7)  if expr not true
241: LDC   0, 6(5)  load integer 6
242: LDA   6, -1(6)  push first child's value
243: LDC   3, 141(5)  push first child's value
244: SUB   3, 6, 3  push first child's value
245: JLE   3, 13(5)  push first child's value
246: ST    0, 0(6)  push first child's value
247: LDC   0, 6(5)  load integer 6
248: LD    1, 0(6)  pop first child's value
249: LDA   6, 1(6)  pop first child's value
250: SUB   1, 1, 0  greater than
251: LDC   0, 1(5)  load 1 as true
252: JGE   1, 1(7)  skip load false
253: LDC   0, 0(5)  load 0 as false
255: LDC   0, 3(5)  load integer 3
256: OUT   0, 0, 0  write integer
257: OUTNL 0, 0, 0  write new line
254: JEQ   0, 4(7)  if expr not true
222: LDA   7, 36(7)  Jump to the end of if
240: LDA   7, 18(7)  Jump to the end of if
258: LDA   7, 0(7)  Jump to the end of if
259: LDC   0, 4(5)  load integer 4
260: OUT   0, 0, 0  write integer
261: OUTNL 0, 0, 0  write new line
262: HALT  0, 0, 0  program ends
