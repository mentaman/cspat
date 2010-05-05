.DATA 23	* string length
.SDATA "Arrays bounds violation"	* string constant
.DATA 19	* string length
.SDATA "Out of stack space "	* string constant
.DATA 1	* string length
.SDATA "1"	* string constant
.DATA 0	* storage location (47) for var i
.DATA 0	* storage location (48) for var b
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
5: LDA 3, -50(5)	* Subtract the stack limit from SP - store in ACC3
6: LDC 2, 50(0)	* Load diagnostic char into ACC2
7: JLE 3, 271(4)	* stack failure
8: ST 0, 0(5)	* save ACC0 into the current SP location
9: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: assignment
10: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
11: LD 0, 0(5)	* Load stored result into ACC0
12: ST 0, 47(4)	* Store ACC0 into global offset
* END: assignment
* BEGIN: variable (rvalue) access
13: LD 0, 47(4)	* Load the global var into ACC0
* END: variable (rvalue) access
* BEGIN: push to stack
14: LDA 3, -50(5)	* Subtract the stack limit from SP - store in ACC3
15: LDC 2, 55(0)	* Load diagnostic char into ACC2
16: JLE 3, 271(4)	* stack failure
17: ST 0, 0(5)	* save ACC0 into the current SP location
18: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
19: LDC 0, 1(0)	* Load a constant into ACC0
* END: load an int constant
20: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
21: LD 1, 0(5)	* Load stored result into ACC1
22: ADD 0, 0, 1	* Add ACC0 & ACC1 placing result in ACC0
* BEGIN: push to stack
23: LDA 3, -50(5)	* Subtract the stack limit from SP - store in ACC3
24: LDC 2, 55(0)	* Load diagnostic char into ACC2
25: JLE 3, 271(4)	* stack failure
26: ST 0, 0(5)	* save ACC0 into the current SP location
27: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load a bool value into ACC0
28: LDC 0, 1(0)	* Load a boolean value into ACC0
* END: load a bool value into ACC0
29: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
30: LD 1, 0(5)	* Load stored result into ACC1
31: DIV 0, 1, 0	* Divide ACC1 by ACC0 placing result in ACC0
* BEGIN: push to stack
32: LDA 3, -50(5)	* Subtract the stack limit from SP - store in ACC3
33: LDC 2, 55(0)	* Load diagnostic char into ACC2
34: JLE 3, 271(4)	* stack failure
35: ST 0, 0(5)	* save ACC0 into the current SP location
36: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: procedure call
37: LDA 0, 19(7)	* Get return address into ACC0
38: LDA 3, -53(5)	* Subtract the stack limit from SP - store in ACC3
39: LDC 2, 97(0)	* Load diagnostic char into ACC2
40: JLE 3, 271(4)	* stack failure
41: ST 0, 0(5)	* Store return address (in ACC0) to SP/FP
* return value sits at SP-1/FP-1
42: ST 5, -2(5)	* Store SP to SP-2/FP-2
43: ST 6, -3(5)	* Store FP to SP-3/FP-3
44: LDA 5, -4(5)	* decrement SP by 4 (i.e., 4 pushes)
45: LDA 3, -50(5)	* Subtract the stack limit from SP - store in ACC3
46: LDC 2, 99(0)	* Load diagnostic char into ACC2
47: JLE 3, 271(4)	* stack failure
48: LDA 5, -1(5)	* decrement SP by local var's size (i.e., push)
* BEGIN: load a string's location into ACC0
49: LDC 0, 45(0)	* Load a string's location into ACC0
* END: load a string's location into ACC0
50: LDA 3, -50(5)	* Subtract the stack limit from SP - store in ACC3
51: LDC 2, 98(0)	* Load diagnostic char into ACC2
52: JLE 3, 271(4)	* stack failure
53: ST 0, 0(5)	* Store param in slot
54: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
55: LDA 6, 6(5)	* Set FP to be the "pre-push of AR" SP
* SP already points to end of the AR
56: LDA 7, 213(4)	* Jump to the start of the proc
57: LD 0, -4(6)	* Load the return value into ACC0
58: LD 5, -2(6)	* Restore SP from FP-2
59: LD 6, -3(6)	* Restore FP from FP-3
* END: procedure call
60: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
61: LD 1, 0(5)	* Load stored result into ACC1
62: MUL 0, 0, 1	* Multiply ACC0 & ACC1 placing result in ACC0
* BEGIN: push to stack
63: LDA 3, -50(5)	* Subtract the stack limit from SP - store in ACC3
64: LDC 2, 55(0)	* Load diagnostic char into ACC2
65: JLE 3, 271(4)	* stack failure
66: ST 0, 0(5)	* save ACC0 into the current SP location
67: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: variable (rvalue) access
68: LD 0, 47(4)	* Load the global var into ACC0
* END: variable (rvalue) access
* BEGIN: push to stack
69: LDA 3, -50(5)	* Subtract the stack limit from SP - store in ACC3
70: LDC 2, 51(0)	* Load diagnostic char into ACC2
71: JLE 3, 271(4)	* stack failure
72: ST 0, 0(5)	* save ACC0 into the current SP location
73: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
74: LDC 0, 0(0)	* Load a constant into ACC0
* END: load an int constant
75: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
76: LD 1, 0(5)	* Load stored result into ACC1
77: SUB 0, 1, 0	* for !=, subtract right from left
78: JEQ 0, 1(7)	* Jump over Load 1 if ACC0 == 0
79: LDC 0, 1(0)	* Load 1 into ACC0
* BEGIN: push to stack
80: LDA 3, -50(5)	* Subtract the stack limit from SP - store in ACC3
81: LDC 2, 55(0)	* Load diagnostic char into ACC2
82: JLE 3, 271(4)	* stack failure
83: ST 0, 0(5)	* save ACC0 into the current SP location
84: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
85: LDC 0, 10(0)	* Load a constant into ACC0
* END: load an int constant
86: SUB 0, 4, 0	* Subtract ACC0 from ZEROREG to negate it
87: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
88: LD 1, 0(5)	* Load stored result into ACC1
89: SUB 0, 1, 0	* Subtract ACC0 from ACC1 placing result in ACC0
90: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
91: LD 1, 0(5)	* Load stored result into ACC1
* BEGIN: mod
92: DIV 2, 1, 0	* Divide left by right & put result in ACC2
93: MUL 2, 2, 0	* Multiply the right by the divide result & put in ACC2
94: SUB 0, 1, 2	* Subtract the multiplication result from left & put in ACC
* END: mod
* BEGIN: push to stack
95: LDA 3, -50(5)	* Subtract the stack limit from SP - store in ACC3
96: LDC 2, 50(0)	* Load diagnostic char into ACC2
97: JLE 3, 271(4)	* stack failure
98: ST 0, 0(5)	* save ACC0 into the current SP location
99: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: assignment
100: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
101: LD 0, 0(5)	* Load stored result into ACC0
102: ST 0, 47(4)	* Store ACC0 into global offset
* END: assignment
* BEGIN: variable (rvalue) access
103: LD 0, 47(4)	* Load the global var into ACC0
* END: variable (rvalue) access
* BEGIN: write(s)
104: OUT 0, 0, 0	* write out the int value in ACC0
105: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
* BEGIN: variable (rvalue) access
106: LD 0, 47(4)	* Load the global var into ACC0
* END: variable (rvalue) access
* BEGIN: push to stack
107: LDA 3, -50(5)	* Subtract the stack limit from SP - store in ACC3
108: LDC 2, 51(0)	* Load diagnostic char into ACC2
109: JLE 3, 271(4)	* stack failure
110: ST 0, 0(5)	* save ACC0 into the current SP location
111: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
112: LDC 0, 2(0)	* Load a constant into ACC0
* END: load an int constant
113: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
114: LD 1, 0(5)	* Load stored result into ACC1
115: SUB 0, 1, 0	* for =, subtract right from left
116: JEQ 0, 2(7)	* Jump to Load 1 if ACC0 == 0
117: LDC 0, 0(0)	* Load 0 into ACC0
118: LDA 7, 1(7)	* Jump over Load 1
119: LDC 0, 1(0)	* Load 1 into ACC0
120: JGT 0, 26(7)	* Jump over rest of logical or code
* BEGIN: push to stack
121: LDA 3, -50(5)	* Subtract the stack limit from SP - store in ACC3
122: LDC 2, 57(0)	* Load diagnostic char into ACC2
123: JLE 3, 271(4)	* stack failure
124: ST 0, 0(5)	* save ACC0 into the current SP location
125: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load a bool value into ACC0
126: LDC 0, 1(0)	* Load a boolean value into ACC0
* END: load a bool value into ACC0
127: JEQ 0, 14(7)	* if left is false jump over the rest of the and
* BEGIN: push to stack
128: LDA 3, -50(5)	* Subtract the stack limit from SP - store in ACC3
129: LDC 2, 49(0)	* Load diagnostic char into ACC2
130: JLE 3, 271(4)	* stack failure
131: ST 0, 0(5)	* save ACC0 into the current SP location
132: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load a bool value into ACC0
133: LDC 0, 0(0)	* Load a boolean value into ACC0
* END: load a bool value into ACC0
134: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
135: LD 1, 0(5)	* Load stored result into ACC1
136: ADD 0, 1, 0	* for AND, add right and left
137: LDA 0, -2(0)	* Then subtract 2
138: JEQ 0, 2(7)	* Jump to Load 1 if ACC0 == 0
139: LDC 0, 0(0)	* Load 0 into ACC0
140: LDA 7, 1(7)	* Jump over Load 1
141: LDC 0, 1(0)	* Load 1 into ACC0
142: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
143: LD 1, 0(5)	* Load stored result into ACC1
144: ADD 0, 1, 0	* for OR, add right and left
145: JEQ 0, 1(7)	* Jump over Load 1 if ACC0 == 0
146: LDC 0, 1(0)	* Load 1 into ACC0
147: JGT 0, 53(7)	* Jump over rest of logical or code
* BEGIN: push to stack
148: LDA 3, -50(5)	* Subtract the stack limit from SP - store in ACC3
149: LDC 2, 57(0)	* Load diagnostic char into ACC2
150: JLE 3, 271(4)	* stack failure
151: ST 0, 0(5)	* save ACC0 into the current SP location
152: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
153: LDC 0, 3(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: push to stack
154: LDA 3, -50(5)	* Subtract the stack limit from SP - store in ACC3
155: LDC 2, 51(0)	* Load diagnostic char into ACC2
156: JLE 3, 271(4)	* stack failure
157: ST 0, 0(5)	* save ACC0 into the current SP location
158: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
159: LDC 0, 0(0)	* Load a constant into ACC0
* END: load an int constant
160: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
161: LD 1, 0(5)	* Load stored result into ACC1
* BEGIN: >
162: SUB 0, 1, 0	* for >, subtract right from left
163: JGT 0, 2(7)	* Jump to Load 1 if ACC0 > 0
164: LDC 0, 0(0)	* Load 0 into ACC0
165: LDA 7, 1(7)	* Jump over Load 1
166: LDC 0, 1(0)	* Load 1 into ACC0
* END: >
167: JGT 0, 24(7)	* Jump over rest of logical or code
* BEGIN: push to stack
168: LDA 3, -50(5)	* Subtract the stack limit from SP - store in ACC3
169: LDC 2, 57(0)	* Load diagnostic char into ACC2
170: JLE 3, 271(4)	* stack failure
171: ST 0, 0(5)	* save ACC0 into the current SP location
172: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: variable (rvalue) access
173: LD 0, 47(4)	* Load the global var into ACC0
* END: variable (rvalue) access
* BEGIN: push to stack
174: LDA 3, -50(5)	* Subtract the stack limit from SP - store in ACC3
175: LDC 2, 51(0)	* Load diagnostic char into ACC2
176: JLE 3, 271(4)	* stack failure
177: ST 0, 0(5)	* save ACC0 into the current SP location
178: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
179: LDC 0, 0(0)	* Load a constant into ACC0
* END: load an int constant
180: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
181: LD 1, 0(5)	* Load stored result into ACC1
* BEGIN: <
182: SUB 0, 1, 0	* for <, subtract right from left
183: JLT 0, 2(7)	* Jump to Load 1 if ACC0 < 0
184: LDC 0, 0(0)	* Load 0 into ACC0
185: LDA 7, 1(7)	* Jump over Load 1
186: LDC 0, 1(0)	* Load 1 into ACC0
* END: <
187: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
188: LD 1, 0(5)	* Load stored result into ACC1
189: ADD 0, 1, 0	* for OR, add right and left
190: JEQ 0, 1(7)	* Jump over Load 1 if ACC0 == 0
191: LDC 0, 1(0)	* Load 1 into ACC0
192: JEQ 0, 2(7)	* Jump to Load 1 if ACC0 == 0
193: LDC 0, 0(0)	* Load 0 into ACC0
194: LDA 7, 1(7)	* Jump over Load 1
195: LDC 0, 1(0)	* Load 1 into ACC0
196: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
197: LD 1, 0(5)	* Load stored result into ACC1
198: ADD 0, 1, 0	* for OR, add right and left
199: JEQ 0, 1(7)	* Jump over Load 1 if ACC0 == 0
200: LDC 0, 1(0)	* Load 1 into ACC0
* BEGIN: push to stack
201: LDA 3, -50(5)	* Subtract the stack limit from SP - store in ACC3
202: LDC 2, 50(0)	* Load diagnostic char into ACC2
203: JLE 3, 271(4)	* stack failure
204: ST 0, 0(5)	* save ACC0 into the current SP location
205: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: assignment
206: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
207: LD 0, 0(5)	* Load stored result into ACC0
208: ST 0, 48(4)	* Store ACC0 into global offset
* END: assignment
* BEGIN: variable (rvalue) access
209: LD 0, 48(4)	* Load the global var into ACC0
* END: variable (rvalue) access
* BEGIN: write(s)
210: OUT 0, 0, 0	* write out the int value in ACC0
211: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
212: HALT 0, 0, 0	* End of Program
* BEGIN: int procedure code
213: LDA 0, 0(0)	* NOOP to mark beginning of proc
214: LDC 5, 0(0)	* Load 0 into SP - we are misusing it in this proc
215: LDC 3, 1(0)	* Load 1 into ACC3
216: ST 3, -6(6)	* Store ACC3 into the bPos local var slot
217: LD 0, -5(6)	* Load the string's address into ACC0
218: LDA 1, 1(0)	* Load the string's char address into ACC1
219: LD 0, 0(0)	* Load the string size into ACC0
220: JEQ 0, 47(7)	* Jump to end if string is zero sized
221: LDA 0, -1(0)	* subtract one from string size
222: LD 2, 0(1)	* Load next char from string into ACC2
223: LDA 1, 1(1)	* increment pointer into string
224: LDC 3, 43(0)	* Load 43 ('+') into ACC3
225: SUB 3, 2, 3	* Subtract 43 from cur char
226: JEQ 3, 9(7)	* break if equal to 43
227: LDC 3, 45(0)	* Load 45 ('-') into ACC3
228: SUB 3, 2, 3	* Subtract 45 from cur char
229: JEQ 3, 6(7)	* break if equal to 45
230: LDC 3, 48(0)	* Load 48 ('0') into ACC3
231: SUB 3, 2, 3	* Subtract 48 from cur char
232: JLT 3, -13(7)	* go back to top if < 48 '0'
233: LDC 3, 57(0)	* Load 57 ('9') into ACC3
234: SUB 3, 2, 3	* Subtract 57 from cur char
235: JGT 3, -16(7)	* go back to top if > 57 '9'
236: LDA 0, 0(0)	* NOOP
237: LDC 3, 43(0)	* Load 43 ('+') into ACC3
238: SUB 3, 2, 3	* Subtract 43 from cur char
239: JEQ 3, 6(7)	* break if equal to 43
240: LDC 3, 45(0)	* Load 45 ('-') into ACC3
241: SUB 3, 2, 3	* Subtract 45 from cur char
242: JEQ 3, 1(7)	* break if equal to 45
243: LDA 7, 5(7)	* jump over
244: LDC 3, 0(0)	* Load 0 into ACC3
245: ST 3, -6(6)	* Store ACC3 into the bPos local var slot
246: LDA 0, -1(0)	* subtract one from string size
247: LD 2, 0(1)	* Load next char from string into ACC2
248: LDA 1, 1(1)	* increment pointer into string
249: JLT 0, 15(7)	* Jump to end if string is zero sized
250: LDC 3, 57(0)	* Load 57 ('9') into ACC3
251: SUB 3, 2, 3	* Subtract 57 from cur char
252: JGT 3, 12(7)	* quit if > 57 '9'
253: LDC 3, 48(0)	* Load 48 ('0') into ACC3
254: SUB 3, 2, 3	* Subtract 48 from cur char
255: JLT 3, 9(7)	* quit if < 48 '0'
256: LDC 3, 10(0)	* Load 10 into ACC3
257: MUL 5, 5, 3	* Shift accum value over
258: LDC 3, 48(0)	* Load 48 ('0') into ACC3
259: SUB 3, 2, 3	* Subtract 48 from cur char
260: ADD 5, 5, 3	* Add in the new ones places
261: LDA 0, -1(0)	* subtract one from string size
262: LD 2, 0(1)	* Load next char from string into ACC2
263: LDA 1, 1(1)	* increment pointer into string
264: LDA 7, -16(7)	* Go back to start of loop
265: LD 3, -6(6)	* Load bPos from the local var slot into ACC3
266: JNE 3, 1(7)	* Jump over the subtraction if still positive
267: SUB 5, 4, 5	* negate the accumulated value
268: ST 5, -4(6)	* Store the result into the return slot
269: LD 0, 0(6)	* Load the return address from the 1st slot in the AR to ACC0
270: LDA 7, 0(0)	* Return to calling location (stored in ACC0)
* END: int procedure code
* BEGIN: stack limit message handler
271: LDC 0, 25(0)	* Load the error message into ACC0
272: LDA 1, 1(0)	* Increment the address stored in ACC0 to get the string's char location (put in ACC1)
273: LD 0, 0(0)	* Load the string size into ACC0
274: JEQ 0, 5(7)	* Jump to end when run out of string
275: LDA 0, -1(0)	* subtract one from string size
276: LD 3, 0(1)	* Load next char from string into ACC3
277: LDA 1, 1(1)	* increment pointer into string
278: OUTC 3, 0, 0	* Write out character in ACC3
279: LDA 7, -6(7)	* Go back to start of loop
280: OUTC 2, 0, 0	* Write out diagnostic char in ACC2
281: OUTNL 0, 0, 0	* dump out the newline
282: HALT 0, 0, 0	* Halt for stack limit
* END: stack limit message handler
