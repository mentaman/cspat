.DATA 23	* string length
.SDATA "Arrays bounds violation"	* string constant
.DATA 19	* string length
.SDATA "Out of stack space "	* string constant
.DATA 0	* storage location (45) for var avar
.DATA 0	* storage location (45) for var avar
.DATA 0	* storage location (45) for var avar
.DATA 0	* storage location (45) for var avar
.DATA 0	* storage location (45) for var avar
.DATA 0	* storage location (45) for var avar
.DATA 0	* storage location (45) for var avar
.DATA 0	* storage location (45) for var avar
.DATA 0	* storage location (45) for var avar
.DATA 0	* storage location (45) for var avar
.DATA 0	* storage location (45) for var avar
.DATA 0	* storage location (45) for var avar
.DATA 0	* storage location (45) for var avar
.DATA 0	* storage location (45) for var avar
.DATA 0	* storage location (45) for var avar
.DATA 0	* storage location (45) for var avar
.DATA 0	* storage location (45) for var avar
.DATA 0	* storage location (45) for var avar
.DATA 0	* storage location (45) for var avar
.DATA 0	* storage location (45) for var avar
.DATA 0	* storage location (45) for var avar
.DATA 0	* storage location (45) for var avar
.DATA 0	* storage location (45) for var avar
.DATA 0	* storage location (45) for var avar
.DATA 0	* storage location (69) for var bvar
.DATA 0	* storage location (69) for var bvar
.DATA 0	* storage location (69) for var bvar
.DATA 0	* storage location (69) for var bvar
.DATA 0	* storage location (69) for var bvar
.DATA 0	* storage location (69) for var bvar
.DATA 0	* storage location (75) for var cvar
.DATA 0	* storage location (75) for var cvar
.DATA 0	* storage location (77) for var dvar
* BEGIN preamble
0: LDC 4, 0(0)	* initialize ZEROREG to 0
1: LD 5, 0(4)	* initialize SP to end of memory
2: LDA 5, -1(5)	* subtract one to get the true SP
3: LDA 6, 0(5)	* FP and SP start off the same
* END preamble
* BEGIN: load an int constant
4: LDC 0, 17(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: push to stack
5: LDA 3, -79(5)	* Subtract the stack limit from SP - store in ACC3
6: LDC 2, 50(0)	* Load diagnostic char into ACC2
7: JLE 3, 714(4)	* stack failure
8: ST 0, 0(5)	* save ACC0 into the current SP location
9: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: assignment
10: LDC 0, 45(0)	* Load the base address into ACC0
* BEGIN: push to stack
11: LDA 3, -79(5)	* Subtract the stack limit from SP - store in ACC3
12: LDC 2, 56(0)	* Load diagnostic char into ACC2
13: JLE 3, 714(4)	* stack failure
14: ST 0, 0(5)	* save ACC0 into the current SP location
15: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
16: LDC 0, 3(0)	* Load a constant into ACC0
* END: load an int constant
17: JLT 0, 703(4)	* array bounds too small
18: LDC 3, 4(0)	* Load the array bounds limit into ACC3
19: SUB 3, 0, 3	* Subtract the max from the current index
20: JGE 3, 703(4)	* array bounds too big
21: LDC 1, 6(0)	* Load the skip size into ACC1
22: MUL 1, 1, 0	* Multiply the index by the skip size and place the result back into ACC1
23: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
24: LD 0, 0(5)	* Load stored result into ACC0
25: ADD 0, 1, 0	* add the base (ACC0) and the skip size (ACC1) and put the result back in ACC0
* BEGIN: push to stack
26: LDA 3, -79(5)	* Subtract the stack limit from SP - store in ACC3
27: LDC 2, 56(0)	* Load diagnostic char into ACC2
28: JLE 3, 714(4)	* stack failure
29: ST 0, 0(5)	* save ACC0 into the current SP location
30: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
31: LDC 0, 2(0)	* Load a constant into ACC0
* END: load an int constant
32: JLT 0, 703(4)	* array bounds too small
33: LDC 3, 3(0)	* Load the array bounds limit into ACC3
34: SUB 3, 0, 3	* Subtract the max from the current index
35: JGE 3, 703(4)	* array bounds too big
36: LDC 1, 2(0)	* Load the skip size into ACC1
37: MUL 1, 1, 0	* Multiply the index by the skip size and place the result back into ACC1
38: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
39: LD 0, 0(5)	* Load stored result into ACC0
40: ADD 0, 1, 0	* add the base (ACC0) and the skip size (ACC1) and put the result back in ACC0
* BEGIN: push to stack
41: LDA 3, -79(5)	* Subtract the stack limit from SP - store in ACC3
42: LDC 2, 56(0)	* Load diagnostic char into ACC2
43: JLE 3, 714(4)	* stack failure
44: ST 0, 0(5)	* save ACC0 into the current SP location
45: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
46: LDC 0, 1(0)	* Load a constant into ACC0
* END: load an int constant
47: JLT 0, 703(4)	* array bounds too small
48: LDC 3, 2(0)	* Load the array bounds limit into ACC3
49: SUB 3, 0, 3	* Subtract the max from the current index
50: JGE 3, 703(4)	* array bounds too big
51: LDC 1, 1(0)	* Load the skip size into ACC1
52: MUL 1, 1, 0	* Multiply the index by the skip size and place the result back into ACC1
53: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
54: LD 0, 0(5)	* Load stored result into ACC0
55: ADD 0, 1, 0	* add the base (ACC0) and the skip size (ACC1) and put the result back in ACC0
* BEGIN: push to stack
56: LDA 3, -79(5)	* Subtract the stack limit from SP - store in ACC3
57: LDC 2, 56(0)	* Load diagnostic char into ACC2
58: JLE 3, 714(4)	* stack failure
59: ST 0, 0(5)	* save ACC0 into the current SP location
60: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
61: LDC 0, 0(0)	* Load a constant into ACC0
* END: load an int constant
62: JLT 0, 703(4)	* array bounds too small
63: LDC 3, 1(0)	* Load the array bounds limit into ACC3
64: SUB 3, 0, 3	* Subtract the max from the current index
65: JGE 3, 703(4)	* array bounds too big
66: LDC 1, 1(0)	* Load the skip size into ACC1
67: MUL 1, 1, 0	* Multiply the index by the skip size and place the result back into ACC1
68: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
69: LD 0, 0(5)	* Load stored result into ACC0
70: ADD 0, 1, 0	* add the base (ACC0) and the skip size (ACC1) and put the result back in ACC0
71: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
72: LD 1, 0(5)	* Load stored result into ACC1
73: ST 1, 0(0)	* Store ACC0 into global offset
* END: assignment
* BEGIN: load an int constant
74: LDC 0, 16(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: push to stack
75: LDA 3, -79(5)	* Subtract the stack limit from SP - store in ACC3
76: LDC 2, 50(0)	* Load diagnostic char into ACC2
77: JLE 3, 714(4)	* stack failure
78: ST 0, 0(5)	* save ACC0 into the current SP location
79: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: assignment
80: LDC 0, 69(0)	* Load the base address into ACC0
* BEGIN: push to stack
81: LDA 3, -79(5)	* Subtract the stack limit from SP - store in ACC3
82: LDC 2, 56(0)	* Load diagnostic char into ACC2
83: JLE 3, 714(4)	* stack failure
84: ST 0, 0(5)	* save ACC0 into the current SP location
85: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
86: LDC 0, 2(0)	* Load a constant into ACC0
* END: load an int constant
87: JLT 0, 703(4)	* array bounds too small
88: LDC 3, 3(0)	* Load the array bounds limit into ACC3
89: SUB 3, 0, 3	* Subtract the max from the current index
90: JGE 3, 703(4)	* array bounds too big
91: LDC 1, 2(0)	* Load the skip size into ACC1
92: MUL 1, 1, 0	* Multiply the index by the skip size and place the result back into ACC1
93: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
94: LD 0, 0(5)	* Load stored result into ACC0
95: ADD 0, 1, 0	* add the base (ACC0) and the skip size (ACC1) and put the result back in ACC0
* BEGIN: push to stack
96: LDA 3, -79(5)	* Subtract the stack limit from SP - store in ACC3
97: LDC 2, 56(0)	* Load diagnostic char into ACC2
98: JLE 3, 714(4)	* stack failure
99: ST 0, 0(5)	* save ACC0 into the current SP location
100: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
101: LDC 0, 1(0)	* Load a constant into ACC0
* END: load an int constant
102: JLT 0, 703(4)	* array bounds too small
103: LDC 3, 2(0)	* Load the array bounds limit into ACC3
104: SUB 3, 0, 3	* Subtract the max from the current index
105: JGE 3, 703(4)	* array bounds too big
106: LDC 1, 1(0)	* Load the skip size into ACC1
107: MUL 1, 1, 0	* Multiply the index by the skip size and place the result back into ACC1
108: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
109: LD 0, 0(5)	* Load stored result into ACC0
110: ADD 0, 1, 0	* add the base (ACC0) and the skip size (ACC1) and put the result back in ACC0
* BEGIN: push to stack
111: LDA 3, -79(5)	* Subtract the stack limit from SP - store in ACC3
112: LDC 2, 56(0)	* Load diagnostic char into ACC2
113: JLE 3, 714(4)	* stack failure
114: ST 0, 0(5)	* save ACC0 into the current SP location
115: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
116: LDC 0, 0(0)	* Load a constant into ACC0
* END: load an int constant
117: JLT 0, 703(4)	* array bounds too small
118: LDC 3, 1(0)	* Load the array bounds limit into ACC3
119: SUB 3, 0, 3	* Subtract the max from the current index
120: JGE 3, 703(4)	* array bounds too big
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
129: LDC 0, 15(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: push to stack
130: LDA 3, -79(5)	* Subtract the stack limit from SP - store in ACC3
131: LDC 2, 50(0)	* Load diagnostic char into ACC2
132: JLE 3, 714(4)	* stack failure
133: ST 0, 0(5)	* save ACC0 into the current SP location
134: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: assignment
135: LDC 0, 75(0)	* Load the base address into ACC0
* BEGIN: push to stack
136: LDA 3, -79(5)	* Subtract the stack limit from SP - store in ACC3
137: LDC 2, 56(0)	* Load diagnostic char into ACC2
138: JLE 3, 714(4)	* stack failure
139: ST 0, 0(5)	* save ACC0 into the current SP location
140: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
141: LDC 0, 1(0)	* Load a constant into ACC0
* END: load an int constant
142: JLT 0, 703(4)	* array bounds too small
143: LDC 3, 2(0)	* Load the array bounds limit into ACC3
144: SUB 3, 0, 3	* Subtract the max from the current index
145: JGE 3, 703(4)	* array bounds too big
146: LDC 1, 1(0)	* Load the skip size into ACC1
147: MUL 1, 1, 0	* Multiply the index by the skip size and place the result back into ACC1
148: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
149: LD 0, 0(5)	* Load stored result into ACC0
150: ADD 0, 1, 0	* add the base (ACC0) and the skip size (ACC1) and put the result back in ACC0
* BEGIN: push to stack
151: LDA 3, -79(5)	* Subtract the stack limit from SP - store in ACC3
152: LDC 2, 56(0)	* Load diagnostic char into ACC2
153: JLE 3, 714(4)	* stack failure
154: ST 0, 0(5)	* save ACC0 into the current SP location
155: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
156: LDC 0, 0(0)	* Load a constant into ACC0
* END: load an int constant
157: JLT 0, 703(4)	* array bounds too small
158: LDC 3, 1(0)	* Load the array bounds limit into ACC3
159: SUB 3, 0, 3	* Subtract the max from the current index
160: JGE 3, 703(4)	* array bounds too big
161: LDC 1, 1(0)	* Load the skip size into ACC1
162: MUL 1, 1, 0	* Multiply the index by the skip size and place the result back into ACC1
163: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
164: LD 0, 0(5)	* Load stored result into ACC0
165: ADD 0, 1, 0	* add the base (ACC0) and the skip size (ACC1) and put the result back in ACC0
166: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
167: LD 1, 0(5)	* Load stored result into ACC1
168: ST 1, 0(0)	* Store ACC0 into global offset
* END: assignment
* BEGIN: load an int constant
169: LDC 0, 14(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: push to stack
170: LDA 3, -79(5)	* Subtract the stack limit from SP - store in ACC3
171: LDC 2, 50(0)	* Load diagnostic char into ACC2
172: JLE 3, 714(4)	* stack failure
173: ST 0, 0(5)	* save ACC0 into the current SP location
174: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: assignment
175: LDC 0, 77(0)	* Load the base address into ACC0
* BEGIN: push to stack
176: LDA 3, -79(5)	* Subtract the stack limit from SP - store in ACC3
177: LDC 2, 56(0)	* Load diagnostic char into ACC2
178: JLE 3, 714(4)	* stack failure
179: ST 0, 0(5)	* save ACC0 into the current SP location
180: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
181: LDC 0, 0(0)	* Load a constant into ACC0
* END: load an int constant
182: JLT 0, 703(4)	* array bounds too small
183: LDC 3, 1(0)	* Load the array bounds limit into ACC3
184: SUB 3, 0, 3	* Subtract the max from the current index
185: JGE 3, 703(4)	* array bounds too big
186: LDC 1, 1(0)	* Load the skip size into ACC1
187: MUL 1, 1, 0	* Multiply the index by the skip size and place the result back into ACC1
188: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
189: LD 0, 0(5)	* Load stored result into ACC0
190: ADD 0, 1, 0	* add the base (ACC0) and the skip size (ACC1) and put the result back in ACC0
191: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
192: LD 1, 0(5)	* Load stored result into ACC1
193: ST 1, 0(0)	* Store ACC0 into global offset
* END: assignment
* BEGIN: procedure call
194: LDA 0, 15(7)	* Get return address into ACC0
195: LDA 3, -82(5)	* Subtract the stack limit from SP - store in ACC3
196: LDC 2, 97(0)	* Load diagnostic char into ACC2
197: JLE 3, 714(4)	* stack failure
198: ST 0, 0(5)	* Store return address (in ACC0) to SP/FP
* return value sits at SP-1/FP-1
199: ST 5, -2(5)	* Store SP to SP-2/FP-2
200: ST 6, -3(5)	* Store FP to SP-3/FP-3
201: LDA 5, -4(5)	* decrement SP by 4 (i.e., 4 pushes)
* BEGIN: variable (rvalue) access
202: LDC 0, 45(0)	* Load the base address into ACC0
* END: variable (rvalue) access
203: LDA 3, -79(5)	* Subtract the stack limit from SP - store in ACC3
204: LDC 2, 98(0)	* Load diagnostic char into ACC2
205: JLE 3, 714(4)	* stack failure
206: ST 0, 0(5)	* Store param in slot
207: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
208: LDA 6, 5(5)	* Set FP to be the "pre-push of AR" SP
* SP already points to end of the AR
209: LDA 7, 525(4)	* Jump to the start of the proc
210: LD 5, -2(6)	* Restore SP from FP-2
211: LD 6, -3(6)	* Restore FP from FP-3
* END: procedure call
* BEGIN: procedure call
212: LDA 0, 30(7)	* Get return address into ACC0
213: LDA 3, -82(5)	* Subtract the stack limit from SP - store in ACC3
214: LDC 2, 97(0)	* Load diagnostic char into ACC2
215: JLE 3, 714(4)	* stack failure
216: ST 0, 0(5)	* Store return address (in ACC0) to SP/FP
* return value sits at SP-1/FP-1
217: ST 5, -2(5)	* Store SP to SP-2/FP-2
218: ST 6, -3(5)	* Store FP to SP-3/FP-3
219: LDA 5, -4(5)	* decrement SP by 4 (i.e., 4 pushes)
* BEGIN: variable (rvalue) access
220: LDC 0, 45(0)	* Load the base address into ACC0
* BEGIN: push to stack
221: LDA 3, -79(5)	* Subtract the stack limit from SP - store in ACC3
222: LDC 2, 56(0)	* Load diagnostic char into ACC2
223: JLE 3, 714(4)	* stack failure
224: ST 0, 0(5)	* save ACC0 into the current SP location
225: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
226: LDC 0, 3(0)	* Load a constant into ACC0
* END: load an int constant
227: JLT 0, 703(4)	* array bounds too small
228: LDC 3, 4(0)	* Load the array bounds limit into ACC3
229: SUB 3, 0, 3	* Subtract the max from the current index
230: JGE 3, 703(4)	* array bounds too big
231: LDC 1, 6(0)	* Load the skip size into ACC1
232: MUL 1, 1, 0	* Multiply the index by the skip size and place the result back into ACC1
233: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
234: LD 0, 0(5)	* Load stored result into ACC0
235: ADD 0, 1, 0	* add the base (ACC0) and the skip size (ACC1) and put the result back in ACC0
* END: variable (rvalue) access
236: LDA 3, -79(5)	* Subtract the stack limit from SP - store in ACC3
237: LDC 2, 98(0)	* Load diagnostic char into ACC2
238: JLE 3, 714(4)	* stack failure
239: ST 0, 0(5)	* Store param in slot
240: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
241: LDA 6, 5(5)	* Set FP to be the "pre-push of AR" SP
* SP already points to end of the AR
242: LDA 7, 592(4)	* Jump to the start of the proc
243: LD 5, -2(6)	* Restore SP from FP-2
244: LD 6, -3(6)	* Restore FP from FP-3
* END: procedure call
* BEGIN: procedure call
245: LDA 0, 15(7)	* Get return address into ACC0
246: LDA 3, -82(5)	* Subtract the stack limit from SP - store in ACC3
247: LDC 2, 97(0)	* Load diagnostic char into ACC2
248: JLE 3, 714(4)	* stack failure
249: ST 0, 0(5)	* Store return address (in ACC0) to SP/FP
* return value sits at SP-1/FP-1
250: ST 5, -2(5)	* Store SP to SP-2/FP-2
251: ST 6, -3(5)	* Store FP to SP-3/FP-3
252: LDA 5, -4(5)	* decrement SP by 4 (i.e., 4 pushes)
* BEGIN: variable (rvalue) access
253: LDC 0, 69(0)	* Load the base address into ACC0
* END: variable (rvalue) access
254: LDA 3, -79(5)	* Subtract the stack limit from SP - store in ACC3
255: LDC 2, 98(0)	* Load diagnostic char into ACC2
256: JLE 3, 714(4)	* stack failure
257: ST 0, 0(5)	* Store param in slot
258: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
259: LDA 6, 5(5)	* Set FP to be the "pre-push of AR" SP
* SP already points to end of the AR
260: LDA 7, 592(4)	* Jump to the start of the proc
261: LD 5, -2(6)	* Restore SP from FP-2
262: LD 6, -3(6)	* Restore FP from FP-3
* END: procedure call
* BEGIN: procedure call
263: LDA 0, 45(7)	* Get return address into ACC0
264: LDA 3, -82(5)	* Subtract the stack limit from SP - store in ACC3
265: LDC 2, 97(0)	* Load diagnostic char into ACC2
266: JLE 3, 714(4)	* stack failure
267: ST 0, 0(5)	* Store return address (in ACC0) to SP/FP
* return value sits at SP-1/FP-1
268: ST 5, -2(5)	* Store SP to SP-2/FP-2
269: ST 6, -3(5)	* Store FP to SP-3/FP-3
270: LDA 5, -4(5)	* decrement SP by 4 (i.e., 4 pushes)
* BEGIN: variable (rvalue) access
271: LDC 0, 45(0)	* Load the base address into ACC0
* BEGIN: push to stack
272: LDA 3, -79(5)	* Subtract the stack limit from SP - store in ACC3
273: LDC 2, 56(0)	* Load diagnostic char into ACC2
274: JLE 3, 714(4)	* stack failure
275: ST 0, 0(5)	* save ACC0 into the current SP location
276: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
277: LDC 0, 3(0)	* Load a constant into ACC0
* END: load an int constant
278: JLT 0, 703(4)	* array bounds too small
279: LDC 3, 4(0)	* Load the array bounds limit into ACC3
280: SUB 3, 0, 3	* Subtract the max from the current index
281: JGE 3, 703(4)	* array bounds too big
282: LDC 1, 6(0)	* Load the skip size into ACC1
283: MUL 1, 1, 0	* Multiply the index by the skip size and place the result back into ACC1
284: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
285: LD 0, 0(5)	* Load stored result into ACC0
286: ADD 0, 1, 0	* add the base (ACC0) and the skip size (ACC1) and put the result back in ACC0
* BEGIN: push to stack
287: LDA 3, -79(5)	* Subtract the stack limit from SP - store in ACC3
288: LDC 2, 56(0)	* Load diagnostic char into ACC2
289: JLE 3, 714(4)	* stack failure
290: ST 0, 0(5)	* save ACC0 into the current SP location
291: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
292: LDC 0, 2(0)	* Load a constant into ACC0
* END: load an int constant
293: JLT 0, 703(4)	* array bounds too small
294: LDC 3, 3(0)	* Load the array bounds limit into ACC3
295: SUB 3, 0, 3	* Subtract the max from the current index
296: JGE 3, 703(4)	* array bounds too big
297: LDC 1, 2(0)	* Load the skip size into ACC1
298: MUL 1, 1, 0	* Multiply the index by the skip size and place the result back into ACC1
299: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
300: LD 0, 0(5)	* Load stored result into ACC0
301: ADD 0, 1, 0	* add the base (ACC0) and the skip size (ACC1) and put the result back in ACC0
* END: variable (rvalue) access
302: LDA 3, -79(5)	* Subtract the stack limit from SP - store in ACC3
303: LDC 2, 98(0)	* Load diagnostic char into ACC2
304: JLE 3, 714(4)	* stack failure
305: ST 0, 0(5)	* Store param in slot
306: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
307: LDA 6, 5(5)	* Set FP to be the "pre-push of AR" SP
* SP already points to end of the AR
308: LDA 7, 644(4)	* Jump to the start of the proc
309: LD 5, -2(6)	* Restore SP from FP-2
310: LD 6, -3(6)	* Restore FP from FP-3
* END: procedure call
* BEGIN: procedure call
311: LDA 0, 30(7)	* Get return address into ACC0
312: LDA 3, -82(5)	* Subtract the stack limit from SP - store in ACC3
313: LDC 2, 97(0)	* Load diagnostic char into ACC2
314: JLE 3, 714(4)	* stack failure
315: ST 0, 0(5)	* Store return address (in ACC0) to SP/FP
* return value sits at SP-1/FP-1
316: ST 5, -2(5)	* Store SP to SP-2/FP-2
317: ST 6, -3(5)	* Store FP to SP-3/FP-3
318: LDA 5, -4(5)	* decrement SP by 4 (i.e., 4 pushes)
* BEGIN: variable (rvalue) access
319: LDC 0, 69(0)	* Load the base address into ACC0
* BEGIN: push to stack
320: LDA 3, -79(5)	* Subtract the stack limit from SP - store in ACC3
321: LDC 2, 56(0)	* Load diagnostic char into ACC2
322: JLE 3, 714(4)	* stack failure
323: ST 0, 0(5)	* save ACC0 into the current SP location
324: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
325: LDC 0, 2(0)	* Load a constant into ACC0
* END: load an int constant
326: JLT 0, 703(4)	* array bounds too small
327: LDC 3, 3(0)	* Load the array bounds limit into ACC3
328: SUB 3, 0, 3	* Subtract the max from the current index
329: JGE 3, 703(4)	* array bounds too big
330: LDC 1, 2(0)	* Load the skip size into ACC1
331: MUL 1, 1, 0	* Multiply the index by the skip size and place the result back into ACC1
332: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
333: LD 0, 0(5)	* Load stored result into ACC0
334: ADD 0, 1, 0	* add the base (ACC0) and the skip size (ACC1) and put the result back in ACC0
* END: variable (rvalue) access
335: LDA 3, -79(5)	* Subtract the stack limit from SP - store in ACC3
336: LDC 2, 98(0)	* Load diagnostic char into ACC2
337: JLE 3, 714(4)	* stack failure
338: ST 0, 0(5)	* Store param in slot
339: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
340: LDA 6, 5(5)	* Set FP to be the "pre-push of AR" SP
* SP already points to end of the AR
341: LDA 7, 644(4)	* Jump to the start of the proc
342: LD 5, -2(6)	* Restore SP from FP-2
343: LD 6, -3(6)	* Restore FP from FP-3
* END: procedure call
* BEGIN: procedure call
344: LDA 0, 15(7)	* Get return address into ACC0
345: LDA 3, -82(5)	* Subtract the stack limit from SP - store in ACC3
346: LDC 2, 97(0)	* Load diagnostic char into ACC2
347: JLE 3, 714(4)	* stack failure
348: ST 0, 0(5)	* Store return address (in ACC0) to SP/FP
* return value sits at SP-1/FP-1
349: ST 5, -2(5)	* Store SP to SP-2/FP-2
350: ST 6, -3(5)	* Store FP to SP-3/FP-3
351: LDA 5, -4(5)	* decrement SP by 4 (i.e., 4 pushes)
* BEGIN: variable (rvalue) access
352: LDC 0, 75(0)	* Load the base address into ACC0
* END: variable (rvalue) access
353: LDA 3, -79(5)	* Subtract the stack limit from SP - store in ACC3
354: LDC 2, 98(0)	* Load diagnostic char into ACC2
355: JLE 3, 714(4)	* stack failure
356: ST 0, 0(5)	* Store param in slot
357: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
358: LDA 6, 5(5)	* Set FP to be the "pre-push of AR" SP
* SP already points to end of the AR
359: LDA 7, 644(4)	* Jump to the start of the proc
360: LD 5, -2(6)	* Restore SP from FP-2
361: LD 6, -3(6)	* Restore FP from FP-3
* END: procedure call
* BEGIN: procedure call
362: LDA 0, 60(7)	* Get return address into ACC0
363: LDA 3, -82(5)	* Subtract the stack limit from SP - store in ACC3
364: LDC 2, 97(0)	* Load diagnostic char into ACC2
365: JLE 3, 714(4)	* stack failure
366: ST 0, 0(5)	* Store return address (in ACC0) to SP/FP
* return value sits at SP-1/FP-1
367: ST 5, -2(5)	* Store SP to SP-2/FP-2
368: ST 6, -3(5)	* Store FP to SP-3/FP-3
369: LDA 5, -4(5)	* decrement SP by 4 (i.e., 4 pushes)
* BEGIN: variable (rvalue) access
370: LDC 0, 45(0)	* Load the base address into ACC0
* BEGIN: push to stack
371: LDA 3, -79(5)	* Subtract the stack limit from SP - store in ACC3
372: LDC 2, 56(0)	* Load diagnostic char into ACC2
373: JLE 3, 714(4)	* stack failure
374: ST 0, 0(5)	* save ACC0 into the current SP location
375: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
376: LDC 0, 3(0)	* Load a constant into ACC0
* END: load an int constant
377: JLT 0, 703(4)	* array bounds too small
378: LDC 3, 4(0)	* Load the array bounds limit into ACC3
379: SUB 3, 0, 3	* Subtract the max from the current index
380: JGE 3, 703(4)	* array bounds too big
381: LDC 1, 6(0)	* Load the skip size into ACC1
382: MUL 1, 1, 0	* Multiply the index by the skip size and place the result back into ACC1
383: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
384: LD 0, 0(5)	* Load stored result into ACC0
385: ADD 0, 1, 0	* add the base (ACC0) and the skip size (ACC1) and put the result back in ACC0
* BEGIN: push to stack
386: LDA 3, -79(5)	* Subtract the stack limit from SP - store in ACC3
387: LDC 2, 56(0)	* Load diagnostic char into ACC2
388: JLE 3, 714(4)	* stack failure
389: ST 0, 0(5)	* save ACC0 into the current SP location
390: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
391: LDC 0, 2(0)	* Load a constant into ACC0
* END: load an int constant
392: JLT 0, 703(4)	* array bounds too small
393: LDC 3, 3(0)	* Load the array bounds limit into ACC3
394: SUB 3, 0, 3	* Subtract the max from the current index
395: JGE 3, 703(4)	* array bounds too big
396: LDC 1, 2(0)	* Load the skip size into ACC1
397: MUL 1, 1, 0	* Multiply the index by the skip size and place the result back into ACC1
398: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
399: LD 0, 0(5)	* Load stored result into ACC0
400: ADD 0, 1, 0	* add the base (ACC0) and the skip size (ACC1) and put the result back in ACC0
* BEGIN: push to stack
401: LDA 3, -79(5)	* Subtract the stack limit from SP - store in ACC3
402: LDC 2, 56(0)	* Load diagnostic char into ACC2
403: JLE 3, 714(4)	* stack failure
404: ST 0, 0(5)	* save ACC0 into the current SP location
405: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
406: LDC 0, 1(0)	* Load a constant into ACC0
* END: load an int constant
407: JLT 0, 703(4)	* array bounds too small
408: LDC 3, 2(0)	* Load the array bounds limit into ACC3
409: SUB 3, 0, 3	* Subtract the max from the current index
410: JGE 3, 703(4)	* array bounds too big
411: LDC 1, 1(0)	* Load the skip size into ACC1
412: MUL 1, 1, 0	* Multiply the index by the skip size and place the result back into ACC1
413: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
414: LD 0, 0(5)	* Load stored result into ACC0
415: ADD 0, 1, 0	* add the base (ACC0) and the skip size (ACC1) and put the result back in ACC0
* END: variable (rvalue) access
416: LDA 3, -79(5)	* Subtract the stack limit from SP - store in ACC3
417: LDC 2, 98(0)	* Load diagnostic char into ACC2
418: JLE 3, 714(4)	* stack failure
419: ST 0, 0(5)	* Store param in slot
420: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
421: LDA 6, 5(5)	* Set FP to be the "pre-push of AR" SP
* SP already points to end of the AR
422: LDA 7, 681(4)	* Jump to the start of the proc
423: LD 5, -2(6)	* Restore SP from FP-2
424: LD 6, -3(6)	* Restore FP from FP-3
* END: procedure call
* BEGIN: procedure call
425: LDA 0, 45(7)	* Get return address into ACC0
426: LDA 3, -82(5)	* Subtract the stack limit from SP - store in ACC3
427: LDC 2, 97(0)	* Load diagnostic char into ACC2
428: JLE 3, 714(4)	* stack failure
429: ST 0, 0(5)	* Store return address (in ACC0) to SP/FP
* return value sits at SP-1/FP-1
430: ST 5, -2(5)	* Store SP to SP-2/FP-2
431: ST 6, -3(5)	* Store FP to SP-3/FP-3
432: LDA 5, -4(5)	* decrement SP by 4 (i.e., 4 pushes)
* BEGIN: variable (rvalue) access
433: LDC 0, 69(0)	* Load the base address into ACC0
* BEGIN: push to stack
434: LDA 3, -79(5)	* Subtract the stack limit from SP - store in ACC3
435: LDC 2, 56(0)	* Load diagnostic char into ACC2
436: JLE 3, 714(4)	* stack failure
437: ST 0, 0(5)	* save ACC0 into the current SP location
438: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
439: LDC 0, 2(0)	* Load a constant into ACC0
* END: load an int constant
440: JLT 0, 703(4)	* array bounds too small
441: LDC 3, 3(0)	* Load the array bounds limit into ACC3
442: SUB 3, 0, 3	* Subtract the max from the current index
443: JGE 3, 703(4)	* array bounds too big
444: LDC 1, 2(0)	* Load the skip size into ACC1
445: MUL 1, 1, 0	* Multiply the index by the skip size and place the result back into ACC1
446: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
447: LD 0, 0(5)	* Load stored result into ACC0
448: ADD 0, 1, 0	* add the base (ACC0) and the skip size (ACC1) and put the result back in ACC0
* BEGIN: push to stack
449: LDA 3, -79(5)	* Subtract the stack limit from SP - store in ACC3
450: LDC 2, 56(0)	* Load diagnostic char into ACC2
451: JLE 3, 714(4)	* stack failure
452: ST 0, 0(5)	* save ACC0 into the current SP location
453: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
454: LDC 0, 1(0)	* Load a constant into ACC0
* END: load an int constant
455: JLT 0, 703(4)	* array bounds too small
456: LDC 3, 2(0)	* Load the array bounds limit into ACC3
457: SUB 3, 0, 3	* Subtract the max from the current index
458: JGE 3, 703(4)	* array bounds too big
459: LDC 1, 1(0)	* Load the skip size into ACC1
460: MUL 1, 1, 0	* Multiply the index by the skip size and place the result back into ACC1
461: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
462: LD 0, 0(5)	* Load stored result into ACC0
463: ADD 0, 1, 0	* add the base (ACC0) and the skip size (ACC1) and put the result back in ACC0
* END: variable (rvalue) access
464: LDA 3, -79(5)	* Subtract the stack limit from SP - store in ACC3
465: LDC 2, 98(0)	* Load diagnostic char into ACC2
466: JLE 3, 714(4)	* stack failure
467: ST 0, 0(5)	* Store param in slot
468: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
469: LDA 6, 5(5)	* Set FP to be the "pre-push of AR" SP
* SP already points to end of the AR
470: LDA 7, 681(4)	* Jump to the start of the proc
471: LD 5, -2(6)	* Restore SP from FP-2
472: LD 6, -3(6)	* Restore FP from FP-3
* END: procedure call
* BEGIN: procedure call
473: LDA 0, 30(7)	* Get return address into ACC0
474: LDA 3, -82(5)	* Subtract the stack limit from SP - store in ACC3
475: LDC 2, 97(0)	* Load diagnostic char into ACC2
476: JLE 3, 714(4)	* stack failure
477: ST 0, 0(5)	* Store return address (in ACC0) to SP/FP
* return value sits at SP-1/FP-1
478: ST 5, -2(5)	* Store SP to SP-2/FP-2
479: ST 6, -3(5)	* Store FP to SP-3/FP-3
480: LDA 5, -4(5)	* decrement SP by 4 (i.e., 4 pushes)
* BEGIN: variable (rvalue) access
481: LDC 0, 75(0)	* Load the base address into ACC0
* BEGIN: push to stack
482: LDA 3, -79(5)	* Subtract the stack limit from SP - store in ACC3
483: LDC 2, 56(0)	* Load diagnostic char into ACC2
484: JLE 3, 714(4)	* stack failure
485: ST 0, 0(5)	* save ACC0 into the current SP location
486: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
487: LDC 0, 1(0)	* Load a constant into ACC0
* END: load an int constant
488: JLT 0, 703(4)	* array bounds too small
489: LDC 3, 2(0)	* Load the array bounds limit into ACC3
490: SUB 3, 0, 3	* Subtract the max from the current index
491: JGE 3, 703(4)	* array bounds too big
492: LDC 1, 1(0)	* Load the skip size into ACC1
493: MUL 1, 1, 0	* Multiply the index by the skip size and place the result back into ACC1
494: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
495: LD 0, 0(5)	* Load stored result into ACC0
496: ADD 0, 1, 0	* add the base (ACC0) and the skip size (ACC1) and put the result back in ACC0
* END: variable (rvalue) access
497: LDA 3, -79(5)	* Subtract the stack limit from SP - store in ACC3
498: LDC 2, 98(0)	* Load diagnostic char into ACC2
499: JLE 3, 714(4)	* stack failure
500: ST 0, 0(5)	* Store param in slot
501: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
502: LDA 6, 5(5)	* Set FP to be the "pre-push of AR" SP
* SP already points to end of the AR
503: LDA 7, 681(4)	* Jump to the start of the proc
504: LD 5, -2(6)	* Restore SP from FP-2
505: LD 6, -3(6)	* Restore FP from FP-3
* END: procedure call
* BEGIN: procedure call
506: LDA 0, 15(7)	* Get return address into ACC0
507: LDA 3, -82(5)	* Subtract the stack limit from SP - store in ACC3
508: LDC 2, 97(0)	* Load diagnostic char into ACC2
509: JLE 3, 714(4)	* stack failure
510: ST 0, 0(5)	* Store return address (in ACC0) to SP/FP
* return value sits at SP-1/FP-1
511: ST 5, -2(5)	* Store SP to SP-2/FP-2
512: ST 6, -3(5)	* Store FP to SP-3/FP-3
513: LDA 5, -4(5)	* decrement SP by 4 (i.e., 4 pushes)
* BEGIN: variable (rvalue) access
514: LDC 0, 77(0)	* Load the base address into ACC0
* END: variable (rvalue) access
515: LDA 3, -79(5)	* Subtract the stack limit from SP - store in ACC3
516: LDC 2, 98(0)	* Load diagnostic char into ACC2
517: JLE 3, 714(4)	* stack failure
518: ST 0, 0(5)	* Store param in slot
519: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
520: LDA 6, 5(5)	* Set FP to be the "pre-push of AR" SP
* SP already points to end of the AR
521: LDA 7, 681(4)	* Jump to the start of the proc
522: LD 5, -2(6)	* Restore SP from FP-2
523: LD 6, -3(6)	* Restore FP from FP-3
* END: procedure call
524: HALT 0, 0, 0	* End of Program
* BEGIN: procedure code
525: LDA 0, 0(0)	* NOOP to mark beginning of proc
* BEGIN: variable (rvalue) access
526: LD 0, -4(6)	* Load the base address out of the AR
* BEGIN: push to stack
527: LDA 3, -79(5)	* Subtract the stack limit from SP - store in ACC3
528: LDC 2, 56(0)	* Load diagnostic char into ACC2
529: JLE 3, 714(4)	* stack failure
530: ST 0, 0(5)	* save ACC0 into the current SP location
531: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
532: LDC 0, 3(0)	* Load a constant into ACC0
* END: load an int constant
533: JLT 0, 703(4)	* array bounds too small
534: LDC 3, 4(0)	* Load the array bounds limit into ACC3
535: SUB 3, 0, 3	* Subtract the max from the current index
536: JGE 3, 703(4)	* array bounds too big
537: LDC 1, 6(0)	* Load the skip size into ACC1
538: MUL 1, 1, 0	* Multiply the index by the skip size and place the result back into ACC1
539: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
540: LD 0, 0(5)	* Load stored result into ACC0
541: ADD 0, 1, 0	* add the base (ACC0) and the skip size (ACC1) and put the result back in ACC0
* BEGIN: push to stack
542: LDA 3, -79(5)	* Subtract the stack limit from SP - store in ACC3
543: LDC 2, 56(0)	* Load diagnostic char into ACC2
544: JLE 3, 714(4)	* stack failure
545: ST 0, 0(5)	* save ACC0 into the current SP location
546: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
547: LDC 0, 2(0)	* Load a constant into ACC0
* END: load an int constant
548: JLT 0, 703(4)	* array bounds too small
549: LDC 3, 3(0)	* Load the array bounds limit into ACC3
550: SUB 3, 0, 3	* Subtract the max from the current index
551: JGE 3, 703(4)	* array bounds too big
552: LDC 1, 2(0)	* Load the skip size into ACC1
553: MUL 1, 1, 0	* Multiply the index by the skip size and place the result back into ACC1
554: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
555: LD 0, 0(5)	* Load stored result into ACC0
556: ADD 0, 1, 0	* add the base (ACC0) and the skip size (ACC1) and put the result back in ACC0
* BEGIN: push to stack
557: LDA 3, -79(5)	* Subtract the stack limit from SP - store in ACC3
558: LDC 2, 56(0)	* Load diagnostic char into ACC2
559: JLE 3, 714(4)	* stack failure
560: ST 0, 0(5)	* save ACC0 into the current SP location
561: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
562: LDC 0, 1(0)	* Load a constant into ACC0
* END: load an int constant
563: JLT 0, 703(4)	* array bounds too small
564: LDC 3, 2(0)	* Load the array bounds limit into ACC3
565: SUB 3, 0, 3	* Subtract the max from the current index
566: JGE 3, 703(4)	* array bounds too big
567: LDC 1, 1(0)	* Load the skip size into ACC1
568: MUL 1, 1, 0	* Multiply the index by the skip size and place the result back into ACC1
569: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
570: LD 0, 0(5)	* Load stored result into ACC0
571: ADD 0, 1, 0	* add the base (ACC0) and the skip size (ACC1) and put the result back in ACC0
* BEGIN: push to stack
572: LDA 3, -79(5)	* Subtract the stack limit from SP - store in ACC3
573: LDC 2, 56(0)	* Load diagnostic char into ACC2
574: JLE 3, 714(4)	* stack failure
575: ST 0, 0(5)	* save ACC0 into the current SP location
576: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
577: LDC 0, 0(0)	* Load a constant into ACC0
* END: load an int constant
578: JLT 0, 703(4)	* array bounds too small
579: LDC 3, 1(0)	* Load the array bounds limit into ACC3
580: SUB 3, 0, 3	* Subtract the max from the current index
581: JGE 3, 703(4)	* array bounds too big
582: LDC 1, 1(0)	* Load the skip size into ACC1
583: MUL 1, 1, 0	* Multiply the index by the skip size and place the result back into ACC1
584: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
585: LD 0, 0(5)	* Load stored result into ACC0
586: ADD 0, 1, 0	* add the base (ACC0) and the skip size (ACC1) and put the result back in ACC0
587: LD 0, 0(0)	* Load the final dereferenced value into the specified register
* END: variable (rvalue) access
* BEGIN: write(s)
588: OUT 0, 0, 0	* write out the int value in ACC0
589: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
590: LD 0, 0(6)	* Load the return address from the 1st slot in the AR to ACC0
591: LDA 7, 0(0)	* Return to calling location (stored in ACC0)
* END: procedure code
* BEGIN: procedure code
592: LDA 0, 0(0)	* NOOP to mark beginning of proc
* BEGIN: variable (rvalue) access
593: LD 0, -4(6)	* Load the base address out of the AR
* BEGIN: push to stack
594: LDA 3, -79(5)	* Subtract the stack limit from SP - store in ACC3
595: LDC 2, 56(0)	* Load diagnostic char into ACC2
596: JLE 3, 714(4)	* stack failure
597: ST 0, 0(5)	* save ACC0 into the current SP location
598: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
599: LDC 0, 2(0)	* Load a constant into ACC0
* END: load an int constant
600: JLT 0, 703(4)	* array bounds too small
601: LDC 3, 3(0)	* Load the array bounds limit into ACC3
602: SUB 3, 0, 3	* Subtract the max from the current index
603: JGE 3, 703(4)	* array bounds too big
604: LDC 1, 2(0)	* Load the skip size into ACC1
605: MUL 1, 1, 0	* Multiply the index by the skip size and place the result back into ACC1
606: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
607: LD 0, 0(5)	* Load stored result into ACC0
608: ADD 0, 1, 0	* add the base (ACC0) and the skip size (ACC1) and put the result back in ACC0
* BEGIN: push to stack
609: LDA 3, -79(5)	* Subtract the stack limit from SP - store in ACC3
610: LDC 2, 56(0)	* Load diagnostic char into ACC2
611: JLE 3, 714(4)	* stack failure
612: ST 0, 0(5)	* save ACC0 into the current SP location
613: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
614: LDC 0, 1(0)	* Load a constant into ACC0
* END: load an int constant
615: JLT 0, 703(4)	* array bounds too small
616: LDC 3, 2(0)	* Load the array bounds limit into ACC3
617: SUB 3, 0, 3	* Subtract the max from the current index
618: JGE 3, 703(4)	* array bounds too big
619: LDC 1, 1(0)	* Load the skip size into ACC1
620: MUL 1, 1, 0	* Multiply the index by the skip size and place the result back into ACC1
621: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
622: LD 0, 0(5)	* Load stored result into ACC0
623: ADD 0, 1, 0	* add the base (ACC0) and the skip size (ACC1) and put the result back in ACC0
* BEGIN: push to stack
624: LDA 3, -79(5)	* Subtract the stack limit from SP - store in ACC3
625: LDC 2, 56(0)	* Load diagnostic char into ACC2
626: JLE 3, 714(4)	* stack failure
627: ST 0, 0(5)	* save ACC0 into the current SP location
628: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
629: LDC 0, 0(0)	* Load a constant into ACC0
* END: load an int constant
630: JLT 0, 703(4)	* array bounds too small
631: LDC 3, 1(0)	* Load the array bounds limit into ACC3
632: SUB 3, 0, 3	* Subtract the max from the current index
633: JGE 3, 703(4)	* array bounds too big
634: LDC 1, 1(0)	* Load the skip size into ACC1
635: MUL 1, 1, 0	* Multiply the index by the skip size and place the result back into ACC1
636: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
637: LD 0, 0(5)	* Load stored result into ACC0
638: ADD 0, 1, 0	* add the base (ACC0) and the skip size (ACC1) and put the result back in ACC0
639: LD 0, 0(0)	* Load the final dereferenced value into the specified register
* END: variable (rvalue) access
* BEGIN: write(s)
640: OUT 0, 0, 0	* write out the int value in ACC0
641: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
642: LD 0, 0(6)	* Load the return address from the 1st slot in the AR to ACC0
643: LDA 7, 0(0)	* Return to calling location (stored in ACC0)
* END: procedure code
* BEGIN: procedure code
644: LDA 0, 0(0)	* NOOP to mark beginning of proc
* BEGIN: variable (rvalue) access
645: LD 0, -4(6)	* Load the base address out of the AR
* BEGIN: push to stack
646: LDA 3, -79(5)	* Subtract the stack limit from SP - store in ACC3
647: LDC 2, 56(0)	* Load diagnostic char into ACC2
648: JLE 3, 714(4)	* stack failure
649: ST 0, 0(5)	* save ACC0 into the current SP location
650: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
651: LDC 0, 1(0)	* Load a constant into ACC0
* END: load an int constant
652: JLT 0, 703(4)	* array bounds too small
653: LDC 3, 2(0)	* Load the array bounds limit into ACC3
654: SUB 3, 0, 3	* Subtract the max from the current index
655: JGE 3, 703(4)	* array bounds too big
656: LDC 1, 1(0)	* Load the skip size into ACC1
657: MUL 1, 1, 0	* Multiply the index by the skip size and place the result back into ACC1
658: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
659: LD 0, 0(5)	* Load stored result into ACC0
660: ADD 0, 1, 0	* add the base (ACC0) and the skip size (ACC1) and put the result back in ACC0
* BEGIN: push to stack
661: LDA 3, -79(5)	* Subtract the stack limit from SP - store in ACC3
662: LDC 2, 56(0)	* Load diagnostic char into ACC2
663: JLE 3, 714(4)	* stack failure
664: ST 0, 0(5)	* save ACC0 into the current SP location
665: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
666: LDC 0, 0(0)	* Load a constant into ACC0
* END: load an int constant
667: JLT 0, 703(4)	* array bounds too small
668: LDC 3, 1(0)	* Load the array bounds limit into ACC3
669: SUB 3, 0, 3	* Subtract the max from the current index
670: JGE 3, 703(4)	* array bounds too big
671: LDC 1, 1(0)	* Load the skip size into ACC1
672: MUL 1, 1, 0	* Multiply the index by the skip size and place the result back into ACC1
673: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
674: LD 0, 0(5)	* Load stored result into ACC0
675: ADD 0, 1, 0	* add the base (ACC0) and the skip size (ACC1) and put the result back in ACC0
676: LD 0, 0(0)	* Load the final dereferenced value into the specified register
* END: variable (rvalue) access
* BEGIN: write(s)
677: OUT 0, 0, 0	* write out the int value in ACC0
678: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
679: LD 0, 0(6)	* Load the return address from the 1st slot in the AR to ACC0
680: LDA 7, 0(0)	* Return to calling location (stored in ACC0)
* END: procedure code
* BEGIN: procedure code
681: LDA 0, 0(0)	* NOOP to mark beginning of proc
* BEGIN: variable (rvalue) access
682: LD 0, -4(6)	* Load the base address out of the AR
* BEGIN: push to stack
683: LDA 3, -79(5)	* Subtract the stack limit from SP - store in ACC3
684: LDC 2, 56(0)	* Load diagnostic char into ACC2
685: JLE 3, 714(4)	* stack failure
686: ST 0, 0(5)	* save ACC0 into the current SP location
687: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
688: LDC 0, 0(0)	* Load a constant into ACC0
* END: load an int constant
689: JLT 0, 703(4)	* array bounds too small
690: LDC 3, 1(0)	* Load the array bounds limit into ACC3
691: SUB 3, 0, 3	* Subtract the max from the current index
692: JGE 3, 703(4)	* array bounds too big
693: LDC 1, 1(0)	* Load the skip size into ACC1
694: MUL 1, 1, 0	* Multiply the index by the skip size and place the result back into ACC1
695: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
696: LD 0, 0(5)	* Load stored result into ACC0
697: ADD 0, 1, 0	* add the base (ACC0) and the skip size (ACC1) and put the result back in ACC0
698: LD 0, 0(0)	* Load the final dereferenced value into the specified register
* END: variable (rvalue) access
* BEGIN: write(s)
699: OUT 0, 0, 0	* write out the int value in ACC0
700: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
701: LD 0, 0(6)	* Load the return address from the 1st slot in the AR to ACC0
702: LDA 7, 0(0)	* Return to calling location (stored in ACC0)
* END: procedure code
* BEGIN: array bounds message handler
703: LDC 0, 1(0)	* Load the error message into ACC0
704: LDA 1, 1(0)	* Increment the address stored in ACC0 to get the string's char location (put in ACC1)
705: LD 0, 0(0)	* Load the string size into ACC0
706: JEQ 0, 5(7)	* Jump to end when run out of string
707: LDA 0, -1(0)	* subtract one from string size
708: LD 2, 0(1)	* Load next char from string into ACC2
709: LDA 1, 1(1)	* increment pointer into string
710: OUTC 2, 0, 0	* Write out character in ACC2
711: LDA 7, -6(7)	* Go back to start of loop
712: OUTNL 0, 0, 0	* dump out the newline
713: HALT 0, 0, 0	* Halt for array bounds
* END: array bounds message handler
* BEGIN: stack limit message handler
714: LDC 0, 25(0)	* Load the error message into ACC0
715: LDA 1, 1(0)	* Increment the address stored in ACC0 to get the string's char location (put in ACC1)
716: LD 0, 0(0)	* Load the string size into ACC0
717: JEQ 0, 5(7)	* Jump to end when run out of string
718: LDA 0, -1(0)	* subtract one from string size
719: LD 3, 0(1)	* Load next char from string into ACC3
720: LDA 1, 1(1)	* increment pointer into string
721: OUTC 3, 0, 0	* Write out character in ACC3
722: LDA 7, -6(7)	* Go back to start of loop
723: OUTC 2, 0, 0	* Write out diagnostic char in ACC2
724: OUTNL 0, 0, 0	* dump out the newline
725: HALT 0, 0, 0	* Halt for stack limit
* END: stack limit message handler
