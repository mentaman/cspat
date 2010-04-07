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
7: JLE 3, 115(4)	* stack failure
8: ST 0, 0(5)	* Store return address (in ACC0) to SP/FP
* return value sits at SP-1/FP-1
9: ST 5, -2(5)	* Store SP to SP-2/FP-2
10: ST 6, -3(5)	* Store FP to SP-3/FP-3
11: LDA 5, -4(5)	* decrement SP by 4 (i.e., 4 pushes)
12: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
13: LDC 2, 99(0)	* Load diagnostic char into ACC2
14: JLE 3, 115(4)	* stack failure
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
22: LDC 0, 0(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: push to stack
23: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
24: LDC 2, 51(0)	* Load diagnostic char into ACC2
25: JLE 3, 115(4)	* stack failure
26: ST 0, 0(5)	* save ACC0 into the current SP location
27: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
28: LDC 0, 3(0)	* Load a constant into ACC0
* END: load an int constant
29: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
30: LD 1, 0(5)	* Load stored result into ACC1
* BEGIN: >
31: SUB 0, 1, 0	* for >, subtract right from left
32: JGT 0, 2(7)	* Jump to Load 1 if ACC0 > 0
33: LDC 0, 0(0)	* Load 0 into ACC0
34: LDA 7, 1(7)	* Jump over Load 1
35: LDC 0, 1(0)	* Load 1 into ACC0
* END: >
36: JEQ 0, 27(7)	* if left is false jump over the rest of the and
* BEGIN: push to stack
37: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
38: LDC 2, 49(0)	* Load diagnostic char into ACC2
39: JLE 3, 115(4)	* stack failure
40: ST 0, 0(5)	* save ACC0 into the current SP location
41: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
42: LDC 0, 3(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: push to stack
43: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
44: LDC 2, 51(0)	* Load diagnostic char into ACC2
45: JLE 3, 115(4)	* stack failure
46: ST 0, 0(5)	* save ACC0 into the current SP location
47: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
48: LDC 0, 4(0)	* Load a constant into ACC0
* END: load an int constant
49: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
50: LD 1, 0(5)	* Load stored result into ACC1
* BEGIN: <
51: SUB 0, 1, 0	* for <, subtract right from left
52: JLT 0, 2(7)	* Jump to Load 1 if ACC0 < 0
53: LDC 0, 0(0)	* Load 0 into ACC0
54: LDA 7, 1(7)	* Jump over Load 1
55: LDC 0, 1(0)	* Load 1 into ACC0
* END: <
56: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
57: LD 1, 0(5)	* Load stored result into ACC1
58: ADD 0, 1, 0	* for AND, add right and left
59: LDA 0, -2(0)	* Then subtract 2
60: JEQ 0, 2(7)	* Jump to Load 1 if ACC0 == 0
61: LDC 0, 0(0)	* Load 0 into ACC0
62: LDA 7, 1(7)	* Jump over Load 1
63: LDC 0, 1(0)	* Load 1 into ACC0
64: JGT 0, 24(7)	* Jump over rest of logical or code
* BEGIN: push to stack
65: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
66: LDC 2, 57(0)	* Load diagnostic char into ACC2
67: JLE 3, 115(4)	* stack failure
68: ST 0, 0(5)	* save ACC0 into the current SP location
69: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
70: LDC 0, 4(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: push to stack
71: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
72: LDC 2, 51(0)	* Load diagnostic char into ACC2
73: JLE 3, 115(4)	* stack failure
74: ST 0, 0(5)	* save ACC0 into the current SP location
75: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
76: LDC 0, 6(0)	* Load a constant into ACC0
* END: load an int constant
77: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
78: LD 1, 0(5)	* Load stored result into ACC1
* BEGIN: <=
79: SUB 0, 1, 0	* for <=, subtract right from left
80: JLE 0, 2(7)	* Jump to Load 1 if ACC0 <= 0
81: LDC 0, 0(0)	* Load 0 into ACC0
82: LDA 7, 1(7)	* Jump over Load 1
83: LDC 0, 1(0)	* Load 1 into ACC0
* END: <=
84: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
85: LD 1, 0(5)	* Load stored result into ACC1
86: ADD 0, 1, 0	* for OR, add right and left
87: JEQ 0, 1(7)	* Jump over Load 1 if ACC0 == 0
88: LDC 0, 1(0)	* Load 1 into ACC0
* BEGIN: push to stack
89: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
90: LDC 2, 50(0)	* Load diagnostic char into ACC2
91: JLE 3, 115(4)	* stack failure
92: ST 0, 0(5)	* save ACC0 into the current SP location
93: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: assignment
94: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
95: LD 0, 0(5)	* Load stored result into ACC0
96: ST 0, -4(6)	* Store ACC0 into local offset (relative to FP)
* END: assignment
* BEGIN: procedure call
97: LDA 0, 13(7)	* Get return address into ACC0
98: LDA 3, -49(5)	* Subtract the stack limit from SP - store in ACC3
99: LDC 2, 97(0)	* Load diagnostic char into ACC2
100: JLE 3, 115(4)	* stack failure
101: ST 0, 0(5)	* Store return address (in ACC0) to SP/FP
* return value sits at SP-1/FP-1
102: ST 5, -2(5)	* Store SP to SP-2/FP-2
103: ST 6, -3(5)	* Store FP to SP-3/FP-3
104: LDA 5, -4(5)	* decrement SP by 4 (i.e., 4 pushes)
105: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
106: LDC 2, 99(0)	* Load diagnostic char into ACC2
107: JLE 3, 115(4)	* stack failure
108: LDA 5, -1(5)	* decrement SP by local var's size (i.e., push)
109: LDA 6, 5(5)	* Set FP to be the "pre-push of AR" SP
* SP already points to end of the AR
110: LDA 7, 21(4)	* Jump to the start of the proc
111: LD 5, -2(6)	* Restore SP from FP-2
112: LD 6, -3(6)	* Restore FP from FP-3
* END: procedure call
113: LD 0, 0(6)	* Load the return address from the 1st slot in the AR to ACC0
114: LDA 7, 0(0)	* Return to calling location (stored in ACC0)
* END: procedure code
* BEGIN: stack limit message handler
115: LDC 0, 25(0)	* Load the error message into ACC0
116: LDA 1, 1(0)	* Increment the address stored in ACC0 to get the string's char location (put in ACC1)
117: LD 0, 0(0)	* Load the string size into ACC0
118: JEQ 0, 5(7)	* Jump to end when run out of string
119: LDA 0, -1(0)	* subtract one from string size
120: LD 3, 0(1)	* Load next char from string into ACC3
121: LDA 1, 1(1)	* increment pointer into string
122: OUTC 3, 0, 0	* Write out character in ACC3
123: LDA 7, -6(7)	* Go back to start of loop
124: OUTC 2, 0, 0	* Write out diagnostic char in ACC2
125: OUTNL 0, 0, 0	* dump out the newline
126: HALT 0, 0, 0	* Halt for stack limit
* END: stack limit message handler
