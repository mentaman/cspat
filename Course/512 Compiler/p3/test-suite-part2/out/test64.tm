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
0: LDC   0, 81(5)  store array start address: 81
1: LDC   1, 80(5)  store array offset into ac2: 80
2: ST    0, 0(1)  store array offset
3: LD    6, 0(5)  save stack pointer
4: LD    4, 0(5)  save frame pointer
6: LDC   0, 38(5)  load array error str address
7: LD    1, 0(0)  load str length into ac2
8: JEQ   1, 5(7)  output nothing when empty
9: LDA   0, 1(0)  increase offset
10: LD    2, 0(0)  load char into ac3
11: OUTC   2, 2, 2  write char
12: LDA   1, -1(1)  decrease length of remaining string in ac2
13: JNE   1, -5(7)  continue print if not yet finish
14: OUTNL 0, 0, 0  emit newline
15: HALT  0, 0, 0  stop because of array error
16: LDC   0, 8(5)  load out of memory str address
17: LD    1, 0(0)  load str length into ac2
18: JEQ   1, 5(7)  output nothing when empty
19: LDA   0, 1(0)  increase offset
20: LD    2, 0(0)  load char into ac3
21: OUTC   2, 2, 2  write char
22: LDA   1, -1(1)  decrease length of remaining string in ac2
23: JNE   1, -5(7)  continue print if not yet finish
24: OUTNL 0, 0, 0  emit newline
25: HALT  0, 0, 0  stop because of out of memory error
26: LD    0, -3(4)  load str offset
27: LD    1, 0(0)  load str length
28: LDC   2, 0(5)  load 0 as initial result
29: LDA   6, -1(6)  push 0
30: LDC   3, 92(5)  push 0
31: SUB   3, 6, 3  push 0
32: JLE   3, 16(5)  push 0
33: ST    2, 0(6)  push 0
34: LD    2, 0(6)  pop result into AC3
35: LDA   6, 1(6)  pop result into AC3
36: LDC   3, 10(5)  load 10 into ac4
37: MUL   2, 2, 3  mul result with 10
38: LDA   6, -1(6)  push result
39: LDC   3, 92(5)  push result
40: SUB   3, 6, 3  push result
41: JLE   3, 16(5)  push result
42: ST    2, 0(6)  push result
43: LDA   0, 1(0)  increase str offset
44: LD    2, 0(0)  load char
45: LDC   3, 48(5)  load 48 into ac4
46: SUB   2, 2, 3  compute int value
47: LD    3, 0(6)  pop result into AC4
48: LDA   6, 1(6)  pop result into AC4
49: ADD   2, 2, 3  compute result
50: LDA   6, -1(6)  push result
51: LDC   3, 92(5)  push result
52: SUB   3, 6, 3  push result
53: JLE   3, 16(5)  push result
54: ST    2, 0(6)  push result
55: LDA   1, -1(1)  decrease str length
56: JNE   1, 34(5)  continue if str length
57: LD    0, 0(6)  pop result
58: LDA   6, 1(6)  pop result
59: ST    0, -2(4)  save to return value
60: LD    0, -2(4)  load int/bool/string offset as return value
61: LD    1, -1(4)  load return address
62: LDA   6, 0(4)  change sp to fp + 1
63: LD    4, 0(6)  restore fp
64: LDA   6, 1(6)  restore fp
65: LDA   7, 0(1)  jump to the return address
5: LDA   7, 66(5)  jump to start of the program
66: LDC   0, 1(5)  load integer 1
67: ST    0, 91(5)  store int/bool/string into previous used static data
68: LDC   0, 4(5)  load integer 4
69: ST    0, 79(5)  store int/bool/string into previous used static data
70: LD    0, 79(5)  load int/bool/str from static data
71: LDA   6, -1(6)  push array index
72: LDC   3, 92(5)  push array index
73: SUB   3, 6, 3  push array index
74: JLE   3, 16(5)  push array index
75: ST    0, 0(6)  push array index
76: LD    0, 91(5)  load int/bool/str from static data
77: LDA   6, -1(6)  push array index
78: LDC   3, 92(5)  push array index
79: SUB   3, 6, 3  push array index
80: JLE   3, 16(5)  push array index
81: ST    0, 0(6)  push array index
82: LDC   0, 2(5)  push array dimension
83: LDC   0, 0(5)  load 0 to ac
84: LD    1, 0(6)  pop index
85: LDA   6, 1(6)  pop index
86: JLT   1, 6(5)  jump if index less than 0
87: LDC   3, 2(5)  load array size
88: SUB   3, 3, 1  sub max size with index
89: JLE   3, 6(5)  jump if index greater than size - 1
90: LDC   2, 5(5)  load size of subarray
91: MUL   1, 1, 2  compute 0 dim
92: ADD   0, 0, 1  add result
93: LD    1, 0(6)  pop index
94: LDA   6, 1(6)  pop index
95: JLT   1, 6(5)  jump if index less than 0
96: LDC   3, 5(5)  load array size
97: SUB   3, 3, 1  sub max size with index
98: JLE   3, 6(5)  jump if index greater than size - 1
99: LDC   2, 1(5)  load size of subarray
100: MUL   1, 1, 2  compute 1 dim
101: ADD   0, 0, 1  add result
102: LD    1, 80(5)  load offset into ac2
103: ADD   0, 0, 1  compute final offset
104: LDA   6, -1(6)  push final offset
105: LDC   3, 92(5)  push final offset
106: SUB   3, 6, 3  push final offset
107: JLE   3, 16(5)  push final offset
108: ST    0, 0(6)  push final offset
109: LDC   0, 3(5)  load integer 3
110: LD    1, 0(6)  pop final offset
111: LDA   6, 1(6)  pop final offset
112: ST    0, 0(1)  store value into array static data
113: LD    0, 79(5)  load int/bool/str from static data
114: LDA   6, -1(6)  push array index
115: LDC   3, 92(5)  push array index
116: SUB   3, 6, 3  push array index
117: JLE   3, 16(5)  push array index
118: ST    0, 0(6)  push array index
119: LD    0, 91(5)  load int/bool/str from static data
120: LDA   6, -1(6)  push array index
121: LDC   3, 92(5)  push array index
122: SUB   3, 6, 3  push array index
123: JLE   3, 16(5)  push array index
124: ST    0, 0(6)  push array index
125: LDC   0, 2(5)  push array dimension
126: LDC   0, 0(5)  load 0 to ac
127: LD    1, 0(6)  pop index
128: LDA   6, 1(6)  pop index
129: JLT   1, 6(5)  jump if index less than 0
130: LDC   3, 2(5)  load array size
131: SUB   3, 3, 1  sub max size with index
132: JLE   3, 6(5)  jump if index greater than size - 1
133: LDC   2, 5(5)  load size of subarray
134: MUL   1, 1, 2  compute 0 dim
135: ADD   0, 0, 1  add result
136: LD    1, 0(6)  pop index
137: LDA   6, 1(6)  pop index
138: JLT   1, 6(5)  jump if index less than 0
139: LDC   3, 5(5)  load array size
140: SUB   3, 3, 1  sub max size with index
141: JLE   3, 6(5)  jump if index greater than size - 1
142: LDC   2, 1(5)  load size of subarray
143: MUL   1, 1, 2  compute 1 dim
144: ADD   0, 0, 1  add result
145: LD    1, 80(5)  load global offset into ac2
146: ADD   0, 0, 1  compute final offset
147: LD    0, 0(0)  load data from array
148: OUT   0, 0, 0  write integer
149: OUTNL 0, 0, 0  write new line
150: LD    0, 91(5)  load int/bool/str from static data
151: OUT   0, 0, 0  write integer
152: OUTNL 0, 0, 0  write new line
153: LD    0, 79(5)  load int/bool/str from static data
154: OUT   0, 0, 0  write integer
155: OUTNL 0, 0, 0  write new line
156: HALT  0, 0, 0  program ends
