.DATA 23	* string length
.SDATA "Arrays bounds violation"	* string constant
.DATA 19	* string length
.SDATA "Out of stack space "	* string constant
.DATA 5	* string length
.SDATA " -10 "	* string constant
.DATA 3	* string length
.SDATA "+10"	* string constant
.DATA 3	* string length
.SDATA "10 "	* string constant
.DATA 3	* string length
.SDATA "1-0"	* string constant
.DATA 0	* string length
.SDATA ""	* string constant
.DATA 1	* string length
.SDATA "-"	* string constant
.DATA 3	* string length
.SDATA "abc"	* string constant
.DATA 0	* storage location (70) for var i
* BEGIN preamble
0: LDC 4, 0(0)	* initialize ZEROREG to 0
1: LD 5, 0(4)	* initialize SP to end of memory
2: LDA 5, -1(5)	* subtract one to get the true SP
3: LDA 6, 0(5)	* FP and SP start off the same
* END preamble
* BEGIN: procedure call
4: LDA 0, 19(7)	* Get return address into ACC0
5: LDA 3, -75(5)	* Subtract the stack limit from SP - store in ACC3
6: LDC 2, 97(0)	* Load diagnostic char into ACC2
7: JLE 3, 281(4)	* stack failure
8: ST 0, 0(5)	* Store return address (in ACC0) to SP/FP
* return value sits at SP-1/FP-1
9: ST 5, -2(5)	* Store SP to SP-2/FP-2
10: ST 6, -3(5)	* Store FP to SP-3/FP-3
11: LDA 5, -4(5)	* decrement SP by 4 (i.e., 4 pushes)
12: LDA 3, -72(5)	* Subtract the stack limit from SP - store in ACC3
13: LDC 2, 99(0)	* Load diagnostic char into ACC2
14: JLE 3, 281(4)	* stack failure
15: LDA 5, -1(5)	* decrement SP by local var's size (i.e., push)
* BEGIN: load a string's location into ACC0
16: LDC 0, 45(0)	* Load a string's location into ACC0
* END: load a string's location into ACC0
17: LDA 3, -72(5)	* Subtract the stack limit from SP - store in ACC3
18: LDC 2, 98(0)	* Load diagnostic char into ACC2
19: JLE 3, 281(4)	* stack failure
20: ST 0, 0(5)	* Store param in slot
21: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
22: LDA 6, 6(5)	* Set FP to be the "pre-push of AR" SP
* SP already points to end of the AR
23: LDA 7, 189(4)	* Jump to the start of the proc
24: LD 0, -4(6)	* Load the return value into ACC0
25: LD 5, -2(6)	* Restore SP from FP-2
26: LD 6, -3(6)	* Restore FP from FP-3
* END: procedure call
* BEGIN: write(s)
27: OUT 0, 0, 0	* write out the int value in ACC0
28: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
* BEGIN: procedure call
29: LDA 0, 19(7)	* Get return address into ACC0
30: LDA 3, -75(5)	* Subtract the stack limit from SP - store in ACC3
31: LDC 2, 97(0)	* Load diagnostic char into ACC2
32: JLE 3, 281(4)	* stack failure
33: ST 0, 0(5)	* Store return address (in ACC0) to SP/FP
* return value sits at SP-1/FP-1
34: ST 5, -2(5)	* Store SP to SP-2/FP-2
35: ST 6, -3(5)	* Store FP to SP-3/FP-3
36: LDA 5, -4(5)	* decrement SP by 4 (i.e., 4 pushes)
37: LDA 3, -72(5)	* Subtract the stack limit from SP - store in ACC3
38: LDC 2, 99(0)	* Load diagnostic char into ACC2
39: JLE 3, 281(4)	* stack failure
40: LDA 5, -1(5)	* decrement SP by local var's size (i.e., push)
* BEGIN: load a string's location into ACC0
41: LDC 0, 51(0)	* Load a string's location into ACC0
* END: load a string's location into ACC0
42: LDA 3, -72(5)	* Subtract the stack limit from SP - store in ACC3
43: LDC 2, 98(0)	* Load diagnostic char into ACC2
44: JLE 3, 281(4)	* stack failure
45: ST 0, 0(5)	* Store param in slot
46: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
47: LDA 6, 6(5)	* Set FP to be the "pre-push of AR" SP
* SP already points to end of the AR
48: LDA 7, 223(4)	* Jump to the start of the proc
49: LD 0, -4(6)	* Load the return value into ACC0
50: LD 5, -2(6)	* Restore SP from FP-2
51: LD 6, -3(6)	* Restore FP from FP-3
* END: procedure call
* BEGIN: write(s)
52: OUT 0, 0, 0	* write out the int value in ACC0
53: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
* BEGIN: procedure call
54: LDA 0, 19(7)	* Get return address into ACC0
55: LDA 3, -75(5)	* Subtract the stack limit from SP - store in ACC3
56: LDC 2, 97(0)	* Load diagnostic char into ACC2
57: JLE 3, 281(4)	* stack failure
58: ST 0, 0(5)	* Store return address (in ACC0) to SP/FP
* return value sits at SP-1/FP-1
59: ST 5, -2(5)	* Store SP to SP-2/FP-2
60: ST 6, -3(5)	* Store FP to SP-3/FP-3
61: LDA 5, -4(5)	* decrement SP by 4 (i.e., 4 pushes)
62: LDA 3, -72(5)	* Subtract the stack limit from SP - store in ACC3
63: LDC 2, 99(0)	* Load diagnostic char into ACC2
64: JLE 3, 281(4)	* stack failure
65: LDA 5, -1(5)	* decrement SP by local var's size (i.e., push)
* BEGIN: load a string's location into ACC0
66: LDC 0, 55(0)	* Load a string's location into ACC0
* END: load a string's location into ACC0
67: LDA 3, -72(5)	* Subtract the stack limit from SP - store in ACC3
68: LDC 2, 98(0)	* Load diagnostic char into ACC2
69: JLE 3, 281(4)	* stack failure
70: ST 0, 0(5)	* Store param in slot
71: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
72: LDA 6, 6(5)	* Set FP to be the "pre-push of AR" SP
* SP already points to end of the AR
73: LDA 7, 223(4)	* Jump to the start of the proc
74: LD 0, -4(6)	* Load the return value into ACC0
75: LD 5, -2(6)	* Restore SP from FP-2
76: LD 6, -3(6)	* Restore FP from FP-3
* END: procedure call
* BEGIN: push to stack
77: LDA 3, -72(5)	* Subtract the stack limit from SP - store in ACC3
78: LDC 2, 50(0)	* Load diagnostic char into ACC2
79: JLE 3, 281(4)	* stack failure
80: ST 0, 0(5)	* save ACC0 into the current SP location
81: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: assignment
82: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
83: LD 0, 0(5)	* Load stored result into ACC0
84: ST 0, 70(4)	* Store ACC0 into global offset
* END: assignment
* BEGIN: variable (rvalue) access
85: LD 0, 70(4)	* Load the global var into ACC0
* END: variable (rvalue) access
* BEGIN: write(s)
86: OUT 0, 0, 0	* write out the int value in ACC0
87: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
* BEGIN: procedure call
88: LDA 0, 19(7)	* Get return address into ACC0
89: LDA 3, -75(5)	* Subtract the stack limit from SP - store in ACC3
90: LDC 2, 97(0)	* Load diagnostic char into ACC2
91: JLE 3, 281(4)	* stack failure
92: ST 0, 0(5)	* Store return address (in ACC0) to SP/FP
* return value sits at SP-1/FP-1
93: ST 5, -2(5)	* Store SP to SP-2/FP-2
94: ST 6, -3(5)	* Store FP to SP-3/FP-3
95: LDA 5, -4(5)	* decrement SP by 4 (i.e., 4 pushes)
96: LDA 3, -72(5)	* Subtract the stack limit from SP - store in ACC3
97: LDC 2, 99(0)	* Load diagnostic char into ACC2
98: JLE 3, 281(4)	* stack failure
99: LDA 5, -1(5)	* decrement SP by local var's size (i.e., push)
* BEGIN: load a string's location into ACC0
100: LDC 0, 59(0)	* Load a string's location into ACC0
* END: load a string's location into ACC0
101: LDA 3, -72(5)	* Subtract the stack limit from SP - store in ACC3
102: LDC 2, 98(0)	* Load diagnostic char into ACC2
103: JLE 3, 281(4)	* stack failure
104: ST 0, 0(5)	* Store param in slot
105: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
106: LDA 6, 6(5)	* Set FP to be the "pre-push of AR" SP
* SP already points to end of the AR
107: LDA 7, 223(4)	* Jump to the start of the proc
108: LD 0, -4(6)	* Load the return value into ACC0
109: LD 5, -2(6)	* Restore SP from FP-2
110: LD 6, -3(6)	* Restore FP from FP-3
* END: procedure call
* BEGIN: write(s)
111: OUT 0, 0, 0	* write out the int value in ACC0
112: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
* BEGIN: procedure call
113: LDA 0, 19(7)	* Get return address into ACC0
114: LDA 3, -75(5)	* Subtract the stack limit from SP - store in ACC3
115: LDC 2, 97(0)	* Load diagnostic char into ACC2
116: JLE 3, 281(4)	* stack failure
117: ST 0, 0(5)	* Store return address (in ACC0) to SP/FP
* return value sits at SP-1/FP-1
118: ST 5, -2(5)	* Store SP to SP-2/FP-2
119: ST 6, -3(5)	* Store FP to SP-3/FP-3
120: LDA 5, -4(5)	* decrement SP by 4 (i.e., 4 pushes)
121: LDA 3, -72(5)	* Subtract the stack limit from SP - store in ACC3
122: LDC 2, 99(0)	* Load diagnostic char into ACC2
123: JLE 3, 281(4)	* stack failure
124: LDA 5, -1(5)	* decrement SP by local var's size (i.e., push)
* BEGIN: load a string's location into ACC0
125: LDC 0, 63(0)	* Load a string's location into ACC0
* END: load a string's location into ACC0
126: LDA 3, -72(5)	* Subtract the stack limit from SP - store in ACC3
127: LDC 2, 98(0)	* Load diagnostic char into ACC2
128: JLE 3, 281(4)	* stack failure
129: ST 0, 0(5)	* Store param in slot
130: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
131: LDA 6, 6(5)	* Set FP to be the "pre-push of AR" SP
* SP already points to end of the AR
132: LDA 7, 223(4)	* Jump to the start of the proc
133: LD 0, -4(6)	* Load the return value into ACC0
134: LD 5, -2(6)	* Restore SP from FP-2
135: LD 6, -3(6)	* Restore FP from FP-3
* END: procedure call
* BEGIN: write(s)
136: OUT 0, 0, 0	* write out the int value in ACC0
137: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
* BEGIN: procedure call
138: LDA 0, 19(7)	* Get return address into ACC0
139: LDA 3, -75(5)	* Subtract the stack limit from SP - store in ACC3
140: LDC 2, 97(0)	* Load diagnostic char into ACC2
141: JLE 3, 281(4)	* stack failure
142: ST 0, 0(5)	* Store return address (in ACC0) to SP/FP
* return value sits at SP-1/FP-1
143: ST 5, -2(5)	* Store SP to SP-2/FP-2
144: ST 6, -3(5)	* Store FP to SP-3/FP-3
145: LDA 5, -4(5)	* decrement SP by 4 (i.e., 4 pushes)
146: LDA 3, -72(5)	* Subtract the stack limit from SP - store in ACC3
147: LDC 2, 99(0)	* Load diagnostic char into ACC2
148: JLE 3, 281(4)	* stack failure
149: LDA 5, -1(5)	* decrement SP by local var's size (i.e., push)
* BEGIN: load a string's location into ACC0
150: LDC 0, 64(0)	* Load a string's location into ACC0
* END: load a string's location into ACC0
151: LDA 3, -72(5)	* Subtract the stack limit from SP - store in ACC3
152: LDC 2, 98(0)	* Load diagnostic char into ACC2
153: JLE 3, 281(4)	* stack failure
154: ST 0, 0(5)	* Store param in slot
155: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
156: LDA 6, 6(5)	* Set FP to be the "pre-push of AR" SP
* SP already points to end of the AR
157: LDA 7, 223(4)	* Jump to the start of the proc
158: LD 0, -4(6)	* Load the return value into ACC0
159: LD 5, -2(6)	* Restore SP from FP-2
160: LD 6, -3(6)	* Restore FP from FP-3
* END: procedure call
* BEGIN: write(s)
161: OUT 0, 0, 0	* write out the int value in ACC0
162: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
* BEGIN: procedure call
163: LDA 0, 19(7)	* Get return address into ACC0
164: LDA 3, -75(5)	* Subtract the stack limit from SP - store in ACC3
165: LDC 2, 97(0)	* Load diagnostic char into ACC2
166: JLE 3, 281(4)	* stack failure
167: ST 0, 0(5)	* Store return address (in ACC0) to SP/FP
* return value sits at SP-1/FP-1
168: ST 5, -2(5)	* Store SP to SP-2/FP-2
169: ST 6, -3(5)	* Store FP to SP-3/FP-3
170: LDA 5, -4(5)	* decrement SP by 4 (i.e., 4 pushes)
171: LDA 3, -72(5)	* Subtract the stack limit from SP - store in ACC3
172: LDC 2, 99(0)	* Load diagnostic char into ACC2
173: JLE 3, 281(4)	* stack failure
174: LDA 5, -1(5)	* decrement SP by local var's size (i.e., push)
* BEGIN: load a string's location into ACC0
175: LDC 0, 66(0)	* Load a string's location into ACC0
* END: load a string's location into ACC0
176: LDA 3, -72(5)	* Subtract the stack limit from SP - store in ACC3
177: LDC 2, 98(0)	* Load diagnostic char into ACC2
178: JLE 3, 281(4)	* stack failure
179: ST 0, 0(5)	* Store param in slot
180: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
181: LDA 6, 6(5)	* Set FP to be the "pre-push of AR" SP
* SP already points to end of the AR
182: LDA 7, 223(4)	* Jump to the start of the proc
183: LD 0, -4(6)	* Load the return value into ACC0
184: LD 5, -2(6)	* Restore SP from FP-2
185: LD 6, -3(6)	* Restore FP from FP-3
* END: procedure call
* BEGIN: write(s)
186: OUT 0, 0, 0	* write out the int value in ACC0
187: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
188: HALT 0, 0, 0	* End of Program
* BEGIN: procedure code
189: LDA 0, 0(0)	* NOOP to mark beginning of proc
* BEGIN: procedure call
190: LDA 0, 19(7)	* Get return address into ACC0
191: LDA 3, -75(5)	* Subtract the stack limit from SP - store in ACC3
192: LDC 2, 97(0)	* Load diagnostic char into ACC2
193: JLE 3, 281(4)	* stack failure
194: ST 0, 0(5)	* Store return address (in ACC0) to SP/FP
* return value sits at SP-1/FP-1
195: ST 5, -2(5)	* Store SP to SP-2/FP-2
196: ST 6, -3(5)	* Store FP to SP-3/FP-3
197: LDA 5, -4(5)	* decrement SP by 4 (i.e., 4 pushes)
198: LDA 3, -72(5)	* Subtract the stack limit from SP - store in ACC3
199: LDC 2, 99(0)	* Load diagnostic char into ACC2
200: JLE 3, 281(4)	* stack failure
201: LDA 5, -1(5)	* decrement SP by local var's size (i.e., push)
* BEGIN: variable (rvalue) access
202: LD 0, -5(6)	* Load the local var into ACC0
* END: variable (rvalue) access
203: LDA 3, -72(5)	* Subtract the stack limit from SP - store in ACC3
204: LDC 2, 98(0)	* Load diagnostic char into ACC2
205: JLE 3, 281(4)	* stack failure
206: ST 0, 0(5)	* Store param in slot
207: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
208: LDA 6, 6(5)	* Set FP to be the "pre-push of AR" SP
* SP already points to end of the AR
209: LDA 7, 223(4)	* Jump to the start of the proc
210: LD 0, -4(6)	* Load the return value into ACC0
211: LD 5, -2(6)	* Restore SP from FP-2
212: LD 6, -3(6)	* Restore FP from FP-3
* END: procedure call
* BEGIN: push to stack
213: LDA 3, -72(5)	* Subtract the stack limit from SP - store in ACC3
214: LDC 2, 50(0)	* Load diagnostic char into ACC2
215: JLE 3, 281(4)	* stack failure
216: ST 0, 0(5)	* save ACC0 into the current SP location
217: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: assignment
218: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
219: LD 0, 0(5)	* Load stored result into ACC0
220: ST 0, -4(6)	* Store ACC0 into local offset (relative to FP)
* END: assignment
221: LD 0, 0(6)	* Load the return address from the 1st slot in the AR to ACC0
222: LDA 7, 0(0)	* Return to calling location (stored in ACC0)
* END: procedure code
* BEGIN: int procedure code
223: LDA 0, 0(0)	* NOOP to mark beginning of proc
224: LDC 5, 0(0)	* Load 0 into SP - we are misusing it in this proc
225: LDC 3, 1(0)	* Load 1 into ACC3
226: ST 3, -6(6)	* Store ACC3 into the bPos local var slot
227: LD 0, -5(6)	* Load the string's address into ACC0
228: LDA 1, 1(0)	* Load the string's char address into ACC1
229: LD 0, 0(0)	* Load the string size into ACC0
230: JEQ 0, 47(7)	* Jump to end if string is zero sized
231: LDA 0, -1(0)	* subtract one from string size
232: LD 2, 0(1)	* Load next char from string into ACC2
233: LDA 1, 1(1)	* increment pointer into string
234: LDC 3, 43(0)	* Load 43 ('+') into ACC3
235: SUB 3, 2, 3	* Subtract 43 from cur char
236: JEQ 3, 9(7)	* break if equal to 43
237: LDC 3, 45(0)	* Load 45 ('-') into ACC3
238: SUB 3, 2, 3	* Subtract 45 from cur char
239: JEQ 3, 6(7)	* break if equal to 45
240: LDC 3, 48(0)	* Load 48 ('0') into ACC3
241: SUB 3, 2, 3	* Subtract 48 from cur char
242: JLT 3, -13(7)	* go back to top if < 48 '0'
243: LDC 3, 57(0)	* Load 57 ('9') into ACC3
244: SUB 3, 2, 3	* Subtract 57 from cur char
245: JGT 3, -16(7)	* go back to top if > 57 '9'
246: LDA 0, 0(0)	* NOOP
247: LDC 3, 43(0)	* Load 43 ('+') into ACC3
248: SUB 3, 2, 3	* Subtract 43 from cur char
249: JEQ 3, 6(7)	* break if equal to 43
250: LDC 3, 45(0)	* Load 45 ('-') into ACC3
251: SUB 3, 2, 3	* Subtract 45 from cur char
252: JEQ 3, 1(7)	* break if equal to 45
253: LDA 7, 5(7)	* jump over
254: LDC 3, 0(0)	* Load 0 into ACC3
255: ST 3, -6(6)	* Store ACC3 into the bPos local var slot
256: LDA 0, -1(0)	* subtract one from string size
257: LD 2, 0(1)	* Load next char from string into ACC2
258: LDA 1, 1(1)	* increment pointer into string
259: JLT 0, 15(7)	* Jump to end if string is zero sized
260: LDC 3, 57(0)	* Load 57 ('9') into ACC3
261: SUB 3, 2, 3	* Subtract 57 from cur char
262: JGT 3, 12(7)	* quit if > 57 '9'
263: LDC 3, 48(0)	* Load 48 ('0') into ACC3
264: SUB 3, 2, 3	* Subtract 48 from cur char
265: JLT 3, 9(7)	* quit if < 48 '0'
266: LDC 3, 10(0)	* Load 10 into ACC3
267: MUL 5, 5, 3	* Shift accum value over
268: LDC 3, 48(0)	* Load 48 ('0') into ACC3
269: SUB 3, 2, 3	* Subtract 48 from cur char
270: ADD 5, 5, 3	* Add in the new ones places
271: LDA 0, -1(0)	* subtract one from string size
272: LD 2, 0(1)	* Load next char from string into ACC2
273: LDA 1, 1(1)	* increment pointer into string
274: LDA 7, -16(7)	* Go back to start of loop
275: LD 3, -6(6)	* Load bPos from the local var slot into ACC3
276: JNE 3, 1(7)	* Jump over the subtraction if still positive
277: SUB 5, 4, 5	* negate the accumulated value
278: ST 5, -4(6)	* Store the result into the return slot
279: LD 0, 0(6)	* Load the return address from the 1st slot in the AR to ACC0
280: LDA 7, 0(0)	* Return to calling location (stored in ACC0)
* END: int procedure code
* BEGIN: stack limit message handler
281: LDC 0, 25(0)	* Load the error message into ACC0
282: LDA 1, 1(0)	* Increment the address stored in ACC0 to get the string's char location (put in ACC1)
283: LD 0, 0(0)	* Load the string size into ACC0
284: JEQ 0, 5(7)	* Jump to end when run out of string
285: LDA 0, -1(0)	* subtract one from string size
286: LD 3, 0(1)	* Load next char from string into ACC3
287: LDA 1, 1(1)	* increment pointer into string
288: OUTC 3, 0, 0	* Write out character in ACC3
289: LDA 7, -6(7)	* Go back to start of loop
290: OUTC 2, 0, 0	* Write out diagnostic char in ACC2
291: OUTNL 0, 0, 0	* dump out the newline
292: HALT 0, 0, 0	* Halt for stack limit
* END: stack limit message handler
