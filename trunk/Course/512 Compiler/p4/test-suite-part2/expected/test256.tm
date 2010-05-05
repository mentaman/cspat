.DATA 23	* string length
.SDATA "Arrays bounds violation"	* string constant
.DATA 19	* string length
.SDATA "Out of stack space "	* string constant
.DATA 53	* string length
.SDATA "What number to you want to compute the factorial of? "	* string constant
.DATA 20	* string length
.SDATA "Invalid: 0 < n < 101"	* string constant
.DATA 13	* string length
.SDATA "Factorial of "	* string constant
.DATA 4	* string length
.SDATA " is "	* string constant
.DATA 0	* storage location (139) for var f
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
14: LDA 3, -141(5)	* Subtract the stack limit from SP - store in ACC3
15: LDC 2, 50(0)	* Load diagnostic char into ACC2
16: JLE 3, 195(4)	* stack failure
17: ST 0, 0(5)	* save ACC0 into the current SP location
18: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: assignment
19: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
20: LD 0, 0(5)	* Load stored result into ACC0
21: ST 0, 139(4)	* Store ACC0 into global offset
* END: assignment
* BEGIN: variable (rvalue) access
22: LD 0, 139(4)	* Load the global var into ACC0
* END: variable (rvalue) access
* BEGIN: push to stack
23: LDA 3, -141(5)	* Subtract the stack limit from SP - store in ACC3
24: LDC 2, 51(0)	* Load diagnostic char into ACC2
25: JLE 3, 195(4)	* stack failure
26: ST 0, 0(5)	* save ACC0 into the current SP location
27: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
28: LDC 0, 1(0)	* Load a constant into ACC0
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
37: LDA 3, -141(5)	* Subtract the stack limit from SP - store in ACC3
38: LDC 2, 57(0)	* Load diagnostic char into ACC2
39: JLE 3, 195(4)	* stack failure
40: ST 0, 0(5)	* save ACC0 into the current SP location
41: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: variable (rvalue) access
42: LD 0, 139(4)	* Load the global var into ACC0
* END: variable (rvalue) access
* BEGIN: push to stack
43: LDA 3, -141(5)	* Subtract the stack limit from SP - store in ACC3
44: LDC 2, 51(0)	* Load diagnostic char into ACC2
45: JLE 3, 195(4)	* stack failure
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
62: LDC 0, 99(0)	* Load a string's location into ACC0
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
72: LDC 0, 120(0)	* Load a string's location into ACC0
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
81: LD 0, 139(4)	* Load the global var into ACC0
* END: variable (rvalue) access
* BEGIN: write(s)
82: OUT 0, 0, 0	* write out the int value in ACC0
* END: write(s)
* BEGIN: load a string's location into ACC0
83: LDC 0, 134(0)	* Load a string's location into ACC0
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
93: LDA 3, -144(5)	* Subtract the stack limit from SP - store in ACC3
94: LDC 2, 97(0)	* Load diagnostic char into ACC2
95: JLE 3, 195(4)	* stack failure
96: ST 0, 0(5)	* Store return address (in ACC0) to SP/FP
* return value sits at SP-1/FP-1
97: ST 5, -2(5)	* Store SP to SP-2/FP-2
98: ST 6, -3(5)	* Store FP to SP-3/FP-3
99: LDA 5, -4(5)	* decrement SP by 4 (i.e., 4 pushes)
100: LDA 3, -141(5)	* Subtract the stack limit from SP - store in ACC3
101: LDC 2, 99(0)	* Load diagnostic char into ACC2
102: JLE 3, 195(4)	* stack failure
103: LDA 5, -1(5)	* decrement SP by local var's size (i.e., push)
* BEGIN: variable (rvalue) access
104: LD 0, 139(4)	* Load the global var into ACC0
* END: variable (rvalue) access
105: LDA 3, -141(5)	* Subtract the stack limit from SP - store in ACC3
106: LDC 2, 98(0)	* Load diagnostic char into ACC2
107: JLE 3, 195(4)	* stack failure
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
120: LDA 3, -141(5)	* Subtract the stack limit from SP - store in ACC3
121: LDC 2, 51(0)	* Load diagnostic char into ACC2
122: JLE 3, 195(4)	* stack failure
123: ST 0, 0(5)	* save ACC0 into the current SP location
124: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
125: LDC 0, 1(0)	* Load a constant into ACC0
* END: load an int constant
126: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
127: LD 1, 0(5)	* Load stored result into ACC1
* BEGIN: <=
128: SUB 0, 1, 0	* for <=, subtract right from left
129: JLE 0, 2(7)	* Jump to Load 1 if ACC0 <= 0
130: LDC 0, 0(0)	* Load 0 into ACC0
131: LDA 7, 1(7)	* Jump over Load 1
132: LDC 0, 1(0)	* Load 1 into ACC0
* END: <=
133: JEQ 0, 10(7)	* Jump over the then stmts if false
* BEGIN: variable (rvalue) access
134: LD 0, -5(6)	* Load the local var into ACC0
* END: variable (rvalue) access
* BEGIN: push to stack
135: LDA 3, -141(5)	* Subtract the stack limit from SP - store in ACC3
136: LDC 2, 50(0)	* Load diagnostic char into ACC2
137: JLE 3, 195(4)	* stack failure
138: ST 0, 0(5)	* save ACC0 into the current SP location
139: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: assignment
140: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
141: LD 0, 0(5)	* Load stored result into ACC0
142: ST 0, -4(6)	* Store ACC0 into local offset (relative to FP)
* END: assignment
143: LDA 7, 49(7)	* Jump over the rest of the if
* BEGIN: variable (rvalue) access
144: LD 0, -5(6)	* Load the local var into ACC0
* END: variable (rvalue) access
* BEGIN: push to stack
145: LDA 3, -141(5)	* Subtract the stack limit from SP - store in ACC3
146: LDC 2, 55(0)	* Load diagnostic char into ACC2
147: JLE 3, 195(4)	* stack failure
148: ST 0, 0(5)	* save ACC0 into the current SP location
149: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: procedure call
150: LDA 0, 28(7)	* Get return address into ACC0
151: LDA 3, -144(5)	* Subtract the stack limit from SP - store in ACC3
152: LDC 2, 97(0)	* Load diagnostic char into ACC2
153: JLE 3, 195(4)	* stack failure
154: ST 0, 0(5)	* Store return address (in ACC0) to SP/FP
* return value sits at SP-1/FP-1
155: ST 5, -2(5)	* Store SP to SP-2/FP-2
156: ST 6, -3(5)	* Store FP to SP-3/FP-3
157: LDA 5, -4(5)	* decrement SP by 4 (i.e., 4 pushes)
158: LDA 3, -141(5)	* Subtract the stack limit from SP - store in ACC3
159: LDC 2, 99(0)	* Load diagnostic char into ACC2
160: JLE 3, 195(4)	* stack failure
161: LDA 5, -1(5)	* decrement SP by local var's size (i.e., push)
* BEGIN: variable (rvalue) access
162: LD 0, -5(6)	* Load the local var into ACC0
* END: variable (rvalue) access
* BEGIN: push to stack
163: LDA 3, -141(5)	* Subtract the stack limit from SP - store in ACC3
164: LDC 2, 55(0)	* Load diagnostic char into ACC2
165: JLE 3, 195(4)	* stack failure
166: ST 0, 0(5)	* save ACC0 into the current SP location
167: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
168: LDC 0, 1(0)	* Load a constant into ACC0
* END: load an int constant
169: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
170: LD 1, 0(5)	* Load stored result into ACC1
171: SUB 0, 1, 0	* Subtract ACC0 from ACC1 placing result in ACC0
172: LDA 3, -141(5)	* Subtract the stack limit from SP - store in ACC3
173: LDC 2, 98(0)	* Load diagnostic char into ACC2
174: JLE 3, 195(4)	* stack failure
175: ST 0, 0(5)	* Store param in slot
176: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
177: LDA 6, 6(5)	* Set FP to be the "pre-push of AR" SP
* SP already points to end of the AR
178: LDA 7, 118(4)	* Jump to the start of the proc
179: LD 0, -4(6)	* Load the return value into ACC0
180: LD 5, -2(6)	* Restore SP from FP-2
181: LD 6, -3(6)	* Restore FP from FP-3
* END: procedure call
182: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
183: LD 1, 0(5)	* Load stored result into ACC1
184: MUL 0, 0, 1	* Multiply ACC0 & ACC1 placing result in ACC0
* BEGIN: push to stack
185: LDA 3, -141(5)	* Subtract the stack limit from SP - store in ACC3
186: LDC 2, 50(0)	* Load diagnostic char into ACC2
187: JLE 3, 195(4)	* stack failure
188: ST 0, 0(5)	* save ACC0 into the current SP location
189: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: assignment
190: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
191: LD 0, 0(5)	* Load stored result into ACC0
192: ST 0, -4(6)	* Store ACC0 into local offset (relative to FP)
* END: assignment
193: LD 0, 0(6)	* Load the return address from the 1st slot in the AR to ACC0
194: LDA 7, 0(0)	* Return to calling location (stored in ACC0)
* END: procedure code
* BEGIN: stack limit message handler
195: LDC 0, 25(0)	* Load the error message into ACC0
196: LDA 1, 1(0)	* Increment the address stored in ACC0 to get the string's char location (put in ACC1)
197: LD 0, 0(0)	* Load the string size into ACC0
198: JEQ 0, 5(7)	* Jump to end when run out of string
199: LDA 0, -1(0)	* subtract one from string size
200: LD 3, 0(1)	* Load next char from string into ACC3
201: LDA 1, 1(1)	* increment pointer into string
202: OUTC 3, 0, 0	* Write out character in ACC3
203: LDA 7, -6(7)	* Go back to start of loop
204: OUTC 2, 0, 0	* Write out diagnostic char in ACC2
205: OUTNL 0, 0, 0	* dump out the newline
206: HALT 0, 0, 0	* Halt for stack limit
* END: stack limit message handler
