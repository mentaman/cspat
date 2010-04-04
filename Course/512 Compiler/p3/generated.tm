.DATA    7
.SDATA   "success"
0: LD    6, 0(5)  save stack pointer
1: LD    4, 0(5)  save frame pointer
3: LDC   0, 0(5)  load integer 0
4: LDA   6, -1(6)  push array index
5: ST    0, 0(6)  push array index
6: LDC   0, 1(5)  push array dimension
7: LDC   0, 0(5)  load 0 to ac
8: LD    1, 0(6)  pop index
9: LDA   6, 1(6)  pop index
10: LDC   2, 1(5)  load size of subarray
11: MUL   1, 1, 2  compute 0 dim
12: ADD   0, 0, 1  add result
13: LDA   1, 0(4)  load fp into ac2
14: LD    1, -3(1)  load local offset into ac2
15: ADD   0, 0, 1  compute final offset
16: LDA   6, -1(6)  push final offset
17: ST    0, 0(6)  push final offset
18: LDC   0, 1(5)  load integer 1
19: LD    1, 0(6)  pop final offset
20: LDA   6, 1(6)  pop final offset
21: ST    0, 0(1)  store value into array static data
22: LDC   0, 1(5)  load integer 1
23: LDA   6, -1(6)  push array index
24: ST    0, 0(6)  push array index
25: LDC   0, 1(5)  push array dimension
26: LDC   0, 0(5)  load 0 to ac
27: LD    1, 0(6)  pop index
28: LDA   6, 1(6)  pop index
29: LDC   2, 1(5)  load size of subarray
30: MUL   1, 1, 2  compute 0 dim
31: ADD   0, 0, 1  add result
32: LDA   1, 0(4)  load fp into ac2
33: LD    1, -3(1)  load local offset into ac2
34: ADD   0, 0, 1  compute final offset
35: LDA   6, -1(6)  push final offset
36: ST    0, 0(6)  push final offset
37: LDC   0, 2(5)  load integer 2
38: LD    1, 0(6)  pop final offset
39: LDA   6, 1(6)  pop final offset
40: ST    0, 0(1)  store value into array static data
41: LDC   0, 0(5)  load integer 0
42: LDA   6, -1(6)  push array index
43: ST    0, 0(6)  push array index
44: LDC   0, 1(5)  push array dimension
45: LDC   0, 0(5)  load 0 to ac
46: LD    1, 0(6)  pop index
47: LDA   6, 1(6)  pop index
48: LDC   2, 1(5)  load size of subarray
49: MUL   1, 1, 2  compute 0 dim
50: ADD   0, 0, 1  add result
51: LDA   1, 0(4)  load fp into ac2
52: LD    1, -3(1)  load local offset into ac2
53: ADD   0, 0, 1  compute final offset
54: LD    0, 0(0)  load data from array
55: OUT   0, 0, 0  write integer
56: OUTNL 0, 0, 0  write new line
57: LDC   0, 1(5)  load integer 1
58: LDA   6, -1(6)  push array index
59: ST    0, 0(6)  push array index
60: LDC   0, 1(5)  push array dimension
61: LDC   0, 0(5)  load 0 to ac
62: LD    1, 0(6)  pop index
63: LDA   6, 1(6)  pop index
64: LDC   2, 1(5)  load size of subarray
65: MUL   1, 1, 2  compute 0 dim
66: ADD   0, 0, 1  add result
67: LDA   1, 0(4)  load fp into ac2
68: LD    1, -3(1)  load local offset into ac2
69: ADD   0, 0, 1  compute final offset
70: LD    0, 0(0)  load data from array
71: OUT   0, 0, 0  write integer
72: OUTNL 0, 0, 0  write new line
73: LDC   0, 0(5)  load integer 0
74: LDA   6, -1(6)  push array index
75: ST    0, 0(6)  push array index
76: LDC   0, 1(5)  push array dimension
77: LDC   0, 0(5)  load 0 to ac
78: LD    1, 0(6)  pop index
79: LDA   6, 1(6)  pop index
80: LDC   2, 1(5)  load size of subarray
81: MUL   1, 1, 2  compute 0 dim
82: ADD   0, 0, 1  add result
83: LDA   1, 0(4)  load fp into ac2
84: LD    1, -3(1)  load local offset into ac2
85: ADD   0, 0, 1  compute final offset
86: LD    0, 0(0)  load data from array
87: LDA   6, -1(6)  push first child's value
88: ST    0, 0(6)  push first child's value
89: LDC   0, 1(5)  load integer 1
90: LDA   6, -1(6)  push array index
91: ST    0, 0(6)  push array index
92: LDC   0, 1(5)  push array dimension
93: LDC   0, 0(5)  load 0 to ac
94: LD    1, 0(6)  pop index
95: LDA   6, 1(6)  pop index
96: LDC   2, 1(5)  load size of subarray
97: MUL   1, 1, 2  compute 0 dim
98: ADD   0, 0, 1  add result
99: LDA   1, 0(4)  load fp into ac2
100: LD    1, -3(1)  load local offset into ac2
101: ADD   0, 0, 1  compute final offset
102: LD    0, 0(0)  load data from array
103: LD    1, 0(6)  pop first child's value
104: LDA   6, 1(6)  pop first child's value
105: ADD   0, 0, 1  add two children
106: OUT   0, 0, 0  write integer
107: OUTNL 0, 0, 0  write new line
108: LDC   0, 1(5)  load string offset 1
109: LDA   1, 0(4)  load fp into ac2
110: ST    0, -2(1)  store int/bool/string into stack
111: LD    0, -2(4)  load int/bool/string offset as return value
112: LD    1, -1(4)  load return address
113: LDA   6, 0(4)  change sp to fp + 1
114: LD    4, 0(6)  restore fp
115: LDA   6, 1(6)  restore fp
116: LDA   7, 0(1)  jump to the return address
117: LDA   6, -1(6)  push fp
118: ST    4, 0(6)  push fp
119: LDA   4, 0(6)  set fp to sp
123: LDA   6, -1(6)  push zero as return value
124: ST    5, 0(6)  push zero as return value
125: LDC   0, 1(5)  push array dimension
126: LDC   0, 0(5)  load 0 to ac
127: LDA   1, 0(4)  load fp into ac2
128: LD    1, 0(1)  load upper level fp into ac2
129: LD    1, -6(1)  load local offset into ac2
130: ADD   0, 0, 1  compute final offset
131: LDA   6, -1(6)  push array parameter
132: ST    0, 0(6)  push array parameter
133: LDA   6, 0(6)  preserve space for local vars
134: LDA   7, 3(5)  jump to procedure call
120: LDC   0, 135(5)  load return address into ac
121: LDA   6, -1(6)  push return address
122: ST    0, 0(6)  push return address
135: LDA   1, 0(4)  load fp into ac2
136: ST    0, -2(1)  store int/bool/string into stack
137: LD    0, -2(4)  load int/bool/string offset as return value
138: LD    1, -1(4)  load return address
139: LDA   6, 0(4)  change sp to fp + 1
140: LD    4, 0(6)  restore fp
141: LDA   6, 1(6)  restore fp
142: LDA   7, 0(1)  jump to the return address
2: LDA   7, 143(5)  jump to start of the program
143: LDA   6, -1(6)  push fp
144: ST    4, 0(6)  push fp
145: LDA   4, 0(6)  set fp to sp
149: LDA   6, -1(6)  push zero as return value
150: ST    5, 0(6)  push zero as return value
151: LDC   0, 3(5)  load array localVariableSize: 3
152: SUB   0, 6, 0  compute absolute address of the array
153: ST    0, -4(6)  store absolute array address
154: LDA   6, -4(6)  preserve space for local vars
155: LDA   7, 117(5)  jump to procedure call
146: LDC   0, 156(5)  load return address into ac
147: LDA   6, -1(6)  push return address
148: ST    0, 0(6)  push return address
156: LD    1, 0(0)  load str length into ac2
157: LDA   0, 1(0)  increase offset
158: LD    2, 0(0)  load char into ac3
159: OUTC   2, 2, 2  write char
160: LDA   1, -1(1)  decrease length of remaining string in ac2
161: JNE   1, -5(7)  continue print if not yet finish
162: OUTNL 0, 0, 0  write new line
163: HALT  0, 0, 0  program ends
