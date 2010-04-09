.DATA    25
.SDATA   "invalid numeric character"
.DATA    3
.SDATA   "-50"
.DATA    13
.SDATA   "out of memory"
.DATA    2
.SDATA   "50"
.DATA    18
.SDATA   "array index error!"
.DATA    3
.SDATA   "+50"
0: LD    6, 0(5)  save stack pointer
1: LD    4, 0(5)  save frame pointer
3: LDC   0, 48(5)  load array error str address
4: LD    1, 0(0)  load str length into ac2
5: JEQ   1, 5(7)  output nothing when empty
6: LDA   0, 1(0)  increase offset
7: LD    2, 0(0)  load char into ac3
8: OUTC   2, 2, 2  write char
9: LDA   1, -1(1)  decrease length of remaining string in ac2
10: JNE   1, -5(7)  continue print if not yet finish
11: OUTNL 0, 0, 0  emit newline
12: HALT  0, 0, 0  stop because of array error
13: LDC   0, 31(5)  load out of memory str address
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
36: LDC   3, 71(5)  push -1
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
46: LDC   3, 71(5)  push 1
47: SUB   3, 6, 3  push 1
48: JLE   3, 13(5)  push 1
49: ST    2, 0(6)  push 1
40: LDA   7, 9(7)  jump to start parsing str
50: LDC   2, 0(5)  load 0 as initial result
51: LDA   6, -1(6)  push 0
52: LDC   3, 71(5)  push 0
53: SUB   3, 6, 3  push 0
54: JLE   3, 13(5)  push 0
55: ST    2, 0(6)  push 0
56: LD    2, 0(6)  pop result into AC3
57: LDA   6, 1(6)  pop result into AC3
58: LDC   3, 10(5)  load 10 into ac4
59: MUL   2, 2, 3  mul result with 10
60: LDA   6, -1(6)  push result
61: LDC   3, 71(5)  push result
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
73: LDC   3, 71(5)  push result
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
91: LDA   6, -1(6)  push fp
92: LDC   3, 71(5)  push fp
93: SUB   3, 6, 3  push fp
94: JLE   3, 13(5)  push fp
95: ST    4, 0(6)  push fp
96: LDA   4, 0(6)  set fp to sp
103: LDA   6, -1(6)  push zero as return value
104: LDC   3, 71(5)  push zero as return value
105: SUB   3, 6, 3  push zero as return value
106: JLE   3, 13(5)  push zero as return value
107: ST    5, 0(6)  push zero as return value
108: LDC   0, 67(5)  load string offset 67
109: LDA   6, -1(6)  push int/bool/str parameter
110: LDC   3, 71(5)  push int/bool/str parameter
111: SUB   3, 6, 3  push int/bool/str parameter
112: JLE   3, 13(5)  push int/bool/str parameter
113: ST    0, 0(6)  push int/bool/str parameter
114: LDA   6, -1(6)  preserve space for local vars
115: LDA   7, 23(5)  jump to procedure call
97: LDC   0, 116(5)  load return address into ac
98: LDA   6, -1(6)  push return address
99: LDC   3, 71(5)  push return address
100: SUB   3, 6, 3  push return address
101: JLE   3, 13(5)  push return address
102: ST    0, 0(6)  push return address
116: LDA   6, -1(6)  push first child's value
117: LDC   3, 71(5)  push first child's value
118: SUB   3, 6, 3  push first child's value
119: JLE   3, 13(5)  push first child's value
120: ST    0, 0(6)  push first child's value
121: LDC   0, 2(5)  load integer 2
122: LD    1, 0(6)  pop first child's value
123: LDA   6, 1(6)  pop first child's value
124: ADD   0, 0, 1  add two children
125: OUT   0, 0, 0  write integer
126: OUTNL 0, 0, 0  write new line
127: LDA   6, -1(6)  push fp
128: LDC   3, 71(5)  push fp
129: SUB   3, 6, 3  push fp
130: JLE   3, 13(5)  push fp
131: ST    4, 0(6)  push fp
132: LDA   4, 0(6)  set fp to sp
139: LDA   6, -1(6)  push zero as return value
140: LDC   3, 71(5)  push zero as return value
141: SUB   3, 6, 3  push zero as return value
142: JLE   3, 13(5)  push zero as return value
143: ST    5, 0(6)  push zero as return value
144: LDC   0, 27(5)  load string offset 27
145: LDA   6, -1(6)  push int/bool/str parameter
146: LDC   3, 71(5)  push int/bool/str parameter
147: SUB   3, 6, 3  push int/bool/str parameter
148: JLE   3, 13(5)  push int/bool/str parameter
149: ST    0, 0(6)  push int/bool/str parameter
150: LDA   6, -1(6)  preserve space for local vars
151: LDA   7, 23(5)  jump to procedure call
133: LDC   0, 152(5)  load return address into ac
134: LDA   6, -1(6)  push return address
135: LDC   3, 71(5)  push return address
136: SUB   3, 6, 3  push return address
137: JLE   3, 13(5)  push return address
138: ST    0, 0(6)  push return address
152: LDA   6, -1(6)  push first child's value
153: LDC   3, 71(5)  push first child's value
154: SUB   3, 6, 3  push first child's value
155: JLE   3, 13(5)  push first child's value
156: ST    0, 0(6)  push first child's value
157: LDC   0, 2(5)  load integer 2
158: LD    1, 0(6)  pop first child's value
159: LDA   6, 1(6)  pop first child's value
160: ADD   0, 0, 1  add two children
161: OUT   0, 0, 0  write integer
162: OUTNL 0, 0, 0  write new line
163: LDA   6, -1(6)  push fp
164: LDC   3, 71(5)  push fp
165: SUB   3, 6, 3  push fp
166: JLE   3, 13(5)  push fp
167: ST    4, 0(6)  push fp
168: LDA   4, 0(6)  set fp to sp
175: LDA   6, -1(6)  push zero as return value
176: LDC   3, 71(5)  push zero as return value
177: SUB   3, 6, 3  push zero as return value
178: JLE   3, 13(5)  push zero as return value
179: ST    5, 0(6)  push zero as return value
180: LDC   0, 45(5)  load string offset 45
181: LDA   6, -1(6)  push int/bool/str parameter
182: LDC   3, 71(5)  push int/bool/str parameter
183: SUB   3, 6, 3  push int/bool/str parameter
184: JLE   3, 13(5)  push int/bool/str parameter
185: ST    0, 0(6)  push int/bool/str parameter
186: LDA   6, -1(6)  preserve space for local vars
187: LDA   7, 23(5)  jump to procedure call
169: LDC   0, 188(5)  load return address into ac
170: LDA   6, -1(6)  push return address
171: LDC   3, 71(5)  push return address
172: SUB   3, 6, 3  push return address
173: JLE   3, 13(5)  push return address
174: ST    0, 0(6)  push return address
188: LDA   6, -1(6)  push first child's value
189: LDC   3, 71(5)  push first child's value
190: SUB   3, 6, 3  push first child's value
191: JLE   3, 13(5)  push first child's value
192: ST    0, 0(6)  push first child's value
193: LDC   0, 2(5)  load integer 2
194: LD    1, 0(6)  pop first child's value
195: LDA   6, 1(6)  pop first child's value
196: ADD   0, 0, 1  add two children
197: OUT   0, 0, 0  write integer
198: OUTNL 0, 0, 0  write new line
199: HALT  0, 0, 0  program ends
