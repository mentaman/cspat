0: LD    6, 0(5)  save stack pointer
1: LD    4, 0(5)  save frame pointer
3: LDA   1, 0(4)  load fp into ac2
4: LD    0, -3(1)  load int/bool from stack
5: LDA   6, -1(6)  push first child's value
6: ST    0, 0(6)  push first child's value
7: LDC   0, 1(5)  load integer 1
8: LD    1, 0(6)  pop first child's value
9: LDA   6, 1(6)  pop first child's value
10: ADD   0, 0, 1  add two children
11: LDA   1, 0(4)  load fp into ac2
12: ST    0, -3(1)  store int/bool into stack
13: LDC   0, 32(5)  load char in ASCii: 32
14: LDA   6, -1(6)  push char into stack
15: ST    0, 0(6)  push char into stack
16: LDC   0, 61(5)  load char in ASCii: 61
17: LDA   6, -1(6)  push char into stack
18: ST    0, 0(6)  push char into stack
19: LDC   0, 32(5)  load char in ASCii: 32
20: LDA   6, -1(6)  push char into stack
21: ST    0, 0(6)  push char into stack
22: LDC   0, 49(5)  load char in ASCii: 49
23: LDA   6, -1(6)  push char into stack
24: ST    0, 0(6)  push char into stack
25: LDC   0, 32(5)  load char in ASCii: 32
26: LDA   6, -1(6)  push char into stack
27: ST    0, 0(6)  push char into stack
28: LDC   0, 43(5)  load char in ASCii: 43
29: LDA   6, -1(6)  push char into stack
30: ST    0, 0(6)  push char into stack
31: LDC   0, 32(5)  load char in ASCii: 32
32: LDA   6, -1(6)  push char into stack
33: ST    0, 0(6)  push char into stack
34: LDC   0, 105(5)  load char in ASCii: 105
35: LDA   6, -1(6)  push char into stack
36: ST    0, 0(6)  push char into stack
37: LDC   0, 8(5)  load string length 8
38: LD    1, 0(6)  pop char
39: LDA   6, 1(6)  pop char
40: OUTC   1, 1, 1  write char
41: LDA   0, -1(0)  decrease length of remaining string
42: JNE   0, -5(7)  continue print if not yet finish
43: LDA   1, 0(4)  load fp into ac2
44: LD    0, -3(1)  load int/bool from stack
45: OUT   0, 0, 0  write integer
46: OUTNL 0, 0, 0  write new line
47: LDC   0, 100(5)  load integer 100
48: LDA   1, 0(4)  load fp into ac2
49: ST    0, -2(1)  store int/bool into stack
50: LD    0, -2(4)  load int/bool as return value
51: LD    1, -1(4)  load return address
52: LDA   6, 0(4)  change sp to fp + 1
53: LD    4, 0(6)  restore fp
54: LDA   6, 1(6)  restore fp
55: LDA   7, 0(1)  jump to the return address
2: LDA   7, 56(5)  jump to start of the program
56: LDC   0, 116(5)  load char in ASCii: 116
57: LDA   6, -1(6)  push char into stack
58: ST    0, 0(6)  push char into stack
59: LDC   0, 114(5)  load char in ASCii: 114
60: LDA   6, -1(6)  push char into stack
61: ST    0, 0(6)  push char into stack
62: LDC   0, 97(5)  load char in ASCii: 97
63: LDA   6, -1(6)  push char into stack
64: ST    0, 0(6)  push char into stack
65: LDC   0, 116(5)  load char in ASCii: 116
66: LDA   6, -1(6)  push char into stack
67: ST    0, 0(6)  push char into stack
68: LDC   0, 115(5)  load char in ASCii: 115
69: LDA   6, -1(6)  push char into stack
70: ST    0, 0(6)  push char into stack
71: LDC   0, 5(5)  load string length 5
72: LD    1, 0(6)  pop char
73: LDA   6, 1(6)  pop char
74: OUTC   1, 1, 1  write char
75: LDA   0, -1(0)  decrease length of remaining string
76: JNE   0, -5(7)  continue print if not yet finish
77: OUTNL 0, 0, 0  write new line
78: LDC   0, 5(5)  load integer 5
79: ST    0, 1(5)  store int/bool into static data
80: LDA   6, -1(6)  push fp
81: ST    4, 0(6)  push fp
82: LDA   4, 0(6)  set fp to sp
86: LDA   6, -1(6)  push zero as return value
87: ST    5, 0(6)  push zero as return value
88: LD    0, 1(5)  load int/bool from static data
89: LDA   6, -1(6)  push int/bool parameter
90: ST    0, 0(6)  push int/bool parameter
91: LDA   7, 3(5)  jump to procedure call
83: LDC   0, 92(5)  load return address into ac
84: LDA   6, -1(6)  push return address
85: ST    0, 0(6)  push return address
92: OUT   0, 0, 0  write integer
93: OUTNL 0, 0, 0  write new line
94: LDC   0, 100(5)  load char in ASCii: 100
95: LDA   6, -1(6)  push char into stack
96: ST    0, 0(6)  push char into stack
97: LDC   0, 110(5)  load char in ASCii: 110
98: LDA   6, -1(6)  push char into stack
99: ST    0, 0(6)  push char into stack
100: LDC   0, 101(5)  load char in ASCii: 101
101: LDA   6, -1(6)  push char into stack
102: ST    0, 0(6)  push char into stack
103: LDC   0, 3(5)  load string length 3
104: LD    1, 0(6)  pop char
105: LDA   6, 1(6)  pop char
106: OUTC   1, 1, 1  write char
107: LDA   0, -1(0)  decrease length of remaining string
108: JNE   0, -5(7)  continue print if not yet finish
109: OUTNL 0, 0, 0  write new line
110: HALT  0, 0, 0  program ends
