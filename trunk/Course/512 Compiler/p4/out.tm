.DATA    25
.SDATA   "invalid numeric character"
.DATA    13
.SDATA   "out of memory"
.DATA    23
.SDATA   "e := c * 0 * 100, e is "
.DATA    18
.SDATA   "array index error!"
.DATA    18
.SDATA   "a := 1*c*-3, a is "
.DATA    17
.SDATA   "b := 0 * c, b is "
.DATA    25
.SDATA   "please give a value for c"
.DATA    21
.SDATA   "d := c * 1 * 2, d is "
0: LD    6, 0(5)  save stack pointer
1: LD    4, 0(5)  save frame pointer
3: LDC   0, 65(5)  load array error str address
4: LD    1, 0(0)  load str length into ac2
5: JEQ   1, 5(7)  output nothing when empty
6: LDA   0, 1(0)  increase offset
7: LD    2, 0(0)  load char into ac3
8: OUTC   2, 2, 2  write char
9: LDA   1, -1(1)  decrease length of remaining string in ac2
10: JNE   1, -5(7)  continue print if not yet finish
11: OUTNL 0, 0, 0  emit newline
12: HALT  0, 0, 0  stop because of array error
13: LDC   0, 27(5)  load out of memory str address
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
36: LDC   3, 174(5)  push -1
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
46: LDC   3, 174(5)  push 1
47: SUB   3, 6, 3  push 1
48: JLE   3, 13(5)  push 1
49: ST    2, 0(6)  push 1
40: LDA   7, 9(7)  jump to start parsing str
50: LDC   2, 0(5)  load 0 as initial result
51: LDA   6, -1(6)  push 0
52: LDC   3, 174(5)  push 0
53: SUB   3, 6, 3  push 0
54: JLE   3, 13(5)  push 0
55: ST    2, 0(6)  push 0
56: LD    2, 0(6)  pop result into AC3
57: LDA   6, 1(6)  pop result into AC3
58: LDC   3, 10(5)  load 10 into ac4
59: MUL   2, 2, 3  mul result with 10
60: LDA   6, -1(6)  push result
61: LDC   3, 174(5)  push result
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
73: LDC   3, 174(5)  push result
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
91: LDC   0, 121(5)  load string offset 121
92: LD    1, 0(0)  load str length into ac2
93: JEQ   1, 5(7)  output nothing when empty
94: LDA   0, 1(0)  increase offset
95: LD    2, 0(0)  load char into ac3
96: OUTC   2, 2, 2  write char
97: LDA   1, -1(1)  decrease length of remaining string in ac2
98: JNE   1, -5(7)  continue print if not yet finish
99: OUTNL 0, 0, 0  write new line
100: IN   0, 0, 0  read integer from stdin
101: ST    0, 172(5)  store int/bool/string into previous used static data
102: LD    0, 172(5)  load int/bool/str from static data
103: LDA   6, -1(6)  push first child's value
104: LDC   3, 174(5)  push first child's value
105: SUB   3, 6, 3  push first child's value
106: JLE   3, 13(5)  push first child's value
107: ST    0, 0(6)  push first child's value
108: LDC   0, 3(5)  load integer 3
109: LDC   1, 0(5)  load 0 into AC2
110: SUB   0, 1, 0  compute negative number
111: LD    1, 0(6)  pop first child's value
112: LDA   6, 1(6)  pop first child's value
113: MUL   0, 0, 1  multiply two children
114: ST    0, 173(5)  store int/bool/string into previous used static data
115: LD    0, 172(5)  load int/bool/str from static data
116: LDA   6, -1(6)  push first child's value
117: LDC   3, 174(5)  push first child's value
118: SUB   3, 6, 3  push first child's value
119: JLE   3, 13(5)  push first child's value
120: ST    0, 0(6)  push first child's value
121: LDC   0, 2(5)  load integer 2
122: LD    1, 0(6)  pop first child's value
123: LDA   6, 1(6)  pop first child's value
124: MUL   0, 0, 1  multiply two children
125: ST    0, 169(5)  store int/bool/string into previous used static data
126: LDC   0, 84(5)  load string offset 84
127: LD    1, 0(0)  load str length into ac2
128: JEQ   1, 5(7)  output nothing when empty
129: LDA   0, 1(0)  increase offset
130: LD    2, 0(0)  load char into ac3
131: OUTC   2, 2, 2  write char
132: LDA   1, -1(1)  decrease length of remaining string in ac2
133: JNE   1, -5(7)  continue print if not yet finish
134: LD    0, 173(5)  load int/bool/str from static data
135: OUT   0, 0, 0  write integer
136: OUTNL 0, 0, 0  write new line
137: LDC   0, 103(5)  load string offset 103
138: LD    1, 0(0)  load str length into ac2
139: JEQ   1, 5(7)  output nothing when empty
140: LDA   0, 1(0)  increase offset
141: LD    2, 0(0)  load char into ac3
142: OUTC   2, 2, 2  write char
143: LDA   1, -1(1)  decrease length of remaining string in ac2
144: JNE   1, -5(7)  continue print if not yet finish
145: LDC   0, 0(5)  load integer 0
146: OUT   0, 0, 0  write integer
147: OUTNL 0, 0, 0  write new line
148: LDC   0, 147(5)  load string offset 147
149: LD    1, 0(0)  load str length into ac2
150: JEQ   1, 5(7)  output nothing when empty
151: LDA   0, 1(0)  increase offset
152: LD    2, 0(0)  load char into ac3
153: OUTC   2, 2, 2  write char
154: LDA   1, -1(1)  decrease length of remaining string in ac2
155: JNE   1, -5(7)  continue print if not yet finish
156: LD    0, 169(5)  load int/bool/str from static data
157: OUT   0, 0, 0  write integer
158: OUTNL 0, 0, 0  write new line
159: LDC   0, 41(5)  load string offset 41
160: LD    1, 0(0)  load str length into ac2
161: JEQ   1, 5(7)  output nothing when empty
162: LDA   0, 1(0)  increase offset
163: LD    2, 0(0)  load char into ac3
164: OUTC   2, 2, 2  write char
165: LDA   1, -1(1)  decrease length of remaining string in ac2
166: JNE   1, -5(7)  continue print if not yet finish
167: LDC   0, 0(5)  load integer 0
168: OUT   0, 0, 0  write integer
169: OUTNL 0, 0, 0  write new line
170: HALT  0, 0, 0  program ends
