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
63: LDC   0, 2(5)  load integer 2
64: LDA   6, -1(6)  push first child's value
65: LDC   3, 59(5)  push first child's value
66: SUB   3, 6, 3  push first child's value
67: JLE   3, 13(5)  push first child's value
68: ST    0, 0(6)  push first child's value
69: LDC   0, 2(5)  load integer 2
70: LD    1, 0(6)  pop first child's value
71: LDA   6, 1(6)  pop first child's value
72: MUL   0, 0, 1  multiply two children
73: OUT   0, 0, 0  write integer
74: OUTNL 0, 0, 0  write new line
75: LDC   0, 2(5)  load integer 2
76: LDA   6, -1(6)  push first child's value
77: LDC   3, 59(5)  push first child's value
78: SUB   3, 6, 3  push first child's value
79: JLE   3, 13(5)  push first child's value
80: ST    0, 0(6)  push first child's value
81: LDC   0, 4(5)  load integer 4
82: LD    1, 0(6)  pop first child's value
83: LDA   6, 1(6)  pop first child's value
84: MUL   0, 0, 1  multiply two children
85: LDA   6, -1(6)  push first child's value
86: LDC   3, 59(5)  push first child's value
87: SUB   3, 6, 3  push first child's value
88: JLE   3, 13(5)  push first child's value
89: ST    0, 0(6)  push first child's value
90: LDC   0, 7(5)  load integer 7
91: LD    1, 0(6)  pop first child's value
92: LDA   6, 1(6)  pop first child's value
93: MUL   0, 0, 1  multiply two children
94: LDA   6, -1(6)  push first child's value
95: LDC   3, 59(5)  push first child's value
96: SUB   3, 6, 3  push first child's value
97: JLE   3, 13(5)  push first child's value
98: ST    0, 0(6)  push first child's value
99: LDC   0, 9(5)  load integer 9
100: LD    1, 0(6)  pop first child's value
101: LDA   6, 1(6)  pop first child's value
102: MUL   0, 0, 1  multiply two children
103: OUT   0, 0, 0  write integer
104: OUTNL 0, 0, 0  write new line
105: LDC   0, 2(5)  load integer 2
106: LDA   6, -1(6)  push first child's value
107: LDC   3, 59(5)  push first child's value
108: SUB   3, 6, 3  push first child's value
109: JLE   3, 13(5)  push first child's value
110: ST    0, 0(6)  push first child's value
111: LDC   0, 3(5)  load integer 3
112: LDA   6, -1(6)  push first child's value
113: LDC   3, 59(5)  push first child's value
114: SUB   3, 6, 3  push first child's value
115: JLE   3, 13(5)  push first child's value
116: ST    0, 0(6)  push first child's value
117: LDC   0, 4(5)  load integer 4
118: LD    1, 0(6)  pop first child's value
119: LDA   6, 1(6)  pop first child's value
120: MUL   0, 0, 1  multiply two children
121: LD    1, 0(6)  pop first child's value
122: LDA   6, 1(6)  pop first child's value
123: MUL   0, 0, 1  multiply two children
124: OUT   0, 0, 0  write integer
125: OUTNL 0, 0, 0  write new line
126: LDC   0, 1(5)  load booleantrue
128: LDA   6, -1(6)  push first child's value
129: LDC   3, 59(5)  push first child's value
130: SUB   3, 6, 3  push first child's value
131: JLE   3, 13(5)  push first child's value
132: ST    0, 0(6)  push first child's value
133: LDC   0, 0(5)  load booleanfalse
134: LD    1, 0(6)  pop first child's value
135: LDA   6, 1(6)  pop first child's value
136: MUL   0, 0, 1  multiply two children
127: JEQ   0, 9(7)  short circuit
137: OUT   0, 0, 0  write integer
138: OUTNL 0, 0, 0  write new line
139: LDC   0, 1(5)  load booleantrue
141: LDA   6, -1(6)  push first child's value
142: LDC   3, 59(5)  push first child's value
143: SUB   3, 6, 3  push first child's value
144: JLE   3, 13(5)  push first child's value
145: ST    0, 0(6)  push first child's value
146: LDC   0, 0(5)  load booleanfalse
148: LDA   6, -1(6)  push first child's value
149: LDC   3, 59(5)  push first child's value
150: SUB   3, 6, 3  push first child's value
151: JLE   3, 13(5)  push first child's value
152: ST    0, 0(6)  push first child's value
153: LDC   0, 0(5)  load booleanfalse
154: LD    1, 0(6)  pop first child's value
155: LDA   6, 1(6)  pop first child's value
156: MUL   0, 0, 1  multiply two children
147: JEQ   0, 9(7)  short circuit
157: LD    1, 0(6)  pop first child's value
158: LDA   6, 1(6)  pop first child's value
159: MUL   0, 0, 1  multiply two children
140: JEQ   0, 19(7)  short circuit
160: OUT   0, 0, 0  write integer
161: OUTNL 0, 0, 0  write new line
162: LDC   0, 1(5)  load booleantrue
164: LDA   6, -1(6)  push first child's value
165: LDC   3, 59(5)  push first child's value
166: SUB   3, 6, 3  push first child's value
167: JLE   3, 13(5)  push first child's value
168: ST    0, 0(6)  push first child's value
169: LDC   0, 0(5)  load booleanfalse
170: LD    1, 0(6)  pop first child's value
171: LDA   6, 1(6)  pop first child's value
172: MUL   0, 0, 1  multiply two children
163: JEQ   0, 9(7)  short circuit
174: LDA   6, -1(6)  push first child's value
175: LDC   3, 59(5)  push first child's value
176: SUB   3, 6, 3  push first child's value
177: JLE   3, 13(5)  push first child's value
178: ST    0, 0(6)  push first child's value
179: LDC   0, 0(5)  load booleanfalse
181: LDA   6, -1(6)  push first child's value
182: LDC   3, 59(5)  push first child's value
183: SUB   3, 6, 3  push first child's value
184: JLE   3, 13(5)  push first child's value
185: ST    0, 0(6)  push first child's value
186: LDC   0, 0(5)  load booleanfalse
187: LD    1, 0(6)  pop first child's value
188: LDA   6, 1(6)  pop first child's value
189: MUL   0, 0, 1  multiply two children
180: JEQ   0, 9(7)  short circuit
190: LD    1, 0(6)  pop first child's value
191: LDA   6, 1(6)  pop first child's value
192: MUL   0, 0, 1  multiply two children
173: JEQ   0, 19(7)  short circuit
193: OUT   0, 0, 0  write integer
194: OUTNL 0, 0, 0  write new line
195: HALT  0, 0, 0  program ends
