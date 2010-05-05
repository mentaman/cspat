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
4: LDA 0, 19(7)	* Get return address into ACC0
5: LDA 3, -49(5)	* Subtract the stack limit from SP - store in ACC3
6: LDC 2, 97(0)	* Load diagnostic char into ACC2
7: JLE 3, 102(4)	* stack failure
8: ST 0, 0(5)	* Store return address (in ACC0) to SP/FP
* return value sits at SP-1/FP-1
9: ST 5, -2(5)	* Store SP to SP-2/FP-2
10: ST 6, -3(5)	* Store FP to SP-3/FP-3
11: LDA 5, -4(5)	* decrement SP by 4 (i.e., 4 pushes)
12: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
13: LDC 2, 99(0)	* Load diagnostic char into ACC2
14: JLE 3, 102(4)	* stack failure
15: LDA 5, -1(5)	* decrement SP by local var's size (i.e., push)
* BEGIN: load a bool value into ACC0
16: LDC 0, 1(0)	* Load a boolean value into ACC0
* END: load a bool value into ACC0
17: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
18: LDC 2, 98(0)	* Load diagnostic char into ACC2
19: JLE 3, 102(4)	* stack failure
20: ST 0, 0(5)	* Store param in slot
21: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
22: LDA 6, 6(5)	* Set FP to be the "pre-push of AR" SP
* SP already points to end of the AR
23: LDA 7, 58(4)	* Jump to the start of the proc
24: LD 0, -4(6)	* Load the return value into ACC0
25: LD 5, -2(6)	* Restore SP from FP-2
26: LD 6, -3(6)	* Restore FP from FP-3
* END: procedure call
* BEGIN: write(s)
27: OUT 0, 0, 0	* write out the int value in ACC0
28: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
* BEGIN: procedure call
29: LDA 0, 19(7)	* Get return address into ACC0
30: LDA 3, -49(5)	* Subtract the stack limit from SP - store in ACC3
31: LDC 2, 97(0)	* Load diagnostic char into ACC2
32: JLE 3, 102(4)	* stack failure
33: ST 0, 0(5)	* Store return address (in ACC0) to SP/FP
* return value sits at SP-1/FP-1
34: ST 5, -2(5)	* Store SP to SP-2/FP-2
35: ST 6, -3(5)	* Store FP to SP-3/FP-3
36: LDA 5, -4(5)	* decrement SP by 4 (i.e., 4 pushes)
37: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
38: LDC 2, 99(0)	* Load diagnostic char into ACC2
39: JLE 3, 102(4)	* stack failure
40: LDA 5, -1(5)	* decrement SP by local var's size (i.e., push)
* BEGIN: load a bool value into ACC0
41: LDC 0, 0(0)	* Load a boolean value into ACC0
* END: load a bool value into ACC0
42: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
43: LDC 2, 98(0)	* Load diagnostic char into ACC2
44: JLE 3, 102(4)	* stack failure
45: ST 0, 0(5)	* Store param in slot
46: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
47: LDA 6, 6(5)	* Set FP to be the "pre-push of AR" SP
* SP already points to end of the AR
48: LDA 7, 58(4)	* Jump to the start of the proc
49: LD 0, -4(6)	* Load the return value into ACC0
50: LD 5, -2(6)	* Restore SP from FP-2
51: LD 6, -3(6)	* Restore FP from FP-3
* END: procedure call
* BEGIN: write(s)
52: OUT 0, 0, 0	* write out the int value in ACC0
53: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
* BEGIN: load an int constant
54: LDC 0, 4(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: write(s)
55: OUT 0, 0, 0	* write out the int value in ACC0
56: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
57: HALT 0, 0, 0	* End of Program
* BEGIN: procedure code
58: LDA 0, 0(0)	* NOOP to mark beginning of proc
* BEGIN: load an int constant
59: LDC 0, 3(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: push to stack
60: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
61: LDC 2, 50(0)	* Load diagnostic char into ACC2
62: JLE 3, 102(4)	* stack failure
63: ST 0, 0(5)	* save ACC0 into the current SP location
64: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: assignment
65: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
66: LD 0, 0(5)	* Load stored result into ACC0
67: ST 0, -4(6)	* Store ACC0 into local offset (relative to FP)
* END: assignment
* BEGIN: variable (rvalue) access
68: LD 0, -5(6)	* Load the local var into ACC0
* END: variable (rvalue) access
69: JEQ 0, 11(7)	* Jump over the then stmts if false
* BEGIN: load an int constant
70: LDC 0, 1(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: push to stack
71: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
72: LDC 2, 50(0)	* Load diagnostic char into ACC2
73: JLE 3, 102(4)	* stack failure
74: ST 0, 0(5)	* save ACC0 into the current SP location
75: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: assignment
76: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
77: LD 0, 0(5)	* Load stored result into ACC0
78: ST 0, -4(6)	* Store ACC0 into local offset (relative to FP)
* END: assignment
* BEGIN: return
79: LDA 7, 100(4)	* Jump to the end of the proc
* END: return
80: LDA 7, 10(7)	* Jump over the rest of the if
* BEGIN: load an int constant
81: LDC 0, 2(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: push to stack
82: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
83: LDC 2, 50(0)	* Load diagnostic char into ACC2
84: JLE 3, 102(4)	* stack failure
85: ST 0, 0(5)	* save ACC0 into the current SP location
86: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: assignment
87: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
88: LD 0, 0(5)	* Load stored result into ACC0
89: ST 0, -4(6)	* Store ACC0 into local offset (relative to FP)
* END: assignment
* BEGIN: return
90: LDA 7, 100(4)	* Jump to the end of the proc
* END: return
* BEGIN: load an int constant
91: LDC 0, 3(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: push to stack
92: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
93: LDC 2, 50(0)	* Load diagnostic char into ACC2
94: JLE 3, 102(4)	* stack failure
95: ST 0, 0(5)	* save ACC0 into the current SP location
96: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: assignment
97: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
98: LD 0, 0(5)	* Load stored result into ACC0
99: ST 0, -4(6)	* Store ACC0 into local offset (relative to FP)
* END: assignment
100: LD 0, 0(6)	* Load the return address from the 1st slot in the AR to ACC0
101: LDA 7, 0(0)	* Return to calling location (stored in ACC0)
* END: procedure code
* BEGIN: stack limit message handler
102: LDC 0, 25(0)	* Load the error message into ACC0
103: LDA 1, 1(0)	* Increment the address stored in ACC0 to get the string's char location (put in ACC1)
104: LD 0, 0(0)	* Load the string size into ACC0
105: JEQ 0, 5(7)	* Jump to end when run out of string
106: LDA 0, -1(0)	* subtract one from string size
107: LD 3, 0(1)	* Load next char from string into ACC3
108: LDA 1, 1(1)	* increment pointer into string
109: OUTC 3, 0, 0	* Write out character in ACC3
110: LDA 7, -6(7)	* Go back to start of loop
111: OUTC 2, 0, 0	* Write out diagnostic char in ACC2
112: OUTNL 0, 0, 0	* dump out the newline
113: HALT 0, 0, 0	* Halt for stack limit
* END: stack limit message handler
