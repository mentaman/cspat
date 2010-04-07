.DATA    2
.SDATA   "Hi"
.DATA    3
.SDATA   "+10"
.DATA    1
.SDATA   "b"
.DATA    1
.SDATA   "5"
.DATA    18
.SDATA   "array index error!"
.DATA    5
.SDATA   "There"
.DATA    0
.SDATA   ""
.DATA    14
.SDATA   "should not see"
.DATA    15
.SDATA   "m > 4 || m <= 2"
.DATA    5
.SDATA   "first"
.DATA    1
.SDATA   " "
.DATA    3
.SDATA   "abc"
.DATA    5
.SDATA   "third"
.DATA    5
.SDATA   "inner"
.DATA    13
.SDATA   "out of memory"
.DATA    8
.SDATA   "Hi there"
.DATA    3
.SDATA   "10 "
.DATA    4
.SDATA   "Done"
.DATA    3
.SDATA   "Hi "
.DATA    6
.SDATA   "fourth"
.DATA    5
.SDATA   " -10 "
.DATA    1
.SDATA   "a"
.DATA    1
.SDATA   "-"
.DATA    15
.SDATA   "m <= 4 && m > 2"
.DATA    11
.SDATA   "after break"
.DATA    1
.SDATA   "1"
.DATA    3
.SDATA   "1-0"
.DATA    1
.SDATA   "3"
.DATA    5
.SDATA   "outer"
.DATA    8
.SDATA   "Hi There"
.DATA    3
.SDATA   "end"
.DATA    6
.SDATA   "second"
0: LD    6, 0(5)  save stack pointer
1: LD    4, 0(5)  save frame pointer
3: LDC   0, 12(5)  load array error str address
4: LD    1, 0(0)  load str length into ac2
5: JEQ   1, 5(7)  output nothing when empty
6: LDA   0, 1(0)  increase offset
7: LD    2, 0(0)  load char into ac3
8: OUTC   2, 2, 2  write char
9: LDA   1, -1(1)  decrease length of remaining string in ac2
10: JNE   1, -5(7)  continue print if not yet finish
11: OUTNL 0, 0, 0  emit newline
12: HALT  0, 0, 0  stop because of array error
13: LDC   0, 93(5)  load out of memory str address
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
27: LDC   3, 209(5)  push 0
28: SUB   3, 6, 3  push 0
29: JLE   3, 13(5)  push 0
30: ST    2, 0(6)  push 0
31: LD    2, 0(6)  pop result into AC3
32: LDA   6, 1(6)  pop result into AC3
33: LDC   3, 10(5)  load 10 into ac4
34: MUL   2, 2, 3  mul result with 10
35: LDA   6, -1(6)  push result
36: LDC   3, 209(5)  push result
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
48: LDC   3, 209(5)  push result
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
63: LD    0, 208(5)  load int/bool/str from static data
64: LDA   6, -1(6)  push first child's value
65: LDC   3, 209(5)  push first child's value
66: SUB   3, 6, 3  push first child's value
67: JLE   3, 13(5)  push first child's value
68: ST    0, 0(6)  push first child's value
69: LDC   0, 4(5)  load integer 4
70: LD    1, 0(6)  pop first child's value
71: LDA   6, 1(6)  pop first child's value
72: SUB   1, 1, 0  greater than
73: LDC   0, 1(5)  load 1 as true
74: JGT   1, 1(7)  skip load false
75: LDC   0, 0(5)  load 0 as false
76: JEQ   0, 1(7)  if expr not true
78: LD    0, 208(5)  load int/bool/str from static data
79: LDA   6, -1(6)  push first child's value
80: LDC   3, 209(5)  push first child's value
81: SUB   3, 6, 3  push first child's value
82: JLE   3, 13(5)  push first child's value
83: ST    0, 0(6)  push first child's value
84: LDC   0, 1(5)  load integer 1
85: LD    1, 0(6)  pop first child's value
86: LDA   6, 1(6)  pop first child's value
87: ADD   0, 0, 1  add two children
88: ST    0, 208(5)  store int/bool/string into previous used static data
89: LDC   0, 8(5)  load string offset 8
90: LD    1, 0(0)  load str length into ac2
91: JEQ   1, 5(7)  output nothing when empty
92: LDA   0, 1(0)  increase offset
93: LD    2, 0(0)  load char into ac3
94: OUTC   2, 2, 2  write char
95: LDA   1, -1(1)  decrease length of remaining string in ac2
96: JNE   1, -5(7)  continue print if not yet finish
97: OUTNL 0, 0, 0  write new line
98: LDA   6, -1(6)  push fp
99: LDC   3, 209(5)  push fp
100: SUB   3, 6, 3  push fp
101: JLE   3, 13(5)  push fp
102: ST    4, 0(6)  push fp
103: LDA   4, 0(6)  set fp to sp
110: LDA   1, 0(4)  load fp into ac2
111: LD    1, 0(1)  load upper level fp into ac2
112: LD    0, -2(1)  load int/bool/str from stack
113: LDA   6, -1(6)  push int/bool/str parameter
114: LDC   3, 209(5)  push int/bool/str parameter
115: SUB   3, 6, 3  push int/bool/str parameter
116: JLE   3, 13(5)  push int/bool/str parameter
117: ST    0, 0(6)  push int/bool/str parameter
118: LDA   6, 0(6)  preserve space for local vars
119: LDA   7, 0(5)  jump to procedure call
104: LDC   0, 120(5)  load return address into ac
105: LDA   6, -1(6)  push return address
106: LDC   3, 209(5)  push return address
107: SUB   3, 6, 3  push return address
108: JLE   3, 13(5)  push return address
109: ST    0, 0(6)  push return address
77: LDA   7, 42(7)  return procedure call
120: LD    1, -1(4)  load return address
121: LDA   6, 0(4)  change sp to fp + 1
122: LD    4, 0(6)  restore fp
123: LDA   6, 1(6)  restore fp
124: LDA   7, 0(1)  jump to the return address
125: LDC   0, 142(5)  load string offset 142
126: LD    1, 0(0)  load str length into ac2
127: JEQ   1, 5(7)  output nothing when empty
128: LDA   0, 1(0)  increase offset
129: LD    2, 0(0)  load char into ac3
130: OUTC   2, 2, 2  write char
131: LDA   1, -1(1)  decrease length of remaining string in ac2
132: JNE   1, -5(7)  continue print if not yet finish
133: OUTNL 0, 0, 0  write new line
134: LDA   6, -1(6)  push fp
135: LDC   3, 209(5)  push fp
136: SUB   3, 6, 3  push fp
137: JLE   3, 13(5)  push fp
138: ST    4, 0(6)  push fp
139: LDA   4, 0(6)  set fp to sp
146: LDA   1, 0(4)  load fp into ac2
147: LD    1, 0(1)  load upper level fp into ac2
148: LD    0, -2(1)  load int/bool/str from stack
149: LDA   6, -1(6)  push int/bool/str parameter
150: LDC   3, 209(5)  push int/bool/str parameter
151: SUB   3, 6, 3  push int/bool/str parameter
152: JLE   3, 13(5)  push int/bool/str parameter
153: ST    0, 0(6)  push int/bool/str parameter
154: LDA   6, 0(6)  preserve space for local vars
155: LDA   7, 63(5)  jump to procedure call
140: LDC   0, 156(5)  load return address into ac
141: LDA   6, -1(6)  push return address
142: LDC   3, 209(5)  push return address
143: SUB   3, 6, 3  push return address
144: JLE   3, 13(5)  push return address
145: ST    0, 0(6)  push return address
156: LD    1, -1(4)  load return address
157: LDA   6, 0(4)  change sp to fp + 1
158: LD    4, 0(6)  restore fp
159: LDA   6, 1(6)  restore fp
160: LDA   7, 0(1)  jump to the return address
2: LDA   7, 161(5)  jump to start of the program
161: LDC   0, 0(5)  load integer 0
162: ST    0, 208(5)  store int/bool/string into previous used static data
163: LDA   6, -1(6)  push fp
164: LDC   3, 209(5)  push fp
165: SUB   3, 6, 3  push fp
166: JLE   3, 13(5)  push fp
167: ST    4, 0(6)  push fp
168: LDA   4, 0(6)  set fp to sp
175: LDC   0, 0(5)  load integer 0
176: LDA   6, -1(6)  push int/bool/str parameter
177: LDC   3, 209(5)  push int/bool/str parameter
178: SUB   3, 6, 3  push int/bool/str parameter
179: JLE   3, 13(5)  push int/bool/str parameter
180: ST    0, 0(6)  push int/bool/str parameter
181: LDA   6, 0(6)  preserve space for local vars
182: LDA   7, 63(5)  jump to procedure call
169: LDC   0, 183(5)  load return address into ac
170: LDA   6, -1(6)  push return address
171: LDC   3, 209(5)  push return address
172: SUB   3, 6, 3  push return address
173: JLE   3, 13(5)  push return address
174: ST    0, 0(6)  push return address
183: LDC   0, 0(5)  load integer 0
184: ST    0, 208(5)  store int/bool/string into previous used static data
185: LDA   6, -1(6)  push fp
186: LDC   3, 209(5)  push fp
187: SUB   3, 6, 3  push fp
188: JLE   3, 13(5)  push fp
189: ST    4, 0(6)  push fp
190: LDA   4, 0(6)  set fp to sp
197: LDC   0, 0(5)  load integer 0
198: LDA   6, -1(6)  push int/bool/str parameter
199: LDC   3, 209(5)  push int/bool/str parameter
200: SUB   3, 6, 3  push int/bool/str parameter
201: JLE   3, 13(5)  push int/bool/str parameter
202: ST    0, 0(6)  push int/bool/str parameter
203: LDA   6, 0(6)  preserve space for local vars
204: LDA   7, 125(5)  jump to procedure call
191: LDC   0, 205(5)  load return address into ac
192: LDA   6, -1(6)  push return address
193: LDC   3, 209(5)  push return address
194: SUB   3, 6, 3  push return address
195: JLE   3, 13(5)  push return address
196: ST    0, 0(6)  push return address
205: HALT  0, 0, 0  program ends
