.DATA 23	* string length
.SDATA "Arrays bounds violation"	* string constant
.DATA 19	* string length
.SDATA "Out of stack space "	* string constant
.DATA 0	* storage location (45) for var pi
.DATA 0	* storage location (45) for var pi
.DATA 0	* storage location (45) for var pi
.DATA 0	* storage location (45) for var pi
.DATA 0	* storage location (45) for var pi
.DATA 0	* storage location (45) for var pi
.DATA 0	* storage location (45) for var pi
.DATA 0	* storage location (45) for var pi
* BEGIN preamble
0: LDC 4, 0(0)	* initialize ZEROREG to 0
1: LD 5, 0(4)	* initialize SP to end of memory
2: LDA 5, -1(5)	* subtract one to get the true SP
3: LDA 6, 0(5)	* FP and SP start off the same
* END preamble
* BEGIN: load an int constant
4: LDC 0, 3(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: push to stack
5: LDA 3, -54(5)	* Subtract the stack limit from SP - store in ACC3
6: LDC 2, 50(0)	* Load diagnostic char into ACC2
7: JLE 3, 633(4)	* stack failure
8: ST 0, 0(5)	* save ACC0 into the current SP location
9: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: assignment
10: LDC 0, 45(0)	* Load the base address into ACC0
* BEGIN: push to stack
11: LDA 3, -54(5)	* Subtract the stack limit from SP - store in ACC3
12: LDC 2, 56(0)	* Load diagnostic char into ACC2
13: JLE 3, 633(4)	* stack failure
14: ST 0, 0(5)	* save ACC0 into the current SP location
15: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
16: LDC 0, 0(0)	* Load a constant into ACC0
* END: load an int constant
17: JLT 0, 622(4)	* array bounds too small
18: LDC 3, 4(0)	* Load the array bounds limit into ACC3
19: SUB 3, 0, 3	* Subtract the max from the current index
20: JGE 3, 622(4)	* array bounds too big
21: LDC 1, 2(0)	* Load the skip size into ACC1
22: MUL 1, 1, 0	* Multiply the index by the skip size and place the result back into ACC1
23: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
24: LD 0, 0(5)	* Load stored result into ACC0
25: ADD 0, 1, 0	* add the base (ACC0) and the skip size (ACC1) and put the result back in ACC0
* BEGIN: push to stack
26: LDA 3, -54(5)	* Subtract the stack limit from SP - store in ACC3
27: LDC 2, 56(0)	* Load diagnostic char into ACC2
28: JLE 3, 633(4)	* stack failure
29: ST 0, 0(5)	* save ACC0 into the current SP location
30: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
31: LDC 0, 0(0)	* Load a constant into ACC0
* END: load an int constant
32: JLT 0, 622(4)	* array bounds too small
33: LDC 3, 2(0)	* Load the array bounds limit into ACC3
34: SUB 3, 0, 3	* Subtract the max from the current index
35: JGE 3, 622(4)	* array bounds too big
36: LDC 1, 1(0)	* Load the skip size into ACC1
37: MUL 1, 1, 0	* Multiply the index by the skip size and place the result back into ACC1
38: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
39: LD 0, 0(5)	* Load stored result into ACC0
40: ADD 0, 1, 0	* add the base (ACC0) and the skip size (ACC1) and put the result back in ACC0
41: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
42: LD 1, 0(5)	* Load stored result into ACC1
43: ST 1, 0(0)	* Store ACC0 into global offset
* END: assignment
* BEGIN: load an int constant
44: LDC 0, 2(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: push to stack
45: LDA 3, -54(5)	* Subtract the stack limit from SP - store in ACC3
46: LDC 2, 50(0)	* Load diagnostic char into ACC2
47: JLE 3, 633(4)	* stack failure
48: ST 0, 0(5)	* save ACC0 into the current SP location
49: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: assignment
50: LDC 0, 45(0)	* Load the base address into ACC0
* BEGIN: push to stack
51: LDA 3, -54(5)	* Subtract the stack limit from SP - store in ACC3
52: LDC 2, 56(0)	* Load diagnostic char into ACC2
53: JLE 3, 633(4)	* stack failure
54: ST 0, 0(5)	* save ACC0 into the current SP location
55: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
56: LDC 0, 1(0)	* Load a constant into ACC0
* END: load an int constant
57: JLT 0, 622(4)	* array bounds too small
58: LDC 3, 4(0)	* Load the array bounds limit into ACC3
59: SUB 3, 0, 3	* Subtract the max from the current index
60: JGE 3, 622(4)	* array bounds too big
61: LDC 1, 2(0)	* Load the skip size into ACC1
62: MUL 1, 1, 0	* Multiply the index by the skip size and place the result back into ACC1
63: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
64: LD 0, 0(5)	* Load stored result into ACC0
65: ADD 0, 1, 0	* add the base (ACC0) and the skip size (ACC1) and put the result back in ACC0
* BEGIN: push to stack
66: LDA 3, -54(5)	* Subtract the stack limit from SP - store in ACC3
67: LDC 2, 56(0)	* Load diagnostic char into ACC2
68: JLE 3, 633(4)	* stack failure
69: ST 0, 0(5)	* save ACC0 into the current SP location
70: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
71: LDC 0, 0(0)	* Load a constant into ACC0
* END: load an int constant
72: JLT 0, 622(4)	* array bounds too small
73: LDC 3, 2(0)	* Load the array bounds limit into ACC3
74: SUB 3, 0, 3	* Subtract the max from the current index
75: JGE 3, 622(4)	* array bounds too big
76: LDC 1, 1(0)	* Load the skip size into ACC1
77: MUL 1, 1, 0	* Multiply the index by the skip size and place the result back into ACC1
78: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
79: LD 0, 0(5)	* Load stored result into ACC0
80: ADD 0, 1, 0	* add the base (ACC0) and the skip size (ACC1) and put the result back in ACC0
81: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
82: LD 1, 0(5)	* Load stored result into ACC1
83: ST 1, 0(0)	* Store ACC0 into global offset
* END: assignment
* BEGIN: load an int constant
84: LDC 0, 1(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: push to stack
85: LDA 3, -54(5)	* Subtract the stack limit from SP - store in ACC3
86: LDC 2, 50(0)	* Load diagnostic char into ACC2
87: JLE 3, 633(4)	* stack failure
88: ST 0, 0(5)	* save ACC0 into the current SP location
89: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: assignment
90: LDC 0, 45(0)	* Load the base address into ACC0
* BEGIN: push to stack
91: LDA 3, -54(5)	* Subtract the stack limit from SP - store in ACC3
92: LDC 2, 56(0)	* Load diagnostic char into ACC2
93: JLE 3, 633(4)	* stack failure
94: ST 0, 0(5)	* save ACC0 into the current SP location
95: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
96: LDC 0, 2(0)	* Load a constant into ACC0
* END: load an int constant
97: JLT 0, 622(4)	* array bounds too small
98: LDC 3, 4(0)	* Load the array bounds limit into ACC3
99: SUB 3, 0, 3	* Subtract the max from the current index
100: JGE 3, 622(4)	* array bounds too big
101: LDC 1, 2(0)	* Load the skip size into ACC1
102: MUL 1, 1, 0	* Multiply the index by the skip size and place the result back into ACC1
103: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
104: LD 0, 0(5)	* Load stored result into ACC0
105: ADD 0, 1, 0	* add the base (ACC0) and the skip size (ACC1) and put the result back in ACC0
* BEGIN: push to stack
106: LDA 3, -54(5)	* Subtract the stack limit from SP - store in ACC3
107: LDC 2, 56(0)	* Load diagnostic char into ACC2
108: JLE 3, 633(4)	* stack failure
109: ST 0, 0(5)	* save ACC0 into the current SP location
110: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
111: LDC 0, 0(0)	* Load a constant into ACC0
* END: load an int constant
112: JLT 0, 622(4)	* array bounds too small
113: LDC 3, 2(0)	* Load the array bounds limit into ACC3
114: SUB 3, 0, 3	* Subtract the max from the current index
115: JGE 3, 622(4)	* array bounds too big
116: LDC 1, 1(0)	* Load the skip size into ACC1
117: MUL 1, 1, 0	* Multiply the index by the skip size and place the result back into ACC1
118: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
119: LD 0, 0(5)	* Load stored result into ACC0
120: ADD 0, 1, 0	* add the base (ACC0) and the skip size (ACC1) and put the result back in ACC0
121: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
122: LD 1, 0(5)	* Load stored result into ACC1
123: ST 1, 0(0)	* Store ACC0 into global offset
* END: assignment
* BEGIN: load an int constant
124: LDC 0, 0(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: push to stack
125: LDA 3, -54(5)	* Subtract the stack limit from SP - store in ACC3
126: LDC 2, 50(0)	* Load diagnostic char into ACC2
127: JLE 3, 633(4)	* stack failure
128: ST 0, 0(5)	* save ACC0 into the current SP location
129: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: assignment
130: LDC 0, 45(0)	* Load the base address into ACC0
* BEGIN: push to stack
131: LDA 3, -54(5)	* Subtract the stack limit from SP - store in ACC3
132: LDC 2, 56(0)	* Load diagnostic char into ACC2
133: JLE 3, 633(4)	* stack failure
134: ST 0, 0(5)	* save ACC0 into the current SP location
135: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
136: LDC 0, 3(0)	* Load a constant into ACC0
* END: load an int constant
137: JLT 0, 622(4)	* array bounds too small
138: LDC 3, 4(0)	* Load the array bounds limit into ACC3
139: SUB 3, 0, 3	* Subtract the max from the current index
140: JGE 3, 622(4)	* array bounds too big
141: LDC 1, 2(0)	* Load the skip size into ACC1
142: MUL 1, 1, 0	* Multiply the index by the skip size and place the result back into ACC1
143: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
144: LD 0, 0(5)	* Load stored result into ACC0
145: ADD 0, 1, 0	* add the base (ACC0) and the skip size (ACC1) and put the result back in ACC0
* BEGIN: push to stack
146: LDA 3, -54(5)	* Subtract the stack limit from SP - store in ACC3
147: LDC 2, 56(0)	* Load diagnostic char into ACC2
148: JLE 3, 633(4)	* stack failure
149: ST 0, 0(5)	* save ACC0 into the current SP location
150: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
151: LDC 0, 0(0)	* Load a constant into ACC0
* END: load an int constant
152: JLT 0, 622(4)	* array bounds too small
153: LDC 3, 2(0)	* Load the array bounds limit into ACC3
154: SUB 3, 0, 3	* Subtract the max from the current index
155: JGE 3, 622(4)	* array bounds too big
156: LDC 1, 1(0)	* Load the skip size into ACC1
157: MUL 1, 1, 0	* Multiply the index by the skip size and place the result back into ACC1
158: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
159: LD 0, 0(5)	* Load stored result into ACC0
160: ADD 0, 1, 0	* add the base (ACC0) and the skip size (ACC1) and put the result back in ACC0
161: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
162: LD 1, 0(5)	* Load stored result into ACC1
163: ST 1, 0(0)	* Store ACC0 into global offset
* END: assignment
* BEGIN: load an int constant
164: LDC 0, 1(0)	* Load a constant into ACC0
* END: load an int constant
165: SUB 0, 4, 0	* Subtract ACC0 from ZEROREG to negate it
* BEGIN: push to stack
166: LDA 3, -54(5)	* Subtract the stack limit from SP - store in ACC3
167: LDC 2, 50(0)	* Load diagnostic char into ACC2
168: JLE 3, 633(4)	* stack failure
169: ST 0, 0(5)	* save ACC0 into the current SP location
170: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: assignment
171: LDC 0, 45(0)	* Load the base address into ACC0
* BEGIN: push to stack
172: LDA 3, -54(5)	* Subtract the stack limit from SP - store in ACC3
173: LDC 2, 56(0)	* Load diagnostic char into ACC2
174: JLE 3, 633(4)	* stack failure
175: ST 0, 0(5)	* save ACC0 into the current SP location
176: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
177: LDC 0, 0(0)	* Load a constant into ACC0
* END: load an int constant
178: JLT 0, 622(4)	* array bounds too small
179: LDC 3, 4(0)	* Load the array bounds limit into ACC3
180: SUB 3, 0, 3	* Subtract the max from the current index
181: JGE 3, 622(4)	* array bounds too big
182: LDC 1, 2(0)	* Load the skip size into ACC1
183: MUL 1, 1, 0	* Multiply the index by the skip size and place the result back into ACC1
184: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
185: LD 0, 0(5)	* Load stored result into ACC0
186: ADD 0, 1, 0	* add the base (ACC0) and the skip size (ACC1) and put the result back in ACC0
* BEGIN: push to stack
187: LDA 3, -54(5)	* Subtract the stack limit from SP - store in ACC3
188: LDC 2, 56(0)	* Load diagnostic char into ACC2
189: JLE 3, 633(4)	* stack failure
190: ST 0, 0(5)	* save ACC0 into the current SP location
191: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
192: LDC 0, 1(0)	* Load a constant into ACC0
* END: load an int constant
193: JLT 0, 622(4)	* array bounds too small
194: LDC 3, 2(0)	* Load the array bounds limit into ACC3
195: SUB 3, 0, 3	* Subtract the max from the current index
196: JGE 3, 622(4)	* array bounds too big
197: LDC 1, 1(0)	* Load the skip size into ACC1
198: MUL 1, 1, 0	* Multiply the index by the skip size and place the result back into ACC1
199: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
200: LD 0, 0(5)	* Load stored result into ACC0
201: ADD 0, 1, 0	* add the base (ACC0) and the skip size (ACC1) and put the result back in ACC0
202: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
203: LD 1, 0(5)	* Load stored result into ACC1
204: ST 1, 0(0)	* Store ACC0 into global offset
* END: assignment
* BEGIN: load an int constant
205: LDC 0, 2(0)	* Load a constant into ACC0
* END: load an int constant
206: SUB 0, 4, 0	* Subtract ACC0 from ZEROREG to negate it
* BEGIN: push to stack
207: LDA 3, -54(5)	* Subtract the stack limit from SP - store in ACC3
208: LDC 2, 50(0)	* Load diagnostic char into ACC2
209: JLE 3, 633(4)	* stack failure
210: ST 0, 0(5)	* save ACC0 into the current SP location
211: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: assignment
212: LDC 0, 45(0)	* Load the base address into ACC0
* BEGIN: push to stack
213: LDA 3, -54(5)	* Subtract the stack limit from SP - store in ACC3
214: LDC 2, 56(0)	* Load diagnostic char into ACC2
215: JLE 3, 633(4)	* stack failure
216: ST 0, 0(5)	* save ACC0 into the current SP location
217: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
218: LDC 0, 1(0)	* Load a constant into ACC0
* END: load an int constant
219: JLT 0, 622(4)	* array bounds too small
220: LDC 3, 4(0)	* Load the array bounds limit into ACC3
221: SUB 3, 0, 3	* Subtract the max from the current index
222: JGE 3, 622(4)	* array bounds too big
223: LDC 1, 2(0)	* Load the skip size into ACC1
224: MUL 1, 1, 0	* Multiply the index by the skip size and place the result back into ACC1
225: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
226: LD 0, 0(5)	* Load stored result into ACC0
227: ADD 0, 1, 0	* add the base (ACC0) and the skip size (ACC1) and put the result back in ACC0
* BEGIN: push to stack
228: LDA 3, -54(5)	* Subtract the stack limit from SP - store in ACC3
229: LDC 2, 56(0)	* Load diagnostic char into ACC2
230: JLE 3, 633(4)	* stack failure
231: ST 0, 0(5)	* save ACC0 into the current SP location
232: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
233: LDC 0, 1(0)	* Load a constant into ACC0
* END: load an int constant
234: JLT 0, 622(4)	* array bounds too small
235: LDC 3, 2(0)	* Load the array bounds limit into ACC3
236: SUB 3, 0, 3	* Subtract the max from the current index
237: JGE 3, 622(4)	* array bounds too big
238: LDC 1, 1(0)	* Load the skip size into ACC1
239: MUL 1, 1, 0	* Multiply the index by the skip size and place the result back into ACC1
240: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
241: LD 0, 0(5)	* Load stored result into ACC0
242: ADD 0, 1, 0	* add the base (ACC0) and the skip size (ACC1) and put the result back in ACC0
243: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
244: LD 1, 0(5)	* Load stored result into ACC1
245: ST 1, 0(0)	* Store ACC0 into global offset
* END: assignment
* BEGIN: load an int constant
246: LDC 0, 3(0)	* Load a constant into ACC0
* END: load an int constant
247: SUB 0, 4, 0	* Subtract ACC0 from ZEROREG to negate it
* BEGIN: push to stack
248: LDA 3, -54(5)	* Subtract the stack limit from SP - store in ACC3
249: LDC 2, 50(0)	* Load diagnostic char into ACC2
250: JLE 3, 633(4)	* stack failure
251: ST 0, 0(5)	* save ACC0 into the current SP location
252: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: assignment
253: LDC 0, 45(0)	* Load the base address into ACC0
* BEGIN: push to stack
254: LDA 3, -54(5)	* Subtract the stack limit from SP - store in ACC3
255: LDC 2, 56(0)	* Load diagnostic char into ACC2
256: JLE 3, 633(4)	* stack failure
257: ST 0, 0(5)	* save ACC0 into the current SP location
258: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
259: LDC 0, 2(0)	* Load a constant into ACC0
* END: load an int constant
260: JLT 0, 622(4)	* array bounds too small
261: LDC 3, 4(0)	* Load the array bounds limit into ACC3
262: SUB 3, 0, 3	* Subtract the max from the current index
263: JGE 3, 622(4)	* array bounds too big
264: LDC 1, 2(0)	* Load the skip size into ACC1
265: MUL 1, 1, 0	* Multiply the index by the skip size and place the result back into ACC1
266: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
267: LD 0, 0(5)	* Load stored result into ACC0
268: ADD 0, 1, 0	* add the base (ACC0) and the skip size (ACC1) and put the result back in ACC0
* BEGIN: push to stack
269: LDA 3, -54(5)	* Subtract the stack limit from SP - store in ACC3
270: LDC 2, 56(0)	* Load diagnostic char into ACC2
271: JLE 3, 633(4)	* stack failure
272: ST 0, 0(5)	* save ACC0 into the current SP location
273: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
274: LDC 0, 1(0)	* Load a constant into ACC0
* END: load an int constant
275: JLT 0, 622(4)	* array bounds too small
276: LDC 3, 2(0)	* Load the array bounds limit into ACC3
277: SUB 3, 0, 3	* Subtract the max from the current index
278: JGE 3, 622(4)	* array bounds too big
279: LDC 1, 1(0)	* Load the skip size into ACC1
280: MUL 1, 1, 0	* Multiply the index by the skip size and place the result back into ACC1
281: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
282: LD 0, 0(5)	* Load stored result into ACC0
283: ADD 0, 1, 0	* add the base (ACC0) and the skip size (ACC1) and put the result back in ACC0
284: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
285: LD 1, 0(5)	* Load stored result into ACC1
286: ST 1, 0(0)	* Store ACC0 into global offset
* END: assignment
* BEGIN: load an int constant
287: LDC 0, 4(0)	* Load a constant into ACC0
* END: load an int constant
288: SUB 0, 4, 0	* Subtract ACC0 from ZEROREG to negate it
* BEGIN: push to stack
289: LDA 3, -54(5)	* Subtract the stack limit from SP - store in ACC3
290: LDC 2, 50(0)	* Load diagnostic char into ACC2
291: JLE 3, 633(4)	* stack failure
292: ST 0, 0(5)	* save ACC0 into the current SP location
293: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: assignment
294: LDC 0, 45(0)	* Load the base address into ACC0
* BEGIN: push to stack
295: LDA 3, -54(5)	* Subtract the stack limit from SP - store in ACC3
296: LDC 2, 56(0)	* Load diagnostic char into ACC2
297: JLE 3, 633(4)	* stack failure
298: ST 0, 0(5)	* save ACC0 into the current SP location
299: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
300: LDC 0, 3(0)	* Load a constant into ACC0
* END: load an int constant
301: JLT 0, 622(4)	* array bounds too small
302: LDC 3, 4(0)	* Load the array bounds limit into ACC3
303: SUB 3, 0, 3	* Subtract the max from the current index
304: JGE 3, 622(4)	* array bounds too big
305: LDC 1, 2(0)	* Load the skip size into ACC1
306: MUL 1, 1, 0	* Multiply the index by the skip size and place the result back into ACC1
307: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
308: LD 0, 0(5)	* Load stored result into ACC0
309: ADD 0, 1, 0	* add the base (ACC0) and the skip size (ACC1) and put the result back in ACC0
* BEGIN: push to stack
310: LDA 3, -54(5)	* Subtract the stack limit from SP - store in ACC3
311: LDC 2, 56(0)	* Load diagnostic char into ACC2
312: JLE 3, 633(4)	* stack failure
313: ST 0, 0(5)	* save ACC0 into the current SP location
314: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
315: LDC 0, 1(0)	* Load a constant into ACC0
* END: load an int constant
316: JLT 0, 622(4)	* array bounds too small
317: LDC 3, 2(0)	* Load the array bounds limit into ACC3
318: SUB 3, 0, 3	* Subtract the max from the current index
319: JGE 3, 622(4)	* array bounds too big
320: LDC 1, 1(0)	* Load the skip size into ACC1
321: MUL 1, 1, 0	* Multiply the index by the skip size and place the result back into ACC1
322: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
323: LD 0, 0(5)	* Load stored result into ACC0
324: ADD 0, 1, 0	* add the base (ACC0) and the skip size (ACC1) and put the result back in ACC0
325: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
326: LD 1, 0(5)	* Load stored result into ACC1
327: ST 1, 0(0)	* Store ACC0 into global offset
* END: assignment
* BEGIN: procedure call
328: LDA 0, 15(7)	* Get return address into ACC0
329: LDA 3, -57(5)	* Subtract the stack limit from SP - store in ACC3
330: LDC 2, 97(0)	* Load diagnostic char into ACC2
331: JLE 3, 633(4)	* stack failure
332: ST 0, 0(5)	* Store return address (in ACC0) to SP/FP
* return value sits at SP-1/FP-1
333: ST 5, -2(5)	* Store SP to SP-2/FP-2
334: ST 6, -3(5)	* Store FP to SP-3/FP-3
335: LDA 5, -4(5)	* decrement SP by 4 (i.e., 4 pushes)
* BEGIN: variable (rvalue) access
336: LDC 0, 45(0)	* Load the base address into ACC0
* END: variable (rvalue) access
337: LDA 3, -54(5)	* Subtract the stack limit from SP - store in ACC3
338: LDC 2, 98(0)	* Load diagnostic char into ACC2
339: JLE 3, 633(4)	* stack failure
340: ST 0, 0(5)	* Store param in slot
341: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
342: LDA 6, 5(5)	* Set FP to be the "pre-push of AR" SP
* SP already points to end of the AR
343: LDA 7, 347(4)	* Jump to the start of the proc
344: LD 5, -2(6)	* Restore SP from FP-2
345: LD 6, -3(6)	* Restore FP from FP-3
* END: procedure call
346: HALT 0, 0, 0	* End of Program
* BEGIN: procedure code
347: LDA 0, 0(0)	* NOOP to mark beginning of proc
* BEGIN: variable (rvalue) access
348: LD 0, -4(6)	* Load the base address out of the AR
* BEGIN: push to stack
349: LDA 3, -54(5)	* Subtract the stack limit from SP - store in ACC3
350: LDC 2, 56(0)	* Load diagnostic char into ACC2
351: JLE 3, 633(4)	* stack failure
352: ST 0, 0(5)	* save ACC0 into the current SP location
353: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
354: LDC 0, 0(0)	* Load a constant into ACC0
* END: load an int constant
355: JLT 0, 622(4)	* array bounds too small
356: LDC 3, 4(0)	* Load the array bounds limit into ACC3
357: SUB 3, 0, 3	* Subtract the max from the current index
358: JGE 3, 622(4)	* array bounds too big
359: LDC 1, 2(0)	* Load the skip size into ACC1
360: MUL 1, 1, 0	* Multiply the index by the skip size and place the result back into ACC1
361: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
362: LD 0, 0(5)	* Load stored result into ACC0
363: ADD 0, 1, 0	* add the base (ACC0) and the skip size (ACC1) and put the result back in ACC0
* BEGIN: push to stack
364: LDA 3, -54(5)	* Subtract the stack limit from SP - store in ACC3
365: LDC 2, 56(0)	* Load diagnostic char into ACC2
366: JLE 3, 633(4)	* stack failure
367: ST 0, 0(5)	* save ACC0 into the current SP location
368: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
369: LDC 0, 0(0)	* Load a constant into ACC0
* END: load an int constant
370: JLT 0, 622(4)	* array bounds too small
371: LDC 3, 2(0)	* Load the array bounds limit into ACC3
372: SUB 3, 0, 3	* Subtract the max from the current index
373: JGE 3, 622(4)	* array bounds too big
374: LDC 1, 1(0)	* Load the skip size into ACC1
375: MUL 1, 1, 0	* Multiply the index by the skip size and place the result back into ACC1
376: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
377: LD 0, 0(5)	* Load stored result into ACC0
378: ADD 0, 1, 0	* add the base (ACC0) and the skip size (ACC1) and put the result back in ACC0
379: LD 0, 0(0)	* Load the final dereferenced value into the specified register
* END: variable (rvalue) access
* BEGIN: write(s)
380: OUT 0, 0, 0	* write out the int value in ACC0
381: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
* BEGIN: variable (rvalue) access
382: LD 0, -4(6)	* Load the base address out of the AR
* BEGIN: push to stack
383: LDA 3, -54(5)	* Subtract the stack limit from SP - store in ACC3
384: LDC 2, 56(0)	* Load diagnostic char into ACC2
385: JLE 3, 633(4)	* stack failure
386: ST 0, 0(5)	* save ACC0 into the current SP location
387: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
388: LDC 0, 1(0)	* Load a constant into ACC0
* END: load an int constant
389: JLT 0, 622(4)	* array bounds too small
390: LDC 3, 4(0)	* Load the array bounds limit into ACC3
391: SUB 3, 0, 3	* Subtract the max from the current index
392: JGE 3, 622(4)	* array bounds too big
393: LDC 1, 2(0)	* Load the skip size into ACC1
394: MUL 1, 1, 0	* Multiply the index by the skip size and place the result back into ACC1
395: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
396: LD 0, 0(5)	* Load stored result into ACC0
397: ADD 0, 1, 0	* add the base (ACC0) and the skip size (ACC1) and put the result back in ACC0
* BEGIN: push to stack
398: LDA 3, -54(5)	* Subtract the stack limit from SP - store in ACC3
399: LDC 2, 56(0)	* Load diagnostic char into ACC2
400: JLE 3, 633(4)	* stack failure
401: ST 0, 0(5)	* save ACC0 into the current SP location
402: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
403: LDC 0, 0(0)	* Load a constant into ACC0
* END: load an int constant
404: JLT 0, 622(4)	* array bounds too small
405: LDC 3, 2(0)	* Load the array bounds limit into ACC3
406: SUB 3, 0, 3	* Subtract the max from the current index
407: JGE 3, 622(4)	* array bounds too big
408: LDC 1, 1(0)	* Load the skip size into ACC1
409: MUL 1, 1, 0	* Multiply the index by the skip size and place the result back into ACC1
410: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
411: LD 0, 0(5)	* Load stored result into ACC0
412: ADD 0, 1, 0	* add the base (ACC0) and the skip size (ACC1) and put the result back in ACC0
413: LD 0, 0(0)	* Load the final dereferenced value into the specified register
* END: variable (rvalue) access
* BEGIN: write(s)
414: OUT 0, 0, 0	* write out the int value in ACC0
415: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
* BEGIN: variable (rvalue) access
416: LD 0, -4(6)	* Load the base address out of the AR
* BEGIN: push to stack
417: LDA 3, -54(5)	* Subtract the stack limit from SP - store in ACC3
418: LDC 2, 56(0)	* Load diagnostic char into ACC2
419: JLE 3, 633(4)	* stack failure
420: ST 0, 0(5)	* save ACC0 into the current SP location
421: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
422: LDC 0, 2(0)	* Load a constant into ACC0
* END: load an int constant
423: JLT 0, 622(4)	* array bounds too small
424: LDC 3, 4(0)	* Load the array bounds limit into ACC3
425: SUB 3, 0, 3	* Subtract the max from the current index
426: JGE 3, 622(4)	* array bounds too big
427: LDC 1, 2(0)	* Load the skip size into ACC1
428: MUL 1, 1, 0	* Multiply the index by the skip size and place the result back into ACC1
429: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
430: LD 0, 0(5)	* Load stored result into ACC0
431: ADD 0, 1, 0	* add the base (ACC0) and the skip size (ACC1) and put the result back in ACC0
* BEGIN: push to stack
432: LDA 3, -54(5)	* Subtract the stack limit from SP - store in ACC3
433: LDC 2, 56(0)	* Load diagnostic char into ACC2
434: JLE 3, 633(4)	* stack failure
435: ST 0, 0(5)	* save ACC0 into the current SP location
436: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
437: LDC 0, 0(0)	* Load a constant into ACC0
* END: load an int constant
438: JLT 0, 622(4)	* array bounds too small
439: LDC 3, 2(0)	* Load the array bounds limit into ACC3
440: SUB 3, 0, 3	* Subtract the max from the current index
441: JGE 3, 622(4)	* array bounds too big
442: LDC 1, 1(0)	* Load the skip size into ACC1
443: MUL 1, 1, 0	* Multiply the index by the skip size and place the result back into ACC1
444: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
445: LD 0, 0(5)	* Load stored result into ACC0
446: ADD 0, 1, 0	* add the base (ACC0) and the skip size (ACC1) and put the result back in ACC0
447: LD 0, 0(0)	* Load the final dereferenced value into the specified register
* END: variable (rvalue) access
* BEGIN: write(s)
448: OUT 0, 0, 0	* write out the int value in ACC0
449: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
* BEGIN: variable (rvalue) access
450: LD 0, -4(6)	* Load the base address out of the AR
* BEGIN: push to stack
451: LDA 3, -54(5)	* Subtract the stack limit from SP - store in ACC3
452: LDC 2, 56(0)	* Load diagnostic char into ACC2
453: JLE 3, 633(4)	* stack failure
454: ST 0, 0(5)	* save ACC0 into the current SP location
455: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
456: LDC 0, 3(0)	* Load a constant into ACC0
* END: load an int constant
457: JLT 0, 622(4)	* array bounds too small
458: LDC 3, 4(0)	* Load the array bounds limit into ACC3
459: SUB 3, 0, 3	* Subtract the max from the current index
460: JGE 3, 622(4)	* array bounds too big
461: LDC 1, 2(0)	* Load the skip size into ACC1
462: MUL 1, 1, 0	* Multiply the index by the skip size and place the result back into ACC1
463: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
464: LD 0, 0(5)	* Load stored result into ACC0
465: ADD 0, 1, 0	* add the base (ACC0) and the skip size (ACC1) and put the result back in ACC0
* BEGIN: push to stack
466: LDA 3, -54(5)	* Subtract the stack limit from SP - store in ACC3
467: LDC 2, 56(0)	* Load diagnostic char into ACC2
468: JLE 3, 633(4)	* stack failure
469: ST 0, 0(5)	* save ACC0 into the current SP location
470: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
471: LDC 0, 0(0)	* Load a constant into ACC0
* END: load an int constant
472: JLT 0, 622(4)	* array bounds too small
473: LDC 3, 2(0)	* Load the array bounds limit into ACC3
474: SUB 3, 0, 3	* Subtract the max from the current index
475: JGE 3, 622(4)	* array bounds too big
476: LDC 1, 1(0)	* Load the skip size into ACC1
477: MUL 1, 1, 0	* Multiply the index by the skip size and place the result back into ACC1
478: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
479: LD 0, 0(5)	* Load stored result into ACC0
480: ADD 0, 1, 0	* add the base (ACC0) and the skip size (ACC1) and put the result back in ACC0
481: LD 0, 0(0)	* Load the final dereferenced value into the specified register
* END: variable (rvalue) access
* BEGIN: write(s)
482: OUT 0, 0, 0	* write out the int value in ACC0
483: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
* BEGIN: variable (rvalue) access
484: LD 0, -4(6)	* Load the base address out of the AR
* BEGIN: push to stack
485: LDA 3, -54(5)	* Subtract the stack limit from SP - store in ACC3
486: LDC 2, 56(0)	* Load diagnostic char into ACC2
487: JLE 3, 633(4)	* stack failure
488: ST 0, 0(5)	* save ACC0 into the current SP location
489: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
490: LDC 0, 0(0)	* Load a constant into ACC0
* END: load an int constant
491: JLT 0, 622(4)	* array bounds too small
492: LDC 3, 4(0)	* Load the array bounds limit into ACC3
493: SUB 3, 0, 3	* Subtract the max from the current index
494: JGE 3, 622(4)	* array bounds too big
495: LDC 1, 2(0)	* Load the skip size into ACC1
496: MUL 1, 1, 0	* Multiply the index by the skip size and place the result back into ACC1
497: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
498: LD 0, 0(5)	* Load stored result into ACC0
499: ADD 0, 1, 0	* add the base (ACC0) and the skip size (ACC1) and put the result back in ACC0
* BEGIN: push to stack
500: LDA 3, -54(5)	* Subtract the stack limit from SP - store in ACC3
501: LDC 2, 56(0)	* Load diagnostic char into ACC2
502: JLE 3, 633(4)	* stack failure
503: ST 0, 0(5)	* save ACC0 into the current SP location
504: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
505: LDC 0, 1(0)	* Load a constant into ACC0
* END: load an int constant
506: JLT 0, 622(4)	* array bounds too small
507: LDC 3, 2(0)	* Load the array bounds limit into ACC3
508: SUB 3, 0, 3	* Subtract the max from the current index
509: JGE 3, 622(4)	* array bounds too big
510: LDC 1, 1(0)	* Load the skip size into ACC1
511: MUL 1, 1, 0	* Multiply the index by the skip size and place the result back into ACC1
512: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
513: LD 0, 0(5)	* Load stored result into ACC0
514: ADD 0, 1, 0	* add the base (ACC0) and the skip size (ACC1) and put the result back in ACC0
515: LD 0, 0(0)	* Load the final dereferenced value into the specified register
* END: variable (rvalue) access
* BEGIN: write(s)
516: OUT 0, 0, 0	* write out the int value in ACC0
517: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
* BEGIN: variable (rvalue) access
518: LD 0, -4(6)	* Load the base address out of the AR
* BEGIN: push to stack
519: LDA 3, -54(5)	* Subtract the stack limit from SP - store in ACC3
520: LDC 2, 56(0)	* Load diagnostic char into ACC2
521: JLE 3, 633(4)	* stack failure
522: ST 0, 0(5)	* save ACC0 into the current SP location
523: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
524: LDC 0, 1(0)	* Load a constant into ACC0
* END: load an int constant
525: JLT 0, 622(4)	* array bounds too small
526: LDC 3, 4(0)	* Load the array bounds limit into ACC3
527: SUB 3, 0, 3	* Subtract the max from the current index
528: JGE 3, 622(4)	* array bounds too big
529: LDC 1, 2(0)	* Load the skip size into ACC1
530: MUL 1, 1, 0	* Multiply the index by the skip size and place the result back into ACC1
531: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
532: LD 0, 0(5)	* Load stored result into ACC0
533: ADD 0, 1, 0	* add the base (ACC0) and the skip size (ACC1) and put the result back in ACC0
* BEGIN: push to stack
534: LDA 3, -54(5)	* Subtract the stack limit from SP - store in ACC3
535: LDC 2, 56(0)	* Load diagnostic char into ACC2
536: JLE 3, 633(4)	* stack failure
537: ST 0, 0(5)	* save ACC0 into the current SP location
538: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
539: LDC 0, 1(0)	* Load a constant into ACC0
* END: load an int constant
540: JLT 0, 622(4)	* array bounds too small
541: LDC 3, 2(0)	* Load the array bounds limit into ACC3
542: SUB 3, 0, 3	* Subtract the max from the current index
543: JGE 3, 622(4)	* array bounds too big
544: LDC 1, 1(0)	* Load the skip size into ACC1
545: MUL 1, 1, 0	* Multiply the index by the skip size and place the result back into ACC1
546: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
547: LD 0, 0(5)	* Load stored result into ACC0
548: ADD 0, 1, 0	* add the base (ACC0) and the skip size (ACC1) and put the result back in ACC0
549: LD 0, 0(0)	* Load the final dereferenced value into the specified register
* END: variable (rvalue) access
* BEGIN: write(s)
550: OUT 0, 0, 0	* write out the int value in ACC0
551: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
* BEGIN: variable (rvalue) access
552: LD 0, -4(6)	* Load the base address out of the AR
* BEGIN: push to stack
553: LDA 3, -54(5)	* Subtract the stack limit from SP - store in ACC3
554: LDC 2, 56(0)	* Load diagnostic char into ACC2
555: JLE 3, 633(4)	* stack failure
556: ST 0, 0(5)	* save ACC0 into the current SP location
557: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
558: LDC 0, 2(0)	* Load a constant into ACC0
* END: load an int constant
559: JLT 0, 622(4)	* array bounds too small
560: LDC 3, 4(0)	* Load the array bounds limit into ACC3
561: SUB 3, 0, 3	* Subtract the max from the current index
562: JGE 3, 622(4)	* array bounds too big
563: LDC 1, 2(0)	* Load the skip size into ACC1
564: MUL 1, 1, 0	* Multiply the index by the skip size and place the result back into ACC1
565: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
566: LD 0, 0(5)	* Load stored result into ACC0
567: ADD 0, 1, 0	* add the base (ACC0) and the skip size (ACC1) and put the result back in ACC0
* BEGIN: push to stack
568: LDA 3, -54(5)	* Subtract the stack limit from SP - store in ACC3
569: LDC 2, 56(0)	* Load diagnostic char into ACC2
570: JLE 3, 633(4)	* stack failure
571: ST 0, 0(5)	* save ACC0 into the current SP location
572: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
573: LDC 0, 1(0)	* Load a constant into ACC0
* END: load an int constant
574: JLT 0, 622(4)	* array bounds too small
575: LDC 3, 2(0)	* Load the array bounds limit into ACC3
576: SUB 3, 0, 3	* Subtract the max from the current index
577: JGE 3, 622(4)	* array bounds too big
578: LDC 1, 1(0)	* Load the skip size into ACC1
579: MUL 1, 1, 0	* Multiply the index by the skip size and place the result back into ACC1
580: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
581: LD 0, 0(5)	* Load stored result into ACC0
582: ADD 0, 1, 0	* add the base (ACC0) and the skip size (ACC1) and put the result back in ACC0
583: LD 0, 0(0)	* Load the final dereferenced value into the specified register
* END: variable (rvalue) access
* BEGIN: write(s)
584: OUT 0, 0, 0	* write out the int value in ACC0
585: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
* BEGIN: variable (rvalue) access
586: LD 0, -4(6)	* Load the base address out of the AR
* BEGIN: push to stack
587: LDA 3, -54(5)	* Subtract the stack limit from SP - store in ACC3
588: LDC 2, 56(0)	* Load diagnostic char into ACC2
589: JLE 3, 633(4)	* stack failure
590: ST 0, 0(5)	* save ACC0 into the current SP location
591: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
592: LDC 0, 3(0)	* Load a constant into ACC0
* END: load an int constant
593: JLT 0, 622(4)	* array bounds too small
594: LDC 3, 4(0)	* Load the array bounds limit into ACC3
595: SUB 3, 0, 3	* Subtract the max from the current index
596: JGE 3, 622(4)	* array bounds too big
597: LDC 1, 2(0)	* Load the skip size into ACC1
598: MUL 1, 1, 0	* Multiply the index by the skip size and place the result back into ACC1
599: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
600: LD 0, 0(5)	* Load stored result into ACC0
601: ADD 0, 1, 0	* add the base (ACC0) and the skip size (ACC1) and put the result back in ACC0
* BEGIN: push to stack
602: LDA 3, -54(5)	* Subtract the stack limit from SP - store in ACC3
603: LDC 2, 56(0)	* Load diagnostic char into ACC2
604: JLE 3, 633(4)	* stack failure
605: ST 0, 0(5)	* save ACC0 into the current SP location
606: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
607: LDC 0, 1(0)	* Load a constant into ACC0
* END: load an int constant
608: JLT 0, 622(4)	* array bounds too small
609: LDC 3, 2(0)	* Load the array bounds limit into ACC3
610: SUB 3, 0, 3	* Subtract the max from the current index
611: JGE 3, 622(4)	* array bounds too big
612: LDC 1, 1(0)	* Load the skip size into ACC1
613: MUL 1, 1, 0	* Multiply the index by the skip size and place the result back into ACC1
614: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
615: LD 0, 0(5)	* Load stored result into ACC0
616: ADD 0, 1, 0	* add the base (ACC0) and the skip size (ACC1) and put the result back in ACC0
617: LD 0, 0(0)	* Load the final dereferenced value into the specified register
* END: variable (rvalue) access
* BEGIN: write(s)
618: OUT 0, 0, 0	* write out the int value in ACC0
619: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
620: LD 0, 0(6)	* Load the return address from the 1st slot in the AR to ACC0
621: LDA 7, 0(0)	* Return to calling location (stored in ACC0)
* END: procedure code
* BEGIN: array bounds message handler
622: LDC 0, 1(0)	* Load the error message into ACC0
623: LDA 1, 1(0)	* Increment the address stored in ACC0 to get the string's char location (put in ACC1)
624: LD 0, 0(0)	* Load the string size into ACC0
625: JEQ 0, 5(7)	* Jump to end when run out of string
626: LDA 0, -1(0)	* subtract one from string size
627: LD 2, 0(1)	* Load next char from string into ACC2
628: LDA 1, 1(1)	* increment pointer into string
629: OUTC 2, 0, 0	* Write out character in ACC2
630: LDA 7, -6(7)	* Go back to start of loop
631: OUTNL 0, 0, 0	* dump out the newline
632: HALT 0, 0, 0	* Halt for array bounds
* END: array bounds message handler
* BEGIN: stack limit message handler
633: LDC 0, 25(0)	* Load the error message into ACC0
634: LDA 1, 1(0)	* Increment the address stored in ACC0 to get the string's char location (put in ACC1)
635: LD 0, 0(0)	* Load the string size into ACC0
636: JEQ 0, 5(7)	* Jump to end when run out of string
637: LDA 0, -1(0)	* subtract one from string size
638: LD 3, 0(1)	* Load next char from string into ACC3
639: LDA 1, 1(1)	* increment pointer into string
640: OUTC 3, 0, 0	* Write out character in ACC3
641: LDA 7, -6(7)	* Go back to start of loop
642: OUTC 2, 0, 0	* Write out diagnostic char in ACC2
643: OUTNL 0, 0, 0	* dump out the newline
644: HALT 0, 0, 0	* Halt for stack limit
* END: stack limit message handler
