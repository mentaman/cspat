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
.DATA    14
.SDATA   "should not see"
.DATA    0
.SDATA   ""
.DATA    15
.SDATA   "m > 4 || m <= 2"
.DATA    5
.SDATA   "first"
.DATA    1
.SDATA   " "
.DATA    5
.SDATA   "third"
.DATA    3
.SDATA   "abc"
.DATA    5
.SDATA   "inner"
.DATA    8
.SDATA   "Hi there"
.DATA    13
.SDATA   "out of memory"
.DATA    3
.SDATA   "10 "
.DATA    9
.SDATA   "a[1] is: "
.DATA    4
.SDATA   "Done"
.DATA    6
.SDATA   "fourth"
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
.DATA    11
.SDATA   "after break"
.DATA    3
.SDATA   "1-0"
.DATA    1
.SDATA   "3"
.DATA    5
.SDATA   "outer"
.DATA    9
.SDATA   "i am a[1]"
.DATA    8
.SDATA   "int(s): "
.DATA    8
.SDATA   "Hi There"
.DATA    3
.SDATA   "end"
.DATA    9
.SDATA   "i am a[0]"
.DATA    6
.SDATA   "second"
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
13: LDC   0, 148(5)  load out of memory str address
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
36: LDC   3, 316(5)  push -1
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
46: LDC   3, 316(5)  push 1
47: SUB   3, 6, 3  push 1
48: JLE   3, 13(5)  push 1
49: ST    2, 0(6)  push 1
40: LDA   7, 9(7)  jump to start parsing str
50: LDC   2, 0(5)  load 0 as initial result
51: LDA   6, -1(6)  push 0
52: LDC   3, 316(5)  push 0
53: SUB   3, 6, 3  push 0
54: JLE   3, 13(5)  push 0
55: ST    2, 0(6)  push 0
56: LD    2, 0(6)  pop result into AC3
57: LDA   6, 1(6)  pop result into AC3
58: LDC   3, 10(5)  load 10 into ac4
59: MUL   2, 2, 3  mul result with 10
60: LDA   6, -1(6)  push result
61: LDC   3, 316(5)  push result
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
73: LDC   3, 316(5)  push result
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
91: LDA   1, 0(4)  load fp into ac2
92: LD    0, -2(1)  load int/bool/str from stack
93: LDA   6, -1(6)  push first child's value
94: LDC   3, 316(5)  push first child's value
95: SUB   3, 6, 3  push first child's value
96: JLE   3, 13(5)  push first child's value
97: ST    0, 0(6)  push first child's value
98: LDA   1, 0(4)  load fp into ac2
99: LD    0, -3(1)  load int/bool/str from stack
100: LD    1, 0(6)  pop first child's value
101: LDA   6, 1(6)  pop first child's value
102: ADD   0, 0, 1  add two children
103: LDA   1, 0(4)  load fp into ac2
104: LD    0, -4(1)  load int/bool/str from stack
106: LDA   1, 0(4)  load fp into ac2
107: LD    0, -5(1)  load int/bool/str from stack
108: LD    1, 0(0)  load str length into ac2
109: JEQ   1, 5(7)  output nothing when empty
110: LDA   0, 1(0)  increase offset
111: LD    2, 0(0)  load char into ac3
112: OUTC   2, 2, 2  write char
113: LDA   1, -1(1)  decrease length of remaining string in ac2
114: JNE   1, -5(7)  continue print if not yet finish
115: OUTNL 0, 0, 0  write new line
105: JEQ   0, 10(7)  if expr not true
116: LD    1, -1(4)  load return address
117: LDA   6, 0(4)  change sp to fp + 1
118: LD    4, 0(6)  restore fp
119: LDA   6, 1(6)  restore fp
120: LDA   7, 0(1)  jump to the return address
2: LDA   7, 121(5)  jump to start of the program
121: LDA   6, -1(6)  push fp
122: LDC   3, 316(5)  push fp
123: SUB   3, 6, 3  push fp
124: JLE   3, 13(5)  push fp
125: ST    4, 0(6)  push fp
126: LDA   4, 0(6)  set fp to sp
133: LDC   0, 0(5)  load integer 0
134: LDA   6, -1(6)  push int/bool/str parameter
135: LDC   3, 316(5)  push int/bool/str parameter
136: SUB   3, 6, 3  push int/bool/str parameter
137: JLE   3, 13(5)  push int/bool/str parameter
138: ST    0, 0(6)  push int/bool/str parameter
139: LDC   0, 0(5)  load integer 0
140: LDA   6, -1(6)  push int/bool/str parameter
141: LDC   3, 316(5)  push int/bool/str parameter
142: SUB   3, 6, 3  push int/bool/str parameter
143: JLE   3, 13(5)  push int/bool/str parameter
144: ST    0, 0(6)  push int/bool/str parameter
145: LDC   0, 1(5)  load booleantrue
146: LDA   6, -1(6)  push int/bool/str parameter
147: LDC   3, 316(5)  push int/bool/str parameter
148: SUB   3, 6, 3  push int/bool/str parameter
149: JLE   3, 13(5)  push int/bool/str parameter
150: ST    0, 0(6)  push int/bool/str parameter
151: LDC   0, 1(5)  load string offset 1
152: LDA   6, -1(6)  push int/bool/str parameter
153: LDC   3, 316(5)  push int/bool/str parameter
154: SUB   3, 6, 3  push int/bool/str parameter
155: JLE   3, 13(5)  push int/bool/str parameter
156: ST    0, 0(6)  push int/bool/str parameter
157: LDA   6, 0(6)  preserve space for local vars
158: LDA   7, 91(5)  jump to procedure call
127: LDC   0, 159(5)  load return address into ac
128: LDA   6, -1(6)  push return address
129: LDC   3, 316(5)  push return address
130: SUB   3, 6, 3  push return address
131: JLE   3, 13(5)  push return address
132: ST    0, 0(6)  push return address
159: HALT  0, 0, 0  program ends
