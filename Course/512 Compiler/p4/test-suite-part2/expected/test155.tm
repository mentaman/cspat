.DATA 23	* string length
.SDATA "Arrays bounds violation"	* string constant
.DATA 19	* string length
.SDATA "Out of stack space "	* string constant
.DATA 1	* string length
.SDATA "6"	* string constant
* BEGIN preamble
0: LDC 4, 0(0)	* initialize ZEROREG to 0
1: LD 5, 0(4)	* initialize SP to end of memory
2: LDA 5, -1(5)	* subtract one to get the true SP
3: LDA 6, 0(5)	* FP and SP start off the same
* END preamble
* BEGIN: procedure call
4: LDA 0, 21(7)	* Get return address into ACC0
5: LDA 3, -51(5)	* Subtract the stack limit from SP - store in ACC3
6: LDC 2, 97(0)	* Load diagnostic char into ACC2
7: JLE 3, 157(4)	* stack failure
8: ST 0, 0(5)	* Store return address (in ACC0) to SP/FP
* return value sits at SP-1/FP-1
9: ST 5, -2(5)	* Store SP to SP-2/FP-2
10: ST 6, -3(5)	* Store FP to SP-3/FP-3
11: LDA 5, -4(5)	* decrement SP by 4 (i.e., 4 pushes)
12: LDA 3, -48(5)	* Subtract the stack limit from SP - store in ACC3
13: LDC 2, 99(0)	* Load diagnostic char into ACC2
14: JLE 3, 157(4)	* stack failure
15: LDA 5, -1(5)	* decrement SP by local var's size (i.e., push)
16: LDA 3, -48(5)	* Subtract the stack limit from SP - store in ACC3
17: LDC 2, 99(0)	* Load diagnostic char into ACC2
18: JLE 3, 157(4)	* stack failure
19: LDA 5, -1(5)	* decrement SP by local var's size (i.e., push)
20: LDA 3, -48(5)	* Subtract the stack limit from SP - store in ACC3
21: LDC 2, 99(0)	* Load diagnostic char into ACC2
22: JLE 3, 157(4)	* stack failure
23: LDA 5, -1(5)	* decrement SP by local var's size (i.e., push)
24: LDA 6, 7(5)	* Set FP to be the "pre-push of AR" SP
* SP already points to end of the AR
25: LDA 7, 29(4)	* Jump to the start of the proc
26: LD 5, -2(6)	* Restore SP from FP-2
27: LD 6, -3(6)	* Restore FP from FP-3
* END: procedure call
28: HALT 0, 0, 0	* End of Program
* BEGIN: procedure code
29: LDA 0, 0(0)	* NOOP to mark beginning of proc
* BEGIN: load a bool value into ACC0
30: LDC 0, 1(0)	* Load a boolean value into ACC0
* END: load a bool value into ACC0
* BEGIN: push to stack
31: LDA 3, -48(5)	* Subtract the stack limit from SP - store in ACC3
32: LDC 2, 50(0)	* Load diagnostic char into ACC2
33: JLE 3, 157(4)	* stack failure
34: ST 0, 0(5)	* save ACC0 into the current SP location
35: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: assignment
36: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
37: LD 0, 0(5)	* Load stored result into ACC0
38: ST 0, -4(6)	* Store ACC0 into local offset (relative to FP)
* END: assignment
* BEGIN: load an int constant
39: LDC 0, 2(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: push to stack
40: LDA 3, -48(5)	* Subtract the stack limit from SP - store in ACC3
41: LDC 2, 50(0)	* Load diagnostic char into ACC2
42: JLE 3, 157(4)	* stack failure
43: ST 0, 0(5)	* save ACC0 into the current SP location
44: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: assignment
45: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
46: LD 0, 0(5)	* Load stored result into ACC0
47: ST 0, -5(6)	* Store ACC0 into local offset (relative to FP)
* END: assignment
* BEGIN: load a string's location into ACC0
48: LDC 0, 45(0)	* Load a string's location into ACC0
* END: load a string's location into ACC0
* BEGIN: push to stack
49: LDA 3, -48(5)	* Subtract the stack limit from SP - store in ACC3
50: LDC 2, 50(0)	* Load diagnostic char into ACC2
51: JLE 3, 157(4)	* stack failure
52: ST 0, 0(5)	* save ACC0 into the current SP location
53: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: assignment
54: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
55: LD 0, 0(5)	* Load stored result into ACC0
56: ST 0, -6(6)	* Store ACC0 into local offset (relative to FP)
* END: assignment
* BEGIN: variable (rvalue) access
57: LD 0, -4(6)	* Load the local var into ACC0
* END: variable (rvalue) access
* BEGIN: write(s)
58: OUT 0, 0, 0	* write out the int value in ACC0
59: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
* BEGIN: variable (rvalue) access
60: LD 0, -5(6)	* Load the local var into ACC0
* END: variable (rvalue) access
* BEGIN: push to stack
61: LDA 3, -48(5)	* Subtract the stack limit from SP - store in ACC3
62: LDC 2, 55(0)	* Load diagnostic char into ACC2
63: JLE 3, 157(4)	* stack failure
64: ST 0, 0(5)	* save ACC0 into the current SP location
65: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
66: LDC 0, 3(0)	* Load a constant into ACC0
* END: load an int constant
67: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
68: LD 1, 0(5)	* Load stored result into ACC1
69: ADD 0, 0, 1	* Add ACC0 & ACC1 placing result in ACC0
* BEGIN: write(s)
70: OUT 0, 0, 0	* write out the int value in ACC0
71: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
* BEGIN: procedure call
72: LDA 0, 19(7)	* Get return address into ACC0
73: LDA 3, -51(5)	* Subtract the stack limit from SP - store in ACC3
74: LDC 2, 97(0)	* Load diagnostic char into ACC2
75: JLE 3, 157(4)	* stack failure
76: ST 0, 0(5)	* Store return address (in ACC0) to SP/FP
* return value sits at SP-1/FP-1
77: ST 5, -2(5)	* Store SP to SP-2/FP-2
78: ST 6, -3(5)	* Store FP to SP-3/FP-3
79: LDA 5, -4(5)	* decrement SP by 4 (i.e., 4 pushes)
80: LDA 3, -48(5)	* Subtract the stack limit from SP - store in ACC3
81: LDC 2, 99(0)	* Load diagnostic char into ACC2
82: JLE 3, 157(4)	* stack failure
83: LDA 5, -1(5)	* decrement SP by local var's size (i.e., push)
* BEGIN: variable (rvalue) access
84: LD 0, -6(6)	* Load the local var into ACC0
* END: variable (rvalue) access
85: LDA 3, -48(5)	* Subtract the stack limit from SP - store in ACC3
86: LDC 2, 98(0)	* Load diagnostic char into ACC2
87: JLE 3, 157(4)	* stack failure
88: ST 0, 0(5)	* Store param in slot
89: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
90: LDA 6, 6(5)	* Set FP to be the "pre-push of AR" SP
* SP already points to end of the AR
91: LDA 7, 99(4)	* Jump to the start of the proc
92: LD 0, -4(6)	* Load the return value into ACC0
93: LD 5, -2(6)	* Restore SP from FP-2
94: LD 6, -3(6)	* Restore FP from FP-3
* END: procedure call
* BEGIN: write(s)
95: OUT 0, 0, 0	* write out the int value in ACC0
96: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
97: LD 0, 0(6)	* Load the return address from the 1st slot in the AR to ACC0
98: LDA 7, 0(0)	* Return to calling location (stored in ACC0)
* END: procedure code
* BEGIN: int procedure code
99: LDA 0, 0(0)	* NOOP to mark beginning of proc
100: LDC 5, 0(0)	* Load 0 into SP - we are misusing it in this proc
101: LDC 3, 1(0)	* Load 1 into ACC3
102: ST 3, -6(6)	* Store ACC3 into the bPos local var slot
103: LD 0, -5(6)	* Load the string's address into ACC0
104: LDA 1, 1(0)	* Load the string's char address into ACC1
105: LD 0, 0(0)	* Load the string size into ACC0
106: JEQ 0, 47(7)	* Jump to end if string is zero sized
107: LDA 0, -1(0)	* subtract one from string size
108: LD 2, 0(1)	* Load next char from string into ACC2
109: LDA 1, 1(1)	* increment pointer into string
110: LDC 3, 43(0)	* Load 43 ('+') into ACC3
111: SUB 3, 2, 3	* Subtract 43 from cur char
112: JEQ 3, 9(7)	* break if equal to 43
113: LDC 3, 45(0)	* Load 45 ('-') into ACC3
114: SUB 3, 2, 3	* Subtract 45 from cur char
115: JEQ 3, 6(7)	* break if equal to 45
116: LDC 3, 48(0)	* Load 48 ('0') into ACC3
117: SUB 3, 2, 3	* Subtract 48 from cur char
118: JLT 3, -13(7)	* go back to top if < 48 '0'
119: LDC 3, 57(0)	* Load 57 ('9') into ACC3
120: SUB 3, 2, 3	* Subtract 57 from cur char
121: JGT 3, -16(7)	* go back to top if > 57 '9'
122: LDA 0, 0(0)	* NOOP
123: LDC 3, 43(0)	* Load 43 ('+') into ACC3
124: SUB 3, 2, 3	* Subtract 43 from cur char
125: JEQ 3, 6(7)	* break if equal to 43
126: LDC 3, 45(0)	* Load 45 ('-') into ACC3
127: SUB 3, 2, 3	* Subtract 45 from cur char
128: JEQ 3, 1(7)	* break if equal to 45
129: LDA 7, 5(7)	* jump over
130: LDC 3, 0(0)	* Load 0 into ACC3
131: ST 3, -6(6)	* Store ACC3 into the bPos local var slot
132: LDA 0, -1(0)	* subtract one from string size
133: LD 2, 0(1)	* Load next char from string into ACC2
134: LDA 1, 1(1)	* increment pointer into string
135: JLT 0, 15(7)	* Jump to end if string is zero sized
136: LDC 3, 57(0)	* Load 57 ('9') into ACC3
137: SUB 3, 2, 3	* Subtract 57 from cur char
138: JGT 3, 12(7)	* quit if > 57 '9'
139: LDC 3, 48(0)	* Load 48 ('0') into ACC3
140: SUB 3, 2, 3	* Subtract 48 from cur char
141: JLT 3, 9(7)	* quit if < 48 '0'
142: LDC 3, 10(0)	* Load 10 into ACC3
143: MUL 5, 5, 3	* Shift accum value over
144: LDC 3, 48(0)	* Load 48 ('0') into ACC3
145: SUB 3, 2, 3	* Subtract 48 from cur char
146: ADD 5, 5, 3	* Add in the new ones places
147: LDA 0, -1(0)	* subtract one from string size
148: LD 2, 0(1)	* Load next char from string into ACC2
149: LDA 1, 1(1)	* increment pointer into string
150: LDA 7, -16(7)	* Go back to start of loop
151: LD 3, -6(6)	* Load bPos from the local var slot into ACC3
152: JNE 3, 1(7)	* Jump over the subtraction if still positive
153: SUB 5, 4, 5	* negate the accumulated value
154: ST 5, -4(6)	* Store the result into the return slot
155: LD 0, 0(6)	* Load the return address from the 1st slot in the AR to ACC0
156: LDA 7, 0(0)	* Return to calling location (stored in ACC0)
* END: int procedure code
* BEGIN: stack limit message handler
157: LDC 0, 25(0)	* Load the error message into ACC0
158: LDA 1, 1(0)	* Increment the address stored in ACC0 to get the string's char location (put in ACC1)
159: LD 0, 0(0)	* Load the string size into ACC0
160: JEQ 0, 5(7)	* Jump to end when run out of string
161: LDA 0, -1(0)	* subtract one from string size
162: LD 3, 0(1)	* Load next char from string into ACC3
163: LDA 1, 1(1)	* increment pointer into string
164: OUTC 3, 0, 0	* Write out character in ACC3
165: LDA 7, -6(7)	* Go back to start of loop
166: OUTC 2, 0, 0	* Write out diagnostic char in ACC2
167: OUTNL 0, 0, 0	* dump out the newline
168: HALT 0, 0, 0	* Halt for stack limit
* END: stack limit message handler
