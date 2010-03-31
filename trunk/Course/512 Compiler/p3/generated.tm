0: LD    6, 0(5)  save stack pointer
1: LDC   3, 1(5)  save data pointer
2: LDC   0, 0(5)  load integer 0
3: LDA   6, -1(6)  push array index
4: ST    0, 0(6)  push array index
5: LDC   0, 0(5)  load integer 0
6: LDA   6, -1(6)  push array index
7: ST    0, 0(6)  push array index
8: LDC   0, 2(5)  push array dimension
9: LDC   0, 0(5)  load 0 to ac
10: LD    1, 0(6)  pop index
11: LDA   6, 1(6)  pop index
12: LDC   2, 4(5)  load size of subarray
13: MUL   1, 1, 2  compute 0 dim
14: ADD   0, 0, 1  add result
15: LD    1, 0(6)  pop index
16: LDA   6, 1(6)  pop index
17: LDC   2, 1(5)  load size of subarray
18: MUL   1, 1, 2  compute 1 dim
19: ADD   0, 0, 1  add result
20: LDC   1, 1(5)  load offset into ac2
21: ADD   0, 0, 1  compute final offset
22: LDA   6, -1(6)  push final offset
23: ST    0, 0(6)  push final offset
24: LDC   0, 1000(5)  load integer 1000
25: LD    1, 0(6)  pop final offset
26: LDA   6, 1(6)  pop final offset
27: ST    0, 0(1)  store value into static data
28: LDC   0, 1(5)  load integer 1
29: LDA   6, -1(6)  push array index
30: ST    0, 0(6)  push array index
31: LDC   0, 0(5)  load integer 0
32: LDA   6, -1(6)  push array index
33: ST    0, 0(6)  push array index
34: LDC   0, 2(5)  push array dimension
35: LDC   0, 0(5)  load 0 to ac
36: LD    1, 0(6)  pop index
37: LDA   6, 1(6)  pop index
38: LDC   2, 4(5)  load size of subarray
39: MUL   1, 1, 2  compute 0 dim
40: ADD   0, 0, 1  add result
41: LD    1, 0(6)  pop index
42: LDA   6, 1(6)  pop index
43: LDC   2, 1(5)  load size of subarray
44: MUL   1, 1, 2  compute 1 dim
45: ADD   0, 0, 1  add result
46: LDC   1, 1(5)  load offset into ac2
47: ADD   0, 0, 1  compute final offset
48: LDA   6, -1(6)  push final offset
49: ST    0, 0(6)  push final offset
50: LDC   0, 1001(5)  load integer 1001
51: LD    1, 0(6)  pop final offset
52: LDA   6, 1(6)  pop final offset
53: ST    0, 0(1)  store value into static data
54: LDC   0, 0(5)  load integer 0
55: LDA   6, -1(6)  push array index
56: ST    0, 0(6)  push array index
57: LDC   0, 1(5)  load integer 1
58: LDA   6, -1(6)  push array index
59: ST    0, 0(6)  push array index
60: LDC   0, 2(5)  push array dimension
61: LDC   0, 0(5)  load 0 to ac
62: LD    1, 0(6)  pop index
63: LDA   6, 1(6)  pop index
64: LDC   2, 4(5)  load size of subarray
65: MUL   1, 1, 2  compute 0 dim
66: ADD   0, 0, 1  add result
67: LD    1, 0(6)  pop index
68: LDA   6, 1(6)  pop index
69: LDC   2, 1(5)  load size of subarray
70: MUL   1, 1, 2  compute 1 dim
71: ADD   0, 0, 1  add result
72: LDC   1, 1(5)  load offset into ac2
73: ADD   0, 0, 1  compute final offset
74: LDA   6, -1(6)  push final offset
75: ST    0, 0(6)  push final offset
76: LDC   0, 1002(5)  load integer 1002
77: LD    1, 0(6)  pop final offset
78: LDA   6, 1(6)  pop final offset
79: ST    0, 0(1)  store value into static data
80: LDC   0, 2(5)  load integer 2
81: LDA   6, -1(6)  push array index
82: ST    0, 0(6)  push array index
83: LDC   0, 1(5)  load integer 1
84: LDA   6, -1(6)  push array index
85: ST    0, 0(6)  push array index
86: LDC   0, 2(5)  push array dimension
87: LDC   0, 0(5)  load 0 to ac
88: LD    1, 0(6)  pop index
89: LDA   6, 1(6)  pop index
90: LDC   2, 4(5)  load size of subarray
91: MUL   1, 1, 2  compute 0 dim
92: ADD   0, 0, 1  add result
93: LD    1, 0(6)  pop index
94: LDA   6, 1(6)  pop index
95: LDC   2, 1(5)  load size of subarray
96: MUL   1, 1, 2  compute 1 dim
97: ADD   0, 0, 1  add result
98: LDC   1, 1(5)  load offset into ac2
99: ADD   0, 0, 1  compute final offset
100: LDA   6, -1(6)  push final offset
101: ST    0, 0(6)  push final offset
102: LDC   0, 2(5)  load integer 2
103: LD    1, 0(6)  pop final offset
104: LDA   6, 1(6)  pop final offset
105: ST    0, 0(1)  store value into static data
106: LDC   0, 100(5)  load integer 100
107: ST    0, 13(5)  store int into static data
108: LD    0, 13(5)  load from static data
109: OUT   0, 0, 0  write integer
110: OUTNL 0, 0, 0  write new line
111: LDC   0, 1(5)  load booleantrue
112: ST    0, 14(5)  store bool into static data
113: LD    0, 14(5)  load from static data
115: LDC   0, 115(5)  load char in ASCii: 115
116: LDA   6, -1(6)  push char into stack
117: ST    0, 0(6)  push char into stack
118: LDC   0, 101(5)  load char in ASCii: 101
119: LDA   6, -1(6)  push char into stack
120: ST    0, 0(6)  push char into stack
121: LDC   0, 121(5)  load char in ASCii: 121
122: LDA   6, -1(6)  push char into stack
123: ST    0, 0(6)  push char into stack
124: LDC   0, 3(5)  load string length 3
125: LD    1, 0(6)  pop char
126: LDA   6, 1(6)  pop char
127: OUTC   1, 1, 1  write char
128: LDA   0, -1(0)  decrease length of remaining string
129: JNE   0, -5(7)  continue print if not yet finish
130: OUTNL 0, 0, 0  write new line
114: JEQ   0, 17(7)  if expr not true
132: LDC   0, 111(5)  load char in ASCii: 111
133: LDA   6, -1(6)  push char into stack
134: ST    0, 0(6)  push char into stack
135: LDC   0, 110(5)  load char in ASCii: 110
136: LDA   6, -1(6)  push char into stack
137: ST    0, 0(6)  push char into stack
138: LDC   0, 2(5)  load string length 2
139: LD    1, 0(6)  pop char
140: LDA   6, 1(6)  pop char
141: OUTC   1, 1, 1  write char
142: LDA   0, -1(0)  decrease length of remaining string
143: JNE   0, -5(7)  continue print if not yet finish
144: OUTNL 0, 0, 0  write new line
131: LDA   7, 13(7)  Jump to the end of if
145: HALT  0, 0, 0  program ends
