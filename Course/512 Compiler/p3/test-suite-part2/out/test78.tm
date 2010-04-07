.DATA    3
.SDATA   "+10"
.DATA    5
.SDATA   " -10 "
.DATA    3
.SDATA   "abc"
.DATA    13
.SDATA   "out of memory"
.DATA    1
.SDATA   "-"
.DATA    3
.SDATA   "10 "
.DATA    18
.SDATA   "array index error!"
.DATA    0
.SDATA   ""
.DATA    3
.SDATA   "1-0"
0: LD    6, 0(5)  save stack pointer
1: LD    4, 0(5)  save frame pointer
3: LDC   0, 35(5)  load array error str address
4: LD    1, 0(0)  load str length into ac2
5: JEQ   1, 5(7)  output nothing when empty
6: LDA   0, 1(0)  increase offset
7: LD    2, 0(0)  load char into ac3
8: OUTC   2, 2, 2  write char
9: LDA   1, -1(1)  decrease length of remaining string in ac2
10: JNE   1, -5(7)  continue print if not yet finish
11: OUTNL 0, 0, 0  emit newline
12: HALT  0, 0, 0  stop because of array error
13: LDC   0, 15(5)  load out of memory str address
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
27: LDC   3, 59(5)  push 0
28: SUB   3, 6, 3  push 0
29: JLE   3, 13(5)  push 0
30: ST    2, 0(6)  push 0
31: LD    2, 0(6)  pop result into AC3
32: LDA   6, 1(6)  pop result into AC3
33: LDC   3, 10(5)  load 10 into ac4
34: MUL   2, 2, 3  mul result with 10
35: LDA   6, -1(6)  push result
36: LDC   3, 59(5)  push result
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
48: LDC   3, 59(5)  push result
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
63: LDC   0, 3(5)  load integer 3
64: LDA   6, -1(6)  push array index
65: LDC   3, 59(5)  push array index
66: SUB   3, 6, 3  push array index
67: JLE   3, 13(5)  push array index
68: ST    0, 0(6)  push array index
69: LDC   0, 0(5)  load integer 0
70: LDA   6, -1(6)  push array index
71: LDC   3, 59(5)  push array index
72: SUB   3, 6, 3  push array index
73: JLE   3, 13(5)  push array index
74: ST    0, 0(6)  push array index
75: LDC   0, 2(5)  push array dimension
76: LDC   0, 0(5)  load 0 to ac
77: LD    1, 0(6)  pop index
78: LDA   6, 1(6)  pop index
79: JLT   1, 3(5)  jump if index less than 0
80: LDC   3, 2(5)  load array size
81: SUB   3, 3, 1  sub max size with index
82: JLE   3, 3(5)  jump if index greater than size - 1
83: LDC   2, 2(5)  load size of subarray
84: MUL   1, 1, 2  compute 0 dim
85: ADD   0, 0, 1  add result
86: LD    1, 0(6)  pop index
87: LDA   6, 1(6)  pop index
88: JLT   1, 3(5)  jump if index less than 0
89: LDC   3, 2(5)  load array size
90: SUB   3, 3, 1  sub max size with index
91: JLE   3, 3(5)  jump if index greater than size - 1
92: LDC   2, 1(5)  load size of subarray
93: MUL   1, 1, 2  compute 1 dim
94: ADD   0, 0, 1  add result
95: LDA   1, 0(4)  load fp into ac2
96: LD    1, -6(1)  load local offset into ac2
97: ADD   0, 0, 1  compute final offset
98: LDA   6, -1(6)  push final offset
99: LDC   3, 59(5)  push final offset
100: SUB   3, 6, 3  push final offset
101: JLE   3, 13(5)  push final offset
102: ST    0, 0(6)  push final offset
103: LDC   0, 0(5)  load integer 0
104: LD    1, 0(6)  pop final offset
105: LDA   6, 1(6)  pop final offset
106: ST    0, 0(1)  store value into array static data
107: LD    1, -1(4)  load return address
108: LDA   6, 0(4)  change sp to fp + 1
109: LD    4, 0(6)  restore fp
110: LDA   6, 1(6)  restore fp
111: LDA   7, 0(1)  jump to the return address
2: LDA   7, 112(5)  jump to start of the program
112: LDA   6, -1(6)  push fp
113: LDC   3, 59(5)  push fp
114: SUB   3, 6, 3  push fp
115: JLE   3, 13(5)  push fp
116: ST    4, 0(6)  push fp
117: LDA   4, 0(6)  set fp to sp
124: LDC   0, 4(5)  load array localVariableSize: 4
125: SUB   0, 6, 0  compute absolute address of the array
126: ST    0, -5(6)  store absolute array address
127: LDA   6, -5(6)  preserve space for local vars
128: LDA   7, 63(5)  jump to procedure call
118: LDC   0, 129(5)  load return address into ac
119: LDA   6, -1(6)  push return address
120: LDC   3, 59(5)  push return address
121: SUB   3, 6, 3  push return address
122: JLE   3, 13(5)  push return address
123: ST    0, 0(6)  push return address
129: HALT  0, 0, 0  program ends
