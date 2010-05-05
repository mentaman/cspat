.DATA 23	* string length
.SDATA "Arrays bounds violation"	* string constant
.DATA 19	* string length
.SDATA "Out of stack space "	* string constant
* BEGIN preamble
0: LDC 4, 0(0)	* initialize ZEROREG to 0
1: LD 5, 0(4)	* initialize SP to end of memory
2: LDA 5, -1(5)	* subtract one to get the true SP
3: LDA 6, 0(5)	* FP and SP start off the same
* END preamble
* BEGIN: load an int constant
4: LDC 0, 1(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: push to stack
5: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
6: LDC 2, 55(0)	* Load diagnostic char into ACC2
7: JLE 3, 288(4)	* stack failure
8: ST 0, 0(5)	* save ACC0 into the current SP location
9: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
10: LDC 0, 1(0)	* Load a constant into ACC0
* END: load an int constant
11: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
12: LD 1, 0(5)	* Load stored result into ACC1
13: ADD 0, 0, 1	* Add ACC0 & ACC1 placing result in ACC0
* BEGIN: push to stack
14: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
15: LDC 2, 51(0)	* Load diagnostic char into ACC2
16: JLE 3, 288(4)	* stack failure
17: ST 0, 0(5)	* save ACC0 into the current SP location
18: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
19: LDC 0, 2(0)	* Load a constant into ACC0
* END: load an int constant
20: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
21: LD 1, 0(5)	* Load stored result into ACC1
22: SUB 0, 1, 0	* for =, subtract right from left
23: JEQ 0, 2(7)	* Jump to Load 1 if ACC0 == 0
24: LDC 0, 0(0)	* Load 0 into ACC0
25: LDA 7, 1(7)	* Jump over Load 1
26: LDC 0, 1(0)	* Load 1 into ACC0
* BEGIN: write(s)
27: OUT 0, 0, 0	* write out the int value in ACC0
28: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
* BEGIN: load an int constant
29: LDC 0, 1(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: push to stack
30: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
31: LDC 2, 55(0)	* Load diagnostic char into ACC2
32: JLE 3, 288(4)	* stack failure
33: ST 0, 0(5)	* save ACC0 into the current SP location
34: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
35: LDC 0, 1(0)	* Load a constant into ACC0
* END: load an int constant
36: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
37: LD 1, 0(5)	* Load stored result into ACC1
38: ADD 0, 0, 1	* Add ACC0 & ACC1 placing result in ACC0
* BEGIN: push to stack
39: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
40: LDC 2, 55(0)	* Load diagnostic char into ACC2
41: JLE 3, 288(4)	* stack failure
42: ST 0, 0(5)	* save ACC0 into the current SP location
43: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
44: LDC 0, 1(0)	* Load a constant into ACC0
* END: load an int constant
45: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
46: LD 1, 0(5)	* Load stored result into ACC1
47: SUB 0, 1, 0	* Subtract ACC0 from ACC1 placing result in ACC0
* BEGIN: push to stack
48: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
49: LDC 2, 51(0)	* Load diagnostic char into ACC2
50: JLE 3, 288(4)	* stack failure
51: ST 0, 0(5)	* save ACC0 into the current SP location
52: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
53: LDC 0, 0(0)	* Load a constant into ACC0
* END: load an int constant
54: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
55: LD 1, 0(5)	* Load stored result into ACC1
56: SUB 0, 1, 0	* for =, subtract right from left
57: JEQ 0, 2(7)	* Jump to Load 1 if ACC0 == 0
58: LDC 0, 0(0)	* Load 0 into ACC0
59: LDA 7, 1(7)	* Jump over Load 1
60: LDC 0, 1(0)	* Load 1 into ACC0
* BEGIN: write(s)
61: OUT 0, 0, 0	* write out the int value in ACC0
62: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
* BEGIN: load a bool value into ACC0
63: LDC 0, 1(0)	* Load a boolean value into ACC0
* END: load a bool value into ACC0
64: JEQ 0, 14(7)	* if left is false jump over the rest of the and
* BEGIN: push to stack
65: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
66: LDC 2, 49(0)	* Load diagnostic char into ACC2
67: JLE 3, 288(4)	* stack failure
68: ST 0, 0(5)	* save ACC0 into the current SP location
69: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load a bool value into ACC0
70: LDC 0, 0(0)	* Load a boolean value into ACC0
* END: load a bool value into ACC0
71: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
72: LD 1, 0(5)	* Load stored result into ACC1
73: ADD 0, 1, 0	* for AND, add right and left
74: LDA 0, -2(0)	* Then subtract 2
75: JEQ 0, 2(7)	* Jump to Load 1 if ACC0 == 0
76: LDC 0, 0(0)	* Load 0 into ACC0
77: LDA 7, 1(7)	* Jump over Load 1
78: LDC 0, 1(0)	* Load 1 into ACC0
* BEGIN: push to stack
79: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
80: LDC 2, 51(0)	* Load diagnostic char into ACC2
81: JLE 3, 288(4)	* stack failure
82: ST 0, 0(5)	* save ACC0 into the current SP location
83: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
84: LDC 0, 4(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: push to stack
85: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
86: LDC 2, 51(0)	* Load diagnostic char into ACC2
87: JLE 3, 288(4)	* stack failure
88: ST 0, 0(5)	* save ACC0 into the current SP location
89: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
90: LDC 0, 5(0)	* Load a constant into ACC0
* END: load an int constant
91: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
92: LD 1, 0(5)	* Load stored result into ACC1
93: SUB 0, 1, 0	* for =, subtract right from left
94: JEQ 0, 2(7)	* Jump to Load 1 if ACC0 == 0
95: LDC 0, 0(0)	* Load 0 into ACC0
96: LDA 7, 1(7)	* Jump over Load 1
97: LDC 0, 1(0)	* Load 1 into ACC0
98: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
99: LD 1, 0(5)	* Load stored result into ACC1
100: SUB 0, 1, 0	* for =, subtract right from left
101: JEQ 0, 2(7)	* Jump to Load 1 if ACC0 == 0
102: LDC 0, 0(0)	* Load 0 into ACC0
103: LDA 7, 1(7)	* Jump over Load 1
104: LDC 0, 1(0)	* Load 1 into ACC0
* BEGIN: write(s)
105: OUT 0, 0, 0	* write out the int value in ACC0
106: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
* BEGIN: load a bool value into ACC0
107: LDC 0, 1(0)	* Load a boolean value into ACC0
* END: load a bool value into ACC0
108: JEQ 0, 14(7)	* if left is false jump over the rest of the and
* BEGIN: push to stack
109: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
110: LDC 2, 49(0)	* Load diagnostic char into ACC2
111: JLE 3, 288(4)	* stack failure
112: ST 0, 0(5)	* save ACC0 into the current SP location
113: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load a bool value into ACC0
114: LDC 0, 0(0)	* Load a boolean value into ACC0
* END: load a bool value into ACC0
115: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
116: LD 1, 0(5)	* Load stored result into ACC1
117: ADD 0, 1, 0	* for AND, add right and left
118: LDA 0, -2(0)	* Then subtract 2
119: JEQ 0, 2(7)	* Jump to Load 1 if ACC0 == 0
120: LDC 0, 0(0)	* Load 0 into ACC0
121: LDA 7, 1(7)	* Jump over Load 1
122: LDC 0, 1(0)	* Load 1 into ACC0
123: JGT 0, 11(7)	* Jump over rest of logical or code
* BEGIN: push to stack
124: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
125: LDC 2, 57(0)	* Load diagnostic char into ACC2
126: JLE 3, 288(4)	* stack failure
127: ST 0, 0(5)	* save ACC0 into the current SP location
128: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load a bool value into ACC0
129: LDC 0, 1(0)	* Load a boolean value into ACC0
* END: load a bool value into ACC0
130: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
131: LD 1, 0(5)	* Load stored result into ACC1
132: ADD 0, 1, 0	* for OR, add right and left
133: JEQ 0, 1(7)	* Jump over Load 1 if ACC0 == 0
134: LDC 0, 1(0)	* Load 1 into ACC0
* BEGIN: write(s)
135: OUT 0, 0, 0	* write out the int value in ACC0
136: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
* BEGIN: load an int constant
137: LDC 0, 1(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: push to stack
138: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
139: LDC 2, 55(0)	* Load diagnostic char into ACC2
140: JLE 3, 288(4)	* stack failure
141: ST 0, 0(5)	* save ACC0 into the current SP location
142: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
143: LDC 0, 3(0)	* Load a constant into ACC0
* END: load an int constant
144: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
145: LD 1, 0(5)	* Load stored result into ACC1
146: DIV 0, 1, 0	* Divide ACC1 by ACC0 placing result in ACC0
* BEGIN: push to stack
147: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
148: LDC 2, 55(0)	* Load diagnostic char into ACC2
149: JLE 3, 288(4)	* stack failure
150: ST 0, 0(5)	* save ACC0 into the current SP location
151: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
152: LDC 0, 4(0)	* Load a constant into ACC0
* END: load an int constant
153: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
154: LD 1, 0(5)	* Load stored result into ACC1
155: MUL 0, 0, 1	* Multiply ACC0 & ACC1 placing result in ACC0
* BEGIN: push to stack
156: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
157: LDC 2, 51(0)	* Load diagnostic char into ACC2
158: JLE 3, 288(4)	* stack failure
159: ST 0, 0(5)	* save ACC0 into the current SP location
160: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
161: LDC 0, 12(0)	* Load a constant into ACC0
* END: load an int constant
162: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
163: LD 1, 0(5)	* Load stored result into ACC1
164: SUB 0, 1, 0	* for =, subtract right from left
165: JEQ 0, 2(7)	* Jump to Load 1 if ACC0 == 0
166: LDC 0, 0(0)	* Load 0 into ACC0
167: LDA 7, 1(7)	* Jump over Load 1
168: LDC 0, 1(0)	* Load 1 into ACC0
* BEGIN: write(s)
169: OUT 0, 0, 0	* write out the int value in ACC0
170: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
* BEGIN: load an int constant
171: LDC 0, 1(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: push to stack
172: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
173: LDC 2, 55(0)	* Load diagnostic char into ACC2
174: JLE 3, 288(4)	* stack failure
175: ST 0, 0(5)	* save ACC0 into the current SP location
176: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
177: LDC 0, 3(0)	* Load a constant into ACC0
* END: load an int constant
178: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
179: LD 1, 0(5)	* Load stored result into ACC1
* BEGIN: mod
180: DIV 2, 1, 0	* Divide left by right & put result in ACC2
181: MUL 2, 2, 0	* Multiply the right by the divide result & put in ACC2
182: SUB 0, 1, 2	* Subtract the multiplication result from left & put in ACC
* END: mod
* BEGIN: push to stack
183: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
184: LDC 2, 55(0)	* Load diagnostic char into ACC2
185: JLE 3, 288(4)	* stack failure
186: ST 0, 0(5)	* save ACC0 into the current SP location
187: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
188: LDC 0, 4(0)	* Load a constant into ACC0
* END: load an int constant
189: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
190: LD 1, 0(5)	* Load stored result into ACC1
191: DIV 0, 1, 0	* Divide ACC1 by ACC0 placing result in ACC0
* BEGIN: push to stack
192: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
193: LDC 2, 55(0)	* Load diagnostic char into ACC2
194: JLE 3, 288(4)	* stack failure
195: ST 0, 0(5)	* save ACC0 into the current SP location
196: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
197: LDC 0, 4(0)	* Load a constant into ACC0
* END: load an int constant
198: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
199: LD 1, 0(5)	* Load stored result into ACC1
200: ADD 0, 0, 1	* Add ACC0 & ACC1 placing result in ACC0
* BEGIN: push to stack
201: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
202: LDC 2, 55(0)	* Load diagnostic char into ACC2
203: JLE 3, 288(4)	* stack failure
204: ST 0, 0(5)	* save ACC0 into the current SP location
205: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
206: LDC 0, 3(0)	* Load a constant into ACC0
* END: load an int constant
207: SUB 0, 4, 0	* Subtract ACC0 from ZEROREG to negate it
208: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
209: LD 1, 0(5)	* Load stored result into ACC1
210: SUB 0, 1, 0	* Subtract ACC0 from ACC1 placing result in ACC0
* BEGIN: push to stack
211: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
212: LDC 2, 51(0)	* Load diagnostic char into ACC2
213: JLE 3, 288(4)	* stack failure
214: ST 0, 0(5)	* save ACC0 into the current SP location
215: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load a bool value into ACC0
216: LDC 0, 1(0)	* Load a boolean value into ACC0
* END: load a bool value into ACC0
217: JEQ 0, 2(7)	* Jump to Load 1 if ACC0 == 0
218: LDC 0, 0(0)	* Load 0 into ACC0
219: LDA 7, 1(7)	* Jump over Load 1
220: LDC 0, 1(0)	* Load 1 into ACC0
221: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
222: LD 1, 0(5)	* Load stored result into ACC1
* BEGIN: >=
223: SUB 0, 1, 0	* for >=, subtract right from left
224: JGE 0, 2(7)	* Jump to Load 1 if ACC0 >= 0
225: LDC 0, 0(0)	* Load 0 into ACC0
226: LDA 7, 1(7)	* Jump over Load 1
227: LDC 0, 1(0)	* Load 1 into ACC0
* END: >=
* BEGIN: write(s)
228: OUT 0, 0, 0	* write out the int value in ACC0
229: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
* BEGIN: load a bool value into ACC0
230: LDC 0, 1(0)	* Load a boolean value into ACC0
* END: load a bool value into ACC0
231: JGT 0, 28(7)	* Jump over rest of logical or code
* BEGIN: push to stack
232: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
233: LDC 2, 57(0)	* Load diagnostic char into ACC2
234: JLE 3, 288(4)	* stack failure
235: ST 0, 0(5)	* save ACC0 into the current SP location
236: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
237: LDC 0, 4(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: push to stack
238: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
239: LDC 2, 51(0)	* Load diagnostic char into ACC2
240: JLE 3, 288(4)	* stack failure
241: ST 0, 0(5)	* save ACC0 into the current SP location
242: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
243: LDC 0, 5(0)	* Load a constant into ACC0
* END: load an int constant
244: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
245: LD 1, 0(5)	* Load stored result into ACC1
* BEGIN: >=
246: SUB 0, 1, 0	* for >=, subtract right from left
247: JGE 0, 2(7)	* Jump to Load 1 if ACC0 >= 0
248: LDC 0, 0(0)	* Load 0 into ACC0
249: LDA 7, 1(7)	* Jump over Load 1
250: LDC 0, 1(0)	* Load 1 into ACC0
* END: >=
251: JEQ 0, 2(7)	* Jump to Load 1 if ACC0 == 0
252: LDC 0, 0(0)	* Load 0 into ACC0
253: LDA 7, 1(7)	* Jump over Load 1
254: LDC 0, 1(0)	* Load 1 into ACC0
255: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
256: LD 1, 0(5)	* Load stored result into ACC1
257: ADD 0, 1, 0	* for OR, add right and left
258: JEQ 0, 1(7)	* Jump over Load 1 if ACC0 == 0
259: LDC 0, 1(0)	* Load 1 into ACC0
* BEGIN: push to stack
260: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
261: LDC 2, 51(0)	* Load diagnostic char into ACC2
262: JLE 3, 288(4)	* stack failure
263: ST 0, 0(5)	* save ACC0 into the current SP location
264: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
265: LDC 0, 4(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: push to stack
266: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
267: LDC 2, 51(0)	* Load diagnostic char into ACC2
268: JLE 3, 288(4)	* stack failure
269: ST 0, 0(5)	* save ACC0 into the current SP location
270: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
271: LDC 0, 5(0)	* Load a constant into ACC0
* END: load an int constant
272: SUB 0, 4, 0	* Subtract ACC0 from ZEROREG to negate it
273: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
274: LD 1, 0(5)	* Load stored result into ACC1
275: SUB 0, 1, 0	* for =, subtract right from left
276: JEQ 0, 2(7)	* Jump to Load 1 if ACC0 == 0
277: LDC 0, 0(0)	* Load 0 into ACC0
278: LDA 7, 1(7)	* Jump over Load 1
279: LDC 0, 1(0)	* Load 1 into ACC0
280: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
281: LD 1, 0(5)	* Load stored result into ACC1
282: SUB 0, 1, 0	* for !=, subtract right from left
283: JEQ 0, 1(7)	* Jump over Load 1 if ACC0 == 0
284: LDC 0, 1(0)	* Load 1 into ACC0
* BEGIN: write(s)
285: OUT 0, 0, 0	* write out the int value in ACC0
286: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
287: HALT 0, 0, 0	* End of Program
* BEGIN: stack limit message handler
288: LDC 0, 25(0)	* Load the error message into ACC0
289: LDA 1, 1(0)	* Increment the address stored in ACC0 to get the string's char location (put in ACC1)
290: LD 0, 0(0)	* Load the string size into ACC0
291: JEQ 0, 5(7)	* Jump to end when run out of string
292: LDA 0, -1(0)	* subtract one from string size
293: LD 3, 0(1)	* Load next char from string into ACC3
294: LDA 1, 1(1)	* increment pointer into string
295: OUTC 3, 0, 0	* Write out character in ACC3
296: LDA 7, -6(7)	* Go back to start of loop
297: OUTC 2, 0, 0	* Write out diagnostic char in ACC2
298: OUTNL 0, 0, 0	* dump out the newline
299: HALT 0, 0, 0	* Halt for stack limit
* END: stack limit message handler
