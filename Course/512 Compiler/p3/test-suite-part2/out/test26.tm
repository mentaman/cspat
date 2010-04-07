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
63: LDC   0, 0(5)  load integer 0
64: LDA   6, -1(6)  push first child's value
65: LDC   3, 34(5)  push first child's value
66: SUB   3, 6, 3  push first child's value
67: JLE   3, 13(5)  push first child's value
68: ST    0, 0(6)  push first child's value
69: LDC   0, 6(5)  load integer 6
70: LD    1, 0(6)  pop first child's value
71: LDA   6, 1(6)  pop first child's value
72: SUB   1, 1, 0  greater than
73: LDC   0, 1(5)  load 1 as true
74: JGE   1, 1(7)  skip load false
75: LDC   0, 0(5)  load 0 as false
77: LDC   0, 1(5)  load integer 1
78: OUT   0, 0, 0  write integer
79: OUTNL 0, 0, 0  write new line
76: JEQ   0, 4(7)  if expr not true
81: LDC   0, 1(5)  load integer 1
82: LDA   6, -1(6)  push first child's value
83: LDC   3, 34(5)  push first child's value
84: SUB   3, 6, 3  push first child's value
85: JLE   3, 13(5)  push first child's value
86: ST    0, 0(6)  push first child's value
87: LDC   0, 6(5)  load integer 6
88: LD    1, 0(6)  pop first child's value
89: LDA   6, 1(6)  pop first child's value
90: SUB   1, 1, 0  greater than
91: LDC   0, 1(5)  load 1 as true
92: JGE   1, 1(7)  skip load false
93: LDC   0, 0(5)  load 0 as false
95: LDC   0, 2(5)  load integer 2
96: OUT   0, 0, 0  write integer
97: OUTNL 0, 0, 0  write new line
94: JEQ   0, 4(7)  if expr not true
99: LDC   0, 6(5)  load integer 6
100: LDA   6, -1(6)  push first child's value
101: LDC   3, 34(5)  push first child's value
102: SUB   3, 6, 3  push first child's value
103: JLE   3, 13(5)  push first child's value
104: ST    0, 0(6)  push first child's value
105: LDC   0, 6(5)  load integer 6
106: LD    1, 0(6)  pop first child's value
107: LDA   6, 1(6)  pop first child's value
108: SUB   1, 1, 0  greater than
109: LDC   0, 1(5)  load 1 as true
110: JGE   1, 1(7)  skip load false
111: LDC   0, 0(5)  load 0 as false
113: LDC   0, 3(5)  load integer 3
114: OUT   0, 0, 0  write integer
115: OUTNL 0, 0, 0  write new line
112: JEQ   0, 4(7)  if expr not true
80: LDA   7, 36(7)  Jump to the end of if
98: LDA   7, 18(7)  Jump to the end of if
116: LDA   7, 0(7)  Jump to the end of if
117: LDC   0, 4(5)  load integer 4
118: OUT   0, 0, 0  write integer
119: OUTNL 0, 0, 0  write new line
120: LDC   0, 6(5)  load integer 6
121: LDA   6, -1(6)  push first child's value
122: LDC   3, 34(5)  push first child's value
123: SUB   3, 6, 3  push first child's value
124: JLE   3, 13(5)  push first child's value
125: ST    0, 0(6)  push first child's value
126: LDC   0, 6(5)  load integer 6
127: LD    1, 0(6)  pop first child's value
128: LDA   6, 1(6)  pop first child's value
129: SUB   1, 1, 0  greater than
130: LDC   0, 1(5)  load 1 as true
131: JGE   1, 1(7)  skip load false
132: LDC   0, 0(5)  load 0 as false
134: LDC   0, 1(5)  load integer 1
135: OUT   0, 0, 0  write integer
136: OUTNL 0, 0, 0  write new line
133: JEQ   0, 4(7)  if expr not true
138: LDC   0, 1(5)  load integer 1
139: LDA   6, -1(6)  push first child's value
140: LDC   3, 34(5)  push first child's value
141: SUB   3, 6, 3  push first child's value
142: JLE   3, 13(5)  push first child's value
143: ST    0, 0(6)  push first child's value
144: LDC   0, 6(5)  load integer 6
145: LD    1, 0(6)  pop first child's value
146: LDA   6, 1(6)  pop first child's value
147: SUB   1, 1, 0  greater than
148: LDC   0, 1(5)  load 1 as true
149: JGE   1, 1(7)  skip load false
150: LDC   0, 0(5)  load 0 as false
152: LDC   0, 2(5)  load integer 2
153: OUT   0, 0, 0  write integer
154: OUTNL 0, 0, 0  write new line
151: JEQ   0, 4(7)  if expr not true
156: LDC   0, 0(5)  load integer 0
157: LDA   6, -1(6)  push first child's value
158: LDC   3, 34(5)  push first child's value
159: SUB   3, 6, 3  push first child's value
160: JLE   3, 13(5)  push first child's value
161: ST    0, 0(6)  push first child's value
162: LDC   0, 6(5)  load integer 6
163: LD    1, 0(6)  pop first child's value
164: LDA   6, 1(6)  pop first child's value
165: SUB   1, 1, 0  greater than
166: LDC   0, 1(5)  load 1 as true
167: JGE   1, 1(7)  skip load false
168: LDC   0, 0(5)  load 0 as false
170: LDC   0, 3(5)  load integer 3
171: OUT   0, 0, 0  write integer
172: OUTNL 0, 0, 0  write new line
169: JEQ   0, 4(7)  if expr not true
137: LDA   7, 36(7)  Jump to the end of if
155: LDA   7, 18(7)  Jump to the end of if
173: LDA   7, 0(7)  Jump to the end of if
174: LDC   0, 4(5)  load integer 4
175: OUT   0, 0, 0  write integer
176: OUTNL 0, 0, 0  write new line
177: LDC   0, 0(5)  load integer 0
178: LDA   6, -1(6)  push first child's value
179: LDC   3, 34(5)  push first child's value
180: SUB   3, 6, 3  push first child's value
181: JLE   3, 13(5)  push first child's value
182: ST    0, 0(6)  push first child's value
183: LDC   0, 6(5)  load integer 6
184: LD    1, 0(6)  pop first child's value
185: LDA   6, 1(6)  pop first child's value
186: SUB   1, 1, 0  greater than
187: LDC   0, 1(5)  load 1 as true
188: JGE   1, 1(7)  skip load false
189: LDC   0, 0(5)  load 0 as false
191: LDC   0, 1(5)  load integer 1
192: OUT   0, 0, 0  write integer
193: OUTNL 0, 0, 0  write new line
190: JEQ   0, 4(7)  if expr not true
195: LDC   0, 6(5)  load integer 6
196: LDA   6, -1(6)  push first child's value
197: LDC   3, 34(5)  push first child's value
198: SUB   3, 6, 3  push first child's value
199: JLE   3, 13(5)  push first child's value
200: ST    0, 0(6)  push first child's value
201: LDC   0, 6(5)  load integer 6
202: LD    1, 0(6)  pop first child's value
203: LDA   6, 1(6)  pop first child's value
204: SUB   1, 1, 0  greater than
205: LDC   0, 1(5)  load 1 as true
206: JGE   1, 1(7)  skip load false
207: LDC   0, 0(5)  load 0 as false
209: LDC   0, 2(5)  load integer 2
210: OUT   0, 0, 0  write integer
211: OUTNL 0, 0, 0  write new line
208: JEQ   0, 4(7)  if expr not true
213: LDC   0, 6(5)  load integer 6
214: LDA   6, -1(6)  push first child's value
215: LDC   3, 34(5)  push first child's value
216: SUB   3, 6, 3  push first child's value
217: JLE   3, 13(5)  push first child's value
218: ST    0, 0(6)  push first child's value
219: LDC   0, 6(5)  load integer 6
220: LD    1, 0(6)  pop first child's value
221: LDA   6, 1(6)  pop first child's value
222: SUB   1, 1, 0  greater than
223: LDC   0, 1(5)  load 1 as true
224: JGE   1, 1(7)  skip load false
225: LDC   0, 0(5)  load 0 as false
227: LDC   0, 3(5)  load integer 3
228: OUT   0, 0, 0  write integer
229: OUTNL 0, 0, 0  write new line
226: JEQ   0, 4(7)  if expr not true
194: LDA   7, 36(7)  Jump to the end of if
212: LDA   7, 18(7)  Jump to the end of if
230: LDA   7, 0(7)  Jump to the end of if
231: LDC   0, 4(5)  load integer 4
232: OUT   0, 0, 0  write integer
233: OUTNL 0, 0, 0  write new line
234: HALT  0, 0, 0  program ends
