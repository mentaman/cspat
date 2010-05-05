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
0: LDC   0, 315(5)  store array start address: 315
1: LDC   1, 314(5)  store array offset into ac2: 314
2: ST    0, 0(1)  store array offset
3: LDC   0, 318(5)  store array start address: 318
4: LDC   1, 317(5)  store array offset into ac2: 317
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
42: LDC   3, 320(5)  push -1
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
52: LDC   3, 320(5)  push 1
53: SUB   3, 6, 3  push 1
54: JLE   3, 19(5)  push 1
55: ST    2, 0(6)  push 1
46: LDA   7, 9(7)  jump to start parsing str
56: LDC   2, 0(5)  load 0 as initial result
57: LDA   6, -1(6)  push 0
58: LDC   3, 320(5)  push 0
59: SUB   3, 6, 3  push 0
60: JLE   3, 19(5)  push 0
61: ST    2, 0(6)  push 0
62: LD    2, 0(6)  pop result into AC3
63: LDA   6, 1(6)  pop result into AC3
64: LDC   3, 10(5)  load 10 into ac4
65: MUL   2, 2, 3  mul result with 10
66: LDA   6, -1(6)  push result
67: LDC   3, 320(5)  push result
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
79: LDC   3, 320(5)  push result
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
8: LDA   7, 97(5)  jump to start of the program
97: LDC   0, 0(5)  load integer 0
98: LDA   6, -1(6)  push array index
99: LDC   3, 320(5)  push array index
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
114: LD    1, 314(5)  load offset into ac2
115: ADD   0, 0, 1  compute final offset
116: LDA   6, -1(6)  push final offset
117: LDC   3, 320(5)  push final offset
118: SUB   3, 6, 3  push final offset
119: JLE   3, 19(5)  push final offset
120: ST    0, 0(6)  push final offset
121: LDC   0, 1(5)  load integer 1
122: LD    1, 0(6)  pop final offset
123: LDA   6, 1(6)  pop final offset
124: ST    0, 0(1)  store value into array static data
125: LDC   0, 0(5)  load integer 0
126: LDA   6, -1(6)  push array index
127: LDC   3, 320(5)  push array index
128: SUB   3, 6, 3  push array index
129: JLE   3, 19(5)  push array index
130: ST    0, 0(6)  push array index
131: LDC   0, 1(5)  push array dimension
132: LDC   0, 0(5)  load 0 to ac
133: LD    1, 0(6)  pop index
134: LDA   6, 1(6)  pop index
135: JLT   1, 9(5)  jump if index less than 0
136: LDC   3, 2(5)  load array size
137: SUB   3, 3, 1  sub max size with index
138: JLE   3, 9(5)  jump if index greater than size - 1
139: LDC   2, 1(5)  load size of subarray
140: MUL   1, 1, 2  compute 0 dim
141: ADD   0, 0, 1  add result
142: LD    1, 317(5)  load offset into ac2
143: ADD   0, 0, 1  compute final offset
144: LDA   6, -1(6)  push final offset
145: LDC   3, 320(5)  push final offset
146: SUB   3, 6, 3  push final offset
147: JLE   3, 19(5)  push final offset
148: ST    0, 0(6)  push final offset
149: LDC   0, 0(5)  load integer 0
150: LDA   6, -1(6)  push array index
151: LDC   3, 320(5)  push array index
152: SUB   3, 6, 3  push array index
153: JLE   3, 19(5)  push array index
154: ST    0, 0(6)  push array index
155: LDC   0, 1(5)  push array dimension
156: LDC   0, 0(5)  load 0 to ac
157: LD    1, 0(6)  pop index
158: LDA   6, 1(6)  pop index
159: JLT   1, 9(5)  jump if index less than 0
160: LDC   3, 2(5)  load array size
161: SUB   3, 3, 1  sub max size with index
162: JLE   3, 9(5)  jump if index greater than size - 1
163: LDC   2, 1(5)  load size of subarray
164: MUL   1, 1, 2  compute 0 dim
165: ADD   0, 0, 1  add result
166: LD    1, 314(5)  load global offset into ac2
167: ADD   0, 0, 1  compute final offset
168: LD    0, 0(0)  load data from array
169: LD    1, 0(6)  pop final offset
170: LDA   6, 1(6)  pop final offset
171: ST    0, 0(1)  store value into array static data
172: LDC   0, 0(5)  load integer 0
173: LDA   6, -1(6)  push array index
174: LDC   3, 320(5)  push array index
175: SUB   3, 6, 3  push array index
176: JLE   3, 19(5)  push array index
177: ST    0, 0(6)  push array index
178: LDC   0, 1(5)  push array dimension
179: LDC   0, 0(5)  load 0 to ac
180: LD    1, 0(6)  pop index
181: LDA   6, 1(6)  pop index
182: JLT   1, 9(5)  jump if index less than 0
183: LDC   3, 2(5)  load array size
184: SUB   3, 3, 1  sub max size with index
185: JLE   3, 9(5)  jump if index greater than size - 1
186: LDC   2, 1(5)  load size of subarray
187: MUL   1, 1, 2  compute 0 dim
188: ADD   0, 0, 1  add result
189: LD    1, 317(5)  load global offset into ac2
190: ADD   0, 0, 1  compute final offset
191: LD    0, 0(0)  load data from array
192: OUT   0, 0, 0  write integer
193: OUTNL 0, 0, 0  write new line
194: HALT  0, 0, 0  program ends
