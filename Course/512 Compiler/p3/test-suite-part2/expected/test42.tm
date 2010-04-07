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
4: LDC 0, 0(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: push to stack
5: LDA 3, -48(5)	* Subtract the stack limit from SP - store in ACC3
6: LDC 2, 50(0)	* Load diagnostic char into ACC2
7: JLE 3, 88(4)	* stack failure
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
16: JLE 3, 88(4)	* stack failure
17: ST 0, 0(5)	* save ACC0 into the current SP location
18: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: assignment
19: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
20: LD 0, 0(5)	* Load stored result into ACC0
21: ST 0, 46(4)	* Store ACC0 into global offset
* END: assignment
* BEGIN: procedure call
22: LDA 0, 17(7)	* Get return address into ACC0
23: LDA 3, -51(5)	* Subtract the stack limit from SP - store in ACC3
24: LDC 2, 97(0)	* Load diagnostic char into ACC2
25: JLE 3, 88(4)	* stack failure
26: ST 0, 0(5)	* Store return address (in ACC0) to SP/FP
* return value sits at SP-1/FP-1
27: ST 5, -2(5)	* Store SP to SP-2/FP-2
28: ST 6, -3(5)	* Store FP to SP-3/FP-3
29: LDA 5, -4(5)	* decrement SP by 4 (i.e., 4 pushes)
30: LDA 3, -48(5)	* Subtract the stack limit from SP - store in ACC3
31: LDC 2, 99(0)	* Load diagnostic char into ACC2
32: JLE 3, 88(4)	* stack failure
33: LDA 5, -1(5)	* decrement SP by local var's size (i.e., push)
34: LDA 3, -48(5)	* Subtract the stack limit from SP - store in ACC3
35: LDC 2, 99(0)	* Load diagnostic char into ACC2
36: JLE 3, 88(4)	* stack failure
37: LDA 5, -1(5)	* decrement SP by local var's size (i.e., push)
38: LDA 6, 6(5)	* Set FP to be the "pre-push of AR" SP
* SP already points to end of the AR
39: LDA 7, 49(4)	* Jump to the start of the proc
40: LD 5, -2(6)	* Restore SP from FP-2
41: LD 6, -3(6)	* Restore FP from FP-3
* END: procedure call
* BEGIN: variable (rvalue) access
42: LD 0, 45(4)	* Load the global var into ACC0
* END: variable (rvalue) access
* BEGIN: write(s)
43: OUT 0, 0, 0	* write out the int value in ACC0
44: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
* BEGIN: variable (rvalue) access
45: LD 0, 46(4)	* Load the global var into ACC0
* END: variable (rvalue) access
* BEGIN: write(s)
46: OUT 0, 0, 0	* write out the int value in ACC0
47: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
48: HALT 0, 0, 0	* End of Program
* BEGIN: procedure code
49: LDA 0, 0(0)	* NOOP to mark beginning of proc
* BEGIN: load an int constant
50: LDC 0, 7(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: push to stack
51: LDA 3, -48(5)	* Subtract the stack limit from SP - store in ACC3
52: LDC 2, 50(0)	* Load diagnostic char into ACC2
53: JLE 3, 88(4)	* stack failure
54: ST 0, 0(5)	* save ACC0 into the current SP location
55: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: assignment
56: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
57: LD 0, 0(5)	* Load stored result into ACC0
58: ST 0, -4(6)	* Store ACC0 into local offset (relative to FP)
* END: assignment
* BEGIN: load an int constant
59: LDC 0, 9(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: push to stack
60: LDA 3, -48(5)	* Subtract the stack limit from SP - store in ACC3
61: LDC 2, 50(0)	* Load diagnostic char into ACC2
62: JLE 3, 88(4)	* stack failure
63: ST 0, 0(5)	* save ACC0 into the current SP location
64: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: assignment
65: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
66: LD 0, 0(5)	* Load stored result into ACC0
67: ST 0, -5(6)	* Store ACC0 into local offset (relative to FP)
* END: assignment
* BEGIN: variable (rvalue) access
68: LD 0, -4(6)	* Load the local var into ACC0
* END: variable (rvalue) access
* BEGIN: push to stack
69: LDA 3, -48(5)	* Subtract the stack limit from SP - store in ACC3
70: LDC 2, 55(0)	* Load diagnostic char into ACC2
71: JLE 3, 88(4)	* stack failure
72: ST 0, 0(5)	* save ACC0 into the current SP location
73: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: variable (rvalue) access
74: LD 0, -5(6)	* Load the local var into ACC0
* END: variable (rvalue) access
75: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
76: LD 1, 0(5)	* Load stored result into ACC1
77: ADD 0, 0, 1	* Add ACC0 & ACC1 placing result in ACC0
* BEGIN: push to stack
78: LDA 3, -48(5)	* Subtract the stack limit from SP - store in ACC3
79: LDC 2, 50(0)	* Load diagnostic char into ACC2
80: JLE 3, 88(4)	* stack failure
81: ST 0, 0(5)	* save ACC0 into the current SP location
82: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: assignment
83: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
84: LD 0, 0(5)	* Load stored result into ACC0
85: ST 0, 45(4)	* Store ACC0 into global offset
* END: assignment
86: LD 0, 0(6)	* Load the return address from the 1st slot in the AR to ACC0
87: LDA 7, 0(0)	* Return to calling location (stored in ACC0)
* END: procedure code
* BEGIN: stack limit message handler
88: LDC 0, 25(0)	* Load the error message into ACC0
89: LDA 1, 1(0)	* Increment the address stored in ACC0 to get the string's char location (put in ACC1)
90: LD 0, 0(0)	* Load the string size into ACC0
91: JEQ 0, 5(7)	* Jump to end when run out of string
92: LDA 0, -1(0)	* subtract one from string size
93: LD 3, 0(1)	* Load next char from string into ACC3
94: LDA 1, 1(1)	* increment pointer into string
95: OUTC 3, 0, 0	* Write out character in ACC3
96: LDA 7, -6(7)	* Go back to start of loop
97: OUTC 2, 0, 0	* Write out diagnostic char in ACC2
98: OUTNL 0, 0, 0	* dump out the newline
99: HALT 0, 0, 0	* Halt for stack limit
* END: stack limit message handler
