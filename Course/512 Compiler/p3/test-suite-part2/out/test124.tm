.DATA    2
.SDATA   "Hi"
.DATA    3
.SDATA   "+10"
.DATA    18
.SDATA   "array index error!"
.DATA    5
.SDATA   "There"
.DATA    0
.SDATA   ""
.DATA    14
.SDATA   "should not see"
.DATA    15
.SDATA   "m > 4 || m <= 2"
.DATA    5
.SDATA   "first"
.DATA    1
.SDATA   " "
.DATA    3
.SDATA   "abc"
.DATA    5
.SDATA   "third"
.DATA    5
.SDATA   "inner"
.DATA    13
.SDATA   "out of memory"
.DATA    8
.SDATA   "Hi there"
.DATA    3
.SDATA   "10 "
.DATA    4
.SDATA   "Done"
.DATA    3
.SDATA   "Hi "
.DATA    6
.SDATA   "fourth"
.DATA    5
.SDATA   " -10 "
.DATA    1
.SDATA   "-"
.DATA    15
.SDATA   "m <= 4 && m > 2"
.DATA    11
.SDATA   "after break"
.DATA    3
.SDATA   "1-0"
.DATA    5
.SDATA   "outer"
.DATA    8
.SDATA   "Hi There"
.DATA    3
.SDATA   "end"
.DATA    6
.SDATA   "second"
0: LDC   0, 199(5)  store array start address: 199
1: LDC   1, 198(5)  store array offset into ac2: 198
2: ST    0, 0(1)  store array offset
3: LD    6, 0(5)  save stack pointer
4: LD    4, 0(5)  save frame pointer
6: LDC   0, 8(5)  load array error str address
7: LD    1, 0(0)  load str length into ac2
8: JEQ   1, 5(7)  output nothing when empty
9: LDA   0, 1(0)  increase offset
10: LD    2, 0(0)  load char into ac3
11: OUTC   2, 2, 2  write char
12: LDA   1, -1(1)  decrease length of remaining string in ac2
13: JNE   1, -5(7)  continue print if not yet finish
14: OUTNL 0, 0, 0  emit newline
15: HALT  0, 0, 0  stop because of array error
16: LDC   0, 89(5)  load out of memory str address
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
30: LDC   3, 201(5)  push 0
31: SUB   3, 6, 3  push 0
32: JLE   3, 16(5)  push 0
33: ST    2, 0(6)  push 0
34: LD    2, 0(6)  pop result into AC3
35: LDA   6, 1(6)  pop result into AC3
36: LDC   3, 10(5)  load 10 into ac4
37: MUL   2, 2, 3  mul result with 10
38: LDA   6, -1(6)  push result
39: LDC   3, 201(5)  push result
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
51: LDC   3, 201(5)  push result
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
66: LDC   0, 0(5)  load integer 0
67: LDA   6, -1(6)  push array index
68: LDC   3, 201(5)  push array index
69: SUB   3, 6, 3  push array index
70: JLE   3, 16(5)  push array index
71: ST    0, 0(6)  push array index
72: LDC   0, 1(5)  push array dimension
73: LDC   0, 0(5)  load 0 to ac
74: LD    1, 0(6)  pop index
75: LDA   6, 1(6)  pop index
76: JLT   1, 6(5)  jump if index less than 0
77: LDC   3, 2(5)  load array size
78: SUB   3, 3, 1  sub max size with index
79: JLE   3, 6(5)  jump if index greater than size - 1
80: LDC   2, 1(5)  load size of subarray
81: MUL   1, 1, 2  compute 0 dim
82: ADD   0, 0, 1  add result
83: LD    1, 198(5)  load offset into ac2
84: ADD   0, 0, 1  compute final offset
85: LDA   6, -1(6)  push final offset
86: LDC   3, 201(5)  push final offset
87: SUB   3, 6, 3  push final offset
88: JLE   3, 16(5)  push final offset
89: ST    0, 0(6)  push final offset
90: LDC   0, 1(5)  load integer 1
91: LD    1, 0(6)  pop final offset
92: LDA   6, 1(6)  pop final offset
93: ST    0, 0(1)  store value into array static data
94: LDC   0, 1(5)  load integer 1
95: LDA   6, -1(6)  push array index
96: LDC   3, 201(5)  push array index
97: SUB   3, 6, 3  push array index
98: JLE   3, 16(5)  push array index
99: ST    0, 0(6)  push array index
100: LDC   0, 1(5)  push array dimension
101: LDC   0, 0(5)  load 0 to ac
102: LD    1, 0(6)  pop index
103: LDA   6, 1(6)  pop index
104: JLT   1, 6(5)  jump if index less than 0
105: LDC   3, 2(5)  load array size
106: SUB   3, 3, 1  sub max size with index
107: JLE   3, 6(5)  jump if index greater than size - 1
108: LDC   2, 1(5)  load size of subarray
109: MUL   1, 1, 2  compute 0 dim
110: ADD   0, 0, 1  add result
111: LD    1, 198(5)  load offset into ac2
112: ADD   0, 0, 1  compute final offset
113: LDA   6, -1(6)  push final offset
114: LDC   3, 201(5)  push final offset
115: SUB   3, 6, 3  push final offset
116: JLE   3, 16(5)  push final offset
117: ST    0, 0(6)  push final offset
118: LDC   0, 0(5)  load integer 0
119: LDA   6, -1(6)  push array index
120: LDC   3, 201(5)  push array index
121: SUB   3, 6, 3  push array index
122: JLE   3, 16(5)  push array index
123: ST    0, 0(6)  push array index
124: LDC   0, 1(5)  push array dimension
125: LDC   0, 0(5)  load 0 to ac
126: LD    1, 0(6)  pop index
127: LDA   6, 1(6)  pop index
128: JLT   1, 6(5)  jump if index less than 0
129: LDC   3, 2(5)  load array size
130: SUB   3, 3, 1  sub max size with index
131: JLE   3, 6(5)  jump if index greater than size - 1
132: LDC   2, 1(5)  load size of subarray
133: MUL   1, 1, 2  compute 0 dim
134: ADD   0, 0, 1  add result
135: LD    1, 198(5)  load global offset into ac2
136: ADD   0, 0, 1  compute final offset
137: LD    0, 0(0)  load data from array
138: LDC   1, 0(5)  load 0 into AC2
139: SUB   0, 1, 0  compute negative number
140: LD    1, 0(6)  pop final offset
141: LDA   6, 1(6)  pop final offset
142: ST    0, 0(1)  store value into array static data
143: LDC   0, 0(5)  load integer 0
144: LDA   6, -1(6)  push array index
145: LDC   3, 201(5)  push array index
146: SUB   3, 6, 3  push array index
147: JLE   3, 16(5)  push array index
148: ST    0, 0(6)  push array index
149: LDC   0, 1(5)  push array dimension
150: LDC   0, 0(5)  load 0 to ac
151: LD    1, 0(6)  pop index
152: LDA   6, 1(6)  pop index
153: JLT   1, 6(5)  jump if index less than 0
154: LDC   3, 2(5)  load array size
155: SUB   3, 3, 1  sub max size with index
156: JLE   3, 6(5)  jump if index greater than size - 1
157: LDC   2, 1(5)  load size of subarray
158: MUL   1, 1, 2  compute 0 dim
159: ADD   0, 0, 1  add result
160: LD    1, 198(5)  load global offset into ac2
161: ADD   0, 0, 1  compute final offset
162: LD    0, 0(0)  load data from array
163: OUT   0, 0, 0  write integer
164: OUTNL 0, 0, 0  write new line
165: LDC   0, 1(5)  load integer 1
166: LDA   6, -1(6)  push array index
167: LDC   3, 201(5)  push array index
168: SUB   3, 6, 3  push array index
169: JLE   3, 16(5)  push array index
170: ST    0, 0(6)  push array index
171: LDC   0, 1(5)  push array dimension
172: LDC   0, 0(5)  load 0 to ac
173: LD    1, 0(6)  pop index
174: LDA   6, 1(6)  pop index
175: JLT   1, 6(5)  jump if index less than 0
176: LDC   3, 2(5)  load array size
177: SUB   3, 3, 1  sub max size with index
178: JLE   3, 6(5)  jump if index greater than size - 1
179: LDC   2, 1(5)  load size of subarray
180: MUL   1, 1, 2  compute 0 dim
181: ADD   0, 0, 1  add result
182: LD    1, 198(5)  load global offset into ac2
183: ADD   0, 0, 1  compute final offset
184: LD    0, 0(0)  load data from array
185: OUT   0, 0, 0  write integer
186: OUTNL 0, 0, 0  write new line
187: HALT  0, 0, 0  program ends
