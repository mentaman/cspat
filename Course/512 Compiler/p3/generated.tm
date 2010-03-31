0: LD    6, 0(5)  save stack pointer
1: LDC   3, 1(5)  save data pointer
2: LDC   0, 111(5)  load char in ASCii: 111
3: LDA   6, -1(6)  push char into stack
4: ST    0, 0(6)  push char into stack
5: LDC   0, 97(5)  load char in ASCii: 97
6: LDA   6, -1(6)  push char into stack
7: ST    0, 0(6)  push char into stack
8: LDC   0, 105(5)  load char in ASCii: 105
9: LDA   6, -1(6)  push char into stack
10: ST    0, 0(6)  push char into stack
11: LDC   0, 120(5)  load char in ASCii: 120
12: LDA   6, -1(6)  push char into stack
13: ST    0, 0(6)  push char into stack
14: LDC   0, 4(5)  load string length 4
15: ST    0, 1(5)  store str length into static data
16: LDC   2, 2(5)  store datapointer into ac3
17: LD    1, 0(6)  pop char
18: LDA   6, 1(6)  pop char
19: ST    1, 0(2)  save char into static data
20: LDA   2, 1(2)  increase datapointer
21: LDA   0, -1(0)  decrease length of remaining string
22: JNE   0, -6(7)  continue print if not yet finish
23: LDC   0, 103(5)  load char in ASCii: 103
24: LDA   6, -1(6)  push char into stack
25: ST    0, 0(6)  push char into stack
26: LDC   0, 110(5)  load char in ASCii: 110
27: LDA   6, -1(6)  push char into stack
28: ST    0, 0(6)  push char into stack
29: LDC   0, 105(5)  load char in ASCii: 105
30: LDA   6, -1(6)  push char into stack
31: ST    0, 0(6)  push char into stack
32: LDC   0, 108(5)  load char in ASCii: 108
33: LDA   6, -1(6)  push char into stack
34: ST    0, 0(6)  push char into stack
35: LDC   0, 110(5)  load char in ASCii: 110
36: LDA   6, -1(6)  push char into stack
37: ST    0, 0(6)  push char into stack
38: LDC   0, 101(5)  load char in ASCii: 101
39: LDA   6, -1(6)  push char into stack
40: ST    0, 0(6)  push char into stack
41: LDC   0, 104(5)  load char in ASCii: 104
42: LDA   6, -1(6)  push char into stack
43: ST    0, 0(6)  push char into stack
44: LDC   0, 99(5)  load char in ASCii: 99
45: LDA   6, -1(6)  push char into stack
46: ST    0, 0(6)  push char into stack
47: LDC   0, 8(5)  load string length 8
48: ST    0, 6(5)  store str length into static data
49: LDC   2, 7(5)  store datapointer into ac3
50: LD    1, 0(6)  pop char
51: LDA   6, 1(6)  pop char
52: ST    1, 0(2)  save char into static data
53: LDA   2, 1(2)  increase datapointer
54: LDA   0, -1(0)  decrease length of remaining string
55: JNE   0, -6(7)  continue print if not yet finish
56: LDC   0, 1(5)  load booleantrue
58: LD    0, 1(5)  load str length from static data
59: LDC   2, 5(5)  load offset into ac3
60: LD    1, 0(2)  load char into ac2
61: LDA   6, -1(6)  push char
62: ST    1, 0(6)  push char
63: LDA   2, -1(2)  increase ac3
64: LDA   0, -1(0)  decrease str length
65: JNE   0, -6(7)  jump back if str not yet finish
66: LD    0, 1(5)  load str length from static data
67: LD    1, 0(6)  pop char
68: LDA   6, 1(6)  pop char
69: OUTC   1, 1, 1  write char
70: LDA   0, -1(0)  decrease length of remaining string
71: JNE   0, -5(7)  continue print if not yet finish
72: OUTNL 0, 0, 0  write new line
73: LD    0, 6(5)  load str length from static data
74: LDC   2, 14(5)  load offset into ac3
75: LD    1, 0(2)  load char into ac2
76: LDA   6, -1(6)  push char
77: ST    1, 0(6)  push char
78: LDA   2, -1(2)  increase ac3
79: LDA   0, -1(0)  decrease str length
80: JNE   0, -6(7)  jump back if str not yet finish
81: LD    0, 6(5)  load str length from static data
82: LD    1, 0(6)  pop char
83: LDA   6, 1(6)  pop char
84: OUTC   1, 1, 1  write char
85: LDA   0, -1(0)  decrease length of remaining string
86: JNE   0, -5(7)  continue print if not yet finish
87: OUTNL 0, 0, 0  write new line
57: JEQ   0, 30(7)  if expr not true
88: LDC   0, 101(5)  load char in ASCii: 101
89: LDA   6, -1(6)  push char into stack
90: ST    0, 0(6)  push char into stack
91: LDC   0, 103(5)  load char in ASCii: 103
92: LDA   6, -1(6)  push char into stack
93: ST    0, 0(6)  push char into stack
94: LDC   0, 110(5)  load char in ASCii: 110
95: LDA   6, -1(6)  push char into stack
96: ST    0, 0(6)  push char into stack
97: LDC   0, 97(5)  load char in ASCii: 97
98: LDA   6, -1(6)  push char into stack
99: ST    0, 0(6)  push char into stack
100: LDC   0, 104(5)  load char in ASCii: 104
101: LDA   6, -1(6)  push char into stack
102: ST    0, 0(6)  push char into stack
103: LDC   0, 99(5)  load char in ASCii: 99
104: LDA   6, -1(6)  push char into stack
105: ST    0, 0(6)  push char into stack
106: LDC   0, 6(5)  load string length 6
107: ST    0, 15(5)  store str length into static data
108: LDC   2, 16(5)  store datapointer into ac3
109: LD    1, 0(6)  pop char
110: LDA   6, 1(6)  pop char
111: ST    1, 0(2)  save char into static data
112: LDA   2, 1(2)  increase datapointer
113: LDA   0, -1(0)  decrease length of remaining string
114: JNE   0, -6(7)  continue print if not yet finish
115: LD    0, 15(5)  load str length from static data
116: LDC   2, 21(5)  load offset into ac3
117: LD    1, 0(2)  load char into ac2
118: LDA   6, -1(6)  push char
119: ST    1, 0(6)  push char
120: LDA   2, -1(2)  increase ac3
121: LDA   0, -1(0)  decrease str length
122: JNE   0, -6(7)  jump back if str not yet finish
123: LD    0, 15(5)  load str length from static data
124: LD    1, 0(6)  pop char
125: LDA   6, 1(6)  pop char
126: OUTC   1, 1, 1  write char
127: LDA   0, -1(0)  decrease length of remaining string
128: JNE   0, -5(7)  continue print if not yet finish
129: OUTNL 0, 0, 0  write new line
130: HALT  0, 0, 0  program ends
