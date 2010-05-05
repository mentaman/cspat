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
.DATA    3
.SDATA   "1-0"
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
3: LDC   0, 54(5)  load array error str address
4: LD    1, 0(0)  load str length into ac2
5: JEQ   1, 5(7)  output nothing when empty
6: LDA   0, 1(0)  increase offset
7: LD    2, 0(0)  load char into ac3
8: OUTC   2, 2, 2  write char
9: LDA   1, -1(1)  decrease length of remaining string in ac2
10: JNE   1, -5(7)  continue print if not yet finish
11: OUTNL 0, 0, 0  emit newline
12: HALT  0, 0, 0  stop because of array error
13: LDC   0, 148(5)  load out of memory str address
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
36: LDC   3, 314(5)  push -1
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
46: LDC   3, 314(5)  push 1
47: SUB   3, 6, 3  push 1
48: JLE   3, 13(5)  push 1
49: ST    2, 0(6)  push 1
40: LDA   7, 9(7)  jump to start parsing str
50: LDC   2, 0(5)  load 0 as initial result
51: LDA   6, -1(6)  push 0
52: LDC   3, 314(5)  push 0
53: SUB   3, 6, 3  push 0
54: JLE   3, 13(5)  push 0
55: ST    2, 0(6)  push 0
56: LD    2, 0(6)  pop result into AC3
57: LDA   6, 1(6)  pop result into AC3
58: LDC   3, 10(5)  load 10 into ac4
59: MUL   2, 2, 3  mul result with 10
60: LDA   6, -1(6)  push result
61: LDC   3, 314(5)  push result
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
73: LDC   3, 314(5)  push result
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
92: LDC   3, 314(5)  push fp
93: SUB   3, 6, 3  push fp
94: JLE   3, 13(5)  push fp
95: ST    4, 0(6)  push fp
96: LDA   4, 0(6)  set fp to sp
97: LDC   0, 0(5)  load integer 0
98: LDA   6, -1(6)  push low
99: LDC   3, 314(5)  push low
100: SUB   3, 6, 3  push low
101: JLE   3, 13(5)  push low
102: ST    0, 0(6)  push low
103: LDC   0, 5(5)  load integer 5
104: LDA   6, -1(6)  push hi
105: LDC   3, 314(5)  push hi
106: SUB   3, 6, 3  push hi
107: JLE   3, 13(5)  push hi
108: ST    0, 0(6)  push hi
109: LD    0, -2(4)  load hi into ac 
110: LD    1, -1(4)  load low into ac2 
111: SUB   0, 0, 1  subtract hi with low
113: LDA   1, 0(4)  load fp into ac2
114: LD    0, -1(1)  load int/bool/str from stack
115: LDA   6, -1(6)  push first child's value
116: LDC   3, 314(5)  push first child's value
117: SUB   3, 6, 3  push first child's value
118: JLE   3, 13(5)  push first child's value
119: ST    0, 0(6)  push first child's value
120: LDC   0, 0(5)  load integer 0
121: LD    1, 0(6)  pop first child's value
122: LDA   6, 1(6)  pop first child's value
123: SUB   1, 1, 0  greater than
124: LDC   0, 1(5)  load 1 as true
125: JEQ   1, 1(7)  skip load false
126: LDC   0, 0(5)  load 0 as false
128: LDC   0, 0(5)  load integer 0
129: OUT   0, 0, 0  write integer
130: OUTNL 0, 0, 0  write new line
127: JEQ   0, 4(7)  if expr not true
132: LDA   1, 0(4)  load fp into ac2
133: LD    0, -1(1)  load int/bool/str from stack
134: LDA   6, -1(6)  push first child's value
135: LDC   3, 314(5)  push first child's value
136: SUB   3, 6, 3  push first child's value
137: JLE   3, 13(5)  push first child's value
138: ST    0, 0(6)  push first child's value
139: LDC   0, 1(5)  load integer 1
140: LD    1, 0(6)  pop first child's value
141: LDA   6, 1(6)  pop first child's value
142: SUB   1, 1, 0  greater than
143: LDC   0, 1(5)  load 1 as true
144: JEQ   1, 1(7)  skip load false
145: LDC   0, 0(5)  load 0 as false
147: LDC   0, 1(5)  load integer 1
148: OUT   0, 0, 0  write integer
149: OUTNL 0, 0, 0  write new line
146: JEQ   0, 4(7)  if expr not true
151: LDA   1, 0(4)  load fp into ac2
152: LD    0, -1(1)  load int/bool/str from stack
153: LDA   6, -1(6)  push first child's value
154: LDC   3, 314(5)  push first child's value
155: SUB   3, 6, 3  push first child's value
156: JLE   3, 13(5)  push first child's value
157: ST    0, 0(6)  push first child's value
158: LDC   0, 2(5)  load integer 2
159: LD    1, 0(6)  pop first child's value
160: LDA   6, 1(6)  pop first child's value
161: SUB   1, 1, 0  greater than
162: LDC   0, 1(5)  load 1 as true
163: JEQ   1, 1(7)  skip load false
164: LDC   0, 0(5)  load 0 as false
166: LDC   0, 2(5)  load integer 2
167: OUT   0, 0, 0  write integer
168: OUTNL 0, 0, 0  write new line
170: LDC   0, 3(5)  load integer 3
171: OUT   0, 0, 0  write integer
172: OUTNL 0, 0, 0  write new line
165: JEQ   0, 8(7)  if expr not true
174: LDA   1, 0(4)  load fp into ac2
175: LD    0, -1(1)  load int/bool/str from stack
176: LDA   6, -1(6)  push first child's value
177: LDC   3, 314(5)  push first child's value
178: SUB   3, 6, 3  push first child's value
179: JLE   3, 13(5)  push first child's value
180: ST    0, 0(6)  push first child's value
181: LDC   0, 3(5)  load integer 3
182: LD    1, 0(6)  pop first child's value
183: LDA   6, 1(6)  pop first child's value
184: SUB   1, 1, 0  greater than
185: LDC   0, 1(5)  load 1 as true
186: JEQ   1, 1(7)  skip load false
187: LDC   0, 0(5)  load 0 as false
189: LDC   0, 4(5)  load integer 4
190: OUT   0, 0, 0  write integer
191: OUTNL 0, 0, 0  write new line
188: JEQ   0, 4(7)  if expr not true
193: LDC   0, 5(5)  load integer 5
194: OUT   0, 0, 0  write integer
195: OUTNL 0, 0, 0  write new line
131: LDA   7, 64(7)  Jump to the end of if
150: LDA   7, 45(7)  Jump to the end of if
173: LDA   7, 22(7)  Jump to the end of if
192: LDA   7, 3(7)  Jump to the end of if
196: LD    0, -1(4)  load low into ac
197: LDA   0, 1(0)  decrease low
198: ST    0, -1(4)  save low
199: LDA   7, -91(7)  jump back to loop start
112: JLT   0, 87(7)  jump out of the fa loop
169: LDA   7, 30(7)  break -> jump out of the do loop
200: LDA   6, 0(4)  change sp to fp + 1
201: LD    4, 0(6)  restore fp
202: LDA   6, 1(6)  restore fp
203: LDC   0, 6(5)  load integer 6
204: OUT   0, 0, 0  write integer
205: OUTNL 0, 0, 0  write new line
206: HALT  0, 0, 0  program ends
