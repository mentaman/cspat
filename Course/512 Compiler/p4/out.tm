.DATA    25
.SDATA   "invalid numeric character"
.DATA    13
.SDATA   "out of memory"
.DATA    5
.SDATA   "d := "
.DATA    4
.SDATA   "true"
.DATA    18
.SDATA   "array index error!"
.DATA    5
.SDATA   "c := "
.DATA    5
.SDATA   "a := "
0: LD    6, 0(5)  save stack pointer
1: LD    4, 0(5)  save frame pointer
3: LDC   0, 52(5)  load array error str address
4: LD    1, 0(0)  load str length into ac2
5: JEQ   1, 5(7)  output nothing when empty
6: LDA   0, 1(0)  increase offset
7: LD    2, 0(0)  load char into ac3
8: OUTC   2, 2, 2  write char
9: LDA   1, -1(1)  decrease length of remaining string in ac2
10: JNE   1, -5(7)  continue print if not yet finish
11: OUTNL 0, 0, 0  emit newline
12: HALT  0, 0, 0  stop because of array error
13: LDC   0, 27(5)  load out of memory str address
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
25: LDA   0, 1(0)  increase str offset
26: LD    2, 0(0)  load char
27: LDC   3, 43(5)  load 43(+) into ac4
28: SUB   3, 2, 3  sub 43(+)
30: LDC   3, 45(5)  load 45(-) into ac4
31: SUB   3, 2, 3  sub 45(-)
33: LDA   1, -1(1)  decrease str length
34: LDC   2, -1(5)  load -1 into ac3
35: LDA   6, -1(6)  push -1
36: LDC   3, 87(5)  push -1
37: SUB   3, 6, 3  push -1
38: JLE   3, 13(5)  push -1
39: ST    2, 0(6)  push -1
32: JNE   3, 8(7)  jump if not equal '-'
41: LDA   0, -1(0)  move back str offset
42: LDA   1, 1(1)  increase str length
29: JEQ   3, 13(7)  jump if equal '+'
43: LDA   1, -1(1)  decrease str length
44: LDC   2, 1(5)  load 1 into ac3
45: LDA   6, -1(6)  push 1
46: LDC   3, 87(5)  push 1
47: SUB   3, 6, 3  push 1
48: JLE   3, 13(5)  push 1
49: ST    2, 0(6)  push 1
40: LDA   7, 9(7)  jump to start parsing str
50: LDC   2, 0(5)  load 0 as initial result
51: LDA   6, -1(6)  push 0
52: LDC   3, 87(5)  push 0
53: SUB   3, 6, 3  push 0
54: JLE   3, 13(5)  push 0
55: ST    2, 0(6)  push 0
56: LD    2, 0(6)  pop result into AC3
57: LDA   6, 1(6)  pop result into AC3
58: LDC   3, 10(5)  load 10 into ac4
59: MUL   2, 2, 3  mul result with 10
60: LDA   6, -1(6)  push result
61: LDC   3, 87(5)  push result
62: SUB   3, 6, 3  push result
63: JLE   3, 13(5)  push result
64: ST    2, 0(6)  push result
65: LDA   0, 1(0)  increase str offset
66: LD    2, 0(0)  load char
67: LDC   3, 48(5)  load 48 into ac4
68: SUB   2, 2, 3  compute int value
69: LD    3, 0(6)  pop result into AC4
70: LDA   6, 1(6)  pop result into AC4
71: ADD   2, 2, 3  compute result
72: LDA   6, -1(6)  push result
73: LDC   3, 87(5)  push result
74: SUB   3, 6, 3  push result
75: JLE   3, 13(5)  push result
76: ST    2, 0(6)  push result
77: LDA   1, -1(1)  decrease str length
78: JNE   1, 56(5)  continue if str length
79: LD    0, 0(6)  pop result
80: LDA   6, 1(6)  pop result
81: LD    1, 0(6)  pop symbol
82: LDA   6, 1(6)  pop symbol
83: MUL   0, 0, 1  multiply symbol
84: ST    0, -2(4)  save to return value
85: LD    0, -2(4)  load int/bool/string offset as return value
86: LD    1, -1(4)  load return address
87: LDA   6, 0(4)  change sp to fp + 1
88: LD    4, 0(6)  restore fp
89: LDA   6, 1(6)  restore fp
90: LDA   7, 0(1)  jump to the return address
2: LDA   7, 91(5)  jump to start of the program
91: LDC   0, -6(5)  load integer -6
92: ST    0, 86(5)  store int/bool/string into previous used static data
93: LDC   0, 1(5)  load booleantrue
94: ST    0, 84(5)  store int/bool/string into previous used static data
95: LDC   0, -6(5)  load integer -6
96: ST    0, 85(5)  store int/bool/string into previous used static data
97: LDC   0, -18(5)  load integer -18
98: ST    0, 83(5)  store int/bool/string into previous used static data
99: LD    0, 84(5)  load int/bool/str from static data
101: LDC   0, 47(5)  load string offset 47
102: LD    1, 0(0)  load str length into ac2
103: JEQ   1, 5(7)  output nothing when empty
104: LDA   0, 1(0)  increase offset
105: LD    2, 0(0)  load char into ac3
106: OUTC   2, 2, 2  write char
107: LDA   1, -1(1)  decrease length of remaining string in ac2
108: JNE   1, -5(7)  continue print if not yet finish
109: OUTNL 0, 0, 0  write new line
100: JEQ   0, 9(7)  if expr not true
110: LDC   0, 77(5)  load string offset 77
111: LD    1, 0(0)  load str length into ac2
112: JEQ   1, 5(7)  output nothing when empty
113: LDA   0, 1(0)  increase offset
114: LD    2, 0(0)  load char into ac3
115: OUTC   2, 2, 2  write char
116: LDA   1, -1(1)  decrease length of remaining string in ac2
117: JNE   1, -5(7)  continue print if not yet finish
118: LD    0, 86(5)  load int/bool/str from static data
119: OUT   0, 0, 0  write integer
120: OUTNL 0, 0, 0  write new line
121: LDC   0, 71(5)  load string offset 71
122: LD    1, 0(0)  load str length into ac2
123: JEQ   1, 5(7)  output nothing when empty
124: LDA   0, 1(0)  increase offset
125: LD    2, 0(0)  load char into ac3
126: OUTC   2, 2, 2  write char
127: LDA   1, -1(1)  decrease length of remaining string in ac2
128: JNE   1, -5(7)  continue print if not yet finish
129: LDC   0, 1(5)  load integer 1
130: OUT   0, 0, 0  write integer
131: OUTNL 0, 0, 0  write new line
132: LDC   0, 41(5)  load string offset 41
133: LD    1, 0(0)  load str length into ac2
134: JEQ   1, 5(7)  output nothing when empty
135: LDA   0, 1(0)  increase offset
136: LD    2, 0(0)  load char into ac3
137: OUTC   2, 2, 2  write char
138: LDA   1, -1(1)  decrease length of remaining string in ac2
139: JNE   1, -5(7)  continue print if not yet finish
140: LDC   0, 1(5)  load integer 1
141: OUT   0, 0, 0  write integer
142: OUTNL 0, 0, 0  write new line
143: HALT  0, 0, 0  program ends
