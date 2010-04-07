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
0: LDC   0, 80(5)  store array start address: 80
1: LDC   1, 79(5)  store array offset into ac2: 79
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
30: LDC   3, 85(5)  push 0
31: SUB   3, 6, 3  push 0
32: JLE   3, 16(5)  push 0
33: ST    2, 0(6)  push 0
34: LD    2, 0(6)  pop result into AC3
35: LDA   6, 1(6)  pop result into AC3
36: LDC   3, 10(5)  load 10 into ac4
37: MUL   2, 2, 3  mul result with 10
38: LDA   6, -1(6)  push result
39: LDC   3, 85(5)  push result
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
51: LDC   3, 85(5)  push result
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
66: LDA   6, -1(6)  push fp
67: LDC   3, 85(5)  push fp
68: SUB   3, 6, 3  push fp
69: JLE   3, 16(5)  push fp
70: ST    4, 0(6)  push fp
71: LDA   4, 0(6)  set fp to sp
72: LDC   0, 0(5)  load integer 0
73: LDA   6, -1(6)  push low
74: LDC   3, 85(5)  push low
75: SUB   3, 6, 3  push low
76: JLE   3, 16(5)  push low
77: ST    0, 0(6)  push low
78: LDC   0, 4(5)  load integer 4
79: LDA   6, -1(6)  push hi
80: LDC   3, 85(5)  push hi
81: SUB   3, 6, 3  push hi
82: JLE   3, 16(5)  push hi
83: ST    0, 0(6)  push hi
84: LD    0, -2(4)  load hi into ac 
85: LD    1, -1(4)  load low into ac2 
86: SUB   0, 0, 1  subtract hi with low
88: LDA   1, 0(4)  load fp into ac2
89: LD    0, -1(1)  load int/bool/str from stack
90: LDA   6, -1(6)  push array index
91: LDC   3, 85(5)  push array index
92: SUB   3, 6, 3  push array index
93: JLE   3, 16(5)  push array index
94: ST    0, 0(6)  push array index
95: LDC   0, 1(5)  push array dimension
96: LDC   0, 0(5)  load 0 to ac
97: LD    1, 0(6)  pop index
98: LDA   6, 1(6)  pop index
99: JLT   1, 6(5)  jump if index less than 0
100: LDC   3, 5(5)  load array size
101: SUB   3, 3, 1  sub max size with index
102: JLE   3, 6(5)  jump if index greater than size - 1
103: LDC   2, 1(5)  load size of subarray
104: MUL   1, 1, 2  compute 0 dim
105: ADD   0, 0, 1  add result
106: LD    1, 79(5)  load offset into ac2
107: ADD   0, 0, 1  compute final offset
108: LDA   6, -1(6)  push final offset
109: LDC   3, 85(5)  push final offset
110: SUB   3, 6, 3  push final offset
111: JLE   3, 16(5)  push final offset
112: ST    0, 0(6)  push final offset
113: LDA   1, 0(4)  load fp into ac2
114: LD    0, -1(1)  load int/bool/str from stack
115: LD    1, 0(6)  pop final offset
116: LDA   6, 1(6)  pop final offset
117: ST    0, 0(1)  store value into array static data
118: LD    0, -1(4)  load low into ac
119: LDA   0, 1(0)  decrease low
120: ST    0, -1(4)  save low
121: LDA   7, -38(7)  jump back to loop start
87: JLT   0, 34(7)  jump out of the fa loop
122: LDA   6, 0(4)  change sp to fp + 1
123: LD    4, 0(6)  restore fp
124: LDA   6, 1(6)  restore fp
125: LDA   6, -1(6)  push fp
126: LDC   3, 85(5)  push fp
127: SUB   3, 6, 3  push fp
128: JLE   3, 16(5)  push fp
129: ST    4, 0(6)  push fp
130: LDA   4, 0(6)  set fp to sp
131: LDC   0, 0(5)  load integer 0
132: LDA   6, -1(6)  push low
133: LDC   3, 85(5)  push low
134: SUB   3, 6, 3  push low
135: JLE   3, 16(5)  push low
136: ST    0, 0(6)  push low
137: LDC   0, 4(5)  load integer 4
138: LDA   6, -1(6)  push hi
139: LDC   3, 85(5)  push hi
140: SUB   3, 6, 3  push hi
141: JLE   3, 16(5)  push hi
142: ST    0, 0(6)  push hi
143: LD    0, -2(4)  load hi into ac 
144: LD    1, -1(4)  load low into ac2 
145: SUB   0, 0, 1  subtract hi with low
147: LDA   1, 0(4)  load fp into ac2
148: LD    0, -1(1)  load int/bool/str from stack
149: LDA   6, -1(6)  push array index
150: LDC   3, 85(5)  push array index
151: SUB   3, 6, 3  push array index
152: JLE   3, 16(5)  push array index
153: ST    0, 0(6)  push array index
154: LDC   0, 1(5)  push array dimension
155: LDC   0, 0(5)  load 0 to ac
156: LD    1, 0(6)  pop index
157: LDA   6, 1(6)  pop index
158: JLT   1, 6(5)  jump if index less than 0
159: LDC   3, 5(5)  load array size
160: SUB   3, 3, 1  sub max size with index
161: JLE   3, 6(5)  jump if index greater than size - 1
162: LDC   2, 1(5)  load size of subarray
163: MUL   1, 1, 2  compute 0 dim
164: ADD   0, 0, 1  add result
165: LD    1, 79(5)  load global offset into ac2
166: ADD   0, 0, 1  compute final offset
167: LD    0, 0(0)  load data from array
168: OUT   0, 0, 0  write integer
169: OUTNL 0, 0, 0  write new line
170: LD    0, -1(4)  load low into ac
171: LDA   0, 1(0)  decrease low
172: ST    0, -1(4)  save low
173: LDA   7, -31(7)  jump back to loop start
146: JLT   0, 27(7)  jump out of the fa loop
174: LDA   6, 0(4)  change sp to fp + 1
175: LD    4, 0(6)  restore fp
176: LDA   6, 1(6)  restore fp
177: LDC   0, 5(5)  load integer 5
178: OUT   0, 0, 0  write integer
179: OUTNL 0, 0, 0  write new line
180: HALT  0, 0, 0  program ends
