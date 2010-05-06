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
23: LDC   0, 72(5)  load string offset 72
24: LD    1, 0(0)  load str length into ac2
25: JEQ   1, 5(7)  output nothing when empty
26: LDA   0, 1(0)  increase offset
27: LD    2, 0(0)  load char into ac3
28: OUTC   2, 2, 2  write char
29: LDA   1, -1(1)  decrease length of remaining string in ac2
30: JNE   1, -5(7)  continue print if not yet finish
31: LDA   1, 0(4)  load fp into ac2
32: LD    0, -2(1)  load int/bool/str from stack
33: OUT   0, 0, 0  write integer
34: OUTNL 0, 0, 0  write new line
35: LDC   0, 0(5)  load integer 0
36: LDA   1, 0(4)  load fp into ac2
37: ST    0, -2(1)  store int/bool/string into stack
38: LDA   6, -1(6)  push fp
39: LDC   3, 91(5)  push fp
40: SUB   3, 6, 3  push fp
41: JLE   3, 13(5)  push fp
42: ST    4, 0(6)  push fp
43: LDA   4, 0(6)  set fp to sp
44: LDC   0, 1(5)  load integer 1
45: LDA   6, -1(6)  push low
46: LDC   3, 91(5)  push low
47: SUB   3, 6, 3  push low
48: JLE   3, 13(5)  push low
49: ST    0, 0(6)  push low
50: LDC   0, 3(5)  load integer 3
51: LDA   6, -1(6)  push hi
52: LDC   3, 91(5)  push hi
53: SUB   3, 6, 3  push hi
54: JLE   3, 13(5)  push hi
55: ST    0, 0(6)  push hi
56: LD    0, -2(4)  load hi into ac 
57: LD    1, -1(4)  load low into ac2 
58: SUB   0, 0, 1  subtract hi with low
60: LDA   1, 0(4)  load fp into ac2
61: LD    1, 0(1)  load upper level fp into ac2
62: LD    0, -2(1)  load int/bool/str from stack
63: LDA   6, -1(6)  push first child's value
64: LDC   3, 91(5)  push first child's value
65: SUB   3, 6, 3  push first child's value
66: JLE   3, 13(5)  push first child's value
67: ST    0, 0(6)  push first child's value
68: LDC   0, 3(5)  load integer 3
69: LD    1, 0(6)  pop first child's value
70: LDA   6, 1(6)  pop first child's value
71: ADD   0, 0, 1  add two children
72: LDA   1, 0(4)  load fp into ac2
73: LD    1, 0(1)  load upper level fp into ac2
74: ST    0, -2(1)  store int/bool/string into stack
75: LDC   0, 41(5)  load string offset 41
76: LD    1, 0(0)  load str length into ac2
77: JEQ   1, 5(7)  output nothing when empty
78: LDA   0, 1(0)  increase offset
79: LD    2, 0(0)  load char into ac3
80: OUTC   2, 2, 2  write char
81: LDA   1, -1(1)  decrease length of remaining string in ac2
82: JNE   1, -5(7)  continue print if not yet finish
83: LDA   1, 0(4)  load fp into ac2
84: LD    1, 0(1)  load upper level fp into ac2
85: LD    0, -2(1)  load int/bool/str from stack
86: OUT   0, 0, 0  write integer
87: OUTNL 0, 0, 0  write new line
88: LD    0, -1(4)  load low into ac
89: LDA   0, 1(0)  decrease low
90: ST    0, -1(4)  save low
91: LDA   7, -36(7)  jump back to loop start
59: JLT   0, 32(7)  jump out of the fa loop
92: LDA   6, 0(4)  change sp to fp + 1
93: LD    4, 0(6)  restore fp
94: LDA   6, 1(6)  restore fp
95: LDC   0, 85(5)  load string offset 85
96: LD    1, 0(0)  load str length into ac2
97: JEQ   1, 5(7)  output nothing when empty
98: LDA   0, 1(0)  increase offset
99: LD    2, 0(0)  load char into ac3
100: OUTC   2, 2, 2  write char
101: LDA   1, -1(1)  decrease length of remaining string in ac2
102: JNE   1, -5(7)  continue print if not yet finish
103: LDA   1, 0(4)  load fp into ac2
104: LD    0, -2(1)  load int/bool/str from stack
105: OUT   0, 0, 0  write integer
106: OUTNL 0, 0, 0  write new line
107: LD    1, -1(4)  load return address
108: LDA   6, 0(4)  change sp to fp + 1
109: LD    4, 0(6)  restore fp
110: LDA   6, 1(6)  restore fp
111: LDA   7, 0(1)  jump to the return address
2: LDA   7, 112(5)  jump to start of the program
112: LDA   6, -1(6)  push fp
113: LDC   3, 91(5)  push fp
114: SUB   3, 6, 3  push fp
115: JLE   3, 13(5)  push fp
116: ST    4, 0(6)  push fp
117: LDA   4, 0(6)  set fp to sp
124: LDA   6, -2(6)  preserve space for local vars
125: LDA   7, 23(5)  jump to procedure call
118: LDC   0, 126(5)  load return address into ac
119: LDA   6, -1(6)  push return address
120: LDC   3, 91(5)  push return address
121: SUB   3, 6, 3  push return address
122: JLE   3, 13(5)  push return address
123: ST    0, 0(6)  push return address
126: HALT  0, 0, 0  program ends
