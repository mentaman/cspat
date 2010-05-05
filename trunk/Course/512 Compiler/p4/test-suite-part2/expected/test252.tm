.DATA 23	* string length
.SDATA "Arrays bounds violation"	* string constant
.DATA 19	* string length
.SDATA "Out of stack space "	* string constant
.DATA 24	* string length
.SDATA "Enter number of sticks: "	* string constant
.DATA 42	* string length
.SDATA " is too few sticks; pick a larger number. "	* string constant
.DATA 19	* string length
.SDATA " is a lot of sticks"	* string constant
.DATA 63	* string length
.SDATA "Do you really want to play this long of a game? 0=no / 1= yes: "	* string constant
.DATA 2	* string length
.SDATA "OK"	* string constant
.DATA 13	* string length
.SDATA "Well I don't!"	* string constant
.DATA 31	* string length
.SDATA "I don't understand your answer."	* string constant
.DATA 54	* string length
.SDATA "Oops, I got confused and let you take too many sticks."	* string constant
.DATA 10	* string length
.SDATA "Game over."	* string constant
.DATA 41	* string length
.SDATA "Do you want instructions? 0=no / 1= yes: "	* string constant
.DATA 67	* string length
.SDATA "We alternate picking 1, 2, or 3 sticks.  The one who picks the last"	* string constant
.DATA 31	* string length
.SDATA "stick loses.  That will be you."	* string constant
.DATA 13	* string length
.SDATA "You go first."	* string constant
.DATA 42	* string length
.SDATA "You must pick 1, 2, or 3 sticks each turn."	* string constant
.DATA 10	* string length
.SDATA "There are "	* string constant
.DATA 18	* string length
.SDATA " sticks remaining."	* string constant
.DATA 40	* string length
.SDATA "It is your turn.  How many do you want? "	* string constant
.DATA 11	* string length
.SDATA "You picked "	* string constant
.DATA 45	* string length
.SDATA "You must pick 1, 2, or 3 sticks.  Try again: "	* string constant
.DATA 15	* string length
.SDATA "There are only "	* string constant
.DATA 21	* string length
.SDATA " sticks.  Try again: "	* string constant
.DATA 50	* string length
.SDATA "You don't seem to understand this game.  Good bye."	* string constant
.DATA 6	* string length
.SDATA "I won."	* string constant
.DATA 48	* string length
.SDATA "There only one stick remaining.  I must pick it."	* string constant
.DATA 26	* string length
.SDATA "Congratulations!  You won."	* string constant
.DATA 10	* string length
.SDATA "There are "	* string constant
.DATA 18	* string length
.SDATA " sticks remaining."	* string constant
.DATA 23	* string length
.SDATA "It is my pick.  I pick "	* string constant
.DATA 8	* string length
.SDATA " sticks."	* string constant
.DATA 6	* string length
.SDATA "Thanks"	* string constant
.DATA 0	* storage location (882) for var N
.DATA 0	* storage location (883) for var pick
.DATA 0	* storage location (884) for var k
.DATA 0	* storage location (885) for var picktext
* BEGIN preamble
0: LDC 4, 0(0)	* initialize ZEROREG to 0
1: LD 5, 0(4)	* initialize SP to end of memory
2: LDA 5, -1(5)	* subtract one to get the true SP
3: LDA 6, 0(5)	* FP and SP start off the same
* END preamble
* BEGIN: load a string's location into ACC0
4: LDC 0, 312(0)	* Load a string's location into ACC0
* END: load a string's location into ACC0
* BEGIN: write(s)
5: LDA 1, 1(0)	* Increment the address stored in ACC0 to get the string's char location (put in ACC1)
6: LD 0, 0(0)	* Load the string size into ACC0
7: JEQ 0, 5(7)	* Jump to end when run out of string
8: LDA 0, -1(0)	* subtract one from string size
9: LD 2, 0(1)	* Load next char from string into ACC2
10: LDA 1, 1(1)	* increment pointer into string
11: OUTC 2, 0, 0	* Write out character in ACC2
12: LDA 7, -6(7)	* Go back to start of loop
* END: write(s)
13: IN 0, 0, 0	* Read into ACC0
* BEGIN: push to stack
14: LDA 3, -887(5)	* Subtract the stack limit from SP - store in ACC3
15: LDC 2, 50(0)	* Load diagnostic char into ACC2
16: JLE 3, 1044(4)	* stack failure
17: ST 0, 0(5)	* save ACC0 into the current SP location
18: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: assignment
19: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
20: LD 0, 0(5)	* Load stored result into ACC0
21: ST 0, 884(4)	* Store ACC0 into global offset
* END: assignment
* BEGIN: variable (rvalue) access
22: LD 0, 884(4)	* Load the global var into ACC0
* END: variable (rvalue) access
* BEGIN: push to stack
23: LDA 3, -887(5)	* Subtract the stack limit from SP - store in ACC3
24: LDC 2, 51(0)	* Load diagnostic char into ACC2
25: JLE 3, 1044(4)	* stack failure
26: ST 0, 0(5)	* save ACC0 into the current SP location
27: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
28: LDC 0, 1(0)	* Load a constant into ACC0
* END: load an int constant
29: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
30: LD 1, 0(5)	* Load stored result into ACC1
31: SUB 0, 1, 0	* for =, subtract right from left
32: JEQ 0, 2(7)	* Jump to Load 1 if ACC0 == 0
33: LDC 0, 0(0)	* Load 0 into ACC0
34: LDA 7, 1(7)	* Jump over Load 1
35: LDC 0, 1(0)	* Load 1 into ACC0
36: JEQ 0, 30(7)	* Jump over the then stmts if false
* BEGIN: load a string's location into ACC0
37: LDC 0, 354(0)	* Load a string's location into ACC0
* END: load a string's location into ACC0
* BEGIN: write(s)
38: LDA 1, 1(0)	* Increment the address stored in ACC0 to get the string's char location (put in ACC1)
39: LD 0, 0(0)	* Load the string size into ACC0
40: JEQ 0, 5(7)	* Jump to end when run out of string
41: LDA 0, -1(0)	* subtract one from string size
42: LD 2, 0(1)	* Load next char from string into ACC2
43: LDA 1, 1(1)	* increment pointer into string
44: OUTC 2, 0, 0	* Write out character in ACC2
45: LDA 7, -6(7)	* Go back to start of loop
46: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
* BEGIN: load a string's location into ACC0
47: LDC 0, 422(0)	* Load a string's location into ACC0
* END: load a string's location into ACC0
* BEGIN: write(s)
48: LDA 1, 1(0)	* Increment the address stored in ACC0 to get the string's char location (put in ACC1)
49: LD 0, 0(0)	* Load the string size into ACC0
50: JEQ 0, 5(7)	* Jump to end when run out of string
51: LDA 0, -1(0)	* subtract one from string size
52: LD 2, 0(1)	* Load next char from string into ACC2
53: LDA 1, 1(1)	* increment pointer into string
54: OUTC 2, 0, 0	* Write out character in ACC2
55: LDA 7, -6(7)	* Go back to start of loop
56: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
* BEGIN: load a string's location into ACC0
57: LDC 0, 454(0)	* Load a string's location into ACC0
* END: load a string's location into ACC0
* BEGIN: write(s)
58: LDA 1, 1(0)	* Increment the address stored in ACC0 to get the string's char location (put in ACC1)
59: LD 0, 0(0)	* Load the string size into ACC0
60: JEQ 0, 5(7)	* Jump to end when run out of string
61: LDA 0, -1(0)	* subtract one from string size
62: LD 2, 0(1)	* Load next char from string into ACC2
63: LDA 1, 1(1)	* increment pointer into string
64: OUTC 2, 0, 0	* Write out character in ACC2
65: LDA 7, -6(7)	* Go back to start of loop
66: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
* BEGIN: procedure call
67: LDA 0, 33(7)	* Get return address into ACC0
68: LDA 3, -890(5)	* Subtract the stack limit from SP - store in ACC3
69: LDC 2, 97(0)	* Load diagnostic char into ACC2
70: JLE 3, 1044(4)	* stack failure
71: ST 0, 0(5)	* Store return address (in ACC0) to SP/FP
* return value sits at SP-1/FP-1
72: ST 5, -2(5)	* Store SP to SP-2/FP-2
73: ST 6, -3(5)	* Store FP to SP-3/FP-3
74: LDA 5, -4(5)	* decrement SP by 4 (i.e., 4 pushes)
75: LDA 3, -887(5)	* Subtract the stack limit from SP - store in ACC3
76: LDC 2, 99(0)	* Load diagnostic char into ACC2
77: JLE 3, 1044(4)	* stack failure
78: LDA 5, -1(5)	* decrement SP by local var's size (i.e., push)
79: LDA 3, -887(5)	* Subtract the stack limit from SP - store in ACC3
80: LDC 2, 99(0)	* Load diagnostic char into ACC2
81: JLE 3, 1044(4)	* stack failure
82: LDA 5, -1(5)	* decrement SP by local var's size (i.e., push)
83: LDA 3, -887(5)	* Subtract the stack limit from SP - store in ACC3
84: LDC 2, 99(0)	* Load diagnostic char into ACC2
85: JLE 3, 1044(4)	* stack failure
86: LDA 5, -1(5)	* decrement SP by local var's size (i.e., push)
87: LDA 3, -887(5)	* Subtract the stack limit from SP - store in ACC3
88: LDC 2, 99(0)	* Load diagnostic char into ACC2
89: JLE 3, 1044(4)	* stack failure
90: LDA 5, -1(5)	* decrement SP by local var's size (i.e., push)
91: LDA 3, -887(5)	* Subtract the stack limit from SP - store in ACC3
92: LDC 2, 99(0)	* Load diagnostic char into ACC2
93: JLE 3, 1044(4)	* stack failure
94: LDA 5, -1(5)	* decrement SP by local var's size (i.e., push)
95: LDA 3, -887(5)	* Subtract the stack limit from SP - store in ACC3
96: LDC 2, 99(0)	* Load diagnostic char into ACC2
97: JLE 3, 1044(4)	* stack failure
98: LDA 5, -1(5)	* decrement SP by local var's size (i.e., push)
99: LDA 6, 10(5)	* Set FP to be the "pre-push of AR" SP
* SP already points to end of the AR
100: LDA 7, 588(4)	* Jump to the start of the proc
101: LD 0, -4(6)	* Load the return value into ACC0
102: LD 5, -2(6)	* Restore SP from FP-2
103: LD 6, -3(6)	* Restore FP from FP-3
* END: procedure call
* BEGIN: push to stack
104: LDA 3, -887(5)	* Subtract the stack limit from SP - store in ACC3
105: LDC 2, 50(0)	* Load diagnostic char into ACC2
106: JLE 3, 1044(4)	* stack failure
107: ST 0, 0(5)	* save ACC0 into the current SP location
108: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: assignment
109: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
110: LD 0, 0(5)	* Load stored result into ACC0
111: ST 0, 882(4)	* Store ACC0 into global offset
* END: assignment
* BEGIN: load a string's location into ACC0
112: LDC 0, 468(0)	* Load a string's location into ACC0
* END: load a string's location into ACC0
* BEGIN: write(s)
113: LDA 1, 1(0)	* Increment the address stored in ACC0 to get the string's char location (put in ACC1)
114: LD 0, 0(0)	* Load the string size into ACC0
115: JEQ 0, 5(7)	* Jump to end when run out of string
116: LDA 0, -1(0)	* subtract one from string size
117: LD 2, 0(1)	* Load next char from string into ACC2
118: LDA 1, 1(1)	* increment pointer into string
119: OUTC 2, 0, 0	* Write out character in ACC2
120: LDA 7, -6(7)	* Go back to start of loop
121: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
* BEGIN: Do loop
* BEGIN: variable (rvalue) access
122: LD 0, 882(4)	* Load the global var into ACC0
* END: variable (rvalue) access
* BEGIN: push to stack
123: LDA 3, -887(5)	* Subtract the stack limit from SP - store in ACC3
124: LDC 2, 51(0)	* Load diagnostic char into ACC2
125: JLE 3, 1044(4)	* stack failure
126: ST 0, 0(5)	* save ACC0 into the current SP location
127: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
128: LDC 0, 0(0)	* Load a constant into ACC0
* END: load an int constant
129: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
130: LD 1, 0(5)	* Load stored result into ACC1
* BEGIN: >
131: SUB 0, 1, 0	* for >, subtract right from left
132: JGT 0, 2(7)	* Jump to Load 1 if ACC0 > 0
133: LDC 0, 0(0)	* Load 0 into ACC0
134: LDA 7, 1(7)	* Jump over Load 1
135: LDC 0, 1(0)	* Load 1 into ACC0
* END: >
136: JEQ 0, 439(7)	* Jump to the end of the loop if done
* BEGIN: load a string's location into ACC0
137: LDC 0, 511(0)	* Load a string's location into ACC0
* END: load a string's location into ACC0
* BEGIN: write(s)
138: LDA 1, 1(0)	* Increment the address stored in ACC0 to get the string's char location (put in ACC1)
139: LD 0, 0(0)	* Load the string size into ACC0
140: JEQ 0, 5(7)	* Jump to end when run out of string
141: LDA 0, -1(0)	* subtract one from string size
142: LD 2, 0(1)	* Load next char from string into ACC2
143: LDA 1, 1(1)	* increment pointer into string
144: OUTC 2, 0, 0	* Write out character in ACC2
145: LDA 7, -6(7)	* Go back to start of loop
* END: write(s)
* BEGIN: variable (rvalue) access
146: LD 0, 882(4)	* Load the global var into ACC0
* END: variable (rvalue) access
* BEGIN: write(s)
147: OUT 0, 0, 0	* write out the int value in ACC0
* END: write(s)
* BEGIN: load a string's location into ACC0
148: LDC 0, 522(0)	* Load a string's location into ACC0
* END: load a string's location into ACC0
* BEGIN: write(s)
149: LDA 1, 1(0)	* Increment the address stored in ACC0 to get the string's char location (put in ACC1)
150: LD 0, 0(0)	* Load the string size into ACC0
151: JEQ 0, 5(7)	* Jump to end when run out of string
152: LDA 0, -1(0)	* subtract one from string size
153: LD 2, 0(1)	* Load next char from string into ACC2
154: LDA 1, 1(1)	* increment pointer into string
155: OUTC 2, 0, 0	* Write out character in ACC2
156: LDA 7, -6(7)	* Go back to start of loop
157: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
* BEGIN: load a string's location into ACC0
158: LDC 0, 541(0)	* Load a string's location into ACC0
* END: load a string's location into ACC0
* BEGIN: write(s)
159: LDA 1, 1(0)	* Increment the address stored in ACC0 to get the string's char location (put in ACC1)
160: LD 0, 0(0)	* Load the string size into ACC0
161: JEQ 0, 5(7)	* Jump to end when run out of string
162: LDA 0, -1(0)	* subtract one from string size
163: LD 2, 0(1)	* Load next char from string into ACC2
164: LDA 1, 1(1)	* increment pointer into string
165: OUTC 2, 0, 0	* Write out character in ACC2
166: LDA 7, -6(7)	* Go back to start of loop
* END: write(s)
* BEGIN: load an int constant
167: LDC 0, 0(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: push to stack
168: LDA 3, -887(5)	* Subtract the stack limit from SP - store in ACC3
169: LDC 2, 50(0)	* Load diagnostic char into ACC2
170: JLE 3, 1044(4)	* stack failure
171: ST 0, 0(5)	* save ACC0 into the current SP location
172: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: assignment
173: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
174: LD 0, 0(5)	* Load stored result into ACC0
175: ST 0, 884(4)	* Store ACC0 into global offset
* END: assignment
* BEGIN: Do loop
* BEGIN: variable (rvalue) access
176: LD 0, 884(4)	* Load the global var into ACC0
* END: variable (rvalue) access
* BEGIN: push to stack
177: LDA 3, -887(5)	* Subtract the stack limit from SP - store in ACC3
178: LDC 2, 51(0)	* Load diagnostic char into ACC2
179: JLE 3, 1044(4)	* stack failure
180: ST 0, 0(5)	* save ACC0 into the current SP location
181: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
182: LDC 0, 4(0)	* Load a constant into ACC0
* END: load an int constant
183: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
184: LD 1, 0(5)	* Load stored result into ACC1
* BEGIN: <
185: SUB 0, 1, 0	* for <, subtract right from left
186: JLT 0, 2(7)	* Jump to Load 1 if ACC0 < 0
187: LDC 0, 0(0)	* Load 0 into ACC0
188: LDA 7, 1(7)	* Jump over Load 1
189: LDC 0, 1(0)	* Load 1 into ACC0
* END: <
190: JEQ 0, 127(7)	* Jump to the end of the loop if done
* BEGIN: variable (rvalue) access
191: LD 0, 884(4)	* Load the global var into ACC0
* END: variable (rvalue) access
* BEGIN: push to stack
192: LDA 3, -887(5)	* Subtract the stack limit from SP - store in ACC3
193: LDC 2, 55(0)	* Load diagnostic char into ACC2
194: JLE 3, 1044(4)	* stack failure
195: ST 0, 0(5)	* save ACC0 into the current SP location
196: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
197: LDC 0, 1(0)	* Load a constant into ACC0
* END: load an int constant
198: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
199: LD 1, 0(5)	* Load stored result into ACC1
200: ADD 0, 0, 1	* Add ACC0 & ACC1 placing result in ACC0
* BEGIN: push to stack
201: LDA 3, -887(5)	* Subtract the stack limit from SP - store in ACC3
202: LDC 2, 50(0)	* Load diagnostic char into ACC2
203: JLE 3, 1044(4)	* stack failure
204: ST 0, 0(5)	* save ACC0 into the current SP location
205: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: assignment
206: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
207: LD 0, 0(5)	* Load stored result into ACC0
208: ST 0, 884(4)	* Store ACC0 into global offset
* END: assignment
209: IN 0, 0, 0	* Read into ACC0
* BEGIN: push to stack
210: LDA 3, -887(5)	* Subtract the stack limit from SP - store in ACC3
211: LDC 2, 50(0)	* Load diagnostic char into ACC2
212: JLE 3, 1044(4)	* stack failure
213: ST 0, 0(5)	* save ACC0 into the current SP location
214: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: assignment
215: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
216: LD 0, 0(5)	* Load stored result into ACC0
217: ST 0, 883(4)	* Store ACC0 into global offset
* END: assignment
* BEGIN: load a string's location into ACC0
218: LDC 0, 582(0)	* Load a string's location into ACC0
* END: load a string's location into ACC0
* BEGIN: write(s)
219: LDA 1, 1(0)	* Increment the address stored in ACC0 to get the string's char location (put in ACC1)
220: LD 0, 0(0)	* Load the string size into ACC0
221: JEQ 0, 5(7)	* Jump to end when run out of string
222: LDA 0, -1(0)	* subtract one from string size
223: LD 2, 0(1)	* Load next char from string into ACC2
224: LDA 1, 1(1)	* increment pointer into string
225: OUTC 2, 0, 0	* Write out character in ACC2
226: LDA 7, -6(7)	* Go back to start of loop
* END: write(s)
* BEGIN: variable (rvalue) access
227: LD 0, 883(4)	* Load the global var into ACC0
* END: variable (rvalue) access
* BEGIN: write(s)
228: OUT 0, 0, 0	* write out the int value in ACC0
229: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
* BEGIN: variable (rvalue) access
230: LD 0, 883(4)	* Load the global var into ACC0
* END: variable (rvalue) access
* BEGIN: push to stack
231: LDA 3, -887(5)	* Subtract the stack limit from SP - store in ACC3
232: LDC 2, 51(0)	* Load diagnostic char into ACC2
233: JLE 3, 1044(4)	* stack failure
234: ST 0, 0(5)	* save ACC0 into the current SP location
235: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
236: LDC 0, 1(0)	* Load a constant into ACC0
* END: load an int constant
237: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
238: LD 1, 0(5)	* Load stored result into ACC1
* BEGIN: <
239: SUB 0, 1, 0	* for <, subtract right from left
240: JLT 0, 2(7)	* Jump to Load 1 if ACC0 < 0
241: LDC 0, 0(0)	* Load 0 into ACC0
242: LDA 7, 1(7)	* Jump over Load 1
243: LDC 0, 1(0)	* Load 1 into ACC0
* END: <
244: JGT 0, 24(7)	* Jump over rest of logical or code
* BEGIN: push to stack
245: LDA 3, -887(5)	* Subtract the stack limit from SP - store in ACC3
246: LDC 2, 57(0)	* Load diagnostic char into ACC2
247: JLE 3, 1044(4)	* stack failure
248: ST 0, 0(5)	* save ACC0 into the current SP location
249: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: variable (rvalue) access
250: LD 0, 883(4)	* Load the global var into ACC0
* END: variable (rvalue) access
* BEGIN: push to stack
251: LDA 3, -887(5)	* Subtract the stack limit from SP - store in ACC3
252: LDC 2, 51(0)	* Load diagnostic char into ACC2
253: JLE 3, 1044(4)	* stack failure
254: ST 0, 0(5)	* save ACC0 into the current SP location
255: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
256: LDC 0, 3(0)	* Load a constant into ACC0
* END: load an int constant
257: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
258: LD 1, 0(5)	* Load stored result into ACC1
* BEGIN: >
259: SUB 0, 1, 0	* for >, subtract right from left
260: JGT 0, 2(7)	* Jump to Load 1 if ACC0 > 0
261: LDC 0, 0(0)	* Load 0 into ACC0
262: LDA 7, 1(7)	* Jump over Load 1
263: LDC 0, 1(0)	* Load 1 into ACC0
* END: >
264: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
265: LD 1, 0(5)	* Load stored result into ACC1
266: ADD 0, 1, 0	* for OR, add right and left
267: JEQ 0, 1(7)	* Jump over Load 1 if ACC0 == 0
268: LDC 0, 1(0)	* Load 1 into ACC0
269: JEQ 0, 10(7)	* Jump over the then stmts if false
* BEGIN: load a string's location into ACC0
270: LDC 0, 594(0)	* Load a string's location into ACC0
* END: load a string's location into ACC0
* BEGIN: write(s)
271: LDA 1, 1(0)	* Increment the address stored in ACC0 to get the string's char location (put in ACC1)
272: LD 0, 0(0)	* Load the string size into ACC0
273: JEQ 0, 5(7)	* Jump to end when run out of string
274: LDA 0, -1(0)	* subtract one from string size
275: LD 2, 0(1)	* Load next char from string into ACC2
276: LDA 1, 1(1)	* increment pointer into string
277: OUTC 2, 0, 0	* Write out character in ACC2
278: LDA 7, -6(7)	* Go back to start of loop
* END: write(s)
279: LDA 7, 37(7)	* Jump over the rest of the if
* BEGIN: variable (rvalue) access
280: LD 0, 883(4)	* Load the global var into ACC0
* END: variable (rvalue) access
* BEGIN: push to stack
281: LDA 3, -887(5)	* Subtract the stack limit from SP - store in ACC3
282: LDC 2, 51(0)	* Load diagnostic char into ACC2
283: JLE 3, 1044(4)	* stack failure
284: ST 0, 0(5)	* save ACC0 into the current SP location
285: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: variable (rvalue) access
286: LD 0, 882(4)	* Load the global var into ACC0
* END: variable (rvalue) access
287: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
288: LD 1, 0(5)	* Load stored result into ACC1
* BEGIN: >
289: SUB 0, 1, 0	* for >, subtract right from left
290: JGT 0, 2(7)	* Jump to Load 1 if ACC0 > 0
291: LDC 0, 0(0)	* Load 0 into ACC0
292: LDA 7, 1(7)	* Jump over Load 1
293: LDC 0, 1(0)	* Load 1 into ACC0
* END: >
294: JEQ 0, 21(7)	* Jump over the then stmts if false
* BEGIN: load a string's location into ACC0
295: LDC 0, 640(0)	* Load a string's location into ACC0
* END: load a string's location into ACC0
* BEGIN: write(s)
296: LDA 1, 1(0)	* Increment the address stored in ACC0 to get the string's char location (put in ACC1)
297: LD 0, 0(0)	* Load the string size into ACC0
298: JEQ 0, 5(7)	* Jump to end when run out of string
299: LDA 0, -1(0)	* subtract one from string size
300: LD 2, 0(1)	* Load next char from string into ACC2
301: LDA 1, 1(1)	* increment pointer into string
302: OUTC 2, 0, 0	* Write out character in ACC2
303: LDA 7, -6(7)	* Go back to start of loop
* END: write(s)
* BEGIN: variable (rvalue) access
304: LD 0, 882(4)	* Load the global var into ACC0
* END: variable (rvalue) access
* BEGIN: write(s)
305: OUT 0, 0, 0	* write out the int value in ACC0
* END: write(s)
* BEGIN: load a string's location into ACC0
306: LDC 0, 656(0)	* Load a string's location into ACC0
* END: load a string's location into ACC0
* BEGIN: write(s)
307: LDA 1, 1(0)	* Increment the address stored in ACC0 to get the string's char location (put in ACC1)
308: LD 0, 0(0)	* Load the string size into ACC0
309: JEQ 0, 5(7)	* Jump to end when run out of string
310: LDA 0, -1(0)	* subtract one from string size
311: LD 2, 0(1)	* Load next char from string into ACC2
312: LDA 1, 1(1)	* increment pointer into string
313: OUTC 2, 0, 0	* Write out character in ACC2
314: LDA 7, -6(7)	* Go back to start of loop
* END: write(s)
315: LDA 7, 1(7)	* Jump over the rest of the if
* BEGIN: break
316: LDA 7, 318(4)	* skip to the end of the loop
* END: break
317: LDA 7, -142(7)	* Jump back to start of loop
318: LDA 5, 0(5)	* NOOP to mark end of loop
* END: Do loop
* BEGIN: variable (rvalue) access
319: LD 0, 883(4)	* Load the global var into ACC0
* END: variable (rvalue) access
* BEGIN: push to stack
320: LDA 3, -887(5)	* Subtract the stack limit from SP - store in ACC3
321: LDC 2, 51(0)	* Load diagnostic char into ACC2
322: JLE 3, 1044(4)	* stack failure
323: ST 0, 0(5)	* save ACC0 into the current SP location
324: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
325: LDC 0, 0(0)	* Load a constant into ACC0
* END: load an int constant
326: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
327: LD 1, 0(5)	* Load stored result into ACC1
* BEGIN: <
328: SUB 0, 1, 0	* for <, subtract right from left
329: JLT 0, 2(7)	* Jump to Load 1 if ACC0 < 0
330: LDC 0, 0(0)	* Load 0 into ACC0
331: LDA 7, 1(7)	* Jump over Load 1
332: LDC 0, 1(0)	* Load 1 into ACC0
* END: <
333: JGT 0, 24(7)	* Jump over rest of logical or code
* BEGIN: push to stack
334: LDA 3, -887(5)	* Subtract the stack limit from SP - store in ACC3
335: LDC 2, 57(0)	* Load diagnostic char into ACC2
336: JLE 3, 1044(4)	* stack failure
337: ST 0, 0(5)	* save ACC0 into the current SP location
338: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: variable (rvalue) access
339: LD 0, 883(4)	* Load the global var into ACC0
* END: variable (rvalue) access
* BEGIN: push to stack
340: LDA 3, -887(5)	* Subtract the stack limit from SP - store in ACC3
341: LDC 2, 51(0)	* Load diagnostic char into ACC2
342: JLE 3, 1044(4)	* stack failure
343: ST 0, 0(5)	* save ACC0 into the current SP location
344: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
345: LDC 0, 3(0)	* Load a constant into ACC0
* END: load an int constant
346: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
347: LD 1, 0(5)	* Load stored result into ACC1
* BEGIN: >
348: SUB 0, 1, 0	* for >, subtract right from left
349: JGT 0, 2(7)	* Jump to Load 1 if ACC0 > 0
350: LDC 0, 0(0)	* Load 0 into ACC0
351: LDA 7, 1(7)	* Jump over Load 1
352: LDC 0, 1(0)	* Load 1 into ACC0
* END: >
353: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
354: LD 1, 0(5)	* Load stored result into ACC1
355: ADD 0, 1, 0	* for OR, add right and left
356: JEQ 0, 1(7)	* Jump over Load 1 if ACC0 == 0
357: LDC 0, 1(0)	* Load 1 into ACC0
358: JEQ 0, 11(7)	* Jump over the then stmts if false
* BEGIN: load a string's location into ACC0
359: LDC 0, 678(0)	* Load a string's location into ACC0
* END: load a string's location into ACC0
* BEGIN: write(s)
360: LDA 1, 1(0)	* Increment the address stored in ACC0 to get the string's char location (put in ACC1)
361: LD 0, 0(0)	* Load the string size into ACC0
362: JEQ 0, 5(7)	* Jump to end when run out of string
363: LDA 0, -1(0)	* subtract one from string size
364: LD 2, 0(1)	* Load next char from string into ACC2
365: LDA 1, 1(1)	* increment pointer into string
366: OUTC 2, 0, 0	* Write out character in ACC2
367: LDA 7, -6(7)	* Go back to start of loop
368: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
* BEGIN: exit
369: HALT 0, 0, 0	* exit
* END: exit
* BEGIN: variable (rvalue) access
370: LD 0, 882(4)	* Load the global var into ACC0
* END: variable (rvalue) access
* BEGIN: push to stack
371: LDA 3, -887(5)	* Subtract the stack limit from SP - store in ACC3
372: LDC 2, 55(0)	* Load diagnostic char into ACC2
373: JLE 3, 1044(4)	* stack failure
374: ST 0, 0(5)	* save ACC0 into the current SP location
375: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: variable (rvalue) access
376: LD 0, 883(4)	* Load the global var into ACC0
* END: variable (rvalue) access
377: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
378: LD 1, 0(5)	* Load stored result into ACC1
379: SUB 0, 1, 0	* Subtract ACC0 from ACC1 placing result in ACC0
* BEGIN: push to stack
380: LDA 3, -887(5)	* Subtract the stack limit from SP - store in ACC3
381: LDC 2, 50(0)	* Load diagnostic char into ACC2
382: JLE 3, 1044(4)	* stack failure
383: ST 0, 0(5)	* save ACC0 into the current SP location
384: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: assignment
385: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
386: LD 0, 0(5)	* Load stored result into ACC0
387: ST 0, 882(4)	* Store ACC0 into global offset
* END: assignment
* BEGIN: variable (rvalue) access
388: LD 0, 882(4)	* Load the global var into ACC0
* END: variable (rvalue) access
* BEGIN: push to stack
389: LDA 3, -887(5)	* Subtract the stack limit from SP - store in ACC3
390: LDC 2, 51(0)	* Load diagnostic char into ACC2
391: JLE 3, 1044(4)	* stack failure
392: ST 0, 0(5)	* save ACC0 into the current SP location
393: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
394: LDC 0, 0(0)	* Load a constant into ACC0
* END: load an int constant
395: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
396: LD 1, 0(5)	* Load stored result into ACC1
* BEGIN: <
397: SUB 0, 1, 0	* for <, subtract right from left
398: JLT 0, 2(7)	* Jump to Load 1 if ACC0 < 0
399: LDC 0, 0(0)	* Load 0 into ACC0
400: LDA 7, 1(7)	* Jump over Load 1
401: LDC 0, 1(0)	* Load 1 into ACC0
* END: <
402: JEQ 0, 13(7)	* Jump over the then stmts if false
* BEGIN: procedure call
403: LDA 0, 9(7)	* Get return address into ACC0
404: LDA 3, -890(5)	* Subtract the stack limit from SP - store in ACC3
405: LDC 2, 97(0)	* Load diagnostic char into ACC2
406: JLE 3, 1044(4)	* stack failure
407: ST 0, 0(5)	* Store return address (in ACC0) to SP/FP
* return value sits at SP-1/FP-1
408: ST 5, -2(5)	* Store SP to SP-2/FP-2
409: ST 6, -3(5)	* Store FP to SP-3/FP-3
410: LDA 5, -4(5)	* decrement SP by 4 (i.e., 4 pushes)
411: LDA 6, 4(5)	* Set FP to be the "pre-push of AR" SP
* SP already points to end of the AR
412: LDA 7, 877(4)	* Jump to the start of the proc
413: LD 5, -2(6)	* Restore SP from FP-2
414: LD 6, -3(6)	* Restore FP from FP-3
* END: procedure call
415: LDA 7, 159(7)	* Jump over the rest of the if
* BEGIN: variable (rvalue) access
416: LD 0, 882(4)	* Load the global var into ACC0
* END: variable (rvalue) access
* BEGIN: push to stack
417: LDA 3, -887(5)	* Subtract the stack limit from SP - store in ACC3
418: LDC 2, 51(0)	* Load diagnostic char into ACC2
419: JLE 3, 1044(4)	* stack failure
420: ST 0, 0(5)	* save ACC0 into the current SP location
421: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
422: LDC 0, 0(0)	* Load a constant into ACC0
* END: load an int constant
423: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
424: LD 1, 0(5)	* Load stored result into ACC1
425: SUB 0, 1, 0	* for =, subtract right from left
426: JEQ 0, 2(7)	* Jump to Load 1 if ACC0 == 0
427: LDC 0, 0(0)	* Load 0 into ACC0
428: LDA 7, 1(7)	* Jump over Load 1
429: LDC 0, 1(0)	* Load 1 into ACC0
430: JEQ 0, 12(7)	* Jump over the then stmts if false
* BEGIN: load a string's location into ACC0
431: LDC 0, 729(0)	* Load a string's location into ACC0
* END: load a string's location into ACC0
* BEGIN: write(s)
432: LDA 1, 1(0)	* Increment the address stored in ACC0 to get the string's char location (put in ACC1)
433: LD 0, 0(0)	* Load the string size into ACC0
434: JEQ 0, 5(7)	* Jump to end when run out of string
435: LDA 0, -1(0)	* subtract one from string size
436: LD 2, 0(1)	* Load next char from string into ACC2
437: LDA 1, 1(1)	* increment pointer into string
438: OUTC 2, 0, 0	* Write out character in ACC2
439: LDA 7, -6(7)	* Go back to start of loop
440: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
* BEGIN: break
441: LDA 7, 576(4)	* skip to the end of the loop
* END: break
442: LDA 7, 132(7)	* Jump over the rest of the if
* BEGIN: variable (rvalue) access
443: LD 0, 882(4)	* Load the global var into ACC0
* END: variable (rvalue) access
* BEGIN: push to stack
444: LDA 3, -887(5)	* Subtract the stack limit from SP - store in ACC3
445: LDC 2, 51(0)	* Load diagnostic char into ACC2
446: JLE 3, 1044(4)	* stack failure
447: ST 0, 0(5)	* save ACC0 into the current SP location
448: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
449: LDC 0, 1(0)	* Load a constant into ACC0
* END: load an int constant
450: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
451: LD 1, 0(5)	* Load stored result into ACC1
452: SUB 0, 1, 0	* for =, subtract right from left
453: JEQ 0, 2(7)	* Jump to Load 1 if ACC0 == 0
454: LDC 0, 0(0)	* Load 0 into ACC0
455: LDA 7, 1(7)	* Jump over Load 1
456: LDC 0, 1(0)	* Load 1 into ACC0
457: JEQ 0, 22(7)	* Jump over the then stmts if false
* BEGIN: load a string's location into ACC0
458: LDC 0, 736(0)	* Load a string's location into ACC0
* END: load a string's location into ACC0
* BEGIN: write(s)
459: LDA 1, 1(0)	* Increment the address stored in ACC0 to get the string's char location (put in ACC1)
460: LD 0, 0(0)	* Load the string size into ACC0
461: JEQ 0, 5(7)	* Jump to end when run out of string
462: LDA 0, -1(0)	* subtract one from string size
463: LD 2, 0(1)	* Load next char from string into ACC2
464: LDA 1, 1(1)	* increment pointer into string
465: OUTC 2, 0, 0	* Write out character in ACC2
466: LDA 7, -6(7)	* Go back to start of loop
467: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
* BEGIN: load a string's location into ACC0
468: LDC 0, 785(0)	* Load a string's location into ACC0
* END: load a string's location into ACC0
* BEGIN: write(s)
469: LDA 1, 1(0)	* Increment the address stored in ACC0 to get the string's char location (put in ACC1)
470: LD 0, 0(0)	* Load the string size into ACC0
471: JEQ 0, 5(7)	* Jump to end when run out of string
472: LDA 0, -1(0)	* subtract one from string size
473: LD 2, 0(1)	* Load next char from string into ACC2
474: LDA 1, 1(1)	* increment pointer into string
475: OUTC 2, 0, 0	* Write out character in ACC2
476: LDA 7, -6(7)	* Go back to start of loop
477: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
* BEGIN: break
478: LDA 7, 576(4)	* skip to the end of the loop
* END: break
479: LDA 7, 95(7)	* Jump over the rest of the if
* BEGIN: load a string's location into ACC0
480: LDC 0, 812(0)	* Load a string's location into ACC0
* END: load a string's location into ACC0
* BEGIN: write(s)
481: LDA 1, 1(0)	* Increment the address stored in ACC0 to get the string's char location (put in ACC1)
482: LD 0, 0(0)	* Load the string size into ACC0
483: JEQ 0, 5(7)	* Jump to end when run out of string
484: LDA 0, -1(0)	* subtract one from string size
485: LD 2, 0(1)	* Load next char from string into ACC2
486: LDA 1, 1(1)	* increment pointer into string
487: OUTC 2, 0, 0	* Write out character in ACC2
488: LDA 7, -6(7)	* Go back to start of loop
* END: write(s)
* BEGIN: variable (rvalue) access
489: LD 0, 882(4)	* Load the global var into ACC0
* END: variable (rvalue) access
* BEGIN: write(s)
490: OUT 0, 0, 0	* write out the int value in ACC0
* END: write(s)
* BEGIN: load a string's location into ACC0
491: LDC 0, 823(0)	* Load a string's location into ACC0
* END: load a string's location into ACC0
* BEGIN: write(s)
492: LDA 1, 1(0)	* Increment the address stored in ACC0 to get the string's char location (put in ACC1)
493: LD 0, 0(0)	* Load the string size into ACC0
494: JEQ 0, 5(7)	* Jump to end when run out of string
495: LDA 0, -1(0)	* subtract one from string size
496: LD 2, 0(1)	* Load next char from string into ACC2
497: LDA 1, 1(1)	* increment pointer into string
498: OUTC 2, 0, 0	* Write out character in ACC2
499: LDA 7, -6(7)	* Go back to start of loop
500: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
* BEGIN: load a string's location into ACC0
501: LDC 0, 842(0)	* Load a string's location into ACC0
* END: load a string's location into ACC0
* BEGIN: write(s)
502: LDA 1, 1(0)	* Increment the address stored in ACC0 to get the string's char location (put in ACC1)
503: LD 0, 0(0)	* Load the string size into ACC0
504: JEQ 0, 5(7)	* Jump to end when run out of string
505: LDA 0, -1(0)	* subtract one from string size
506: LD 2, 0(1)	* Load next char from string into ACC2
507: LDA 1, 1(1)	* increment pointer into string
508: OUTC 2, 0, 0	* Write out character in ACC2
509: LDA 7, -6(7)	* Go back to start of loop
* END: write(s)
* BEGIN: procedure call
510: LDA 0, 23(7)	* Get return address into ACC0
511: LDA 3, -890(5)	* Subtract the stack limit from SP - store in ACC3
512: LDC 2, 97(0)	* Load diagnostic char into ACC2
513: JLE 3, 1044(4)	* stack failure
514: ST 0, 0(5)	* Store return address (in ACC0) to SP/FP
* return value sits at SP-1/FP-1
515: ST 5, -2(5)	* Store SP to SP-2/FP-2
516: ST 6, -3(5)	* Store FP to SP-3/FP-3
517: LDA 5, -4(5)	* decrement SP by 4 (i.e., 4 pushes)
518: LDA 3, -887(5)	* Subtract the stack limit from SP - store in ACC3
519: LDC 2, 99(0)	* Load diagnostic char into ACC2
520: JLE 3, 1044(4)	* stack failure
521: LDA 5, -1(5)	* decrement SP by local var's size (i.e., push)
* BEGIN: variable (rvalue) access
522: LD 0, 882(4)	* Load the global var into ACC0
* END: variable (rvalue) access
523: LDA 3, -887(5)	* Subtract the stack limit from SP - store in ACC3
524: LDC 2, 98(0)	* Load diagnostic char into ACC2
525: JLE 3, 1044(4)	* stack failure
526: ST 0, 0(5)	* Store param in slot
527: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
528: LDA 3, -887(5)	* Subtract the stack limit from SP - store in ACC3
529: LDC 2, 99(0)	* Load diagnostic char into ACC2
530: JLE 3, 1044(4)	* stack failure
531: LDA 5, -1(5)	* decrement SP by local var's size (i.e., push)
532: LDA 6, 7(5)	* Set FP to be the "pre-push of AR" SP
* SP already points to end of the AR
533: LDA 7, 901(4)	* Jump to the start of the proc
534: LD 0, -4(6)	* Load the return value into ACC0
535: LD 5, -2(6)	* Restore SP from FP-2
536: LD 6, -3(6)	* Restore FP from FP-3
* END: procedure call
* BEGIN: push to stack
537: LDA 3, -887(5)	* Subtract the stack limit from SP - store in ACC3
538: LDC 2, 50(0)	* Load diagnostic char into ACC2
539: JLE 3, 1044(4)	* stack failure
540: ST 0, 0(5)	* save ACC0 into the current SP location
541: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: assignment
542: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
543: LD 0, 0(5)	* Load stored result into ACC0
544: ST 0, 883(4)	* Store ACC0 into global offset
* END: assignment
* BEGIN: variable (rvalue) access
545: LD 0, 883(4)	* Load the global var into ACC0
* END: variable (rvalue) access
* BEGIN: write(s)
546: OUT 0, 0, 0	* write out the int value in ACC0
* END: write(s)
* BEGIN: load a string's location into ACC0
547: LDC 0, 866(0)	* Load a string's location into ACC0
* END: load a string's location into ACC0
* BEGIN: write(s)
548: LDA 1, 1(0)	* Increment the address stored in ACC0 to get the string's char location (put in ACC1)
549: LD 0, 0(0)	* Load the string size into ACC0
550: JEQ 0, 5(7)	* Jump to end when run out of string
551: LDA 0, -1(0)	* subtract one from string size
552: LD 2, 0(1)	* Load next char from string into ACC2
553: LDA 1, 1(1)	* increment pointer into string
554: OUTC 2, 0, 0	* Write out character in ACC2
555: LDA 7, -6(7)	* Go back to start of loop
556: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
* BEGIN: variable (rvalue) access
557: LD 0, 882(4)	* Load the global var into ACC0
* END: variable (rvalue) access
* BEGIN: push to stack
558: LDA 3, -887(5)	* Subtract the stack limit from SP - store in ACC3
559: LDC 2, 55(0)	* Load diagnostic char into ACC2
560: JLE 3, 1044(4)	* stack failure
561: ST 0, 0(5)	* save ACC0 into the current SP location
562: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: variable (rvalue) access
563: LD 0, 883(4)	* Load the global var into ACC0
* END: variable (rvalue) access
564: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
565: LD 1, 0(5)	* Load stored result into ACC1
566: SUB 0, 1, 0	* Subtract ACC0 from ACC1 placing result in ACC0
* BEGIN: push to stack
567: LDA 3, -887(5)	* Subtract the stack limit from SP - store in ACC3
568: LDC 2, 50(0)	* Load diagnostic char into ACC2
569: JLE 3, 1044(4)	* stack failure
570: ST 0, 0(5)	* save ACC0 into the current SP location
571: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: assignment
572: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
573: LD 0, 0(5)	* Load stored result into ACC0
574: ST 0, 882(4)	* Store ACC0 into global offset
* END: assignment
575: LDA 7, -454(7)	* Jump back to start of loop
576: LDA 5, 0(5)	* NOOP to mark end of loop
* END: Do loop
* BEGIN: load a string's location into ACC0
577: LDC 0, 875(0)	* Load a string's location into ACC0
* END: load a string's location into ACC0
* BEGIN: write(s)
578: LDA 1, 1(0)	* Increment the address stored in ACC0 to get the string's char location (put in ACC1)
579: LD 0, 0(0)	* Load the string size into ACC0
580: JEQ 0, 5(7)	* Jump to end when run out of string
581: LDA 0, -1(0)	* subtract one from string size
582: LD 2, 0(1)	* Load next char from string into ACC2
583: LDA 1, 1(1)	* increment pointer into string
584: OUTC 2, 0, 0	* Write out character in ACC2
585: LDA 7, -6(7)	* Go back to start of loop
586: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
587: HALT 0, 0, 0	* End of Program
* BEGIN: procedure code
588: LDA 0, 0(0)	* NOOP to mark beginning of proc
* BEGIN: for loop
* BEGIN: load an int constant
589: LDC 0, 1(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: save initial value to loop var
* BEGIN: push to stack
590: LDA 3, -887(5)	* Subtract the stack limit from SP - store in ACC3
591: LDC 2, 52(0)	* Load diagnostic char into ACC2
592: JLE 3, 1044(4)	* stack failure
593: ST 0, 0(5)	* save ACC0 into the current SP location
594: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
595: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
596: LD 0, 0(5)	* Load stored result into ACC0
597: ST 0, -8(6)	* Store ACC0 into local offset (relative to FP)
* END: save initial value to loop var
* BEGIN: load an int constant
598: LDC 0, 3(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: save max value to max loop var
* BEGIN: push to stack
599: LDA 3, -887(5)	* Subtract the stack limit from SP - store in ACC3
600: LDC 2, 53(0)	* Load diagnostic char into ACC2
601: JLE 3, 1044(4)	* stack failure
602: ST 0, 0(5)	* save ACC0 into the current SP location
603: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
604: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
605: LD 0, 0(5)	* Load stored result into ACC0
606: ST 0, -9(6)	* Store ACC0 into local offset (relative to FP)
* END: save max value to max loop var
607: LDA 5, 0(5)	* NOOP to mark top of loop
608: LD 0, -8(6)	* Load the local var into ACC0
609: LD 1, -9(6)	* Load the local var into ACC0
610: SUB 1, 1, 0	* Subtract the loop var from the max
611: JLT 1, 873(4)	* go to the loop exit
* BEGIN: body of for loop
* BEGIN: load a string's location into ACC0
612: LDC 0, 45(0)	* Load a string's location into ACC0
* END: load a string's location into ACC0
* BEGIN: write(s)
613: LDA 1, 1(0)	* Increment the address stored in ACC0 to get the string's char location (put in ACC1)
614: LD 0, 0(0)	* Load the string size into ACC0
615: JEQ 0, 5(7)	* Jump to end when run out of string
616: LDA 0, -1(0)	* subtract one from string size
617: LD 2, 0(1)	* Load next char from string into ACC2
618: LDA 1, 1(1)	* increment pointer into string
619: OUTC 2, 0, 0	* Write out character in ACC2
620: LDA 7, -6(7)	* Go back to start of loop
* END: write(s)
621: IN 0, 0, 0	* Read into ACC0
* BEGIN: push to stack
622: LDA 3, -887(5)	* Subtract the stack limit from SP - store in ACC3
623: LDC 2, 50(0)	* Load diagnostic char into ACC2
624: JLE 3, 1044(4)	* stack failure
625: ST 0, 0(5)	* save ACC0 into the current SP location
626: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: assignment
627: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
628: LD 0, 0(5)	* Load stored result into ACC0
629: ST 0, -4(6)	* Store ACC0 into local offset (relative to FP)
* END: assignment
* BEGIN: variable (rvalue) access
630: LD 0, -4(6)	* Load the local var into ACC0
* END: variable (rvalue) access
* BEGIN: push to stack
631: LDA 3, -887(5)	* Subtract the stack limit from SP - store in ACC3
632: LDC 2, 51(0)	* Load diagnostic char into ACC2
633: JLE 3, 1044(4)	* stack failure
634: ST 0, 0(5)	* save ACC0 into the current SP location
635: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
636: LDC 0, 15(0)	* Load a constant into ACC0
* END: load an int constant
637: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
638: LD 1, 0(5)	* Load stored result into ACC1
* BEGIN: <
639: SUB 0, 1, 0	* for <, subtract right from left
640: JLT 0, 2(7)	* Jump to Load 1 if ACC0 < 0
641: LDC 0, 0(0)	* Load 0 into ACC0
642: LDA 7, 1(7)	* Jump over Load 1
643: LDC 0, 1(0)	* Load 1 into ACC0
* END: <
644: JEQ 0, 12(7)	* Jump over the then stmts if false
* BEGIN: variable (rvalue) access
645: LD 0, -4(6)	* Load the local var into ACC0
* END: variable (rvalue) access
* BEGIN: write(s)
646: OUT 0, 0, 0	* write out the int value in ACC0
* END: write(s)
* BEGIN: load a string's location into ACC0
647: LDC 0, 70(0)	* Load a string's location into ACC0
* END: load a string's location into ACC0
* BEGIN: write(s)
648: LDA 1, 1(0)	* Increment the address stored in ACC0 to get the string's char location (put in ACC1)
649: LD 0, 0(0)	* Load the string size into ACC0
650: JEQ 0, 5(7)	* Jump to end when run out of string
651: LDA 0, -1(0)	* subtract one from string size
652: LD 2, 0(1)	* Load next char from string into ACC2
653: LDA 1, 1(1)	* increment pointer into string
654: OUTC 2, 0, 0	* Write out character in ACC2
655: LDA 7, -6(7)	* Go back to start of loop
* END: write(s)
656: LDA 7, 205(7)	* Jump over the rest of the if
* BEGIN: variable (rvalue) access
657: LD 0, -4(6)	* Load the local var into ACC0
* END: variable (rvalue) access
* BEGIN: push to stack
658: LDA 3, -887(5)	* Subtract the stack limit from SP - store in ACC3
659: LDC 2, 51(0)	* Load diagnostic char into ACC2
660: JLE 3, 1044(4)	* stack failure
661: ST 0, 0(5)	* save ACC0 into the current SP location
662: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
663: LDC 0, 100(0)	* Load a constant into ACC0
* END: load an int constant
664: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
665: LD 1, 0(5)	* Load stored result into ACC1
* BEGIN: <
666: SUB 0, 1, 0	* for <, subtract right from left
667: JLT 0, 2(7)	* Jump to Load 1 if ACC0 < 0
668: LDC 0, 0(0)	* Load 0 into ACC0
669: LDA 7, 1(7)	* Jump over Load 1
670: LDC 0, 1(0)	* Load 1 into ACC0
* END: <
671: JEQ 0, 2(7)	* Jump over the then stmts if false
* BEGIN: return
672: LDA 7, 875(4)	* Jump to the end of the proc
* END: return
673: LDA 7, 188(7)	* Jump over the rest of the if
* BEGIN: for loop
* BEGIN: load an int constant
674: LDC 0, 1(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: save initial value to loop var
* BEGIN: push to stack
675: LDA 3, -887(5)	* Subtract the stack limit from SP - store in ACC3
676: LDC 2, 52(0)	* Load diagnostic char into ACC2
677: JLE 3, 1044(4)	* stack failure
678: ST 0, 0(5)	* save ACC0 into the current SP location
679: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
680: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
681: LD 0, 0(5)	* Load stored result into ACC0
682: ST 0, -6(6)	* Store ACC0 into local offset (relative to FP)
* END: save initial value to loop var
* BEGIN: load an int constant
683: LDC 0, 3(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: save max value to max loop var
* BEGIN: push to stack
684: LDA 3, -887(5)	* Subtract the stack limit from SP - store in ACC3
685: LDC 2, 53(0)	* Load diagnostic char into ACC2
686: JLE 3, 1044(4)	* stack failure
687: ST 0, 0(5)	* save ACC0 into the current SP location
688: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
689: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
690: LD 0, 0(5)	* Load stored result into ACC0
691: ST 0, -7(6)	* Store ACC0 into local offset (relative to FP)
* END: save max value to max loop var
692: LDA 5, 0(5)	* NOOP to mark top of loop
693: LD 0, -6(6)	* Load the local var into ACC0
694: LD 1, -7(6)	* Load the local var into ACC0
695: SUB 1, 1, 0	* Subtract the loop var from the max
696: JLT 1, 847(4)	* go to the loop exit
* BEGIN: body of for loop
* BEGIN: variable (rvalue) access
697: LD 0, -4(6)	* Load the local var into ACC0
* END: variable (rvalue) access
* BEGIN: write(s)
698: OUT 0, 0, 0	* write out the int value in ACC0
* END: write(s)
* BEGIN: load a string's location into ACC0
699: LDC 0, 113(0)	* Load a string's location into ACC0
* END: load a string's location into ACC0
* BEGIN: write(s)
700: LDA 1, 1(0)	* Increment the address stored in ACC0 to get the string's char location (put in ACC1)
701: LD 0, 0(0)	* Load the string size into ACC0
702: JEQ 0, 5(7)	* Jump to end when run out of string
703: LDA 0, -1(0)	* subtract one from string size
704: LD 2, 0(1)	* Load next char from string into ACC2
705: LDA 1, 1(1)	* increment pointer into string
706: OUTC 2, 0, 0	* Write out character in ACC2
707: LDA 7, -6(7)	* Go back to start of loop
708: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
* BEGIN: load a string's location into ACC0
709: LDC 0, 133(0)	* Load a string's location into ACC0
* END: load a string's location into ACC0
* BEGIN: write(s)
710: LDA 1, 1(0)	* Increment the address stored in ACC0 to get the string's char location (put in ACC1)
711: LD 0, 0(0)	* Load the string size into ACC0
712: JEQ 0, 5(7)	* Jump to end when run out of string
713: LDA 0, -1(0)	* subtract one from string size
714: LD 2, 0(1)	* Load next char from string into ACC2
715: LDA 1, 1(1)	* increment pointer into string
716: OUTC 2, 0, 0	* Write out character in ACC2
717: LDA 7, -6(7)	* Go back to start of loop
* END: write(s)
718: IN 0, 0, 0	* Read into ACC0
* BEGIN: push to stack
719: LDA 3, -887(5)	* Subtract the stack limit from SP - store in ACC3
720: LDC 2, 50(0)	* Load diagnostic char into ACC2
721: JLE 3, 1044(4)	* stack failure
722: ST 0, 0(5)	* save ACC0 into the current SP location
723: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: assignment
724: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
725: LD 0, 0(5)	* Load stored result into ACC0
726: ST 0, -5(6)	* Store ACC0 into local offset (relative to FP)
* END: assignment
* BEGIN: variable (rvalue) access
727: LD 0, -5(6)	* Load the local var into ACC0
* END: variable (rvalue) access
* BEGIN: push to stack
728: LDA 3, -887(5)	* Subtract the stack limit from SP - store in ACC3
729: LDC 2, 51(0)	* Load diagnostic char into ACC2
730: JLE 3, 1044(4)	* stack failure
731: ST 0, 0(5)	* save ACC0 into the current SP location
732: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
733: LDC 0, 1(0)	* Load a constant into ACC0
* END: load an int constant
734: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
735: LD 1, 0(5)	* Load stored result into ACC1
736: SUB 0, 1, 0	* for =, subtract right from left
737: JEQ 0, 2(7)	* Jump to Load 1 if ACC0 == 0
738: LDC 0, 0(0)	* Load 0 into ACC0
739: LDA 7, 1(7)	* Jump over Load 1
740: LDC 0, 1(0)	* Load 1 into ACC0
741: JEQ 0, 27(7)	* if left is false jump over the rest of the and
* BEGIN: push to stack
742: LDA 3, -887(5)	* Subtract the stack limit from SP - store in ACC3
743: LDC 2, 49(0)	* Load diagnostic char into ACC2
744: JLE 3, 1044(4)	* stack failure
745: ST 0, 0(5)	* save ACC0 into the current SP location
746: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: variable (rvalue) access
747: LD 0, -4(6)	* Load the local var into ACC0
* END: variable (rvalue) access
* BEGIN: push to stack
748: LDA 3, -887(5)	* Subtract the stack limit from SP - store in ACC3
749: LDC 2, 51(0)	* Load diagnostic char into ACC2
750: JLE 3, 1044(4)	* stack failure
751: ST 0, 0(5)	* save ACC0 into the current SP location
752: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
753: LDC 0, 200(0)	* Load a constant into ACC0
* END: load an int constant
754: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
755: LD 1, 0(5)	* Load stored result into ACC1
* BEGIN: <=
756: SUB 0, 1, 0	* for <=, subtract right from left
757: JLE 0, 2(7)	* Jump to Load 1 if ACC0 <= 0
758: LDC 0, 0(0)	* Load 0 into ACC0
759: LDA 7, 1(7)	* Jump over Load 1
760: LDC 0, 1(0)	* Load 1 into ACC0
* END: <=
761: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
762: LD 1, 0(5)	* Load stored result into ACC1
763: ADD 0, 1, 0	* for AND, add right and left
764: LDA 0, -2(0)	* Then subtract 2
765: JEQ 0, 2(7)	* Jump to Load 1 if ACC0 == 0
766: LDC 0, 0(0)	* Load 0 into ACC0
767: LDA 7, 1(7)	* Jump over Load 1
768: LDC 0, 1(0)	* Load 1 into ACC0
769: JEQ 0, 12(7)	* Jump over the then stmts if false
* BEGIN: load a string's location into ACC0
770: LDC 0, 197(0)	* Load a string's location into ACC0
* END: load a string's location into ACC0
* BEGIN: write(s)
771: LDA 1, 1(0)	* Increment the address stored in ACC0 to get the string's char location (put in ACC1)
772: LD 0, 0(0)	* Load the string size into ACC0
773: JEQ 0, 5(7)	* Jump to end when run out of string
774: LDA 0, -1(0)	* subtract one from string size
775: LD 2, 0(1)	* Load next char from string into ACC2
776: LDA 1, 1(1)	* increment pointer into string
777: OUTC 2, 0, 0	* Write out character in ACC2
778: LDA 7, -6(7)	* Go back to start of loop
779: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
* BEGIN: return
780: LDA 7, 875(4)	* Jump to the end of the proc
* END: return
781: LDA 7, 54(7)	* Jump over the rest of the if
* BEGIN: variable (rvalue) access
782: LD 0, -5(6)	* Load the local var into ACC0
* END: variable (rvalue) access
* BEGIN: push to stack
783: LDA 3, -887(5)	* Subtract the stack limit from SP - store in ACC3
784: LDC 2, 51(0)	* Load diagnostic char into ACC2
785: JLE 3, 1044(4)	* stack failure
786: ST 0, 0(5)	* save ACC0 into the current SP location
787: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
788: LDC 0, 1(0)	* Load a constant into ACC0
* END: load an int constant
789: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
790: LD 1, 0(5)	* Load stored result into ACC1
791: SUB 0, 1, 0	* for =, subtract right from left
792: JEQ 0, 2(7)	* Jump to Load 1 if ACC0 == 0
793: LDC 0, 0(0)	* Load 0 into ACC0
794: LDA 7, 1(7)	* Jump over Load 1
795: LDC 0, 1(0)	* Load 1 into ACC0
796: JEQ 0, 12(7)	* Jump over the then stmts if false
* BEGIN: load a string's location into ACC0
797: LDC 0, 200(0)	* Load a string's location into ACC0
* END: load a string's location into ACC0
* BEGIN: write(s)
798: LDA 1, 1(0)	* Increment the address stored in ACC0 to get the string's char location (put in ACC1)
799: LD 0, 0(0)	* Load the string size into ACC0
800: JEQ 0, 5(7)	* Jump to end when run out of string
801: LDA 0, -1(0)	* subtract one from string size
802: LD 2, 0(1)	* Load next char from string into ACC2
803: LDA 1, 1(1)	* increment pointer into string
804: OUTC 2, 0, 0	* Write out character in ACC2
805: LDA 7, -6(7)	* Go back to start of loop
806: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
* BEGIN: exit
807: HALT 0, 0, 0	* exit
* END: exit
808: LDA 7, 27(7)	* Jump over the rest of the if
* BEGIN: variable (rvalue) access
809: LD 0, -5(6)	* Load the local var into ACC0
* END: variable (rvalue) access
* BEGIN: push to stack
810: LDA 3, -887(5)	* Subtract the stack limit from SP - store in ACC3
811: LDC 2, 51(0)	* Load diagnostic char into ACC2
812: JLE 3, 1044(4)	* stack failure
813: ST 0, 0(5)	* save ACC0 into the current SP location
814: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
815: LDC 0, 0(0)	* Load a constant into ACC0
* END: load an int constant
816: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
817: LD 1, 0(5)	* Load stored result into ACC1
818: SUB 0, 1, 0	* for =, subtract right from left
819: JEQ 0, 2(7)	* Jump to Load 1 if ACC0 == 0
820: LDC 0, 0(0)	* Load 0 into ACC0
821: LDA 7, 1(7)	* Jump over Load 1
822: LDC 0, 1(0)	* Load 1 into ACC0
823: JEQ 0, 2(7)	* Jump over the then stmts if false
* BEGIN: break
824: LDA 7, 847(4)	* skip to the end of the loop
* END: break
825: LDA 7, 10(7)	* Jump over the rest of the if
* BEGIN: load a string's location into ACC0
826: LDC 0, 214(0)	* Load a string's location into ACC0
* END: load a string's location into ACC0
* BEGIN: write(s)
827: LDA 1, 1(0)	* Increment the address stored in ACC0 to get the string's char location (put in ACC1)
828: LD 0, 0(0)	* Load the string size into ACC0
829: JEQ 0, 5(7)	* Jump to end when run out of string
830: LDA 0, -1(0)	* subtract one from string size
831: LD 2, 0(1)	* Load next char from string into ACC2
832: LDA 1, 1(1)	* increment pointer into string
833: OUTC 2, 0, 0	* Write out character in ACC2
834: LDA 7, -6(7)	* Go back to start of loop
835: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
* END: body of for loop
836: LD 0, -6(6)	* Load the local var into ACC0
837: LDA 0, 1(0)	* increment the loop var
* BEGIN: push to stack
838: LDA 3, -887(5)	* Subtract the stack limit from SP - store in ACC3
839: LDC 2, 54(0)	* Load diagnostic char into ACC2
840: JLE 3, 1044(4)	* stack failure
841: ST 0, 0(5)	* save ACC0 into the current SP location
842: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
843: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
844: LD 0, 0(5)	* Load stored result into ACC0
845: ST 0, -6(6)	* Store ACC0 into local offset (relative to FP)
846: LDA 7, 692(4)	* return to the top of the loop
847: LDA 5, 0(5)	* NOOP to mark end of loop
* END: for loop
* BEGIN: variable (rvalue) access
848: LD 0, -5(6)	* Load the local var into ACC0
* END: variable (rvalue) access
* BEGIN: push to stack
849: LDA 3, -887(5)	* Subtract the stack limit from SP - store in ACC3
850: LDC 2, 51(0)	* Load diagnostic char into ACC2
851: JLE 3, 1044(4)	* stack failure
852: ST 0, 0(5)	* save ACC0 into the current SP location
853: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
854: LDC 0, 1(0)	* Load a constant into ACC0
* END: load an int constant
855: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
856: LD 1, 0(5)	* Load stored result into ACC1
857: SUB 0, 1, 0	* for !=, subtract right from left
858: JEQ 0, 1(7)	* Jump over Load 1 if ACC0 == 0
859: LDC 0, 1(0)	* Load 1 into ACC0
860: JEQ 0, 1(7)	* Jump over the then stmts if false
* BEGIN: exit
861: HALT 0, 0, 0	* exit
* END: exit
* END: body of for loop
862: LD 0, -8(6)	* Load the local var into ACC0
863: LDA 0, 1(0)	* increment the loop var
* BEGIN: push to stack
864: LDA 3, -887(5)	* Subtract the stack limit from SP - store in ACC3
865: LDC 2, 54(0)	* Load diagnostic char into ACC2
866: JLE 3, 1044(4)	* stack failure
867: ST 0, 0(5)	* save ACC0 into the current SP location
868: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
869: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
870: LD 0, 0(5)	* Load stored result into ACC0
871: ST 0, -8(6)	* Store ACC0 into local offset (relative to FP)
872: LDA 7, 607(4)	* return to the top of the loop
873: LDA 5, 0(5)	* NOOP to mark end of loop
* END: for loop
* BEGIN: exit
874: HALT 0, 0, 0	* exit
* END: exit
875: LD 0, 0(6)	* Load the return address from the 1st slot in the AR to ACC0
876: LDA 7, 0(0)	* Return to calling location (stored in ACC0)
* END: procedure code
* BEGIN: procedure code
877: LDA 0, 0(0)	* NOOP to mark beginning of proc
* BEGIN: load a string's location into ACC0
878: LDC 0, 246(0)	* Load a string's location into ACC0
* END: load a string's location into ACC0
* BEGIN: write(s)
879: LDA 1, 1(0)	* Increment the address stored in ACC0 to get the string's char location (put in ACC1)
880: LD 0, 0(0)	* Load the string size into ACC0
881: JEQ 0, 5(7)	* Jump to end when run out of string
882: LDA 0, -1(0)	* subtract one from string size
883: LD 2, 0(1)	* Load next char from string into ACC2
884: LDA 1, 1(1)	* increment pointer into string
885: OUTC 2, 0, 0	* Write out character in ACC2
886: LDA 7, -6(7)	* Go back to start of loop
887: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
* BEGIN: load a string's location into ACC0
888: LDC 0, 301(0)	* Load a string's location into ACC0
* END: load a string's location into ACC0
* BEGIN: write(s)
889: LDA 1, 1(0)	* Increment the address stored in ACC0 to get the string's char location (put in ACC1)
890: LD 0, 0(0)	* Load the string size into ACC0
891: JEQ 0, 5(7)	* Jump to end when run out of string
892: LDA 0, -1(0)	* subtract one from string size
893: LD 2, 0(1)	* Load next char from string into ACC2
894: LDA 1, 1(1)	* increment pointer into string
895: OUTC 2, 0, 0	* Write out character in ACC2
896: LDA 7, -6(7)	* Go back to start of loop
897: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
* BEGIN: exit
898: HALT 0, 0, 0	* exit
* END: exit
899: LD 0, 0(6)	* Load the return address from the 1st slot in the AR to ACC0
900: LDA 7, 0(0)	* Return to calling location (stored in ACC0)
* END: procedure code
* BEGIN: procedure code
901: LDA 0, 0(0)	* NOOP to mark beginning of proc
* BEGIN: variable (rvalue) access
902: LD 0, -5(6)	* Load the local var into ACC0
* END: variable (rvalue) access
* BEGIN: push to stack
903: LDA 3, -887(5)	* Subtract the stack limit from SP - store in ACC3
904: LDC 2, 51(0)	* Load diagnostic char into ACC2
905: JLE 3, 1044(4)	* stack failure
906: ST 0, 0(5)	* save ACC0 into the current SP location
907: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
908: LDC 0, 0(0)	* Load a constant into ACC0
* END: load an int constant
909: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
910: LD 1, 0(5)	* Load stored result into ACC1
* BEGIN: <
911: SUB 0, 1, 0	* for <, subtract right from left
912: JLT 0, 2(7)	* Jump to Load 1 if ACC0 < 0
913: LDC 0, 0(0)	* Load 0 into ACC0
914: LDA 7, 1(7)	* Jump over Load 1
915: LDC 0, 1(0)	* Load 1 into ACC0
* END: <
916: JEQ 0, 13(7)	* Jump over the then stmts if false
* BEGIN: procedure call
917: LDA 0, 9(7)	* Get return address into ACC0
918: LDA 3, -890(5)	* Subtract the stack limit from SP - store in ACC3
919: LDC 2, 97(0)	* Load diagnostic char into ACC2
920: JLE 3, 1044(4)	* stack failure
921: ST 0, 0(5)	* Store return address (in ACC0) to SP/FP
* return value sits at SP-1/FP-1
922: ST 5, -2(5)	* Store SP to SP-2/FP-2
923: ST 6, -3(5)	* Store FP to SP-3/FP-3
924: LDA 5, -4(5)	* decrement SP by 4 (i.e., 4 pushes)
925: LDA 6, 4(5)	* Set FP to be the "pre-push of AR" SP
* SP already points to end of the AR
926: LDA 7, 877(4)	* Jump to the start of the proc
927: LD 5, -2(6)	* Restore SP from FP-2
928: LD 6, -3(6)	* Restore FP from FP-3
* END: procedure call
929: LDA 7, 112(7)	* Jump over the rest of the if
* BEGIN: variable (rvalue) access
930: LD 0, -5(6)	* Load the local var into ACC0
* END: variable (rvalue) access
* BEGIN: push to stack
931: LDA 3, -887(5)	* Subtract the stack limit from SP - store in ACC3
932: LDC 2, 51(0)	* Load diagnostic char into ACC2
933: JLE 3, 1044(4)	* stack failure
934: ST 0, 0(5)	* save ACC0 into the current SP location
935: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
936: LDC 0, 1(0)	* Load a constant into ACC0
* END: load an int constant
937: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
938: LD 1, 0(5)	* Load stored result into ACC1
939: SUB 0, 1, 0	* for =, subtract right from left
940: JEQ 0, 2(7)	* Jump to Load 1 if ACC0 == 0
941: LDC 0, 0(0)	* Load 0 into ACC0
942: LDA 7, 1(7)	* Jump over Load 1
943: LDC 0, 1(0)	* Load 1 into ACC0
944: JEQ 0, 10(7)	* Jump over the then stmts if false
* BEGIN: load an int constant
945: LDC 0, 1(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: push to stack
946: LDA 3, -887(5)	* Subtract the stack limit from SP - store in ACC3
947: LDC 2, 50(0)	* Load diagnostic char into ACC2
948: JLE 3, 1044(4)	* stack failure
949: ST 0, 0(5)	* save ACC0 into the current SP location
950: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: assignment
951: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
952: LD 0, 0(5)	* Load stored result into ACC0
953: ST 0, -4(6)	* Store ACC0 into local offset (relative to FP)
* END: assignment
954: LDA 7, 87(7)	* Jump over the rest of the if
* BEGIN: variable (rvalue) access
955: LD 0, -5(6)	* Load the local var into ACC0
* END: variable (rvalue) access
* BEGIN: push to stack
956: LDA 3, -887(5)	* Subtract the stack limit from SP - store in ACC3
957: LDC 2, 51(0)	* Load diagnostic char into ACC2
958: JLE 3, 1044(4)	* stack failure
959: ST 0, 0(5)	* save ACC0 into the current SP location
960: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
961: LDC 0, 4(0)	* Load a constant into ACC0
* END: load an int constant
962: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
963: LD 1, 0(5)	* Load stored result into ACC1
* BEGIN: <
964: SUB 0, 1, 0	* for <, subtract right from left
965: JLT 0, 2(7)	* Jump to Load 1 if ACC0 < 0
966: LDC 0, 0(0)	* Load 0 into ACC0
967: LDA 7, 1(7)	* Jump over Load 1
968: LDC 0, 1(0)	* Load 1 into ACC0
* END: <
969: JEQ 0, 19(7)	* Jump over the then stmts if false
* BEGIN: variable (rvalue) access
970: LD 0, -5(6)	* Load the local var into ACC0
* END: variable (rvalue) access
* BEGIN: push to stack
971: LDA 3, -887(5)	* Subtract the stack limit from SP - store in ACC3
972: LDC 2, 55(0)	* Load diagnostic char into ACC2
973: JLE 3, 1044(4)	* stack failure
974: ST 0, 0(5)	* save ACC0 into the current SP location
975: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
976: LDC 0, 1(0)	* Load a constant into ACC0
* END: load an int constant
977: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
978: LD 1, 0(5)	* Load stored result into ACC1
979: SUB 0, 1, 0	* Subtract ACC0 from ACC1 placing result in ACC0
* BEGIN: push to stack
980: LDA 3, -887(5)	* Subtract the stack limit from SP - store in ACC3
981: LDC 2, 50(0)	* Load diagnostic char into ACC2
982: JLE 3, 1044(4)	* stack failure
983: ST 0, 0(5)	* save ACC0 into the current SP location
984: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: assignment
985: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
986: LD 0, 0(5)	* Load stored result into ACC0
987: ST 0, -4(6)	* Store ACC0 into local offset (relative to FP)
* END: assignment
988: LDA 7, 53(7)	* Jump over the rest of the if
* BEGIN: variable (rvalue) access
989: LD 0, -5(6)	* Load the local var into ACC0
* END: variable (rvalue) access
* BEGIN: push to stack
990: LDA 3, -887(5)	* Subtract the stack limit from SP - store in ACC3
991: LDC 2, 55(0)	* Load diagnostic char into ACC2
992: JLE 3, 1044(4)	* stack failure
993: ST 0, 0(5)	* save ACC0 into the current SP location
994: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
995: LDC 0, 1(0)	* Load a constant into ACC0
* END: load an int constant
996: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
997: LD 1, 0(5)	* Load stored result into ACC1
998: SUB 0, 1, 0	* Subtract ACC0 from ACC1 placing result in ACC0
* BEGIN: push to stack
999: LDA 3, -887(5)	* Subtract the stack limit from SP - store in ACC3
1000: LDC 2, 55(0)	* Load diagnostic char into ACC2
1001: JLE 3, 1044(4)	* stack failure
1002: ST 0, 0(5)	* save ACC0 into the current SP location
1003: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
1004: LDC 0, 4(0)	* Load a constant into ACC0
* END: load an int constant
1005: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
1006: LD 1, 0(5)	* Load stored result into ACC1
* BEGIN: mod
1007: DIV 2, 1, 0	* Divide left by right & put result in ACC2
1008: MUL 2, 2, 0	* Multiply the right by the divide result & put in ACC2
1009: SUB 0, 1, 2	* Subtract the multiplication result from left & put in ACC
* END: mod
* BEGIN: push to stack
1010: LDA 3, -887(5)	* Subtract the stack limit from SP - store in ACC3
1011: LDC 2, 50(0)	* Load diagnostic char into ACC2
1012: JLE 3, 1044(4)	* stack failure
1013: ST 0, 0(5)	* save ACC0 into the current SP location
1014: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: assignment
1015: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
1016: LD 0, 0(5)	* Load stored result into ACC0
1017: ST 0, -4(6)	* Store ACC0 into local offset (relative to FP)
* END: assignment
* BEGIN: variable (rvalue) access
1018: LD 0, -4(6)	* Load the local var into ACC0
* END: variable (rvalue) access
* BEGIN: push to stack
1019: LDA 3, -887(5)	* Subtract the stack limit from SP - store in ACC3
1020: LDC 2, 51(0)	* Load diagnostic char into ACC2
1021: JLE 3, 1044(4)	* stack failure
1022: ST 0, 0(5)	* save ACC0 into the current SP location
1023: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
1024: LDC 0, 0(0)	* Load a constant into ACC0
* END: load an int constant
1025: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
1026: LD 1, 0(5)	* Load stored result into ACC1
1027: SUB 0, 1, 0	* for =, subtract right from left
1028: JEQ 0, 2(7)	* Jump to Load 1 if ACC0 == 0
1029: LDC 0, 0(0)	* Load 0 into ACC0
1030: LDA 7, 1(7)	* Jump over Load 1
1031: LDC 0, 1(0)	* Load 1 into ACC0
1032: JEQ 0, 9(7)	* Jump over the then stmts if false
* BEGIN: load an int constant
1033: LDC 0, 1(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: push to stack
1034: LDA 3, -887(5)	* Subtract the stack limit from SP - store in ACC3
1035: LDC 2, 50(0)	* Load diagnostic char into ACC2
1036: JLE 3, 1044(4)	* stack failure
1037: ST 0, 0(5)	* save ACC0 into the current SP location
1038: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: assignment
1039: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
1040: LD 0, 0(5)	* Load stored result into ACC0
1041: ST 0, -4(6)	* Store ACC0 into local offset (relative to FP)
* END: assignment
1042: LD 0, 0(6)	* Load the return address from the 1st slot in the AR to ACC0
1043: LDA 7, 0(0)	* Return to calling location (stored in ACC0)
* END: procedure code
* BEGIN: stack limit message handler
1044: LDC 0, 25(0)	* Load the error message into ACC0
1045: LDA 1, 1(0)	* Increment the address stored in ACC0 to get the string's char location (put in ACC1)
1046: LD 0, 0(0)	* Load the string size into ACC0
1047: JEQ 0, 5(7)	* Jump to end when run out of string
1048: LDA 0, -1(0)	* subtract one from string size
1049: LD 3, 0(1)	* Load next char from string into ACC3
1050: LDA 1, 1(1)	* increment pointer into string
1051: OUTC 3, 0, 0	* Write out character in ACC3
1052: LDA 7, -6(7)	* Go back to start of loop
1053: OUTC 2, 0, 0	* Write out diagnostic char in ACC2
1054: OUTNL 0, 0, 0	* dump out the newline
1055: HALT 0, 0, 0	* Halt for stack limit
* END: stack limit message handler
