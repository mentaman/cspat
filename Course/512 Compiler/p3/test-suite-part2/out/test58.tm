.DATA    13
.SDATA   "out of memory"
.DATA    18
.SDATA   "array index error!"
0: LD    6, 0(5)  save stack pointer
1: LD    4, 0(5)  save frame pointer
3: LDC   0, 15(5)  load array error str address
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
27: LDC   3, 34(5)  push 0
28: SUB   3, 6, 3  push 0
29: JLE   3, 13(5)  push 0
30: ST    2, 0(6)  push 0
31: LD    2, 0(6)  pop result into AC3
32: LDA   6, 1(6)  pop result into AC3
33: LDC   3, 10(5)  load 10 into ac4
34: MUL   2, 2, 3  mul result with 10
35: LDA   6, -1(6)  push result
36: LDC   3, 34(5)  push result
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
48: LDC   3, 34(5)  push result
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
63: LDA   6, -1(6)  push fp
64: LDC   3, 34(5)  push fp
65: SUB   3, 6, 3  push fp
66: JLE   3, 13(5)  push fp
67: ST    4, 0(6)  push fp
68: LDA   4, 0(6)  set fp to sp
69: LDC   0, 1(5)  load integer 1
70: LDA   6, -1(6)  push low
71: LDC   3, 34(5)  push low
72: SUB   3, 6, 3  push low
73: JLE   3, 13(5)  push low
74: ST    0, 0(6)  push low
75: LDC   0, 10(5)  load integer 10
76: LDA   6, -1(6)  push hi
77: LDC   3, 34(5)  push hi
78: SUB   3, 6, 3  push hi
79: JLE   3, 13(5)  push hi
80: ST    0, 0(6)  push hi
81: LD    0, -2(4)  load hi into ac 
82: LD    1, -1(4)  load low into ac2 
83: SUB   0, 0, 1  subtract hi with low
85: LDA   1, 0(4)  load fp into ac2
86: LD    0, -1(1)  load int/bool/str from stack
87: LDA   6, -1(6)  push first child's value
88: LDC   3, 34(5)  push first child's value
89: SUB   3, 6, 3  push first child's value
90: JLE   3, 13(5)  push first child's value
91: ST    0, 0(6)  push first child's value
92: LDC   0, 7(5)  load integer 7
93: LD    1, 0(6)  pop first child's value
94: LDA   6, 1(6)  pop first child's value
95: SUB   1, 1, 0  greater than
96: LDC   0, 1(5)  load 1 as true
97: JEQ   1, 1(7)  skip load false
98: LDC   0, 0(5)  load 0 as false
99: JEQ   0, 1(7)  if expr not true
101: LDA   1, 0(4)  load fp into ac2
102: LD    0, -1(1)  load int/bool/str from stack
103: OUT   0, 0, 0  write integer
104: OUTNL 0, 0, 0  write new line
105: LD    0, -1(4)  load low into ac
106: LDA   0, 1(0)  decrease low
107: ST    0, -1(4)  save low
108: LDA   7, -28(7)  jump back to loop start
84: JLT   0, 24(7)  jump out of the fa loop
100: LDA   7, 8(7)  break -> jump out of the do loop
109: LDA   6, 0(4)  change sp to fp + 1
110: LD    4, 0(6)  restore fp
111: LDA   6, 1(6)  restore fp
112: LD    1, -1(4)  load return address
113: LDA   6, 0(4)  change sp to fp + 1
114: LD    4, 0(6)  restore fp
115: LDA   6, 1(6)  restore fp
116: LDA   7, 0(1)  jump to the return address
2: LDA   7, 117(5)  jump to start of the program
117: LDA   6, -1(6)  push fp
118: LDC   3, 34(5)  push fp
119: SUB   3, 6, 3  push fp
120: JLE   3, 13(5)  push fp
121: ST    4, 0(6)  push fp
122: LDA   4, 0(6)  set fp to sp
129: LDA   6, 0(6)  preserve space for local vars
130: LDA   7, 63(5)  jump to procedure call
123: LDC   0, 131(5)  load return address into ac
124: LDA   6, -1(6)  push return address
125: LDC   3, 34(5)  push return address
126: SUB   3, 6, 3  push return address
127: JLE   3, 13(5)  push return address
128: ST    0, 0(6)  push return address
131: LDC   0, 11(5)  load integer 11
132: OUT   0, 0, 0  write integer
133: OUTNL 0, 0, 0  write new line
134: HALT  0, 0, 0  program ends
