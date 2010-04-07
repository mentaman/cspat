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
7: JLE 3, 90(4)	* stack failure
8: ST 0, 0(5)	* Store return address (in ACC0) to SP/FP
* return value sits at SP-1/FP-1
9: ST 5, -2(5)	* Store SP to SP-2/FP-2
10: ST 6, -3(5)	* Store FP to SP-3/FP-3
11: LDA 5, -4(5)	* decrement SP by 4 (i.e., 4 pushes)
12: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
13: LDC 2, 99(0)	* Load diagnostic char into ACC2
14: JLE 3, 90(4)	* stack failure
15: LDA 5, -1(5)	* decrement SP by local var's size (i.e., push)
16: LDA 6, 5(5)	* Set FP to be the "pre-push of AR" SP
* SP already points to end of the AR
17: LDA 7, 24(4)	* Jump to the start of the proc
18: LD 5, -2(6)	* Restore SP from FP-2
19: LD 6, -3(6)	* Restore FP from FP-3
* END: procedure call
* BEGIN: load an int constant
20: LDC 0, 6(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: write(s)
21: OUT 0, 0, 0	* write out the int value in ACC0
22: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
23: HALT 0, 0, 0	* End of Program
* BEGIN: procedure code
24: LDA 0, 0(0)	* NOOP to mark beginning of proc
* BEGIN: load an int constant
25: LDC 0, 0(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: push to stack
26: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
27: LDC 2, 50(0)	* Load diagnostic char into ACC2
28: JLE 3, 90(4)	* stack failure
29: ST 0, 0(5)	* save ACC0 into the current SP location
30: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: assignment
31: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
32: LD 0, 0(5)	* Load stored result into ACC0
33: ST 0, -4(6)	* Store ACC0 into local offset (relative to FP)
* END: assignment
* BEGIN: Do loop
* BEGIN: variable (rvalue) access
34: LD 0, -4(6)	* Load the local var into ACC0
* END: variable (rvalue) access
* BEGIN: push to stack
35: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
36: LDC 2, 51(0)	* Load diagnostic char into ACC2
37: JLE 3, 90(4)	* stack failure
38: ST 0, 0(5)	* save ACC0 into the current SP location
39: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
40: LDC 0, 5(0)	* Load a constant into ACC0
* END: load an int constant
41: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
42: LD 1, 0(5)	* Load stored result into ACC1
* BEGIN: <
43: SUB 0, 1, 0	* for <, subtract right from left
44: JLT 0, 2(7)	* Jump to Load 1 if ACC0 < 0
45: LDC 0, 0(0)	* Load 0 into ACC0
46: LDA 7, 1(7)	* Jump over Load 1
47: LDC 0, 1(0)	* Load 1 into ACC0
* END: <
48: JEQ 0, 38(7)	* Jump to the end of the loop if done
* BEGIN: variable (rvalue) access
49: LD 0, -4(6)	* Load the local var into ACC0
* END: variable (rvalue) access
* BEGIN: push to stack
50: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
51: LDC 2, 51(0)	* Load diagnostic char into ACC2
52: JLE 3, 90(4)	* stack failure
53: ST 0, 0(5)	* save ACC0 into the current SP location
54: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
55: LDC 0, 3(0)	* Load a constant into ACC0
* END: load an int constant
56: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
57: LD 1, 0(5)	* Load stored result into ACC1
58: SUB 0, 1, 0	* for =, subtract right from left
59: JEQ 0, 2(7)	* Jump to Load 1 if ACC0 == 0
60: LDC 0, 0(0)	* Load 0 into ACC0
61: LDA 7, 1(7)	* Jump over Load 1
62: LDC 0, 1(0)	* Load 1 into ACC0
63: JEQ 0, 1(7)	* Jump over the then stmts if false
* BEGIN: break
64: LDA 7, 87(4)	* skip to the end of the loop
* END: break
* BEGIN: variable (rvalue) access
65: LD 0, -4(6)	* Load the local var into ACC0
* END: variable (rvalue) access
* BEGIN: write(s)
66: OUT 0, 0, 0	* write out the int value in ACC0
67: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
* BEGIN: variable (rvalue) access
68: LD 0, -4(6)	* Load the local var into ACC0
* END: variable (rvalue) access
* BEGIN: push to stack
69: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
70: LDC 2, 55(0)	* Load diagnostic char into ACC2
71: JLE 3, 90(4)	* stack failure
72: ST 0, 0(5)	* save ACC0 into the current SP location
73: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
74: LDC 0, 1(0)	* Load a constant into ACC0
* END: load an int constant
75: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
76: LD 1, 0(5)	* Load stored result into ACC1
77: ADD 0, 0, 1	* Add ACC0 & ACC1 placing result in ACC0
* BEGIN: push to stack
78: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
79: LDC 2, 50(0)	* Load diagnostic char into ACC2
80: JLE 3, 90(4)	* stack failure
81: ST 0, 0(5)	* save ACC0 into the current SP location
82: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: assignment
83: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
84: LD 0, 0(5)	* Load stored result into ACC0
85: ST 0, -4(6)	* Store ACC0 into local offset (relative to FP)
* END: assignment
86: LDA 7, -53(7)	* Jump back to start of loop
87: LDA 5, 0(5)	* NOOP to mark end of loop
* END: Do loop
88: LD 0, 0(6)	* Load the return address from the 1st slot in the AR to ACC0
89: LDA 7, 0(0)	* Return to calling location (stored in ACC0)
* END: procedure code
* BEGIN: stack limit message handler
90: LDC 0, 25(0)	* Load the error message into ACC0
91: LDA 1, 1(0)	* Increment the address stored in ACC0 to get the string's char location (put in ACC1)
92: LD 0, 0(0)	* Load the string size into ACC0
93: JEQ 0, 5(7)	* Jump to end when run out of string
94: LDA 0, -1(0)	* subtract one from string size
95: LD 3, 0(1)	* Load next char from string into ACC3
96: LDA 1, 1(1)	* increment pointer into string
97: OUTC 3, 0, 0	* Write out character in ACC3
98: LDA 7, -6(7)	* Go back to start of loop
99: OUTC 2, 0, 0	* Write out diagnostic char in ACC2
100: OUTNL 0, 0, 0	* dump out the newline
101: HALT 0, 0, 0	* Halt for stack limit
* END: stack limit message handler
