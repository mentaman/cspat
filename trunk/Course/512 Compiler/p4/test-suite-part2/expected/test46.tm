.DATA 23	* string length
.SDATA "Arrays bounds violation"	* string constant
.DATA 19	* string length
.SDATA "Out of stack space "	* string constant
.DATA 15	* string length
.SDATA "m > 4 || m <= 2"	* string constant
.DATA 15	* string length
.SDATA "m <= 4 && m > 2"	* string constant
.DATA 0	* storage location (77) for var i
.DATA 0	* storage location (78) for var j
* BEGIN preamble
0: LDC 4, 0(0)	* initialize ZEROREG to 0
1: LD 5, 0(4)	* initialize SP to end of memory
2: LDA 5, -1(5)	* subtract one to get the true SP
3: LDA 6, 0(5)	* FP and SP start off the same
* END preamble
* BEGIN: load an int constant
4: LDC 0, 0(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: push to stack
5: LDA 3, -80(5)	* Subtract the stack limit from SP - store in ACC3
6: LDC 2, 50(0)	* Load diagnostic char into ACC2
7: JLE 3, 289(4)	* stack failure
8: ST 0, 0(5)	* save ACC0 into the current SP location
9: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: assignment
10: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
11: LD 0, 0(5)	* Load stored result into ACC0
12: ST 0, 77(4)	* Store ACC0 into global offset
* END: assignment
* BEGIN: load an int constant
13: LDC 0, 0(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: push to stack
14: LDA 3, -80(5)	* Subtract the stack limit from SP - store in ACC3
15: LDC 2, 50(0)	* Load diagnostic char into ACC2
16: JLE 3, 289(4)	* stack failure
17: ST 0, 0(5)	* save ACC0 into the current SP location
18: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: assignment
19: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
20: LD 0, 0(5)	* Load stored result into ACC0
21: ST 0, 78(4)	* Store ACC0 into global offset
* END: assignment
* BEGIN: procedure call
22: LDA 0, 31(7)	* Get return address into ACC0
23: LDA 3, -83(5)	* Subtract the stack limit from SP - store in ACC3
24: LDC 2, 97(0)	* Load diagnostic char into ACC2
25: JLE 3, 289(4)	* stack failure
26: ST 0, 0(5)	* Store return address (in ACC0) to SP/FP
* return value sits at SP-1/FP-1
27: ST 5, -2(5)	* Store SP to SP-2/FP-2
28: ST 6, -3(5)	* Store FP to SP-3/FP-3
29: LDA 5, -4(5)	* decrement SP by 4 (i.e., 4 pushes)
30: LDA 3, -80(5)	* Subtract the stack limit from SP - store in ACC3
31: LDC 2, 99(0)	* Load diagnostic char into ACC2
32: JLE 3, 289(4)	* stack failure
33: LDA 5, -1(5)	* decrement SP by local var's size (i.e., push)
* BEGIN: load an int constant
34: LDC 0, 6(0)	* Load a constant into ACC0
* END: load an int constant
35: LDA 3, -80(5)	* Subtract the stack limit from SP - store in ACC3
36: LDC 2, 98(0)	* Load diagnostic char into ACC2
37: JLE 3, 289(4)	* stack failure
38: ST 0, 0(5)	* Store param in slot
39: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
40: LDA 3, -80(5)	* Subtract the stack limit from SP - store in ACC3
41: LDC 2, 99(0)	* Load diagnostic char into ACC2
42: JLE 3, 289(4)	* stack failure
43: LDA 5, -1(5)	* decrement SP by local var's size (i.e., push)
44: LDA 3, -80(5)	* Subtract the stack limit from SP - store in ACC3
45: LDC 2, 99(0)	* Load diagnostic char into ACC2
46: JLE 3, 289(4)	* stack failure
47: LDA 5, -1(5)	* decrement SP by local var's size (i.e., push)
48: LDA 3, -80(5)	* Subtract the stack limit from SP - store in ACC3
49: LDC 2, 99(0)	* Load diagnostic char into ACC2
50: JLE 3, 289(4)	* stack failure
51: LDA 5, -1(5)	* decrement SP by local var's size (i.e., push)
52: LDA 6, 9(5)	* Set FP to be the "pre-push of AR" SP
* SP already points to end of the AR
53: LDA 7, 161(4)	* Jump to the start of the proc
54: LD 0, -4(6)	* Load the return value into ACC0
55: LD 5, -2(6)	* Restore SP from FP-2
56: LD 6, -3(6)	* Restore FP from FP-3
* END: procedure call
* BEGIN: write(s)
57: LDA 1, 1(0)	* Increment the address stored in ACC0 to get the string's char location (put in ACC1)
58: LD 0, 0(0)	* Load the string size into ACC0
59: JEQ 0, 5(7)	* Jump to end when run out of string
60: LDA 0, -1(0)	* subtract one from string size
61: LD 2, 0(1)	* Load next char from string into ACC2
62: LDA 1, 1(1)	* increment pointer into string
63: OUTC 2, 0, 0	* Write out character in ACC2
64: LDA 7, -6(7)	* Go back to start of loop
65: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
* BEGIN: procedure call
66: LDA 0, 31(7)	* Get return address into ACC0
67: LDA 3, -83(5)	* Subtract the stack limit from SP - store in ACC3
68: LDC 2, 97(0)	* Load diagnostic char into ACC2
69: JLE 3, 289(4)	* stack failure
70: ST 0, 0(5)	* Store return address (in ACC0) to SP/FP
* return value sits at SP-1/FP-1
71: ST 5, -2(5)	* Store SP to SP-2/FP-2
72: ST 6, -3(5)	* Store FP to SP-3/FP-3
73: LDA 5, -4(5)	* decrement SP by 4 (i.e., 4 pushes)
74: LDA 3, -80(5)	* Subtract the stack limit from SP - store in ACC3
75: LDC 2, 99(0)	* Load diagnostic char into ACC2
76: JLE 3, 289(4)	* stack failure
77: LDA 5, -1(5)	* decrement SP by local var's size (i.e., push)
* BEGIN: load an int constant
78: LDC 0, 4(0)	* Load a constant into ACC0
* END: load an int constant
79: LDA 3, -80(5)	* Subtract the stack limit from SP - store in ACC3
80: LDC 2, 98(0)	* Load diagnostic char into ACC2
81: JLE 3, 289(4)	* stack failure
82: ST 0, 0(5)	* Store param in slot
83: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
84: LDA 3, -80(5)	* Subtract the stack limit from SP - store in ACC3
85: LDC 2, 99(0)	* Load diagnostic char into ACC2
86: JLE 3, 289(4)	* stack failure
87: LDA 5, -1(5)	* decrement SP by local var's size (i.e., push)
88: LDA 3, -80(5)	* Subtract the stack limit from SP - store in ACC3
89: LDC 2, 99(0)	* Load diagnostic char into ACC2
90: JLE 3, 289(4)	* stack failure
91: LDA 5, -1(5)	* decrement SP by local var's size (i.e., push)
92: LDA 3, -80(5)	* Subtract the stack limit from SP - store in ACC3
93: LDC 2, 99(0)	* Load diagnostic char into ACC2
94: JLE 3, 289(4)	* stack failure
95: LDA 5, -1(5)	* decrement SP by local var's size (i.e., push)
96: LDA 6, 9(5)	* Set FP to be the "pre-push of AR" SP
* SP already points to end of the AR
97: LDA 7, 161(4)	* Jump to the start of the proc
98: LD 0, -4(6)	* Load the return value into ACC0
99: LD 5, -2(6)	* Restore SP from FP-2
100: LD 6, -3(6)	* Restore FP from FP-3
* END: procedure call
* BEGIN: write(s)
101: LDA 1, 1(0)	* Increment the address stored in ACC0 to get the string's char location (put in ACC1)
102: LD 0, 0(0)	* Load the string size into ACC0
103: JEQ 0, 5(7)	* Jump to end when run out of string
104: LDA 0, -1(0)	* subtract one from string size
105: LD 2, 0(1)	* Load next char from string into ACC2
106: LDA 1, 1(1)	* increment pointer into string
107: OUTC 2, 0, 0	* Write out character in ACC2
108: LDA 7, -6(7)	* Go back to start of loop
109: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
* BEGIN: procedure call
110: LDA 0, 31(7)	* Get return address into ACC0
111: LDA 3, -83(5)	* Subtract the stack limit from SP - store in ACC3
112: LDC 2, 97(0)	* Load diagnostic char into ACC2
113: JLE 3, 289(4)	* stack failure
114: ST 0, 0(5)	* Store return address (in ACC0) to SP/FP
* return value sits at SP-1/FP-1
115: ST 5, -2(5)	* Store SP to SP-2/FP-2
116: ST 6, -3(5)	* Store FP to SP-3/FP-3
117: LDA 5, -4(5)	* decrement SP by 4 (i.e., 4 pushes)
118: LDA 3, -80(5)	* Subtract the stack limit from SP - store in ACC3
119: LDC 2, 99(0)	* Load diagnostic char into ACC2
120: JLE 3, 289(4)	* stack failure
121: LDA 5, -1(5)	* decrement SP by local var's size (i.e., push)
* BEGIN: load an int constant
122: LDC 0, 1(0)	* Load a constant into ACC0
* END: load an int constant
123: LDA 3, -80(5)	* Subtract the stack limit from SP - store in ACC3
124: LDC 2, 98(0)	* Load diagnostic char into ACC2
125: JLE 3, 289(4)	* stack failure
126: ST 0, 0(5)	* Store param in slot
127: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
128: LDA 3, -80(5)	* Subtract the stack limit from SP - store in ACC3
129: LDC 2, 99(0)	* Load diagnostic char into ACC2
130: JLE 3, 289(4)	* stack failure
131: LDA 5, -1(5)	* decrement SP by local var's size (i.e., push)
132: LDA 3, -80(5)	* Subtract the stack limit from SP - store in ACC3
133: LDC 2, 99(0)	* Load diagnostic char into ACC2
134: JLE 3, 289(4)	* stack failure
135: LDA 5, -1(5)	* decrement SP by local var's size (i.e., push)
136: LDA 3, -80(5)	* Subtract the stack limit from SP - store in ACC3
137: LDC 2, 99(0)	* Load diagnostic char into ACC2
138: JLE 3, 289(4)	* stack failure
139: LDA 5, -1(5)	* decrement SP by local var's size (i.e., push)
140: LDA 6, 9(5)	* Set FP to be the "pre-push of AR" SP
* SP already points to end of the AR
141: LDA 7, 161(4)	* Jump to the start of the proc
142: LD 0, -4(6)	* Load the return value into ACC0
143: LD 5, -2(6)	* Restore SP from FP-2
144: LD 6, -3(6)	* Restore FP from FP-3
* END: procedure call
* BEGIN: write(s)
145: LDA 1, 1(0)	* Increment the address stored in ACC0 to get the string's char location (put in ACC1)
146: LD 0, 0(0)	* Load the string size into ACC0
147: JEQ 0, 5(7)	* Jump to end when run out of string
148: LDA 0, -1(0)	* subtract one from string size
149: LD 2, 0(1)	* Load next char from string into ACC2
150: LDA 1, 1(1)	* increment pointer into string
151: OUTC 2, 0, 0	* Write out character in ACC2
152: LDA 7, -6(7)	* Go back to start of loop
153: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
* BEGIN: variable (rvalue) access
154: LD 0, 77(4)	* Load the global var into ACC0
* END: variable (rvalue) access
* BEGIN: write(s)
155: OUT 0, 0, 0	* write out the int value in ACC0
156: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
* BEGIN: variable (rvalue) access
157: LD 0, 78(4)	* Load the global var into ACC0
* END: variable (rvalue) access
* BEGIN: write(s)
158: OUT 0, 0, 0	* write out the int value in ACC0
159: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
160: HALT 0, 0, 0	* End of Program
* BEGIN: procedure code
161: LDA 0, 0(0)	* NOOP to mark beginning of proc
* BEGIN: load an int constant
162: LDC 0, 3(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: push to stack
163: LDA 3, -80(5)	* Subtract the stack limit from SP - store in ACC3
164: LDC 2, 50(0)	* Load diagnostic char into ACC2
165: JLE 3, 289(4)	* stack failure
166: ST 0, 0(5)	* save ACC0 into the current SP location
167: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: assignment
168: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
169: LD 0, 0(5)	* Load stored result into ACC0
170: ST 0, -6(6)	* Store ACC0 into local offset (relative to FP)
* END: assignment
* BEGIN: load an int constant
171: LDC 0, 2(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: push to stack
172: LDA 3, -80(5)	* Subtract the stack limit from SP - store in ACC3
173: LDC 2, 50(0)	* Load diagnostic char into ACC2
174: JLE 3, 289(4)	* stack failure
175: ST 0, 0(5)	* save ACC0 into the current SP location
176: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: assignment
177: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
178: LD 0, 0(5)	* Load stored result into ACC0
179: ST 0, -7(6)	* Store ACC0 into local offset (relative to FP)
* END: assignment
* BEGIN: variable (rvalue) access
180: LD 0, -6(6)	* Load the local var into ACC0
* END: variable (rvalue) access
* BEGIN: push to stack
181: LDA 3, -80(5)	* Subtract the stack limit from SP - store in ACC3
182: LDC 2, 55(0)	* Load diagnostic char into ACC2
183: JLE 3, 289(4)	* stack failure
184: ST 0, 0(5)	* save ACC0 into the current SP location
185: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: variable (rvalue) access
186: LD 0, -7(6)	* Load the local var into ACC0
* END: variable (rvalue) access
187: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
188: LD 1, 0(5)	* Load stored result into ACC1
189: ADD 0, 0, 1	* Add ACC0 & ACC1 placing result in ACC0
* BEGIN: push to stack
190: LDA 3, -80(5)	* Subtract the stack limit from SP - store in ACC3
191: LDC 2, 55(0)	* Load diagnostic char into ACC2
192: JLE 3, 289(4)	* stack failure
193: ST 0, 0(5)	* save ACC0 into the current SP location
194: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: variable (rvalue) access
195: LD 0, -5(6)	* Load the local var into ACC0
* END: variable (rvalue) access
196: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
197: LD 1, 0(5)	* Load stored result into ACC1
198: ADD 0, 0, 1	* Add ACC0 & ACC1 placing result in ACC0
* BEGIN: push to stack
199: LDA 3, -80(5)	* Subtract the stack limit from SP - store in ACC3
200: LDC 2, 50(0)	* Load diagnostic char into ACC2
201: JLE 3, 289(4)	* stack failure
202: ST 0, 0(5)	* save ACC0 into the current SP location
203: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: assignment
204: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
205: LD 0, 0(5)	* Load stored result into ACC0
206: ST 0, 77(4)	* Store ACC0 into global offset
* END: assignment
* BEGIN: variable (rvalue) access
207: LD 0, 77(4)	* Load the global var into ACC0
* END: variable (rvalue) access
* BEGIN: push to stack
208: LDA 3, -80(5)	* Subtract the stack limit from SP - store in ACC3
209: LDC 2, 51(0)	* Load diagnostic char into ACC2
210: JLE 3, 289(4)	* stack failure
211: ST 0, 0(5)	* save ACC0 into the current SP location
212: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
213: LDC 0, 9(0)	* Load a constant into ACC0
* END: load an int constant
214: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
215: LD 1, 0(5)	* Load stored result into ACC1
* BEGIN: >
216: SUB 0, 1, 0	* for >, subtract right from left
217: JGT 0, 2(7)	* Jump to Load 1 if ACC0 > 0
218: LDC 0, 0(0)	* Load 0 into ACC0
219: LDA 7, 1(7)	* Jump over Load 1
220: LDC 0, 1(0)	* Load 1 into ACC0
* END: >
221: JEQ 0, 10(7)	* Jump over the then stmts if false
* BEGIN: load a bool value into ACC0
222: LDC 0, 1(0)	* Load a boolean value into ACC0
* END: load a bool value into ACC0
* BEGIN: push to stack
223: LDA 3, -80(5)	* Subtract the stack limit from SP - store in ACC3
224: LDC 2, 50(0)	* Load diagnostic char into ACC2
225: JLE 3, 289(4)	* stack failure
226: ST 0, 0(5)	* save ACC0 into the current SP location
227: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: assignment
228: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
229: LD 0, 0(5)	* Load stored result into ACC0
230: ST 0, -8(6)	* Store ACC0 into local offset (relative to FP)
* END: assignment
231: LDA 7, 34(7)	* Jump over the rest of the if
* BEGIN: variable (rvalue) access
232: LD 0, 77(4)	* Load the global var into ACC0
* END: variable (rvalue) access
* BEGIN: push to stack
233: LDA 3, -80(5)	* Subtract the stack limit from SP - store in ACC3
234: LDC 2, 51(0)	* Load diagnostic char into ACC2
235: JLE 3, 289(4)	* stack failure
236: ST 0, 0(5)	* save ACC0 into the current SP location
237: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
238: LDC 0, 7(0)	* Load a constant into ACC0
* END: load an int constant
239: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
240: LD 1, 0(5)	* Load stored result into ACC1
* BEGIN: >
241: SUB 0, 1, 0	* for >, subtract right from left
242: JGT 0, 2(7)	* Jump to Load 1 if ACC0 > 0
243: LDC 0, 0(0)	* Load 0 into ACC0
244: LDA 7, 1(7)	* Jump over Load 1
245: LDC 0, 1(0)	* Load 1 into ACC0
* END: >
246: JEQ 0, 10(7)	* Jump over the then stmts if false
* BEGIN: load a bool value into ACC0
247: LDC 0, 0(0)	* Load a boolean value into ACC0
* END: load a bool value into ACC0
* BEGIN: push to stack
248: LDA 3, -80(5)	* Subtract the stack limit from SP - store in ACC3
249: LDC 2, 50(0)	* Load diagnostic char into ACC2
250: JLE 3, 289(4)	* stack failure
251: ST 0, 0(5)	* save ACC0 into the current SP location
252: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: assignment
253: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
254: LD 0, 0(5)	* Load stored result into ACC0
255: ST 0, -8(6)	* Store ACC0 into local offset (relative to FP)
* END: assignment
256: LDA 7, 9(7)	* Jump over the rest of the if
* BEGIN: load a bool value into ACC0
257: LDC 0, 1(0)	* Load a boolean value into ACC0
* END: load a bool value into ACC0
* BEGIN: push to stack
258: LDA 3, -80(5)	* Subtract the stack limit from SP - store in ACC3
259: LDC 2, 50(0)	* Load diagnostic char into ACC2
260: JLE 3, 289(4)	* stack failure
261: ST 0, 0(5)	* save ACC0 into the current SP location
262: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: assignment
263: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
264: LD 0, 0(5)	* Load stored result into ACC0
265: ST 0, -8(6)	* Store ACC0 into local offset (relative to FP)
* END: assignment
* BEGIN: variable (rvalue) access
266: LD 0, -8(6)	* Load the local var into ACC0
* END: variable (rvalue) access
267: JEQ 0, 10(7)	* Jump over the then stmts if false
* BEGIN: load a string's location into ACC0
268: LDC 0, 45(0)	* Load a string's location into ACC0
* END: load a string's location into ACC0
* BEGIN: push to stack
269: LDA 3, -80(5)	* Subtract the stack limit from SP - store in ACC3
270: LDC 2, 50(0)	* Load diagnostic char into ACC2
271: JLE 3, 289(4)	* stack failure
272: ST 0, 0(5)	* save ACC0 into the current SP location
273: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: assignment
274: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
275: LD 0, 0(5)	* Load stored result into ACC0
276: ST 0, -4(6)	* Store ACC0 into local offset (relative to FP)
* END: assignment
277: LDA 7, 9(7)	* Jump over the rest of the if
* BEGIN: load a string's location into ACC0
278: LDC 0, 61(0)	* Load a string's location into ACC0
* END: load a string's location into ACC0
* BEGIN: push to stack
279: LDA 3, -80(5)	* Subtract the stack limit from SP - store in ACC3
280: LDC 2, 50(0)	* Load diagnostic char into ACC2
281: JLE 3, 289(4)	* stack failure
282: ST 0, 0(5)	* save ACC0 into the current SP location
283: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: assignment
284: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
285: LD 0, 0(5)	* Load stored result into ACC0
286: ST 0, -4(6)	* Store ACC0 into local offset (relative to FP)
* END: assignment
287: LD 0, 0(6)	* Load the return address from the 1st slot in the AR to ACC0
288: LDA 7, 0(0)	* Return to calling location (stored in ACC0)
* END: procedure code
* BEGIN: stack limit message handler
289: LDC 0, 25(0)	* Load the error message into ACC0
290: LDA 1, 1(0)	* Increment the address stored in ACC0 to get the string's char location (put in ACC1)
291: LD 0, 0(0)	* Load the string size into ACC0
292: JEQ 0, 5(7)	* Jump to end when run out of string
293: LDA 0, -1(0)	* subtract one from string size
294: LD 3, 0(1)	* Load next char from string into ACC3
295: LDA 1, 1(1)	* increment pointer into string
296: OUTC 3, 0, 0	* Write out character in ACC3
297: LDA 7, -6(7)	* Go back to start of loop
298: OUTC 2, 0, 0	* Write out diagnostic char in ACC2
299: OUTNL 0, 0, 0	* dump out the newline
300: HALT 0, 0, 0	* Halt for stack limit
* END: stack limit message handler
