.DATA 23	* string length
.SDATA "Arrays bounds violation"	* string constant
.DATA 19	* string length
.SDATA "Out of stack space "	* string constant
.DATA 1	* string length
.SDATA "5"	* string constant
.DATA 0	* storage location (47) for var a
.DATA 0	* storage location (48) for var b
* BEGIN preamble
0: LDC 4, 0(0)	* initialize ZEROREG to 0
1: LD 5, 0(4)	* initialize SP to end of memory
2: LDA 5, -1(5)	* subtract one to get the true SP
3: LDA 6, 0(5)	* FP and SP start off the same
* END preamble
* BEGIN: load a string's location into ACC0
4: LDC 0, 45(0)	* Load a string's location into ACC0
* END: load a string's location into ACC0
* BEGIN: push to stack
5: LDA 3, -50(5)	* Subtract the stack limit from SP - store in ACC3
6: LDC 2, 50(0)	* Load diagnostic char into ACC2
7: JLE 3, 116(4)	* stack failure
8: ST 0, 0(5)	* save ACC0 into the current SP location
9: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: assignment
10: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
11: LD 0, 0(5)	* Load stored result into ACC0
12: ST 0, 47(4)	* Store ACC0 into global offset
* END: assignment
* BEGIN: procedure call
13: LDA 0, 19(7)	* Get return address into ACC0
14: LDA 3, -53(5)	* Subtract the stack limit from SP - store in ACC3
15: LDC 2, 97(0)	* Load diagnostic char into ACC2
16: JLE 3, 116(4)	* stack failure
17: ST 0, 0(5)	* Store return address (in ACC0) to SP/FP
* return value sits at SP-1/FP-1
18: ST 5, -2(5)	* Store SP to SP-2/FP-2
19: ST 6, -3(5)	* Store FP to SP-3/FP-3
20: LDA 5, -4(5)	* decrement SP by 4 (i.e., 4 pushes)
21: LDA 3, -50(5)	* Subtract the stack limit from SP - store in ACC3
22: LDC 2, 99(0)	* Load diagnostic char into ACC2
23: JLE 3, 116(4)	* stack failure
24: LDA 5, -1(5)	* decrement SP by local var's size (i.e., push)
* BEGIN: variable (rvalue) access
25: LD 0, 47(4)	* Load the global var into ACC0
* END: variable (rvalue) access
26: LDA 3, -50(5)	* Subtract the stack limit from SP - store in ACC3
27: LDC 2, 98(0)	* Load diagnostic char into ACC2
28: JLE 3, 116(4)	* stack failure
29: ST 0, 0(5)	* Store param in slot
30: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
31: LDA 6, 6(5)	* Set FP to be the "pre-push of AR" SP
* SP already points to end of the AR
32: LDA 7, 58(4)	* Jump to the start of the proc
33: LD 0, -4(6)	* Load the return value into ACC0
34: LD 5, -2(6)	* Restore SP from FP-2
35: LD 6, -3(6)	* Restore FP from FP-3
* END: procedure call
* BEGIN: push to stack
36: LDA 3, -50(5)	* Subtract the stack limit from SP - store in ACC3
37: LDC 2, 50(0)	* Load diagnostic char into ACC2
38: JLE 3, 116(4)	* stack failure
39: ST 0, 0(5)	* save ACC0 into the current SP location
40: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: assignment
41: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
42: LD 0, 0(5)	* Load stored result into ACC0
43: ST 0, 48(4)	* Store ACC0 into global offset
* END: assignment
* BEGIN: variable (rvalue) access
44: LD 0, 47(4)	* Load the global var into ACC0
* END: variable (rvalue) access
* BEGIN: write(s)
45: LDA 1, 1(0)	* Increment the address stored in ACC0 to get the string's char location (put in ACC1)
46: LD 0, 0(0)	* Load the string size into ACC0
47: JEQ 0, 5(7)	* Jump to end when run out of string
48: LDA 0, -1(0)	* subtract one from string size
49: LD 2, 0(1)	* Load next char from string into ACC2
50: LDA 1, 1(1)	* increment pointer into string
51: OUTC 2, 0, 0	* Write out character in ACC2
52: LDA 7, -6(7)	* Go back to start of loop
53: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
* BEGIN: variable (rvalue) access
54: LD 0, 48(4)	* Load the global var into ACC0
* END: variable (rvalue) access
* BEGIN: write(s)
55: OUT 0, 0, 0	* write out the int value in ACC0
56: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
57: HALT 0, 0, 0	* End of Program
* BEGIN: int procedure code
58: LDA 0, 0(0)	* NOOP to mark beginning of proc
59: LDC 5, 0(0)	* Load 0 into SP - we are misusing it in this proc
60: LDC 3, 1(0)	* Load 1 into ACC3
61: ST 3, -6(6)	* Store ACC3 into the bPos local var slot
62: LD 0, -5(6)	* Load the string's address into ACC0
63: LDA 1, 1(0)	* Load the string's char address into ACC1
64: LD 0, 0(0)	* Load the string size into ACC0
65: JEQ 0, 47(7)	* Jump to end if string is zero sized
66: LDA 0, -1(0)	* subtract one from string size
67: LD 2, 0(1)	* Load next char from string into ACC2
68: LDA 1, 1(1)	* increment pointer into string
69: LDC 3, 43(0)	* Load 43 ('+') into ACC3
70: SUB 3, 2, 3	* Subtract 43 from cur char
71: JEQ 3, 9(7)	* break if equal to 43
72: LDC 3, 45(0)	* Load 45 ('-') into ACC3
73: SUB 3, 2, 3	* Subtract 45 from cur char
74: JEQ 3, 6(7)	* break if equal to 45
75: LDC 3, 48(0)	* Load 48 ('0') into ACC3
76: SUB 3, 2, 3	* Subtract 48 from cur char
77: JLT 3, -13(7)	* go back to top if < 48 '0'
78: LDC 3, 57(0)	* Load 57 ('9') into ACC3
79: SUB 3, 2, 3	* Subtract 57 from cur char
80: JGT 3, -16(7)	* go back to top if > 57 '9'
81: LDA 0, 0(0)	* NOOP
82: LDC 3, 43(0)	* Load 43 ('+') into ACC3
83: SUB 3, 2, 3	* Subtract 43 from cur char
84: JEQ 3, 6(7)	* break if equal to 43
85: LDC 3, 45(0)	* Load 45 ('-') into ACC3
86: SUB 3, 2, 3	* Subtract 45 from cur char
87: JEQ 3, 1(7)	* break if equal to 45
88: LDA 7, 5(7)	* jump over
89: LDC 3, 0(0)	* Load 0 into ACC3
90: ST 3, -6(6)	* Store ACC3 into the bPos local var slot
91: LDA 0, -1(0)	* subtract one from string size
92: LD 2, 0(1)	* Load next char from string into ACC2
93: LDA 1, 1(1)	* increment pointer into string
94: JLT 0, 15(7)	* Jump to end if string is zero sized
95: LDC 3, 57(0)	* Load 57 ('9') into ACC3
96: SUB 3, 2, 3	* Subtract 57 from cur char
97: JGT 3, 12(7)	* quit if > 57 '9'
98: LDC 3, 48(0)	* Load 48 ('0') into ACC3
99: SUB 3, 2, 3	* Subtract 48 from cur char
100: JLT 3, 9(7)	* quit if < 48 '0'
101: LDC 3, 10(0)	* Load 10 into ACC3
102: MUL 5, 5, 3	* Shift accum value over
103: LDC 3, 48(0)	* Load 48 ('0') into ACC3
104: SUB 3, 2, 3	* Subtract 48 from cur char
105: ADD 5, 5, 3	* Add in the new ones places
106: LDA 0, -1(0)	* subtract one from string size
107: LD 2, 0(1)	* Load next char from string into ACC2
108: LDA 1, 1(1)	* increment pointer into string
109: LDA 7, -16(7)	* Go back to start of loop
110: LD 3, -6(6)	* Load bPos from the local var slot into ACC3
111: JNE 3, 1(7)	* Jump over the subtraction if still positive
112: SUB 5, 4, 5	* negate the accumulated value
113: ST 5, -4(6)	* Store the result into the return slot
114: LD 0, 0(6)	* Load the return address from the 1st slot in the AR to ACC0
115: LDA 7, 0(0)	* Return to calling location (stored in ACC0)
* END: int procedure code
* BEGIN: stack limit message handler
116: LDC 0, 25(0)	* Load the error message into ACC0
117: LDA 1, 1(0)	* Increment the address stored in ACC0 to get the string's char location (put in ACC1)
118: LD 0, 0(0)	* Load the string size into ACC0
119: JEQ 0, 5(7)	* Jump to end when run out of string
120: LDA 0, -1(0)	* subtract one from string size
121: LD 3, 0(1)	* Load next char from string into ACC3
122: LDA 1, 1(1)	* increment pointer into string
123: OUTC 3, 0, 0	* Write out character in ACC3
124: LDA 7, -6(7)	* Go back to start of loop
125: OUTC 2, 0, 0	* Write out diagnostic char in ACC2
126: OUTNL 0, 0, 0	* dump out the newline
127: HALT 0, 0, 0	* Halt for stack limit
* END: stack limit message handler
