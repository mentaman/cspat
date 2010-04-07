.DATA 23	* string length
.SDATA "Arrays bounds violation"	* string constant
.DATA 19	* string length
.SDATA "Out of stack space "	* string constant
.DATA 0	* storage location (45) for var s
.DATA 0	* storage location (45) for var s
.DATA 0	* storage location (45) for var s
.DATA 0	* storage location (45) for var s
.DATA 0	* storage location (45) for var s
.DATA 0	* storage location (45) for var s
.DATA 0	* storage location (45) for var s
.DATA 0	* storage location (45) for var s
.DATA 0	* storage location (45) for var s
.DATA 0	* storage location (45) for var s
* BEGIN preamble
0: LDC 4, 0(0)	* initialize ZEROREG to 0
1: LD 5, 0(4)	* initialize SP to end of memory
2: LDA 5, -1(5)	* subtract one to get the true SP
3: LDA 6, 0(5)	* FP and SP start off the same
* END preamble
* BEGIN: load an int constant
4: LDC 0, 32(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: push to stack
5: LDA 3, -56(5)	* Subtract the stack limit from SP - store in ACC3
6: LDC 2, 50(0)	* Load diagnostic char into ACC2
7: JLE 3, 1567(4)	* stack failure
8: ST 0, 0(5)	* save ACC0 into the current SP location
9: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: assignment
10: LDC 0, 45(0)	* Load the base address into ACC0
* BEGIN: push to stack
11: LDA 3, -56(5)	* Subtract the stack limit from SP - store in ACC3
12: LDC 2, 56(0)	* Load diagnostic char into ACC2
13: JLE 3, 1567(4)	* stack failure
14: ST 0, 0(5)	* save ACC0 into the current SP location
15: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
16: LDC 0, 0(0)	* Load a constant into ACC0
* END: load an int constant
17: JLT 0, 1556(4)	* array bounds too small
18: LDC 3, 10(0)	* Load the array bounds limit into ACC3
19: SUB 3, 0, 3	* Subtract the max from the current index
20: JGE 3, 1556(4)	* array bounds too big
21: LDC 1, 1(0)	* Load the skip size into ACC1
22: MUL 1, 1, 0	* Multiply the index by the skip size and place the result back into ACC1
23: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
24: LD 0, 0(5)	* Load stored result into ACC0
25: ADD 0, 1, 0	* add the base (ACC0) and the skip size (ACC1) and put the result back in ACC0
26: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
27: LD 1, 0(5)	* Load stored result into ACC1
28: ST 1, 0(0)	* Store ACC0 into global offset
* END: assignment
* BEGIN: load an int constant
29: LDC 0, 45(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: push to stack
30: LDA 3, -56(5)	* Subtract the stack limit from SP - store in ACC3
31: LDC 2, 50(0)	* Load diagnostic char into ACC2
32: JLE 3, 1567(4)	* stack failure
33: ST 0, 0(5)	* save ACC0 into the current SP location
34: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: assignment
35: LDC 0, 45(0)	* Load the base address into ACC0
* BEGIN: push to stack
36: LDA 3, -56(5)	* Subtract the stack limit from SP - store in ACC3
37: LDC 2, 56(0)	* Load diagnostic char into ACC2
38: JLE 3, 1567(4)	* stack failure
39: ST 0, 0(5)	* save ACC0 into the current SP location
40: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
41: LDC 0, 1(0)	* Load a constant into ACC0
* END: load an int constant
42: JLT 0, 1556(4)	* array bounds too small
43: LDC 3, 10(0)	* Load the array bounds limit into ACC3
44: SUB 3, 0, 3	* Subtract the max from the current index
45: JGE 3, 1556(4)	* array bounds too big
46: LDC 1, 1(0)	* Load the skip size into ACC1
47: MUL 1, 1, 0	* Multiply the index by the skip size and place the result back into ACC1
48: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
49: LD 0, 0(5)	* Load stored result into ACC0
50: ADD 0, 1, 0	* add the base (ACC0) and the skip size (ACC1) and put the result back in ACC0
51: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
52: LD 1, 0(5)	* Load stored result into ACC1
53: ST 1, 0(0)	* Store ACC0 into global offset
* END: assignment
* BEGIN: load an int constant
54: LDC 0, 49(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: push to stack
55: LDA 3, -56(5)	* Subtract the stack limit from SP - store in ACC3
56: LDC 2, 50(0)	* Load diagnostic char into ACC2
57: JLE 3, 1567(4)	* stack failure
58: ST 0, 0(5)	* save ACC0 into the current SP location
59: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: assignment
60: LDC 0, 45(0)	* Load the base address into ACC0
* BEGIN: push to stack
61: LDA 3, -56(5)	* Subtract the stack limit from SP - store in ACC3
62: LDC 2, 56(0)	* Load diagnostic char into ACC2
63: JLE 3, 1567(4)	* stack failure
64: ST 0, 0(5)	* save ACC0 into the current SP location
65: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
66: LDC 0, 2(0)	* Load a constant into ACC0
* END: load an int constant
67: JLT 0, 1556(4)	* array bounds too small
68: LDC 3, 10(0)	* Load the array bounds limit into ACC3
69: SUB 3, 0, 3	* Subtract the max from the current index
70: JGE 3, 1556(4)	* array bounds too big
71: LDC 1, 1(0)	* Load the skip size into ACC1
72: MUL 1, 1, 0	* Multiply the index by the skip size and place the result back into ACC1
73: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
74: LD 0, 0(5)	* Load stored result into ACC0
75: ADD 0, 1, 0	* add the base (ACC0) and the skip size (ACC1) and put the result back in ACC0
76: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
77: LD 1, 0(5)	* Load stored result into ACC1
78: ST 1, 0(0)	* Store ACC0 into global offset
* END: assignment
* BEGIN: load an int constant
79: LDC 0, 48(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: push to stack
80: LDA 3, -56(5)	* Subtract the stack limit from SP - store in ACC3
81: LDC 2, 50(0)	* Load diagnostic char into ACC2
82: JLE 3, 1567(4)	* stack failure
83: ST 0, 0(5)	* save ACC0 into the current SP location
84: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: assignment
85: LDC 0, 45(0)	* Load the base address into ACC0
* BEGIN: push to stack
86: LDA 3, -56(5)	* Subtract the stack limit from SP - store in ACC3
87: LDC 2, 56(0)	* Load diagnostic char into ACC2
88: JLE 3, 1567(4)	* stack failure
89: ST 0, 0(5)	* save ACC0 into the current SP location
90: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
91: LDC 0, 3(0)	* Load a constant into ACC0
* END: load an int constant
92: JLT 0, 1556(4)	* array bounds too small
93: LDC 3, 10(0)	* Load the array bounds limit into ACC3
94: SUB 3, 0, 3	* Subtract the max from the current index
95: JGE 3, 1556(4)	* array bounds too big
96: LDC 1, 1(0)	* Load the skip size into ACC1
97: MUL 1, 1, 0	* Multiply the index by the skip size and place the result back into ACC1
98: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
99: LD 0, 0(5)	* Load stored result into ACC0
100: ADD 0, 1, 0	* add the base (ACC0) and the skip size (ACC1) and put the result back in ACC0
101: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
102: LD 1, 0(5)	* Load stored result into ACC1
103: ST 1, 0(0)	* Store ACC0 into global offset
* END: assignment
* BEGIN: load an int constant
104: LDC 0, 32(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: push to stack
105: LDA 3, -56(5)	* Subtract the stack limit from SP - store in ACC3
106: LDC 2, 50(0)	* Load diagnostic char into ACC2
107: JLE 3, 1567(4)	* stack failure
108: ST 0, 0(5)	* save ACC0 into the current SP location
109: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: assignment
110: LDC 0, 45(0)	* Load the base address into ACC0
* BEGIN: push to stack
111: LDA 3, -56(5)	* Subtract the stack limit from SP - store in ACC3
112: LDC 2, 56(0)	* Load diagnostic char into ACC2
113: JLE 3, 1567(4)	* stack failure
114: ST 0, 0(5)	* save ACC0 into the current SP location
115: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
116: LDC 0, 4(0)	* Load a constant into ACC0
* END: load an int constant
117: JLT 0, 1556(4)	* array bounds too small
118: LDC 3, 10(0)	* Load the array bounds limit into ACC3
119: SUB 3, 0, 3	* Subtract the max from the current index
120: JGE 3, 1556(4)	* array bounds too big
121: LDC 1, 1(0)	* Load the skip size into ACC1
122: MUL 1, 1, 0	* Multiply the index by the skip size and place the result back into ACC1
123: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
124: LD 0, 0(5)	* Load stored result into ACC0
125: ADD 0, 1, 0	* add the base (ACC0) and the skip size (ACC1) and put the result back in ACC0
126: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
127: LD 1, 0(5)	* Load stored result into ACC1
128: ST 1, 0(0)	* Store ACC0 into global offset
* END: assignment
* BEGIN: load an int constant
129: LDC 0, 49(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: push to stack
130: LDA 3, -56(5)	* Subtract the stack limit from SP - store in ACC3
131: LDC 2, 50(0)	* Load diagnostic char into ACC2
132: JLE 3, 1567(4)	* stack failure
133: ST 0, 0(5)	* save ACC0 into the current SP location
134: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: assignment
135: LDC 0, 45(0)	* Load the base address into ACC0
* BEGIN: push to stack
136: LDA 3, -56(5)	* Subtract the stack limit from SP - store in ACC3
137: LDC 2, 56(0)	* Load diagnostic char into ACC2
138: JLE 3, 1567(4)	* stack failure
139: ST 0, 0(5)	* save ACC0 into the current SP location
140: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
141: LDC 0, 5(0)	* Load a constant into ACC0
* END: load an int constant
142: JLT 0, 1556(4)	* array bounds too small
143: LDC 3, 10(0)	* Load the array bounds limit into ACC3
144: SUB 3, 0, 3	* Subtract the max from the current index
145: JGE 3, 1556(4)	* array bounds too big
146: LDC 1, 1(0)	* Load the skip size into ACC1
147: MUL 1, 1, 0	* Multiply the index by the skip size and place the result back into ACC1
148: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
149: LD 0, 0(5)	* Load stored result into ACC0
150: ADD 0, 1, 0	* add the base (ACC0) and the skip size (ACC1) and put the result back in ACC0
151: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
152: LD 1, 0(5)	* Load stored result into ACC1
153: ST 1, 0(0)	* Store ACC0 into global offset
* END: assignment
* BEGIN: procedure call
154: LDA 0, 49(7)	* Get return address into ACC0
155: LDA 3, -59(5)	* Subtract the stack limit from SP - store in ACC3
156: LDC 2, 97(0)	* Load diagnostic char into ACC2
157: JLE 3, 1567(4)	* stack failure
158: ST 0, 0(5)	* Store return address (in ACC0) to SP/FP
* return value sits at SP-1/FP-1
159: ST 5, -2(5)	* Store SP to SP-2/FP-2
160: ST 6, -3(5)	* Store FP to SP-3/FP-3
161: LDA 5, -4(5)	* decrement SP by 4 (i.e., 4 pushes)
162: LDA 3, -56(5)	* Subtract the stack limit from SP - store in ACC3
163: LDC 2, 99(0)	* Load diagnostic char into ACC2
164: JLE 3, 1567(4)	* stack failure
165: LDA 5, -1(5)	* decrement SP by local var's size (i.e., push)
* BEGIN: load an int constant
166: LDC 0, 5(0)	* Load a constant into ACC0
* END: load an int constant
167: LDA 3, -56(5)	* Subtract the stack limit from SP - store in ACC3
168: LDC 2, 98(0)	* Load diagnostic char into ACC2
169: JLE 3, 1567(4)	* stack failure
170: ST 0, 0(5)	* Store param in slot
171: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* BEGIN: variable (rvalue) access
172: LDC 0, 45(0)	* Load the base address into ACC0
* END: variable (rvalue) access
173: LDA 3, -56(5)	* Subtract the stack limit from SP - store in ACC3
174: LDC 2, 98(0)	* Load diagnostic char into ACC2
175: JLE 3, 1567(4)	* stack failure
176: ST 0, 0(5)	* Store param in slot
177: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
178: LDA 3, -56(5)	* Subtract the stack limit from SP - store in ACC3
179: LDC 2, 99(0)	* Load diagnostic char into ACC2
180: JLE 3, 1567(4)	* stack failure
181: LDA 5, -1(5)	* decrement SP by local var's size (i.e., push)
182: LDA 3, -56(5)	* Subtract the stack limit from SP - store in ACC3
183: LDC 2, 99(0)	* Load diagnostic char into ACC2
184: JLE 3, 1567(4)	* stack failure
185: LDA 5, -1(5)	* decrement SP by local var's size (i.e., push)
186: LDA 3, -56(5)	* Subtract the stack limit from SP - store in ACC3
187: LDC 2, 99(0)	* Load diagnostic char into ACC2
188: JLE 3, 1567(4)	* stack failure
189: LDA 5, -1(5)	* decrement SP by local var's size (i.e., push)
190: LDA 3, -56(5)	* Subtract the stack limit from SP - store in ACC3
191: LDC 2, 99(0)	* Load diagnostic char into ACC2
192: JLE 3, 1567(4)	* stack failure
193: LDA 5, -1(5)	* decrement SP by local var's size (i.e., push)
194: LDA 3, -56(5)	* Subtract the stack limit from SP - store in ACC3
195: LDC 2, 99(0)	* Load diagnostic char into ACC2
196: JLE 3, 1567(4)	* stack failure
197: LDA 5, -1(5)	* decrement SP by local var's size (i.e., push)
198: LDA 3, -56(5)	* Subtract the stack limit from SP - store in ACC3
199: LDC 2, 99(0)	* Load diagnostic char into ACC2
200: JLE 3, 1567(4)	* stack failure
201: LDA 5, -1(5)	* decrement SP by local var's size (i.e., push)
202: LDA 6, 13(5)	* Set FP to be the "pre-push of AR" SP
* SP already points to end of the AR
203: LDA 7, 965(4)	* Jump to the start of the proc
204: LD 0, -4(6)	* Load the return value into ACC0
205: LD 5, -2(6)	* Restore SP from FP-2
206: LD 6, -3(6)	* Restore FP from FP-3
* END: procedure call
* BEGIN: write(s)
207: OUT 0, 0, 0	* write out the int value in ACC0
208: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
* BEGIN: load an int constant
209: LDC 0, 49(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: push to stack
210: LDA 3, -56(5)	* Subtract the stack limit from SP - store in ACC3
211: LDC 2, 50(0)	* Load diagnostic char into ACC2
212: JLE 3, 1567(4)	* stack failure
213: ST 0, 0(5)	* save ACC0 into the current SP location
214: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: assignment
215: LDC 0, 45(0)	* Load the base address into ACC0
* BEGIN: push to stack
216: LDA 3, -56(5)	* Subtract the stack limit from SP - store in ACC3
217: LDC 2, 56(0)	* Load diagnostic char into ACC2
218: JLE 3, 1567(4)	* stack failure
219: ST 0, 0(5)	* save ACC0 into the current SP location
220: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
221: LDC 0, 0(0)	* Load a constant into ACC0
* END: load an int constant
222: JLT 0, 1556(4)	* array bounds too small
223: LDC 3, 10(0)	* Load the array bounds limit into ACC3
224: SUB 3, 0, 3	* Subtract the max from the current index
225: JGE 3, 1556(4)	* array bounds too big
226: LDC 1, 1(0)	* Load the skip size into ACC1
227: MUL 1, 1, 0	* Multiply the index by the skip size and place the result back into ACC1
228: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
229: LD 0, 0(5)	* Load stored result into ACC0
230: ADD 0, 1, 0	* add the base (ACC0) and the skip size (ACC1) and put the result back in ACC0
231: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
232: LD 1, 0(5)	* Load stored result into ACC1
233: ST 1, 0(0)	* Store ACC0 into global offset
* END: assignment
* BEGIN: load an int constant
234: LDC 0, 48(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: push to stack
235: LDA 3, -56(5)	* Subtract the stack limit from SP - store in ACC3
236: LDC 2, 50(0)	* Load diagnostic char into ACC2
237: JLE 3, 1567(4)	* stack failure
238: ST 0, 0(5)	* save ACC0 into the current SP location
239: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: assignment
240: LDC 0, 45(0)	* Load the base address into ACC0
* BEGIN: push to stack
241: LDA 3, -56(5)	* Subtract the stack limit from SP - store in ACC3
242: LDC 2, 56(0)	* Load diagnostic char into ACC2
243: JLE 3, 1567(4)	* stack failure
244: ST 0, 0(5)	* save ACC0 into the current SP location
245: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
246: LDC 0, 1(0)	* Load a constant into ACC0
* END: load an int constant
247: JLT 0, 1556(4)	* array bounds too small
248: LDC 3, 10(0)	* Load the array bounds limit into ACC3
249: SUB 3, 0, 3	* Subtract the max from the current index
250: JGE 3, 1556(4)	* array bounds too big
251: LDC 1, 1(0)	* Load the skip size into ACC1
252: MUL 1, 1, 0	* Multiply the index by the skip size and place the result back into ACC1
253: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
254: LD 0, 0(5)	* Load stored result into ACC0
255: ADD 0, 1, 0	* add the base (ACC0) and the skip size (ACC1) and put the result back in ACC0
256: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
257: LD 1, 0(5)	* Load stored result into ACC1
258: ST 1, 0(0)	* Store ACC0 into global offset
* END: assignment
* BEGIN: load an int constant
259: LDC 0, 49(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: push to stack
260: LDA 3, -56(5)	* Subtract the stack limit from SP - store in ACC3
261: LDC 2, 50(0)	* Load diagnostic char into ACC2
262: JLE 3, 1567(4)	* stack failure
263: ST 0, 0(5)	* save ACC0 into the current SP location
264: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: assignment
265: LDC 0, 45(0)	* Load the base address into ACC0
* BEGIN: push to stack
266: LDA 3, -56(5)	* Subtract the stack limit from SP - store in ACC3
267: LDC 2, 56(0)	* Load diagnostic char into ACC2
268: JLE 3, 1567(4)	* stack failure
269: ST 0, 0(5)	* save ACC0 into the current SP location
270: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
271: LDC 0, 2(0)	* Load a constant into ACC0
* END: load an int constant
272: JLT 0, 1556(4)	* array bounds too small
273: LDC 3, 10(0)	* Load the array bounds limit into ACC3
274: SUB 3, 0, 3	* Subtract the max from the current index
275: JGE 3, 1556(4)	* array bounds too big
276: LDC 1, 1(0)	* Load the skip size into ACC1
277: MUL 1, 1, 0	* Multiply the index by the skip size and place the result back into ACC1
278: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
279: LD 0, 0(5)	* Load stored result into ACC0
280: ADD 0, 1, 0	* add the base (ACC0) and the skip size (ACC1) and put the result back in ACC0
281: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
282: LD 1, 0(5)	* Load stored result into ACC1
283: ST 1, 0(0)	* Store ACC0 into global offset
* END: assignment
* BEGIN: procedure call
284: LDA 0, 49(7)	* Get return address into ACC0
285: LDA 3, -59(5)	* Subtract the stack limit from SP - store in ACC3
286: LDC 2, 97(0)	* Load diagnostic char into ACC2
287: JLE 3, 1567(4)	* stack failure
288: ST 0, 0(5)	* Store return address (in ACC0) to SP/FP
* return value sits at SP-1/FP-1
289: ST 5, -2(5)	* Store SP to SP-2/FP-2
290: ST 6, -3(5)	* Store FP to SP-3/FP-3
291: LDA 5, -4(5)	* decrement SP by 4 (i.e., 4 pushes)
292: LDA 3, -56(5)	* Subtract the stack limit from SP - store in ACC3
293: LDC 2, 99(0)	* Load diagnostic char into ACC2
294: JLE 3, 1567(4)	* stack failure
295: LDA 5, -1(5)	* decrement SP by local var's size (i.e., push)
* BEGIN: load an int constant
296: LDC 0, 2(0)	* Load a constant into ACC0
* END: load an int constant
297: LDA 3, -56(5)	* Subtract the stack limit from SP - store in ACC3
298: LDC 2, 98(0)	* Load diagnostic char into ACC2
299: JLE 3, 1567(4)	* stack failure
300: ST 0, 0(5)	* Store param in slot
301: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* BEGIN: variable (rvalue) access
302: LDC 0, 45(0)	* Load the base address into ACC0
* END: variable (rvalue) access
303: LDA 3, -56(5)	* Subtract the stack limit from SP - store in ACC3
304: LDC 2, 98(0)	* Load diagnostic char into ACC2
305: JLE 3, 1567(4)	* stack failure
306: ST 0, 0(5)	* Store param in slot
307: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
308: LDA 3, -56(5)	* Subtract the stack limit from SP - store in ACC3
309: LDC 2, 99(0)	* Load diagnostic char into ACC2
310: JLE 3, 1567(4)	* stack failure
311: LDA 5, -1(5)	* decrement SP by local var's size (i.e., push)
312: LDA 3, -56(5)	* Subtract the stack limit from SP - store in ACC3
313: LDC 2, 99(0)	* Load diagnostic char into ACC2
314: JLE 3, 1567(4)	* stack failure
315: LDA 5, -1(5)	* decrement SP by local var's size (i.e., push)
316: LDA 3, -56(5)	* Subtract the stack limit from SP - store in ACC3
317: LDC 2, 99(0)	* Load diagnostic char into ACC2
318: JLE 3, 1567(4)	* stack failure
319: LDA 5, -1(5)	* decrement SP by local var's size (i.e., push)
320: LDA 3, -56(5)	* Subtract the stack limit from SP - store in ACC3
321: LDC 2, 99(0)	* Load diagnostic char into ACC2
322: JLE 3, 1567(4)	* stack failure
323: LDA 5, -1(5)	* decrement SP by local var's size (i.e., push)
324: LDA 3, -56(5)	* Subtract the stack limit from SP - store in ACC3
325: LDC 2, 99(0)	* Load diagnostic char into ACC2
326: JLE 3, 1567(4)	* stack failure
327: LDA 5, -1(5)	* decrement SP by local var's size (i.e., push)
328: LDA 3, -56(5)	* Subtract the stack limit from SP - store in ACC3
329: LDC 2, 99(0)	* Load diagnostic char into ACC2
330: JLE 3, 1567(4)	* stack failure
331: LDA 5, -1(5)	* decrement SP by local var's size (i.e., push)
332: LDA 6, 13(5)	* Set FP to be the "pre-push of AR" SP
* SP already points to end of the AR
333: LDA 7, 965(4)	* Jump to the start of the proc
334: LD 0, -4(6)	* Load the return value into ACC0
335: LD 5, -2(6)	* Restore SP from FP-2
336: LD 6, -3(6)	* Restore FP from FP-3
* END: procedure call
* BEGIN: write(s)
337: OUT 0, 0, 0	* write out the int value in ACC0
338: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
* BEGIN: load an int constant
339: LDC 0, 49(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: push to stack
340: LDA 3, -56(5)	* Subtract the stack limit from SP - store in ACC3
341: LDC 2, 50(0)	* Load diagnostic char into ACC2
342: JLE 3, 1567(4)	* stack failure
343: ST 0, 0(5)	* save ACC0 into the current SP location
344: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: assignment
345: LDC 0, 45(0)	* Load the base address into ACC0
* BEGIN: push to stack
346: LDA 3, -56(5)	* Subtract the stack limit from SP - store in ACC3
347: LDC 2, 56(0)	* Load diagnostic char into ACC2
348: JLE 3, 1567(4)	* stack failure
349: ST 0, 0(5)	* save ACC0 into the current SP location
350: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
351: LDC 0, 0(0)	* Load a constant into ACC0
* END: load an int constant
352: JLT 0, 1556(4)	* array bounds too small
353: LDC 3, 10(0)	* Load the array bounds limit into ACC3
354: SUB 3, 0, 3	* Subtract the max from the current index
355: JGE 3, 1556(4)	* array bounds too big
356: LDC 1, 1(0)	* Load the skip size into ACC1
357: MUL 1, 1, 0	* Multiply the index by the skip size and place the result back into ACC1
358: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
359: LD 0, 0(5)	* Load stored result into ACC0
360: ADD 0, 1, 0	* add the base (ACC0) and the skip size (ACC1) and put the result back in ACC0
361: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
362: LD 1, 0(5)	* Load stored result into ACC1
363: ST 1, 0(0)	* Store ACC0 into global offset
* END: assignment
* BEGIN: load an int constant
364: LDC 0, 48(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: push to stack
365: LDA 3, -56(5)	* Subtract the stack limit from SP - store in ACC3
366: LDC 2, 50(0)	* Load diagnostic char into ACC2
367: JLE 3, 1567(4)	* stack failure
368: ST 0, 0(5)	* save ACC0 into the current SP location
369: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: assignment
370: LDC 0, 45(0)	* Load the base address into ACC0
* BEGIN: push to stack
371: LDA 3, -56(5)	* Subtract the stack limit from SP - store in ACC3
372: LDC 2, 56(0)	* Load diagnostic char into ACC2
373: JLE 3, 1567(4)	* stack failure
374: ST 0, 0(5)	* save ACC0 into the current SP location
375: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
376: LDC 0, 1(0)	* Load a constant into ACC0
* END: load an int constant
377: JLT 0, 1556(4)	* array bounds too small
378: LDC 3, 10(0)	* Load the array bounds limit into ACC3
379: SUB 3, 0, 3	* Subtract the max from the current index
380: JGE 3, 1556(4)	* array bounds too big
381: LDC 1, 1(0)	* Load the skip size into ACC1
382: MUL 1, 1, 0	* Multiply the index by the skip size and place the result back into ACC1
383: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
384: LD 0, 0(5)	* Load stored result into ACC0
385: ADD 0, 1, 0	* add the base (ACC0) and the skip size (ACC1) and put the result back in ACC0
386: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
387: LD 1, 0(5)	* Load stored result into ACC1
388: ST 1, 0(0)	* Store ACC0 into global offset
* END: assignment
* BEGIN: load an int constant
389: LDC 0, 32(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: push to stack
390: LDA 3, -56(5)	* Subtract the stack limit from SP - store in ACC3
391: LDC 2, 50(0)	* Load diagnostic char into ACC2
392: JLE 3, 1567(4)	* stack failure
393: ST 0, 0(5)	* save ACC0 into the current SP location
394: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: assignment
395: LDC 0, 45(0)	* Load the base address into ACC0
* BEGIN: push to stack
396: LDA 3, -56(5)	* Subtract the stack limit from SP - store in ACC3
397: LDC 2, 56(0)	* Load diagnostic char into ACC2
398: JLE 3, 1567(4)	* stack failure
399: ST 0, 0(5)	* save ACC0 into the current SP location
400: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
401: LDC 0, 2(0)	* Load a constant into ACC0
* END: load an int constant
402: JLT 0, 1556(4)	* array bounds too small
403: LDC 3, 10(0)	* Load the array bounds limit into ACC3
404: SUB 3, 0, 3	* Subtract the max from the current index
405: JGE 3, 1556(4)	* array bounds too big
406: LDC 1, 1(0)	* Load the skip size into ACC1
407: MUL 1, 1, 0	* Multiply the index by the skip size and place the result back into ACC1
408: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
409: LD 0, 0(5)	* Load stored result into ACC0
410: ADD 0, 1, 0	* add the base (ACC0) and the skip size (ACC1) and put the result back in ACC0
411: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
412: LD 1, 0(5)	* Load stored result into ACC1
413: ST 1, 0(0)	* Store ACC0 into global offset
* END: assignment
* BEGIN: load an int constant
414: LDC 0, 49(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: push to stack
415: LDA 3, -56(5)	* Subtract the stack limit from SP - store in ACC3
416: LDC 2, 50(0)	* Load diagnostic char into ACC2
417: JLE 3, 1567(4)	* stack failure
418: ST 0, 0(5)	* save ACC0 into the current SP location
419: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: assignment
420: LDC 0, 45(0)	* Load the base address into ACC0
* BEGIN: push to stack
421: LDA 3, -56(5)	* Subtract the stack limit from SP - store in ACC3
422: LDC 2, 56(0)	* Load diagnostic char into ACC2
423: JLE 3, 1567(4)	* stack failure
424: ST 0, 0(5)	* save ACC0 into the current SP location
425: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
426: LDC 0, 3(0)	* Load a constant into ACC0
* END: load an int constant
427: JLT 0, 1556(4)	* array bounds too small
428: LDC 3, 10(0)	* Load the array bounds limit into ACC3
429: SUB 3, 0, 3	* Subtract the max from the current index
430: JGE 3, 1556(4)	* array bounds too big
431: LDC 1, 1(0)	* Load the skip size into ACC1
432: MUL 1, 1, 0	* Multiply the index by the skip size and place the result back into ACC1
433: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
434: LD 0, 0(5)	* Load stored result into ACC0
435: ADD 0, 1, 0	* add the base (ACC0) and the skip size (ACC1) and put the result back in ACC0
436: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
437: LD 1, 0(5)	* Load stored result into ACC1
438: ST 1, 0(0)	* Store ACC0 into global offset
* END: assignment
* BEGIN: procedure call
439: LDA 0, 49(7)	* Get return address into ACC0
440: LDA 3, -59(5)	* Subtract the stack limit from SP - store in ACC3
441: LDC 2, 97(0)	* Load diagnostic char into ACC2
442: JLE 3, 1567(4)	* stack failure
443: ST 0, 0(5)	* Store return address (in ACC0) to SP/FP
* return value sits at SP-1/FP-1
444: ST 5, -2(5)	* Store SP to SP-2/FP-2
445: ST 6, -3(5)	* Store FP to SP-3/FP-3
446: LDA 5, -4(5)	* decrement SP by 4 (i.e., 4 pushes)
447: LDA 3, -56(5)	* Subtract the stack limit from SP - store in ACC3
448: LDC 2, 99(0)	* Load diagnostic char into ACC2
449: JLE 3, 1567(4)	* stack failure
450: LDA 5, -1(5)	* decrement SP by local var's size (i.e., push)
* BEGIN: load an int constant
451: LDC 0, 3(0)	* Load a constant into ACC0
* END: load an int constant
452: LDA 3, -56(5)	* Subtract the stack limit from SP - store in ACC3
453: LDC 2, 98(0)	* Load diagnostic char into ACC2
454: JLE 3, 1567(4)	* stack failure
455: ST 0, 0(5)	* Store param in slot
456: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* BEGIN: variable (rvalue) access
457: LDC 0, 45(0)	* Load the base address into ACC0
* END: variable (rvalue) access
458: LDA 3, -56(5)	* Subtract the stack limit from SP - store in ACC3
459: LDC 2, 98(0)	* Load diagnostic char into ACC2
460: JLE 3, 1567(4)	* stack failure
461: ST 0, 0(5)	* Store param in slot
462: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
463: LDA 3, -56(5)	* Subtract the stack limit from SP - store in ACC3
464: LDC 2, 99(0)	* Load diagnostic char into ACC2
465: JLE 3, 1567(4)	* stack failure
466: LDA 5, -1(5)	* decrement SP by local var's size (i.e., push)
467: LDA 3, -56(5)	* Subtract the stack limit from SP - store in ACC3
468: LDC 2, 99(0)	* Load diagnostic char into ACC2
469: JLE 3, 1567(4)	* stack failure
470: LDA 5, -1(5)	* decrement SP by local var's size (i.e., push)
471: LDA 3, -56(5)	* Subtract the stack limit from SP - store in ACC3
472: LDC 2, 99(0)	* Load diagnostic char into ACC2
473: JLE 3, 1567(4)	* stack failure
474: LDA 5, -1(5)	* decrement SP by local var's size (i.e., push)
475: LDA 3, -56(5)	* Subtract the stack limit from SP - store in ACC3
476: LDC 2, 99(0)	* Load diagnostic char into ACC2
477: JLE 3, 1567(4)	* stack failure
478: LDA 5, -1(5)	* decrement SP by local var's size (i.e., push)
479: LDA 3, -56(5)	* Subtract the stack limit from SP - store in ACC3
480: LDC 2, 99(0)	* Load diagnostic char into ACC2
481: JLE 3, 1567(4)	* stack failure
482: LDA 5, -1(5)	* decrement SP by local var's size (i.e., push)
483: LDA 3, -56(5)	* Subtract the stack limit from SP - store in ACC3
484: LDC 2, 99(0)	* Load diagnostic char into ACC2
485: JLE 3, 1567(4)	* stack failure
486: LDA 5, -1(5)	* decrement SP by local var's size (i.e., push)
487: LDA 6, 13(5)	* Set FP to be the "pre-push of AR" SP
* SP already points to end of the AR
488: LDA 7, 965(4)	* Jump to the start of the proc
489: LD 0, -4(6)	* Load the return value into ACC0
490: LD 5, -2(6)	* Restore SP from FP-2
491: LD 6, -3(6)	* Restore FP from FP-3
* END: procedure call
* BEGIN: write(s)
492: OUT 0, 0, 0	* write out the int value in ACC0
493: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
* BEGIN: load an int constant
494: LDC 0, 49(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: push to stack
495: LDA 3, -56(5)	* Subtract the stack limit from SP - store in ACC3
496: LDC 2, 50(0)	* Load diagnostic char into ACC2
497: JLE 3, 1567(4)	* stack failure
498: ST 0, 0(5)	* save ACC0 into the current SP location
499: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: assignment
500: LDC 0, 45(0)	* Load the base address into ACC0
* BEGIN: push to stack
501: LDA 3, -56(5)	* Subtract the stack limit from SP - store in ACC3
502: LDC 2, 56(0)	* Load diagnostic char into ACC2
503: JLE 3, 1567(4)	* stack failure
504: ST 0, 0(5)	* save ACC0 into the current SP location
505: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
506: LDC 0, 0(0)	* Load a constant into ACC0
* END: load an int constant
507: JLT 0, 1556(4)	* array bounds too small
508: LDC 3, 10(0)	* Load the array bounds limit into ACC3
509: SUB 3, 0, 3	* Subtract the max from the current index
510: JGE 3, 1556(4)	* array bounds too big
511: LDC 1, 1(0)	* Load the skip size into ACC1
512: MUL 1, 1, 0	* Multiply the index by the skip size and place the result back into ACC1
513: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
514: LD 0, 0(5)	* Load stored result into ACC0
515: ADD 0, 1, 0	* add the base (ACC0) and the skip size (ACC1) and put the result back in ACC0
516: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
517: LD 1, 0(5)	* Load stored result into ACC1
518: ST 1, 0(0)	* Store ACC0 into global offset
* END: assignment
* BEGIN: load an int constant
519: LDC 0, 45(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: push to stack
520: LDA 3, -56(5)	* Subtract the stack limit from SP - store in ACC3
521: LDC 2, 50(0)	* Load diagnostic char into ACC2
522: JLE 3, 1567(4)	* stack failure
523: ST 0, 0(5)	* save ACC0 into the current SP location
524: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: assignment
525: LDC 0, 45(0)	* Load the base address into ACC0
* BEGIN: push to stack
526: LDA 3, -56(5)	* Subtract the stack limit from SP - store in ACC3
527: LDC 2, 56(0)	* Load diagnostic char into ACC2
528: JLE 3, 1567(4)	* stack failure
529: ST 0, 0(5)	* save ACC0 into the current SP location
530: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
531: LDC 0, 1(0)	* Load a constant into ACC0
* END: load an int constant
532: JLT 0, 1556(4)	* array bounds too small
533: LDC 3, 10(0)	* Load the array bounds limit into ACC3
534: SUB 3, 0, 3	* Subtract the max from the current index
535: JGE 3, 1556(4)	* array bounds too big
536: LDC 1, 1(0)	* Load the skip size into ACC1
537: MUL 1, 1, 0	* Multiply the index by the skip size and place the result back into ACC1
538: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
539: LD 0, 0(5)	* Load stored result into ACC0
540: ADD 0, 1, 0	* add the base (ACC0) and the skip size (ACC1) and put the result back in ACC0
541: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
542: LD 1, 0(5)	* Load stored result into ACC1
543: ST 1, 0(0)	* Store ACC0 into global offset
* END: assignment
* BEGIN: load an int constant
544: LDC 0, 48(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: push to stack
545: LDA 3, -56(5)	* Subtract the stack limit from SP - store in ACC3
546: LDC 2, 50(0)	* Load diagnostic char into ACC2
547: JLE 3, 1567(4)	* stack failure
548: ST 0, 0(5)	* save ACC0 into the current SP location
549: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: assignment
550: LDC 0, 45(0)	* Load the base address into ACC0
* BEGIN: push to stack
551: LDA 3, -56(5)	* Subtract the stack limit from SP - store in ACC3
552: LDC 2, 56(0)	* Load diagnostic char into ACC2
553: JLE 3, 1567(4)	* stack failure
554: ST 0, 0(5)	* save ACC0 into the current SP location
555: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
556: LDC 0, 2(0)	* Load a constant into ACC0
* END: load an int constant
557: JLT 0, 1556(4)	* array bounds too small
558: LDC 3, 10(0)	* Load the array bounds limit into ACC3
559: SUB 3, 0, 3	* Subtract the max from the current index
560: JGE 3, 1556(4)	* array bounds too big
561: LDC 1, 1(0)	* Load the skip size into ACC1
562: MUL 1, 1, 0	* Multiply the index by the skip size and place the result back into ACC1
563: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
564: LD 0, 0(5)	* Load stored result into ACC0
565: ADD 0, 1, 0	* add the base (ACC0) and the skip size (ACC1) and put the result back in ACC0
566: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
567: LD 1, 0(5)	* Load stored result into ACC1
568: ST 1, 0(0)	* Store ACC0 into global offset
* END: assignment
* BEGIN: load an int constant
569: LDC 0, 49(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: push to stack
570: LDA 3, -56(5)	* Subtract the stack limit from SP - store in ACC3
571: LDC 2, 50(0)	* Load diagnostic char into ACC2
572: JLE 3, 1567(4)	* stack failure
573: ST 0, 0(5)	* save ACC0 into the current SP location
574: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: assignment
575: LDC 0, 45(0)	* Load the base address into ACC0
* BEGIN: push to stack
576: LDA 3, -56(5)	* Subtract the stack limit from SP - store in ACC3
577: LDC 2, 56(0)	* Load diagnostic char into ACC2
578: JLE 3, 1567(4)	* stack failure
579: ST 0, 0(5)	* save ACC0 into the current SP location
580: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
581: LDC 0, 3(0)	* Load a constant into ACC0
* END: load an int constant
582: JLT 0, 1556(4)	* array bounds too small
583: LDC 3, 10(0)	* Load the array bounds limit into ACC3
584: SUB 3, 0, 3	* Subtract the max from the current index
585: JGE 3, 1556(4)	* array bounds too big
586: LDC 1, 1(0)	* Load the skip size into ACC1
587: MUL 1, 1, 0	* Multiply the index by the skip size and place the result back into ACC1
588: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
589: LD 0, 0(5)	* Load stored result into ACC0
590: ADD 0, 1, 0	* add the base (ACC0) and the skip size (ACC1) and put the result back in ACC0
591: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
592: LD 1, 0(5)	* Load stored result into ACC1
593: ST 1, 0(0)	* Store ACC0 into global offset
* END: assignment
* BEGIN: procedure call
594: LDA 0, 49(7)	* Get return address into ACC0
595: LDA 3, -59(5)	* Subtract the stack limit from SP - store in ACC3
596: LDC 2, 97(0)	* Load diagnostic char into ACC2
597: JLE 3, 1567(4)	* stack failure
598: ST 0, 0(5)	* Store return address (in ACC0) to SP/FP
* return value sits at SP-1/FP-1
599: ST 5, -2(5)	* Store SP to SP-2/FP-2
600: ST 6, -3(5)	* Store FP to SP-3/FP-3
601: LDA 5, -4(5)	* decrement SP by 4 (i.e., 4 pushes)
602: LDA 3, -56(5)	* Subtract the stack limit from SP - store in ACC3
603: LDC 2, 99(0)	* Load diagnostic char into ACC2
604: JLE 3, 1567(4)	* stack failure
605: LDA 5, -1(5)	* decrement SP by local var's size (i.e., push)
* BEGIN: load an int constant
606: LDC 0, 3(0)	* Load a constant into ACC0
* END: load an int constant
607: LDA 3, -56(5)	* Subtract the stack limit from SP - store in ACC3
608: LDC 2, 98(0)	* Load diagnostic char into ACC2
609: JLE 3, 1567(4)	* stack failure
610: ST 0, 0(5)	* Store param in slot
611: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* BEGIN: variable (rvalue) access
612: LDC 0, 45(0)	* Load the base address into ACC0
* END: variable (rvalue) access
613: LDA 3, -56(5)	* Subtract the stack limit from SP - store in ACC3
614: LDC 2, 98(0)	* Load diagnostic char into ACC2
615: JLE 3, 1567(4)	* stack failure
616: ST 0, 0(5)	* Store param in slot
617: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
618: LDA 3, -56(5)	* Subtract the stack limit from SP - store in ACC3
619: LDC 2, 99(0)	* Load diagnostic char into ACC2
620: JLE 3, 1567(4)	* stack failure
621: LDA 5, -1(5)	* decrement SP by local var's size (i.e., push)
622: LDA 3, -56(5)	* Subtract the stack limit from SP - store in ACC3
623: LDC 2, 99(0)	* Load diagnostic char into ACC2
624: JLE 3, 1567(4)	* stack failure
625: LDA 5, -1(5)	* decrement SP by local var's size (i.e., push)
626: LDA 3, -56(5)	* Subtract the stack limit from SP - store in ACC3
627: LDC 2, 99(0)	* Load diagnostic char into ACC2
628: JLE 3, 1567(4)	* stack failure
629: LDA 5, -1(5)	* decrement SP by local var's size (i.e., push)
630: LDA 3, -56(5)	* Subtract the stack limit from SP - store in ACC3
631: LDC 2, 99(0)	* Load diagnostic char into ACC2
632: JLE 3, 1567(4)	* stack failure
633: LDA 5, -1(5)	* decrement SP by local var's size (i.e., push)
634: LDA 3, -56(5)	* Subtract the stack limit from SP - store in ACC3
635: LDC 2, 99(0)	* Load diagnostic char into ACC2
636: JLE 3, 1567(4)	* stack failure
637: LDA 5, -1(5)	* decrement SP by local var's size (i.e., push)
638: LDA 3, -56(5)	* Subtract the stack limit from SP - store in ACC3
639: LDC 2, 99(0)	* Load diagnostic char into ACC2
640: JLE 3, 1567(4)	* stack failure
641: LDA 5, -1(5)	* decrement SP by local var's size (i.e., push)
642: LDA 6, 13(5)	* Set FP to be the "pre-push of AR" SP
* SP already points to end of the AR
643: LDA 7, 965(4)	* Jump to the start of the proc
644: LD 0, -4(6)	* Load the return value into ACC0
645: LD 5, -2(6)	* Restore SP from FP-2
646: LD 6, -3(6)	* Restore FP from FP-3
* END: procedure call
* BEGIN: write(s)
647: OUT 0, 0, 0	* write out the int value in ACC0
648: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
* BEGIN: procedure call
649: LDA 0, 49(7)	* Get return address into ACC0
650: LDA 3, -59(5)	* Subtract the stack limit from SP - store in ACC3
651: LDC 2, 97(0)	* Load diagnostic char into ACC2
652: JLE 3, 1567(4)	* stack failure
653: ST 0, 0(5)	* Store return address (in ACC0) to SP/FP
* return value sits at SP-1/FP-1
654: ST 5, -2(5)	* Store SP to SP-2/FP-2
655: ST 6, -3(5)	* Store FP to SP-3/FP-3
656: LDA 5, -4(5)	* decrement SP by 4 (i.e., 4 pushes)
657: LDA 3, -56(5)	* Subtract the stack limit from SP - store in ACC3
658: LDC 2, 99(0)	* Load diagnostic char into ACC2
659: JLE 3, 1567(4)	* stack failure
660: LDA 5, -1(5)	* decrement SP by local var's size (i.e., push)
* BEGIN: load an int constant
661: LDC 0, 0(0)	* Load a constant into ACC0
* END: load an int constant
662: LDA 3, -56(5)	* Subtract the stack limit from SP - store in ACC3
663: LDC 2, 98(0)	* Load diagnostic char into ACC2
664: JLE 3, 1567(4)	* stack failure
665: ST 0, 0(5)	* Store param in slot
666: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* BEGIN: variable (rvalue) access
667: LDC 0, 45(0)	* Load the base address into ACC0
* END: variable (rvalue) access
668: LDA 3, -56(5)	* Subtract the stack limit from SP - store in ACC3
669: LDC 2, 98(0)	* Load diagnostic char into ACC2
670: JLE 3, 1567(4)	* stack failure
671: ST 0, 0(5)	* Store param in slot
672: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
673: LDA 3, -56(5)	* Subtract the stack limit from SP - store in ACC3
674: LDC 2, 99(0)	* Load diagnostic char into ACC2
675: JLE 3, 1567(4)	* stack failure
676: LDA 5, -1(5)	* decrement SP by local var's size (i.e., push)
677: LDA 3, -56(5)	* Subtract the stack limit from SP - store in ACC3
678: LDC 2, 99(0)	* Load diagnostic char into ACC2
679: JLE 3, 1567(4)	* stack failure
680: LDA 5, -1(5)	* decrement SP by local var's size (i.e., push)
681: LDA 3, -56(5)	* Subtract the stack limit from SP - store in ACC3
682: LDC 2, 99(0)	* Load diagnostic char into ACC2
683: JLE 3, 1567(4)	* stack failure
684: LDA 5, -1(5)	* decrement SP by local var's size (i.e., push)
685: LDA 3, -56(5)	* Subtract the stack limit from SP - store in ACC3
686: LDC 2, 99(0)	* Load diagnostic char into ACC2
687: JLE 3, 1567(4)	* stack failure
688: LDA 5, -1(5)	* decrement SP by local var's size (i.e., push)
689: LDA 3, -56(5)	* Subtract the stack limit from SP - store in ACC3
690: LDC 2, 99(0)	* Load diagnostic char into ACC2
691: JLE 3, 1567(4)	* stack failure
692: LDA 5, -1(5)	* decrement SP by local var's size (i.e., push)
693: LDA 3, -56(5)	* Subtract the stack limit from SP - store in ACC3
694: LDC 2, 99(0)	* Load diagnostic char into ACC2
695: JLE 3, 1567(4)	* stack failure
696: LDA 5, -1(5)	* decrement SP by local var's size (i.e., push)
697: LDA 6, 13(5)	* Set FP to be the "pre-push of AR" SP
* SP already points to end of the AR
698: LDA 7, 965(4)	* Jump to the start of the proc
699: LD 0, -4(6)	* Load the return value into ACC0
700: LD 5, -2(6)	* Restore SP from FP-2
701: LD 6, -3(6)	* Restore FP from FP-3
* END: procedure call
* BEGIN: write(s)
702: OUT 0, 0, 0	* write out the int value in ACC0
703: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
* BEGIN: load an int constant
704: LDC 0, 45(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: push to stack
705: LDA 3, -56(5)	* Subtract the stack limit from SP - store in ACC3
706: LDC 2, 50(0)	* Load diagnostic char into ACC2
707: JLE 3, 1567(4)	* stack failure
708: ST 0, 0(5)	* save ACC0 into the current SP location
709: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: assignment
710: LDC 0, 45(0)	* Load the base address into ACC0
* BEGIN: push to stack
711: LDA 3, -56(5)	* Subtract the stack limit from SP - store in ACC3
712: LDC 2, 56(0)	* Load diagnostic char into ACC2
713: JLE 3, 1567(4)	* stack failure
714: ST 0, 0(5)	* save ACC0 into the current SP location
715: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
716: LDC 0, 0(0)	* Load a constant into ACC0
* END: load an int constant
717: JLT 0, 1556(4)	* array bounds too small
718: LDC 3, 10(0)	* Load the array bounds limit into ACC3
719: SUB 3, 0, 3	* Subtract the max from the current index
720: JGE 3, 1556(4)	* array bounds too big
721: LDC 1, 1(0)	* Load the skip size into ACC1
722: MUL 1, 1, 0	* Multiply the index by the skip size and place the result back into ACC1
723: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
724: LD 0, 0(5)	* Load stored result into ACC0
725: ADD 0, 1, 0	* add the base (ACC0) and the skip size (ACC1) and put the result back in ACC0
726: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
727: LD 1, 0(5)	* Load stored result into ACC1
728: ST 1, 0(0)	* Store ACC0 into global offset
* END: assignment
* BEGIN: load an int constant
729: LDC 0, 49(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: push to stack
730: LDA 3, -56(5)	* Subtract the stack limit from SP - store in ACC3
731: LDC 2, 50(0)	* Load diagnostic char into ACC2
732: JLE 3, 1567(4)	* stack failure
733: ST 0, 0(5)	* save ACC0 into the current SP location
734: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: assignment
735: LDC 0, 45(0)	* Load the base address into ACC0
* BEGIN: push to stack
736: LDA 3, -56(5)	* Subtract the stack limit from SP - store in ACC3
737: LDC 2, 56(0)	* Load diagnostic char into ACC2
738: JLE 3, 1567(4)	* stack failure
739: ST 0, 0(5)	* save ACC0 into the current SP location
740: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
741: LDC 0, 1(0)	* Load a constant into ACC0
* END: load an int constant
742: JLT 0, 1556(4)	* array bounds too small
743: LDC 3, 10(0)	* Load the array bounds limit into ACC3
744: SUB 3, 0, 3	* Subtract the max from the current index
745: JGE 3, 1556(4)	* array bounds too big
746: LDC 1, 1(0)	* Load the skip size into ACC1
747: MUL 1, 1, 0	* Multiply the index by the skip size and place the result back into ACC1
748: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
749: LD 0, 0(5)	* Load stored result into ACC0
750: ADD 0, 1, 0	* add the base (ACC0) and the skip size (ACC1) and put the result back in ACC0
751: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
752: LD 1, 0(5)	* Load stored result into ACC1
753: ST 1, 0(0)	* Store ACC0 into global offset
* END: assignment
* BEGIN: procedure call
754: LDA 0, 49(7)	* Get return address into ACC0
755: LDA 3, -59(5)	* Subtract the stack limit from SP - store in ACC3
756: LDC 2, 97(0)	* Load diagnostic char into ACC2
757: JLE 3, 1567(4)	* stack failure
758: ST 0, 0(5)	* Store return address (in ACC0) to SP/FP
* return value sits at SP-1/FP-1
759: ST 5, -2(5)	* Store SP to SP-2/FP-2
760: ST 6, -3(5)	* Store FP to SP-3/FP-3
761: LDA 5, -4(5)	* decrement SP by 4 (i.e., 4 pushes)
762: LDA 3, -56(5)	* Subtract the stack limit from SP - store in ACC3
763: LDC 2, 99(0)	* Load diagnostic char into ACC2
764: JLE 3, 1567(4)	* stack failure
765: LDA 5, -1(5)	* decrement SP by local var's size (i.e., push)
* BEGIN: load an int constant
766: LDC 0, 1(0)	* Load a constant into ACC0
* END: load an int constant
767: LDA 3, -56(5)	* Subtract the stack limit from SP - store in ACC3
768: LDC 2, 98(0)	* Load diagnostic char into ACC2
769: JLE 3, 1567(4)	* stack failure
770: ST 0, 0(5)	* Store param in slot
771: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* BEGIN: variable (rvalue) access
772: LDC 0, 45(0)	* Load the base address into ACC0
* END: variable (rvalue) access
773: LDA 3, -56(5)	* Subtract the stack limit from SP - store in ACC3
774: LDC 2, 98(0)	* Load diagnostic char into ACC2
775: JLE 3, 1567(4)	* stack failure
776: ST 0, 0(5)	* Store param in slot
777: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
778: LDA 3, -56(5)	* Subtract the stack limit from SP - store in ACC3
779: LDC 2, 99(0)	* Load diagnostic char into ACC2
780: JLE 3, 1567(4)	* stack failure
781: LDA 5, -1(5)	* decrement SP by local var's size (i.e., push)
782: LDA 3, -56(5)	* Subtract the stack limit from SP - store in ACC3
783: LDC 2, 99(0)	* Load diagnostic char into ACC2
784: JLE 3, 1567(4)	* stack failure
785: LDA 5, -1(5)	* decrement SP by local var's size (i.e., push)
786: LDA 3, -56(5)	* Subtract the stack limit from SP - store in ACC3
787: LDC 2, 99(0)	* Load diagnostic char into ACC2
788: JLE 3, 1567(4)	* stack failure
789: LDA 5, -1(5)	* decrement SP by local var's size (i.e., push)
790: LDA 3, -56(5)	* Subtract the stack limit from SP - store in ACC3
791: LDC 2, 99(0)	* Load diagnostic char into ACC2
792: JLE 3, 1567(4)	* stack failure
793: LDA 5, -1(5)	* decrement SP by local var's size (i.e., push)
794: LDA 3, -56(5)	* Subtract the stack limit from SP - store in ACC3
795: LDC 2, 99(0)	* Load diagnostic char into ACC2
796: JLE 3, 1567(4)	* stack failure
797: LDA 5, -1(5)	* decrement SP by local var's size (i.e., push)
798: LDA 3, -56(5)	* Subtract the stack limit from SP - store in ACC3
799: LDC 2, 99(0)	* Load diagnostic char into ACC2
800: JLE 3, 1567(4)	* stack failure
801: LDA 5, -1(5)	* decrement SP by local var's size (i.e., push)
802: LDA 6, 13(5)	* Set FP to be the "pre-push of AR" SP
* SP already points to end of the AR
803: LDA 7, 965(4)	* Jump to the start of the proc
804: LD 0, -4(6)	* Load the return value into ACC0
805: LD 5, -2(6)	* Restore SP from FP-2
806: LD 6, -3(6)	* Restore FP from FP-3
* END: procedure call
* BEGIN: write(s)
807: OUT 0, 0, 0	* write out the int value in ACC0
808: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
* BEGIN: load an int constant
809: LDC 0, 97(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: push to stack
810: LDA 3, -56(5)	* Subtract the stack limit from SP - store in ACC3
811: LDC 2, 50(0)	* Load diagnostic char into ACC2
812: JLE 3, 1567(4)	* stack failure
813: ST 0, 0(5)	* save ACC0 into the current SP location
814: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: assignment
815: LDC 0, 45(0)	* Load the base address into ACC0
* BEGIN: push to stack
816: LDA 3, -56(5)	* Subtract the stack limit from SP - store in ACC3
817: LDC 2, 56(0)	* Load diagnostic char into ACC2
818: JLE 3, 1567(4)	* stack failure
819: ST 0, 0(5)	* save ACC0 into the current SP location
820: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
821: LDC 0, 0(0)	* Load a constant into ACC0
* END: load an int constant
822: JLT 0, 1556(4)	* array bounds too small
823: LDC 3, 10(0)	* Load the array bounds limit into ACC3
824: SUB 3, 0, 3	* Subtract the max from the current index
825: JGE 3, 1556(4)	* array bounds too big
826: LDC 1, 1(0)	* Load the skip size into ACC1
827: MUL 1, 1, 0	* Multiply the index by the skip size and place the result back into ACC1
828: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
829: LD 0, 0(5)	* Load stored result into ACC0
830: ADD 0, 1, 0	* add the base (ACC0) and the skip size (ACC1) and put the result back in ACC0
831: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
832: LD 1, 0(5)	* Load stored result into ACC1
833: ST 1, 0(0)	* Store ACC0 into global offset
* END: assignment
* BEGIN: load an int constant
834: LDC 0, 98(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: push to stack
835: LDA 3, -56(5)	* Subtract the stack limit from SP - store in ACC3
836: LDC 2, 50(0)	* Load diagnostic char into ACC2
837: JLE 3, 1567(4)	* stack failure
838: ST 0, 0(5)	* save ACC0 into the current SP location
839: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: assignment
840: LDC 0, 45(0)	* Load the base address into ACC0
* BEGIN: push to stack
841: LDA 3, -56(5)	* Subtract the stack limit from SP - store in ACC3
842: LDC 2, 56(0)	* Load diagnostic char into ACC2
843: JLE 3, 1567(4)	* stack failure
844: ST 0, 0(5)	* save ACC0 into the current SP location
845: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
846: LDC 0, 1(0)	* Load a constant into ACC0
* END: load an int constant
847: JLT 0, 1556(4)	* array bounds too small
848: LDC 3, 10(0)	* Load the array bounds limit into ACC3
849: SUB 3, 0, 3	* Subtract the max from the current index
850: JGE 3, 1556(4)	* array bounds too big
851: LDC 1, 1(0)	* Load the skip size into ACC1
852: MUL 1, 1, 0	* Multiply the index by the skip size and place the result back into ACC1
853: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
854: LD 0, 0(5)	* Load stored result into ACC0
855: ADD 0, 1, 0	* add the base (ACC0) and the skip size (ACC1) and put the result back in ACC0
856: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
857: LD 1, 0(5)	* Load stored result into ACC1
858: ST 1, 0(0)	* Store ACC0 into global offset
* END: assignment
* BEGIN: load an int constant
859: LDC 0, 99(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: push to stack
860: LDA 3, -56(5)	* Subtract the stack limit from SP - store in ACC3
861: LDC 2, 50(0)	* Load diagnostic char into ACC2
862: JLE 3, 1567(4)	* stack failure
863: ST 0, 0(5)	* save ACC0 into the current SP location
864: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: assignment
865: LDC 0, 45(0)	* Load the base address into ACC0
* BEGIN: push to stack
866: LDA 3, -56(5)	* Subtract the stack limit from SP - store in ACC3
867: LDC 2, 56(0)	* Load diagnostic char into ACC2
868: JLE 3, 1567(4)	* stack failure
869: ST 0, 0(5)	* save ACC0 into the current SP location
870: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
871: LDC 0, 2(0)	* Load a constant into ACC0
* END: load an int constant
872: JLT 0, 1556(4)	* array bounds too small
873: LDC 3, 10(0)	* Load the array bounds limit into ACC3
874: SUB 3, 0, 3	* Subtract the max from the current index
875: JGE 3, 1556(4)	* array bounds too big
876: LDC 1, 1(0)	* Load the skip size into ACC1
877: MUL 1, 1, 0	* Multiply the index by the skip size and place the result back into ACC1
878: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
879: LD 0, 0(5)	* Load stored result into ACC0
880: ADD 0, 1, 0	* add the base (ACC0) and the skip size (ACC1) and put the result back in ACC0
881: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
882: LD 1, 0(5)	* Load stored result into ACC1
883: ST 1, 0(0)	* Store ACC0 into global offset
* END: assignment
* BEGIN: load an int constant
884: LDC 0, 49(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: push to stack
885: LDA 3, -56(5)	* Subtract the stack limit from SP - store in ACC3
886: LDC 2, 50(0)	* Load diagnostic char into ACC2
887: JLE 3, 1567(4)	* stack failure
888: ST 0, 0(5)	* save ACC0 into the current SP location
889: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: assignment
890: LDC 0, 45(0)	* Load the base address into ACC0
* BEGIN: push to stack
891: LDA 3, -56(5)	* Subtract the stack limit from SP - store in ACC3
892: LDC 2, 56(0)	* Load diagnostic char into ACC2
893: JLE 3, 1567(4)	* stack failure
894: ST 0, 0(5)	* save ACC0 into the current SP location
895: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
896: LDC 0, 3(0)	* Load a constant into ACC0
* END: load an int constant
897: JLT 0, 1556(4)	* array bounds too small
898: LDC 3, 10(0)	* Load the array bounds limit into ACC3
899: SUB 3, 0, 3	* Subtract the max from the current index
900: JGE 3, 1556(4)	* array bounds too big
901: LDC 1, 1(0)	* Load the skip size into ACC1
902: MUL 1, 1, 0	* Multiply the index by the skip size and place the result back into ACC1
903: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
904: LD 0, 0(5)	* Load stored result into ACC0
905: ADD 0, 1, 0	* add the base (ACC0) and the skip size (ACC1) and put the result back in ACC0
906: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
907: LD 1, 0(5)	* Load stored result into ACC1
908: ST 1, 0(0)	* Store ACC0 into global offset
* END: assignment
* BEGIN: procedure call
909: LDA 0, 49(7)	* Get return address into ACC0
910: LDA 3, -59(5)	* Subtract the stack limit from SP - store in ACC3
911: LDC 2, 97(0)	* Load diagnostic char into ACC2
912: JLE 3, 1567(4)	* stack failure
913: ST 0, 0(5)	* Store return address (in ACC0) to SP/FP
* return value sits at SP-1/FP-1
914: ST 5, -2(5)	* Store SP to SP-2/FP-2
915: ST 6, -3(5)	* Store FP to SP-3/FP-3
916: LDA 5, -4(5)	* decrement SP by 4 (i.e., 4 pushes)
917: LDA 3, -56(5)	* Subtract the stack limit from SP - store in ACC3
918: LDC 2, 99(0)	* Load diagnostic char into ACC2
919: JLE 3, 1567(4)	* stack failure
920: LDA 5, -1(5)	* decrement SP by local var's size (i.e., push)
* BEGIN: load an int constant
921: LDC 0, 3(0)	* Load a constant into ACC0
* END: load an int constant
922: LDA 3, -56(5)	* Subtract the stack limit from SP - store in ACC3
923: LDC 2, 98(0)	* Load diagnostic char into ACC2
924: JLE 3, 1567(4)	* stack failure
925: ST 0, 0(5)	* Store param in slot
926: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* BEGIN: variable (rvalue) access
927: LDC 0, 45(0)	* Load the base address into ACC0
* END: variable (rvalue) access
928: LDA 3, -56(5)	* Subtract the stack limit from SP - store in ACC3
929: LDC 2, 98(0)	* Load diagnostic char into ACC2
930: JLE 3, 1567(4)	* stack failure
931: ST 0, 0(5)	* Store param in slot
932: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
933: LDA 3, -56(5)	* Subtract the stack limit from SP - store in ACC3
934: LDC 2, 99(0)	* Load diagnostic char into ACC2
935: JLE 3, 1567(4)	* stack failure
936: LDA 5, -1(5)	* decrement SP by local var's size (i.e., push)
937: LDA 3, -56(5)	* Subtract the stack limit from SP - store in ACC3
938: LDC 2, 99(0)	* Load diagnostic char into ACC2
939: JLE 3, 1567(4)	* stack failure
940: LDA 5, -1(5)	* decrement SP by local var's size (i.e., push)
941: LDA 3, -56(5)	* Subtract the stack limit from SP - store in ACC3
942: LDC 2, 99(0)	* Load diagnostic char into ACC2
943: JLE 3, 1567(4)	* stack failure
944: LDA 5, -1(5)	* decrement SP by local var's size (i.e., push)
945: LDA 3, -56(5)	* Subtract the stack limit from SP - store in ACC3
946: LDC 2, 99(0)	* Load diagnostic char into ACC2
947: JLE 3, 1567(4)	* stack failure
948: LDA 5, -1(5)	* decrement SP by local var's size (i.e., push)
949: LDA 3, -56(5)	* Subtract the stack limit from SP - store in ACC3
950: LDC 2, 99(0)	* Load diagnostic char into ACC2
951: JLE 3, 1567(4)	* stack failure
952: LDA 5, -1(5)	* decrement SP by local var's size (i.e., push)
953: LDA 3, -56(5)	* Subtract the stack limit from SP - store in ACC3
954: LDC 2, 99(0)	* Load diagnostic char into ACC2
955: JLE 3, 1567(4)	* stack failure
956: LDA 5, -1(5)	* decrement SP by local var's size (i.e., push)
957: LDA 6, 13(5)	* Set FP to be the "pre-push of AR" SP
* SP already points to end of the AR
958: LDA 7, 965(4)	* Jump to the start of the proc
959: LD 0, -4(6)	* Load the return value into ACC0
960: LD 5, -2(6)	* Restore SP from FP-2
961: LD 6, -3(6)	* Restore FP from FP-3
* END: procedure call
* BEGIN: write(s)
962: OUT 0, 0, 0	* write out the int value in ACC0
963: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
964: HALT 0, 0, 0	* End of Program
* BEGIN: procedure code
965: LDA 0, 0(0)	* NOOP to mark beginning of proc
* BEGIN: load a bool value into ACC0
966: LDC 0, 1(0)	* Load a boolean value into ACC0
* END: load a bool value into ACC0
* BEGIN: push to stack
967: LDA 3, -56(5)	* Subtract the stack limit from SP - store in ACC3
968: LDC 2, 50(0)	* Load diagnostic char into ACC2
969: JLE 3, 1567(4)	* stack failure
970: ST 0, 0(5)	* save ACC0 into the current SP location
971: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: assignment
972: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
973: LD 0, 0(5)	* Load stored result into ACC0
974: ST 0, -16(6)	* Store ACC0 into local offset (relative to FP)
* END: assignment
* BEGIN: load an int constant
975: LDC 0, 0(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: push to stack
976: LDA 3, -56(5)	* Subtract the stack limit from SP - store in ACC3
977: LDC 2, 50(0)	* Load diagnostic char into ACC2
978: JLE 3, 1567(4)	* stack failure
979: ST 0, 0(5)	* save ACC0 into the current SP location
980: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: assignment
981: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
982: LD 0, 0(5)	* Load stored result into ACC0
983: ST 0, -4(6)	* Store ACC0 into local offset (relative to FP)
* END: assignment
* BEGIN: variable (rvalue) access
984: LD 0, -5(6)	* Load the local var into ACC0
* END: variable (rvalue) access
* BEGIN: push to stack
985: LDA 3, -56(5)	* Subtract the stack limit from SP - store in ACC3
986: LDC 2, 51(0)	* Load diagnostic char into ACC2
987: JLE 3, 1567(4)	* stack failure
988: ST 0, 0(5)	* save ACC0 into the current SP location
989: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
990: LDC 0, 0(0)	* Load a constant into ACC0
* END: load an int constant
991: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
992: LD 1, 0(5)	* Load stored result into ACC1
993: SUB 0, 1, 0	* for =, subtract right from left
994: JEQ 0, 2(7)	* Jump to Load 1 if ACC0 == 0
995: LDC 0, 0(0)	* Load 0 into ACC0
996: LDA 7, 1(7)	* Jump over Load 1
997: LDC 0, 1(0)	* Load 1 into ACC0
998: JEQ 0, 1(7)	* Jump over the then stmts if false
* BEGIN: return
999: LDA 7, 1554(4)	* Jump to the end of the proc
* END: return
* BEGIN: load an int constant
1000: LDC 0, 0(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: push to stack
1001: LDA 3, -56(5)	* Subtract the stack limit from SP - store in ACC3
1002: LDC 2, 50(0)	* Load diagnostic char into ACC2
1003: JLE 3, 1567(4)	* stack failure
1004: ST 0, 0(5)	* save ACC0 into the current SP location
1005: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: assignment
1006: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
1007: LD 0, 0(5)	* Load stored result into ACC0
1008: ST 0, -17(6)	* Store ACC0 into local offset (relative to FP)
* END: assignment
* BEGIN: for loop
* BEGIN: load an int constant
1009: LDC 0, 0(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: save initial value to loop var
* BEGIN: push to stack
1010: LDA 3, -56(5)	* Subtract the stack limit from SP - store in ACC3
1011: LDC 2, 52(0)	* Load diagnostic char into ACC2
1012: JLE 3, 1567(4)	* stack failure
1013: ST 0, 0(5)	* save ACC0 into the current SP location
1014: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
1015: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
1016: LD 0, 0(5)	* Load stored result into ACC0
1017: ST 0, -18(6)	* Store ACC0 into local offset (relative to FP)
* END: save initial value to loop var
* BEGIN: variable (rvalue) access
1018: LD 0, -5(6)	* Load the local var into ACC0
* END: variable (rvalue) access
* BEGIN: push to stack
1019: LDA 3, -56(5)	* Subtract the stack limit from SP - store in ACC3
1020: LDC 2, 55(0)	* Load diagnostic char into ACC2
1021: JLE 3, 1567(4)	* stack failure
1022: ST 0, 0(5)	* save ACC0 into the current SP location
1023: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
1024: LDC 0, 1(0)	* Load a constant into ACC0
* END: load an int constant
1025: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
1026: LD 1, 0(5)	* Load stored result into ACC1
1027: SUB 0, 1, 0	* Subtract ACC0 from ACC1 placing result in ACC0
* BEGIN: save max value to max loop var
* BEGIN: push to stack
1028: LDA 3, -56(5)	* Subtract the stack limit from SP - store in ACC3
1029: LDC 2, 53(0)	* Load diagnostic char into ACC2
1030: JLE 3, 1567(4)	* stack failure
1031: ST 0, 0(5)	* save ACC0 into the current SP location
1032: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
1033: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
1034: LD 0, 0(5)	* Load stored result into ACC0
1035: ST 0, -19(6)	* Store ACC0 into local offset (relative to FP)
* END: save max value to max loop var
1036: LDA 5, 0(5)	* NOOP to mark top of loop
1037: LD 0, -18(6)	* Load the local var into ACC0
1038: LD 1, -19(6)	* Load the local var into ACC0
1039: SUB 1, 1, 0	* Subtract the loop var from the max
1040: JLT 1, 1228(4)	* go to the loop exit
* BEGIN: body of for loop
* BEGIN: variable (rvalue) access
1041: LD 0, -6(6)	* Load the base address out of the AR
* BEGIN: push to stack
1042: LDA 3, -56(5)	* Subtract the stack limit from SP - store in ACC3
1043: LDC 2, 56(0)	* Load diagnostic char into ACC2
1044: JLE 3, 1567(4)	* stack failure
1045: ST 0, 0(5)	* save ACC0 into the current SP location
1046: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: variable (rvalue) access
1047: LD 0, -18(6)	* Load the local var into ACC0
* END: variable (rvalue) access
1048: JLT 0, 1556(4)	* array bounds too small
1049: LDC 3, 10(0)	* Load the array bounds limit into ACC3
1050: SUB 3, 0, 3	* Subtract the max from the current index
1051: JGE 3, 1556(4)	* array bounds too big
1052: LDC 1, 1(0)	* Load the skip size into ACC1
1053: MUL 1, 1, 0	* Multiply the index by the skip size and place the result back into ACC1
1054: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
1055: LD 0, 0(5)	* Load stored result into ACC0
1056: ADD 0, 1, 0	* add the base (ACC0) and the skip size (ACC1) and put the result back in ACC0
1057: LD 0, 0(0)	* Load the final dereferenced value into the specified register
* END: variable (rvalue) access
* BEGIN: push to stack
1058: LDA 3, -56(5)	* Subtract the stack limit from SP - store in ACC3
1059: LDC 2, 51(0)	* Load diagnostic char into ACC2
1060: JLE 3, 1567(4)	* stack failure
1061: ST 0, 0(5)	* save ACC0 into the current SP location
1062: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
1063: LDC 0, 43(0)	* Load a constant into ACC0
* END: load an int constant
1064: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
1065: LD 1, 0(5)	* Load stored result into ACC1
1066: SUB 0, 1, 0	* for =, subtract right from left
1067: JEQ 0, 2(7)	* Jump to Load 1 if ACC0 == 0
1068: LDC 0, 0(0)	* Load 0 into ACC0
1069: LDA 7, 1(7)	* Jump over Load 1
1070: LDC 0, 1(0)	* Load 1 into ACC0
1071: JGT 0, 40(7)	* Jump over rest of logical or code
* BEGIN: push to stack
1072: LDA 3, -56(5)	* Subtract the stack limit from SP - store in ACC3
1073: LDC 2, 57(0)	* Load diagnostic char into ACC2
1074: JLE 3, 1567(4)	* stack failure
1075: ST 0, 0(5)	* save ACC0 into the current SP location
1076: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: variable (rvalue) access
1077: LD 0, -6(6)	* Load the base address out of the AR
* BEGIN: push to stack
1078: LDA 3, -56(5)	* Subtract the stack limit from SP - store in ACC3
1079: LDC 2, 56(0)	* Load diagnostic char into ACC2
1080: JLE 3, 1567(4)	* stack failure
1081: ST 0, 0(5)	* save ACC0 into the current SP location
1082: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: variable (rvalue) access
1083: LD 0, -18(6)	* Load the local var into ACC0
* END: variable (rvalue) access
1084: JLT 0, 1556(4)	* array bounds too small
1085: LDC 3, 10(0)	* Load the array bounds limit into ACC3
1086: SUB 3, 0, 3	* Subtract the max from the current index
1087: JGE 3, 1556(4)	* array bounds too big
1088: LDC 1, 1(0)	* Load the skip size into ACC1
1089: MUL 1, 1, 0	* Multiply the index by the skip size and place the result back into ACC1
1090: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
1091: LD 0, 0(5)	* Load stored result into ACC0
1092: ADD 0, 1, 0	* add the base (ACC0) and the skip size (ACC1) and put the result back in ACC0
1093: LD 0, 0(0)	* Load the final dereferenced value into the specified register
* END: variable (rvalue) access
* BEGIN: push to stack
1094: LDA 3, -56(5)	* Subtract the stack limit from SP - store in ACC3
1095: LDC 2, 51(0)	* Load diagnostic char into ACC2
1096: JLE 3, 1567(4)	* stack failure
1097: ST 0, 0(5)	* save ACC0 into the current SP location
1098: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
1099: LDC 0, 45(0)	* Load a constant into ACC0
* END: load an int constant
1100: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
1101: LD 1, 0(5)	* Load stored result into ACC1
1102: SUB 0, 1, 0	* for =, subtract right from left
1103: JEQ 0, 2(7)	* Jump to Load 1 if ACC0 == 0
1104: LDC 0, 0(0)	* Load 0 into ACC0
1105: LDA 7, 1(7)	* Jump over Load 1
1106: LDC 0, 1(0)	* Load 1 into ACC0
1107: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
1108: LD 1, 0(5)	* Load stored result into ACC1
1109: ADD 0, 1, 0	* for OR, add right and left
1110: JEQ 0, 1(7)	* Jump over Load 1 if ACC0 == 0
1111: LDC 0, 1(0)	* Load 1 into ACC0
1112: JGT 0, 84(7)	* Jump over rest of logical or code
* BEGIN: push to stack
1113: LDA 3, -56(5)	* Subtract the stack limit from SP - store in ACC3
1114: LDC 2, 57(0)	* Load diagnostic char into ACC2
1115: JLE 3, 1567(4)	* stack failure
1116: ST 0, 0(5)	* save ACC0 into the current SP location
1117: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: variable (rvalue) access
1118: LD 0, -6(6)	* Load the base address out of the AR
* BEGIN: push to stack
1119: LDA 3, -56(5)	* Subtract the stack limit from SP - store in ACC3
1120: LDC 2, 56(0)	* Load diagnostic char into ACC2
1121: JLE 3, 1567(4)	* stack failure
1122: ST 0, 0(5)	* save ACC0 into the current SP location
1123: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: variable (rvalue) access
1124: LD 0, -18(6)	* Load the local var into ACC0
* END: variable (rvalue) access
1125: JLT 0, 1556(4)	* array bounds too small
1126: LDC 3, 10(0)	* Load the array bounds limit into ACC3
1127: SUB 3, 0, 3	* Subtract the max from the current index
1128: JGE 3, 1556(4)	* array bounds too big
1129: LDC 1, 1(0)	* Load the skip size into ACC1
1130: MUL 1, 1, 0	* Multiply the index by the skip size and place the result back into ACC1
1131: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
1132: LD 0, 0(5)	* Load stored result into ACC0
1133: ADD 0, 1, 0	* add the base (ACC0) and the skip size (ACC1) and put the result back in ACC0
1134: LD 0, 0(0)	* Load the final dereferenced value into the specified register
* END: variable (rvalue) access
* BEGIN: push to stack
1135: LDA 3, -56(5)	* Subtract the stack limit from SP - store in ACC3
1136: LDC 2, 51(0)	* Load diagnostic char into ACC2
1137: JLE 3, 1567(4)	* stack failure
1138: ST 0, 0(5)	* save ACC0 into the current SP location
1139: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
1140: LDC 0, 48(0)	* Load a constant into ACC0
* END: load an int constant
1141: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
1142: LD 1, 0(5)	* Load stored result into ACC1
* BEGIN: >=
1143: SUB 0, 1, 0	* for >=, subtract right from left
1144: JGE 0, 2(7)	* Jump to Load 1 if ACC0 >= 0
1145: LDC 0, 0(0)	* Load 0 into ACC0
1146: LDA 7, 1(7)	* Jump over Load 1
1147: LDC 0, 1(0)	* Load 1 into ACC0
* END: >=
1148: JEQ 0, 43(7)	* if left is false jump over the rest of the and
* BEGIN: push to stack
1149: LDA 3, -56(5)	* Subtract the stack limit from SP - store in ACC3
1150: LDC 2, 49(0)	* Load diagnostic char into ACC2
1151: JLE 3, 1567(4)	* stack failure
1152: ST 0, 0(5)	* save ACC0 into the current SP location
1153: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: variable (rvalue) access
1154: LD 0, -6(6)	* Load the base address out of the AR
* BEGIN: push to stack
1155: LDA 3, -56(5)	* Subtract the stack limit from SP - store in ACC3
1156: LDC 2, 56(0)	* Load diagnostic char into ACC2
1157: JLE 3, 1567(4)	* stack failure
1158: ST 0, 0(5)	* save ACC0 into the current SP location
1159: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: variable (rvalue) access
1160: LD 0, -18(6)	* Load the local var into ACC0
* END: variable (rvalue) access
1161: JLT 0, 1556(4)	* array bounds too small
1162: LDC 3, 10(0)	* Load the array bounds limit into ACC3
1163: SUB 3, 0, 3	* Subtract the max from the current index
1164: JGE 3, 1556(4)	* array bounds too big
1165: LDC 1, 1(0)	* Load the skip size into ACC1
1166: MUL 1, 1, 0	* Multiply the index by the skip size and place the result back into ACC1
1167: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
1168: LD 0, 0(5)	* Load stored result into ACC0
1169: ADD 0, 1, 0	* add the base (ACC0) and the skip size (ACC1) and put the result back in ACC0
1170: LD 0, 0(0)	* Load the final dereferenced value into the specified register
* END: variable (rvalue) access
* BEGIN: push to stack
1171: LDA 3, -56(5)	* Subtract the stack limit from SP - store in ACC3
1172: LDC 2, 51(0)	* Load diagnostic char into ACC2
1173: JLE 3, 1567(4)	* stack failure
1174: ST 0, 0(5)	* save ACC0 into the current SP location
1175: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
1176: LDC 0, 57(0)	* Load a constant into ACC0
* END: load an int constant
1177: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
1178: LD 1, 0(5)	* Load stored result into ACC1
* BEGIN: <=
1179: SUB 0, 1, 0	* for <=, subtract right from left
1180: JLE 0, 2(7)	* Jump to Load 1 if ACC0 <= 0
1181: LDC 0, 0(0)	* Load 0 into ACC0
1182: LDA 7, 1(7)	* Jump over Load 1
1183: LDC 0, 1(0)	* Load 1 into ACC0
* END: <=
1184: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
1185: LD 1, 0(5)	* Load stored result into ACC1
1186: ADD 0, 1, 0	* for AND, add right and left
1187: LDA 0, -2(0)	* Then subtract 2
1188: JEQ 0, 2(7)	* Jump to Load 1 if ACC0 == 0
1189: LDC 0, 0(0)	* Load 0 into ACC0
1190: LDA 7, 1(7)	* Jump over Load 1
1191: LDC 0, 1(0)	* Load 1 into ACC0
1192: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
1193: LD 1, 0(5)	* Load stored result into ACC1
1194: ADD 0, 1, 0	* for OR, add right and left
1195: JEQ 0, 1(7)	* Jump over Load 1 if ACC0 == 0
1196: LDC 0, 1(0)	* Load 1 into ACC0
1197: JEQ 0, 1(7)	* Jump over the then stmts if false
* BEGIN: break
1198: LDA 7, 1228(4)	* skip to the end of the loop
* END: break
* BEGIN: variable (rvalue) access
1199: LD 0, -17(6)	* Load the local var into ACC0
* END: variable (rvalue) access
* BEGIN: push to stack
1200: LDA 3, -56(5)	* Subtract the stack limit from SP - store in ACC3
1201: LDC 2, 55(0)	* Load diagnostic char into ACC2
1202: JLE 3, 1567(4)	* stack failure
1203: ST 0, 0(5)	* save ACC0 into the current SP location
1204: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
1205: LDC 0, 1(0)	* Load a constant into ACC0
* END: load an int constant
1206: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
1207: LD 1, 0(5)	* Load stored result into ACC1
1208: ADD 0, 0, 1	* Add ACC0 & ACC1 placing result in ACC0
* BEGIN: push to stack
1209: LDA 3, -56(5)	* Subtract the stack limit from SP - store in ACC3
1210: LDC 2, 50(0)	* Load diagnostic char into ACC2
1211: JLE 3, 1567(4)	* stack failure
1212: ST 0, 0(5)	* save ACC0 into the current SP location
1213: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: assignment
1214: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
1215: LD 0, 0(5)	* Load stored result into ACC0
1216: ST 0, -17(6)	* Store ACC0 into local offset (relative to FP)
* END: assignment
* END: body of for loop
1217: LD 0, -18(6)	* Load the local var into ACC0
1218: LDA 0, 1(0)	* increment the loop var
* BEGIN: push to stack
1219: LDA 3, -56(5)	* Subtract the stack limit from SP - store in ACC3
1220: LDC 2, 54(0)	* Load diagnostic char into ACC2
1221: JLE 3, 1567(4)	* stack failure
1222: ST 0, 0(5)	* save ACC0 into the current SP location
1223: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
1224: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
1225: LD 0, 0(5)	* Load stored result into ACC0
1226: ST 0, -18(6)	* Store ACC0 into local offset (relative to FP)
1227: LDA 7, 1036(4)	* return to the top of the loop
1228: LDA 5, 0(5)	* NOOP to mark end of loop
* END: for loop
* BEGIN: variable (rvalue) access
1229: LD 0, -17(6)	* Load the local var into ACC0
* END: variable (rvalue) access
* BEGIN: push to stack
1230: LDA 3, -56(5)	* Subtract the stack limit from SP - store in ACC3
1231: LDC 2, 51(0)	* Load diagnostic char into ACC2
1232: JLE 3, 1567(4)	* stack failure
1233: ST 0, 0(5)	* save ACC0 into the current SP location
1234: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: variable (rvalue) access
1235: LD 0, -5(6)	* Load the local var into ACC0
* END: variable (rvalue) access
1236: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
1237: LD 1, 0(5)	* Load stored result into ACC1
1238: SUB 0, 1, 0	* for =, subtract right from left
1239: JEQ 0, 2(7)	* Jump to Load 1 if ACC0 == 0
1240: LDC 0, 0(0)	* Load 0 into ACC0
1241: LDA 7, 1(7)	* Jump over Load 1
1242: LDC 0, 1(0)	* Load 1 into ACC0
1243: JEQ 0, 1(7)	* Jump over the then stmts if false
* BEGIN: return
1244: LDA 7, 1554(4)	* Jump to the end of the proc
* END: return
* BEGIN: variable (rvalue) access
1245: LD 0, -6(6)	* Load the base address out of the AR
* BEGIN: push to stack
1246: LDA 3, -56(5)	* Subtract the stack limit from SP - store in ACC3
1247: LDC 2, 56(0)	* Load diagnostic char into ACC2
1248: JLE 3, 1567(4)	* stack failure
1249: ST 0, 0(5)	* save ACC0 into the current SP location
1250: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: variable (rvalue) access
1251: LD 0, -17(6)	* Load the local var into ACC0
* END: variable (rvalue) access
1252: JLT 0, 1556(4)	* array bounds too small
1253: LDC 3, 10(0)	* Load the array bounds limit into ACC3
1254: SUB 3, 0, 3	* Subtract the max from the current index
1255: JGE 3, 1556(4)	* array bounds too big
1256: LDC 1, 1(0)	* Load the skip size into ACC1
1257: MUL 1, 1, 0	* Multiply the index by the skip size and place the result back into ACC1
1258: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
1259: LD 0, 0(5)	* Load stored result into ACC0
1260: ADD 0, 1, 0	* add the base (ACC0) and the skip size (ACC1) and put the result back in ACC0
1261: LD 0, 0(0)	* Load the final dereferenced value into the specified register
* END: variable (rvalue) access
* BEGIN: push to stack
1262: LDA 3, -56(5)	* Subtract the stack limit from SP - store in ACC3
1263: LDC 2, 51(0)	* Load diagnostic char into ACC2
1264: JLE 3, 1567(4)	* stack failure
1265: ST 0, 0(5)	* save ACC0 into the current SP location
1266: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
1267: LDC 0, 45(0)	* Load a constant into ACC0
* END: load an int constant
1268: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
1269: LD 1, 0(5)	* Load stored result into ACC1
1270: SUB 0, 1, 0	* for =, subtract right from left
1271: JEQ 0, 2(7)	* Jump to Load 1 if ACC0 == 0
1272: LDC 0, 0(0)	* Load 0 into ACC0
1273: LDA 7, 1(7)	* Jump over Load 1
1274: LDC 0, 1(0)	* Load 1 into ACC0
1275: JEQ 0, 28(7)	* Jump over the then stmts if false
* BEGIN: load a bool value into ACC0
1276: LDC 0, 0(0)	* Load a boolean value into ACC0
* END: load a bool value into ACC0
* BEGIN: push to stack
1277: LDA 3, -56(5)	* Subtract the stack limit from SP - store in ACC3
1278: LDC 2, 50(0)	* Load diagnostic char into ACC2
1279: JLE 3, 1567(4)	* stack failure
1280: ST 0, 0(5)	* save ACC0 into the current SP location
1281: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: assignment
1282: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
1283: LD 0, 0(5)	* Load stored result into ACC0
1284: ST 0, -16(6)	* Store ACC0 into local offset (relative to FP)
* END: assignment
* BEGIN: variable (rvalue) access
1285: LD 0, -17(6)	* Load the local var into ACC0
* END: variable (rvalue) access
* BEGIN: push to stack
1286: LDA 3, -56(5)	* Subtract the stack limit from SP - store in ACC3
1287: LDC 2, 55(0)	* Load diagnostic char into ACC2
1288: JLE 3, 1567(4)	* stack failure
1289: ST 0, 0(5)	* save ACC0 into the current SP location
1290: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
1291: LDC 0, 1(0)	* Load a constant into ACC0
* END: load an int constant
1292: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
1293: LD 1, 0(5)	* Load stored result into ACC1
1294: ADD 0, 0, 1	* Add ACC0 & ACC1 placing result in ACC0
* BEGIN: push to stack
1295: LDA 3, -56(5)	* Subtract the stack limit from SP - store in ACC3
1296: LDC 2, 50(0)	* Load diagnostic char into ACC2
1297: JLE 3, 1567(4)	* stack failure
1298: ST 0, 0(5)	* save ACC0 into the current SP location
1299: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: assignment
1300: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
1301: LD 0, 0(5)	* Load stored result into ACC0
1302: ST 0, -17(6)	* Store ACC0 into local offset (relative to FP)
* END: assignment
1303: LDA 7, 49(7)	* Jump over the rest of the if
* BEGIN: variable (rvalue) access
1304: LD 0, -6(6)	* Load the base address out of the AR
* BEGIN: push to stack
1305: LDA 3, -56(5)	* Subtract the stack limit from SP - store in ACC3
1306: LDC 2, 56(0)	* Load diagnostic char into ACC2
1307: JLE 3, 1567(4)	* stack failure
1308: ST 0, 0(5)	* save ACC0 into the current SP location
1309: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: variable (rvalue) access
1310: LD 0, -17(6)	* Load the local var into ACC0
* END: variable (rvalue) access
1311: JLT 0, 1556(4)	* array bounds too small
1312: LDC 3, 10(0)	* Load the array bounds limit into ACC3
1313: SUB 3, 0, 3	* Subtract the max from the current index
1314: JGE 3, 1556(4)	* array bounds too big
1315: LDC 1, 1(0)	* Load the skip size into ACC1
1316: MUL 1, 1, 0	* Multiply the index by the skip size and place the result back into ACC1
1317: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
1318: LD 0, 0(5)	* Load stored result into ACC0
1319: ADD 0, 1, 0	* add the base (ACC0) and the skip size (ACC1) and put the result back in ACC0
1320: LD 0, 0(0)	* Load the final dereferenced value into the specified register
* END: variable (rvalue) access
* BEGIN: push to stack
1321: LDA 3, -56(5)	* Subtract the stack limit from SP - store in ACC3
1322: LDC 2, 51(0)	* Load diagnostic char into ACC2
1323: JLE 3, 1567(4)	* stack failure
1324: ST 0, 0(5)	* save ACC0 into the current SP location
1325: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
1326: LDC 0, 43(0)	* Load a constant into ACC0
* END: load an int constant
1327: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
1328: LD 1, 0(5)	* Load stored result into ACC1
1329: SUB 0, 1, 0	* for =, subtract right from left
1330: JEQ 0, 2(7)	* Jump to Load 1 if ACC0 == 0
1331: LDC 0, 0(0)	* Load 0 into ACC0
1332: LDA 7, 1(7)	* Jump over Load 1
1333: LDC 0, 1(0)	* Load 1 into ACC0
1334: JEQ 0, 18(7)	* Jump over the then stmts if false
* BEGIN: variable (rvalue) access
1335: LD 0, -17(6)	* Load the local var into ACC0
* END: variable (rvalue) access
* BEGIN: push to stack
1336: LDA 3, -56(5)	* Subtract the stack limit from SP - store in ACC3
1337: LDC 2, 55(0)	* Load diagnostic char into ACC2
1338: JLE 3, 1567(4)	* stack failure
1339: ST 0, 0(5)	* save ACC0 into the current SP location
1340: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
1341: LDC 0, 1(0)	* Load a constant into ACC0
* END: load an int constant
1342: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
1343: LD 1, 0(5)	* Load stored result into ACC1
1344: ADD 0, 0, 1	* Add ACC0 & ACC1 placing result in ACC0
* BEGIN: push to stack
1345: LDA 3, -56(5)	* Subtract the stack limit from SP - store in ACC3
1346: LDC 2, 50(0)	* Load diagnostic char into ACC2
1347: JLE 3, 1567(4)	* stack failure
1348: ST 0, 0(5)	* save ACC0 into the current SP location
1349: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: assignment
1350: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
1351: LD 0, 0(5)	* Load stored result into ACC0
1352: ST 0, -17(6)	* Store ACC0 into local offset (relative to FP)
* END: assignment
* BEGIN: variable (rvalue) access
1353: LD 0, -17(6)	* Load the local var into ACC0
* END: variable (rvalue) access
* BEGIN: push to stack
1354: LDA 3, -56(5)	* Subtract the stack limit from SP - store in ACC3
1355: LDC 2, 51(0)	* Load diagnostic char into ACC2
1356: JLE 3, 1567(4)	* stack failure
1357: ST 0, 0(5)	* save ACC0 into the current SP location
1358: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: variable (rvalue) access
1359: LD 0, -5(6)	* Load the local var into ACC0
* END: variable (rvalue) access
1360: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
1361: LD 1, 0(5)	* Load stored result into ACC1
1362: SUB 0, 1, 0	* for =, subtract right from left
1363: JEQ 0, 2(7)	* Jump to Load 1 if ACC0 == 0
1364: LDC 0, 0(0)	* Load 0 into ACC0
1365: LDA 7, 1(7)	* Jump over Load 1
1366: LDC 0, 1(0)	* Load 1 into ACC0
1367: JEQ 0, 1(7)	* Jump over the then stmts if false
* BEGIN: return
1368: LDA 7, 1554(4)	* Jump to the end of the proc
* END: return
* BEGIN: for loop
* BEGIN: variable (rvalue) access
1369: LD 0, -17(6)	* Load the local var into ACC0
* END: variable (rvalue) access
* BEGIN: save initial value to loop var
* BEGIN: push to stack
1370: LDA 3, -56(5)	* Subtract the stack limit from SP - store in ACC3
1371: LDC 2, 52(0)	* Load diagnostic char into ACC2
1372: JLE 3, 1567(4)	* stack failure
1373: ST 0, 0(5)	* save ACC0 into the current SP location
1374: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
1375: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
1376: LD 0, 0(5)	* Load stored result into ACC0
1377: ST 0, -20(6)	* Store ACC0 into local offset (relative to FP)
* END: save initial value to loop var
* BEGIN: variable (rvalue) access
1378: LD 0, -5(6)	* Load the local var into ACC0
* END: variable (rvalue) access
* BEGIN: push to stack
1379: LDA 3, -56(5)	* Subtract the stack limit from SP - store in ACC3
1380: LDC 2, 55(0)	* Load diagnostic char into ACC2
1381: JLE 3, 1567(4)	* stack failure
1382: ST 0, 0(5)	* save ACC0 into the current SP location
1383: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
1384: LDC 0, 1(0)	* Load a constant into ACC0
* END: load an int constant
1385: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
1386: LD 1, 0(5)	* Load stored result into ACC1
1387: SUB 0, 1, 0	* Subtract ACC0 from ACC1 placing result in ACC0
* BEGIN: save max value to max loop var
* BEGIN: push to stack
1388: LDA 3, -56(5)	* Subtract the stack limit from SP - store in ACC3
1389: LDC 2, 53(0)	* Load diagnostic char into ACC2
1390: JLE 3, 1567(4)	* stack failure
1391: ST 0, 0(5)	* save ACC0 into the current SP location
1392: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
1393: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
1394: LD 0, 0(5)	* Load stored result into ACC0
1395: ST 0, -21(6)	* Store ACC0 into local offset (relative to FP)
* END: save max value to max loop var
1396: LDA 5, 0(5)	* NOOP to mark top of loop
1397: LD 0, -20(6)	* Load the local var into ACC0
1398: LD 1, -21(6)	* Load the local var into ACC0
1399: SUB 1, 1, 0	* Subtract the loop var from the max
1400: JLT 1, 1537(4)	* go to the loop exit
* BEGIN: body of for loop
* BEGIN: variable (rvalue) access
1401: LD 0, -6(6)	* Load the base address out of the AR
* BEGIN: push to stack
1402: LDA 3, -56(5)	* Subtract the stack limit from SP - store in ACC3
1403: LDC 2, 56(0)	* Load diagnostic char into ACC2
1404: JLE 3, 1567(4)	* stack failure
1405: ST 0, 0(5)	* save ACC0 into the current SP location
1406: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: variable (rvalue) access
1407: LD 0, -20(6)	* Load the local var into ACC0
* END: variable (rvalue) access
1408: JLT 0, 1556(4)	* array bounds too small
1409: LDC 3, 10(0)	* Load the array bounds limit into ACC3
1410: SUB 3, 0, 3	* Subtract the max from the current index
1411: JGE 3, 1556(4)	* array bounds too big
1412: LDC 1, 1(0)	* Load the skip size into ACC1
1413: MUL 1, 1, 0	* Multiply the index by the skip size and place the result back into ACC1
1414: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
1415: LD 0, 0(5)	* Load stored result into ACC0
1416: ADD 0, 1, 0	* add the base (ACC0) and the skip size (ACC1) and put the result back in ACC0
1417: LD 0, 0(0)	* Load the final dereferenced value into the specified register
* END: variable (rvalue) access
* BEGIN: push to stack
1418: LDA 3, -56(5)	* Subtract the stack limit from SP - store in ACC3
1419: LDC 2, 51(0)	* Load diagnostic char into ACC2
1420: JLE 3, 1567(4)	* stack failure
1421: ST 0, 0(5)	* save ACC0 into the current SP location
1422: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
1423: LDC 0, 48(0)	* Load a constant into ACC0
* END: load an int constant
1424: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
1425: LD 1, 0(5)	* Load stored result into ACC1
* BEGIN: <
1426: SUB 0, 1, 0	* for <, subtract right from left
1427: JLT 0, 2(7)	* Jump to Load 1 if ACC0 < 0
1428: LDC 0, 0(0)	* Load 0 into ACC0
1429: LDA 7, 1(7)	* Jump over Load 1
1430: LDC 0, 1(0)	* Load 1 into ACC0
* END: <
1431: JGT 0, 40(7)	* Jump over rest of logical or code
* BEGIN: push to stack
1432: LDA 3, -56(5)	* Subtract the stack limit from SP - store in ACC3
1433: LDC 2, 57(0)	* Load diagnostic char into ACC2
1434: JLE 3, 1567(4)	* stack failure
1435: ST 0, 0(5)	* save ACC0 into the current SP location
1436: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: variable (rvalue) access
1437: LD 0, -6(6)	* Load the base address out of the AR
* BEGIN: push to stack
1438: LDA 3, -56(5)	* Subtract the stack limit from SP - store in ACC3
1439: LDC 2, 56(0)	* Load diagnostic char into ACC2
1440: JLE 3, 1567(4)	* stack failure
1441: ST 0, 0(5)	* save ACC0 into the current SP location
1442: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: variable (rvalue) access
1443: LD 0, -20(6)	* Load the local var into ACC0
* END: variable (rvalue) access
1444: JLT 0, 1556(4)	* array bounds too small
1445: LDC 3, 10(0)	* Load the array bounds limit into ACC3
1446: SUB 3, 0, 3	* Subtract the max from the current index
1447: JGE 3, 1556(4)	* array bounds too big
1448: LDC 1, 1(0)	* Load the skip size into ACC1
1449: MUL 1, 1, 0	* Multiply the index by the skip size and place the result back into ACC1
1450: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
1451: LD 0, 0(5)	* Load stored result into ACC0
1452: ADD 0, 1, 0	* add the base (ACC0) and the skip size (ACC1) and put the result back in ACC0
1453: LD 0, 0(0)	* Load the final dereferenced value into the specified register
* END: variable (rvalue) access
* BEGIN: push to stack
1454: LDA 3, -56(5)	* Subtract the stack limit from SP - store in ACC3
1455: LDC 2, 51(0)	* Load diagnostic char into ACC2
1456: JLE 3, 1567(4)	* stack failure
1457: ST 0, 0(5)	* save ACC0 into the current SP location
1458: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
1459: LDC 0, 57(0)	* Load a constant into ACC0
* END: load an int constant
1460: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
1461: LD 1, 0(5)	* Load stored result into ACC1
* BEGIN: >
1462: SUB 0, 1, 0	* for >, subtract right from left
1463: JGT 0, 2(7)	* Jump to Load 1 if ACC0 > 0
1464: LDC 0, 0(0)	* Load 0 into ACC0
1465: LDA 7, 1(7)	* Jump over Load 1
1466: LDC 0, 1(0)	* Load 1 into ACC0
* END: >
1467: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
1468: LD 1, 0(5)	* Load stored result into ACC1
1469: ADD 0, 1, 0	* for OR, add right and left
1470: JEQ 0, 1(7)	* Jump over Load 1 if ACC0 == 0
1471: LDC 0, 1(0)	* Load 1 into ACC0
1472: JEQ 0, 1(7)	* Jump over the then stmts if false
* BEGIN: break
1473: LDA 7, 1537(4)	* skip to the end of the loop
* END: break
* BEGIN: load an int constant
1474: LDC 0, 10(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: push to stack
1475: LDA 3, -56(5)	* Subtract the stack limit from SP - store in ACC3
1476: LDC 2, 55(0)	* Load diagnostic char into ACC2
1477: JLE 3, 1567(4)	* stack failure
1478: ST 0, 0(5)	* save ACC0 into the current SP location
1479: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: variable (rvalue) access
1480: LD 0, -4(6)	* Load the local var into ACC0
* END: variable (rvalue) access
1481: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
1482: LD 1, 0(5)	* Load stored result into ACC1
1483: MUL 0, 0, 1	* Multiply ACC0 & ACC1 placing result in ACC0
* BEGIN: push to stack
1484: LDA 3, -56(5)	* Subtract the stack limit from SP - store in ACC3
1485: LDC 2, 55(0)	* Load diagnostic char into ACC2
1486: JLE 3, 1567(4)	* stack failure
1487: ST 0, 0(5)	* save ACC0 into the current SP location
1488: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: variable (rvalue) access
1489: LD 0, -6(6)	* Load the base address out of the AR
* BEGIN: push to stack
1490: LDA 3, -56(5)	* Subtract the stack limit from SP - store in ACC3
1491: LDC 2, 56(0)	* Load diagnostic char into ACC2
1492: JLE 3, 1567(4)	* stack failure
1493: ST 0, 0(5)	* save ACC0 into the current SP location
1494: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: variable (rvalue) access
1495: LD 0, -20(6)	* Load the local var into ACC0
* END: variable (rvalue) access
1496: JLT 0, 1556(4)	* array bounds too small
1497: LDC 3, 10(0)	* Load the array bounds limit into ACC3
1498: SUB 3, 0, 3	* Subtract the max from the current index
1499: JGE 3, 1556(4)	* array bounds too big
1500: LDC 1, 1(0)	* Load the skip size into ACC1
1501: MUL 1, 1, 0	* Multiply the index by the skip size and place the result back into ACC1
1502: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
1503: LD 0, 0(5)	* Load stored result into ACC0
1504: ADD 0, 1, 0	* add the base (ACC0) and the skip size (ACC1) and put the result back in ACC0
1505: LD 0, 0(0)	* Load the final dereferenced value into the specified register
* END: variable (rvalue) access
1506: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
1507: LD 1, 0(5)	* Load stored result into ACC1
1508: ADD 0, 0, 1	* Add ACC0 & ACC1 placing result in ACC0
* BEGIN: push to stack
1509: LDA 3, -56(5)	* Subtract the stack limit from SP - store in ACC3
1510: LDC 2, 55(0)	* Load diagnostic char into ACC2
1511: JLE 3, 1567(4)	* stack failure
1512: ST 0, 0(5)	* save ACC0 into the current SP location
1513: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
1514: LDC 0, 48(0)	* Load a constant into ACC0
* END: load an int constant
1515: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
1516: LD 1, 0(5)	* Load stored result into ACC1
1517: SUB 0, 1, 0	* Subtract ACC0 from ACC1 placing result in ACC0
* BEGIN: push to stack
1518: LDA 3, -56(5)	* Subtract the stack limit from SP - store in ACC3
1519: LDC 2, 50(0)	* Load diagnostic char into ACC2
1520: JLE 3, 1567(4)	* stack failure
1521: ST 0, 0(5)	* save ACC0 into the current SP location
1522: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: assignment
1523: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
1524: LD 0, 0(5)	* Load stored result into ACC0
1525: ST 0, -4(6)	* Store ACC0 into local offset (relative to FP)
* END: assignment
* END: body of for loop
1526: LD 0, -20(6)	* Load the local var into ACC0
1527: LDA 0, 1(0)	* increment the loop var
* BEGIN: push to stack
1528: LDA 3, -56(5)	* Subtract the stack limit from SP - store in ACC3
1529: LDC 2, 54(0)	* Load diagnostic char into ACC2
1530: JLE 3, 1567(4)	* stack failure
1531: ST 0, 0(5)	* save ACC0 into the current SP location
1532: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
1533: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
1534: LD 0, 0(5)	* Load stored result into ACC0
1535: ST 0, -20(6)	* Store ACC0 into local offset (relative to FP)
1536: LDA 7, 1396(4)	* return to the top of the loop
1537: LDA 5, 0(5)	* NOOP to mark end of loop
* END: for loop
* BEGIN: variable (rvalue) access
1538: LD 0, -16(6)	* Load the local var into ACC0
* END: variable (rvalue) access
1539: JEQ 0, 2(7)	* Jump to Load 1 if ACC0 == 0
1540: LDC 0, 0(0)	* Load 0 into ACC0
1541: LDA 7, 1(7)	* Jump over Load 1
1542: LDC 0, 1(0)	* Load 1 into ACC0
1543: JEQ 0, 10(7)	* Jump over the then stmts if false
* BEGIN: variable (rvalue) access
1544: LD 0, -4(6)	* Load the local var into ACC0
* END: variable (rvalue) access
1545: SUB 0, 4, 0	* Subtract ACC0 from ZEROREG to negate it
* BEGIN: push to stack
1546: LDA 3, -56(5)	* Subtract the stack limit from SP - store in ACC3
1547: LDC 2, 50(0)	* Load diagnostic char into ACC2
1548: JLE 3, 1567(4)	* stack failure
1549: ST 0, 0(5)	* save ACC0 into the current SP location
1550: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: assignment
1551: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
1552: LD 0, 0(5)	* Load stored result into ACC0
1553: ST 0, -4(6)	* Store ACC0 into local offset (relative to FP)
* END: assignment
1554: LD 0, 0(6)	* Load the return address from the 1st slot in the AR to ACC0
1555: LDA 7, 0(0)	* Return to calling location (stored in ACC0)
* END: procedure code
* BEGIN: array bounds message handler
1556: LDC 0, 1(0)	* Load the error message into ACC0
1557: LDA 1, 1(0)	* Increment the address stored in ACC0 to get the string's char location (put in ACC1)
1558: LD 0, 0(0)	* Load the string size into ACC0
1559: JEQ 0, 5(7)	* Jump to end when run out of string
1560: LDA 0, -1(0)	* subtract one from string size
1561: LD 2, 0(1)	* Load next char from string into ACC2
1562: LDA 1, 1(1)	* increment pointer into string
1563: OUTC 2, 0, 0	* Write out character in ACC2
1564: LDA 7, -6(7)	* Go back to start of loop
1565: OUTNL 0, 0, 0	* dump out the newline
1566: HALT 0, 0, 0	* Halt for array bounds
* END: array bounds message handler
* BEGIN: stack limit message handler
1567: LDC 0, 25(0)	* Load the error message into ACC0
1568: LDA 1, 1(0)	* Increment the address stored in ACC0 to get the string's char location (put in ACC1)
1569: LD 0, 0(0)	* Load the string size into ACC0
1570: JEQ 0, 5(7)	* Jump to end when run out of string
1571: LDA 0, -1(0)	* subtract one from string size
1572: LD 3, 0(1)	* Load next char from string into ACC3
1573: LDA 1, 1(1)	* increment pointer into string
1574: OUTC 3, 0, 0	* Write out character in ACC3
1575: LDA 7, -6(7)	* Go back to start of loop
1576: OUTC 2, 0, 0	* Write out diagnostic char in ACC2
1577: OUTNL 0, 0, 0	* dump out the newline
1578: HALT 0, 0, 0	* Halt for stack limit
* END: stack limit message handler
