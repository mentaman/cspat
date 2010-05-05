.DATA 23	* string length
.SDATA "Arrays bounds violation"	* string constant
.DATA 19	* string length
.SDATA "Out of stack space "	* string constant
.DATA 0	* storage location (45) for var i
.DATA 0	* storage location (46) for var l
* BEGIN preamble
0: LDC 4, 0(0)	* initialize ZEROREG to 0
1: LD 5, 0(4)	* initialize SP to end of memory
2: LDA 5, -1(5)	* subtract one to get the true SP
3: LDA 6, 0(5)	* FP and SP start off the same
* END preamble
* BEGIN: load an int constant
4: LDC 0, 16(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: push to stack
5: LDA 3, -48(5)	* Subtract the stack limit from SP - store in ACC3
6: LDC 2, 50(0)	* Load diagnostic char into ACC2
7: JLE 3, 184(4)	* stack failure
8: ST 0, 0(5)	* save ACC0 into the current SP location
9: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: assignment
10: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
11: LD 0, 0(5)	* Load stored result into ACC0
12: ST 0, 45(4)	* Store ACC0 into global offset
* END: assignment
* BEGIN: load an int constant
13: LDC 0, 0(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: push to stack
14: LDA 3, -48(5)	* Subtract the stack limit from SP - store in ACC3
15: LDC 2, 50(0)	* Load diagnostic char into ACC2
16: JLE 3, 184(4)	* stack failure
17: ST 0, 0(5)	* save ACC0 into the current SP location
18: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: assignment
19: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
20: LD 0, 0(5)	* Load stored result into ACC0
21: ST 0, 46(4)	* Store ACC0 into global offset
* END: assignment
* BEGIN: procedure call
22: LDA 0, 29(7)	* Get return address into ACC0
23: LDA 3, -51(5)	* Subtract the stack limit from SP - store in ACC3
24: LDC 2, 97(0)	* Load diagnostic char into ACC2
25: JLE 3, 184(4)	* stack failure
26: ST 0, 0(5)	* Store return address (in ACC0) to SP/FP
* return value sits at SP-1/FP-1
27: ST 5, -2(5)	* Store SP to SP-2/FP-2
28: ST 6, -3(5)	* Store FP to SP-3/FP-3
29: LDA 5, -4(5)	* decrement SP by 4 (i.e., 4 pushes)
* BEGIN: load an int constant
30: LDC 0, 100(0)	* Load a constant into ACC0
* END: load an int constant
31: LDA 3, -48(5)	* Subtract the stack limit from SP - store in ACC3
32: LDC 2, 98(0)	* Load diagnostic char into ACC2
33: JLE 3, 184(4)	* stack failure
34: ST 0, 0(5)	* Store param in slot
35: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* BEGIN: load a bool value into ACC0
36: LDC 0, 0(0)	* Load a boolean value into ACC0
* END: load a bool value into ACC0
37: LDA 3, -48(5)	* Subtract the stack limit from SP - store in ACC3
38: LDC 2, 98(0)	* Load diagnostic char into ACC2
39: JLE 3, 184(4)	* stack failure
40: ST 0, 0(5)	* Store param in slot
41: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
42: LDA 3, -48(5)	* Subtract the stack limit from SP - store in ACC3
43: LDC 2, 99(0)	* Load diagnostic char into ACC2
44: JLE 3, 184(4)	* stack failure
45: LDA 5, -1(5)	* decrement SP by local var's size (i.e., push)
46: LDA 3, -48(5)	* Subtract the stack limit from SP - store in ACC3
47: LDC 2, 99(0)	* Load diagnostic char into ACC2
48: JLE 3, 184(4)	* stack failure
49: LDA 5, -1(5)	* decrement SP by local var's size (i.e., push)
50: LDA 6, 8(5)	* Set FP to be the "pre-push of AR" SP
* SP already points to end of the AR
51: LDA 7, 97(4)	* Jump to the start of the proc
52: LD 5, -2(6)	* Restore SP from FP-2
53: LD 6, -3(6)	* Restore FP from FP-3
* END: procedure call
* BEGIN: variable (rvalue) access
54: LD 0, 45(4)	* Load the global var into ACC0
* END: variable (rvalue) access
* BEGIN: write(s)
55: OUT 0, 0, 0	* write out the int value in ACC0
56: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
* BEGIN: procedure call
57: LDA 0, 30(7)	* Get return address into ACC0
58: LDA 3, -51(5)	* Subtract the stack limit from SP - store in ACC3
59: LDC 2, 97(0)	* Load diagnostic char into ACC2
60: JLE 3, 184(4)	* stack failure
61: ST 0, 0(5)	* Store return address (in ACC0) to SP/FP
* return value sits at SP-1/FP-1
62: ST 5, -2(5)	* Store SP to SP-2/FP-2
63: ST 6, -3(5)	* Store FP to SP-3/FP-3
64: LDA 5, -4(5)	* decrement SP by 4 (i.e., 4 pushes)
* BEGIN: load an int constant
65: LDC 0, 32(0)	* Load a constant into ACC0
* END: load an int constant
66: SUB 0, 4, 0	* Subtract ACC0 from ZEROREG to negate it
67: LDA 3, -48(5)	* Subtract the stack limit from SP - store in ACC3
68: LDC 2, 98(0)	* Load diagnostic char into ACC2
69: JLE 3, 184(4)	* stack failure
70: ST 0, 0(5)	* Store param in slot
71: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* BEGIN: load a bool value into ACC0
72: LDC 0, 1(0)	* Load a boolean value into ACC0
* END: load a bool value into ACC0
73: LDA 3, -48(5)	* Subtract the stack limit from SP - store in ACC3
74: LDC 2, 98(0)	* Load diagnostic char into ACC2
75: JLE 3, 184(4)	* stack failure
76: ST 0, 0(5)	* Store param in slot
77: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
78: LDA 3, -48(5)	* Subtract the stack limit from SP - store in ACC3
79: LDC 2, 99(0)	* Load diagnostic char into ACC2
80: JLE 3, 184(4)	* stack failure
81: LDA 5, -1(5)	* decrement SP by local var's size (i.e., push)
82: LDA 3, -48(5)	* Subtract the stack limit from SP - store in ACC3
83: LDC 2, 99(0)	* Load diagnostic char into ACC2
84: JLE 3, 184(4)	* stack failure
85: LDA 5, -1(5)	* decrement SP by local var's size (i.e., push)
86: LDA 6, 8(5)	* Set FP to be the "pre-push of AR" SP
* SP already points to end of the AR
87: LDA 7, 97(4)	* Jump to the start of the proc
88: LD 5, -2(6)	* Restore SP from FP-2
89: LD 6, -3(6)	* Restore FP from FP-3
* END: procedure call
* BEGIN: variable (rvalue) access
90: LD 0, 45(4)	* Load the global var into ACC0
* END: variable (rvalue) access
* BEGIN: write(s)
91: OUT 0, 0, 0	* write out the int value in ACC0
92: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
* BEGIN: variable (rvalue) access
93: LD 0, 46(4)	* Load the global var into ACC0
* END: variable (rvalue) access
* BEGIN: write(s)
94: OUT 0, 0, 0	* write out the int value in ACC0
95: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
96: HALT 0, 0, 0	* End of Program
* BEGIN: procedure code
97: LDA 0, 0(0)	* NOOP to mark beginning of proc
* BEGIN: load an int constant
98: LDC 0, 7(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: push to stack
99: LDA 3, -48(5)	* Subtract the stack limit from SP - store in ACC3
100: LDC 2, 50(0)	* Load diagnostic char into ACC2
101: JLE 3, 184(4)	* stack failure
102: ST 0, 0(5)	* save ACC0 into the current SP location
103: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: assignment
104: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
105: LD 0, 0(5)	* Load stored result into ACC0
106: ST 0, -6(6)	* Store ACC0 into local offset (relative to FP)
* END: assignment
* BEGIN: load an int constant
107: LDC 0, 9(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: push to stack
108: LDA 3, -48(5)	* Subtract the stack limit from SP - store in ACC3
109: LDC 2, 50(0)	* Load diagnostic char into ACC2
110: JLE 3, 184(4)	* stack failure
111: ST 0, 0(5)	* save ACC0 into the current SP location
112: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: assignment
113: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
114: LD 0, 0(5)	* Load stored result into ACC0
115: ST 0, -7(6)	* Store ACC0 into local offset (relative to FP)
* END: assignment
* BEGIN: variable (rvalue) access
116: LD 0, -5(6)	* Load the local var into ACC0
* END: variable (rvalue) access
117: JEQ 0, 37(7)	* Jump over the then stmts if false
* BEGIN: variable (rvalue) access
118: LD 0, 45(4)	* Load the global var into ACC0
* END: variable (rvalue) access
* BEGIN: push to stack
119: LDA 3, -48(5)	* Subtract the stack limit from SP - store in ACC3
120: LDC 2, 55(0)	* Load diagnostic char into ACC2
121: JLE 3, 184(4)	* stack failure
122: ST 0, 0(5)	* save ACC0 into the current SP location
123: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: variable (rvalue) access
124: LD 0, -6(6)	* Load the local var into ACC0
* END: variable (rvalue) access
125: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
126: LD 1, 0(5)	* Load stored result into ACC1
127: ADD 0, 0, 1	* Add ACC0 & ACC1 placing result in ACC0
* BEGIN: push to stack
128: LDA 3, -48(5)	* Subtract the stack limit from SP - store in ACC3
129: LDC 2, 55(0)	* Load diagnostic char into ACC2
130: JLE 3, 184(4)	* stack failure
131: ST 0, 0(5)	* save ACC0 into the current SP location
132: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: variable (rvalue) access
133: LD 0, -7(6)	* Load the local var into ACC0
* END: variable (rvalue) access
134: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
135: LD 1, 0(5)	* Load stored result into ACC1
136: ADD 0, 0, 1	* Add ACC0 & ACC1 placing result in ACC0
* BEGIN: push to stack
137: LDA 3, -48(5)	* Subtract the stack limit from SP - store in ACC3
138: LDC 2, 55(0)	* Load diagnostic char into ACC2
139: JLE 3, 184(4)	* stack failure
140: ST 0, 0(5)	* save ACC0 into the current SP location
141: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: variable (rvalue) access
142: LD 0, -4(6)	* Load the local var into ACC0
* END: variable (rvalue) access
143: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
144: LD 1, 0(5)	* Load stored result into ACC1
145: ADD 0, 0, 1	* Add ACC0 & ACC1 placing result in ACC0
* BEGIN: push to stack
146: LDA 3, -48(5)	* Subtract the stack limit from SP - store in ACC3
147: LDC 2, 50(0)	* Load diagnostic char into ACC2
148: JLE 3, 184(4)	* stack failure
149: ST 0, 0(5)	* save ACC0 into the current SP location
150: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: assignment
151: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
152: LD 0, 0(5)	* Load stored result into ACC0
153: ST 0, 45(4)	* Store ACC0 into global offset
* END: assignment
154: LDA 7, 27(7)	* Jump over the rest of the if
* BEGIN: variable (rvalue) access
155: LD 0, 45(4)	* Load the global var into ACC0
* END: variable (rvalue) access
* BEGIN: push to stack
156: LDA 3, -48(5)	* Subtract the stack limit from SP - store in ACC3
157: LDC 2, 55(0)	* Load diagnostic char into ACC2
158: JLE 3, 184(4)	* stack failure
159: ST 0, 0(5)	* save ACC0 into the current SP location
160: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: variable (rvalue) access
161: LD 0, -6(6)	* Load the local var into ACC0
* END: variable (rvalue) access
162: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
163: LD 1, 0(5)	* Load stored result into ACC1
164: ADD 0, 0, 1	* Add ACC0 & ACC1 placing result in ACC0
* BEGIN: push to stack
165: LDA 3, -48(5)	* Subtract the stack limit from SP - store in ACC3
166: LDC 2, 55(0)	* Load diagnostic char into ACC2
167: JLE 3, 184(4)	* stack failure
168: ST 0, 0(5)	* save ACC0 into the current SP location
169: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: variable (rvalue) access
170: LD 0, -7(6)	* Load the local var into ACC0
* END: variable (rvalue) access
171: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
172: LD 1, 0(5)	* Load stored result into ACC1
173: ADD 0, 0, 1	* Add ACC0 & ACC1 placing result in ACC0
* BEGIN: push to stack
174: LDA 3, -48(5)	* Subtract the stack limit from SP - store in ACC3
175: LDC 2, 50(0)	* Load diagnostic char into ACC2
176: JLE 3, 184(4)	* stack failure
177: ST 0, 0(5)	* save ACC0 into the current SP location
178: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: assignment
179: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
180: LD 0, 0(5)	* Load stored result into ACC0
181: ST 0, 45(4)	* Store ACC0 into global offset
* END: assignment
182: LD 0, 0(6)	* Load the return address from the 1st slot in the AR to ACC0
183: LDA 7, 0(0)	* Return to calling location (stored in ACC0)
* END: procedure code
* BEGIN: stack limit message handler
184: LDC 0, 25(0)	* Load the error message into ACC0
185: LDA 1, 1(0)	* Increment the address stored in ACC0 to get the string's char location (put in ACC1)
186: LD 0, 0(0)	* Load the string size into ACC0
187: JEQ 0, 5(7)	* Jump to end when run out of string
188: LDA 0, -1(0)	* subtract one from string size
189: LD 3, 0(1)	* Load next char from string into ACC3
190: LDA 1, 1(1)	* increment pointer into string
191: OUTC 3, 0, 0	* Write out character in ACC3
192: LDA 7, -6(7)	* Go back to start of loop
193: OUTC 2, 0, 0	* Write out diagnostic char in ACC2
194: OUTNL 0, 0, 0	* dump out the newline
195: HALT 0, 0, 0	* Halt for stack limit
* END: stack limit message handler
