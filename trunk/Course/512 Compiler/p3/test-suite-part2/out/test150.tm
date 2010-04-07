.DATA    2
.SDATA   "Hi"
.DATA    6
.SDATA   "fourth"
.DATA    1
.SDATA   "a"
.DATA    1
.SDATA   "b"
.DATA    1
.SDATA   "5"
.DATA    18
.SDATA   "array index error!"
.DATA    11
.SDATA   "after break"
.DATA    1
.SDATA   "1"
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
0: LDC   0, 124(5)  store array start address: 124
1: LDC   1, 123(5)  store array offset into ac2: 123
2: ST    0, 0(1)  store array offset
3: LD    6, 0(5)  save stack pointer
4: LD    4, 0(5)  save frame pointer
6: LDC   0, 17(5)  load array error str address
7: LD    1, 0(0)  load str length into ac2
8: JEQ   1, 5(7)  output nothing when empty
9: LDA   0, 1(0)  increase offset
10: LD    2, 0(0)  load char into ac3
11: OUTC   2, 2, 2  write char
12: LDA   1, -1(1)  decrease length of remaining string in ac2
13: JNE   1, -5(7)  continue print if not yet finish
14: OUTNL 0, 0, 0  emit newline
15: HALT  0, 0, 0  stop because of array error
16: LDC   0, 91(5)  load out of memory str address
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
30: LDC   3, 132(5)  push 0
31: SUB   3, 6, 3  push 0
32: JLE   3, 16(5)  push 0
33: ST    2, 0(6)  push 0
34: LD    2, 0(6)  pop result into AC3
35: LDA   6, 1(6)  pop result into AC3
36: LDC   3, 10(5)  load 10 into ac4
37: MUL   2, 2, 3  mul result with 10
38: LDA   6, -1(6)  push result
39: LDC   3, 132(5)  push result
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
51: LDC   3, 132(5)  push result
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
66: LDC   0, 1(5)  load integer 1
67: LDA   6, -1(6)  push array index
68: LDC   3, 132(5)  push array index
69: SUB   3, 6, 3  push array index
70: JLE   3, 16(5)  push array index
71: ST    0, 0(6)  push array index
72: LDC   0, 1(5)  load integer 1
73: LDA   6, -1(6)  push array index
74: LDC   3, 132(5)  push array index
75: SUB   3, 6, 3  push array index
76: JLE   3, 16(5)  push array index
77: ST    0, 0(6)  push array index
78: LDC   0, 1(5)  load integer 1
79: LDA   6, -1(6)  push array index
80: LDC   3, 132(5)  push array index
81: SUB   3, 6, 3  push array index
82: JLE   3, 16(5)  push array index
83: ST    0, 0(6)  push array index
84: LDC   0, 3(5)  push array dimension
85: LDC   0, 0(5)  load 0 to ac
86: LD    1, 0(6)  pop index
87: LDA   6, 1(6)  pop index
88: JLT   1, 6(5)  jump if index less than 0
89: LDC   3, 2(5)  load array size
90: SUB   3, 3, 1  sub max size with index
91: JLE   3, 6(5)  jump if index greater than size - 1
92: LDC   2, 4(5)  load size of subarray
93: MUL   1, 1, 2  compute 0 dim
94: ADD   0, 0, 1  add result
95: LD    1, 0(6)  pop index
96: LDA   6, 1(6)  pop index
97: JLT   1, 6(5)  jump if index less than 0
98: LDC   3, 2(5)  load array size
99: SUB   3, 3, 1  sub max size with index
100: JLE   3, 6(5)  jump if index greater than size - 1
101: LDC   2, 2(5)  load size of subarray
102: MUL   1, 1, 2  compute 1 dim
103: ADD   0, 0, 1  add result
104: LD    1, 0(6)  pop index
105: LDA   6, 1(6)  pop index
106: JLT   1, 6(5)  jump if index less than 0
107: LDC   3, 2(5)  load array size
108: SUB   3, 3, 1  sub max size with index
109: JLE   3, 6(5)  jump if index greater than size - 1
110: LDC   2, 1(5)  load size of subarray
111: MUL   1, 1, 2  compute 2 dim
112: ADD   0, 0, 1  add result
113: LDA   1, 0(4)  load fp into ac2
114: LD    1, -2(1)  load local offset into ac2
115: ADD   0, 0, 1  compute final offset
116: LD    0, 0(0)  load data from array
117: OUT   0, 0, 0  write integer
118: OUTNL 0, 0, 0  write new line
119: LD    1, -1(4)  load return address
120: LDA   6, 0(4)  change sp to fp + 1
121: LD    4, 0(6)  restore fp
122: LDA   6, 1(6)  restore fp
123: LDA   7, 0(1)  jump to the return address
5: LDA   7, 124(5)  jump to start of the program
124: LDC   0, 1(5)  load integer 1
125: LDA   6, -1(6)  push array index
126: LDC   3, 132(5)  push array index
127: SUB   3, 6, 3  push array index
128: JLE   3, 16(5)  push array index
129: ST    0, 0(6)  push array index
130: LDC   0, 1(5)  load integer 1
131: LDA   6, -1(6)  push array index
132: LDC   3, 132(5)  push array index
133: SUB   3, 6, 3  push array index
134: JLE   3, 16(5)  push array index
135: ST    0, 0(6)  push array index
136: LDC   0, 1(5)  load integer 1
137: LDA   6, -1(6)  push array index
138: LDC   3, 132(5)  push array index
139: SUB   3, 6, 3  push array index
140: JLE   3, 16(5)  push array index
141: ST    0, 0(6)  push array index
142: LDC   0, 3(5)  push array dimension
143: LDC   0, 0(5)  load 0 to ac
144: LD    1, 0(6)  pop index
145: LDA   6, 1(6)  pop index
146: JLT   1, 6(5)  jump if index less than 0
147: LDC   3, 2(5)  load array size
148: SUB   3, 3, 1  sub max size with index
149: JLE   3, 6(5)  jump if index greater than size - 1
150: LDC   2, 4(5)  load size of subarray
151: MUL   1, 1, 2  compute 0 dim
152: ADD   0, 0, 1  add result
153: LD    1, 0(6)  pop index
154: LDA   6, 1(6)  pop index
155: JLT   1, 6(5)  jump if index less than 0
156: LDC   3, 2(5)  load array size
157: SUB   3, 3, 1  sub max size with index
158: JLE   3, 6(5)  jump if index greater than size - 1
159: LDC   2, 2(5)  load size of subarray
160: MUL   1, 1, 2  compute 1 dim
161: ADD   0, 0, 1  add result
162: LD    1, 0(6)  pop index
163: LDA   6, 1(6)  pop index
164: JLT   1, 6(5)  jump if index less than 0
165: LDC   3, 2(5)  load array size
166: SUB   3, 3, 1  sub max size with index
167: JLE   3, 6(5)  jump if index greater than size - 1
168: LDC   2, 1(5)  load size of subarray
169: MUL   1, 1, 2  compute 2 dim
170: ADD   0, 0, 1  add result
171: LD    1, 123(5)  load offset into ac2
172: ADD   0, 0, 1  compute final offset
173: LDA   6, -1(6)  push final offset
174: LDC   3, 132(5)  push final offset
175: SUB   3, 6, 3  push final offset
176: JLE   3, 16(5)  push final offset
177: ST    0, 0(6)  push final offset
178: LDC   0, 4(5)  load integer 4
179: LD    1, 0(6)  pop final offset
180: LDA   6, 1(6)  pop final offset
181: ST    0, 0(1)  store value into array static data
182: LDA   6, -1(6)  push fp
183: LDC   3, 132(5)  push fp
184: SUB   3, 6, 3  push fp
185: JLE   3, 16(5)  push fp
186: ST    4, 0(6)  push fp
187: LDA   4, 0(6)  set fp to sp
194: LDC   0, 3(5)  push array dimension
195: LDC   0, 0(5)  load 0 to ac
196: LD    1, 123(5)  load global offset into ac2
197: ADD   0, 0, 1  compute final offset
198: LDA   6, -1(6)  push array parameter
199: LDC   3, 132(5)  push array parameter
200: SUB   3, 6, 3  push array parameter
201: JLE   3, 16(5)  push array parameter
202: ST    0, 0(6)  push array parameter
203: LDA   6, 0(6)  preserve space for local vars
204: LDA   7, 66(5)  jump to procedure call
188: LDC   0, 205(5)  load return address into ac
189: LDA   6, -1(6)  push return address
190: LDC   3, 132(5)  push return address
191: SUB   3, 6, 3  push return address
192: JLE   3, 16(5)  push return address
193: ST    0, 0(6)  push return address
205: HALT  0, 0, 0  program ends
