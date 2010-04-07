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
27: LDC   3, 79(5)  push 0
28: SUB   3, 6, 3  push 0
29: JLE   3, 13(5)  push 0
30: ST    2, 0(6)  push 0
31: LD    2, 0(6)  pop result into AC3
32: LDA   6, 1(6)  pop result into AC3
33: LDC   3, 10(5)  load 10 into ac4
34: MUL   2, 2, 3  mul result with 10
35: LDA   6, -1(6)  push result
36: LDC   3, 79(5)  push result
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
48: LDC   3, 79(5)  push result
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
63: LDA   1, 0(4)  load fp into ac2
64: LD    0, -3(1)  load int/bool/str from stack
65: LDA   6, -1(6)  push first child's value
66: LDC   3, 79(5)  push first child's value
67: SUB   3, 6, 3  push first child's value
68: JLE   3, 13(5)  push first child's value
69: ST    0, 0(6)  push first child's value
70: LDA   1, 0(4)  load fp into ac2
71: LD    0, -4(1)  load int/bool/str from stack
72: LD    1, 0(6)  pop first child's value
73: LDA   6, 1(6)  pop first child's value
74: ADD   0, 0, 1  add two children
75: LDA   1, 0(4)  load fp into ac2
76: ST    0, -5(1)  store int/bool/string into stack
77: LDC   0, 2(5)  load integer 2
78: LDA   6, -1(6)  push first child's value
79: LDC   3, 79(5)  push first child's value
80: SUB   3, 6, 3  push first child's value
81: JLE   3, 13(5)  push first child's value
82: ST    0, 0(6)  push first child's value
83: LDA   1, 0(4)  load fp into ac2
84: LD    0, -5(1)  load int/bool/str from stack
85: LD    1, 0(6)  pop first child's value
86: LDA   6, 1(6)  pop first child's value
87: MUL   0, 0, 1  multiply two children
88: LDA   1, 0(4)  load fp into ac2
89: ST    0, -6(1)  store int/bool/string into stack
90: LDA   1, 0(4)  load fp into ac2
91: LD    0, -5(1)  load int/bool/str from stack
92: LDA   6, -1(6)  push first child's value
93: LDC   3, 79(5)  push first child's value
94: SUB   3, 6, 3  push first child's value
95: JLE   3, 13(5)  push first child's value
96: ST    0, 0(6)  push first child's value
97: LDA   1, 0(4)  load fp into ac2
98: LD    0, -6(1)  load int/bool/str from stack
99: LD    1, 0(6)  pop first child's value
100: LDA   6, 1(6)  pop first child's value
101: ADD   0, 0, 1  add two children
102: LDA   1, 0(4)  load fp into ac2
103: ST    0, -2(1)  store int/bool/string into stack
104: LD    0, -2(4)  load int/bool/string offset as return value
105: LD    1, -1(4)  load return address
106: LDA   6, 0(4)  change sp to fp + 1
107: LD    4, 0(6)  restore fp
108: LDA   6, 1(6)  restore fp
109: LDA   7, 0(1)  jump to the return address
110: LDC   0, 2(5)  load integer 2
111: LDA   6, -1(6)  push first child's value
112: LDC   3, 79(5)  push first child's value
113: SUB   3, 6, 3  push first child's value
114: JLE   3, 13(5)  push first child's value
115: ST    0, 0(6)  push first child's value
116: LDA   1, 0(4)  load fp into ac2
117: LD    0, -3(1)  load int/bool/str from stack
118: LD    1, 0(6)  pop first child's value
119: LDA   6, 1(6)  pop first child's value
120: MUL   0, 0, 1  multiply two children
121: LDA   1, 0(4)  load fp into ac2
122: ST    0, -5(1)  store int/bool/string into stack
123: LDC   0, 2(5)  load integer 2
124: LDA   6, -1(6)  push first child's value
125: LDC   3, 79(5)  push first child's value
126: SUB   3, 6, 3  push first child's value
127: JLE   3, 13(5)  push first child's value
128: ST    0, 0(6)  push first child's value
129: LDA   1, 0(4)  load fp into ac2
130: LD    0, -4(1)  load int/bool/str from stack
131: LD    1, 0(6)  pop first child's value
132: LDA   6, 1(6)  pop first child's value
133: MUL   0, 0, 1  multiply two children
134: LDA   1, 0(4)  load fp into ac2
135: ST    0, -6(1)  store int/bool/string into stack
136: LDA   6, -1(6)  push fp
137: LDC   3, 79(5)  push fp
138: SUB   3, 6, 3  push fp
139: JLE   3, 13(5)  push fp
140: ST    4, 0(6)  push fp
141: LDA   4, 0(6)  set fp to sp
148: LDA   6, -1(6)  push zero as return value
149: LDC   3, 79(5)  push zero as return value
150: SUB   3, 6, 3  push zero as return value
151: JLE   3, 13(5)  push zero as return value
152: ST    5, 0(6)  push zero as return value
153: LDA   1, 0(4)  load fp into ac2
154: LD    1, 0(1)  load upper level fp into ac2
155: LD    0, -5(1)  load int/bool/str from stack
156: LDA   6, -1(6)  push int/bool/str parameter
157: LDC   3, 79(5)  push int/bool/str parameter
158: SUB   3, 6, 3  push int/bool/str parameter
159: JLE   3, 13(5)  push int/bool/str parameter
160: ST    0, 0(6)  push int/bool/str parameter
161: LDA   1, 0(4)  load fp into ac2
162: LD    1, 0(1)  load upper level fp into ac2
163: LD    0, -6(1)  load int/bool/str from stack
164: LDA   6, -1(6)  push int/bool/str parameter
165: LDC   3, 79(5)  push int/bool/str parameter
166: SUB   3, 6, 3  push int/bool/str parameter
167: JLE   3, 13(5)  push int/bool/str parameter
168: ST    0, 0(6)  push int/bool/str parameter
169: LDA   6, -3(6)  preserve space for local vars
170: LDA   7, 63(5)  jump to procedure call
142: LDC   0, 171(5)  load return address into ac
143: LDA   6, -1(6)  push return address
144: LDC   3, 79(5)  push return address
145: SUB   3, 6, 3  push return address
146: JLE   3, 13(5)  push return address
147: ST    0, 0(6)  push return address
171: LDA   1, 0(4)  load fp into ac2
172: ST    0, -2(1)  store int/bool/string into stack
173: LD    0, -2(4)  load int/bool/string offset as return value
174: LD    1, -1(4)  load return address
175: LDA   6, 0(4)  change sp to fp + 1
176: LD    4, 0(6)  restore fp
177: LDA   6, 1(6)  restore fp
178: LDA   7, 0(1)  jump to the return address
2: LDA   7, 179(5)  jump to start of the program
179: LDA   6, -1(6)  push fp
180: LDC   3, 79(5)  push fp
181: SUB   3, 6, 3  push fp
182: JLE   3, 13(5)  push fp
183: ST    4, 0(6)  push fp
184: LDA   4, 0(6)  set fp to sp
191: LDA   6, -1(6)  push zero as return value
192: LDC   3, 79(5)  push zero as return value
193: SUB   3, 6, 3  push zero as return value
194: JLE   3, 13(5)  push zero as return value
195: ST    5, 0(6)  push zero as return value
196: LDC   0, 1(5)  load integer 1
197: LDA   6, -1(6)  push int/bool/str parameter
198: LDC   3, 79(5)  push int/bool/str parameter
199: SUB   3, 6, 3  push int/bool/str parameter
200: JLE   3, 13(5)  push int/bool/str parameter
201: ST    0, 0(6)  push int/bool/str parameter
202: LDC   0, 1(5)  load integer 1
203: LDA   6, -1(6)  push int/bool/str parameter
204: LDC   3, 79(5)  push int/bool/str parameter
205: SUB   3, 6, 3  push int/bool/str parameter
206: JLE   3, 13(5)  push int/bool/str parameter
207: ST    0, 0(6)  push int/bool/str parameter
208: LDA   6, -3(6)  preserve space for local vars
209: LDA   7, 110(5)  jump to procedure call
185: LDC   0, 210(5)  load return address into ac
186: LDA   6, -1(6)  push return address
187: LDC   3, 79(5)  push return address
188: SUB   3, 6, 3  push return address
189: JLE   3, 13(5)  push return address
190: ST    0, 0(6)  push return address
210: OUT   0, 0, 0  write integer
211: OUTNL 0, 0, 0  write new line
212: HALT  0, 0, 0  program ends
