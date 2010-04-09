.DATA    2
.SDATA   "Hi"
.DATA    3
.SDATA   "+10"
.DATA    25
.SDATA   "invalid numeric character"
.DATA    6
.SDATA   "i am c"
.DATA    9
.SDATA   "a[0] is: "
.DATA    1
.SDATA   "b"
.DATA    1
.SDATA   "5"
.DATA    2
.SDATA   "50"
.DATA    18
.SDATA   "array index error!"
.DATA    3
.SDATA   "+50"
.DATA    5
.SDATA   "There"
.DATA    14
.SDATA   "should not see"
.DATA    0
.SDATA   ""
.DATA    15
.SDATA   "m > 4 || m <= 2"
.DATA    5
.SDATA   "first"
.DATA    1
.SDATA   " "
.DATA    5
.SDATA   "third"
.DATA    3
.SDATA   "abc"
.DATA    5
.SDATA   "inner"
.DATA    8
.SDATA   "Hi there"
.DATA    13
.SDATA   "out of memory"
.DATA    27
.SDATA   "- ( (3 > 0) + (i < 0) ) is "
.DATA    3
.SDATA   "10 "
.DATA    9
.SDATA   "a[1] is: "
.DATA    4
.SDATA   "Done"
.DATA    6
.SDATA   "fourth"
.DATA    3
.SDATA   "Hi "
.DATA    16
.SDATA   "after test(a[1])"
.DATA    5
.SDATA   " -10 "
.DATA    1
.SDATA   "a"
.DATA    3
.SDATA   "-50"
.DATA    1
.SDATA   "-"
.DATA    5
.SDATA   "c is "
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
.DATA    9
.SDATA   "i am a[1]"
.DATA    8
.SDATA   "int(s): "
.DATA    8
.SDATA   "Hi There"
.DATA    3
.SDATA   "end"
.DATA    9
.SDATA   "i am a[0]"
.DATA    6
.SDATA   "second"
0: LD    6, 0(5)  save stack pointer
1: LD    4, 0(5)  save frame pointer
3: LDC   0, 58(5)  load array error str address
4: LD    1, 0(0)  load str length into ac2
5: JEQ   1, 5(7)  output nothing when empty
6: LDA   0, 1(0)  increase offset
7: LD    2, 0(0)  load char into ac3
8: OUTC   2, 2, 2  write char
9: LDA   1, -1(1)  decrease length of remaining string in ac2
10: JNE   1, -5(7)  continue print if not yet finish
11: OUTNL 0, 0, 0  emit newline
12: HALT  0, 0, 0  stop because of array error
13: LDC   0, 152(5)  load out of memory str address
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
36: LDC   3, 352(5)  push -1
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
46: LDC   3, 352(5)  push 1
47: SUB   3, 6, 3  push 1
48: JLE   3, 13(5)  push 1
49: ST    2, 0(6)  push 1
40: LDA   7, 9(7)  jump to start parsing str
50: LDC   2, 0(5)  load 0 as initial result
51: LDA   6, -1(6)  push 0
52: LDC   3, 352(5)  push 0
53: SUB   3, 6, 3  push 0
54: JLE   3, 13(5)  push 0
55: ST    2, 0(6)  push 0
56: LD    2, 0(6)  pop result into AC3
57: LDA   6, 1(6)  pop result into AC3
58: LDC   3, 10(5)  load 10 into ac4
59: MUL   2, 2, 3  mul result with 10
60: LDA   6, -1(6)  push result
61: LDC   3, 352(5)  push result
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
73: LDC   3, 352(5)  push result
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
91: LDC   0, 1(5)  load integer 1
92: LDA   1, 0(4)  load fp into ac2
93: ST    0, -2(1)  store int/bool/string into stack
94: LDC   0, 2(5)  load integer 2
95: LDA   1, 0(4)  load fp into ac2
96: ST    0, -3(1)  store int/bool/string into stack
97: LDC   0, 3(5)  load integer 3
98: LDA   1, 0(4)  load fp into ac2
99: ST    0, -4(1)  store int/bool/string into stack
100: LDC   0, 4(5)  load integer 4
101: LDA   1, 0(4)  load fp into ac2
102: ST    0, -5(1)  store int/bool/string into stack
103: LDC   0, 5(5)  load integer 5
104: LDA   1, 0(4)  load fp into ac2
105: ST    0, -6(1)  store int/bool/string into stack
106: LDC   0, 1(5)  load booleantrue
107: LDA   1, 0(4)  load fp into ac2
108: ST    0, -7(1)  store int/bool/string into stack
109: LDC   0, 1(5)  load booleantrue
110: LDA   1, 0(4)  load fp into ac2
111: ST    0, -8(1)  store int/bool/string into stack
112: LDC   0, 1(5)  load booleantrue
113: LDA   1, 0(4)  load fp into ac2
114: ST    0, -9(1)  store int/bool/string into stack
115: LDC   0, 1(5)  load booleantrue
116: LDA   1, 0(4)  load fp into ac2
117: ST    0, -10(1)  store int/bool/string into stack
118: LDA   1, 0(4)  load fp into ac2
119: LD    0, -2(1)  load int/bool/str from stack
120: OUT   0, 0, 0  write integer
121: OUTNL 0, 0, 0  write new line
122: LDA   1, 0(4)  load fp into ac2
123: LD    0, -3(1)  load int/bool/str from stack
124: OUT   0, 0, 0  write integer
125: OUTNL 0, 0, 0  write new line
126: LDA   1, 0(4)  load fp into ac2
127: LD    0, -4(1)  load int/bool/str from stack
128: OUT   0, 0, 0  write integer
129: OUTNL 0, 0, 0  write new line
130: LDA   1, 0(4)  load fp into ac2
131: LD    0, -5(1)  load int/bool/str from stack
132: OUT   0, 0, 0  write integer
133: OUTNL 0, 0, 0  write new line
134: LDA   1, 0(4)  load fp into ac2
135: LD    0, -6(1)  load int/bool/str from stack
136: OUT   0, 0, 0  write integer
137: OUTNL 0, 0, 0  write new line
138: LDA   1, 0(4)  load fp into ac2
139: LD    0, -7(1)  load int/bool/str from stack
140: OUT   0, 0, 0  write integer
141: OUTNL 0, 0, 0  write new line
142: LDA   1, 0(4)  load fp into ac2
143: LD    0, -8(1)  load int/bool/str from stack
144: OUT   0, 0, 0  write integer
145: OUTNL 0, 0, 0  write new line
146: LDA   1, 0(4)  load fp into ac2
147: LD    0, -9(1)  load int/bool/str from stack
148: OUT   0, 0, 0  write integer
149: OUTNL 0, 0, 0  write new line
150: LDA   1, 0(4)  load fp into ac2
151: LD    0, -10(1)  load int/bool/str from stack
152: OUT   0, 0, 0  write integer
153: OUTNL 0, 0, 0  write new line
154: LD    1, -1(4)  load return address
155: LDA   6, 0(4)  change sp to fp + 1
156: LD    4, 0(6)  restore fp
157: LDA   6, 1(6)  restore fp
158: LDA   7, 0(1)  jump to the return address
2: LDA   7, 159(5)  jump to start of the program
159: LDA   6, -1(6)  push fp
160: LDC   3, 352(5)  push fp
161: SUB   3, 6, 3  push fp
162: JLE   3, 13(5)  push fp
163: ST    4, 0(6)  push fp
164: LDA   4, 0(6)  set fp to sp
171: LDC   0, 0(5)  load integer 0
172: LDA   6, -1(6)  push int/bool/str parameter
173: LDC   3, 352(5)  push int/bool/str parameter
174: SUB   3, 6, 3  push int/bool/str parameter
175: JLE   3, 13(5)  push int/bool/str parameter
176: ST    0, 0(6)  push int/bool/str parameter
177: LDC   0, 1(5)  load integer 1
178: LDA   6, -1(6)  push int/bool/str parameter
179: LDC   3, 352(5)  push int/bool/str parameter
180: SUB   3, 6, 3  push int/bool/str parameter
181: JLE   3, 13(5)  push int/bool/str parameter
182: ST    0, 0(6)  push int/bool/str parameter
183: LDC   0, 2(5)  load integer 2
184: LDA   6, -1(6)  push int/bool/str parameter
185: LDC   3, 352(5)  push int/bool/str parameter
186: SUB   3, 6, 3  push int/bool/str parameter
187: JLE   3, 13(5)  push int/bool/str parameter
188: ST    0, 0(6)  push int/bool/str parameter
189: LDC   0, 3(5)  load integer 3
190: LDA   6, -1(6)  push int/bool/str parameter
191: LDC   3, 352(5)  push int/bool/str parameter
192: SUB   3, 6, 3  push int/bool/str parameter
193: JLE   3, 13(5)  push int/bool/str parameter
194: ST    0, 0(6)  push int/bool/str parameter
195: LDC   0, 4(5)  load integer 4
196: LDA   6, -1(6)  push int/bool/str parameter
197: LDC   3, 352(5)  push int/bool/str parameter
198: SUB   3, 6, 3  push int/bool/str parameter
199: JLE   3, 13(5)  push int/bool/str parameter
200: ST    0, 0(6)  push int/bool/str parameter
201: LDC   0, 1(5)  load booleantrue
202: LDA   6, -1(6)  push int/bool/str parameter
203: LDC   3, 352(5)  push int/bool/str parameter
204: SUB   3, 6, 3  push int/bool/str parameter
205: JLE   3, 13(5)  push int/bool/str parameter
206: ST    0, 0(6)  push int/bool/str parameter
207: LDC   0, 1(5)  load booleantrue
208: LDA   6, -1(6)  push int/bool/str parameter
209: LDC   3, 352(5)  push int/bool/str parameter
210: SUB   3, 6, 3  push int/bool/str parameter
211: JLE   3, 13(5)  push int/bool/str parameter
212: ST    0, 0(6)  push int/bool/str parameter
213: LDC   0, 1(5)  load booleantrue
214: LDA   6, -1(6)  push int/bool/str parameter
215: LDC   3, 352(5)  push int/bool/str parameter
216: SUB   3, 6, 3  push int/bool/str parameter
217: JLE   3, 13(5)  push int/bool/str parameter
218: ST    0, 0(6)  push int/bool/str parameter
219: LDC   0, 1(5)  load booleantrue
220: LDA   6, -1(6)  push int/bool/str parameter
221: LDC   3, 352(5)  push int/bool/str parameter
222: SUB   3, 6, 3  push int/bool/str parameter
223: JLE   3, 13(5)  push int/bool/str parameter
224: ST    0, 0(6)  push int/bool/str parameter
225: LDA   6, 0(6)  preserve space for local vars
226: LDA   7, 91(5)  jump to procedure call
165: LDC   0, 227(5)  load return address into ac
166: LDA   6, -1(6)  push return address
167: LDC   3, 352(5)  push return address
168: SUB   3, 6, 3  push return address
169: JLE   3, 13(5)  push return address
170: ST    0, 0(6)  push return address
227: HALT  0, 0, 0  program ends
