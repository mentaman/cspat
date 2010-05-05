.DATA    3
.SDATA   "Hi "
.DATA    2
.SDATA   "Hi"
.DATA    16
.SDATA   "after test(a[1])"
.DATA    3
.SDATA   "-50"
.DATA    25
.SDATA   "invalid numeric character"
.DATA    6
.SDATA   "i am c"
.DATA    9
.SDATA   "a[0] is: "
.DATA    5
.SDATA   "c is "
.DATA    15
.SDATA   "m <= 4 && m > 2"
.DATA    2
.SDATA   "50"
.DATA    3
.SDATA   "+50"
.DATA    18
.SDATA   "array index error!"
.DATA    5
.SDATA   "There"
.DATA    15
.SDATA   "m > 4 || m <= 2"
.DATA    9
.SDATA   "i am a[1]"
.DATA    9
.SDATA   "i am a[0]"
.DATA    13
.SDATA   "out of memory"
.DATA    9
.SDATA   "a[1] is: "
0: LDC   0, 187(5)  store array start address: 187
1: LDC   1, 186(5)  store array offset into ac2: 186
2: ST    0, 0(1)  store array offset
3: LD    6, 0(5)  save stack pointer
4: LD    4, 0(5)  save frame pointer
6: LDC   0, 101(5)  load array error str address
7: LD    1, 0(0)  load str length into ac2
8: JEQ   1, 5(7)  output nothing when empty
9: LDA   0, 1(0)  increase offset
10: LD    2, 0(0)  load char into ac3
11: OUTC   2, 2, 2  write char
12: LDA   1, -1(1)  decrease length of remaining string in ac2
13: JNE   1, -5(7)  continue print if not yet finish
14: OUTNL 0, 0, 0  emit newline
15: HALT  0, 0, 0  stop because of array error
16: LDC   0, 162(5)  load out of memory str address
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
28: LDA   0, 1(0)  increase str offset
29: LD    2, 0(0)  load char
30: LDC   3, 43(5)  load 43(+) into ac4
31: SUB   3, 2, 3  sub 43(+)
33: LDC   3, 45(5)  load 45(-) into ac4
34: SUB   3, 2, 3  sub 45(-)
36: LDA   1, -1(1)  decrease str length
37: LDC   2, -1(5)  load -1 into ac3
38: LDA   6, -1(6)  push -1
39: LDC   3, 192(5)  push -1
40: SUB   3, 6, 3  push -1
41: JLE   3, 16(5)  push -1
42: ST    2, 0(6)  push -1
35: JNE   3, 8(7)  jump if not equal '-'
44: LDA   0, -1(0)  move back str offset
45: LDA   1, 1(1)  increase str length
32: JEQ   3, 13(7)  jump if equal '+'
46: LDA   1, -1(1)  decrease str length
47: LDC   2, 1(5)  load 1 into ac3
48: LDA   6, -1(6)  push 1
49: LDC   3, 192(5)  push 1
50: SUB   3, 6, 3  push 1
51: JLE   3, 16(5)  push 1
52: ST    2, 0(6)  push 1
43: LDA   7, 9(7)  jump to start parsing str
53: LDC   2, 0(5)  load 0 as initial result
54: LDA   6, -1(6)  push 0
55: LDC   3, 192(5)  push 0
56: SUB   3, 6, 3  push 0
57: JLE   3, 16(5)  push 0
58: ST    2, 0(6)  push 0
59: LD    2, 0(6)  pop result into AC3
60: LDA   6, 1(6)  pop result into AC3
61: LDC   3, 10(5)  load 10 into ac4
62: MUL   2, 2, 3  mul result with 10
63: LDA   6, -1(6)  push result
64: LDC   3, 192(5)  push result
65: SUB   3, 6, 3  push result
66: JLE   3, 16(5)  push result
67: ST    2, 0(6)  push result
68: LDA   0, 1(0)  increase str offset
69: LD    2, 0(0)  load char
70: LDC   3, 48(5)  load 48 into ac4
71: SUB   2, 2, 3  compute int value
72: LD    3, 0(6)  pop result into AC4
73: LDA   6, 1(6)  pop result into AC4
74: ADD   2, 2, 3  compute result
75: LDA   6, -1(6)  push result
76: LDC   3, 192(5)  push result
77: SUB   3, 6, 3  push result
78: JLE   3, 16(5)  push result
79: ST    2, 0(6)  push result
80: LDA   1, -1(1)  decrease str length
81: JNE   1, 59(5)  continue if str length
82: LD    0, 0(6)  pop result
83: LDA   6, 1(6)  pop result
84: LD    1, 0(6)  pop symbol
85: LDA   6, 1(6)  pop symbol
86: MUL   0, 0, 1  multiply symbol
87: ST    0, -2(4)  save to return value
88: LD    0, -2(4)  load int/bool/string offset as return value
89: LD    1, -1(4)  load return address
90: LDA   6, 0(4)  change sp to fp + 1
91: LD    4, 0(6)  restore fp
92: LDA   6, 1(6)  restore fp
93: LDA   7, 0(1)  jump to the return address
5: LDA   7, 94(5)  jump to start of the program
94: LDA   6, -1(6)  push fp
95: LDC   3, 192(5)  push fp
96: SUB   3, 6, 3  push fp
97: JLE   3, 16(5)  push fp
98: ST    4, 0(6)  push fp
99: LDA   4, 0(6)  set fp to sp
100: LDC   0, 0(5)  load integer 0
101: LDA   6, -1(6)  push low
102: LDC   3, 192(5)  push low
103: SUB   3, 6, 3  push low
104: JLE   3, 16(5)  push low
105: ST    0, 0(6)  push low
106: LDC   0, 4(5)  load integer 4
107: LDA   6, -1(6)  push hi
108: LDC   3, 192(5)  push hi
109: SUB   3, 6, 3  push hi
110: JLE   3, 16(5)  push hi
111: ST    0, 0(6)  push hi
112: LD    0, -2(4)  load hi into ac 
113: LD    1, -1(4)  load low into ac2 
114: SUB   0, 0, 1  subtract hi with low
116: LDA   1, 0(4)  load fp into ac2
117: LD    0, -1(1)  load int/bool/str from stack
118: LDA   6, -1(6)  push array index
119: LDC   3, 192(5)  push array index
120: SUB   3, 6, 3  push array index
121: JLE   3, 16(5)  push array index
122: ST    0, 0(6)  push array index
123: LDC   0, 1(5)  push array dimension
124: LDC   0, 0(5)  load 0 to ac
125: LD    1, 0(6)  pop index
126: LDA   6, 1(6)  pop index
127: JLT   1, 6(5)  jump if index less than 0
128: LDC   3, 5(5)  load array size
129: SUB   3, 3, 1  sub max size with index
130: JLE   3, 6(5)  jump if index greater than size - 1
131: LDC   2, 1(5)  load size of subarray
132: MUL   1, 1, 2  compute 0 dim
133: ADD   0, 0, 1  add result
134: LD    1, 186(5)  load offset into ac2
135: ADD   0, 0, 1  compute final offset
136: LDA   6, -1(6)  push final offset
137: LDC   3, 192(5)  push final offset
138: SUB   3, 6, 3  push final offset
139: JLE   3, 16(5)  push final offset
140: ST    0, 0(6)  push final offset
141: LDA   1, 0(4)  load fp into ac2
142: LD    0, -1(1)  load int/bool/str from stack
143: LD    1, 0(6)  pop final offset
144: LDA   6, 1(6)  pop final offset
145: ST    0, 0(1)  store value into array static data
146: LD    0, -1(4)  load low into ac
147: LDA   0, 1(0)  decrease low
148: ST    0, -1(4)  save low
149: LDA   7, -38(7)  jump back to loop start
115: JLT   0, 34(7)  jump out of the fa loop
150: LDA   6, 0(4)  change sp to fp + 1
151: LD    4, 0(6)  restore fp
152: LDA   6, 1(6)  restore fp
153: LDA   6, -1(6)  push fp
154: LDC   3, 192(5)  push fp
155: SUB   3, 6, 3  push fp
156: JLE   3, 16(5)  push fp
157: ST    4, 0(6)  push fp
158: LDA   4, 0(6)  set fp to sp
159: LDC   0, 0(5)  load integer 0
160: LDA   6, -1(6)  push low
161: LDC   3, 192(5)  push low
162: SUB   3, 6, 3  push low
163: JLE   3, 16(5)  push low
164: ST    0, 0(6)  push low
165: LDC   0, 4(5)  load integer 4
166: LDA   6, -1(6)  push hi
167: LDC   3, 192(5)  push hi
168: SUB   3, 6, 3  push hi
169: JLE   3, 16(5)  push hi
170: ST    0, 0(6)  push hi
171: LD    0, -2(4)  load hi into ac 
172: LD    1, -1(4)  load low into ac2 
173: SUB   0, 0, 1  subtract hi with low
175: LDA   1, 0(4)  load fp into ac2
176: LD    0, -1(1)  load int/bool/str from stack
177: LDA   6, -1(6)  push array index
178: LDC   3, 192(5)  push array index
179: SUB   3, 6, 3  push array index
180: JLE   3, 16(5)  push array index
181: ST    0, 0(6)  push array index
182: LDC   0, 1(5)  push array dimension
183: LDC   0, 0(5)  load 0 to ac
184: LD    1, 0(6)  pop index
185: LDA   6, 1(6)  pop index
186: JLT   1, 6(5)  jump if index less than 0
187: LDC   3, 5(5)  load array size
188: SUB   3, 3, 1  sub max size with index
189: JLE   3, 6(5)  jump if index greater than size - 1
190: LDC   2, 1(5)  load size of subarray
191: MUL   1, 1, 2  compute 0 dim
192: ADD   0, 0, 1  add result
193: LD    1, 186(5)  load global offset into ac2
194: ADD   0, 0, 1  compute final offset
195: LD    0, 0(0)  load data from array
196: OUT   0, 0, 0  write integer
197: OUTNL 0, 0, 0  write new line
198: LD    0, -1(4)  load low into ac
199: LDA   0, 1(0)  decrease low
200: ST    0, -1(4)  save low
201: LDA   7, -31(7)  jump back to loop start
174: JLT   0, 27(7)  jump out of the fa loop
202: LDA   6, 0(4)  change sp to fp + 1
203: LD    4, 0(6)  restore fp
204: LDA   6, 1(6)  restore fp
205: LDC   0, 5(5)  load integer 5
206: OUT   0, 0, 0  write integer
207: OUTNL 0, 0, 0  write new line
208: HALT  0, 0, 0  program ends
