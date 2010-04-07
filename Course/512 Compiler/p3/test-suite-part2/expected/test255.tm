.DATA 23	* string length
.SDATA "Arrays bounds violation"	* string constant
.DATA 19	* string length
.SDATA "Out of stack space "	* string constant
.DATA 35	* string length
.SDATA "What Fibonacci number to computer? "	* string constant
.DATA 20	* string length
.SDATA "Invalid: 0 < n < 101"	* string constant
.DATA 13	* string length
.SDATA "Fibonacci of "	* string constant
.DATA 4	* string length
.SDATA " is "	* string constant
.DATA 0	* storage location (121) for var f
* BEGIN preamble
0: LDC 4, 0(0)	* initialize ZEROREG to 0
1: LD 5, 0(4)	* initialize SP to end of memory
2: LDA 5, -1(5)	* subtract one to get the true SP
3: LDA 6, 0(5)	* FP and SP start off the same
* END preamble
* BEGIN: load a string's location into ACC0
4: LDC 0, 45(0)	* Load a string's location into ACC0
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
14: LDA 3, -123(5)	* Subtract the stack limit from SP - store in ACC3
15: LDC 2, 50(0)	* Load diagnostic char into ACC2
16: JLE 3, 226(4)	* stack failure
17: ST 0, 0(5)	* save ACC0 into the current SP location
18: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: assignment
19: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
20: LD 0, 0(5)	* Load stored result into ACC0
21: ST 0, 121(4)	* Store ACC0 into global offset
* END: assignment
* BEGIN: variable (rvalue) access
22: LD 0, 121(4)	* Load the global var into ACC0
* END: variable (rvalue) access
* BEGIN: push to stack
23: LDA 3, -123(5)	* Subtract the stack limit from SP - store in ACC3
24: LDC 2, 51(0)	* Load diagnostic char into ACC2
25: JLE 3, 226(4)	* stack failure
26: ST 0, 0(5)	* save ACC0 into the current SP location
27: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
28: LDC 0, 0(0)	* Load a constant into ACC0
* END: load an int constant
29: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
30: LD 1, 0(5)	* Load stored result into ACC1
* BEGIN: <
31: SUB 0, 1, 0	* for <, subtract right from left
32: JLT 0, 2(7)	* Jump to Load 1 if ACC0 < 0
33: LDC 0, 0(0)	* Load 0 into ACC0
34: LDA 7, 1(7)	* Jump over Load 1
35: LDC 0, 1(0)	* Load 1 into ACC0
* END: <
36: JGT 0, 24(7)	* Jump over rest of logical or code
* BEGIN: push to stack
37: LDA 3, -123(5)	* Subtract the stack limit from SP - store in ACC3
38: LDC 2, 57(0)	* Load diagnostic char into ACC2
39: JLE 3, 226(4)	* stack failure
40: ST 0, 0(5)	* save ACC0 into the current SP location
41: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: variable (rvalue) access
42: LD 0, 121(4)	* Load the global var into ACC0
* END: variable (rvalue) access
* BEGIN: push to stack
43: LDA 3, -123(5)	* Subtract the stack limit from SP - store in ACC3
44: LDC 2, 51(0)	* Load diagnostic char into ACC2
45: JLE 3, 226(4)	* stack failure
46: ST 0, 0(5)	* save ACC0 into the current SP location
47: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
48: LDC 0, 100(0)	* Load a constant into ACC0
* END: load an int constant
49: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
50: LD 1, 0(5)	* Load stored result into ACC1
* BEGIN: >
51: SUB 0, 1, 0	* for >, subtract right from left
52: JGT 0, 2(7)	* Jump to Load 1 if ACC0 > 0
53: LDC 0, 0(0)	* Load 0 into ACC0
54: LDA 7, 1(7)	* Jump over Load 1
55: LDC 0, 1(0)	* Load 1 into ACC0
* END: >
56: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
57: LD 1, 0(5)	* Load stored result into ACC1
58: ADD 0, 1, 0	* for OR, add right and left
59: JEQ 0, 1(7)	* Jump over Load 1 if ACC0 == 0
60: LDC 0, 1(0)	* Load 1 into ACC0
61: JEQ 0, 10(7)	* Jump over the then stmts if false
* BEGIN: load a string's location into ACC0
62: LDC 0, 81(0)	* Load a string's location into ACC0
* END: load a string's location into ACC0
* BEGIN: write(s)
63: LDA 1, 1(0)	* Increment the address stored in ACC0 to get the string's char location (put in ACC1)
64: LD 0, 0(0)	* Load the string size into ACC0
65: JEQ 0, 5(7)	* Jump to end when run out of string
66: LDA 0, -1(0)	* subtract one from string size
67: LD 2, 0(1)	* Load next char from string into ACC2
68: LDA 1, 1(1)	* increment pointer into string
69: OUTC 2, 0, 0	* Write out character in ACC2
70: LDA 7, -6(7)	* Go back to start of loop
71: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
* BEGIN: load a string's location into ACC0
72: LDC 0, 102(0)	* Load a string's location into ACC0
* END: load a string's location into ACC0
* BEGIN: write(s)
73: LDA 1, 1(0)	* Increment the address stored in ACC0 to get the string's char location (put in ACC1)
74: LD 0, 0(0)	* Load the string size into ACC0
75: JEQ 0, 5(7)	* Jump to end when run out of string
76: LDA 0, -1(0)	* subtract one from string size
77: LD 2, 0(1)	* Load next char from string into ACC2
78: LDA 1, 1(1)	* increment pointer into string
79: OUTC 2, 0, 0	* Write out character in ACC2
80: LDA 7, -6(7)	* Go back to start of loop
* END: write(s)
* BEGIN: variable (rvalue) access
81: LD 0, 121(4)	* Load the global var into ACC0
* END: variable (rvalue) access
* BEGIN: write(s)
82: OUT 0, 0, 0	* write out the int value in ACC0
* END: write(s)
* BEGIN: load a string's location into ACC0
83: LDC 0, 116(0)	* Load a string's location into ACC0
* END: load a string's location into ACC0
* BEGIN: write(s)
84: LDA 1, 1(0)	* Increment the address stored in ACC0 to get the string's char location (put in ACC1)
85: LD 0, 0(0)	* Load the string size into ACC0
86: JEQ 0, 5(7)	* Jump to end when run out of string
87: LDA 0, -1(0)	* subtract one from string size
88: LD 2, 0(1)	* Load next char from string into ACC2
89: LDA 1, 1(1)	* increment pointer into string
90: OUTC 2, 0, 0	* Write out character in ACC2
91: LDA 7, -6(7)	* Go back to start of loop
* END: write(s)
* BEGIN: procedure call
92: LDA 0, 19(7)	* Get return address into ACC0
93: LDA 3, -126(5)	* Subtract the stack limit from SP - store in ACC3
94: LDC 2, 97(0)	* Load diagnostic char into ACC2
95: JLE 3, 226(4)	* stack failure
96: ST 0, 0(5)	* Store return address (in ACC0) to SP/FP
* return value sits at SP-1/FP-1
97: ST 5, -2(5)	* Store SP to SP-2/FP-2
98: ST 6, -3(5)	* Store FP to SP-3/FP-3
99: LDA 5, -4(5)	* decrement SP by 4 (i.e., 4 pushes)
100: LDA 3, -123(5)	* Subtract the stack limit from SP - store in ACC3
101: LDC 2, 99(0)	* Load diagnostic char into ACC2
102: JLE 3, 226(4)	* stack failure
103: LDA 5, -1(5)	* decrement SP by local var's size (i.e., push)
* BEGIN: variable (rvalue) access
104: LD 0, 121(4)	* Load the global var into ACC0
* END: variable (rvalue) access
105: LDA 3, -123(5)	* Subtract the stack limit from SP - store in ACC3
106: LDC 2, 98(0)	* Load diagnostic char into ACC2
107: JLE 3, 226(4)	* stack failure
108: ST 0, 0(5)	* Store param in slot
109: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
110: LDA 6, 6(5)	* Set FP to be the "pre-push of AR" SP
* SP already points to end of the AR
111: LDA 7, 118(4)	* Jump to the start of the proc
112: LD 0, -4(6)	* Load the return value into ACC0
113: LD 5, -2(6)	* Restore SP from FP-2
114: LD 6, -3(6)	* Restore FP from FP-3
* END: procedure call
* BEGIN: write(s)
115: OUT 0, 0, 0	* write out the int value in ACC0
116: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
117: HALT 0, 0, 0	* End of Program
* BEGIN: procedure code
118: LDA 0, 0(0)	* NOOP to mark beginning of proc
* BEGIN: variable (rvalue) access
119: LD 0, -5(6)	* Load the local var into ACC0
* END: variable (rvalue) access
* BEGIN: push to stack
120: LDA 3, -123(5)	* Subtract the stack limit from SP - store in ACC3
121: LDC 2, 51(0)	* Load diagnostic char into ACC2
122: JLE 3, 226(4)	* stack failure
123: ST 0, 0(5)	* save ACC0 into the current SP location
124: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
125: LDC 0, 2(0)	* Load a constant into ACC0
* END: load an int constant
126: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
127: LD 1, 0(5)	* Load stored result into ACC1
* BEGIN: <
128: SUB 0, 1, 0	* for <, subtract right from left
129: JLT 0, 2(7)	* Jump to Load 1 if ACC0 < 0
130: LDC 0, 0(0)	* Load 0 into ACC0
131: LDA 7, 1(7)	* Jump over Load 1
132: LDC 0, 1(0)	* Load 1 into ACC0
* END: <
133: JEQ 0, 10(7)	* Jump over the then stmts if false
* BEGIN: variable (rvalue) access
134: LD 0, -5(6)	* Load the local var into ACC0
* END: variable (rvalue) access
* BEGIN: push to stack
135: LDA 3, -123(5)	* Subtract the stack limit from SP - store in ACC3
136: LDC 2, 50(0)	* Load diagnostic char into ACC2
137: JLE 3, 226(4)	* stack failure
138: ST 0, 0(5)	* save ACC0 into the current SP location
139: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: assignment
140: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
141: LD 0, 0(5)	* Load stored result into ACC0
142: ST 0, -4(6)	* Store ACC0 into local offset (relative to FP)
* END: assignment
143: LDA 7, 80(7)	* Jump over the rest of the if
* BEGIN: procedure call
144: LDA 0, 28(7)	* Get return address into ACC0
145: LDA 3, -126(5)	* Subtract the stack limit from SP - store in ACC3
146: LDC 2, 97(0)	* Load diagnostic char into ACC2
147: JLE 3, 226(4)	* stack failure
148: ST 0, 0(5)	* Store return address (in ACC0) to SP/FP
* return value sits at SP-1/FP-1
149: ST 5, -2(5)	* Store SP to SP-2/FP-2
150: ST 6, -3(5)	* Store FP to SP-3/FP-3
151: LDA 5, -4(5)	* decrement SP by 4 (i.e., 4 pushes)
152: LDA 3, -123(5)	* Subtract the stack limit from SP - store in ACC3
153: LDC 2, 99(0)	* Load diagnostic char into ACC2
154: JLE 3, 226(4)	* stack failure
155: LDA 5, -1(5)	* decrement SP by local var's size (i.e., push)
* BEGIN: variable (rvalue) access
156: LD 0, -5(6)	* Load the local var into ACC0
* END: variable (rvalue) access
* BEGIN: push to stack
157: LDA 3, -123(5)	* Subtract the stack limit from SP - store in ACC3
158: LDC 2, 55(0)	* Load diagnostic char into ACC2
159: JLE 3, 226(4)	* stack failure
160: ST 0, 0(5)	* save ACC0 into the current SP location
161: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
162: LDC 0, 1(0)	* Load a constant into ACC0
* END: load an int constant
163: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
164: LD 1, 0(5)	* Load stored result into ACC1
165: SUB 0, 1, 0	* Subtract ACC0 from ACC1 placing result in ACC0
166: LDA 3, -123(5)	* Subtract the stack limit from SP - store in ACC3
167: LDC 2, 98(0)	* Load diagnostic char into ACC2
168: JLE 3, 226(4)	* stack failure
169: ST 0, 0(5)	* Store param in slot
170: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
171: LDA 6, 6(5)	* Set FP to be the "pre-push of AR" SP
* SP already points to end of the AR
172: LDA 7, 118(4)	* Jump to the start of the proc
173: LD 0, -4(6)	* Load the return value into ACC0
174: LD 5, -2(6)	* Restore SP from FP-2
175: LD 6, -3(6)	* Restore FP from FP-3
* END: procedure call
* BEGIN: push to stack
176: LDA 3, -123(5)	* Subtract the stack limit from SP - store in ACC3
177: LDC 2, 55(0)	* Load diagnostic char into ACC2
178: JLE 3, 226(4)	* stack failure
179: ST 0, 0(5)	* save ACC0 into the current SP location
180: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: procedure call
181: LDA 0, 28(7)	* Get return address into ACC0
182: LDA 3, -126(5)	* Subtract the stack limit from SP - store in ACC3
183: LDC 2, 97(0)	* Load diagnostic char into ACC2
184: JLE 3, 226(4)	* stack failure
185: ST 0, 0(5)	* Store return address (in ACC0) to SP/FP
* return value sits at SP-1/FP-1
186: ST 5, -2(5)	* Store SP to SP-2/FP-2
187: ST 6, -3(5)	* Store FP to SP-3/FP-3
188: LDA 5, -4(5)	* decrement SP by 4 (i.e., 4 pushes)
189: LDA 3, -123(5)	* Subtract the stack limit from SP - store in ACC3
190: LDC 2, 99(0)	* Load diagnostic char into ACC2
191: JLE 3, 226(4)	* stack failure
192: LDA 5, -1(5)	* decrement SP by local var's size (i.e., push)
* BEGIN: variable (rvalue) access
193: LD 0, -5(6)	* Load the local var into ACC0
* END: variable (rvalue) access
* BEGIN: push to stack
194: LDA 3, -123(5)	* Subtract the stack limit from SP - store in ACC3
195: LDC 2, 55(0)	* Load diagnostic char into ACC2
196: JLE 3, 226(4)	* stack failure
197: ST 0, 0(5)	* save ACC0 into the current SP location
198: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
199: LDC 0, 2(0)	* Load a constant into ACC0
* END: load an int constant
200: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
201: LD 1, 0(5)	* Load stored result into ACC1
202: SUB 0, 1, 0	* Subtract ACC0 from ACC1 placing result in ACC0
203: LDA 3, -123(5)	* Subtract the stack limit from SP - store in ACC3
204: LDC 2, 98(0)	* Load diagnostic char into ACC2
205: JLE 3, 226(4)	* stack failure
206: ST 0, 0(5)	* Store param in slot
207: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
208: LDA 6, 6(5)	* Set FP to be the "pre-push of AR" SP
* SP already points to end of the AR
209: LDA 7, 118(4)	* Jump to the start of the proc
210: LD 0, -4(6)	* Load the return value into ACC0
211: LD 5, -2(6)	* Restore SP from FP-2
212: LD 6, -3(6)	* Restore FP from FP-3
* END: procedure call
213: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
214: LD 1, 0(5)	* Load stored result into ACC1
215: ADD 0, 0, 1	* Add ACC0 & ACC1 placing result in ACC0
* BEGIN: push to stack
216: LDA 3, -123(5)	* Subtract the stack limit from SP - store in ACC3
217: LDC 2, 50(0)	* Load diagnostic char into ACC2
218: JLE 3, 226(4)	* stack failure
219: ST 0, 0(5)	* save ACC0 into the current SP location
220: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: assignment
221: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
222: LD 0, 0(5)	* Load stored result into ACC0
223: ST 0, -4(6)	* Store ACC0 into local offset (relative to FP)
* END: assignment
224: LD 0, 0(6)	* Load the return address from the 1st slot in the AR to ACC0
225: LDA 7, 0(0)	* Return to calling location (stored in ACC0)
* END: procedure code
* BEGIN: stack limit message handler
226: LDC 0, 25(0)	* Load the error message into ACC0
227: LDA 1, 1(0)	* Increment the address stored in ACC0 to get the string's char location (put in ACC1)
228: LD 0, 0(0)	* Load the string size into ACC0
229: JEQ 0, 5(7)	* Jump to end when run out of string
230: LDA 0, -1(0)	* subtract one from string size
231: LD 3, 0(1)	* Load next char from string into ACC3
232: LDA 1, 1(1)	* increment pointer into string
233: OUTC 3, 0, 0	* Write out character in ACC3
234: LDA 7, -6(7)	* Go back to start of loop
235: OUTC 2, 0, 0	* Write out diagnostic char in ACC2
236: OUTNL 0, 0, 0	* dump out the newline
237: HALT 0, 0, 0	* Halt for stack limit
* END: stack limit message handler
