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
63: LDA   1, 0(4)  load fp into ac2
64: LD    0, -3(1)  load int/bool/str from stack
65: LDA   6, -1(6)  push array index
66: LDC   3, 34(5)  push array index
67: SUB   3, 6, 3  push array index
68: JLE   3, 13(5)  push array index
69: ST    0, 0(6)  push array index
70: LDA   1, 0(4)  load fp into ac2
71: LD    0, -2(1)  load int/bool/str from stack
72: LDA   6, -1(6)  push array index
73: LDC   3, 34(5)  push array index
74: SUB   3, 6, 3  push array index
75: JLE   3, 13(5)  push array index
76: ST    0, 0(6)  push array index
77: LDC   0, 2(5)  push array dimension
78: LDC   0, 0(5)  load 0 to ac
79: LD    1, 0(6)  pop index
80: LDA   6, 1(6)  pop index
81: JLT   1, 3(5)  jump if index less than 0
82: LDC   3, 2(5)  load array size
83: SUB   3, 3, 1  sub max size with index
84: JLE   3, 3(5)  jump if index greater than size - 1
85: LDC   2, 5(5)  load size of subarray
86: MUL   1, 1, 2  compute 0 dim
87: ADD   0, 0, 1  add result
88: LD    1, 0(6)  pop index
89: LDA   6, 1(6)  pop index
90: JLT   1, 3(5)  jump if index less than 0
91: LDC   3, 5(5)  load array size
92: SUB   3, 3, 1  sub max size with index
93: JLE   3, 3(5)  jump if index greater than size - 1
94: LDC   2, 1(5)  load size of subarray
95: MUL   1, 1, 2  compute 1 dim
96: ADD   0, 0, 1  add result
97: LDA   1, 0(4)  load fp into ac2
98: LD    1, -14(1)  load local offset into ac2
99: ADD   0, 0, 1  compute final offset
100: LDA   6, -1(6)  push final offset
101: LDC   3, 34(5)  push final offset
102: SUB   3, 6, 3  push final offset
103: JLE   3, 13(5)  push final offset
104: ST    0, 0(6)  push final offset
105: LDC   0, 3(5)  load integer 3
106: LD    1, 0(6)  pop final offset
107: LDA   6, 1(6)  pop final offset
108: ST    0, 0(1)  store value into array static data
109: LDA   1, 0(4)  load fp into ac2
110: LD    0, -3(1)  load int/bool/str from stack
111: LDA   6, -1(6)  push array index
112: LDC   3, 34(5)  push array index
113: SUB   3, 6, 3  push array index
114: JLE   3, 13(5)  push array index
115: ST    0, 0(6)  push array index
116: LDA   1, 0(4)  load fp into ac2
117: LD    0, -2(1)  load int/bool/str from stack
118: LDA   6, -1(6)  push array index
119: LDC   3, 34(5)  push array index
120: SUB   3, 6, 3  push array index
121: JLE   3, 13(5)  push array index
122: ST    0, 0(6)  push array index
123: LDC   0, 2(5)  push array dimension
124: LDC   0, 0(5)  load 0 to ac
125: LD    1, 0(6)  pop index
126: LDA   6, 1(6)  pop index
127: JLT   1, 3(5)  jump if index less than 0
128: LDC   3, 2(5)  load array size
129: SUB   3, 3, 1  sub max size with index
130: JLE   3, 3(5)  jump if index greater than size - 1
131: LDC   2, 5(5)  load size of subarray
132: MUL   1, 1, 2  compute 0 dim
133: ADD   0, 0, 1  add result
134: LD    1, 0(6)  pop index
135: LDA   6, 1(6)  pop index
136: JLT   1, 3(5)  jump if index less than 0
137: LDC   3, 5(5)  load array size
138: SUB   3, 3, 1  sub max size with index
139: JLE   3, 3(5)  jump if index greater than size - 1
140: LDC   2, 1(5)  load size of subarray
141: MUL   1, 1, 2  compute 1 dim
142: ADD   0, 0, 1  add result
143: LDA   1, 0(4)  load fp into ac2
144: LD    1, -14(1)  load local offset into ac2
145: ADD   0, 0, 1  compute final offset
146: LD    0, 0(0)  load data from array
147: OUT   0, 0, 0  write integer
148: OUTNL 0, 0, 0  write new line
149: LDA   1, 0(4)  load fp into ac2
150: LD    0, -2(1)  load int/bool/str from stack
151: OUT   0, 0, 0  write integer
152: OUTNL 0, 0, 0  write new line
153: LDA   1, 0(4)  load fp into ac2
154: LD    0, -3(1)  load int/bool/str from stack
155: OUT   0, 0, 0  write integer
156: OUTNL 0, 0, 0  write new line
157: LD    1, -1(4)  load return address
158: LDA   6, 0(4)  change sp to fp + 1
159: LD    4, 0(6)  restore fp
160: LDA   6, 1(6)  restore fp
161: LDA   7, 0(1)  jump to the return address
2: LDA   7, 162(5)  jump to start of the program
162: LDA   6, -1(6)  push fp
163: LDC   3, 34(5)  push fp
164: SUB   3, 6, 3  push fp
165: JLE   3, 13(5)  push fp
166: ST    4, 0(6)  push fp
167: LDA   4, 0(6)  set fp to sp
174: LDC   0, 1(5)  load integer 1
175: LDA   6, -1(6)  push int/bool/str parameter
176: LDC   3, 34(5)  push int/bool/str parameter
177: SUB   3, 6, 3  push int/bool/str parameter
178: JLE   3, 13(5)  push int/bool/str parameter
179: ST    0, 0(6)  push int/bool/str parameter
180: LDC   0, 4(5)  load integer 4
181: LDA   6, -1(6)  push int/bool/str parameter
182: LDC   3, 34(5)  push int/bool/str parameter
183: SUB   3, 6, 3  push int/bool/str parameter
184: JLE   3, 13(5)  push int/bool/str parameter
185: ST    0, 0(6)  push int/bool/str parameter
186: LDC   0, 10(5)  load array localVariableSize: 10
187: SUB   0, 6, 0  compute absolute address of the array
188: ST    0, -11(6)  store absolute array address
189: LDA   6, -11(6)  preserve space for local vars
190: LDA   7, 63(5)  jump to procedure call
168: LDC   0, 191(5)  load return address into ac
169: LDA   6, -1(6)  push return address
170: LDC   3, 34(5)  push return address
171: SUB   3, 6, 3  push return address
172: JLE   3, 13(5)  push return address
173: ST    0, 0(6)  push return address
191: LDA   6, -1(6)  push fp
192: LDC   3, 34(5)  push fp
193: SUB   3, 6, 3  push fp
194: JLE   3, 13(5)  push fp
195: ST    4, 0(6)  push fp
196: LDA   4, 0(6)  set fp to sp
203: LDC   0, 0(5)  load integer 0
204: LDA   6, -1(6)  push int/bool/str parameter
205: LDC   3, 34(5)  push int/bool/str parameter
206: SUB   3, 6, 3  push int/bool/str parameter
207: JLE   3, 13(5)  push int/bool/str parameter
208: ST    0, 0(6)  push int/bool/str parameter
209: LDC   0, 3(5)  load integer 3
210: LDA   6, -1(6)  push int/bool/str parameter
211: LDC   3, 34(5)  push int/bool/str parameter
212: SUB   3, 6, 3  push int/bool/str parameter
213: JLE   3, 13(5)  push int/bool/str parameter
214: ST    0, 0(6)  push int/bool/str parameter
215: LDC   0, 10(5)  load array localVariableSize: 10
216: SUB   0, 6, 0  compute absolute address of the array
217: ST    0, -11(6)  store absolute array address
218: LDA   6, -11(6)  preserve space for local vars
219: LDA   7, 63(5)  jump to procedure call
197: LDC   0, 220(5)  load return address into ac
198: LDA   6, -1(6)  push return address
199: LDC   3, 34(5)  push return address
200: SUB   3, 6, 3  push return address
201: JLE   3, 13(5)  push return address
202: ST    0, 0(6)  push return address
220: HALT  0, 0, 0  program ends
