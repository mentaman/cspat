.DATA    2
.SDATA   "Hi"
.DATA    6
.SDATA   "fourth"
.DATA    1
.SDATA   "a"
.DATA    1
.SDATA   "b"
.DATA    1
.SDATA   "5"
.DATA    18
.SDATA   "array index error!"
.DATA    11
.SDATA   "after break"
.DATA    1
.SDATA   "1"
.DATA    0
.SDATA   ""
.DATA    14
.SDATA   "should not see"
.DATA    1
.SDATA   "3"
.DATA    5
.SDATA   "outer"
.DATA    1
.SDATA   "6"
.DATA    5
.SDATA   "first"
.DATA    3
.SDATA   "end"
.DATA    1
.SDATA   " "
.DATA    5
.SDATA   "third"
.DATA    13
.SDATA   "out of memory"
.DATA    5
.SDATA   "inner"
.DATA    4
.SDATA   "Done"
.DATA    6
.SDATA   "second"
0: LD    6, 0(5)  save stack pointer
1: LD    4, 0(5)  save frame pointer
3: LDC   0, 17(5)  load array error str address
4: LD    1, 0(0)  load str length into ac2
5: JEQ   1, 5(7)  output nothing when empty
6: LDA   0, 1(0)  increase offset
7: LD    2, 0(0)  load char into ac3
8: OUTC   2, 2, 2  write char
9: LDA   1, -1(1)  decrease length of remaining string in ac2
10: JNE   1, -5(7)  continue print if not yet finish
11: OUTNL 0, 0, 0  emit newline
12: HALT  0, 0, 0  stop because of array error
13: LDC   0, 94(5)  load out of memory str address
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
27: LDC   3, 126(5)  push 0
28: SUB   3, 6, 3  push 0
29: JLE   3, 13(5)  push 0
30: ST    2, 0(6)  push 0
31: LD    2, 0(6)  pop result into AC3
32: LDA   6, 1(6)  pop result into AC3
33: LDC   3, 10(5)  load 10 into ac4
34: MUL   2, 2, 3  mul result with 10
35: LDA   6, -1(6)  push result
36: LDC   3, 126(5)  push result
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
48: LDC   3, 126(5)  push result
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
63: LDC   0, 1(5)  load booleantrue
64: LDA   1, 0(4)  load fp into ac2
65: ST    0, -3(1)  store int/bool/string into stack
66: LDC   0, 2(5)  load integer 2
67: LDA   1, 0(4)  load fp into ac2
68: ST    0, -4(1)  store int/bool/string into stack
69: LDC   0, 74(5)  load string offset 74
70: LDA   1, 0(4)  load fp into ac2
71: ST    0, -2(1)  store int/bool/string into stack
72: LDA   1, 0(4)  load fp into ac2
73: LD    0, -3(1)  load int/bool/str from stack
74: OUT   0, 0, 0  write integer
75: OUTNL 0, 0, 0  write new line
76: LDA   1, 0(4)  load fp into ac2
77: LD    0, -4(1)  load int/bool/str from stack
78: LDA   6, -1(6)  push first child's value
79: LDC   3, 126(5)  push first child's value
80: SUB   3, 6, 3  push first child's value
81: JLE   3, 13(5)  push first child's value
82: ST    0, 0(6)  push first child's value
83: LDC   0, 3(5)  load integer 3
84: LD    1, 0(6)  pop first child's value
85: LDA   6, 1(6)  pop first child's value
86: ADD   0, 0, 1  add two children
87: OUT   0, 0, 0  write integer
88: OUTNL 0, 0, 0  write new line
89: LDA   6, -1(6)  push fp
90: LDC   3, 126(5)  push fp
91: SUB   3, 6, 3  push fp
92: JLE   3, 13(5)  push fp
93: ST    4, 0(6)  push fp
94: LDA   4, 0(6)  set fp to sp
101: LDA   6, -1(6)  push zero as return value
102: LDC   3, 126(5)  push zero as return value
103: SUB   3, 6, 3  push zero as return value
104: JLE   3, 13(5)  push zero as return value
105: ST    5, 0(6)  push zero as return value
106: LDA   1, 0(4)  load fp into ac2
107: LD    1, 0(1)  load upper level fp into ac2
108: LD    0, -2(1)  load int/bool/str from stack
109: LDA   6, -1(6)  push int/bool/str parameter
110: LDC   3, 126(5)  push int/bool/str parameter
111: SUB   3, 6, 3  push int/bool/str parameter
112: JLE   3, 13(5)  push int/bool/str parameter
113: ST    0, 0(6)  push int/bool/str parameter
114: LDA   6, -1(6)  preserve space for local vars
115: LDA   7, 23(5)  jump to procedure call
95: LDC   0, 116(5)  load return address into ac
96: LDA   6, -1(6)  push return address
97: LDC   3, 126(5)  push return address
98: SUB   3, 6, 3  push return address
99: JLE   3, 13(5)  push return address
100: ST    0, 0(6)  push return address
116: OUT   0, 0, 0  write integer
117: OUTNL 0, 0, 0  write new line
118: LD    1, -1(4)  load return address
119: LDA   6, 0(4)  change sp to fp + 1
120: LD    4, 0(6)  restore fp
121: LDA   6, 1(6)  restore fp
122: LDA   7, 0(1)  jump to the return address
2: LDA   7, 123(5)  jump to start of the program
123: LDA   6, -1(6)  push fp
124: LDC   3, 126(5)  push fp
125: SUB   3, 6, 3  push fp
126: JLE   3, 13(5)  push fp
127: ST    4, 0(6)  push fp
128: LDA   4, 0(6)  set fp to sp
135: LDA   6, -3(6)  preserve space for local vars
136: LDA   7, 63(5)  jump to procedure call
129: LDC   0, 137(5)  load return address into ac
130: LDA   6, -1(6)  push return address
131: LDC   3, 126(5)  push return address
132: SUB   3, 6, 3  push return address
133: JLE   3, 13(5)  push return address
134: ST    0, 0(6)  push return address
137: HALT  0, 0, 0  program ends
