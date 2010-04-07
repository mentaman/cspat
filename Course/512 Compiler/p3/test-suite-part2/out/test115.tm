.DATA    2
.SDATA   "Hi"
.DATA    3
.SDATA   "+10"
.DATA    18
.SDATA   "array index error!"
.DATA    5
.SDATA   "There"
.DATA    0
.SDATA   ""
.DATA    14
.SDATA   "should not see"
.DATA    15
.SDATA   "m > 4 || m <= 2"
.DATA    5
.SDATA   "first"
.DATA    1
.SDATA   " "
.DATA    3
.SDATA   "abc"
.DATA    5
.SDATA   "third"
.DATA    5
.SDATA   "inner"
.DATA    13
.SDATA   "out of memory"
.DATA    8
.SDATA   "Hi there"
.DATA    3
.SDATA   "10 "
.DATA    4
.SDATA   "Done"
.DATA    3
.SDATA   "Hi "
.DATA    6
.SDATA   "fourth"
.DATA    5
.SDATA   " -10 "
.DATA    1
.SDATA   "-"
.DATA    15
.SDATA   "m <= 4 && m > 2"
.DATA    11
.SDATA   "after break"
.DATA    3
.SDATA   "1-0"
.DATA    5
.SDATA   "outer"
.DATA    8
.SDATA   "Hi There"
.DATA    3
.SDATA   "end"
.DATA    6
.SDATA   "second"
0: LD    6, 0(5)  save stack pointer
1: LD    4, 0(5)  save frame pointer
3: LDC   0, 8(5)  load array error str address
4: LD    1, 0(0)  load str length into ac2
5: JEQ   1, 5(7)  output nothing when empty
6: LDA   0, 1(0)  increase offset
7: LD    2, 0(0)  load char into ac3
8: OUTC   2, 2, 2  write char
9: LDA   1, -1(1)  decrease length of remaining string in ac2
10: JNE   1, -5(7)  continue print if not yet finish
11: OUTNL 0, 0, 0  emit newline
12: HALT  0, 0, 0  stop because of array error
13: LDC   0, 89(5)  load out of memory str address
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
27: LDC   3, 198(5)  push 0
28: SUB   3, 6, 3  push 0
29: JLE   3, 13(5)  push 0
30: ST    2, 0(6)  push 0
31: LD    2, 0(6)  pop result into AC3
32: LDA   6, 1(6)  pop result into AC3
33: LDC   3, 10(5)  load 10 into ac4
34: MUL   2, 2, 3  mul result with 10
35: LDA   6, -1(6)  push result
36: LDC   3, 198(5)  push result
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
48: LDC   3, 198(5)  push result
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
2: LDA   7, 63(5)  jump to start of the program
63: LDA   6, -1(6)  push fp
64: LDC   3, 198(5)  push fp
65: SUB   3, 6, 3  push fp
66: JLE   3, 13(5)  push fp
67: ST    4, 0(6)  push fp
68: LDA   4, 0(6)  set fp to sp
69: LDC   0, 0(5)  load integer 0
70: LDA   6, -1(6)  push low
71: LDC   3, 198(5)  push low
72: SUB   3, 6, 3  push low
73: JLE   3, 13(5)  push low
74: ST    0, 0(6)  push low
75: LDC   0, 1(5)  load integer 1
76: LDA   6, -1(6)  push hi
77: LDC   3, 198(5)  push hi
78: SUB   3, 6, 3  push hi
79: JLE   3, 13(5)  push hi
80: ST    0, 0(6)  push hi
81: LD    0, -2(4)  load hi into ac 
82: LD    1, -1(4)  load low into ac2 
83: SUB   0, 0, 1  subtract hi with low
85: LDA   6, -1(6)  push fp
86: LDC   3, 198(5)  push fp
87: SUB   3, 6, 3  push fp
88: JLE   3, 13(5)  push fp
89: ST    4, 0(6)  push fp
90: LDA   4, 0(6)  set fp to sp
91: LDC   0, 0(5)  load integer 0
92: LDA   6, -1(6)  push low
93: LDC   3, 198(5)  push low
94: SUB   3, 6, 3  push low
95: JLE   3, 13(5)  push low
96: ST    0, 0(6)  push low
97: LDC   0, 1(5)  load integer 1
98: LDA   6, -1(6)  push hi
99: LDC   3, 198(5)  push hi
100: SUB   3, 6, 3  push hi
101: JLE   3, 13(5)  push hi
102: ST    0, 0(6)  push hi
103: LD    0, -2(4)  load hi into ac 
104: LD    1, -1(4)  load low into ac2 
105: SUB   0, 0, 1  subtract hi with low
108: LDC   0, 83(5)  load string offset 83
109: LD    1, 0(0)  load str length into ac2
110: JEQ   1, 5(7)  output nothing when empty
111: LDA   0, 1(0)  increase offset
112: LD    2, 0(0)  load char into ac3
113: OUTC   2, 2, 2  write char
114: LDA   1, -1(1)  decrease length of remaining string in ac2
115: JNE   1, -5(7)  continue print if not yet finish
116: OUTNL 0, 0, 0  write new line
117: LD    0, -1(4)  load low into ac
118: LDA   0, 1(0)  decrease low
119: ST    0, -1(4)  save low
120: LDA   7, -18(7)  jump back to loop start
106: JLT   0, 14(7)  jump out of the fa loop
107: LDA   7, 13(7)  break -> jump out of the do loop
121: LDA   6, 0(4)  change sp to fp + 1
122: LD    4, 0(6)  restore fp
123: LDA   6, 1(6)  restore fp
124: LDC   0, 172(5)  load string offset 172
125: LD    1, 0(0)  load str length into ac2
126: JEQ   1, 5(7)  output nothing when empty
127: LDA   0, 1(0)  increase offset
128: LD    2, 0(0)  load char into ac3
129: OUTC   2, 2, 2  write char
130: LDA   1, -1(1)  decrease length of remaining string in ac2
131: JNE   1, -5(7)  continue print if not yet finish
132: OUTNL 0, 0, 0  write new line
133: LD    0, -1(4)  load low into ac
134: LDA   0, 1(0)  decrease low
135: ST    0, -1(4)  save low
136: LDA   7, -56(7)  jump back to loop start
84: JLT   0, 52(7)  jump out of the fa loop
137: LDA   6, 0(4)  change sp to fp + 1
138: LD    4, 0(6)  restore fp
139: LDA   6, 1(6)  restore fp
140: HALT  0, 0, 0  program ends
