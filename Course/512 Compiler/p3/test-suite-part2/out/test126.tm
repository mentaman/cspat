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
3: LD    6, 0(5)  save stack pointer
4: LD    4, 0(5)  save frame pointer
6: LDC   0, 54(5)  load array error str address
7: LD    1, 0(0)  load str length into ac2
8: JEQ   1, 5(7)  output nothing when empty
9: LDA   0, 1(0)  increase offset
10: LD    2, 0(0)  load char into ac3
11: OUTC   2, 2, 2  write char
12: LDA   1, -1(1)  decrease length of remaining string in ac2
13: JNE   1, -5(7)  continue print if not yet finish
14: OUTNL 0, 0, 0  emit newline
15: HALT  0, 0, 0  stop because of array error
16: LDC   0, 148(5)  load out of memory str address
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
39: LDC   3, 319(5)  push -1
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
49: LDC   3, 319(5)  push 1
50: SUB   3, 6, 3  push 1
51: JLE   3, 16(5)  push 1
52: ST    2, 0(6)  push 1
43: LDA   7, 9(7)  jump to start parsing str
53: LDC   2, 0(5)  load 0 as initial result
54: LDA   6, -1(6)  push 0
55: LDC   3, 319(5)  push 0
56: SUB   3, 6, 3  push 0
57: JLE   3, 16(5)  push 0
58: ST    2, 0(6)  push 0
59: LD    2, 0(6)  pop result into AC3
60: LDA   6, 1(6)  pop result into AC3
61: LDC   3, 10(5)  load 10 into ac4
62: MUL   2, 2, 3  mul result with 10
63: LDA   6, -1(6)  push result
64: LDC   3, 319(5)  push result
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
76: LDC   3, 319(5)  push result
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
94: LDC   0, 0(5)  load integer 0
95: LDA   6, -1(6)  push array index
96: LDC   3, 319(5)  push array index
97: SUB   3, 6, 3  push array index
98: JLE   3, 16(5)  push array index
99: ST    0, 0(6)  push array index
100: LDC   0, 0(5)  load integer 0
101: LDA   6, -1(6)  push array index
102: LDC   3, 319(5)  push array index
103: SUB   3, 6, 3  push array index
104: JLE   3, 16(5)  push array index
105: ST    0, 0(6)  push array index
106: LDC   0, 2(5)  push array dimension
107: LDC   0, 0(5)  load 0 to ac
108: LD    1, 0(6)  pop index
109: LDA   6, 1(6)  pop index
110: JLT   1, 6(5)  jump if index less than 0
111: LDC   3, 2(5)  load array size
112: SUB   3, 3, 1  sub max size with index
113: JLE   3, 6(5)  jump if index greater than size - 1
114: LDC   2, 2(5)  load size of subarray
115: MUL   1, 1, 2  compute 0 dim
116: ADD   0, 0, 1  add result
117: LD    1, 0(6)  pop index
118: LDA   6, 1(6)  pop index
119: JLT   1, 6(5)  jump if index less than 0
120: LDC   3, 2(5)  load array size
121: SUB   3, 3, 1  sub max size with index
122: JLE   3, 6(5)  jump if index greater than size - 1
123: LDC   2, 1(5)  load size of subarray
124: MUL   1, 1, 2  compute 1 dim
125: ADD   0, 0, 1  add result
126: LD    1, 314(5)  load offset into ac2
127: ADD   0, 0, 1  compute final offset
128: LDA   6, -1(6)  push final offset
129: LDC   3, 319(5)  push final offset
130: SUB   3, 6, 3  push final offset
131: JLE   3, 16(5)  push final offset
132: ST    0, 0(6)  push final offset
133: LDC   0, 127(5)  load integer 127
134: LD    1, 0(6)  pop final offset
135: LDA   6, 1(6)  pop final offset
136: ST    0, 0(1)  store value into array static data
137: LDC   0, 0(5)  load integer 0
138: LDA   6, -1(6)  push array index
139: LDC   3, 319(5)  push array index
140: SUB   3, 6, 3  push array index
141: JLE   3, 16(5)  push array index
142: ST    0, 0(6)  push array index
143: LDC   0, 0(5)  load integer 0
144: LDA   6, -1(6)  push array index
145: LDC   3, 319(5)  push array index
146: SUB   3, 6, 3  push array index
147: JLE   3, 16(5)  push array index
148: ST    0, 0(6)  push array index
149: LDC   0, 2(5)  push array dimension
150: LDC   0, 0(5)  load 0 to ac
151: LD    1, 0(6)  pop index
152: LDA   6, 1(6)  pop index
153: JLT   1, 6(5)  jump if index less than 0
154: LDC   3, 2(5)  load array size
155: SUB   3, 3, 1  sub max size with index
156: JLE   3, 6(5)  jump if index greater than size - 1
157: LDC   2, 2(5)  load size of subarray
158: MUL   1, 1, 2  compute 0 dim
159: ADD   0, 0, 1  add result
160: LD    1, 0(6)  pop index
161: LDA   6, 1(6)  pop index
162: JLT   1, 6(5)  jump if index less than 0
163: LDC   3, 2(5)  load array size
164: SUB   3, 3, 1  sub max size with index
165: JLE   3, 6(5)  jump if index greater than size - 1
166: LDC   2, 1(5)  load size of subarray
167: MUL   1, 1, 2  compute 1 dim
168: ADD   0, 0, 1  add result
169: LD    1, 314(5)  load global offset into ac2
170: ADD   0, 0, 1  compute final offset
171: LD    0, 0(0)  load data from array
172: OUT   0, 0, 0  write integer
173: OUTNL 0, 0, 0  write new line
174: HALT  0, 0, 0  program ends