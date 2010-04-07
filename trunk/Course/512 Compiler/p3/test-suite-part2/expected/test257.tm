.DATA 23	* string length
.SDATA "Arrays bounds violation"	* string constant
.DATA 19	* string length
.SDATA "Out of stack space "	* string constant
.DATA 3	* string length
.SDATA " + "	* string constant
.DATA 3	* string length
.SDATA " = "	* string constant
.DATA 18	* string length
.SDATA "Enter seed value: "	* string constant
.DATA 0	* storage location (72) for var Seed
.DATA 0	* storage location (73) for var CUTOFF
* BEGIN preamble
0: LDC 4, 0(0)	* initialize ZEROREG to 0
1: LD 5, 0(4)	* initialize SP to end of memory
2: LDA 5, -1(5)	* subtract one to get the true SP
3: LDA 6, 0(5)	* FP and SP start off the same
* END preamble
* BEGIN: procedure call
4: LDA 0, 17(7)	* Get return address into ACC0
5: LDA 3, -78(5)	* Subtract the stack limit from SP - store in ACC3
6: LDC 2, 97(0)	* Load diagnostic char into ACC2
7: JLE 3, 290(4)	* stack failure
8: ST 0, 0(5)	* Store return address (in ACC0) to SP/FP
* return value sits at SP-1/FP-1
9: ST 5, -2(5)	* Store SP to SP-2/FP-2
10: ST 6, -3(5)	* Store FP to SP-3/FP-3
11: LDA 5, -4(5)	* decrement SP by 4 (i.e., 4 pushes)
12: LDA 3, -75(5)	* Subtract the stack limit from SP - store in ACC3
13: LDC 2, 99(0)	* Load diagnostic char into ACC2
14: JLE 3, 290(4)	* stack failure
15: LDA 5, -1(5)	* decrement SP by local var's size (i.e., push)
16: LDA 3, -75(5)	* Subtract the stack limit from SP - store in ACC3
17: LDC 2, 99(0)	* Load diagnostic char into ACC2
18: JLE 3, 290(4)	* stack failure
19: LDA 5, -1(5)	* decrement SP by local var's size (i.e., push)
20: LDA 6, 6(5)	* Set FP to be the "pre-push of AR" SP
* SP already points to end of the AR
21: LDA 7, 25(4)	* Jump to the start of the proc
22: LD 5, -2(6)	* Restore SP from FP-2
23: LD 6, -3(6)	* Restore FP from FP-3
* END: procedure call
24: HALT 0, 0, 0	* End of Program
* BEGIN: procedure code
25: LDA 0, 0(0)	* NOOP to mark beginning of proc
* BEGIN: load an int constant
26: LDC 0, 32749(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: push to stack
27: LDA 3, -75(5)	* Subtract the stack limit from SP - store in ACC3
28: LDC 2, 50(0)	* Load diagnostic char into ACC2
29: JLE 3, 290(4)	* stack failure
30: ST 0, 0(5)	* save ACC0 into the current SP location
31: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: assignment
32: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
33: LD 0, 0(5)	* Load stored result into ACC0
34: ST 0, 73(4)	* Store ACC0 into global offset
* END: assignment
* BEGIN: load a string's location into ACC0
35: LDC 0, 53(0)	* Load a string's location into ACC0
* END: load a string's location into ACC0
* BEGIN: write(s)
36: LDA 1, 1(0)	* Increment the address stored in ACC0 to get the string's char location (put in ACC1)
37: LD 0, 0(0)	* Load the string size into ACC0
38: JEQ 0, 5(7)	* Jump to end when run out of string
39: LDA 0, -1(0)	* subtract one from string size
40: LD 2, 0(1)	* Load next char from string into ACC2
41: LDA 1, 1(1)	* increment pointer into string
42: OUTC 2, 0, 0	* Write out character in ACC2
43: LDA 7, -6(7)	* Go back to start of loop
* END: write(s)
44: IN 0, 0, 0	* Read into ACC0
* BEGIN: push to stack
45: LDA 3, -75(5)	* Subtract the stack limit from SP - store in ACC3
46: LDC 2, 55(0)	* Load diagnostic char into ACC2
47: JLE 3, 290(4)	* stack failure
48: ST 0, 0(5)	* save ACC0 into the current SP location
49: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: variable (rvalue) access
50: LD 0, 73(4)	* Load the global var into ACC0
* END: variable (rvalue) access
51: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
52: LD 1, 0(5)	* Load stored result into ACC1
* BEGIN: mod
53: DIV 2, 1, 0	* Divide left by right & put result in ACC2
54: MUL 2, 2, 0	* Multiply the right by the divide result & put in ACC2
55: SUB 0, 1, 2	* Subtract the multiplication result from left & put in ACC
* END: mod
* BEGIN: push to stack
56: LDA 3, -75(5)	* Subtract the stack limit from SP - store in ACC3
57: LDC 2, 50(0)	* Load diagnostic char into ACC2
58: JLE 3, 290(4)	* stack failure
59: ST 0, 0(5)	* save ACC0 into the current SP location
60: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: assignment
61: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
62: LD 0, 0(5)	* Load stored result into ACC0
63: ST 0, 72(4)	* Store ACC0 into global offset
* END: assignment
* BEGIN: for loop
* BEGIN: load an int constant
64: LDC 0, 1(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: save initial value to loop var
* BEGIN: push to stack
65: LDA 3, -75(5)	* Subtract the stack limit from SP - store in ACC3
66: LDC 2, 52(0)	* Load diagnostic char into ACC2
67: JLE 3, 290(4)	* stack failure
68: ST 0, 0(5)	* save ACC0 into the current SP location
69: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
70: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
71: LD 0, 0(5)	* Load stored result into ACC0
72: ST 0, -4(6)	* Store ACC0 into local offset (relative to FP)
* END: save initial value to loop var
* BEGIN: load an int constant
73: LDC 0, 10(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: save max value to max loop var
* BEGIN: push to stack
74: LDA 3, -75(5)	* Subtract the stack limit from SP - store in ACC3
75: LDC 2, 53(0)	* Load diagnostic char into ACC2
76: JLE 3, 290(4)	* stack failure
77: ST 0, 0(5)	* save ACC0 into the current SP location
78: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
79: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
80: LD 0, 0(5)	* Load stored result into ACC0
81: ST 0, -5(6)	* Store ACC0 into local offset (relative to FP)
* END: save max value to max loop var
82: LDA 5, 0(5)	* NOOP to mark top of loop
83: LD 0, -4(6)	* Load the local var into ACC0
84: LD 1, -5(6)	* Load the local var into ACC0
85: SUB 1, 1, 0	* Subtract the loop var from the max
86: JLT 1, 118(4)	* go to the loop exit
* BEGIN: body of for loop
* BEGIN: procedure call
87: LDA 0, 17(7)	* Get return address into ACC0
88: LDA 3, -78(5)	* Subtract the stack limit from SP - store in ACC3
89: LDC 2, 97(0)	* Load diagnostic char into ACC2
90: JLE 3, 290(4)	* stack failure
91: ST 0, 0(5)	* Store return address (in ACC0) to SP/FP
* return value sits at SP-1/FP-1
92: ST 5, -2(5)	* Store SP to SP-2/FP-2
93: ST 6, -3(5)	* Store FP to SP-3/FP-3
94: LDA 5, -4(5)	* decrement SP by 4 (i.e., 4 pushes)
95: LDA 3, -75(5)	* Subtract the stack limit from SP - store in ACC3
96: LDC 2, 99(0)	* Load diagnostic char into ACC2
97: JLE 3, 290(4)	* stack failure
98: LDA 5, -1(5)	* decrement SP by local var's size (i.e., push)
99: LDA 3, -75(5)	* Subtract the stack limit from SP - store in ACC3
100: LDC 2, 99(0)	* Load diagnostic char into ACC2
101: JLE 3, 290(4)	* stack failure
102: LDA 5, -1(5)	* decrement SP by local var's size (i.e., push)
103: LDA 6, 6(5)	* Set FP to be the "pre-push of AR" SP
* SP already points to end of the AR
104: LDA 7, 191(4)	* Jump to the start of the proc
105: LD 5, -2(6)	* Restore SP from FP-2
106: LD 6, -3(6)	* Restore FP from FP-3
* END: procedure call
* END: body of for loop
107: LD 0, -4(6)	* Load the local var into ACC0
108: LDA 0, 1(0)	* increment the loop var
* BEGIN: push to stack
109: LDA 3, -75(5)	* Subtract the stack limit from SP - store in ACC3
110: LDC 2, 54(0)	* Load diagnostic char into ACC2
111: JLE 3, 290(4)	* stack failure
112: ST 0, 0(5)	* save ACC0 into the current SP location
113: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
114: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
115: LD 0, 0(5)	* Load stored result into ACC0
116: ST 0, -4(6)	* Store ACC0 into local offset (relative to FP)
117: LDA 7, 82(4)	* return to the top of the loop
118: LDA 5, 0(5)	* NOOP to mark end of loop
* END: for loop
119: LD 0, 0(6)	* Load the return address from the 1st slot in the AR to ACC0
120: LDA 7, 0(0)	* Return to calling location (stored in ACC0)
* END: procedure code
* BEGIN: procedure code
121: LDA 0, 0(0)	* NOOP to mark beginning of proc
* BEGIN: variable (rvalue) access
122: LD 0, 72(4)	* Load the global var into ACC0
* END: variable (rvalue) access
* BEGIN: push to stack
123: LDA 3, -75(5)	* Subtract the stack limit from SP - store in ACC3
124: LDC 2, 55(0)	* Load diagnostic char into ACC2
125: JLE 3, 290(4)	* stack failure
126: ST 0, 0(5)	* save ACC0 into the current SP location
127: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
128: LDC 0, 32719(0)	* Load a constant into ACC0
* END: load an int constant
129: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
130: LD 1, 0(5)	* Load stored result into ACC1
131: MUL 0, 0, 1	* Multiply ACC0 & ACC1 placing result in ACC0
* BEGIN: push to stack
132: LDA 3, -75(5)	* Subtract the stack limit from SP - store in ACC3
133: LDC 2, 55(0)	* Load diagnostic char into ACC2
134: JLE 3, 290(4)	* stack failure
135: ST 0, 0(5)	* save ACC0 into the current SP location
136: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
137: LDC 0, 3(0)	* Load a constant into ACC0
* END: load an int constant
138: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
139: LD 1, 0(5)	* Load stored result into ACC1
140: ADD 0, 0, 1	* Add ACC0 & ACC1 placing result in ACC0
* BEGIN: push to stack
141: LDA 3, -75(5)	* Subtract the stack limit from SP - store in ACC3
142: LDC 2, 55(0)	* Load diagnostic char into ACC2
143: JLE 3, 290(4)	* stack failure
144: ST 0, 0(5)	* save ACC0 into the current SP location
145: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: variable (rvalue) access
146: LD 0, 73(4)	* Load the global var into ACC0
* END: variable (rvalue) access
147: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
148: LD 1, 0(5)	* Load stored result into ACC1
* BEGIN: mod
149: DIV 2, 1, 0	* Divide left by right & put result in ACC2
150: MUL 2, 2, 0	* Multiply the right by the divide result & put in ACC2
151: SUB 0, 1, 2	* Subtract the multiplication result from left & put in ACC
* END: mod
* BEGIN: push to stack
152: LDA 3, -75(5)	* Subtract the stack limit from SP - store in ACC3
153: LDC 2, 50(0)	* Load diagnostic char into ACC2
154: JLE 3, 290(4)	* stack failure
155: ST 0, 0(5)	* save ACC0 into the current SP location
156: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: assignment
157: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
158: LD 0, 0(5)	* Load stored result into ACC0
159: ST 0, 72(4)	* Store ACC0 into global offset
* END: assignment
* BEGIN: variable (rvalue) access
160: LD 0, 72(4)	* Load the global var into ACC0
* END: variable (rvalue) access
* BEGIN: push to stack
161: LDA 3, -75(5)	* Subtract the stack limit from SP - store in ACC3
162: LDC 2, 55(0)	* Load diagnostic char into ACC2
163: JLE 3, 290(4)	* stack failure
164: ST 0, 0(5)	* save ACC0 into the current SP location
165: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: variable (rvalue) access
166: LD 0, -5(6)	* Load the local var into ACC0
* END: variable (rvalue) access
167: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
168: LD 1, 0(5)	* Load stored result into ACC1
* BEGIN: mod
169: DIV 2, 1, 0	* Divide left by right & put result in ACC2
170: MUL 2, 2, 0	* Multiply the right by the divide result & put in ACC2
171: SUB 0, 1, 2	* Subtract the multiplication result from left & put in ACC
* END: mod
* BEGIN: push to stack
172: LDA 3, -75(5)	* Subtract the stack limit from SP - store in ACC3
173: LDC 2, 55(0)	* Load diagnostic char into ACC2
174: JLE 3, 290(4)	* stack failure
175: ST 0, 0(5)	* save ACC0 into the current SP location
176: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
177: LDC 0, 1(0)	* Load a constant into ACC0
* END: load an int constant
178: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
179: LD 1, 0(5)	* Load stored result into ACC1
180: ADD 0, 0, 1	* Add ACC0 & ACC1 placing result in ACC0
* BEGIN: push to stack
181: LDA 3, -75(5)	* Subtract the stack limit from SP - store in ACC3
182: LDC 2, 50(0)	* Load diagnostic char into ACC2
183: JLE 3, 290(4)	* stack failure
184: ST 0, 0(5)	* save ACC0 into the current SP location
185: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: assignment
186: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
187: LD 0, 0(5)	* Load stored result into ACC0
188: ST 0, -4(6)	* Store ACC0 into local offset (relative to FP)
* END: assignment
189: LD 0, 0(6)	* Load the return address from the 1st slot in the AR to ACC0
190: LDA 7, 0(0)	* Return to calling location (stored in ACC0)
* END: procedure code
* BEGIN: procedure code
191: LDA 0, 0(0)	* NOOP to mark beginning of proc
* BEGIN: procedure call
192: LDA 0, 19(7)	* Get return address into ACC0
193: LDA 3, -78(5)	* Subtract the stack limit from SP - store in ACC3
194: LDC 2, 97(0)	* Load diagnostic char into ACC2
195: JLE 3, 290(4)	* stack failure
196: ST 0, 0(5)	* Store return address (in ACC0) to SP/FP
* return value sits at SP-1/FP-1
197: ST 5, -2(5)	* Store SP to SP-2/FP-2
198: ST 6, -3(5)	* Store FP to SP-3/FP-3
199: LDA 5, -4(5)	* decrement SP by 4 (i.e., 4 pushes)
200: LDA 3, -75(5)	* Subtract the stack limit from SP - store in ACC3
201: LDC 2, 99(0)	* Load diagnostic char into ACC2
202: JLE 3, 290(4)	* stack failure
203: LDA 5, -1(5)	* decrement SP by local var's size (i.e., push)
* BEGIN: load an int constant
204: LDC 0, 6(0)	* Load a constant into ACC0
* END: load an int constant
205: LDA 3, -75(5)	* Subtract the stack limit from SP - store in ACC3
206: LDC 2, 98(0)	* Load diagnostic char into ACC2
207: JLE 3, 290(4)	* stack failure
208: ST 0, 0(5)	* Store param in slot
209: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
210: LDA 6, 6(5)	* Set FP to be the "pre-push of AR" SP
* SP already points to end of the AR
211: LDA 7, 121(4)	* Jump to the start of the proc
212: LD 0, -4(6)	* Load the return value into ACC0
213: LD 5, -2(6)	* Restore SP from FP-2
214: LD 6, -3(6)	* Restore FP from FP-3
* END: procedure call
* BEGIN: push to stack
215: LDA 3, -75(5)	* Subtract the stack limit from SP - store in ACC3
216: LDC 2, 50(0)	* Load diagnostic char into ACC2
217: JLE 3, 290(4)	* stack failure
218: ST 0, 0(5)	* save ACC0 into the current SP location
219: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: assignment
220: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
221: LD 0, 0(5)	* Load stored result into ACC0
222: ST 0, -4(6)	* Store ACC0 into local offset (relative to FP)
* END: assignment
* BEGIN: procedure call
223: LDA 0, 19(7)	* Get return address into ACC0
224: LDA 3, -78(5)	* Subtract the stack limit from SP - store in ACC3
225: LDC 2, 97(0)	* Load diagnostic char into ACC2
226: JLE 3, 290(4)	* stack failure
227: ST 0, 0(5)	* Store return address (in ACC0) to SP/FP
* return value sits at SP-1/FP-1
228: ST 5, -2(5)	* Store SP to SP-2/FP-2
229: ST 6, -3(5)	* Store FP to SP-3/FP-3
230: LDA 5, -4(5)	* decrement SP by 4 (i.e., 4 pushes)
231: LDA 3, -75(5)	* Subtract the stack limit from SP - store in ACC3
232: LDC 2, 99(0)	* Load diagnostic char into ACC2
233: JLE 3, 290(4)	* stack failure
234: LDA 5, -1(5)	* decrement SP by local var's size (i.e., push)
* BEGIN: load an int constant
235: LDC 0, 6(0)	* Load a constant into ACC0
* END: load an int constant
236: LDA 3, -75(5)	* Subtract the stack limit from SP - store in ACC3
237: LDC 2, 98(0)	* Load diagnostic char into ACC2
238: JLE 3, 290(4)	* stack failure
239: ST 0, 0(5)	* Store param in slot
240: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
241: LDA 6, 6(5)	* Set FP to be the "pre-push of AR" SP
* SP already points to end of the AR
242: LDA 7, 121(4)	* Jump to the start of the proc
243: LD 0, -4(6)	* Load the return value into ACC0
244: LD 5, -2(6)	* Restore SP from FP-2
245: LD 6, -3(6)	* Restore FP from FP-3
* END: procedure call
* BEGIN: push to stack
246: LDA 3, -75(5)	* Subtract the stack limit from SP - store in ACC3
247: LDC 2, 50(0)	* Load diagnostic char into ACC2
248: JLE 3, 290(4)	* stack failure
249: ST 0, 0(5)	* save ACC0 into the current SP location
250: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: assignment
251: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
252: LD 0, 0(5)	* Load stored result into ACC0
253: ST 0, -5(6)	* Store ACC0 into local offset (relative to FP)
* END: assignment
* BEGIN: variable (rvalue) access
254: LD 0, -4(6)	* Load the local var into ACC0
* END: variable (rvalue) access
* BEGIN: write(s)
255: OUT 0, 0, 0	* write out the int value in ACC0
* END: write(s)
* BEGIN: load a string's location into ACC0
256: LDC 0, 45(0)	* Load a string's location into ACC0
* END: load a string's location into ACC0
* BEGIN: write(s)
257: LDA 1, 1(0)	* Increment the address stored in ACC0 to get the string's char location (put in ACC1)
258: LD 0, 0(0)	* Load the string size into ACC0
259: JEQ 0, 5(7)	* Jump to end when run out of string
260: LDA 0, -1(0)	* subtract one from string size
261: LD 2, 0(1)	* Load next char from string into ACC2
262: LDA 1, 1(1)	* increment pointer into string
263: OUTC 2, 0, 0	* Write out character in ACC2
264: LDA 7, -6(7)	* Go back to start of loop
* END: write(s)
* BEGIN: variable (rvalue) access
265: LD 0, -5(6)	* Load the local var into ACC0
* END: variable (rvalue) access
* BEGIN: write(s)
266: OUT 0, 0, 0	* write out the int value in ACC0
* END: write(s)
* BEGIN: load a string's location into ACC0
267: LDC 0, 49(0)	* Load a string's location into ACC0
* END: load a string's location into ACC0
* BEGIN: write(s)
268: LDA 1, 1(0)	* Increment the address stored in ACC0 to get the string's char location (put in ACC1)
269: LD 0, 0(0)	* Load the string size into ACC0
270: JEQ 0, 5(7)	* Jump to end when run out of string
271: LDA 0, -1(0)	* subtract one from string size
272: LD 2, 0(1)	* Load next char from string into ACC2
273: LDA 1, 1(1)	* increment pointer into string
274: OUTC 2, 0, 0	* Write out character in ACC2
275: LDA 7, -6(7)	* Go back to start of loop
* END: write(s)
* BEGIN: variable (rvalue) access
276: LD 0, -4(6)	* Load the local var into ACC0
* END: variable (rvalue) access
* BEGIN: push to stack
277: LDA 3, -75(5)	* Subtract the stack limit from SP - store in ACC3
278: LDC 2, 55(0)	* Load diagnostic char into ACC2
279: JLE 3, 290(4)	* stack failure
280: ST 0, 0(5)	* save ACC0 into the current SP location
281: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: variable (rvalue) access
282: LD 0, -5(6)	* Load the local var into ACC0
* END: variable (rvalue) access
283: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
284: LD 1, 0(5)	* Load stored result into ACC1
285: ADD 0, 0, 1	* Add ACC0 & ACC1 placing result in ACC0
* BEGIN: write(s)
286: OUT 0, 0, 0	* write out the int value in ACC0
287: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
288: LD 0, 0(6)	* Load the return address from the 1st slot in the AR to ACC0
289: LDA 7, 0(0)	* Return to calling location (stored in ACC0)
* END: procedure code
* BEGIN: stack limit message handler
290: LDC 0, 25(0)	* Load the error message into ACC0
291: LDA 1, 1(0)	* Increment the address stored in ACC0 to get the string's char location (put in ACC1)
292: LD 0, 0(0)	* Load the string size into ACC0
293: JEQ 0, 5(7)	* Jump to end when run out of string
294: LDA 0, -1(0)	* subtract one from string size
295: LD 3, 0(1)	* Load next char from string into ACC3
296: LDA 1, 1(1)	* increment pointer into string
297: OUTC 3, 0, 0	* Write out character in ACC3
298: LDA 7, -6(7)	* Go back to start of loop
299: OUTC 2, 0, 0	* Write out diagnostic char in ACC2
300: OUTNL 0, 0, 0	* dump out the newline
301: HALT 0, 0, 0	* Halt for stack limit
* END: stack limit message handler
