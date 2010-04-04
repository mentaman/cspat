.DATA    7
.SDATA   "success"
0: LDC   0, 10(5)  store array start address: 10
1: LDC   1, 9(5)  store array offset into ac29
2: ST    0, 0(1)  store array offset
3: LD    6, 0(5)  save stack pointer
4: LD    4, 0(5)  save frame pointer
6: LDC   0, 0(5)  load integer 0
7: LDA   6, -1(6)  push array index
8: ST    0, 0(6)  push array index
9: LDC   0, 1(5)  push array dimension
10: LDC   0, 0(5)  load 0 to ac
11: LD    1, 0(6)  pop index
12: LDA   6, 1(6)  pop index
13: LDC   2, 1(5)  load size of subarray
14: MUL   1, 1, 2  compute 0 dim
15: ADD   0, 0, 1  add result
16: LDA   1, 0(4)  load fp into ac2
17: LD    1, -3(1)  load local offset into ac2
18: ADD   0, 0, 1  compute final offset
19: LDA   6, -1(6)  push final offset
20: ST    0, 0(6)  push final offset
21: LDC   0, 1(5)  load integer 1
22: LD    1, 0(6)  pop final offset
23: LDA   6, 1(6)  pop final offset
24: ST    0, 0(1)  store value into array static data
25: LDC   0, 1(5)  load integer 1
26: LDA   6, -1(6)  push array index
27: ST    0, 0(6)  push array index
28: LDC   0, 1(5)  push array dimension
29: LDC   0, 0(5)  load 0 to ac
30: LD    1, 0(6)  pop index
31: LDA   6, 1(6)  pop index
32: LDC   2, 1(5)  load size of subarray
33: MUL   1, 1, 2  compute 0 dim
34: ADD   0, 0, 1  add result
35: LDA   1, 0(4)  load fp into ac2
36: LD    1, -3(1)  load local offset into ac2
37: ADD   0, 0, 1  compute final offset
38: LDA   6, -1(6)  push final offset
39: ST    0, 0(6)  push final offset
40: LDC   0, 2(5)  load integer 2
41: LD    1, 0(6)  pop final offset
42: LDA   6, 1(6)  pop final offset
43: ST    0, 0(1)  store value into array static data
44: LDC   0, 0(5)  load integer 0
45: LDA   6, -1(6)  push array index
46: ST    0, 0(6)  push array index
47: LDC   0, 1(5)  push array dimension
48: LDC   0, 0(5)  load 0 to ac
49: LD    1, 0(6)  pop index
50: LDA   6, 1(6)  pop index
51: LDC   2, 1(5)  load size of subarray
52: MUL   1, 1, 2  compute 0 dim
53: ADD   0, 0, 1  add result
54: LDA   1, 0(4)  load fp into ac2
55: LD    1, -3(1)  load local offset into ac2
56: ADD   0, 0, 1  compute final offset
57: LD    0, 0(0)  load data from array
58: OUT   0, 0, 0  write integer
59: OUTNL 0, 0, 0  write new line
60: LDC   0, 1(5)  load integer 1
61: LDA   6, -1(6)  push array index
62: ST    0, 0(6)  push array index
63: LDC   0, 1(5)  push array dimension
64: LDC   0, 0(5)  load 0 to ac
65: LD    1, 0(6)  pop index
66: LDA   6, 1(6)  pop index
67: LDC   2, 1(5)  load size of subarray
68: MUL   1, 1, 2  compute 0 dim
69: ADD   0, 0, 1  add result
70: LDA   1, 0(4)  load fp into ac2
71: LD    1, -3(1)  load local offset into ac2
72: ADD   0, 0, 1  compute final offset
73: LD    0, 0(0)  load data from array
74: OUT   0, 0, 0  write integer
75: OUTNL 0, 0, 0  write new line
76: LDC   0, 0(5)  load integer 0
77: LDA   6, -1(6)  push array index
78: ST    0, 0(6)  push array index
79: LDC   0, 1(5)  push array dimension
80: LDC   0, 0(5)  load 0 to ac
81: LD    1, 0(6)  pop index
82: LDA   6, 1(6)  pop index
83: LDC   2, 1(5)  load size of subarray
84: MUL   1, 1, 2  compute 0 dim
85: ADD   0, 0, 1  add result
86: LDA   1, 0(4)  load fp into ac2
87: LD    1, -3(1)  load local offset into ac2
88: ADD   0, 0, 1  compute final offset
89: LD    0, 0(0)  load data from array
90: LDA   6, -1(6)  push first child's value
91: ST    0, 0(6)  push first child's value
92: LDC   0, 1(5)  load integer 1
93: LDA   6, -1(6)  push array index
94: ST    0, 0(6)  push array index
95: LDC   0, 1(5)  push array dimension
96: LDC   0, 0(5)  load 0 to ac
97: LD    1, 0(6)  pop index
98: LDA   6, 1(6)  pop index
99: LDC   2, 1(5)  load size of subarray
100: MUL   1, 1, 2  compute 0 dim
101: ADD   0, 0, 1  add result
102: LDA   1, 0(4)  load fp into ac2
103: LD    1, -3(1)  load local offset into ac2
104: ADD   0, 0, 1  compute final offset
105: LD    0, 0(0)  load data from array
106: LD    1, 0(6)  pop first child's value
107: LDA   6, 1(6)  pop first child's value
108: ADD   0, 0, 1  add two children
109: OUT   0, 0, 0  write integer
110: OUTNL 0, 0, 0  write new line
111: LDC   0, 1(5)  load string offset 1
112: LDA   1, 0(4)  load fp into ac2
113: ST    0, -2(1)  store int/bool/string into stack
114: LD    0, -2(4)  load int/bool/string offset as return value
115: LD    1, -1(4)  load return address
116: LDA   6, 0(4)  change sp to fp + 1
117: LD    4, 0(6)  restore fp
118: LDA   6, 1(6)  restore fp
119: LDA   7, 0(1)  jump to the return address
120: LDA   6, -1(6)  push fp
121: ST    4, 0(6)  push fp
122: LDA   4, 0(6)  set fp to sp
126: LDA   6, -1(6)  push zero as return value
127: ST    5, 0(6)  push zero as return value
128: LDC   0, 1(5)  push array dimension
129: LDC   0, 0(5)  load 0 to ac
130: LDA   1, 0(4)  load fp into ac2
131: LD    1, 0(1)  load upper level fp into ac2
132: LD    1, -3(1)  load local offset into ac2
133: ADD   0, 0, 1  compute final offset
134: LDA   6, -1(6)  push array parameter
135: ST    0, 0(6)  push array parameter
136: LDA   6, 0(6)  preserve space for local vars
137: LDA   7, 6(5)  jump to procedure call
123: LDC   0, 138(5)  load return address into ac
124: LDA   6, -1(6)  push return address
125: ST    0, 0(6)  push return address
138: LDA   1, 0(4)  load fp into ac2
139: ST    0, -2(1)  store int/bool/string into stack
140: LD    0, -2(4)  load int/bool/string offset as return value
141: LD    1, -1(4)  load return address
142: LDA   6, 0(4)  change sp to fp + 1
143: LD    4, 0(6)  restore fp
144: LDA   6, 1(6)  restore fp
145: LDA   7, 0(1)  jump to the return address
5: LDA   7, 146(5)  jump to start of the program
146: LDA   6, -1(6)  push fp
147: ST    4, 0(6)  push fp
148: LDA   4, 0(6)  set fp to sp
152: LDA   6, -1(6)  push zero as return value
153: ST    5, 0(6)  push zero as return value
154: LDC   0, 1(5)  load integer 1
155: LDA   6, -1(6)  push array index
156: ST    0, 0(6)  push array index
157: LDC   0, 2(5)  push array dimension
158: LDC   0, 0(5)  load 0 to ac
159: LD    1, 0(6)  pop index
160: LDA   6, 1(6)  pop index
161: LDC   2, 3(5)  load size of subarray
162: MUL   1, 1, 2  compute 0 dim
163: ADD   0, 0, 1  add result
164: LD    1, 9(5)  load global offset into ac2
165: ADD   0, 0, 1  compute final offset
166: LDA   6, -1(6)  push array parameter
167: ST    0, 0(6)  push array parameter
168: LDA   6, 0(6)  preserve space for local vars
169: LDA   7, 120(5)  jump to procedure call
149: LDC   0, 170(5)  load return address into ac
150: LDA   6, -1(6)  push return address
151: ST    0, 0(6)  push return address
170: LD    1, 0(0)  load str length into ac2
171: LDA   0, 1(0)  increase offset
172: LD    2, 0(0)  load char into ac3
173: OUTC   2, 2, 2  write char
174: LDA   1, -1(1)  decrease length of remaining string in ac2
175: JNE   1, -5(7)  continue print if not yet finish
176: OUTNL 0, 0, 0  write new line
177: HALT  0, 0, 0  program ends
