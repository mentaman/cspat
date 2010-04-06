.DATA    18
.SDATA   "array index error!"
0: LDC   0, 21(5)  store array start address: 21
1: LDC   1, 20(5)  store array offset into ac2: 20
2: ST    0, 0(1)  store array offset
3: LD    6, 0(5)  save stack pointer
4: LD    4, 0(5)  save frame pointer
6: LDC   0, 1(5)  load array error str address
7: LD    1, 0(0)  load str length into ac2
8: LDA   0, 1(0)  increase offset
9: LD    2, 0(0)  load char into ac3
10: OUTC   2, 2, 2  write char
11: LDA   1, -1(1)  decrease length of remaining string in ac2
12: JNE   1, -5(7)  continue print if not yet finish
13: OUTNL 0, 0, 0  emit newline
14: HALT  0, 0, 0  stop because of standard error
15: LD    0, -3(4)  load str offset
16: LD    1, 0(0)  load str length
17: LDC   2, 0(5)  load 0 as initial result
18: LDA   6, -1(6)  push 0
19: ST    2, 0(6)  push 0
20: LD    2, 0(6)  pop result into AC3
21: LDA   6, 1(6)  pop result into AC3
22: LDC   3, 10(5)  load 10 into ac4
23: MUL   2, 2, 3  mul result with 10
24: LDA   6, -1(6)  push result
25: ST    2, 0(6)  push result
26: LDA   0, 1(0)  increase str offset
27: LD    2, 0(0)  load char
28: LDC   3, 48(5)  load 48 into ac4
29: SUB   2, 2, 3  compute int value
30: LD    3, 0(6)  pop result into AC4
31: LDA   6, 1(6)  pop result into AC4
32: ADD   2, 2, 3  compute result
33: LDA   6, -1(6)  push result
34: ST    2, 0(6)  push result
35: LDA   1, -1(1)  decrease str length
36: JNE   1, 20(5)  continue if str length
37: LD    0, 0(6)  pop result
38: LDA   6, 1(6)  pop result
39: ST    0, -2(4)  save to return value
40: LD    0, -2(4)  load int/bool/string offset as return value
41: LD    1, -1(4)  load return address
42: LDA   6, 0(4)  change sp to fp + 1
43: LD    4, 0(6)  restore fp
44: LDA   6, 1(6)  restore fp
45: LDA   7, 0(1)  jump to the return address
5: LDA   7, 46(5)  jump to start of the program
46: LDC   0, 5(5)  load integer 5
47: LDA   6, -1(6)  push array index
48: ST    0, 0(6)  push array index
49: LDC   0, 4(5)  load integer 4
50: LDA   6, -1(6)  push array index
51: ST    0, 0(6)  push array index
52: LDC   0, 3(5)  load integer 3
53: LDA   6, -1(6)  push array index
54: ST    0, 0(6)  push array index
55: LDC   0, 3(5)  push array dimension
56: LDC   0, 0(5)  load 0 to ac
57: LD    1, 0(6)  pop index
58: LDA   6, 1(6)  pop index
59: JLT   1, 6(5)  jump if index less than 0
60: LDC   3, 3(5)  load array size
61: SUB   3, 3, 1  sub max size with index
62: JLE   3, 6(5)  jump if index greater than size - 1
63: LDC   2, 20(5)  load size of subarray
64: MUL   1, 1, 2  compute 0 dim
65: ADD   0, 0, 1  add result
66: LD    1, 0(6)  pop index
67: LDA   6, 1(6)  pop index
68: JLT   1, 6(5)  jump if index less than 0
69: LDC   3, 4(5)  load array size
70: SUB   3, 3, 1  sub max size with index
71: JLE   3, 6(5)  jump if index greater than size - 1
72: LDC   2, 5(5)  load size of subarray
73: MUL   1, 1, 2  compute 1 dim
74: ADD   0, 0, 1  add result
75: LD    1, 0(6)  pop index
76: LDA   6, 1(6)  pop index
77: JLT   1, 6(5)  jump if index less than 0
78: LDC   3, 5(5)  load array size
79: SUB   3, 3, 1  sub max size with index
80: JLE   3, 6(5)  jump if index greater than size - 1
81: LDC   2, 1(5)  load size of subarray
82: MUL   1, 1, 2  compute 2 dim
83: ADD   0, 0, 1  add result
84: LD    1, 20(5)  load offset into ac2
85: ADD   0, 0, 1  compute final offset
86: LDA   6, -1(6)  push final offset
87: ST    0, 0(6)  push final offset
88: LDC   0, 1(5)  load integer 1
89: LD    1, 0(6)  pop final offset
90: LDA   6, 1(6)  pop final offset
91: ST    0, 0(1)  store value into array static data
92: HALT  0, 0, 0  program ends
