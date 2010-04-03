0: LD    6, 0(5)  save stack pointer
1: LD    4, 0(5)  save frame pointer
3: LDA   1, 0(4)  load fp into ac2
4: LD    0, -3(1)  load int/bool from stack
5: LDA   6, -1(6)  push first child's value
6: ST    0, 0(6)  push first child's value
7: LDC   0, 1(5)  load integer 1
8: LD    1, 0(6)  pop first child's value
9: LDA   6, 1(6)  pop first child's value
10: ADD   0, 0, 1  add two children
11: LDA   1, 0(4)  load fp into ac2
12: ST    0, -3(1)  store int/bool into stack
13: LDC   0, 32(5)  load char in ASCii: 32
14: LDA   6, -1(6)  push char into stack
15: ST    0, 0(6)  push char into stack
16: LDC   0, 61(5)  load char in ASCii: 61
17: LDA   6, -1(6)  push char into stack
18: ST    0, 0(6)  push char into stack
19: LDC   0, 32(5)  load char in ASCii: 32
20: LDA   6, -1(6)  push char into stack
21: ST    0, 0(6)  push char into stack
22: LDC   0, 49(5)  load char in ASCii: 49
23: LDA   6, -1(6)  push char into stack
24: ST    0, 0(6)  push char into stack
25: LDC   0, 32(5)  load char in ASCii: 32
26: LDA   6, -1(6)  push char into stack
27: ST    0, 0(6)  push char into stack
28: LDC   0, 43(5)  load char in ASCii: 43
29: LDA   6, -1(6)  push char into stack
30: ST    0, 0(6)  push char into stack
31: LDC   0, 32(5)  load char in ASCii: 32
32: LDA   6, -1(6)  push char into stack
33: ST    0, 0(6)  push char into stack
34: LDC   0, 105(5)  load char in ASCii: 105
35: LDA   6, -1(6)  push char into stack
36: ST    0, 0(6)  push char into stack
37: LDC   0, 8(5)  load string length 8
38: LD    1, 0(6)  pop char
39: LDA   6, 1(6)  pop char
40: OUTC   1, 1, 1  write char
41: LDA   0, -1(0)  decrease length of remaining string
42: JNE   0, -5(7)  continue print if not yet finish
43: LDA   1, 0(4)  load fp into ac2
44: LD    0, -3(1)  load int/bool from stack
45: OUT   0, 0, 0  write integer
46: OUTNL 0, 0, 0  write new line
47: LDC   0, 105(5)  load char in ASCii: 105
48: LDA   6, -1(6)  push char into stack
49: ST    0, 0(6)  push char into stack
50: LDC   0, 104(5)  load char in ASCii: 104
51: LDA   6, -1(6)  push char into stack
52: ST    0, 0(6)  push char into stack
53: LDC   0, 2(5)  load string length 2
54: ST    0, 1(5)  store str length into static data
55: LDC   2, 2(5)  store datapointer into ac3
56: LD    1, 0(6)  pop char
57: LDA   6, 1(6)  pop char
58: ST    1, 0(2)  save char into static data
59: LDA   2, 1(2)  increase datapointer
60: LDA   0, -1(0)  decrease length of remaining string
61: JNE   0, -6(7)  continue print if not yet finish
62: LDA   1, 0(4)  load fp into ac2
63: LDC   0, 1(5)  load string data offset into ac
64: ST    0, -2(1)  store string offset into stack
65: LDC   0, 5(5)  load integer 5
66: LDA   1, 0(4)  load fp into ac2
67: ST    0, -4(1)  store int/bool into stack
68: LDA   1, 0(4)  load fp into ac2
69: LD    0, -4(1)  load int/bool from stack
70: OUT   0, 0, 0  write integer
71: OUTNL 0, 0, 0  write new line
72: LD    1, -1(4)  load return address
73: LDA   6, 0(4)  change sp to fp + 1
74: LD    4, 0(6)  restore fp
75: LDA   6, 1(6)  restore fp
76: LDA   7, 0(1)  jump to the return address
2: LDA   7, 77(5)  jump to start of the program
77: LDC   0, 116(5)  load char in ASCii: 116
78: LDA   6, -1(6)  push char into stack
79: ST    0, 0(6)  push char into stack
80: LDC   0, 114(5)  load char in ASCii: 114
81: LDA   6, -1(6)  push char into stack
82: ST    0, 0(6)  push char into stack
83: LDC   0, 97(5)  load char in ASCii: 97
84: LDA   6, -1(6)  push char into stack
85: ST    0, 0(6)  push char into stack
86: LDC   0, 116(5)  load char in ASCii: 116
87: LDA   6, -1(6)  push char into stack
88: ST    0, 0(6)  push char into stack
89: LDC   0, 115(5)  load char in ASCii: 115
90: LDA   6, -1(6)  push char into stack
91: ST    0, 0(6)  push char into stack
92: LDC   0, 5(5)  load string length 5
93: LD    1, 0(6)  pop char
94: LDA   6, 1(6)  pop char
95: OUTC   1, 1, 1  write char
96: LDA   0, -1(0)  decrease length of remaining string
97: JNE   0, -5(7)  continue print if not yet finish
98: OUTNL 0, 0, 0  write new line
99: LDC   0, 5(5)  load integer 5
100: ST    0, 4(5)  store int/bool into static data
101: LDA   6, -1(6)  push fp
102: ST    4, 0(6)  push fp
103: LDA   4, 0(6)  set fp to sp
107: LDA   6, -1(6)  push zero as return value
108: ST    5, 0(6)  push zero as return value
109: LD    0, 4(5)  load int/bool from static data
110: LDA   6, -1(6)  push int/bool parameter
111: ST    0, 0(6)  push int/bool parameter
112: LDA   7, 3(5)  jump to procedure call
104: LDC   0, 113(5)  load return address into ac
105: LDA   6, -1(6)  push return address
106: ST    0, 0(6)  push return address
113: LDA   3, 0(0)  store str address into ac4 from ac
114: LD    0, 0(3)  load str length from address stored in ac
115: ADD   2, 0, 3  load str offset into ac3
116: LD    1, 0(2)  load char into ac2
117: LDA   6, -1(6)  push char
118: ST    1, 0(6)  push char
119: LDA   2, -1(2)  decrease ac3
120: LDA   0, -1(0)  decrease str length
121: JNE   0, -6(7)  jump back if str not yet finish
122: LD    0, 0(3)  load str length from address stored in ac3
123: LD    1, 0(6)  pop char
124: LDA   6, 1(6)  pop char
125: OUTC   1, 1, 1  write char
126: LDA   0, -1(0)  decrease length of remaining string
127: JNE   0, -5(7)  continue print if not yet finish
128: OUTNL 0, 0, 0  write new line
129: LDC   0, 100(5)  load char in ASCii: 100
130: LDA   6, -1(6)  push char into stack
131: ST    0, 0(6)  push char into stack
132: LDC   0, 110(5)  load char in ASCii: 110
133: LDA   6, -1(6)  push char into stack
134: ST    0, 0(6)  push char into stack
135: LDC   0, 101(5)  load char in ASCii: 101
136: LDA   6, -1(6)  push char into stack
137: ST    0, 0(6)  push char into stack
138: LDC   0, 3(5)  load string length 3
139: LD    1, 0(6)  pop char
140: LDA   6, 1(6)  pop char
141: OUTC   1, 1, 1  write char
142: LDA   0, -1(0)  decrease length of remaining string
143: JNE   0, -5(7)  continue print if not yet finish
144: OUTNL 0, 0, 0  write new line
145: HALT  0, 0, 0  program ends
