.DATA    25
.SDATA   "invalid numeric character"
.DATA    13
.SDATA   "out of memory"
.DATA    11
.SDATA   "after a := "
.DATA    18
.SDATA   "array index error!"
.DATA    12
.SDATA   "before a := "
.DATA    5
.SDATA   "a := "
0: LD    6, 0(5)  save stack pointer
1: LD    4, 0(5)  save frame pointer
3: LDC   0, 53(5)  load array error str address
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
2: LDA   7, 23(5)  jump to start of the program
23: LDC   0, 72(5)  load string offset 72
24: LD    1, 0(0)  load str length into ac2
25: JEQ   1, 5(7)  output nothing when empty
26: LDA   0, 1(0)  increase offset
27: LD    2, 0(0)  load char into ac3
28: OUTC   2, 2, 2  write char
29: LDA   1, -1(1)  decrease length of remaining string in ac2
30: JNE   1, -5(7)  continue print if not yet finish
31: LD    0, 92(5)  load int/bool/str from static data
32: OUT   0, 0, 0  write integer
33: OUTNL 0, 0, 0  write new line
34: LDC   0, 0(5)  load integer 0
35: ST    0, 92(5)  store int/bool/string into previous used static data
36: LDA   6, -1(6)  push fp
37: LDC   3, 93(5)  push fp
38: SUB   3, 6, 3  push fp
39: JLE   3, 13(5)  push fp
40: ST    4, 0(6)  push fp
41: LDA   4, 0(6)  set fp to sp
42: LDC   0, 1(5)  load integer 1
43: LDA   6, -1(6)  push low
44: LDC   3, 93(5)  push low
45: SUB   3, 6, 3  push low
46: JLE   3, 13(5)  push low
47: ST    0, 0(6)  push low
48: LDC   0, 3(5)  load integer 3
49: LDA   6, -1(6)  push hi
50: LDC   3, 93(5)  push hi
51: SUB   3, 6, 3  push hi
52: JLE   3, 13(5)  push hi
53: ST    0, 0(6)  push hi
54: LD    0, -2(4)  load hi into ac 
55: LD    1, -1(4)  load low into ac2 
56: SUB   0, 0, 1  subtract hi with low
58: LD    0, 92(5)  load int/bool/str from static data
59: LDA   6, -1(6)  push first child's value
60: LDC   3, 93(5)  push first child's value
61: SUB   3, 6, 3  push first child's value
62: JLE   3, 13(5)  push first child's value
63: ST    0, 0(6)  push first child's value
64: LDC   0, 3(5)  load integer 3
65: LD    1, 0(6)  pop first child's value
66: LDA   6, 1(6)  pop first child's value
67: ADD   0, 0, 1  add two children
68: ST    0, 92(5)  store int/bool/string into previous used static data
69: LDC   0, 41(5)  load string offset 41
70: LD    1, 0(0)  load str length into ac2
71: JEQ   1, 5(7)  output nothing when empty
72: LDA   0, 1(0)  increase offset
73: LD    2, 0(0)  load char into ac3
74: OUTC   2, 2, 2  write char
75: LDA   1, -1(1)  decrease length of remaining string in ac2
76: JNE   1, -5(7)  continue print if not yet finish
77: LD    0, 92(5)  load int/bool/str from static data
78: OUT   0, 0, 0  write integer
79: OUTNL 0, 0, 0  write new line
80: LD    0, -1(4)  load low into ac
81: LDA   0, 1(0)  decrease low
82: ST    0, -1(4)  save low
83: LDA   7, -30(7)  jump back to loop start
57: JLT   0, 26(7)  jump out of the fa loop
84: LDA   6, 0(4)  change sp to fp + 1
85: LD    4, 0(6)  restore fp
86: LDA   6, 1(6)  restore fp
87: LDC   0, 85(5)  load string offset 85
88: LD    1, 0(0)  load str length into ac2
89: JEQ   1, 5(7)  output nothing when empty
90: LDA   0, 1(0)  increase offset
91: LD    2, 0(0)  load char into ac3
92: OUTC   2, 2, 2  write char
93: LDA   1, -1(1)  decrease length of remaining string in ac2
94: JNE   1, -5(7)  continue print if not yet finish
95: LD    0, 92(5)  load int/bool/str from static data
96: OUT   0, 0, 0  write integer
97: OUTNL 0, 0, 0  write new line
98: HALT  0, 0, 0  program ends
