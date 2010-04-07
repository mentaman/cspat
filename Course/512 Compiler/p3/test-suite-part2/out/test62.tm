.DATA    3
.SDATA   "Hi "
.DATA    2
.SDATA   "Hi"
.DATA    13
.SDATA   "out of memory"
.DATA    15
.SDATA   "m <= 4 && m > 2"
.DATA    18
.SDATA   "array index error!"
.DATA    5
.SDATA   "There"
.DATA    15
.SDATA   "m > 4 || m <= 2"
0: LD    6, 0(5)  save stack pointer
1: LD    4, 0(5)  save frame pointer
3: LDC   0, 38(5)  load array error str address
4: LD    1, 0(0)  load str length into ac2
5: JEQ   1, 5(7)  output nothing when empty
6: LDA   0, 1(0)  increase offset
7: LD    2, 0(0)  load char into ac3
8: OUTC   2, 2, 2  write char
9: LDA   1, -1(1)  decrease length of remaining string in ac2
10: JNE   1, -5(7)  continue print if not yet finish
11: OUTNL 0, 0, 0  emit newline
12: HALT  0, 0, 0  stop because of array error
13: LDC   0, 8(5)  load out of memory str address
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
27: LDC   3, 79(5)  push 0
28: SUB   3, 6, 3  push 0
29: JLE   3, 13(5)  push 0
30: ST    2, 0(6)  push 0
31: LD    2, 0(6)  pop result into AC3
32: LDA   6, 1(6)  pop result into AC3
33: LDC   3, 10(5)  load 10 into ac4
34: MUL   2, 2, 3  mul result with 10
35: LDA   6, -1(6)  push result
36: LDC   3, 79(5)  push result
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
48: LDC   3, 79(5)  push result
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
63: LDA   1, 0(4)  load fp into ac2
64: LD    0, -2(1)  load int/bool/str from stack
65: LDA   6, -1(6)  push array index
66: LDC   3, 79(5)  push array index
67: SUB   3, 6, 3  push array index
68: JLE   3, 13(5)  push array index
69: ST    0, 0(6)  push array index
70: LDC   0, 1(5)  push array dimension
71: LDC   0, 0(5)  load 0 to ac
72: LD    1, 0(6)  pop index
73: LDA   6, 1(6)  pop index
74: JLT   1, 3(5)  jump if index less than 0
75: LDC   3, 5(5)  load array size
76: SUB   3, 3, 1  sub max size with index
77: JLE   3, 3(5)  jump if index greater than size - 1
78: LDC   2, 1(5)  load size of subarray
79: MUL   1, 1, 2  compute 0 dim
80: ADD   0, 0, 1  add result
81: LDA   1, 0(4)  load fp into ac2
82: LD    1, -8(1)  load local offset into ac2
83: ADD   0, 0, 1  compute final offset
84: LDA   6, -1(6)  push final offset
85: LDC   3, 79(5)  push final offset
86: SUB   3, 6, 3  push final offset
87: JLE   3, 13(5)  push final offset
88: ST    0, 0(6)  push final offset
89: LDC   0, 3(5)  load integer 3
90: LD    1, 0(6)  pop final offset
91: LDA   6, 1(6)  pop final offset
92: ST    0, 0(1)  store value into array static data
93: LDA   1, 0(4)  load fp into ac2
94: LD    0, -2(1)  load int/bool/str from stack
95: LDA   6, -1(6)  push array index
96: LDC   3, 79(5)  push array index
97: SUB   3, 6, 3  push array index
98: JLE   3, 13(5)  push array index
99: ST    0, 0(6)  push array index
100: LDC   0, 1(5)  push array dimension
101: LDC   0, 0(5)  load 0 to ac
102: LD    1, 0(6)  pop index
103: LDA   6, 1(6)  pop index
104: JLT   1, 3(5)  jump if index less than 0
105: LDC   3, 5(5)  load array size
106: SUB   3, 3, 1  sub max size with index
107: JLE   3, 3(5)  jump if index greater than size - 1
108: LDC   2, 1(5)  load size of subarray
109: MUL   1, 1, 2  compute 0 dim
110: ADD   0, 0, 1  add result
111: LDA   1, 0(4)  load fp into ac2
112: LD    1, -8(1)  load local offset into ac2
113: ADD   0, 0, 1  compute final offset
114: LD    0, 0(0)  load data from array
115: OUT   0, 0, 0  write integer
116: OUTNL 0, 0, 0  write new line
117: LDA   1, 0(4)  load fp into ac2
118: LD    0, -2(1)  load int/bool/str from stack
119: OUT   0, 0, 0  write integer
120: OUTNL 0, 0, 0  write new line
121: LD    1, -1(4)  load return address
122: LDA   6, 0(4)  change sp to fp + 1
123: LD    4, 0(6)  restore fp
124: LDA   6, 1(6)  restore fp
125: LDA   7, 0(1)  jump to the return address
2: LDA   7, 126(5)  jump to start of the program
126: LDA   6, -1(6)  push fp
127: LDC   3, 79(5)  push fp
128: SUB   3, 6, 3  push fp
129: JLE   3, 13(5)  push fp
130: ST    4, 0(6)  push fp
131: LDA   4, 0(6)  set fp to sp
138: LDC   0, 2(5)  load integer 2
139: LDA   6, -1(6)  push int/bool/str parameter
140: LDC   3, 79(5)  push int/bool/str parameter
141: SUB   3, 6, 3  push int/bool/str parameter
142: JLE   3, 13(5)  push int/bool/str parameter
143: ST    0, 0(6)  push int/bool/str parameter
144: LDC   0, 5(5)  load array localVariableSize: 5
145: SUB   0, 6, 0  compute absolute address of the array
146: ST    0, -6(6)  store absolute array address
147: LDA   6, -6(6)  preserve space for local vars
148: LDA   7, 63(5)  jump to procedure call
132: LDC   0, 149(5)  load return address into ac
133: LDA   6, -1(6)  push return address
134: LDC   3, 79(5)  push return address
135: SUB   3, 6, 3  push return address
136: JLE   3, 13(5)  push return address
137: ST    0, 0(6)  push return address
149: LDA   6, -1(6)  push fp
150: LDC   3, 79(5)  push fp
151: SUB   3, 6, 3  push fp
152: JLE   3, 13(5)  push fp
153: ST    4, 0(6)  push fp
154: LDA   4, 0(6)  set fp to sp
161: LDC   0, 1(5)  load integer 1
162: LDA   6, -1(6)  push int/bool/str parameter
163: LDC   3, 79(5)  push int/bool/str parameter
164: SUB   3, 6, 3  push int/bool/str parameter
165: JLE   3, 13(5)  push int/bool/str parameter
166: ST    0, 0(6)  push int/bool/str parameter
167: LDC   0, 5(5)  load array localVariableSize: 5
168: SUB   0, 6, 0  compute absolute address of the array
169: ST    0, -6(6)  store absolute array address
170: LDA   6, -6(6)  preserve space for local vars
171: LDA   7, 63(5)  jump to procedure call
155: LDC   0, 172(5)  load return address into ac
156: LDA   6, -1(6)  push return address
157: LDC   3, 79(5)  push return address
158: SUB   3, 6, 3  push return address
159: JLE   3, 13(5)  push return address
160: ST    0, 0(6)  push return address
172: HALT  0, 0, 0  program ends
