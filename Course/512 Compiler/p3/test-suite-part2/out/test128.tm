.DATA    6
.SDATA   "fourth"
.DATA    18
.SDATA   "array index error!"
.DATA    11
.SDATA   "after break"
.DATA    14
.SDATA   "should not see"
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
0: LDC   0, 111(5)  store array start address: 111
1: LDC   1, 110(5)  store array offset into ac2: 110
2: ST    0, 0(1)  store array offset
3: LDC   0, 114(5)  store array start address: 114
4: LDC   1, 113(5)  store array offset into ac2: 113
5: ST    0, 0(1)  store array offset
6: LD    6, 0(5)  save stack pointer
7: LD    4, 0(5)  save frame pointer
9: LDC   0, 8(5)  load array error str address
10: LD    1, 0(0)  load str length into ac2
11: JEQ   1, 5(7)  output nothing when empty
12: LDA   0, 1(0)  increase offset
13: LD    2, 0(0)  load char into ac3
14: OUTC   2, 2, 2  write char
15: LDA   1, -1(1)  decrease length of remaining string in ac2
16: JNE   1, -5(7)  continue print if not yet finish
17: OUTNL 0, 0, 0  emit newline
18: HALT  0, 0, 0  stop because of array error
19: LDC   0, 78(5)  load out of memory str address
20: LD    1, 0(0)  load str length into ac2
21: JEQ   1, 5(7)  output nothing when empty
22: LDA   0, 1(0)  increase offset
23: LD    2, 0(0)  load char into ac3
24: OUTC   2, 2, 2  write char
25: LDA   1, -1(1)  decrease length of remaining string in ac2
26: JNE   1, -5(7)  continue print if not yet finish
27: OUTNL 0, 0, 0  emit newline
28: HALT  0, 0, 0  stop because of out of memory error
29: LD    0, -3(4)  load str offset
30: LD    1, 0(0)  load str length
31: LDC   2, 0(5)  load 0 as initial result
32: LDA   6, -1(6)  push 0
33: LDC   3, 116(5)  push 0
34: SUB   3, 6, 3  push 0
35: JLE   3, 19(5)  push 0
36: ST    2, 0(6)  push 0
37: LD    2, 0(6)  pop result into AC3
38: LDA   6, 1(6)  pop result into AC3
39: LDC   3, 10(5)  load 10 into ac4
40: MUL   2, 2, 3  mul result with 10
41: LDA   6, -1(6)  push result
42: LDC   3, 116(5)  push result
43: SUB   3, 6, 3  push result
44: JLE   3, 19(5)  push result
45: ST    2, 0(6)  push result
46: LDA   0, 1(0)  increase str offset
47: LD    2, 0(0)  load char
48: LDC   3, 48(5)  load 48 into ac4
49: SUB   2, 2, 3  compute int value
50: LD    3, 0(6)  pop result into AC4
51: LDA   6, 1(6)  pop result into AC4
52: ADD   2, 2, 3  compute result
53: LDA   6, -1(6)  push result
54: LDC   3, 116(5)  push result
55: SUB   3, 6, 3  push result
56: JLE   3, 19(5)  push result
57: ST    2, 0(6)  push result
58: LDA   1, -1(1)  decrease str length
59: JNE   1, 37(5)  continue if str length
60: LD    0, 0(6)  pop result
61: LDA   6, 1(6)  pop result
62: ST    0, -2(4)  save to return value
63: LD    0, -2(4)  load int/bool/string offset as return value
64: LD    1, -1(4)  load return address
65: LDA   6, 0(4)  change sp to fp + 1
66: LD    4, 0(6)  restore fp
67: LDA   6, 1(6)  restore fp
68: LDA   7, 0(1)  jump to the return address
8: LDA   7, 69(5)  jump to start of the program
69: LDC   0, 0(5)  load integer 0
70: LDA   6, -1(6)  push array index
71: LDC   3, 116(5)  push array index
72: SUB   3, 6, 3  push array index
73: JLE   3, 19(5)  push array index
74: ST    0, 0(6)  push array index
75: LDC   0, 1(5)  push array dimension
76: LDC   0, 0(5)  load 0 to ac
77: LD    1, 0(6)  pop index
78: LDA   6, 1(6)  pop index
79: JLT   1, 9(5)  jump if index less than 0
80: LDC   3, 2(5)  load array size
81: SUB   3, 3, 1  sub max size with index
82: JLE   3, 9(5)  jump if index greater than size - 1
83: LDC   2, 1(5)  load size of subarray
84: MUL   1, 1, 2  compute 0 dim
85: ADD   0, 0, 1  add result
86: LD    1, 110(5)  load offset into ac2
87: ADD   0, 0, 1  compute final offset
88: LDA   6, -1(6)  push final offset
89: LDC   3, 116(5)  push final offset
90: SUB   3, 6, 3  push final offset
91: JLE   3, 19(5)  push final offset
92: ST    0, 0(6)  push final offset
93: LDC   0, 1(5)  load integer 1
94: LD    1, 0(6)  pop final offset
95: LDA   6, 1(6)  pop final offset
96: ST    0, 0(1)  store value into array static data
97: LDC   0, 0(5)  load integer 0
98: LDA   6, -1(6)  push array index
99: LDC   3, 116(5)  push array index
100: SUB   3, 6, 3  push array index
101: JLE   3, 19(5)  push array index
102: ST    0, 0(6)  push array index
103: LDC   0, 1(5)  push array dimension
104: LDC   0, 0(5)  load 0 to ac
105: LD    1, 0(6)  pop index
106: LDA   6, 1(6)  pop index
107: JLT   1, 9(5)  jump if index less than 0
108: LDC   3, 2(5)  load array size
109: SUB   3, 3, 1  sub max size with index
110: JLE   3, 9(5)  jump if index greater than size - 1
111: LDC   2, 1(5)  load size of subarray
112: MUL   1, 1, 2  compute 0 dim
113: ADD   0, 0, 1  add result
114: LD    1, 113(5)  load offset into ac2
115: ADD   0, 0, 1  compute final offset
116: LDA   6, -1(6)  push final offset
117: LDC   3, 116(5)  push final offset
118: SUB   3, 6, 3  push final offset
119: JLE   3, 19(5)  push final offset
120: ST    0, 0(6)  push final offset
121: LDC   0, 0(5)  load integer 0
122: LDA   6, -1(6)  push array index
123: LDC   3, 116(5)  push array index
124: SUB   3, 6, 3  push array index
125: JLE   3, 19(5)  push array index
126: ST    0, 0(6)  push array index
127: LDC   0, 1(5)  push array dimension
128: LDC   0, 0(5)  load 0 to ac
129: LD    1, 0(6)  pop index
130: LDA   6, 1(6)  pop index
131: JLT   1, 9(5)  jump if index less than 0
132: LDC   3, 2(5)  load array size
133: SUB   3, 3, 1  sub max size with index
134: JLE   3, 9(5)  jump if index greater than size - 1
135: LDC   2, 1(5)  load size of subarray
136: MUL   1, 1, 2  compute 0 dim
137: ADD   0, 0, 1  add result
138: LD    1, 110(5)  load global offset into ac2
139: ADD   0, 0, 1  compute final offset
140: LD    0, 0(0)  load data from array
141: LD    1, 0(6)  pop final offset
142: LDA   6, 1(6)  pop final offset
143: ST    0, 0(1)  store value into array static data
144: LDC   0, 0(5)  load integer 0
145: LDA   6, -1(6)  push array index
146: LDC   3, 116(5)  push array index
147: SUB   3, 6, 3  push array index
148: JLE   3, 19(5)  push array index
149: ST    0, 0(6)  push array index
150: LDC   0, 1(5)  push array dimension
151: LDC   0, 0(5)  load 0 to ac
152: LD    1, 0(6)  pop index
153: LDA   6, 1(6)  pop index
154: JLT   1, 9(5)  jump if index less than 0
155: LDC   3, 2(5)  load array size
156: SUB   3, 3, 1  sub max size with index
157: JLE   3, 9(5)  jump if index greater than size - 1
158: LDC   2, 1(5)  load size of subarray
159: MUL   1, 1, 2  compute 0 dim
160: ADD   0, 0, 1  add result
161: LD    1, 113(5)  load global offset into ac2
162: ADD   0, 0, 1  compute final offset
163: LD    0, 0(0)  load data from array
164: OUT   0, 0, 0  write integer
165: OUTNL 0, 0, 0  write new line
166: HALT  0, 0, 0  program ends
