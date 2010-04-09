.DATA    2
.SDATA   "Hi"
.DATA    3
.SDATA   "+10"
.DATA    25
.SDATA   "invalid numeric character"
.DATA    6
.SDATA   "i am c"
.DATA    9
.SDATA   "a[0] is: "
.DATA    1
.SDATA   "b"
.DATA    1
.SDATA   "5"
.DATA    2
.SDATA   "50"
.DATA    18
.SDATA   "array index error!"
.DATA    3
.SDATA   "+50"
.DATA    5
.SDATA   "There"
.DATA    14
.SDATA   "should not see"
.DATA    0
.SDATA   ""
.DATA    15
.SDATA   "m > 4 || m <= 2"
.DATA    5
.SDATA   "first"
.DATA    1
.SDATA   " "
.DATA    5
.SDATA   "third"
.DATA    3
.SDATA   "abc"
.DATA    5
.SDATA   "inner"
.DATA    8
.SDATA   "Hi there"
.DATA    13
.SDATA   "out of memory"
.DATA    27
.SDATA   "- ( (3 > 0) + (i < 0) ) is "
.DATA    3
.SDATA   "10 "
.DATA    9
.SDATA   "a[1] is: "
.DATA    4
.SDATA   "Done"
.DATA    6
.SDATA   "fourth"
.DATA    3
.SDATA   "Hi "
.DATA    16
.SDATA   "after test(a[1])"
.DATA    5
.SDATA   " -10 "
.DATA    1
.SDATA   "a"
.DATA    3
.SDATA   "-50"
.DATA    1
.SDATA   "-"
.DATA    5
.SDATA   "c is "
.DATA    15
.SDATA   "m <= 4 && m > 2"
.DATA    11
.SDATA   "after break"
.DATA    1
.SDATA   "1"
.DATA    3
.SDATA   "1-0"
.DATA    1
.SDATA   "3"
.DATA    5
.SDATA   "outer"
.DATA    9
.SDATA   "i am a[1]"
.DATA    8
.SDATA   "int(s): "
.DATA    8
.SDATA   "Hi There"
.DATA    3
.SDATA   "end"
.DATA    9
.SDATA   "i am a[0]"
.DATA    6
.SDATA   "second"
0: LDC   0, 353(5)  store array start address: 353
1: LDC   1, 352(5)  store array offset into ac2: 352
2: ST    0, 0(1)  store array offset
3: LD    6, 0(5)  save stack pointer
4: LD    4, 0(5)  save frame pointer
6: LDC   0, 58(5)  load array error str address
7: LD    1, 0(0)  load str length into ac2
8: JEQ   1, 5(7)  output nothing when empty
9: LDA   0, 1(0)  increase offset
10: LD    2, 0(0)  load char into ac3
11: OUTC   2, 2, 2  write char
12: LDA   1, -1(1)  decrease length of remaining string in ac2
13: JNE   1, -5(7)  continue print if not yet finish
14: OUTNL 0, 0, 0  emit newline
15: HALT  0, 0, 0  stop because of array error
16: LDC   0, 152(5)  load out of memory str address
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
39: LDC   3, 361(5)  push -1
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
49: LDC   3, 361(5)  push 1
50: SUB   3, 6, 3  push 1
51: JLE   3, 16(5)  push 1
52: ST    2, 0(6)  push 1
43: LDA   7, 9(7)  jump to start parsing str
53: LDC   2, 0(5)  load 0 as initial result
54: LDA   6, -1(6)  push 0
55: LDC   3, 361(5)  push 0
56: SUB   3, 6, 3  push 0
57: JLE   3, 16(5)  push 0
58: ST    2, 0(6)  push 0
59: LD    2, 0(6)  pop result into AC3
60: LDA   6, 1(6)  pop result into AC3
61: LDC   3, 10(5)  load 10 into ac4
62: MUL   2, 2, 3  mul result with 10
63: LDA   6, -1(6)  push result
64: LDC   3, 361(5)  push result
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
76: LDC   3, 361(5)  push result
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
94: LDC   0, 1(5)  load integer 1
95: LDA   6, -1(6)  push array index
96: LDC   3, 361(5)  push array index
97: SUB   3, 6, 3  push array index
98: JLE   3, 16(5)  push array index
99: ST    0, 0(6)  push array index
100: LDC   0, 1(5)  load integer 1
101: LDA   6, -1(6)  push array index
102: LDC   3, 361(5)  push array index
103: SUB   3, 6, 3  push array index
104: JLE   3, 16(5)  push array index
105: ST    0, 0(6)  push array index
106: LDC   0, 1(5)  load integer 1
107: LDA   6, -1(6)  push array index
108: LDC   3, 361(5)  push array index
109: SUB   3, 6, 3  push array index
110: JLE   3, 16(5)  push array index
111: ST    0, 0(6)  push array index
112: LDC   0, 3(5)  push array dimension
113: LDC   0, 0(5)  load 0 to ac
114: LD    1, 0(6)  pop index
115: LDA   6, 1(6)  pop index
116: JLT   1, 6(5)  jump if index less than 0
117: LDC   3, 2(5)  load array size
118: SUB   3, 3, 1  sub max size with index
119: JLE   3, 6(5)  jump if index greater than size - 1
120: LDC   2, 4(5)  load size of subarray
121: MUL   1, 1, 2  compute 0 dim
122: ADD   0, 0, 1  add result
123: LD    1, 0(6)  pop index
124: LDA   6, 1(6)  pop index
125: JLT   1, 6(5)  jump if index less than 0
126: LDC   3, 2(5)  load array size
127: SUB   3, 3, 1  sub max size with index
128: JLE   3, 6(5)  jump if index greater than size - 1
129: LDC   2, 2(5)  load size of subarray
130: MUL   1, 1, 2  compute 1 dim
131: ADD   0, 0, 1  add result
132: LD    1, 0(6)  pop index
133: LDA   6, 1(6)  pop index
134: JLT   1, 6(5)  jump if index less than 0
135: LDC   3, 2(5)  load array size
136: SUB   3, 3, 1  sub max size with index
137: JLE   3, 6(5)  jump if index greater than size - 1
138: LDC   2, 1(5)  load size of subarray
139: MUL   1, 1, 2  compute 2 dim
140: ADD   0, 0, 1  add result
141: LDA   1, 0(4)  load fp into ac2
142: LD    1, -2(1)  load local offset into ac2
143: ADD   0, 0, 1  compute final offset
144: LD    0, 0(0)  load data from array
145: OUT   0, 0, 0  write integer
146: OUTNL 0, 0, 0  write new line
147: LD    1, -1(4)  load return address
148: LDA   6, 0(4)  change sp to fp + 1
149: LD    4, 0(6)  restore fp
150: LDA   6, 1(6)  restore fp
151: LDA   7, 0(1)  jump to the return address
5: LDA   7, 152(5)  jump to start of the program
152: LDC   0, 1(5)  load integer 1
153: LDA   6, -1(6)  push array index
154: LDC   3, 361(5)  push array index
155: SUB   3, 6, 3  push array index
156: JLE   3, 16(5)  push array index
157: ST    0, 0(6)  push array index
158: LDC   0, 1(5)  load integer 1
159: LDA   6, -1(6)  push array index
160: LDC   3, 361(5)  push array index
161: SUB   3, 6, 3  push array index
162: JLE   3, 16(5)  push array index
163: ST    0, 0(6)  push array index
164: LDC   0, 1(5)  load integer 1
165: LDA   6, -1(6)  push array index
166: LDC   3, 361(5)  push array index
167: SUB   3, 6, 3  push array index
168: JLE   3, 16(5)  push array index
169: ST    0, 0(6)  push array index
170: LDC   0, 3(5)  push array dimension
171: LDC   0, 0(5)  load 0 to ac
172: LD    1, 0(6)  pop index
173: LDA   6, 1(6)  pop index
174: JLT   1, 6(5)  jump if index less than 0
175: LDC   3, 2(5)  load array size
176: SUB   3, 3, 1  sub max size with index
177: JLE   3, 6(5)  jump if index greater than size - 1
178: LDC   2, 4(5)  load size of subarray
179: MUL   1, 1, 2  compute 0 dim
180: ADD   0, 0, 1  add result
181: LD    1, 0(6)  pop index
182: LDA   6, 1(6)  pop index
183: JLT   1, 6(5)  jump if index less than 0
184: LDC   3, 2(5)  load array size
185: SUB   3, 3, 1  sub max size with index
186: JLE   3, 6(5)  jump if index greater than size - 1
187: LDC   2, 2(5)  load size of subarray
188: MUL   1, 1, 2  compute 1 dim
189: ADD   0, 0, 1  add result
190: LD    1, 0(6)  pop index
191: LDA   6, 1(6)  pop index
192: JLT   1, 6(5)  jump if index less than 0
193: LDC   3, 2(5)  load array size
194: SUB   3, 3, 1  sub max size with index
195: JLE   3, 6(5)  jump if index greater than size - 1
196: LDC   2, 1(5)  load size of subarray
197: MUL   1, 1, 2  compute 2 dim
198: ADD   0, 0, 1  add result
199: LD    1, 352(5)  load offset into ac2
200: ADD   0, 0, 1  compute final offset
201: LDA   6, -1(6)  push final offset
202: LDC   3, 361(5)  push final offset
203: SUB   3, 6, 3  push final offset
204: JLE   3, 16(5)  push final offset
205: ST    0, 0(6)  push final offset
206: LDC   0, 4(5)  load integer 4
207: LD    1, 0(6)  pop final offset
208: LDA   6, 1(6)  pop final offset
209: ST    0, 0(1)  store value into array static data
210: LDA   6, -1(6)  push fp
211: LDC   3, 361(5)  push fp
212: SUB   3, 6, 3  push fp
213: JLE   3, 16(5)  push fp
214: ST    4, 0(6)  push fp
215: LDA   4, 0(6)  set fp to sp
222: LDC   0, 3(5)  push array dimension
223: LDC   0, 0(5)  load 0 to ac
224: LD    1, 352(5)  load global offset into ac2
225: ADD   0, 0, 1  compute final offset
226: LDA   6, -1(6)  push array parameter
227: LDC   3, 361(5)  push array parameter
228: SUB   3, 6, 3  push array parameter
229: JLE   3, 16(5)  push array parameter
230: ST    0, 0(6)  push array parameter
231: LDA   6, 0(6)  preserve space for local vars
232: LDA   7, 94(5)  jump to procedure call
216: LDC   0, 233(5)  load return address into ac
217: LDA   6, -1(6)  push return address
218: LDC   3, 361(5)  push return address
219: SUB   3, 6, 3  push return address
220: JLE   3, 16(5)  push return address
221: ST    0, 0(6)  push return address
233: HALT  0, 0, 0  program ends
