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
0: LD    6, 0(5)  save stack pointer
1: LD    4, 0(5)  save frame pointer
3: LDC   0, 58(5)  load array error str address
4: LD    1, 0(0)  load str length into ac2
5: JEQ   1, 5(7)  output nothing when empty
6: LDA   0, 1(0)  increase offset
7: LD    2, 0(0)  load char into ac3
8: OUTC   2, 2, 2  write char
9: LDA   1, -1(1)  decrease length of remaining string in ac2
10: JNE   1, -5(7)  continue print if not yet finish
11: OUTNL 0, 0, 0  emit newline
12: HALT  0, 0, 0  stop because of array error
13: LDC   0, 152(5)  load out of memory str address
14: LD    1, 0(0)  load str length into ac2
15: JEQ   1, 5(7)  output nothing when empty
16: LDA   0, 1(0)  increase offset
17: LD    2, 0(0)  load char into ac3
18: OUTC   2, 2, 2  write char
19: LDA   1, -1(1)  decrease length of remaining string in ac2
20: JNE   1, -5(7)  continue print if not yet finish
21: OUTNL 0, 0, 0  emit newline
22: HALT  0, 0, 0  stop because of out of memory error
23: LD    0, -3(4)  load str offset
24: LD    1, 0(0)  load str length
25: LDA   0, 1(0)  increase str offset
26: LD    2, 0(0)  load char
27: LDC   3, 43(5)  load 43(+) into ac4
28: SUB   3, 2, 3  sub 43(+)
30: LDC   3, 45(5)  load 45(-) into ac4
31: SUB   3, 2, 3  sub 45(-)
33: LDA   1, -1(1)  decrease str length
34: LDC   2, -1(5)  load -1 into ac3
35: LDA   6, -1(6)  push -1
36: LDC   3, 353(5)  push -1
37: SUB   3, 6, 3  push -1
38: JLE   3, 13(5)  push -1
39: ST    2, 0(6)  push -1
32: JNE   3, 8(7)  jump if not equal '-'
41: LDA   0, -1(0)  move back str offset
42: LDA   1, 1(1)  increase str length
29: JEQ   3, 13(7)  jump if equal '+'
43: LDA   1, -1(1)  decrease str length
44: LDC   2, 1(5)  load 1 into ac3
45: LDA   6, -1(6)  push 1
46: LDC   3, 353(5)  push 1
47: SUB   3, 6, 3  push 1
48: JLE   3, 13(5)  push 1
49: ST    2, 0(6)  push 1
40: LDA   7, 9(7)  jump to start parsing str
50: LDC   2, 0(5)  load 0 as initial result
51: LDA   6, -1(6)  push 0
52: LDC   3, 353(5)  push 0
53: SUB   3, 6, 3  push 0
54: JLE   3, 13(5)  push 0
55: ST    2, 0(6)  push 0
56: LD    2, 0(6)  pop result into AC3
57: LDA   6, 1(6)  pop result into AC3
58: LDC   3, 10(5)  load 10 into ac4
59: MUL   2, 2, 3  mul result with 10
60: LDA   6, -1(6)  push result
61: LDC   3, 353(5)  push result
62: SUB   3, 6, 3  push result
63: JLE   3, 13(5)  push result
64: ST    2, 0(6)  push result
65: LDA   0, 1(0)  increase str offset
66: LD    2, 0(0)  load char
67: LDC   3, 48(5)  load 48 into ac4
68: SUB   2, 2, 3  compute int value
69: LD    3, 0(6)  pop result into AC4
70: LDA   6, 1(6)  pop result into AC4
71: ADD   2, 2, 3  compute result
72: LDA   6, -1(6)  push result
73: LDC   3, 353(5)  push result
74: SUB   3, 6, 3  push result
75: JLE   3, 13(5)  push result
76: ST    2, 0(6)  push result
77: LDA   1, -1(1)  decrease str length
78: JNE   1, 56(5)  continue if str length
79: LD    0, 0(6)  pop result
80: LDA   6, 1(6)  pop result
81: LD    1, 0(6)  pop symbol
82: LDA   6, 1(6)  pop symbol
83: MUL   0, 0, 1  multiply symbol
84: ST    0, -2(4)  save to return value
85: LD    0, -2(4)  load int/bool/string offset as return value
86: LD    1, -1(4)  load return address
87: LDA   6, 0(4)  change sp to fp + 1
88: LD    4, 0(6)  restore fp
89: LDA   6, 1(6)  restore fp
90: LDA   7, 0(1)  jump to the return address
91: LDA   6, -1(6)  push fp
92: LDC   3, 353(5)  push fp
93: SUB   3, 6, 3  push fp
94: JLE   3, 13(5)  push fp
95: ST    4, 0(6)  push fp
96: LDA   4, 0(6)  set fp to sp
97: LDC   0, 0(5)  load integer 0
98: LDA   6, -1(6)  push low
99: LDC   3, 353(5)  push low
100: SUB   3, 6, 3  push low
101: JLE   3, 13(5)  push low
102: ST    0, 0(6)  push low
103: LDC   0, 1(5)  load integer 1
104: LDA   6, -1(6)  push hi
105: LDC   3, 353(5)  push hi
106: SUB   3, 6, 3  push hi
107: JLE   3, 13(5)  push hi
108: ST    0, 0(6)  push hi
109: LD    0, -2(4)  load hi into ac 
110: LD    1, -1(4)  load low into ac2 
111: SUB   0, 0, 1  subtract hi with low
113: LDA   1, 0(4)  load fp into ac2
114: LD    0, -1(1)  load int/bool/str from stack
115: OUT   0, 0, 0  write integer
116: LDC   0, 102(5)  load string offset 102
117: LD    1, 0(0)  load str length into ac2
118: JEQ   1, 5(7)  output nothing when empty
119: LDA   0, 1(0)  increase offset
120: LD    2, 0(0)  load char into ac3
121: OUTC   2, 2, 2  write char
122: LDA   1, -1(1)  decrease length of remaining string in ac2
123: JNE   1, -5(7)  continue print if not yet finish
124: LD    0, -1(4)  load low into ac
125: LDA   0, 1(0)  decrease low
126: ST    0, -1(4)  save low
127: LDA   7, -19(7)  jump back to loop start
112: JLT   0, 15(7)  jump out of the fa loop
128: LDA   6, 0(4)  change sp to fp + 1
129: LD    4, 0(6)  restore fp
130: LDA   6, 1(6)  restore fp
131: LDC   0, 102(5)  load string offset 102
132: LD    1, 0(0)  load str length into ac2
133: JEQ   1, 5(7)  output nothing when empty
134: LDA   0, 1(0)  increase offset
135: LD    2, 0(0)  load char into ac3
136: OUTC   2, 2, 2  write char
137: LDA   1, -1(1)  decrease length of remaining string in ac2
138: JNE   1, -5(7)  continue print if not yet finish
139: OUTNL 0, 0, 0  write new line
140: LD    1, -1(4)  load return address
141: LDA   6, 0(4)  change sp to fp + 1
142: LD    4, 0(6)  restore fp
143: LDA   6, 1(6)  restore fp
144: LDA   7, 0(1)  jump to the return address
2: LDA   7, 145(5)  jump to start of the program
145: LDA   6, -1(6)  push fp
146: LDC   3, 353(5)  push fp
147: SUB   3, 6, 3  push fp
148: JLE   3, 13(5)  push fp
149: ST    4, 0(6)  push fp
150: LDA   4, 0(6)  set fp to sp
151: LDC   0, 0(5)  load integer 0
152: LDA   6, -1(6)  push low
153: LDC   3, 353(5)  push low
154: SUB   3, 6, 3  push low
155: JLE   3, 13(5)  push low
156: ST    0, 0(6)  push low
157: LDC   0, 1(5)  load integer 1
158: LDA   6, -1(6)  push hi
159: LDC   3, 353(5)  push hi
160: SUB   3, 6, 3  push hi
161: JLE   3, 13(5)  push hi
162: ST    0, 0(6)  push hi
163: LD    0, -2(4)  load hi into ac 
164: LD    1, -1(4)  load low into ac2 
165: SUB   0, 0, 1  subtract hi with low
167: LDA   1, 0(4)  load fp into ac2
168: LD    0, -1(1)  load int/bool/str from stack
169: OUT   0, 0, 0  write integer
170: OUTNL 0, 0, 0  write new line
171: LDA   6, -1(6)  push fp
172: LDC   3, 353(5)  push fp
173: SUB   3, 6, 3  push fp
174: JLE   3, 13(5)  push fp
175: ST    4, 0(6)  push fp
176: LDA   4, 0(6)  set fp to sp
183: LDA   1, 0(4)  load fp into ac2
184: LD    1, 0(1)  load upper level fp into ac2
185: LD    0, -1(1)  load int/bool/str from stack
186: LDA   6, -1(6)  push int/bool/str parameter
187: LDC   3, 353(5)  push int/bool/str parameter
188: SUB   3, 6, 3  push int/bool/str parameter
189: JLE   3, 13(5)  push int/bool/str parameter
190: ST    0, 0(6)  push int/bool/str parameter
191: LDA   6, 0(6)  preserve space for local vars
192: LDA   7, 91(5)  jump to procedure call
177: LDC   0, 193(5)  load return address into ac
178: LDA   6, -1(6)  push return address
179: LDC   3, 353(5)  push return address
180: SUB   3, 6, 3  push return address
181: JLE   3, 13(5)  push return address
182: ST    0, 0(6)  push return address
193: LD    0, -1(4)  load low into ac
194: LDA   0, 1(0)  decrease low
195: ST    0, -1(4)  save low
196: LDA   7, -34(7)  jump back to loop start
166: JLT   0, 30(7)  jump out of the fa loop
197: LDA   6, 0(4)  change sp to fp + 1
198: LD    4, 0(6)  restore fp
199: LDA   6, 1(6)  restore fp
200: HALT  0, 0, 0  program ends
