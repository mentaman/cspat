.DATA    2
.SDATA   "Hi"
.DATA    3
.SDATA   "+10"
.DATA    25
.SDATA   "invalid numeric character"
.DATA    6
.SDATA   "i am c"
.DATA    9
.SDATA   "a[0] is: "
.DATA    2
.SDATA   "50"
.DATA    18
.SDATA   "array index error!"
.DATA    3
.SDATA   "+50"
.DATA    5
.SDATA   "There"
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
.DATA    9
.SDATA   "a[1] is: "
.DATA    3
.SDATA   "Hi "
.DATA    16
.SDATA   "after test(a[1])"
.DATA    5
.SDATA   " -10 "
.DATA    3
.SDATA   "-50"
.DATA    1
.SDATA   "-"
.DATA    5
.SDATA   "c is "
.DATA    15
.SDATA   "m <= 4 && m > 2"
.DATA    3
.SDATA   "1-0"
.DATA    9
.SDATA   "i am a[1]"
.DATA    8
.SDATA   "int(s): "
.DATA    9
.SDATA   "i am a[0]"
0: LD    6, 0(5)  save stack pointer
1: LD    4, 0(5)  save frame pointer
3: LDC   0, 54(5)  load array error str address
4: LD    1, 0(0)  load str length into ac2
5: JEQ   1, 5(7)  output nothing when empty
6: LDA   0, 1(0)  increase offset
7: LD    2, 0(0)  load char into ac3
8: OUTC   2, 2, 2  write char
9: LDA   1, -1(1)  decrease length of remaining string in ac2
10: JNE   1, -5(7)  continue print if not yet finish
11: OUTNL 0, 0, 0  emit newline
12: HALT  0, 0, 0  stop because of array error
13: LDC   0, 104(5)  load out of memory str address
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
36: LDC   3, 220(5)  push -1
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
46: LDC   3, 220(5)  push 1
47: SUB   3, 6, 3  push 1
48: JLE   3, 13(5)  push 1
49: ST    2, 0(6)  push 1
40: LDA   7, 9(7)  jump to start parsing str
50: LDC   2, 0(5)  load 0 as initial result
51: LDA   6, -1(6)  push 0
52: LDC   3, 220(5)  push 0
53: SUB   3, 6, 3  push 0
54: JLE   3, 13(5)  push 0
55: ST    2, 0(6)  push 0
56: LD    2, 0(6)  pop result into AC3
57: LDA   6, 1(6)  pop result into AC3
58: LDC   3, 10(5)  load 10 into ac4
59: MUL   2, 2, 3  mul result with 10
60: LDA   6, -1(6)  push result
61: LDC   3, 220(5)  push result
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
73: LDC   3, 220(5)  push result
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
91: LDC   0, 1(5)  load integer 1
92: LDA   6, -1(6)  push first child's value
93: LDC   3, 220(5)  push first child's value
94: SUB   3, 6, 3  push first child's value
95: JLE   3, 13(5)  push first child's value
96: ST    0, 0(6)  push first child's value
97: LDC   0, 3(5)  load integer 3
98: LD    1, 0(6)  pop first child's value
99: LDA   6, 1(6)  pop first child's value
100: SUB   0, 1, 0  subtract two children
101: LDA   6, -1(6)  push first child's value
102: LDC   3, 220(5)  push first child's value
103: SUB   3, 6, 3  push first child's value
104: JLE   3, 13(5)  push first child's value
105: ST    0, 0(6)  push first child's value
106: LDC   0, 5(5)  load integer 5
107: LD    1, 0(6)  pop first child's value
108: LDA   6, 1(6)  pop first child's value
109: SUB   0, 1, 0  subtract two children
110: LDA   6, -1(6)  push first child's value
111: LDC   3, 220(5)  push first child's value
112: SUB   3, 6, 3  push first child's value
113: JLE   3, 13(5)  push first child's value
114: ST    0, 0(6)  push first child's value
115: LDC   0, 7(5)  load integer 7
116: LD    1, 0(6)  pop first child's value
117: LDA   6, 1(6)  pop first child's value
118: SUB   0, 1, 0  subtract two children
119: OUT   0, 0, 0  write integer
120: OUTNL 0, 0, 0  write new line
121: LDC   0, 5(5)  load integer 5
122: LDA   6, -1(6)  push first child's value
123: LDC   3, 220(5)  push first child's value
124: SUB   3, 6, 3  push first child's value
125: JLE   3, 13(5)  push first child's value
126: ST    0, 0(6)  push first child's value
127: LDC   0, 4(5)  load integer 4
128: LD    1, 0(6)  pop first child's value
129: LDA   6, 1(6)  pop first child's value
130: SUB   0, 1, 0  subtract two children
131: OUT   0, 0, 0  write integer
132: OUTNL 0, 0, 0  write new line
133: LDC   0, 1(5)  load integer 1
134: LDA   6, -1(6)  push first child's value
135: LDC   3, 220(5)  push first child's value
136: SUB   3, 6, 3  push first child's value
137: JLE   3, 13(5)  push first child's value
138: ST    0, 0(6)  push first child's value
139: LDC   0, 3(5)  load integer 3
140: LDA   6, -1(6)  push first child's value
141: LDC   3, 220(5)  push first child's value
142: SUB   3, 6, 3  push first child's value
143: JLE   3, 13(5)  push first child's value
144: ST    0, 0(6)  push first child's value
145: LDC   0, 5(5)  load integer 5
146: LD    1, 0(6)  pop first child's value
147: LDA   6, 1(6)  pop first child's value
148: SUB   0, 1, 0  subtract two children
149: LD    1, 0(6)  pop first child's value
150: LDA   6, 1(6)  pop first child's value
151: SUB   0, 1, 0  subtract two children
152: OUT   0, 0, 0  write integer
153: OUTNL 0, 0, 0  write new line
154: HALT  0, 0, 0  program ends
