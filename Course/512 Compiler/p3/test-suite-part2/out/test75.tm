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
0: LDC   0, 105(5)  store array start address: 105
1: LDC   1, 104(5)  store array offset into ac2: 104
2: ST    0, 0(1)  store array offset
3: LD    6, 0(5)  save stack pointer
4: LD    4, 0(5)  save frame pointer
6: LDC   0, 36(5)  load array error str address
7: LD    1, 0(0)  load str length into ac2
8: JEQ   1, 5(7)  output nothing when empty
9: LDA   0, 1(0)  increase offset
10: LD    2, 0(0)  load char into ac3
11: OUTC   2, 2, 2  write char
12: LDA   1, -1(1)  decrease length of remaining string in ac2
13: JNE   1, -5(7)  continue print if not yet finish
14: OUTNL 0, 0, 0  emit newline
15: HALT  0, 0, 0  stop because of array error
16: LDC   0, 86(5)  load out of memory str address
17: LD    1, 0(0)  load str length into ac2
18: JEQ   1, 5(7)  output nothing when empty
19: LDA   0, 1(0)  increase offset
20: LD    2, 0(0)  load char into ac3
21: OUTC   2, 2, 2  write char
22: LDA   1, -1(1)  decrease length of remaining string in ac2
23: JNE   1, -5(7)  continue print if not yet finish
24: OUTNL 0, 0, 0  emit newline
25: HALT  0, 0, 0  stop because of out of memory error
26: LD    0, -3(4)  load str offset
27: LD    1, 0(0)  load str length
28: LDC   2, 0(5)  load 0 as initial result
29: LDA   6, -1(6)  push 0
30: LDC   3, 110(5)  push 0
31: SUB   3, 6, 3  push 0
32: JLE   3, 16(5)  push 0
33: ST    2, 0(6)  push 0
34: LD    2, 0(6)  pop result into AC3
35: LDA   6, 1(6)  pop result into AC3
36: LDC   3, 10(5)  load 10 into ac4
37: MUL   2, 2, 3  mul result with 10
38: LDA   6, -1(6)  push result
39: LDC   3, 110(5)  push result
40: SUB   3, 6, 3  push result
41: JLE   3, 16(5)  push result
42: ST    2, 0(6)  push result
43: LDA   0, 1(0)  increase str offset
44: LD    2, 0(0)  load char
45: LDC   3, 48(5)  load 48 into ac4
46: SUB   2, 2, 3  compute int value
47: LD    3, 0(6)  pop result into AC4
48: LDA   6, 1(6)  pop result into AC4
49: ADD   2, 2, 3  compute result
50: LDA   6, -1(6)  push result
51: LDC   3, 110(5)  push result
52: SUB   3, 6, 3  push result
53: JLE   3, 16(5)  push result
54: ST    2, 0(6)  push result
55: LDA   1, -1(1)  decrease str length
56: JNE   1, 34(5)  continue if str length
57: LD    0, 0(6)  pop result
58: LDA   6, 1(6)  pop result
59: ST    0, -2(4)  save to return value
60: LD    0, -2(4)  load int/bool/string offset as return value
61: LD    1, -1(4)  load return address
62: LDA   6, 0(4)  change sp to fp + 1
63: LD    4, 0(6)  restore fp
64: LDA   6, 1(6)  restore fp
65: LDA   7, 0(1)  jump to the return address
5: LDA   7, 66(5)  jump to start of the program
66: LDC   0, 3(5)  load integer 3
67: LDA   6, -1(6)  push array index
68: LDC   3, 110(5)  push array index
69: SUB   3, 6, 3  push array index
70: JLE   3, 16(5)  push array index
71: ST    0, 0(6)  push array index
72: LDC   0, 0(5)  load integer 0
73: LDA   6, -1(6)  push array index
74: LDC   3, 110(5)  push array index
75: SUB   3, 6, 3  push array index
76: JLE   3, 16(5)  push array index
77: ST    0, 0(6)  push array index
78: LDC   0, 2(5)  push array dimension
79: LDC   0, 0(5)  load 0 to ac
80: LD    1, 0(6)  pop index
81: LDA   6, 1(6)  pop index
82: JLT   1, 6(5)  jump if index less than 0
83: LDC   3, 2(5)  load array size
84: SUB   3, 3, 1  sub max size with index
85: JLE   3, 6(5)  jump if index greater than size - 1
86: LDC   2, 2(5)  load size of subarray
87: MUL   1, 1, 2  compute 0 dim
88: ADD   0, 0, 1  add result
89: LD    1, 0(6)  pop index
90: LDA   6, 1(6)  pop index
91: JLT   1, 6(5)  jump if index less than 0
92: LDC   3, 2(5)  load array size
93: SUB   3, 3, 1  sub max size with index
94: JLE   3, 6(5)  jump if index greater than size - 1
95: LDC   2, 1(5)  load size of subarray
96: MUL   1, 1, 2  compute 1 dim
97: ADD   0, 0, 1  add result
98: LD    1, 104(5)  load global offset into ac2
99: ADD   0, 0, 1  compute final offset
100: LD    0, 0(0)  load data from array
101: ST    0, 109(5)  store int/bool/string into previous used static data
102: HALT  0, 0, 0  program ends
