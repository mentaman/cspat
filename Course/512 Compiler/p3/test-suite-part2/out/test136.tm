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
0: LDC   0, 317(5)  store array start address: 317
1: LDC   1, 316(5)  store array offset into ac2: 316
2: ST    0, 0(1)  store array offset
3: LDC   0, 320(5)  store array start address: 320
4: LDC   1, 319(5)  store array offset into ac2: 319
5: ST    0, 0(1)  store array offset
6: LD    6, 0(5)  save stack pointer
7: LD    4, 0(5)  save frame pointer
9: LDC   0, 54(5)  load array error str address
10: LD    1, 0(0)  load str length into ac2
11: JEQ   1, 5(7)  output nothing when empty
12: LDA   0, 1(0)  increase offset
13: LD    2, 0(0)  load char into ac3
14: OUTC   2, 2, 2  write char
15: LDA   1, -1(1)  decrease length of remaining string in ac2
16: JNE   1, -5(7)  continue print if not yet finish
17: OUTNL 0, 0, 0  emit newline
18: HALT  0, 0, 0  stop because of array error
19: LDC   0, 148(5)  load out of memory str address
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
31: LDA   0, 1(0)  increase str offset
32: LD    2, 0(0)  load char
33: LDC   3, 43(5)  load 43(+) into ac4
34: SUB   3, 2, 3  sub 43(+)
36: LDC   3, 45(5)  load 45(-) into ac4
37: SUB   3, 2, 3  sub 45(-)
39: LDA   1, -1(1)  decrease str length
40: LDC   2, -1(5)  load -1 into ac3
41: LDA   6, -1(6)  push -1
42: LDC   3, 322(5)  push -1
43: SUB   3, 6, 3  push -1
44: JLE   3, 19(5)  push -1
45: ST    2, 0(6)  push -1
38: JNE   3, 8(7)  jump if not equal '-'
47: LDA   0, -1(0)  move back str offset
48: LDA   1, 1(1)  increase str length
35: JEQ   3, 13(7)  jump if equal '+'
49: LDA   1, -1(1)  decrease str length
50: LDC   2, 1(5)  load 1 into ac3
51: LDA   6, -1(6)  push 1
52: LDC   3, 322(5)  push 1
53: SUB   3, 6, 3  push 1
54: JLE   3, 19(5)  push 1
55: ST    2, 0(6)  push 1
46: LDA   7, 9(7)  jump to start parsing str
56: LDC   2, 0(5)  load 0 as initial result
57: LDA   6, -1(6)  push 0
58: LDC   3, 322(5)  push 0
59: SUB   3, 6, 3  push 0
60: JLE   3, 19(5)  push 0
61: ST    2, 0(6)  push 0
62: LD    2, 0(6)  pop result into AC3
63: LDA   6, 1(6)  pop result into AC3
64: LDC   3, 10(5)  load 10 into ac4
65: MUL   2, 2, 3  mul result with 10
66: LDA   6, -1(6)  push result
67: LDC   3, 322(5)  push result
68: SUB   3, 6, 3  push result
69: JLE   3, 19(5)  push result
70: ST    2, 0(6)  push result
71: LDA   0, 1(0)  increase str offset
72: LD    2, 0(0)  load char
73: LDC   3, 48(5)  load 48 into ac4
74: SUB   2, 2, 3  compute int value
75: LD    3, 0(6)  pop result into AC4
76: LDA   6, 1(6)  pop result into AC4
77: ADD   2, 2, 3  compute result
78: LDA   6, -1(6)  push result
79: LDC   3, 322(5)  push result
80: SUB   3, 6, 3  push result
81: JLE   3, 19(5)  push result
82: ST    2, 0(6)  push result
83: LDA   1, -1(1)  decrease str length
84: JNE   1, 62(5)  continue if str length
85: LD    0, 0(6)  pop result
86: LDA   6, 1(6)  pop result
87: LD    1, 0(6)  pop symbol
88: LDA   6, 1(6)  pop symbol
89: MUL   0, 0, 1  multiply symbol
90: ST    0, -2(4)  save to return value
91: LD    0, -2(4)  load int/bool/string offset as return value
92: LD    1, -1(4)  load return address
93: LDA   6, 0(4)  change sp to fp + 1
94: LD    4, 0(6)  restore fp
95: LDA   6, 1(6)  restore fp
96: LDA   7, 0(1)  jump to the return address
97: LDC   0, 0(5)  load integer 0
98: LDA   6, -1(6)  push array index
99: LDC   3, 322(5)  push array index
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
114: LDA   1, 0(4)  load fp into ac2
115: LD    1, -2(1)  load local offset into ac2
116: ADD   0, 0, 1  compute final offset
117: LDA   6, -1(6)  push final offset
118: LDC   3, 322(5)  push final offset
119: SUB   3, 6, 3  push final offset
120: JLE   3, 19(5)  push final offset
121: ST    0, 0(6)  push final offset
122: LDC   0, 4(5)  load integer 4
123: LD    1, 0(6)  pop final offset
124: LDA   6, 1(6)  pop final offset
125: ST    0, 0(1)  store value into array static data
126: LDC   0, 1(5)  load integer 1
127: LDA   6, -1(6)  push array index
128: LDC   3, 322(5)  push array index
129: SUB   3, 6, 3  push array index
130: JLE   3, 19(5)  push array index
131: ST    0, 0(6)  push array index
132: LDC   0, 1(5)  push array dimension
133: LDC   0, 0(5)  load 0 to ac
134: LD    1, 0(6)  pop index
135: LDA   6, 1(6)  pop index
136: JLT   1, 9(5)  jump if index less than 0
137: LDC   3, 2(5)  load array size
138: SUB   3, 3, 1  sub max size with index
139: JLE   3, 9(5)  jump if index greater than size - 1
140: LDC   2, 1(5)  load size of subarray
141: MUL   1, 1, 2  compute 0 dim
142: ADD   0, 0, 1  add result
143: LDA   1, 0(4)  load fp into ac2
144: LD    1, -3(1)  load local offset into ac2
145: ADD   0, 0, 1  compute final offset
146: LDA   6, -1(6)  push final offset
147: LDC   3, 322(5)  push final offset
148: SUB   3, 6, 3  push final offset
149: JLE   3, 19(5)  push final offset
150: ST    0, 0(6)  push final offset
151: LDC   0, 6(5)  load integer 6
152: LD    1, 0(6)  pop final offset
153: LDA   6, 1(6)  pop final offset
154: ST    0, 0(1)  store value into array static data
155: LD    1, -1(4)  load return address
156: LDA   6, 0(4)  change sp to fp + 1
157: LD    4, 0(6)  restore fp
158: LDA   6, 1(6)  restore fp
159: LDA   7, 0(1)  jump to the return address
8: LDA   7, 160(5)  jump to start of the program
160: LDA   6, -1(6)  push fp
161: LDC   3, 322(5)  push fp
162: SUB   3, 6, 3  push fp
163: JLE   3, 19(5)  push fp
164: ST    4, 0(6)  push fp
165: LDA   4, 0(6)  set fp to sp
172: LDC   0, 1(5)  push array dimension
173: LDC   0, 0(5)  load 0 to ac
174: LD    1, 319(5)  load global offset into ac2
175: ADD   0, 0, 1  compute final offset
176: LDA   6, -1(6)  push array parameter
177: LDC   3, 322(5)  push array parameter
178: SUB   3, 6, 3  push array parameter
179: JLE   3, 19(5)  push array parameter
180: ST    0, 0(6)  push array parameter
181: LDC   0, 1(5)  push array dimension
182: LDC   0, 0(5)  load 0 to ac
183: LD    1, 316(5)  load global offset into ac2
184: ADD   0, 0, 1  compute final offset
185: LDA   6, -1(6)  push array parameter
186: LDC   3, 322(5)  push array parameter
187: SUB   3, 6, 3  push array parameter
188: JLE   3, 19(5)  push array parameter
189: ST    0, 0(6)  push array parameter
190: LDA   6, 0(6)  preserve space for local vars
191: LDA   7, 97(5)  jump to procedure call
166: LDC   0, 192(5)  load return address into ac
167: LDA   6, -1(6)  push return address
168: LDC   3, 322(5)  push return address
169: SUB   3, 6, 3  push return address
170: JLE   3, 19(5)  push return address
171: ST    0, 0(6)  push return address
192: LDC   0, 0(5)  load integer 0
193: LDA   6, -1(6)  push array index
194: LDC   3, 322(5)  push array index
195: SUB   3, 6, 3  push array index
196: JLE   3, 19(5)  push array index
197: ST    0, 0(6)  push array index
198: LDC   0, 1(5)  push array dimension
199: LDC   0, 0(5)  load 0 to ac
200: LD    1, 0(6)  pop index
201: LDA   6, 1(6)  pop index
202: JLT   1, 9(5)  jump if index less than 0
203: LDC   3, 2(5)  load array size
204: SUB   3, 3, 1  sub max size with index
205: JLE   3, 9(5)  jump if index greater than size - 1
206: LDC   2, 1(5)  load size of subarray
207: MUL   1, 1, 2  compute 0 dim
208: ADD   0, 0, 1  add result
209: LD    1, 319(5)  load global offset into ac2
210: ADD   0, 0, 1  compute final offset
211: LD    0, 0(0)  load data from array
212: OUT   0, 0, 0  write integer
213: OUTNL 0, 0, 0  write new line
214: LDC   0, 1(5)  load integer 1
215: LDA   6, -1(6)  push array index
216: LDC   3, 322(5)  push array index
217: SUB   3, 6, 3  push array index
218: JLE   3, 19(5)  push array index
219: ST    0, 0(6)  push array index
220: LDC   0, 1(5)  push array dimension
221: LDC   0, 0(5)  load 0 to ac
222: LD    1, 0(6)  pop index
223: LDA   6, 1(6)  pop index
224: JLT   1, 9(5)  jump if index less than 0
225: LDC   3, 2(5)  load array size
226: SUB   3, 3, 1  sub max size with index
227: JLE   3, 9(5)  jump if index greater than size - 1
228: LDC   2, 1(5)  load size of subarray
229: MUL   1, 1, 2  compute 0 dim
230: ADD   0, 0, 1  add result
231: LD    1, 316(5)  load global offset into ac2
232: ADD   0, 0, 1  compute final offset
233: LD    0, 0(0)  load data from array
234: OUT   0, 0, 0  write integer
235: OUTNL 0, 0, 0  write new line
236: HALT  0, 0, 0  program ends
