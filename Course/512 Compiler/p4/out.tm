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
23: LDC   0, 121(5)  load string offset 121
24: LD    1, 0(0)  load str length into ac2
25: JEQ   1, 5(7)  output nothing when empty
26: LDA   0, 1(0)  increase offset
27: LD    2, 0(0)  load char into ac3
28: OUTC   2, 2, 2  write char
29: LDA   1, -1(1)  decrease length of remaining string in ac2
30: JNE   1, -5(7)  continue print if not yet finish
31: OUTNL 0, 0, 0  write new line
32: IN   0, 0, 0  read integer from stdin
33: ST    0, 172(5)  store int/bool/string into previous used static data
34: LD    0, 172(5)  load int/bool/str from static data
35: LDA   6, -1(6)  push first child's value
36: LDC   3, 174(5)  push first child's value
37: SUB   3, 6, 3  push first child's value
38: JLE   3, 13(5)  push first child's value
39: ST    0, 0(6)  push first child's value
40: LDC   0, 3(5)  load integer 3
41: LDC   1, 0(5)  load 0 into AC2
42: SUB   0, 1, 0  compute negative number
43: LD    1, 0(6)  pop first child's value
44: LDA   6, 1(6)  pop first child's value
45: MUL   0, 0, 1  multiply two children
46: ST    0, 173(5)  store int/bool/string into previous used static data
47: LD    0, 172(5)  load int/bool/str from static data
48: LDA   6, -1(6)  push first child's value
49: LDC   3, 174(5)  push first child's value
50: SUB   3, 6, 3  push first child's value
51: JLE   3, 13(5)  push first child's value
52: ST    0, 0(6)  push first child's value
53: LDC   0, 2(5)  load integer 2
54: LD    1, 0(6)  pop first child's value
55: LDA   6, 1(6)  pop first child's value
56: MUL   0, 0, 1  multiply two children
57: ST    0, 169(5)  store int/bool/string into previous used static data
58: LDC   0, 84(5)  load string offset 84
59: LD    1, 0(0)  load str length into ac2
60: JEQ   1, 5(7)  output nothing when empty
61: LDA   0, 1(0)  increase offset
62: LD    2, 0(0)  load char into ac3
63: OUTC   2, 2, 2  write char
64: LDA   1, -1(1)  decrease length of remaining string in ac2
65: JNE   1, -5(7)  continue print if not yet finish
66: LD    0, 173(5)  load int/bool/str from static data
67: OUT   0, 0, 0  write integer
68: OUTNL 0, 0, 0  write new line
69: LDC   0, 103(5)  load string offset 103
70: LD    1, 0(0)  load str length into ac2
71: JEQ   1, 5(7)  output nothing when empty
72: LDA   0, 1(0)  increase offset
73: LD    2, 0(0)  load char into ac3
74: OUTC   2, 2, 2  write char
75: LDA   1, -1(1)  decrease length of remaining string in ac2
76: JNE   1, -5(7)  continue print if not yet finish
77: LDC   0, 0(5)  load integer 0
78: OUT   0, 0, 0  write integer
79: OUTNL 0, 0, 0  write new line
80: LDC   0, 147(5)  load string offset 147
81: LD    1, 0(0)  load str length into ac2
82: JEQ   1, 5(7)  output nothing when empty
83: LDA   0, 1(0)  increase offset
84: LD    2, 0(0)  load char into ac3
85: OUTC   2, 2, 2  write char
86: LDA   1, -1(1)  decrease length of remaining string in ac2
87: JNE   1, -5(7)  continue print if not yet finish
88: LD    0, 169(5)  load int/bool/str from static data
89: OUT   0, 0, 0  write integer
90: OUTNL 0, 0, 0  write new line
91: LDC   0, 41(5)  load string offset 41
92: LD    1, 0(0)  load str length into ac2
93: JEQ   1, 5(7)  output nothing when empty
94: LDA   0, 1(0)  increase offset
95: LD    2, 0(0)  load char into ac3
96: OUTC   2, 2, 2  write char
97: LDA   1, -1(1)  decrease length of remaining string in ac2
98: JNE   1, -5(7)  continue print if not yet finish
99: LDC   0, 0(5)  load integer 0
100: OUT   0, 0, 0  write integer
101: OUTNL 0, 0, 0  write new line
102: HALT  0, 0, 0  program ends
2: LDC   7, 23(0)  optimized to new destination
