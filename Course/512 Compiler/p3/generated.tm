.DATA    4
.SDATA   "TRUE"
.DATA    5
.SDATA   "FALSE"
.DATA    4
.SDATA   "pass"
.DATA    5
.SDATA   "hello"
.DATA    5
.SDATA   "start"
0: LD    6, 0(5)  save stack pointer
1: LD    4, 0(5)  save frame pointer
3: LDA   1, 0(4)  load fp into ac2
4: LD    0, -3(1)  load int/bool/str from stack
5: LD    1, 0(0)  load str length into ac2
6: LDA   0, 1(0)  increase offset
7: LD    2, 0(0)  load char into ac3
8: OUTC   2, 2, 2  write char
9: LDA   1, -1(1)  decrease length of remaining string in ac2
10: JNE   1, -5(7)  continue print if not yet finish
11: OUTNL 0, 0, 0  write new line
12: LDC   0, 17(5)  load string offset 17
13: LDA   1, 0(4)  load fp into ac2
14: ST    0, -2(1)  store int/bool/string into stack
15: LD    0, -2(4)  load int/bool/string offset as return value
16: LD    1, -1(4)  load return address
17: LDA   6, 0(4)  change sp to fp + 1
18: LD    4, 0(6)  restore fp
19: LDA   6, 1(6)  restore fp
20: LDA   7, 0(1)  jump to the return address
21: LDA   1, 0(4)  load fp into ac2
22: LD    0, -3(1)  load int/bool/str from stack
23: LDA   6, -1(6)  push first child's value
24: ST    0, 0(6)  push first child's value
25: LDA   1, 0(4)  load fp into ac2
26: LD    0, -3(1)  load int/bool/str from stack
27: LD    1, 0(6)  pop first child's value
28: LDA   6, 1(6)  pop first child's value
29: MUL   0, 0, 1  multiply two children
30: LDA   1, 0(4)  load fp into ac2
31: ST    0, -3(1)  store int/bool/string into stack
32: LDA   1, 0(4)  load fp into ac2
33: LD    0, -3(1)  load int/bool/str from stack
34: LDA   1, 0(4)  load fp into ac2
35: ST    0, -2(1)  store int/bool/string into stack
36: LDA   1, 0(4)  load fp into ac2
37: LD    0, -4(1)  load int/bool/str from stack
39: LDC   0, 1(5)  load string offset 1
40: LD    1, 0(0)  load str length into ac2
41: LDA   0, 1(0)  increase offset
42: LD    2, 0(0)  load char into ac3
43: OUTC   2, 2, 2  write char
44: LDA   1, -1(1)  decrease length of remaining string in ac2
45: JNE   1, -5(7)  continue print if not yet finish
46: OUTNL 0, 0, 0  write new line
38: JEQ   0, 9(7)  if expr not true
48: LDC   0, 6(5)  load string offset 6
49: LD    1, 0(0)  load str length into ac2
50: LDA   0, 1(0)  increase offset
51: LD    2, 0(0)  load char into ac3
52: OUTC   2, 2, 2  write char
53: LDA   1, -1(1)  decrease length of remaining string in ac2
54: JNE   1, -5(7)  continue print if not yet finish
55: OUTNL 0, 0, 0  write new line
47: LDA   7, 8(7)  Jump to the end of if
56: LD    0, -2(4)  load int/bool/string offset as return value
57: LD    1, -1(4)  load return address
58: LDA   6, 0(4)  change sp to fp + 1
59: LD    4, 0(6)  restore fp
60: LDA   6, 1(6)  restore fp
61: LDA   7, 0(1)  jump to the return address
2: LDA   7, 62(5)  jump to start of the program
62: LDC   0, 23(5)  load string offset 23
63: LD    1, 0(0)  load str length into ac2
64: LDA   0, 1(0)  increase offset
65: LD    2, 0(0)  load char into ac3
66: OUTC   2, 2, 2  write char
67: LDA   1, -1(1)  decrease length of remaining string in ac2
68: JNE   1, -5(7)  continue print if not yet finish
69: OUTNL 0, 0, 0  write new line
70: LDC   0, 12(5)  load string offset 12
71: ST    0, 29(5)  store int/bool/string into previous used static data
72: LDA   6, -1(6)  push fp
73: ST    4, 0(6)  push fp
74: LDA   4, 0(6)  set fp to sp
78: LDA   6, -1(6)  push zero as return value
79: ST    5, 0(6)  push zero as return value
80: LD    0, 29(5)  load int/bool/str from static data
81: LDA   6, -1(6)  push int/bool/str parameter
82: ST    0, 0(6)  push int/bool/str parameter
83: LDA   6, 0(6)  preserve space for local vars
84: LDA   7, 3(5)  jump to procedure call
75: LDC   0, 85(5)  load return address into ac
76: LDA   6, -1(6)  push return address
77: ST    0, 0(6)  push return address
85: LD    1, 0(0)  load str length into ac2
86: LDA   0, 1(0)  increase offset
87: LD    2, 0(0)  load char into ac3
88: OUTC   2, 2, 2  write char
89: LDA   1, -1(1)  decrease length of remaining string in ac2
90: JNE   1, -5(7)  continue print if not yet finish
91: OUTNL 0, 0, 0  write new line
92: LDA   6, -1(6)  push fp
93: ST    4, 0(6)  push fp
94: LDA   4, 0(6)  set fp to sp
98: LDA   6, -1(6)  push zero as return value
99: ST    5, 0(6)  push zero as return value
100: LDC   0, 10(5)  load integer 10
101: LDA   6, -1(6)  push int/bool/str parameter
102: ST    0, 0(6)  push int/bool/str parameter
103: LDC   0, 1(5)  load booleantrue
104: LDA   6, -1(6)  push int/bool/str parameter
105: ST    0, 0(6)  push int/bool/str parameter
106: LDA   6, 0(6)  preserve space for local vars
107: LDA   7, 21(5)  jump to procedure call
95: LDC   0, 108(5)  load return address into ac
96: LDA   6, -1(6)  push return address
97: ST    0, 0(6)  push return address
108: OUT   0, 0, 0  write integer
109: OUTNL 0, 0, 0  write new line
110: LDA   6, -1(6)  push fp
111: ST    4, 0(6)  push fp
112: LDA   4, 0(6)  set fp to sp
116: LDA   6, -1(6)  push zero as return value
117: ST    5, 0(6)  push zero as return value
118: LDC   0, 10(5)  load integer 10
119: LDA   6, -1(6)  push int/bool/str parameter
120: ST    0, 0(6)  push int/bool/str parameter
121: LDC   0, 0(5)  load booleanfalse
122: LDA   6, -1(6)  push int/bool/str parameter
123: ST    0, 0(6)  push int/bool/str parameter
124: LDA   6, 0(6)  preserve space for local vars
125: LDA   7, 21(5)  jump to procedure call
113: LDC   0, 126(5)  load return address into ac
114: LDA   6, -1(6)  push return address
115: ST    0, 0(6)  push return address
126: OUT   0, 0, 0  write integer
127: OUTNL 0, 0, 0  write new line
128: HALT  0, 0, 0  program ends
