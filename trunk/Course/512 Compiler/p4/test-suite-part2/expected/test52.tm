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
* BEGIN: load a bool value into ACC0
4: LDC 0, 1(0)	* Load a boolean value into ACC0
* END: load a bool value into ACC0
5: JGT 0, 27(7)	* Jump over rest of logical or code
* BEGIN: push to stack
6: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
7: LDC 2, 57(0)	* Load diagnostic char into ACC2
8: JLE 3, 96(4)	* stack failure
9: ST 0, 0(5)	* save ACC0 into the current SP location
10: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: procedure call
11: LDA 0, 13(7)	* Get return address into ACC0
12: LDA 3, -49(5)	* Subtract the stack limit from SP - store in ACC3
13: LDC 2, 97(0)	* Load diagnostic char into ACC2
14: JLE 3, 96(4)	* stack failure
15: ST 0, 0(5)	* Store return address (in ACC0) to SP/FP
* return value sits at SP-1/FP-1
16: ST 5, -2(5)	* Store SP to SP-2/FP-2
17: ST 6, -3(5)	* Store FP to SP-3/FP-3
18: LDA 5, -4(5)	* decrement SP by 4 (i.e., 4 pushes)
19: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
20: LDC 2, 99(0)	* Load diagnostic char into ACC2
21: JLE 3, 96(4)	* stack failure
22: LDA 5, -1(5)	* decrement SP by local var's size (i.e., push)
23: LDA 6, 5(5)	* Set FP to be the "pre-push of AR" SP
* SP already points to end of the AR
24: LDA 7, 81(4)	* Jump to the start of the proc
25: LD 0, -4(6)	* Load the return value into ACC0
26: LD 5, -2(6)	* Restore SP from FP-2
27: LD 6, -3(6)	* Restore FP from FP-3
* END: procedure call
28: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
29: LD 1, 0(5)	* Load stored result into ACC1
30: ADD 0, 1, 0	* for OR, add right and left
31: JEQ 0, 1(7)	* Jump over Load 1 if ACC0 == 0
32: LDC 0, 1(0)	* Load 1 into ACC0
33: JEQ 0, 3(7)	* Jump over the then stmts if false
* BEGIN: load an int constant
34: LDC 0, 2(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: write(s)
35: OUT 0, 0, 0	* write out the int value in ACC0
36: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
* BEGIN: load a bool value into ACC0
37: LDC 0, 0(0)	* Load a boolean value into ACC0
* END: load a bool value into ACC0
38: JEQ 0, 30(7)	* if left is false jump over the rest of the and
* BEGIN: push to stack
39: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
40: LDC 2, 49(0)	* Load diagnostic char into ACC2
41: JLE 3, 96(4)	* stack failure
42: ST 0, 0(5)	* save ACC0 into the current SP location
43: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: procedure call
44: LDA 0, 13(7)	* Get return address into ACC0
45: LDA 3, -49(5)	* Subtract the stack limit from SP - store in ACC3
46: LDC 2, 97(0)	* Load diagnostic char into ACC2
47: JLE 3, 96(4)	* stack failure
48: ST 0, 0(5)	* Store return address (in ACC0) to SP/FP
* return value sits at SP-1/FP-1
49: ST 5, -2(5)	* Store SP to SP-2/FP-2
50: ST 6, -3(5)	* Store FP to SP-3/FP-3
51: LDA 5, -4(5)	* decrement SP by 4 (i.e., 4 pushes)
52: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
53: LDC 2, 99(0)	* Load diagnostic char into ACC2
54: JLE 3, 96(4)	* stack failure
55: LDA 5, -1(5)	* decrement SP by local var's size (i.e., push)
56: LDA 6, 5(5)	* Set FP to be the "pre-push of AR" SP
* SP already points to end of the AR
57: LDA 7, 81(4)	* Jump to the start of the proc
58: LD 0, -4(6)	* Load the return value into ACC0
59: LD 5, -2(6)	* Restore SP from FP-2
60: LD 6, -3(6)	* Restore FP from FP-3
* END: procedure call
61: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
62: LD 1, 0(5)	* Load stored result into ACC1
63: ADD 0, 1, 0	* for AND, add right and left
64: LDA 0, -2(0)	* Then subtract 2
65: JEQ 0, 2(7)	* Jump to Load 1 if ACC0 == 0
66: LDC 0, 0(0)	* Load 0 into ACC0
67: LDA 7, 1(7)	* Jump over Load 1
68: LDC 0, 1(0)	* Load 1 into ACC0
69: JEQ 0, 2(7)	* Jump to Load 1 if ACC0 == 0
70: LDC 0, 0(0)	* Load 0 into ACC0
71: LDA 7, 1(7)	* Jump over Load 1
72: LDC 0, 1(0)	* Load 1 into ACC0
73: JEQ 0, 3(7)	* Jump over the then stmts if false
* BEGIN: load an int constant
74: LDC 0, 3(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: write(s)
75: OUT 0, 0, 0	* write out the int value in ACC0
76: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
* BEGIN: load an int constant
77: LDC 0, 4(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: write(s)
78: OUT 0, 0, 0	* write out the int value in ACC0
79: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
80: HALT 0, 0, 0	* End of Program
* BEGIN: procedure code
81: LDA 0, 0(0)	* NOOP to mark beginning of proc
* BEGIN: load a bool value into ACC0
82: LDC 0, 1(0)	* Load a boolean value into ACC0
* END: load a bool value into ACC0
* BEGIN: push to stack
83: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
84: LDC 2, 50(0)	* Load diagnostic char into ACC2
85: JLE 3, 96(4)	* stack failure
86: ST 0, 0(5)	* save ACC0 into the current SP location
87: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: assignment
88: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
89: LD 0, 0(5)	* Load stored result into ACC0
90: ST 0, -4(6)	* Store ACC0 into local offset (relative to FP)
* END: assignment
* BEGIN: load an int constant
91: LDC 0, 1(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: write(s)
92: OUT 0, 0, 0	* write out the int value in ACC0
93: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
94: LD 0, 0(6)	* Load the return address from the 1st slot in the AR to ACC0
95: LDA 7, 0(0)	* Return to calling location (stored in ACC0)
* END: procedure code
* BEGIN: stack limit message handler
96: LDC 0, 25(0)	* Load the error message into ACC0
97: LDA 1, 1(0)	* Increment the address stored in ACC0 to get the string's char location (put in ACC1)
98: LD 0, 0(0)	* Load the string size into ACC0
99: JEQ 0, 5(7)	* Jump to end when run out of string
100: LDA 0, -1(0)	* subtract one from string size
101: LD 3, 0(1)	* Load next char from string into ACC3
102: LDA 1, 1(1)	* increment pointer into string
103: OUTC 3, 0, 0	* Write out character in ACC3
104: LDA 7, -6(7)	* Go back to start of loop
105: OUTC 2, 0, 0	* Write out diagnostic char in ACC2
106: OUTNL 0, 0, 0	* dump out the newline
107: HALT 0, 0, 0	* Halt for stack limit
* END: stack limit message handler
