.DATA    7
.SDATA   "success"
0: LD    6, 0(5)  save stack pointer
1: LD    4, 0(5)  save frame pointer
3: LDC   0, 0(5)  load integer 0
4: LDA   6, -1(6)  push array index
5: ST    0, 0(6)  push array index
6: LDC   0, 1(5)  push array dimension
7: LDC   0, 0(5)  load 0 to ac
8: LD    1, 0(6)  pop index
9: LDA   6, 1(6)  pop index
10: LDC   2, 1(5)  load size of subarray
11: MUL   1, 1, 2  compute 0 dim
12: ADD   0, 0, 1  add result
13: LDA   1, 0(4)  load fp into ac2
14: LD    1, -5(1)  load local offset into ac2
15: ADD   0, 0, 1  compute final offset
16: LDA   6, -1(6)  push final offset
17: ST    0, 0(6)  push final offset
18: LDC   0, 1(5)  load integer 1
19: LD    1, 0(6)  pop final offset
20: LDA   6, 1(6)  pop final offset
21: ST    0, 0(1)  store value into array static data
22: LDC   0, 1(5)  load integer 1
23: LDA   6, -1(6)  push array index
24: ST    0, 0(6)  push array index
25: LDC   0, 1(5)  push array dimension
26: LDC   0, 0(5)  load 0 to ac
27: LD    1, 0(6)  pop index
28: LDA   6, 1(6)  pop index
29: LDC   2, 1(5)  load size of subarray
30: MUL   1, 1, 2  compute 0 dim
31: ADD   0, 0, 1  add result
32: LDA   1, 0(4)  load fp into ac2
33: LD    1, -5(1)  load local offset into ac2
34: ADD   0, 0, 1  compute final offset
35: LDA   6, -1(6)  push final offset
36: ST    0, 0(6)  push final offset
37: LDC   0, 2(5)  load integer 2
38: LD    1, 0(6)  pop final offset
39: LDA   6, 1(6)  pop final offset
40: ST    0, 0(1)  store value into array static data
41: LDC   0, 0(5)  load integer 0
42: LDA   6, -1(6)  push array index
43: ST    0, 0(6)  push array index
44: LDC   0, 1(5)  push array dimension
45: LDC   0, 0(5)  load 0 to ac
46: LD    1, 0(6)  pop index
47: LDA   6, 1(6)  pop index
48: LDC   2, 1(5)  load size of subarray
49: MUL   1, 1, 2  compute 0 dim
50: ADD   0, 0, 1  add result
51: LDA   1, 0(4)  load fp into ac2
52: LD    1, -5(1)  load local offset into ac2
53: ADD   0, 0, 1  compute final offset
54: LD    0, 0(0)  load data from array
55: OUT   0, 0, 0  write integer
56: OUTNL 0, 0, 0  write new line
57: LDC   0, 1(5)  load integer 1
58: LDA   6, -1(6)  push array index
59: ST    0, 0(6)  push array index
60: LDC   0, 1(5)  push array dimension
61: LDC   0, 0(5)  load 0 to ac
62: LD    1, 0(6)  pop index
63: LDA   6, 1(6)  pop index
64: LDC   2, 1(5)  load size of subarray
65: MUL   1, 1, 2  compute 0 dim
66: ADD   0, 0, 1  add result
67: LDA   1, 0(4)  load fp into ac2
68: LD    1, -5(1)  load local offset into ac2
69: ADD   0, 0, 1  compute final offset
70: LD    0, 0(0)  load data from array
71: OUT   0, 0, 0  write integer
72: OUTNL 0, 0, 0  write new line
73: LDC   0, 1(5)  load string offset 1
74: LDA   1, 0(4)  load fp into ac2
75: ST    0, -2(1)  store int/bool/string into stack
76: LD    0, -2(4)  load int/bool/string offset as return value
77: LD    1, -1(4)  load return address
78: LDA   6, 0(4)  change sp to fp + 1
79: LD    4, 0(6)  restore fp
80: LDA   6, 1(6)  restore fp
81: LDA   7, 0(1)  jump to the return address
2: LDA   7, 82(5)  jump to start of the program
82: LDA   6, -1(6)  push fp
83: ST    4, 0(6)  push fp
84: LDA   4, 0(6)  set fp to sp
88: LDA   6, -1(6)  push zero as return value
89: ST    5, 0(6)  push zero as return value
90: LDC   0, 2(5)  load array localVariableSize: 2
91: SUB   0, 6, 0  compute absolute address of the array
92: ST    0, -3(6)  store absolute array address
93: LDA   6, -3(6)  preserve space for local vars
94: LDA   7, 3(5)  jump to procedure call
85: LDC   0, 95(5)  load return address into ac
86: LDA   6, -1(6)  push return address
87: ST    0, 0(6)  push return address
95: LD    1, 0(0)  load str length into ac2
96: LDA   0, 1(0)  increase offset
97: LD    2, 0(0)  load char into ac3
98: OUTC   2, 2, 2  write char
99: LDA   1, -1(1)  decrease length of remaining string in ac2
100: JNE   1, -5(7)  continue print if not yet finish
101: OUTNL 0, 0, 0  write new line
102: HALT  0, 0, 0  program ends
