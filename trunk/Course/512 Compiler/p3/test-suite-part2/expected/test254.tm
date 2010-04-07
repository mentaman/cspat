.DATA 23	* string length
.SDATA "Arrays bounds violation"	* string constant
.DATA 19	* string length
.SDATA "Out of stack space "	* string constant
.DATA 53	* string length
.SDATA "What number to you want to compute the factorial of? "	* string constant
.DATA 33	* string length
.SDATA "Invalid n: limited to 0 < n < 101"	* string constant
.DATA 13	* string length
.SDATA "Factorial of "	* string constant
.DATA 4	* string length
.SDATA " is "	* string constant
.DATA 0	* storage location (152) for var f
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
14: LDA 3, -154(5)	* Subtract the stack limit from SP - store in ACC3
15: LDC 2, 50(0)	* Load diagnostic char into ACC2
16: JLE 3, 192(4)	* stack failure
17: ST 0, 0(5)	* save ACC0 into the current SP location
18: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: assignment
19: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
20: LD 0, 0(5)	* Load stored result into ACC0
21: ST 0, 152(4)	* Store ACC0 into global offset
* END: assignment
* BEGIN: variable (rvalue) access
22: LD 0, 152(4)	* Load the global var into ACC0
* END: variable (rvalue) access
* BEGIN: push to stack
23: LDA 3, -154(5)	* Subtract the stack limit from SP - store in ACC3
24: LDC 2, 51(0)	* Load diagnostic char into ACC2
25: JLE 3, 192(4)	* stack failure
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
37: LDA 3, -154(5)	* Subtract the stack limit from SP - store in ACC3
38: LDC 2, 57(0)	* Load diagnostic char into ACC2
39: JLE 3, 192(4)	* stack failure
40: ST 0, 0(5)	* save ACC0 into the current SP location
41: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: variable (rvalue) access
42: LD 0, 152(4)	* Load the global var into ACC0
* END: variable (rvalue) access
* BEGIN: push to stack
43: LDA 3, -154(5)	* Subtract the stack limit from SP - store in ACC3
44: LDC 2, 51(0)	* Load diagnostic char into ACC2
45: JLE 3, 192(4)	* stack failure
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
61: JEQ 0, 11(7)	* Jump over the then stmts if false
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
* BEGIN: exit
72: HALT 0, 0, 0	* exit
* END: exit
* BEGIN: load a string's location into ACC0
73: LDC 0, 133(0)	* Load a string's location into ACC0
* END: load a string's location into ACC0
* BEGIN: write(s)
74: LDA 1, 1(0)	* Increment the address stored in ACC0 to get the string's char location (put in ACC1)
75: LD 0, 0(0)	* Load the string size into ACC0
76: JEQ 0, 5(7)	* Jump to end when run out of string
77: LDA 0, -1(0)	* subtract one from string size
78: LD 2, 0(1)	* Load next char from string into ACC2
79: LDA 1, 1(1)	* increment pointer into string
80: OUTC 2, 0, 0	* Write out character in ACC2
81: LDA 7, -6(7)	* Go back to start of loop
* END: write(s)
* BEGIN: variable (rvalue) access
82: LD 0, 152(4)	* Load the global var into ACC0
* END: variable (rvalue) access
* BEGIN: write(s)
83: OUT 0, 0, 0	* write out the int value in ACC0
* END: write(s)
* BEGIN: load a string's location into ACC0
84: LDC 0, 147(0)	* Load a string's location into ACC0
* END: load a string's location into ACC0
* BEGIN: write(s)
85: LDA 1, 1(0)	* Increment the address stored in ACC0 to get the string's char location (put in ACC1)
86: LD 0, 0(0)	* Load the string size into ACC0
87: JEQ 0, 5(7)	* Jump to end when run out of string
88: LDA 0, -1(0)	* subtract one from string size
89: LD 2, 0(1)	* Load next char from string into ACC2
90: LDA 1, 1(1)	* increment pointer into string
91: OUTC 2, 0, 0	* Write out character in ACC2
92: LDA 7, -6(7)	* Go back to start of loop
* END: write(s)
* BEGIN: procedure call
93: LDA 0, 27(7)	* Get return address into ACC0
94: LDA 3, -157(5)	* Subtract the stack limit from SP - store in ACC3
95: LDC 2, 97(0)	* Load diagnostic char into ACC2
96: JLE 3, 192(4)	* stack failure
97: ST 0, 0(5)	* Store return address (in ACC0) to SP/FP
* return value sits at SP-1/FP-1
98: ST 5, -2(5)	* Store SP to SP-2/FP-2
99: ST 6, -3(5)	* Store FP to SP-3/FP-3
100: LDA 5, -4(5)	* decrement SP by 4 (i.e., 4 pushes)
101: LDA 3, -154(5)	* Subtract the stack limit from SP - store in ACC3
102: LDC 2, 99(0)	* Load diagnostic char into ACC2
103: JLE 3, 192(4)	* stack failure
104: LDA 5, -1(5)	* decrement SP by local var's size (i.e., push)
* BEGIN: variable (rvalue) access
105: LD 0, 152(4)	* Load the global var into ACC0
* END: variable (rvalue) access
106: LDA 3, -154(5)	* Subtract the stack limit from SP - store in ACC3
107: LDC 2, 98(0)	* Load diagnostic char into ACC2
108: JLE 3, 192(4)	* stack failure
109: ST 0, 0(5)	* Store param in slot
110: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
111: LDA 3, -154(5)	* Subtract the stack limit from SP - store in ACC3
112: LDC 2, 99(0)	* Load diagnostic char into ACC2
113: JLE 3, 192(4)	* stack failure
114: LDA 5, -1(5)	* decrement SP by local var's size (i.e., push)
115: LDA 3, -154(5)	* Subtract the stack limit from SP - store in ACC3
116: LDC 2, 99(0)	* Load diagnostic char into ACC2
117: JLE 3, 192(4)	* stack failure
118: LDA 5, -1(5)	* decrement SP by local var's size (i.e., push)
119: LDA 6, 8(5)	* Set FP to be the "pre-push of AR" SP
* SP already points to end of the AR
120: LDA 7, 127(4)	* Jump to the start of the proc
121: LD 0, -4(6)	* Load the return value into ACC0
122: LD 5, -2(6)	* Restore SP from FP-2
123: LD 6, -3(6)	* Restore FP from FP-3
* END: procedure call
* BEGIN: write(s)
124: OUT 0, 0, 0	* write out the int value in ACC0
125: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
126: HALT 0, 0, 0	* End of Program
* BEGIN: procedure code
127: LDA 0, 0(0)	* NOOP to mark beginning of proc
* BEGIN: load an int constant
128: LDC 0, 1(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: push to stack
129: LDA 3, -154(5)	* Subtract the stack limit from SP - store in ACC3
130: LDC 2, 50(0)	* Load diagnostic char into ACC2
131: JLE 3, 192(4)	* stack failure
132: ST 0, 0(5)	* save ACC0 into the current SP location
133: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: assignment
134: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
135: LD 0, 0(5)	* Load stored result into ACC0
136: ST 0, -4(6)	* Store ACC0 into local offset (relative to FP)
* END: assignment
* BEGIN: for loop
* BEGIN: load an int constant
137: LDC 0, 2(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: save initial value to loop var
* BEGIN: push to stack
138: LDA 3, -154(5)	* Subtract the stack limit from SP - store in ACC3
139: LDC 2, 52(0)	* Load diagnostic char into ACC2
140: JLE 3, 192(4)	* stack failure
141: ST 0, 0(5)	* save ACC0 into the current SP location
142: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
143: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
144: LD 0, 0(5)	* Load stored result into ACC0
145: ST 0, -6(6)	* Store ACC0 into local offset (relative to FP)
* END: save initial value to loop var
* BEGIN: variable (rvalue) access
146: LD 0, -5(6)	* Load the local var into ACC0
* END: variable (rvalue) access
* BEGIN: save max value to max loop var
* BEGIN: push to stack
147: LDA 3, -154(5)	* Subtract the stack limit from SP - store in ACC3
148: LDC 2, 53(0)	* Load diagnostic char into ACC2
149: JLE 3, 192(4)	* stack failure
150: ST 0, 0(5)	* save ACC0 into the current SP location
151: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
152: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
153: LD 0, 0(5)	* Load stored result into ACC0
154: ST 0, -7(6)	* Store ACC0 into local offset (relative to FP)
* END: save max value to max loop var
155: LDA 5, 0(5)	* NOOP to mark top of loop
156: LD 0, -6(6)	* Load the local var into ACC0
157: LD 1, -7(6)	* Load the local var into ACC0
158: SUB 1, 1, 0	* Subtract the loop var from the max
159: JLT 1, 189(4)	* go to the loop exit
* BEGIN: body of for loop
* BEGIN: variable (rvalue) access
160: LD 0, -4(6)	* Load the local var into ACC0
* END: variable (rvalue) access
* BEGIN: push to stack
161: LDA 3, -154(5)	* Subtract the stack limit from SP - store in ACC3
162: LDC 2, 55(0)	* Load diagnostic char into ACC2
163: JLE 3, 192(4)	* stack failure
164: ST 0, 0(5)	* save ACC0 into the current SP location
165: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: variable (rvalue) access
166: LD 0, -6(6)	* Load the local var into ACC0
* END: variable (rvalue) access
167: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
168: LD 1, 0(5)	* Load stored result into ACC1
169: MUL 0, 0, 1	* Multiply ACC0 & ACC1 placing result in ACC0
* BEGIN: push to stack
170: LDA 3, -154(5)	* Subtract the stack limit from SP - store in ACC3
171: LDC 2, 50(0)	* Load diagnostic char into ACC2
172: JLE 3, 192(4)	* stack failure
173: ST 0, 0(5)	* save ACC0 into the current SP location
174: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: assignment
175: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
176: LD 0, 0(5)	* Load stored result into ACC0
177: ST 0, -4(6)	* Store ACC0 into local offset (relative to FP)
* END: assignment
* END: body of for loop
178: LD 0, -6(6)	* Load the local var into ACC0
179: LDA 0, 1(0)	* increment the loop var
* BEGIN: push to stack
180: LDA 3, -154(5)	* Subtract the stack limit from SP - store in ACC3
181: LDC 2, 54(0)	* Load diagnostic char into ACC2
182: JLE 3, 192(4)	* stack failure
183: ST 0, 0(5)	* save ACC0 into the current SP location
184: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
185: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
186: LD 0, 0(5)	* Load stored result into ACC0
187: ST 0, -6(6)	* Store ACC0 into local offset (relative to FP)
188: LDA 7, 155(4)	* return to the top of the loop
189: LDA 5, 0(5)	* NOOP to mark end of loop
* END: for loop
190: LD 0, 0(6)	* Load the return address from the 1st slot in the AR to ACC0
191: LDA 7, 0(0)	* Return to calling location (stored in ACC0)
* END: procedure code
* BEGIN: stack limit message handler
192: LDC 0, 25(0)	* Load the error message into ACC0
193: LDA 1, 1(0)	* Increment the address stored in ACC0 to get the string's char location (put in ACC1)
194: LD 0, 0(0)	* Load the string size into ACC0
195: JEQ 0, 5(7)	* Jump to end when run out of string
196: LDA 0, -1(0)	* subtract one from string size
197: LD 3, 0(1)	* Load next char from string into ACC3
198: LDA 1, 1(1)	* increment pointer into string
199: OUTC 3, 0, 0	* Write out character in ACC3
200: LDA 7, -6(7)	* Go back to start of loop
201: OUTC 2, 0, 0	* Write out diagnostic char in ACC2
202: OUTNL 0, 0, 0	* dump out the newline
203: HALT 0, 0, 0	* Halt for stack limit
* END: stack limit message handler
