.DATA    13
.SDATA   "out of memory"
.DATA    18
.SDATA   "array index error!"
0: LD    6, 0(5)  save stack pointer
1: LD    4, 0(5)  save frame pointer
3: LDC   0, 15(5)  load array error str address
4: LD    1, 0(0)  load str length into ac2
5: JEQ   1, 5(7)  output nothing when empty
6: LDA   0, 1(0)  increase offset
7: LD    2, 0(0)  load char into ac3
8: OUTC   2, 2, 2  write char
9: LDA   1, -1(1)  decrease length of remaining string in ac2
10: JNE   1, -5(7)  continue print if not yet finish
11: OUTNL 0, 0, 0  emit newline
12: HALT  0, 0, 0  stop because of array error
13: LDC   0, 1(5)  load out of memory str address
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
25: LDC   2, 0(5)  load 0 as initial result
26: LDA   6, -1(6)  push 0
27: LDC   3, 34(5)  push 0
28: SUB   3, 6, 3  push 0
29: JLE   3, 13(5)  push 0
30: ST    2, 0(6)  push 0
31: LD    2, 0(6)  pop result into AC3
32: LDA   6, 1(6)  pop result into AC3
33: LDC   3, 10(5)  load 10 into ac4
34: MUL   2, 2, 3  mul result with 10
35: LDA   6, -1(6)  push result
36: LDC   3, 34(5)  push result
37: SUB   3, 6, 3  push result
38: JLE   3, 13(5)  push result
39: ST    2, 0(6)  push result
40: LDA   0, 1(0)  increase str offset
41: LD    2, 0(0)  load char
42: LDC   3, 48(5)  load 48 into ac4
43: SUB   2, 2, 3  compute int value
44: LD    3, 0(6)  pop result into AC4
45: LDA   6, 1(6)  pop result into AC4
46: ADD   2, 2, 3  compute result
47: LDA   6, -1(6)  push result
48: LDC   3, 34(5)  push result
49: SUB   3, 6, 3  push result
50: JLE   3, 13(5)  push result
51: ST    2, 0(6)  push result
52: LDA   1, -1(1)  decrease str length
53: JNE   1, 31(5)  continue if str length
54: LD    0, 0(6)  pop result
55: LDA   6, 1(6)  pop result
56: ST    0, -2(4)  save to return value
57: LD    0, -2(4)  load int/bool/string offset as return value
58: LD    1, -1(4)  load return address
59: LDA   6, 0(4)  change sp to fp + 1
60: LD    4, 0(6)  restore fp
61: LDA   6, 1(6)  restore fp
62: LDA   7, 0(1)  jump to the return address
2: LDA   7, 63(5)  jump to start of the program
63: LDC   0, 6(5)  load integer 6
64: LDA   6, -1(6)  push first child's value
65: LDC   3, 34(5)  push first child's value
66: SUB   3, 6, 3  push first child's value
67: JLE   3, 13(5)  push first child's value
68: ST    0, 0(6)  push first child's value
69: LDC   0, 6(5)  load integer 6
70: LD    1, 0(6)  pop first child's value
71: LDA   6, 1(6)  pop first child's value
72: SUB   1, 1, 0  greater than
73: LDC   0, 1(5)  load 1 as true
74: JGE   1, 1(7)  skip load false
75: LDC   0, 0(5)  load 0 as false
77: LDC   0, 1(5)  load integer 1
78: OUT   0, 0, 0  write integer
79: OUTNL 0, 0, 0  write new line
76: JEQ   0, 4(7)  if expr not true
81: LDC   0, 1(5)  load integer 1
82: LDA   6, -1(6)  push first child's value
83: LDC   3, 34(5)  push first child's value
84: SUB   3, 6, 3  push first child's value
85: JLE   3, 13(5)  push first child's value
86: ST    0, 0(6)  push first child's value
87: LDC   0, 6(5)  load integer 6
88: LD    1, 0(6)  pop first child's value
89: LDA   6, 1(6)  pop first child's value
90: SUB   1, 1, 0  greater than
91: LDC   0, 1(5)  load 1 as true
92: JGE   1, 1(7)  skip load false
93: LDC   0, 0(5)  load 0 as false
95: LDC   0, 2(5)  load integer 2
96: OUT   0, 0, 0  write integer
97: OUTNL 0, 0, 0  write new line
94: JEQ   0, 4(7)  if expr not true
99: LDC   0, 6(5)  load integer 6
100: LDA   6, -1(6)  push first child's value
101: LDC   3, 34(5)  push first child's value
102: SUB   3, 6, 3  push first child's value
103: JLE   3, 13(5)  push first child's value
104: ST    0, 0(6)  push first child's value
105: LDC   0, 6(5)  load integer 6
106: LD    1, 0(6)  pop first child's value
107: LDA   6, 1(6)  pop first child's value
108: SUB   1, 1, 0  greater than
109: LDC   0, 1(5)  load 1 as true
110: JGE   1, 1(7)  skip load false
111: LDC   0, 0(5)  load 0 as false
113: LDC   0, 3(5)  load integer 3
114: OUT   0, 0, 0  write integer
115: OUTNL 0, 0, 0  write new line
112: JEQ   0, 4(7)  if expr not true
117: LDC   0, 4(5)  load integer 4
118: OUT   0, 0, 0  write integer
119: OUTNL 0, 0, 0  write new line
80: LDA   7, 39(7)  Jump to the end of if
98: LDA   7, 21(7)  Jump to the end of if
116: LDA   7, 3(7)  Jump to the end of if
120: LDC   0, 5(5)  load integer 5
121: OUT   0, 0, 0  write integer
122: OUTNL 0, 0, 0  write new line
123: LDC   0, 0(5)  load integer 0
124: LDA   6, -1(6)  push first child's value
125: LDC   3, 34(5)  push first child's value
126: SUB   3, 6, 3  push first child's value
127: JLE   3, 13(5)  push first child's value
128: ST    0, 0(6)  push first child's value
129: LDC   0, 6(5)  load integer 6
130: LD    1, 0(6)  pop first child's value
131: LDA   6, 1(6)  pop first child's value
132: SUB   1, 1, 0  greater than
133: LDC   0, 1(5)  load 1 as true
134: JGE   1, 1(7)  skip load false
135: LDC   0, 0(5)  load 0 as false
137: LDC   0, 1(5)  load integer 1
138: OUT   0, 0, 0  write integer
139: OUTNL 0, 0, 0  write new line
136: JEQ   0, 4(7)  if expr not true
141: LDC   0, 6(5)  load integer 6
142: LDA   6, -1(6)  push first child's value
143: LDC   3, 34(5)  push first child's value
144: SUB   3, 6, 3  push first child's value
145: JLE   3, 13(5)  push first child's value
146: ST    0, 0(6)  push first child's value
147: LDC   0, 6(5)  load integer 6
148: LD    1, 0(6)  pop first child's value
149: LDA   6, 1(6)  pop first child's value
150: SUB   1, 1, 0  greater than
151: LDC   0, 1(5)  load 1 as true
152: JGE   1, 1(7)  skip load false
153: LDC   0, 0(5)  load 0 as false
155: LDC   0, 2(5)  load integer 2
156: OUT   0, 0, 0  write integer
157: OUTNL 0, 0, 0  write new line
154: JEQ   0, 4(7)  if expr not true
159: LDC   0, 6(5)  load integer 6
160: LDA   6, -1(6)  push first child's value
161: LDC   3, 34(5)  push first child's value
162: SUB   3, 6, 3  push first child's value
163: JLE   3, 13(5)  push first child's value
164: ST    0, 0(6)  push first child's value
165: LDC   0, 6(5)  load integer 6
166: LD    1, 0(6)  pop first child's value
167: LDA   6, 1(6)  pop first child's value
168: SUB   1, 1, 0  greater than
169: LDC   0, 1(5)  load 1 as true
170: JGE   1, 1(7)  skip load false
171: LDC   0, 0(5)  load 0 as false
173: LDC   0, 3(5)  load integer 3
174: OUT   0, 0, 0  write integer
175: OUTNL 0, 0, 0  write new line
172: JEQ   0, 4(7)  if expr not true
177: LDC   0, 4(5)  load integer 4
178: OUT   0, 0, 0  write integer
179: OUTNL 0, 0, 0  write new line
140: LDA   7, 39(7)  Jump to the end of if
158: LDA   7, 21(7)  Jump to the end of if
176: LDA   7, 3(7)  Jump to the end of if
180: LDC   0, 5(5)  load integer 5
181: OUT   0, 0, 0  write integer
182: OUTNL 0, 0, 0  write new line
183: LDC   0, 0(5)  load integer 0
184: LDA   6, -1(6)  push first child's value
185: LDC   3, 34(5)  push first child's value
186: SUB   3, 6, 3  push first child's value
187: JLE   3, 13(5)  push first child's value
188: ST    0, 0(6)  push first child's value
189: LDC   0, 6(5)  load integer 6
190: LD    1, 0(6)  pop first child's value
191: LDA   6, 1(6)  pop first child's value
192: SUB   1, 1, 0  greater than
193: LDC   0, 1(5)  load 1 as true
194: JGE   1, 1(7)  skip load false
195: LDC   0, 0(5)  load 0 as false
197: LDC   0, 1(5)  load integer 1
198: OUT   0, 0, 0  write integer
199: OUTNL 0, 0, 0  write new line
196: JEQ   0, 4(7)  if expr not true
201: LDC   0, 1(5)  load integer 1
202: LDA   6, -1(6)  push first child's value
203: LDC   3, 34(5)  push first child's value
204: SUB   3, 6, 3  push first child's value
205: JLE   3, 13(5)  push first child's value
206: ST    0, 0(6)  push first child's value
207: LDC   0, 6(5)  load integer 6
208: LD    1, 0(6)  pop first child's value
209: LDA   6, 1(6)  pop first child's value
210: SUB   1, 1, 0  greater than
211: LDC   0, 1(5)  load 1 as true
212: JGE   1, 1(7)  skip load false
213: LDC   0, 0(5)  load 0 as false
215: LDC   0, 2(5)  load integer 2
216: OUT   0, 0, 0  write integer
217: OUTNL 0, 0, 0  write new line
214: JEQ   0, 4(7)  if expr not true
219: LDC   0, 6(5)  load integer 6
220: LDA   6, -1(6)  push first child's value
221: LDC   3, 34(5)  push first child's value
222: SUB   3, 6, 3  push first child's value
223: JLE   3, 13(5)  push first child's value
224: ST    0, 0(6)  push first child's value
225: LDC   0, 6(5)  load integer 6
226: LD    1, 0(6)  pop first child's value
227: LDA   6, 1(6)  pop first child's value
228: SUB   1, 1, 0  greater than
229: LDC   0, 1(5)  load 1 as true
230: JGE   1, 1(7)  skip load false
231: LDC   0, 0(5)  load 0 as false
233: LDC   0, 3(5)  load integer 3
234: OUT   0, 0, 0  write integer
235: OUTNL 0, 0, 0  write new line
232: JEQ   0, 4(7)  if expr not true
237: LDC   0, 4(5)  load integer 4
238: OUT   0, 0, 0  write integer
239: OUTNL 0, 0, 0  write new line
200: LDA   7, 39(7)  Jump to the end of if
218: LDA   7, 21(7)  Jump to the end of if
236: LDA   7, 3(7)  Jump to the end of if
240: LDC   0, 5(5)  load integer 5
241: OUT   0, 0, 0  write integer
242: OUTNL 0, 0, 0  write new line
243: LDC   0, 0(5)  load integer 0
244: LDA   6, -1(6)  push first child's value
245: LDC   3, 34(5)  push first child's value
246: SUB   3, 6, 3  push first child's value
247: JLE   3, 13(5)  push first child's value
248: ST    0, 0(6)  push first child's value
249: LDC   0, 6(5)  load integer 6
250: LD    1, 0(6)  pop first child's value
251: LDA   6, 1(6)  pop first child's value
252: SUB   1, 1, 0  greater than
253: LDC   0, 1(5)  load 1 as true
254: JGE   1, 1(7)  skip load false
255: LDC   0, 0(5)  load 0 as false
257: LDC   0, 1(5)  load integer 1
258: OUT   0, 0, 0  write integer
259: OUTNL 0, 0, 0  write new line
256: JEQ   0, 4(7)  if expr not true
261: LDC   0, 1(5)  load integer 1
262: LDA   6, -1(6)  push first child's value
263: LDC   3, 34(5)  push first child's value
264: SUB   3, 6, 3  push first child's value
265: JLE   3, 13(5)  push first child's value
266: ST    0, 0(6)  push first child's value
267: LDC   0, 6(5)  load integer 6
268: LD    1, 0(6)  pop first child's value
269: LDA   6, 1(6)  pop first child's value
270: SUB   1, 1, 0  greater than
271: LDC   0, 1(5)  load 1 as true
272: JGE   1, 1(7)  skip load false
273: LDC   0, 0(5)  load 0 as false
275: LDC   0, 2(5)  load integer 2
276: OUT   0, 0, 0  write integer
277: OUTNL 0, 0, 0  write new line
274: JEQ   0, 4(7)  if expr not true
279: LDC   0, 2(5)  load integer 2
280: LDA   6, -1(6)  push first child's value
281: LDC   3, 34(5)  push first child's value
282: SUB   3, 6, 3  push first child's value
283: JLE   3, 13(5)  push first child's value
284: ST    0, 0(6)  push first child's value
285: LDC   0, 6(5)  load integer 6
286: LD    1, 0(6)  pop first child's value
287: LDA   6, 1(6)  pop first child's value
288: SUB   1, 1, 0  greater than
289: LDC   0, 1(5)  load 1 as true
290: JGE   1, 1(7)  skip load false
291: LDC   0, 0(5)  load 0 as false
293: LDC   0, 3(5)  load integer 3
294: OUT   0, 0, 0  write integer
295: OUTNL 0, 0, 0  write new line
292: JEQ   0, 4(7)  if expr not true
297: LDC   0, 4(5)  load integer 4
298: OUT   0, 0, 0  write integer
299: OUTNL 0, 0, 0  write new line
260: LDA   7, 39(7)  Jump to the end of if
278: LDA   7, 21(7)  Jump to the end of if
296: LDA   7, 3(7)  Jump to the end of if
300: LDC   0, 5(5)  load integer 5
301: OUT   0, 0, 0  write integer
302: OUTNL 0, 0, 0  write new line
303: HALT  0, 0, 0  program ends
