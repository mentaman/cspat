.DATA    2
.SDATA   "Hi"
.DATA    6
.SDATA   "fourth"
.DATA    18
.SDATA   "array index error!"
.DATA    11
.SDATA   "after break"
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
0: LDC   0, 116(5)  store array start address: 116
1: LDC   1, 115(5)  store array offset into ac2: 115
2: ST    0, 0(1)  store array offset
3: LDC   0, 119(5)  store array start address: 119
4: LDC   1, 118(5)  store array offset into ac2: 118
5: ST    0, 0(1)  store array offset
6: LD    6, 0(5)  save stack pointer
7: LD    4, 0(5)  save frame pointer
9: LDC   0, 11(5)  load array error str address
10: LD    1, 0(0)  load str length into ac2
11: JEQ   1, 5(7)  output nothing when empty
12: LDA   0, 1(0)  increase offset
13: LD    2, 0(0)  load char into ac3
14: OUTC   2, 2, 2  write char
15: LDA   1, -1(1)  decrease length of remaining string in ac2
16: JNE   1, -5(7)  continue print if not yet finish
17: OUTNL 0, 0, 0  emit newline
18: HALT  0, 0, 0  stop because of array error
19: LDC   0, 83(5)  load out of memory str address
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
33: LDC   3, 121(5)  push 0
34: SUB   3, 6, 3  push 0
35: JLE   3, 19(5)  push 0
36: ST    2, 0(6)  push 0
37: LD    2, 0(6)  pop result into AC3
38: LDA   6, 1(6)  pop result into AC3
39: LDC   3, 10(5)  load 10 into ac4
40: MUL   2, 2, 3  mul result with 10
41: LDA   6, -1(6)  push result
42: LDC   3, 121(5)  push result
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
54: LDC   3, 121(5)  push result
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
69: LDC   0, 0(5)  load integer 0
70: LDA   6, -1(6)  push array index
71: LDC   3, 121(5)  push array index
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
86: LDA   1, 0(4)  load fp into ac2
87: LD    1, -2(1)  load local offset into ac2
88: ADD   0, 0, 1  compute final offset
89: LDA   6, -1(6)  push final offset
90: LDC   3, 121(5)  push final offset
91: SUB   3, 6, 3  push final offset
92: JLE   3, 19(5)  push final offset
93: ST    0, 0(6)  push final offset
94: LDC   0, 4(5)  load integer 4
95: LD    1, 0(6)  pop final offset
96: LDA   6, 1(6)  pop final offset
97: ST    0, 0(1)  store value into array static data
98: LDC   0, 1(5)  load integer 1
99: LDA   6, -1(6)  push array index
100: LDC   3, 121(5)  push array index
101: SUB   3, 6, 3  push array index
102: JLE   3, 19(5)  push array index
103: ST    0, 0(6)  push array index
104: LDC   0, 1(5)  push array dimension
105: LDC   0, 0(5)  load 0 to ac
106: LD    1, 0(6)  pop index
107: LDA   6, 1(6)  pop index
108: JLT   1, 9(5)  jump if index less than 0
109: LDC   3, 2(5)  load array size
110: SUB   3, 3, 1  sub max size with index
111: JLE   3, 9(5)  jump if index greater than size - 1
112: LDC   2, 1(5)  load size of subarray
113: MUL   1, 1, 2  compute 0 dim
114: ADD   0, 0, 1  add result
115: LDA   1, 0(4)  load fp into ac2
116: LD    1, -3(1)  load local offset into ac2
117: ADD   0, 0, 1  compute final offset
118: LDA   6, -1(6)  push final offset
119: LDC   3, 121(5)  push final offset
120: SUB   3, 6, 3  push final offset
121: JLE   3, 19(5)  push final offset
122: ST    0, 0(6)  push final offset
123: LDC   0, 6(5)  load integer 6
124: LD    1, 0(6)  pop final offset
125: LDA   6, 1(6)  pop final offset
126: ST    0, 0(1)  store value into array static data
127: LD    1, -1(4)  load return address
128: LDA   6, 0(4)  change sp to fp + 1
129: LD    4, 0(6)  restore fp
130: LDA   6, 1(6)  restore fp
131: LDA   7, 0(1)  jump to the return address
8: LDA   7, 132(5)  jump to start of the program
132: LDA   6, -1(6)  push fp
133: LDC   3, 121(5)  push fp
134: SUB   3, 6, 3  push fp
135: JLE   3, 19(5)  push fp
136: ST    4, 0(6)  push fp
137: LDA   4, 0(6)  set fp to sp
144: LDC   0, 1(5)  push array dimension
145: LDC   0, 0(5)  load 0 to ac
146: LD    1, 118(5)  load global offset into ac2
147: ADD   0, 0, 1  compute final offset
148: LDA   6, -1(6)  push array parameter
149: LDC   3, 121(5)  push array parameter
150: SUB   3, 6, 3  push array parameter
151: JLE   3, 19(5)  push array parameter
152: ST    0, 0(6)  push array parameter
153: LDC   0, 1(5)  push array dimension
154: LDC   0, 0(5)  load 0 to ac
155: LD    1, 115(5)  load global offset into ac2
156: ADD   0, 0, 1  compute final offset
157: LDA   6, -1(6)  push array parameter
158: LDC   3, 121(5)  push array parameter
159: SUB   3, 6, 3  push array parameter
160: JLE   3, 19(5)  push array parameter
161: ST    0, 0(6)  push array parameter
162: LDA   6, 0(6)  preserve space for local vars
163: LDA   7, 69(5)  jump to procedure call
138: LDC   0, 164(5)  load return address into ac
139: LDA   6, -1(6)  push return address
140: LDC   3, 121(5)  push return address
141: SUB   3, 6, 3  push return address
142: JLE   3, 19(5)  push return address
143: ST    0, 0(6)  push return address
164: LDC   0, 0(5)  load integer 0
165: LDA   6, -1(6)  push array index
166: LDC   3, 121(5)  push array index
167: SUB   3, 6, 3  push array index
168: JLE   3, 19(5)  push array index
169: ST    0, 0(6)  push array index
170: LDC   0, 1(5)  push array dimension
171: LDC   0, 0(5)  load 0 to ac
172: LD    1, 0(6)  pop index
173: LDA   6, 1(6)  pop index
174: JLT   1, 9(5)  jump if index less than 0
175: LDC   3, 2(5)  load array size
176: SUB   3, 3, 1  sub max size with index
177: JLE   3, 9(5)  jump if index greater than size - 1
178: LDC   2, 1(5)  load size of subarray
179: MUL   1, 1, 2  compute 0 dim
180: ADD   0, 0, 1  add result
181: LD    1, 118(5)  load global offset into ac2
182: ADD   0, 0, 1  compute final offset
183: LD    0, 0(0)  load data from array
184: OUT   0, 0, 0  write integer
185: OUTNL 0, 0, 0  write new line
186: LDC   0, 1(5)  load integer 1
187: LDA   6, -1(6)  push array index
188: LDC   3, 121(5)  push array index
189: SUB   3, 6, 3  push array index
190: JLE   3, 19(5)  push array index
191: ST    0, 0(6)  push array index
192: LDC   0, 1(5)  push array dimension
193: LDC   0, 0(5)  load 0 to ac
194: LD    1, 0(6)  pop index
195: LDA   6, 1(6)  pop index
196: JLT   1, 9(5)  jump if index less than 0
197: LDC   3, 2(5)  load array size
198: SUB   3, 3, 1  sub max size with index
199: JLE   3, 9(5)  jump if index greater than size - 1
200: LDC   2, 1(5)  load size of subarray
201: MUL   1, 1, 2  compute 0 dim
202: ADD   0, 0, 1  add result
203: LD    1, 115(5)  load global offset into ac2
204: ADD   0, 0, 1  compute final offset
205: LD    0, 0(0)  load data from array
206: OUT   0, 0, 0  write integer
207: OUTNL 0, 0, 0  write new line
208: HALT  0, 0, 0  program ends
