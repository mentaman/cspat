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
13: LDC   0, 92(5)  load out of memory str address
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
27: LDC   3, 125(5)  push 0
28: SUB   3, 6, 3  push 0
29: JLE   3, 13(5)  push 0
30: ST    2, 0(6)  push 0
31: LD    2, 0(6)  pop result into AC3
32: LDA   6, 1(6)  pop result into AC3
33: LDC   3, 10(5)  load 10 into ac4
34: MUL   2, 2, 3  mul result with 10
35: LDA   6, -1(6)  push result
36: LDC   3, 125(5)  push result
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
48: LDC   3, 125(5)  push result
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
63: LDA   6, -1(6)  push fp
64: LDC   3, 125(5)  push fp
65: SUB   3, 6, 3  push fp
66: JLE   3, 13(5)  push fp
67: ST    4, 0(6)  push fp
68: LDA   4, 0(6)  set fp to sp
69: LDC   0, 0(5)  load integer 0
70: LDA   6, -1(6)  push low
71: LDC   3, 125(5)  push low
72: SUB   3, 6, 3  push low
73: JLE   3, 13(5)  push low
74: ST    0, 0(6)  push low
75: LDC   0, 1(5)  load integer 1
76: LDA   6, -1(6)  push hi
77: LDC   3, 125(5)  push hi
78: SUB   3, 6, 3  push hi
79: JLE   3, 13(5)  push hi
80: ST    0, 0(6)  push hi
81: LD    0, -2(4)  load hi into ac 
82: LD    1, -1(4)  load low into ac2 
83: SUB   0, 0, 1  subtract hi with low
85: LDA   1, 0(4)  load fp into ac2
86: LD    0, -1(1)  load int/bool/str from stack
87: OUT   0, 0, 0  write integer
88: LDC   0, 50(5)  load string offset 50
89: LD    1, 0(0)  load str length into ac2
90: JEQ   1, 5(7)  output nothing when empty
91: LDA   0, 1(0)  increase offset
92: LD    2, 0(0)  load char into ac3
93: OUTC   2, 2, 2  write char
94: LDA   1, -1(1)  decrease length of remaining string in ac2
95: JNE   1, -5(7)  continue print if not yet finish
96: LD    0, -1(4)  load low into ac
97: LDA   0, 1(0)  decrease low
98: ST    0, -1(4)  save low
99: LDA   7, -19(7)  jump back to loop start
84: JLT   0, 15(7)  jump out of the fa loop
100: LDA   6, 0(4)  change sp to fp + 1
101: LD    4, 0(6)  restore fp
102: LDA   6, 1(6)  restore fp
103: LDC   0, 50(5)  load string offset 50
104: LD    1, 0(0)  load str length into ac2
105: JEQ   1, 5(7)  output nothing when empty
106: LDA   0, 1(0)  increase offset
107: LD    2, 0(0)  load char into ac3
108: OUTC   2, 2, 2  write char
109: LDA   1, -1(1)  decrease length of remaining string in ac2
110: JNE   1, -5(7)  continue print if not yet finish
111: OUTNL 0, 0, 0  write new line
112: LD    1, -1(4)  load return address
113: LDA   6, 0(4)  change sp to fp + 1
114: LD    4, 0(6)  restore fp
115: LDA   6, 1(6)  restore fp
116: LDA   7, 0(1)  jump to the return address
2: LDA   7, 117(5)  jump to start of the program
117: LDA   6, -1(6)  push fp
118: LDC   3, 125(5)  push fp
119: SUB   3, 6, 3  push fp
120: JLE   3, 13(5)  push fp
121: ST    4, 0(6)  push fp
122: LDA   4, 0(6)  set fp to sp
123: LDC   0, 0(5)  load integer 0
124: LDA   6, -1(6)  push low
125: LDC   3, 125(5)  push low
126: SUB   3, 6, 3  push low
127: JLE   3, 13(5)  push low
128: ST    0, 0(6)  push low
129: LDC   0, 1(5)  load integer 1
130: LDA   6, -1(6)  push hi
131: LDC   3, 125(5)  push hi
132: SUB   3, 6, 3  push hi
133: JLE   3, 13(5)  push hi
134: ST    0, 0(6)  push hi
135: LD    0, -2(4)  load hi into ac 
136: LD    1, -1(4)  load low into ac2 
137: SUB   0, 0, 1  subtract hi with low
139: LDA   1, 0(4)  load fp into ac2
140: LD    0, -1(1)  load int/bool/str from stack
141: OUT   0, 0, 0  write integer
142: OUTNL 0, 0, 0  write new line
143: LDA   6, -1(6)  push fp
144: LDC   3, 125(5)  push fp
145: SUB   3, 6, 3  push fp
146: JLE   3, 13(5)  push fp
147: ST    4, 0(6)  push fp
148: LDA   4, 0(6)  set fp to sp
155: LDA   1, 0(4)  load fp into ac2
156: LD    1, 0(1)  load upper level fp into ac2
157: LD    0, -1(1)  load int/bool/str from stack
158: LDA   6, -1(6)  push int/bool/str parameter
159: LDC   3, 125(5)  push int/bool/str parameter
160: SUB   3, 6, 3  push int/bool/str parameter
161: JLE   3, 13(5)  push int/bool/str parameter
162: ST    0, 0(6)  push int/bool/str parameter
163: LDA   6, 0(6)  preserve space for local vars
164: LDA   7, 63(5)  jump to procedure call
149: LDC   0, 165(5)  load return address into ac
150: LDA   6, -1(6)  push return address
151: LDC   3, 125(5)  push return address
152: SUB   3, 6, 3  push return address
153: JLE   3, 13(5)  push return address
154: ST    0, 0(6)  push return address
165: LD    0, -1(4)  load low into ac
166: LDA   0, 1(0)  decrease low
167: ST    0, -1(4)  save low
168: LDA   7, -34(7)  jump back to loop start
138: JLT   0, 30(7)  jump out of the fa loop
169: LDA   6, 0(4)  change sp to fp + 1
170: LD    4, 0(6)  restore fp
171: LDA   6, 1(6)  restore fp
172: HALT  0, 0, 0  program ends
