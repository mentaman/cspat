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
7: JLE 3, 110(4)	* stack failure
8: ST 0, 0(5)	* Store return address (in ACC0) to SP/FP
* return value sits at SP-1/FP-1
9: ST 5, -2(5)	* Store SP to SP-2/FP-2
10: ST 6, -3(5)	* Store FP to SP-3/FP-3
11: LDA 5, -4(5)	* decrement SP by 4 (i.e., 4 pushes)
12: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
13: LDC 2, 99(0)	* Load diagnostic char into ACC2
14: JLE 3, 110(4)	* stack failure
15: LDA 5, -1(5)	* decrement SP by local var's size (i.e., push)
* BEGIN: load an int constant
16: LDC 0, 20(0)	* Load a constant into ACC0
* END: load an int constant
17: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
18: LDC 2, 98(0)	* Load diagnostic char into ACC2
19: JLE 3, 110(4)	* stack failure
20: ST 0, 0(5)	* Store param in slot
21: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
22: LDA 6, 6(5)	* Set FP to be the "pre-push of AR" SP
* SP already points to end of the AR
23: LDA 7, 30(4)	* Jump to the start of the proc
24: LD 0, -4(6)	* Load the return value into ACC0
25: LD 5, -2(6)	* Restore SP from FP-2
26: LD 6, -3(6)	* Restore FP from FP-3
* END: procedure call
* BEGIN: write(s)
27: OUT 0, 0, 0	* write out the int value in ACC0
28: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
29: HALT 0, 0, 0	* End of Program
* BEGIN: procedure code
30: LDA 0, 0(0)	* NOOP to mark beginning of proc
* BEGIN: variable (rvalue) access
31: LD 0, -5(6)	* Load the local var into ACC0
* END: variable (rvalue) access
* BEGIN: write(s)
32: OUT 0, 0, 0	* write out the int value in ACC0
33: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
* BEGIN: variable (rvalue) access
34: LD 0, -5(6)	* Load the local var into ACC0
* END: variable (rvalue) access
* BEGIN: push to stack
35: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
36: LDC 2, 51(0)	* Load diagnostic char into ACC2
37: JLE 3, 110(4)	* stack failure
38: ST 0, 0(5)	* save ACC0 into the current SP location
39: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
40: LDC 0, 10(0)	* Load a constant into ACC0
* END: load an int constant
41: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
42: LD 1, 0(5)	* Load stored result into ACC1
* BEGIN: >
43: SUB 0, 1, 0	* for >, subtract right from left
44: JGT 0, 2(7)	* Jump to Load 1 if ACC0 > 0
45: LDC 0, 0(0)	* Load 0 into ACC0
46: LDA 7, 1(7)	* Jump over Load 1
47: LDC 0, 1(0)	* Load 1 into ACC0
* END: >
48: JEQ 0, 10(7)	* Jump over the then stmts if false
* BEGIN: load an int constant
49: LDC 0, 0(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: push to stack
50: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
51: LDC 2, 50(0)	* Load diagnostic char into ACC2
52: JLE 3, 110(4)	* stack failure
53: ST 0, 0(5)	* save ACC0 into the current SP location
54: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: assignment
55: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
56: LD 0, 0(5)	* Load stored result into ACC0
57: ST 0, -4(6)	* Store ACC0 into local offset (relative to FP)
* END: assignment
* BEGIN: return
58: LDA 7, 108(4)	* Jump to the end of the proc
* END: return
* BEGIN: procedure call
59: LDA 0, 28(7)	* Get return address into ACC0
60: LDA 3, -49(5)	* Subtract the stack limit from SP - store in ACC3
61: LDC 2, 97(0)	* Load diagnostic char into ACC2
62: JLE 3, 110(4)	* stack failure
63: ST 0, 0(5)	* Store return address (in ACC0) to SP/FP
* return value sits at SP-1/FP-1
64: ST 5, -2(5)	* Store SP to SP-2/FP-2
65: ST 6, -3(5)	* Store FP to SP-3/FP-3
66: LDA 5, -4(5)	* decrement SP by 4 (i.e., 4 pushes)
67: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
68: LDC 2, 99(0)	* Load diagnostic char into ACC2
69: JLE 3, 110(4)	* stack failure
70: LDA 5, -1(5)	* decrement SP by local var's size (i.e., push)
* BEGIN: variable (rvalue) access
71: LD 0, -5(6)	* Load the local var into ACC0
* END: variable (rvalue) access
* BEGIN: push to stack
72: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
73: LDC 2, 55(0)	* Load diagnostic char into ACC2
74: JLE 3, 110(4)	* stack failure
75: ST 0, 0(5)	* save ACC0 into the current SP location
76: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
77: LDC 0, 1(0)	* Load a constant into ACC0
* END: load an int constant
78: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
79: LD 1, 0(5)	* Load stored result into ACC1
80: SUB 0, 1, 0	* Subtract ACC0 from ACC1 placing result in ACC0
81: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
82: LDC 2, 98(0)	* Load diagnostic char into ACC2
83: JLE 3, 110(4)	* stack failure
84: ST 0, 0(5)	* Store param in slot
85: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
86: LDA 6, 6(5)	* Set FP to be the "pre-push of AR" SP
* SP already points to end of the AR
87: LDA 7, 30(4)	* Jump to the start of the proc
88: LD 0, -4(6)	* Load the return value into ACC0
89: LD 5, -2(6)	* Restore SP from FP-2
90: LD 6, -3(6)	* Restore FP from FP-3
* END: procedure call
* BEGIN: push to stack
91: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
92: LDC 2, 55(0)	* Load diagnostic char into ACC2
93: JLE 3, 110(4)	* stack failure
94: ST 0, 0(5)	* save ACC0 into the current SP location
95: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
96: LDC 0, 2(0)	* Load a constant into ACC0
* END: load an int constant
97: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
98: LD 1, 0(5)	* Load stored result into ACC1
99: ADD 0, 0, 1	* Add ACC0 & ACC1 placing result in ACC0
* BEGIN: push to stack
100: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
101: LDC 2, 50(0)	* Load diagnostic char into ACC2
102: JLE 3, 110(4)	* stack failure
103: ST 0, 0(5)	* save ACC0 into the current SP location
104: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: assignment
105: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
106: LD 0, 0(5)	* Load stored result into ACC0
107: ST 0, -4(6)	* Store ACC0 into local offset (relative to FP)
* END: assignment
108: LD 0, 0(6)	* Load the return address from the 1st slot in the AR to ACC0
109: LDA 7, 0(0)	* Return to calling location (stored in ACC0)
* END: procedure code
* BEGIN: stack limit message handler
110: LDC 0, 25(0)	* Load the error message into ACC0
111: LDA 1, 1(0)	* Increment the address stored in ACC0 to get the string's char location (put in ACC1)
112: LD 0, 0(0)	* Load the string size into ACC0
113: JEQ 0, 5(7)	* Jump to end when run out of string
114: LDA 0, -1(0)	* subtract one from string size
115: LD 3, 0(1)	* Load next char from string into ACC3
116: LDA 1, 1(1)	* increment pointer into string
117: OUTC 3, 0, 0	* Write out character in ACC3
118: LDA 7, -6(7)	* Go back to start of loop
119: OUTC 2, 0, 0	* Write out diagnostic char in ACC2
120: OUTNL 0, 0, 0	* dump out the newline
121: HALT 0, 0, 0	* Halt for stack limit
* END: stack limit message handler
