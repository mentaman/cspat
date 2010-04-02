0: LD    6, 0(5)  save stack pointer
1: LD    4, 0(5)  save frame pointer
2: LDC   0, 5(5)  load integer 5
3: ST    0, 1(5)  store int into static data
4: LD    0, 1(5)  load int/bool from static data
5: LDA   6, -1(6)  push first child's value
6: ST    0, 0(6)  push first child's value
7: LDC   0, 0(5)  load integer 0
8: LD    1, 0(6)  pop first child's value
9: LDA   6, 1(6)  pop first child's value
10: SUB   1, 1, 0  greater than
11: LDC   0, 1(5)  load 1 as true
12: JGT   1, 1(7)  skip load false
13: LDC   0, 0(5)  load 0 as false
15: LD    0, 1(5)  load int/bool from static data
16: OUT   0, 0, 0  write integer
17: OUTNL 0, 0, 0  write new line
18: LD    0, 1(5)  load int/bool from static data
19: LDA   6, -1(6)  push first child's value
20: ST    0, 0(6)  push first child's value
21: LDC   0, 1(5)  load integer 1
22: LD    1, 0(6)  pop first child's value
23: LDA   6, 1(6)  pop first child's value
24: SUB   0, 1, 0  subtract two children
25: ST    0, 1(5)  store int into previous used static data
26: LD    0, 1(5)  load int/bool from static data
27: LDA   6, -1(6)  push first child's value
28: ST    0, 0(6)  push first child's value
29: LDC   0, 3(5)  load integer 3
30: LD    1, 0(6)  pop first child's value
31: LDA   6, 1(6)  pop first child's value
32: SUB   1, 1, 0  greater than
33: LDC   0, 1(5)  load 1 as true
34: JEQ   1, 1(7)  skip load false
35: LDC   0, 0(5)  load 0 as false
36: JEQ   0, 1(7)  if expr not true
38: LDA   7, -35(7)  jump back to loop start
14: JEQ   0, 24(7)  jump out of the do loop
37: LDA   7, 1(7)  break -> jump out of the do loop
39: LDC   0, 112(5)  load char in ASCii: 112
40: LDA   6, -1(6)  push char into stack
41: ST    0, 0(6)  push char into stack
42: LDC   0, 111(5)  load char in ASCii: 111
43: LDA   6, -1(6)  push char into stack
44: ST    0, 0(6)  push char into stack
45: LDC   0, 111(5)  load char in ASCii: 111
46: LDA   6, -1(6)  push char into stack
47: ST    0, 0(6)  push char into stack
48: LDC   0, 108(5)  load char in ASCii: 108
49: LDA   6, -1(6)  push char into stack
50: ST    0, 0(6)  push char into stack
51: LDC   0, 32(5)  load char in ASCii: 32
52: LDA   6, -1(6)  push char into stack
53: ST    0, 0(6)  push char into stack
54: LDC   0, 111(5)  load char in ASCii: 111
55: LDA   6, -1(6)  push char into stack
56: ST    0, 0(6)  push char into stack
57: LDC   0, 100(5)  load char in ASCii: 100
58: LDA   6, -1(6)  push char into stack
59: ST    0, 0(6)  push char into stack
60: LDC   0, 32(5)  load char in ASCii: 32
61: LDA   6, -1(6)  push char into stack
62: ST    0, 0(6)  push char into stack
63: LDC   0, 101(5)  load char in ASCii: 101
64: LDA   6, -1(6)  push char into stack
65: ST    0, 0(6)  push char into stack
66: LDC   0, 104(5)  load char in ASCii: 104
67: LDA   6, -1(6)  push char into stack
68: ST    0, 0(6)  push char into stack
69: LDC   0, 116(5)  load char in ASCii: 116
70: LDA   6, -1(6)  push char into stack
71: ST    0, 0(6)  push char into stack
72: LDC   0, 32(5)  load char in ASCii: 32
73: LDA   6, -1(6)  push char into stack
74: ST    0, 0(6)  push char into stack
75: LDC   0, 102(5)  load char in ASCii: 102
76: LDA   6, -1(6)  push char into stack
77: ST    0, 0(6)  push char into stack
78: LDC   0, 111(5)  load char in ASCii: 111
79: LDA   6, -1(6)  push char into stack
80: ST    0, 0(6)  push char into stack
81: LDC   0, 32(5)  load char in ASCii: 32
82: LDA   6, -1(6)  push char into stack
83: ST    0, 0(6)  push char into stack
84: LDC   0, 116(5)  load char in ASCii: 116
85: LDA   6, -1(6)  push char into stack
86: ST    0, 0(6)  push char into stack
87: LDC   0, 117(5)  load char in ASCii: 117
88: LDA   6, -1(6)  push char into stack
89: ST    0, 0(6)  push char into stack
90: LDC   0, 111(5)  load char in ASCii: 111
91: LDA   6, -1(6)  push char into stack
92: ST    0, 0(6)  push char into stack
93: LDC   0, 18(5)  load string length 18
94: LD    1, 0(6)  pop char
95: LDA   6, 1(6)  pop char
96: OUTC   1, 1, 1  write char
97: LDA   0, -1(0)  decrease length of remaining string
98: JNE   0, -5(7)  continue print if not yet finish
99: OUTNL 0, 0, 0  write new line
100: LDA   6, -1(6)  push fp
101: ST    4, 0(6)  push fp
102: LDA   4, 0(6)  set fp to sp
103: LDC   0, 1(5)  load integer 1
104: LDA   6, -1(6)  push low
105: ST    0, 0(6)  push low
106: LDC   0, 5(5)  load integer 5
107: LDA   6, -1(6)  push hi
108: ST    0, 0(6)  push hi
109: LD    0, -2(4)  load hi into ac 
110: LD    1, -1(4)  load low into ac2 
111: SUB   0, 0, 1  subtract hi with low
113: LDA   0, 0(4)  load fp into ac
114: LD    0, -1(0)  load int/bool from stack
115: OUT   0, 0, 0  write integer
116: OUTNL 0, 0, 0  write new line
117: LDA   0, 0(4)  load fp into ac
118: LD    0, -1(0)  load int/bool from stack
119: LDA   6, -1(6)  push first child's value
120: ST    0, 0(6)  push first child's value
121: LDC   0, 3(5)  load integer 3
122: LD    1, 0(6)  pop first child's value
123: LDA   6, 1(6)  pop first child's value
124: SUB   1, 1, 0  greater than
125: LDC   0, 1(5)  load 1 as true
126: JEQ   1, 1(7)  skip load false
127: LDC   0, 0(5)  load 0 as false
128: JEQ   0, 1(7)  if expr not true
130: LD    0, -1(4)  load low into ac
131: LDA   0, 1(0)  decrease low
132: ST    0, -1(4)  save low
133: LDA   7, -25(7)  jump back to loop start
112: JLT   0, 21(7)  jump out of the fa loop
129: LDA   7, 4(7)  break -> jump out of the do loop
134: LDA   6, 0(4)  change sp to fp + 1
135: LD    4, 0(6)  restore fp
136: LDA   6, 1(6)  restore fp
137: LDC   0, 112(5)  load char in ASCii: 112
138: LDA   6, -1(6)  push char into stack
139: ST    0, 0(6)  push char into stack
140: LDC   0, 111(5)  load char in ASCii: 111
141: LDA   6, -1(6)  push char into stack
142: ST    0, 0(6)  push char into stack
143: LDC   0, 111(5)  load char in ASCii: 111
144: LDA   6, -1(6)  push char into stack
145: ST    0, 0(6)  push char into stack
146: LDC   0, 108(5)  load char in ASCii: 108
147: LDA   6, -1(6)  push char into stack
148: ST    0, 0(6)  push char into stack
149: LDC   0, 32(5)  load char in ASCii: 32
150: LDA   6, -1(6)  push char into stack
151: ST    0, 0(6)  push char into stack
152: LDC   0, 97(5)  load char in ASCii: 97
153: LDA   6, -1(6)  push char into stack
154: ST    0, 0(6)  push char into stack
155: LDC   0, 102(5)  load char in ASCii: 102
156: LDA   6, -1(6)  push char into stack
157: ST    0, 0(6)  push char into stack
158: LDC   0, 32(5)  load char in ASCii: 32
159: LDA   6, -1(6)  push char into stack
160: ST    0, 0(6)  push char into stack
161: LDC   0, 101(5)  load char in ASCii: 101
162: LDA   6, -1(6)  push char into stack
163: ST    0, 0(6)  push char into stack
164: LDC   0, 104(5)  load char in ASCii: 104
165: LDA   6, -1(6)  push char into stack
166: ST    0, 0(6)  push char into stack
167: LDC   0, 116(5)  load char in ASCii: 116
168: LDA   6, -1(6)  push char into stack
169: ST    0, 0(6)  push char into stack
170: LDC   0, 32(5)  load char in ASCii: 32
171: LDA   6, -1(6)  push char into stack
172: ST    0, 0(6)  push char into stack
173: LDC   0, 102(5)  load char in ASCii: 102
174: LDA   6, -1(6)  push char into stack
175: ST    0, 0(6)  push char into stack
176: LDC   0, 111(5)  load char in ASCii: 111
177: LDA   6, -1(6)  push char into stack
178: ST    0, 0(6)  push char into stack
179: LDC   0, 32(5)  load char in ASCii: 32
180: LDA   6, -1(6)  push char into stack
181: ST    0, 0(6)  push char into stack
182: LDC   0, 116(5)  load char in ASCii: 116
183: LDA   6, -1(6)  push char into stack
184: ST    0, 0(6)  push char into stack
185: LDC   0, 117(5)  load char in ASCii: 117
186: LDA   6, -1(6)  push char into stack
187: ST    0, 0(6)  push char into stack
188: LDC   0, 111(5)  load char in ASCii: 111
189: LDA   6, -1(6)  push char into stack
190: ST    0, 0(6)  push char into stack
191: LDC   0, 18(5)  load string length 18
192: LD    1, 0(6)  pop char
193: LDA   6, 1(6)  pop char
194: OUTC   1, 1, 1  write char
195: LDA   0, -1(0)  decrease length of remaining string
196: JNE   0, -5(7)  continue print if not yet finish
197: OUTNL 0, 0, 0  write new line
198: HALT  0, 0, 0  program ends
