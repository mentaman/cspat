.DATA    3
.SDATA   "Hi "
.DATA    2
.SDATA   "Hi"
.DATA    13
.SDATA   "out of memory"
.DATA    15
.SDATA   "m <= 4 && m > 2"
.DATA    18
.SDATA   "array index error!"
.DATA    5
.SDATA   "There"
.DATA    15
.SDATA   "m > 4 || m <= 2"
0: LD    6, 0(5)  save stack pointer
1: LD    4, 0(5)  save frame pointer
3: LDC   0, 38(5)  load array error str address
4: LD    1, 0(0)  load str length into ac2
5: JEQ   1, 5(7)  output nothing when empty
6: LDA   0, 1(0)  increase offset
7: LD    2, 0(0)  load char into ac3
8: OUTC   2, 2, 2  write char
9: LDA   1, -1(1)  decrease length of remaining string in ac2
10: JNE   1, -5(7)  continue print if not yet finish
11: OUTNL 0, 0, 0  emit newline
12: HALT  0, 0, 0  stop because of array error
13: LDC   0, 8(5)  load out of memory str address
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
27: LDC   3, 79(5)  push 0
28: SUB   3, 6, 3  push 0
29: JLE   3, 13(5)  push 0
30: ST    2, 0(6)  push 0
31: LD    2, 0(6)  pop result into AC3
32: LDA   6, 1(6)  pop result into AC3
33: LDC   3, 10(5)  load 10 into ac4
34: MUL   2, 2, 3  mul result with 10
35: LDA   6, -1(6)  push result
36: LDC   3, 79(5)  push result
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
48: LDC   3, 79(5)  push result
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
63: LDA   1, 0(4)  load fp into ac2
64: LD    0, -2(1)  load int/bool/str from stack
66: LDC   0, 1(5)  load integer 1
67: OUT   0, 0, 0  write integer
68: OUTNL 0, 0, 0  write new line
65: JEQ   0, 5(7)  if expr not true
71: LDC   0, 2(5)  load integer 2
72: OUT   0, 0, 0  write integer
73: OUTNL 0, 0, 0  write new line
70: LDA   7, 4(7)  Jump to the end of if
75: LDC   0, 3(5)  load integer 3
76: OUT   0, 0, 0  write integer
77: OUTNL 0, 0, 0  write new line
69: LDA   7, 8(7)  return procedure call
74: LDA   7, 3(7)  return procedure call
78: LD    1, -1(4)  load return address
79: LDA   6, 0(4)  change sp to fp + 1
80: LD    4, 0(6)  restore fp
81: LDA   6, 1(6)  restore fp
82: LDA   7, 0(1)  jump to the return address
2: LDA   7, 83(5)  jump to start of the program
83: LDA   6, -1(6)  push fp
84: LDC   3, 79(5)  push fp
85: SUB   3, 6, 3  push fp
86: JLE   3, 13(5)  push fp
87: ST    4, 0(6)  push fp
88: LDA   4, 0(6)  set fp to sp
95: LDC   0, 1(5)  load booleantrue
96: LDA   6, -1(6)  push int/bool/str parameter
97: LDC   3, 79(5)  push int/bool/str parameter
98: SUB   3, 6, 3  push int/bool/str parameter
99: JLE   3, 13(5)  push int/bool/str parameter
100: ST    0, 0(6)  push int/bool/str parameter
101: LDA   6, 0(6)  preserve space for local vars
102: LDA   7, 63(5)  jump to procedure call
89: LDC   0, 103(5)  load return address into ac
90: LDA   6, -1(6)  push return address
91: LDC   3, 79(5)  push return address
92: SUB   3, 6, 3  push return address
93: JLE   3, 13(5)  push return address
94: ST    0, 0(6)  push return address
103: LDA   6, -1(6)  push fp
104: LDC   3, 79(5)  push fp
105: SUB   3, 6, 3  push fp
106: JLE   3, 13(5)  push fp
107: ST    4, 0(6)  push fp
108: LDA   4, 0(6)  set fp to sp
115: LDC   0, 0(5)  load booleanfalse
116: LDA   6, -1(6)  push int/bool/str parameter
117: LDC   3, 79(5)  push int/bool/str parameter
118: SUB   3, 6, 3  push int/bool/str parameter
119: JLE   3, 13(5)  push int/bool/str parameter
120: ST    0, 0(6)  push int/bool/str parameter
121: LDA   6, 0(6)  preserve space for local vars
122: LDA   7, 63(5)  jump to procedure call
109: LDC   0, 123(5)  load return address into ac
110: LDA   6, -1(6)  push return address
111: LDC   3, 79(5)  push return address
112: SUB   3, 6, 3  push return address
113: JLE   3, 13(5)  push return address
114: ST    0, 0(6)  push return address
123: LDC   0, 4(5)  load integer 4
124: OUT   0, 0, 0  write integer
125: OUTNL 0, 0, 0  write new line
126: HALT  0, 0, 0  program ends
