.DATA    13
.SDATA   "out of memory"
.DATA    5
.SDATA   "c is "
.DATA    18
.SDATA   "array index error!"
0: LD    6, 0(5)  save stack pointer
1: LD    4, 0(5)  save frame pointer
3: LDC   0, 21(5)  load array error str address
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
27: LDC   3, 41(5)  push 0
28: SUB   3, 6, 3  push 0
29: JLE   3, 13(5)  push 0
30: ST    2, 0(6)  push 0
31: LD    2, 0(6)  pop result into AC3
32: LDA   6, 1(6)  pop result into AC3
33: LDC   3, 10(5)  load 10 into ac4
34: MUL   2, 2, 3  mul result with 10
35: LDA   6, -1(6)  push result
36: LDC   3, 41(5)  push result
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
48: LDC   3, 41(5)  push result
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
63: LDC   0, 15(5)  load string offset 15
64: LD    1, 0(0)  load str length into ac2
65: JEQ   1, 5(7)  output nothing when empty
66: LDA   0, 1(0)  increase offset
67: LD    2, 0(0)  load char into ac3
68: OUTC   2, 2, 2  write char
69: LDA   1, -1(1)  decrease length of remaining string in ac2
70: JNE   1, -5(7)  continue print if not yet finish
71: LDA   1, 0(4)  load fp into ac2
72: LD    0, -2(1)  load int/bool/str from stack
73: OUT   0, 0, 0  write integer
74: OUTNL 0, 0, 0  write new line
75: LDA   1, 0(4)  load fp into ac2
76: LD    0, -2(1)  load int/bool/str from stack
77: LDA   6, -1(6)  push first child's value
78: LDC   3, 41(5)  push first child's value
79: SUB   3, 6, 3  push first child's value
80: JLE   3, 13(5)  push first child's value
81: ST    0, 0(6)  push first child's value
82: LDC   0, 1(5)  load integer 1
83: LD    1, 0(6)  pop first child's value
84: LDA   6, 1(6)  pop first child's value
85: SUB   0, 1, 0  subtract two children
86: LDA   1, 0(4)  load fp into ac2
87: ST    0, -2(1)  store int/bool/string into stack
88: LDA   1, 0(4)  load fp into ac2
89: LD    0, -2(1)  load int/bool/str from stack
90: LDA   6, -1(6)  push first child's value
91: LDC   3, 41(5)  push first child's value
92: SUB   3, 6, 3  push first child's value
93: JLE   3, 13(5)  push first child's value
94: ST    0, 0(6)  push first child's value
95: LDC   0, 0(5)  load integer 0
96: LD    1, 0(6)  pop first child's value
97: LDA   6, 1(6)  pop first child's value
98: SUB   1, 1, 0  greater than
99: LDC   0, 1(5)  load 1 as true
100: JGT   1, 1(7)  skip load false
101: LDC   0, 0(5)  load 0 as false
103: LDA   6, -1(6)  push fp
104: LDC   3, 41(5)  push fp
105: SUB   3, 6, 3  push fp
106: JLE   3, 13(5)  push fp
107: ST    4, 0(6)  push fp
108: LDA   4, 0(6)  set fp to sp
115: LDA   1, 0(4)  load fp into ac2
116: LD    1, 0(1)  load upper level fp into ac2
117: LD    0, -2(1)  load int/bool/str from stack
118: LDA   6, -1(6)  push int/bool/str parameter
119: LDC   3, 41(5)  push int/bool/str parameter
120: SUB   3, 6, 3  push int/bool/str parameter
121: JLE   3, 13(5)  push int/bool/str parameter
122: ST    0, 0(6)  push int/bool/str parameter
123: LDA   6, 0(6)  preserve space for local vars
124: LDA   7, 63(5)  jump to procedure call
109: LDC   0, 125(5)  load return address into ac
110: LDA   6, -1(6)  push return address
111: LDC   3, 41(5)  push return address
112: SUB   3, 6, 3  push return address
113: JLE   3, 13(5)  push return address
114: ST    0, 0(6)  push return address
102: JEQ   0, 22(7)  if expr not true
125: LD    1, -1(4)  load return address
126: LDA   6, 0(4)  change sp to fp + 1
127: LD    4, 0(6)  restore fp
128: LDA   6, 1(6)  restore fp
129: LDA   7, 0(1)  jump to the return address
2: LDA   7, 130(5)  jump to start of the program
130: LDC   0, 10000(5)  load integer 10000
131: ST    0, 40(5)  store int/bool/string into previous used static data
132: LD    0, 40(5)  load int/bool/str from static data
133: OUT   0, 0, 0  write integer
134: OUTNL 0, 0, 0  write new line
135: LDA   6, -1(6)  push fp
136: LDC   3, 41(5)  push fp
137: SUB   3, 6, 3  push fp
138: JLE   3, 13(5)  push fp
139: ST    4, 0(6)  push fp
140: LDA   4, 0(6)  set fp to sp
147: LD    0, 40(5)  load int/bool/str from static data
148: LDA   6, -1(6)  push int/bool/str parameter
149: LDC   3, 41(5)  push int/bool/str parameter
150: SUB   3, 6, 3  push int/bool/str parameter
151: JLE   3, 13(5)  push int/bool/str parameter
152: ST    0, 0(6)  push int/bool/str parameter
153: LDA   6, 0(6)  preserve space for local vars
154: LDA   7, 63(5)  jump to procedure call
141: LDC   0, 155(5)  load return address into ac
142: LDA   6, -1(6)  push return address
143: LDC   3, 41(5)  push return address
144: SUB   3, 6, 3  push return address
145: JLE   3, 13(5)  push return address
146: ST    0, 0(6)  push return address
155: HALT  0, 0, 0  program ends
