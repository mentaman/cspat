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
* BEGIN: procedure call
4: LDA 0, 13(7)	* Get return address into ACC0
5: LDA 3, -49(5)	* Subtract the stack limit from SP - store in ACC3
6: LDC 2, 97(0)	* Load diagnostic char into ACC2
7: JLE 3, 87(4)	* stack failure
8: ST 0, 0(5)	* Store return address (in ACC0) to SP/FP
* return value sits at SP-1/FP-1
9: ST 5, -2(5)	* Store SP to SP-2/FP-2
10: ST 6, -3(5)	* Store FP to SP-3/FP-3
11: LDA 5, -4(5)	* decrement SP by 4 (i.e., 4 pushes)
12: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
13: LDC 2, 99(0)	* Load diagnostic char into ACC2
14: JLE 3, 87(4)	* stack failure
15: LDA 5, -1(5)	* decrement SP by local var's size (i.e., push)
16: LDA 6, 5(5)	* Set FP to be the "pre-push of AR" SP
* SP already points to end of the AR
17: LDA 7, 21(4)	* Jump to the start of the proc
18: LD 5, -2(6)	* Restore SP from FP-2
19: LD 6, -3(6)	* Restore FP from FP-3
* END: procedure call
20: HALT 0, 0, 0	* End of Program
* BEGIN: procedure code
21: LDA 0, 0(0)	* NOOP to mark beginning of proc
* BEGIN: load an int constant
22: LDC 0, 100(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: push to stack
23: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
24: LDC 2, 55(0)	* Load diagnostic char into ACC2
25: JLE 3, 87(4)	* stack failure
26: ST 0, 0(5)	* save ACC0 into the current SP location
27: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
28: LDC 0, 3(0)	* Load a constant into ACC0
* END: load an int constant
29: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
30: LD 1, 0(5)	* Load stored result into ACC1
31: DIV 0, 1, 0	* Divide ACC1 by ACC0 placing result in ACC0
* BEGIN: push to stack
32: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
33: LDC 2, 55(0)	* Load diagnostic char into ACC2
34: JLE 3, 87(4)	* stack failure
35: ST 0, 0(5)	* save ACC0 into the current SP location
36: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
37: LDC 0, 56(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: push to stack
38: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
39: LDC 2, 55(0)	* Load diagnostic char into ACC2
40: JLE 3, 87(4)	* stack failure
41: ST 0, 0(5)	* save ACC0 into the current SP location
42: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
43: LDC 0, 7(0)	* Load a constant into ACC0
* END: load an int constant
44: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
45: LD 1, 0(5)	* Load stored result into ACC1
* BEGIN: mod
46: DIV 2, 1, 0	* Divide left by right & put result in ACC2
47: MUL 2, 2, 0	* Multiply the right by the divide result & put in ACC2
48: SUB 0, 1, 2	* Subtract the multiplication result from left & put in ACC
* END: mod
49: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
50: LD 1, 0(5)	* Load stored result into ACC1
51: ADD 0, 0, 1	* Add ACC0 & ACC1 placing result in ACC0
* BEGIN: push to stack
52: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
53: LDC 2, 55(0)	* Load diagnostic char into ACC2
54: JLE 3, 87(4)	* stack failure
55: ST 0, 0(5)	* save ACC0 into the current SP location
56: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
57: LDC 0, 3(0)	* Load a constant into ACC0
* END: load an int constant
58: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
59: LD 1, 0(5)	* Load stored result into ACC1
60: SUB 0, 1, 0	* Subtract ACC0 from ACC1 placing result in ACC0
* BEGIN: push to stack
61: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
62: LDC 2, 50(0)	* Load diagnostic char into ACC2
63: JLE 3, 87(4)	* stack failure
64: ST 0, 0(5)	* save ACC0 into the current SP location
65: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: assignment
66: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
67: LD 0, 0(5)	* Load stored result into ACC0
68: ST 0, -4(6)	* Store ACC0 into local offset (relative to FP)
* END: assignment
* BEGIN: procedure call
69: LDA 0, 13(7)	* Get return address into ACC0
70: LDA 3, -49(5)	* Subtract the stack limit from SP - store in ACC3
71: LDC 2, 97(0)	* Load diagnostic char into ACC2
72: JLE 3, 87(4)	* stack failure
73: ST 0, 0(5)	* Store return address (in ACC0) to SP/FP
* return value sits at SP-1/FP-1
74: ST 5, -2(5)	* Store SP to SP-2/FP-2
75: ST 6, -3(5)	* Store FP to SP-3/FP-3
76: LDA 5, -4(5)	* decrement SP by 4 (i.e., 4 pushes)
77: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
78: LDC 2, 99(0)	* Load diagnostic char into ACC2
79: JLE 3, 87(4)	* stack failure
80: LDA 5, -1(5)	* decrement SP by local var's size (i.e., push)
81: LDA 6, 5(5)	* Set FP to be the "pre-push of AR" SP
* SP already points to end of the AR
82: LDA 7, 21(4)	* Jump to the start of the proc
83: LD 5, -2(6)	* Restore SP from FP-2
84: LD 6, -3(6)	* Restore FP from FP-3
* END: procedure call
85: LD 0, 0(6)	* Load the return address from the 1st slot in the AR to ACC0
86: LDA 7, 0(0)	* Return to calling location (stored in ACC0)
* END: procedure code
* BEGIN: stack limit message handler
87: LDC 0, 25(0)	* Load the error message into ACC0
88: LDA 1, 1(0)	* Increment the address stored in ACC0 to get the string's char location (put in ACC1)
89: LD 0, 0(0)	* Load the string size into ACC0
90: JEQ 0, 5(7)	* Jump to end when run out of string
91: LDA 0, -1(0)	* subtract one from string size
92: LD 3, 0(1)	* Load next char from string into ACC3
93: LDA 1, 1(1)	* increment pointer into string
94: OUTC 3, 0, 0	* Write out character in ACC3
95: LDA 7, -6(7)	* Go back to start of loop
96: OUTC 2, 0, 0	* Write out diagnostic char in ACC2
97: OUTNL 0, 0, 0	* dump out the newline
98: HALT 0, 0, 0	* Halt for stack limit
* END: stack limit message handler
