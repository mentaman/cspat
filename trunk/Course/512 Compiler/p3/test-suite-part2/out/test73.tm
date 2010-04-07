.DATA    2
.SDATA   "Hi"
.DATA    3
.SDATA   "Hi "
.DATA    5
.SDATA   " -10 "
.DATA    3
.SDATA   "+10"
.DATA    1
.SDATA   "-"
.DATA    15
.SDATA   "m <= 4 && m > 2"
.DATA    18
.SDATA   "array index error!"
.DATA    5
.SDATA   "There"
.DATA    3
.SDATA   "1-0"
.DATA    0
.SDATA   ""
.DATA    15
.SDATA   "m > 4 || m <= 2"
.DATA    3
.SDATA   "abc"
.DATA    13
.SDATA   "out of memory"
.DATA    3
.SDATA   "10 "
0: LD    6, 0(5)  save stack pointer
1: LD    4, 0(5)  save frame pointer
3: LDC   0, 36(5)  load array error str address
4: LD    1, 0(0)  load str length into ac2
5: JEQ   1, 5(7)  output nothing when empty
6: LDA   0, 1(0)  increase offset
7: LD    2, 0(0)  load char into ac3
8: OUTC   2, 2, 2  write char
9: LDA   1, -1(1)  decrease length of remaining string in ac2
10: JNE   1, -5(7)  continue print if not yet finish
11: OUTNL 0, 0, 0  emit newline
12: HALT  0, 0, 0  stop because of array error
13: LDC   0, 86(5)  load out of memory str address
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
27: LDC   3, 104(5)  push 0
28: SUB   3, 6, 3  push 0
29: JLE   3, 13(5)  push 0
30: ST    2, 0(6)  push 0
31: LD    2, 0(6)  pop result into AC3
32: LDA   6, 1(6)  pop result into AC3
33: LDC   3, 10(5)  load 10 into ac4
34: MUL   2, 2, 3  mul result with 10
35: LDA   6, -1(6)  push result
36: LDC   3, 104(5)  push result
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
48: LDC   3, 104(5)  push result
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
63: LDC   0, 1(5)  load integer 1
64: LDC   1, 0(5)  load 0 into AC2
65: SUB   0, 1, 0  compute negative number
66: LDA   6, -1(6)  push array index
67: LDC   3, 104(5)  push array index
68: SUB   3, 6, 3  push array index
69: JLE   3, 13(5)  push array index
70: ST    0, 0(6)  push array index
71: LDC   0, 1(5)  push array dimension
72: LDC   0, 0(5)  load 0 to ac
73: LD    1, 0(6)  pop index
74: LDA   6, 1(6)  pop index
75: JLT   1, 3(5)  jump if index less than 0
76: LDC   3, 2(5)  load array size
77: SUB   3, 3, 1  sub max size with index
78: JLE   3, 3(5)  jump if index greater than size - 1
79: LDC   2, 1(5)  load size of subarray
80: MUL   1, 1, 2  compute 0 dim
81: ADD   0, 0, 1  add result
82: LDA   1, 0(4)  load fp into ac2
83: LD    1, -5(1)  load local offset into ac2
84: ADD   0, 0, 1  compute final offset
85: LD    0, 0(0)  load data from array
86: LDA   1, 0(4)  load fp into ac2
87: ST    0, -2(1)  store int/bool/string into stack
88: LD    1, -1(4)  load return address
89: LDA   6, 0(4)  change sp to fp + 1
90: LD    4, 0(6)  restore fp
91: LDA   6, 1(6)  restore fp
92: LDA   7, 0(1)  jump to the return address
2: LDA   7, 93(5)  jump to start of the program
93: LDA   6, -1(6)  push fp
94: LDC   3, 104(5)  push fp
95: SUB   3, 6, 3  push fp
96: JLE   3, 13(5)  push fp
97: ST    4, 0(6)  push fp
98: LDA   4, 0(6)  set fp to sp
105: LDC   0, 3(5)  load array localVariableSize: 3
106: SUB   0, 6, 0  compute absolute address of the array
107: ST    0, -4(6)  store absolute array address
108: LDA   6, -4(6)  preserve space for local vars
109: LDA   7, 63(5)  jump to procedure call
99: LDC   0, 110(5)  load return address into ac
100: LDA   6, -1(6)  push return address
101: LDC   3, 104(5)  push return address
102: SUB   3, 6, 3  push return address
103: JLE   3, 13(5)  push return address
104: ST    0, 0(6)  push return address
110: HALT  0, 0, 0  program ends
