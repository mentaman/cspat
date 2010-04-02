0: LD    6, 0(5)  save stack pointer
1: LD    4, 0(5)  save frame pointer
2: LDC   0, 5(5)  load integer 5
3: ST    0, 1(5)  store int into static data
4: LD    0, 1(5)  load int/bool from static data
5: LDA   6, -1(6)  push first child's value
6: ST    0, 0(6)  push first child's value
7: LDC   0, 1(5)  load integer 1
8: LD    1, 0(6)  pop first child's value
9: LDA   6, 1(6)  pop first child's value
10: SUB   1, 1, 0  greater than
11: LDC   0, 1(5)  load 1 as true
12: JLT   1, 1(7)  skip load false
13: LDC   0, 0(5)  load 0 as false
15: LDC   0, 49(5)  load char in ASCii: 49
16: LDA   6, -1(6)  push char into stack
17: ST    0, 0(6)  push char into stack
18: LDC   0, 32(5)  load char in ASCii: 32
19: LDA   6, -1(6)  push char into stack
20: ST    0, 0(6)  push char into stack
21: LDC   0, 60(5)  load char in ASCii: 60
22: LDA   6, -1(6)  push char into stack
23: ST    0, 0(6)  push char into stack
24: LDC   0, 32(5)  load char in ASCii: 32
25: LDA   6, -1(6)  push char into stack
26: ST    0, 0(6)  push char into stack
27: LDC   0, 105(5)  load char in ASCii: 105
28: LDA   6, -1(6)  push char into stack
29: ST    0, 0(6)  push char into stack
30: LDC   0, 5(5)  load string length 5
31: LD    1, 0(6)  pop char
32: LDA   6, 1(6)  pop char
33: OUTC   1, 1, 1  write char
34: LDA   0, -1(0)  decrease length of remaining string
35: JNE   0, -5(7)  continue print if not yet finish
36: OUTNL 0, 0, 0  write new line
14: JEQ   0, 23(7)  if expr not true
38: LD    0, 1(5)  load int/bool from static data
39: LDA   6, -1(6)  push first child's value
40: ST    0, 0(6)  push first child's value
41: LDC   0, 1(5)  load integer 1
42: LD    1, 0(6)  pop first child's value
43: LDA   6, 1(6)  pop first child's value
44: SUB   1, 1, 0  greater than
45: LDC   0, 1(5)  load 1 as true
46: JGT   1, 1(7)  skip load false
47: LDC   0, 0(5)  load 0 as false
49: LDC   0, 49(5)  load char in ASCii: 49
50: LDA   6, -1(6)  push char into stack
51: ST    0, 0(6)  push char into stack
52: LDC   0, 32(5)  load char in ASCii: 32
53: LDA   6, -1(6)  push char into stack
54: ST    0, 0(6)  push char into stack
55: LDC   0, 62(5)  load char in ASCii: 62
56: LDA   6, -1(6)  push char into stack
57: ST    0, 0(6)  push char into stack
58: LDC   0, 32(5)  load char in ASCii: 32
59: LDA   6, -1(6)  push char into stack
60: ST    0, 0(6)  push char into stack
61: LDC   0, 105(5)  load char in ASCii: 105
62: LDA   6, -1(6)  push char into stack
63: ST    0, 0(6)  push char into stack
64: LDC   0, 5(5)  load string length 5
65: LD    1, 0(6)  pop char
66: LDA   6, 1(6)  pop char
67: OUTC   1, 1, 1  write char
68: LDA   0, -1(0)  decrease length of remaining string
69: JNE   0, -5(7)  continue print if not yet finish
70: OUTNL 0, 0, 0  write new line
48: JEQ   0, 23(7)  if expr not true
37: LDA   7, 34(7)  Jump to the end of if
71: LDA   7, 0(7)  Jump to the end of if
72: LDC   0, 112(5)  load char in ASCii: 112
73: LDA   6, -1(6)  push char into stack
74: ST    0, 0(6)  push char into stack
75: LDC   0, 111(5)  load char in ASCii: 111
76: LDA   6, -1(6)  push char into stack
77: ST    0, 0(6)  push char into stack
78: LDC   0, 111(5)  load char in ASCii: 111
79: LDA   6, -1(6)  push char into stack
80: ST    0, 0(6)  push char into stack
81: LDC   0, 108(5)  load char in ASCii: 108
82: LDA   6, -1(6)  push char into stack
83: ST    0, 0(6)  push char into stack
84: LDC   0, 32(5)  load char in ASCii: 32
85: LDA   6, -1(6)  push char into stack
86: ST    0, 0(6)  push char into stack
87: LDC   0, 116(5)  load char in ASCii: 116
88: LDA   6, -1(6)  push char into stack
89: ST    0, 0(6)  push char into stack
90: LDC   0, 115(5)  load char in ASCii: 115
91: LDA   6, -1(6)  push char into stack
92: ST    0, 0(6)  push char into stack
93: LDC   0, 49(5)  load char in ASCii: 49
94: LDA   6, -1(6)  push char into stack
95: ST    0, 0(6)  push char into stack
96: LDC   0, 32(5)  load char in ASCii: 32
97: LDA   6, -1(6)  push char into stack
98: ST    0, 0(6)  push char into stack
99: LDC   0, 102(5)  load char in ASCii: 102
100: LDA   6, -1(6)  push char into stack
101: ST    0, 0(6)  push char into stack
102: LDC   0, 111(5)  load char in ASCii: 111
103: LDA   6, -1(6)  push char into stack
104: ST    0, 0(6)  push char into stack
105: LDC   0, 32(5)  load char in ASCii: 32
106: LDA   6, -1(6)  push char into stack
107: ST    0, 0(6)  push char into stack
108: LDC   0, 116(5)  load char in ASCii: 116
109: LDA   6, -1(6)  push char into stack
110: ST    0, 0(6)  push char into stack
111: LDC   0, 117(5)  load char in ASCii: 117
112: LDA   6, -1(6)  push char into stack
113: ST    0, 0(6)  push char into stack
114: LDC   0, 111(5)  load char in ASCii: 111
115: LDA   6, -1(6)  push char into stack
116: ST    0, 0(6)  push char into stack
117: LDC   0, 15(5)  load string length 15
118: LD    1, 0(6)  pop char
119: LDA   6, 1(6)  pop char
120: OUTC   1, 1, 1  write char
121: LDA   0, -1(0)  decrease length of remaining string
122: JNE   0, -5(7)  continue print if not yet finish
123: OUTNL 0, 0, 0  write new line
124: LD    0, 1(5)  load int/bool from static data
125: LDA   6, -1(6)  push first child's value
126: ST    0, 0(6)  push first child's value
127: LDC   0, 1(5)  load integer 1
128: LD    1, 0(6)  pop first child's value
129: LDA   6, 1(6)  pop first child's value
130: SUB   1, 1, 0  greater than
131: LDC   0, 1(5)  load 1 as true
132: JLT   1, 1(7)  skip load false
133: LDC   0, 0(5)  load 0 as false
135: LDC   0, 49(5)  load char in ASCii: 49
136: LDA   6, -1(6)  push char into stack
137: ST    0, 0(6)  push char into stack
138: LDC   0, 32(5)  load char in ASCii: 32
139: LDA   6, -1(6)  push char into stack
140: ST    0, 0(6)  push char into stack
141: LDC   0, 60(5)  load char in ASCii: 60
142: LDA   6, -1(6)  push char into stack
143: ST    0, 0(6)  push char into stack
144: LDC   0, 32(5)  load char in ASCii: 32
145: LDA   6, -1(6)  push char into stack
146: ST    0, 0(6)  push char into stack
147: LDC   0, 105(5)  load char in ASCii: 105
148: LDA   6, -1(6)  push char into stack
149: ST    0, 0(6)  push char into stack
150: LDC   0, 5(5)  load string length 5
151: LD    1, 0(6)  pop char
152: LDA   6, 1(6)  pop char
153: OUTC   1, 1, 1  write char
154: LDA   0, -1(0)  decrease length of remaining string
155: JNE   0, -5(7)  continue print if not yet finish
156: OUTNL 0, 0, 0  write new line
134: JEQ   0, 23(7)  if expr not true
158: LD    0, 1(5)  load int/bool from static data
159: LDA   6, -1(6)  push first child's value
160: ST    0, 0(6)  push first child's value
161: LDC   0, 3(5)  load integer 3
162: LD    1, 0(6)  pop first child's value
163: LDA   6, 1(6)  pop first child's value
164: SUB   1, 1, 0  greater than
165: LDC   0, 1(5)  load 1 as true
166: JLT   1, 1(7)  skip load false
167: LDC   0, 0(5)  load 0 as false
169: LDC   0, 51(5)  load char in ASCii: 51
170: LDA   6, -1(6)  push char into stack
171: ST    0, 0(6)  push char into stack
172: LDC   0, 32(5)  load char in ASCii: 32
173: LDA   6, -1(6)  push char into stack
174: ST    0, 0(6)  push char into stack
175: LDC   0, 60(5)  load char in ASCii: 60
176: LDA   6, -1(6)  push char into stack
177: ST    0, 0(6)  push char into stack
178: LDC   0, 32(5)  load char in ASCii: 32
179: LDA   6, -1(6)  push char into stack
180: ST    0, 0(6)  push char into stack
181: LDC   0, 105(5)  load char in ASCii: 105
182: LDA   6, -1(6)  push char into stack
183: ST    0, 0(6)  push char into stack
184: LDC   0, 5(5)  load string length 5
185: LD    1, 0(6)  pop char
186: LDA   6, 1(6)  pop char
187: OUTC   1, 1, 1  write char
188: LDA   0, -1(0)  decrease length of remaining string
189: JNE   0, -5(7)  continue print if not yet finish
190: OUTNL 0, 0, 0  write new line
168: JEQ   0, 23(7)  if expr not true
192: LDC   0, 51(5)  load char in ASCii: 51
193: LDA   6, -1(6)  push char into stack
194: ST    0, 0(6)  push char into stack
195: LDC   0, 32(5)  load char in ASCii: 32
196: LDA   6, -1(6)  push char into stack
197: ST    0, 0(6)  push char into stack
198: LDC   0, 61(5)  load char in ASCii: 61
199: LDA   6, -1(6)  push char into stack
200: ST    0, 0(6)  push char into stack
201: LDC   0, 62(5)  load char in ASCii: 62
202: LDA   6, -1(6)  push char into stack
203: ST    0, 0(6)  push char into stack
204: LDC   0, 32(5)  load char in ASCii: 32
205: LDA   6, -1(6)  push char into stack
206: ST    0, 0(6)  push char into stack
207: LDC   0, 105(5)  load char in ASCii: 105
208: LDA   6, -1(6)  push char into stack
209: ST    0, 0(6)  push char into stack
210: LDC   0, 6(5)  load string length 6
211: LD    1, 0(6)  pop char
212: LDA   6, 1(6)  pop char
213: OUTC   1, 1, 1  write char
214: LDA   0, -1(0)  decrease length of remaining string
215: JNE   0, -5(7)  continue print if not yet finish
216: OUTNL 0, 0, 0  write new line
157: LDA   7, 59(7)  Jump to the end of if
191: LDA   7, 25(7)  Jump to the end of if
217: LDC   0, 112(5)  load char in ASCii: 112
218: LDA   6, -1(6)  push char into stack
219: ST    0, 0(6)  push char into stack
220: LDC   0, 111(5)  load char in ASCii: 111
221: LDA   6, -1(6)  push char into stack
222: ST    0, 0(6)  push char into stack
223: LDC   0, 111(5)  load char in ASCii: 111
224: LDA   6, -1(6)  push char into stack
225: ST    0, 0(6)  push char into stack
226: LDC   0, 108(5)  load char in ASCii: 108
227: LDA   6, -1(6)  push char into stack
228: ST    0, 0(6)  push char into stack
229: LDC   0, 32(5)  load char in ASCii: 32
230: LDA   6, -1(6)  push char into stack
231: ST    0, 0(6)  push char into stack
232: LDC   0, 100(5)  load char in ASCii: 100
233: LDA   6, -1(6)  push char into stack
234: ST    0, 0(6)  push char into stack
235: LDC   0, 110(5)  load char in ASCii: 110
236: LDA   6, -1(6)  push char into stack
237: ST    0, 0(6)  push char into stack
238: LDC   0, 50(5)  load char in ASCii: 50
239: LDA   6, -1(6)  push char into stack
240: ST    0, 0(6)  push char into stack
241: LDC   0, 32(5)  load char in ASCii: 32
242: LDA   6, -1(6)  push char into stack
243: ST    0, 0(6)  push char into stack
244: LDC   0, 102(5)  load char in ASCii: 102
245: LDA   6, -1(6)  push char into stack
246: ST    0, 0(6)  push char into stack
247: LDC   0, 111(5)  load char in ASCii: 111
248: LDA   6, -1(6)  push char into stack
249: ST    0, 0(6)  push char into stack
250: LDC   0, 32(5)  load char in ASCii: 32
251: LDA   6, -1(6)  push char into stack
252: ST    0, 0(6)  push char into stack
253: LDC   0, 116(5)  load char in ASCii: 116
254: LDA   6, -1(6)  push char into stack
255: ST    0, 0(6)  push char into stack
256: LDC   0, 117(5)  load char in ASCii: 117
257: LDA   6, -1(6)  push char into stack
258: ST    0, 0(6)  push char into stack
259: LDC   0, 111(5)  load char in ASCii: 111
260: LDA   6, -1(6)  push char into stack
261: ST    0, 0(6)  push char into stack
262: LDC   0, 15(5)  load string length 15
263: LD    1, 0(6)  pop char
264: LDA   6, 1(6)  pop char
265: OUTC   1, 1, 1  write char
266: LDA   0, -1(0)  decrease length of remaining string
267: JNE   0, -5(7)  continue print if not yet finish
268: OUTNL 0, 0, 0  write new line
269: HALT  0, 0, 0  program ends
