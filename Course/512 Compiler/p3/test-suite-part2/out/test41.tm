.DATA    3
.SDATA   "Hi "
.DATA    2
.SDATA   "Hi"
.DATA    16
.SDATA   "after test(a[1])"
.DATA    3
.SDATA   "-50"
.DATA    25
.SDATA   "invalid numeric character"
.DATA    6
.SDATA   "i am c"
.DATA    9
.SDATA   "a[0] is: "
.DATA    5
.SDATA   "c is "
.DATA    2
.SDATA   "50"
.DATA    3
.SDATA   "+50"
.DATA    18
.SDATA   "array index error!"
.DATA    5
.SDATA   "There"
.DATA    9
.SDATA   "i am a[1]"
.DATA    9
.SDATA   "i am a[0]"
.DATA    13
.SDATA   "out of memory"
.DATA    9
.SDATA   "a[1] is: "
0: LD    6, 0(5)  save stack pointer
1: LD    4, 0(5)  save frame pointer
3: LDC   0, 85(5)  load array error str address
4: LD    1, 0(0)  load str length into ac2
5: JEQ   1, 5(7)  output nothing when empty
6: LDA   0, 1(0)  increase offset
7: LD    2, 0(0)  load char into ac3
8: OUTC   2, 2, 2  write char
9: LDA   1, -1(1)  decrease length of remaining string in ac2
10: JNE   1, -5(7)  continue print if not yet finish
11: OUTNL 0, 0, 0  emit newline
12: HALT  0, 0, 0  stop because of array error
13: LDC   0, 130(5)  load out of memory str address
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
36: LDC   3, 154(5)  push -1
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
46: LDC   3, 154(5)  push 1
47: SUB   3, 6, 3  push 1
48: JLE   3, 13(5)  push 1
49: ST    2, 0(6)  push 1
40: LDA   7, 9(7)  jump to start parsing str
50: LDC   2, 0(5)  load 0 as initial result
51: LDA   6, -1(6)  push 0
52: LDC   3, 154(5)  push 0
53: SUB   3, 6, 3  push 0
54: JLE   3, 13(5)  push 0
55: ST    2, 0(6)  push 0
56: LD    2, 0(6)  pop result into AC3
57: LDA   6, 1(6)  pop result into AC3
58: LDC   3, 10(5)  load 10 into ac4
59: MUL   2, 2, 3  mul result with 10
60: LDA   6, -1(6)  push result
61: LDC   3, 154(5)  push result
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
73: LDC   3, 154(5)  push result
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
93: OUT   0, 0, 0  write integer
94: OUTNL 0, 0, 0  write new line
95: LDA   1, 0(4)  load fp into ac2
96: LD    0, -3(1)  load int/bool/str from stack
97: OUT   0, 0, 0  write integer
98: OUTNL 0, 0, 0  write new line
99: LDA   1, 0(4)  load fp into ac2
100: LD    0, -4(1)  load int/bool/str from stack
101: LD    1, 0(0)  load str length into ac2
102: JEQ   1, 5(7)  output nothing when empty
103: LDA   0, 1(0)  increase offset
104: LD    2, 0(0)  load char into ac3
105: OUTC   2, 2, 2  write char
106: LDA   1, -1(1)  decrease length of remaining string in ac2
107: JNE   1, -5(7)  continue print if not yet finish
108: OUTNL 0, 0, 0  write new line
109: LD    1, -1(4)  load return address
110: LDA   6, 0(4)  change sp to fp + 1
111: LD    4, 0(6)  restore fp
112: LDA   6, 1(6)  restore fp
113: LDA   7, 0(1)  jump to the return address
2: LDA   7, 114(5)  jump to start of the program
114: LDA   6, -1(6)  push fp
115: LDC   3, 154(5)  push fp
116: SUB   3, 6, 3  push fp
117: JLE   3, 13(5)  push fp
118: ST    4, 0(6)  push fp
119: LDA   4, 0(6)  set fp to sp
126: LDC   0, 1(5)  load integer 1
127: LDA   6, -1(6)  push int/bool/str parameter
128: LDC   3, 154(5)  push int/bool/str parameter
129: SUB   3, 6, 3  push int/bool/str parameter
130: JLE   3, 13(5)  push int/bool/str parameter
131: ST    0, 0(6)  push int/bool/str parameter
132: LDC   0, 1(5)  load booleantrue
133: LDA   6, -1(6)  push int/bool/str parameter
134: LDC   3, 154(5)  push int/bool/str parameter
135: SUB   3, 6, 3  push int/bool/str parameter
136: JLE   3, 13(5)  push int/bool/str parameter
137: ST    0, 0(6)  push int/bool/str parameter
138: LDC   0, 5(5)  load string offset 5
139: LDA   6, -1(6)  push int/bool/str parameter
140: LDC   3, 154(5)  push int/bool/str parameter
141: SUB   3, 6, 3  push int/bool/str parameter
142: JLE   3, 13(5)  push int/bool/str parameter
143: ST    0, 0(6)  push int/bool/str parameter
144: LDA   6, 0(6)  preserve space for local vars
145: LDA   7, 91(5)  jump to procedure call
120: LDC   0, 146(5)  load return address into ac
121: LDA   6, -1(6)  push return address
122: LDC   3, 154(5)  push return address
123: SUB   3, 6, 3  push return address
124: JLE   3, 13(5)  push return address
125: ST    0, 0(6)  push return address
146: HALT  0, 0, 0  program ends
