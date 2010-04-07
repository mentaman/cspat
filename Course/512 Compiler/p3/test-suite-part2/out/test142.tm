.DATA    2
.SDATA   "Hi"
.DATA    6
.SDATA   "fourth"
.DATA    1
.SDATA   "a"
.DATA    1
.SDATA   "b"
.DATA    1
.SDATA   "5"
.DATA    18
.SDATA   "array index error!"
.DATA    11
.SDATA   "after break"
.DATA    1
.SDATA   "1"
.DATA    14
.SDATA   "should not see"
.DATA    1
.SDATA   "3"
.DATA    5
.SDATA   "outer"
.DATA    5
.SDATA   "first"
.DATA    3
.SDATA   "end"
.DATA    1
.SDATA   " "
.DATA    5
.SDATA   "third"
.DATA    13
.SDATA   "out of memory"
.DATA    5
.SDATA   "inner"
.DATA    4
.SDATA   "Done"
.DATA    6
.SDATA   "second"
0: LD    6, 0(5)  save stack pointer
1: LD    4, 0(5)  save frame pointer
3: LDC   0, 17(5)  load array error str address
4: LD    1, 0(0)  load str length into ac2
5: JEQ   1, 5(7)  output nothing when empty
6: LDA   0, 1(0)  increase offset
7: LD    2, 0(0)  load char into ac3
8: OUTC   2, 2, 2  write char
9: LDA   1, -1(1)  decrease length of remaining string in ac2
10: JNE   1, -5(7)  continue print if not yet finish
11: OUTNL 0, 0, 0  emit newline
12: HALT  0, 0, 0  stop because of array error
13: LDC   0, 91(5)  load out of memory str address
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
27: LDC   3, 123(5)  push 0
28: SUB   3, 6, 3  push 0
29: JLE   3, 13(5)  push 0
30: ST    2, 0(6)  push 0
31: LD    2, 0(6)  pop result into AC3
32: LDA   6, 1(6)  pop result into AC3
33: LDC   3, 10(5)  load 10 into ac4
34: MUL   2, 2, 3  mul result with 10
35: LDA   6, -1(6)  push result
36: LDC   3, 123(5)  push result
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
48: LDC   3, 123(5)  push result
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
63: LDC   0, 1(5)  load integer 1
64: LDA   1, 0(4)  load fp into ac2
65: ST    0, -2(1)  store int/bool/string into stack
66: LDC   0, 2(5)  load integer 2
67: LDA   1, 0(4)  load fp into ac2
68: ST    0, -3(1)  store int/bool/string into stack
69: LDC   0, 3(5)  load integer 3
70: LDA   1, 0(4)  load fp into ac2
71: ST    0, -4(1)  store int/bool/string into stack
72: LDC   0, 4(5)  load integer 4
73: LDA   1, 0(4)  load fp into ac2
74: ST    0, -5(1)  store int/bool/string into stack
75: LDC   0, 5(5)  load integer 5
76: LDA   1, 0(4)  load fp into ac2
77: ST    0, -6(1)  store int/bool/string into stack
78: LDC   0, 1(5)  load booleantrue
79: LDA   1, 0(4)  load fp into ac2
80: ST    0, -7(1)  store int/bool/string into stack
81: LDC   0, 1(5)  load booleantrue
82: LDA   1, 0(4)  load fp into ac2
83: ST    0, -8(1)  store int/bool/string into stack
84: LDC   0, 1(5)  load booleantrue
85: LDA   1, 0(4)  load fp into ac2
86: ST    0, -9(1)  store int/bool/string into stack
87: LDC   0, 1(5)  load booleantrue
88: LDA   1, 0(4)  load fp into ac2
89: ST    0, -10(1)  store int/bool/string into stack
90: LDA   1, 0(4)  load fp into ac2
91: LD    0, -2(1)  load int/bool/str from stack
92: OUT   0, 0, 0  write integer
93: OUTNL 0, 0, 0  write new line
94: LDA   1, 0(4)  load fp into ac2
95: LD    0, -3(1)  load int/bool/str from stack
96: OUT   0, 0, 0  write integer
97: OUTNL 0, 0, 0  write new line
98: LDA   1, 0(4)  load fp into ac2
99: LD    0, -4(1)  load int/bool/str from stack
100: OUT   0, 0, 0  write integer
101: OUTNL 0, 0, 0  write new line
102: LDA   1, 0(4)  load fp into ac2
103: LD    0, -5(1)  load int/bool/str from stack
104: OUT   0, 0, 0  write integer
105: OUTNL 0, 0, 0  write new line
106: LDA   1, 0(4)  load fp into ac2
107: LD    0, -6(1)  load int/bool/str from stack
108: OUT   0, 0, 0  write integer
109: OUTNL 0, 0, 0  write new line
110: LDA   1, 0(4)  load fp into ac2
111: LD    0, -7(1)  load int/bool/str from stack
112: OUT   0, 0, 0  write integer
113: OUTNL 0, 0, 0  write new line
114: LDA   1, 0(4)  load fp into ac2
115: LD    0, -8(1)  load int/bool/str from stack
116: OUT   0, 0, 0  write integer
117: OUTNL 0, 0, 0  write new line
118: LDA   1, 0(4)  load fp into ac2
119: LD    0, -9(1)  load int/bool/str from stack
120: OUT   0, 0, 0  write integer
121: OUTNL 0, 0, 0  write new line
122: LDA   1, 0(4)  load fp into ac2
123: LD    0, -10(1)  load int/bool/str from stack
124: OUT   0, 0, 0  write integer
125: OUTNL 0, 0, 0  write new line
126: LD    1, -1(4)  load return address
127: LDA   6, 0(4)  change sp to fp + 1
128: LD    4, 0(6)  restore fp
129: LDA   6, 1(6)  restore fp
130: LDA   7, 0(1)  jump to the return address
2: LDA   7, 131(5)  jump to start of the program
131: LDA   6, -1(6)  push fp
132: LDC   3, 123(5)  push fp
133: SUB   3, 6, 3  push fp
134: JLE   3, 13(5)  push fp
135: ST    4, 0(6)  push fp
136: LDA   4, 0(6)  set fp to sp
143: LDC   0, 0(5)  load integer 0
144: LDA   6, -1(6)  push int/bool/str parameter
145: LDC   3, 123(5)  push int/bool/str parameter
146: SUB   3, 6, 3  push int/bool/str parameter
147: JLE   3, 13(5)  push int/bool/str parameter
148: ST    0, 0(6)  push int/bool/str parameter
149: LDC   0, 1(5)  load integer 1
150: LDA   6, -1(6)  push int/bool/str parameter
151: LDC   3, 123(5)  push int/bool/str parameter
152: SUB   3, 6, 3  push int/bool/str parameter
153: JLE   3, 13(5)  push int/bool/str parameter
154: ST    0, 0(6)  push int/bool/str parameter
155: LDC   0, 2(5)  load integer 2
156: LDA   6, -1(6)  push int/bool/str parameter
157: LDC   3, 123(5)  push int/bool/str parameter
158: SUB   3, 6, 3  push int/bool/str parameter
159: JLE   3, 13(5)  push int/bool/str parameter
160: ST    0, 0(6)  push int/bool/str parameter
161: LDC   0, 3(5)  load integer 3
162: LDA   6, -1(6)  push int/bool/str parameter
163: LDC   3, 123(5)  push int/bool/str parameter
164: SUB   3, 6, 3  push int/bool/str parameter
165: JLE   3, 13(5)  push int/bool/str parameter
166: ST    0, 0(6)  push int/bool/str parameter
167: LDC   0, 4(5)  load integer 4
168: LDA   6, -1(6)  push int/bool/str parameter
169: LDC   3, 123(5)  push int/bool/str parameter
170: SUB   3, 6, 3  push int/bool/str parameter
171: JLE   3, 13(5)  push int/bool/str parameter
172: ST    0, 0(6)  push int/bool/str parameter
173: LDC   0, 1(5)  load booleantrue
174: LDA   6, -1(6)  push int/bool/str parameter
175: LDC   3, 123(5)  push int/bool/str parameter
176: SUB   3, 6, 3  push int/bool/str parameter
177: JLE   3, 13(5)  push int/bool/str parameter
178: ST    0, 0(6)  push int/bool/str parameter
179: LDC   0, 1(5)  load booleantrue
180: LDA   6, -1(6)  push int/bool/str parameter
181: LDC   3, 123(5)  push int/bool/str parameter
182: SUB   3, 6, 3  push int/bool/str parameter
183: JLE   3, 13(5)  push int/bool/str parameter
184: ST    0, 0(6)  push int/bool/str parameter
185: LDC   0, 1(5)  load booleantrue
186: LDA   6, -1(6)  push int/bool/str parameter
187: LDC   3, 123(5)  push int/bool/str parameter
188: SUB   3, 6, 3  push int/bool/str parameter
189: JLE   3, 13(5)  push int/bool/str parameter
190: ST    0, 0(6)  push int/bool/str parameter
191: LDC   0, 1(5)  load booleantrue
192: LDA   6, -1(6)  push int/bool/str parameter
193: LDC   3, 123(5)  push int/bool/str parameter
194: SUB   3, 6, 3  push int/bool/str parameter
195: JLE   3, 13(5)  push int/bool/str parameter
196: ST    0, 0(6)  push int/bool/str parameter
197: LDA   6, 0(6)  preserve space for local vars
198: LDA   7, 63(5)  jump to procedure call
137: LDC   0, 199(5)  load return address into ac
138: LDA   6, -1(6)  push return address
139: LDC   3, 123(5)  push return address
140: SUB   3, 6, 3  push return address
141: JLE   3, 13(5)  push return address
142: ST    0, 0(6)  push return address
199: HALT  0, 0, 0  program ends
