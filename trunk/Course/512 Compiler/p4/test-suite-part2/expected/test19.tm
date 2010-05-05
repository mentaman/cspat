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
5: JEQ 0, 14(7)	* if left is false jump over the rest of the and
* BEGIN: push to stack
6: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
7: LDC 2, 49(0)	* Load diagnostic char into ACC2
8: JLE 3, 77(4)	* stack failure
9: ST 0, 0(5)	* save ACC0 into the current SP location
10: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load a bool value into ACC0
11: LDC 0, 0(0)	* Load a boolean value into ACC0
* END: load a bool value into ACC0
12: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
13: LD 1, 0(5)	* Load stored result into ACC1
14: ADD 0, 1, 0	* for AND, add right and left
15: LDA 0, -2(0)	* Then subtract 2
16: JEQ 0, 2(7)	* Jump to Load 1 if ACC0 == 0
17: LDC 0, 0(0)	* Load 0 into ACC0
18: LDA 7, 1(7)	* Jump over Load 1
19: LDC 0, 1(0)	* Load 1 into ACC0
* BEGIN: write(s)
20: OUT 0, 0, 0	* write out the int value in ACC0
21: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
* BEGIN: load a bool value into ACC0
22: LDC 0, 1(0)	* Load a boolean value into ACC0
* END: load a bool value into ACC0
23: JEQ 0, 14(7)	* if left is false jump over the rest of the and
* BEGIN: push to stack
24: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
25: LDC 2, 49(0)	* Load diagnostic char into ACC2
26: JLE 3, 77(4)	* stack failure
27: ST 0, 0(5)	* save ACC0 into the current SP location
28: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load a bool value into ACC0
29: LDC 0, 1(0)	* Load a boolean value into ACC0
* END: load a bool value into ACC0
30: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
31: LD 1, 0(5)	* Load stored result into ACC1
32: ADD 0, 1, 0	* for AND, add right and left
33: LDA 0, -2(0)	* Then subtract 2
34: JEQ 0, 2(7)	* Jump to Load 1 if ACC0 == 0
35: LDC 0, 0(0)	* Load 0 into ACC0
36: LDA 7, 1(7)	* Jump over Load 1
37: LDC 0, 1(0)	* Load 1 into ACC0
* BEGIN: write(s)
38: OUT 0, 0, 0	* write out the int value in ACC0
39: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
* BEGIN: load a bool value into ACC0
40: LDC 0, 0(0)	* Load a boolean value into ACC0
* END: load a bool value into ACC0
41: JEQ 0, 14(7)	* if left is false jump over the rest of the and
* BEGIN: push to stack
42: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
43: LDC 2, 49(0)	* Load diagnostic char into ACC2
44: JLE 3, 77(4)	* stack failure
45: ST 0, 0(5)	* save ACC0 into the current SP location
46: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load a bool value into ACC0
47: LDC 0, 1(0)	* Load a boolean value into ACC0
* END: load a bool value into ACC0
48: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
49: LD 1, 0(5)	* Load stored result into ACC1
50: ADD 0, 1, 0	* for AND, add right and left
51: LDA 0, -2(0)	* Then subtract 2
52: JEQ 0, 2(7)	* Jump to Load 1 if ACC0 == 0
53: LDC 0, 0(0)	* Load 0 into ACC0
54: LDA 7, 1(7)	* Jump over Load 1
55: LDC 0, 1(0)	* Load 1 into ACC0
* BEGIN: write(s)
56: OUT 0, 0, 0	* write out the int value in ACC0
57: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
* BEGIN: load a bool value into ACC0
58: LDC 0, 0(0)	* Load a boolean value into ACC0
* END: load a bool value into ACC0
59: JEQ 0, 14(7)	* if left is false jump over the rest of the and
* BEGIN: push to stack
60: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
61: LDC 2, 49(0)	* Load diagnostic char into ACC2
62: JLE 3, 77(4)	* stack failure
63: ST 0, 0(5)	* save ACC0 into the current SP location
64: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load a bool value into ACC0
65: LDC 0, 0(0)	* Load a boolean value into ACC0
* END: load a bool value into ACC0
66: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
67: LD 1, 0(5)	* Load stored result into ACC1
68: ADD 0, 1, 0	* for AND, add right and left
69: LDA 0, -2(0)	* Then subtract 2
70: JEQ 0, 2(7)	* Jump to Load 1 if ACC0 == 0
71: LDC 0, 0(0)	* Load 0 into ACC0
72: LDA 7, 1(7)	* Jump over Load 1
73: LDC 0, 1(0)	* Load 1 into ACC0
* BEGIN: write(s)
74: OUT 0, 0, 0	* write out the int value in ACC0
75: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
76: HALT 0, 0, 0	* End of Program
* BEGIN: stack limit message handler
77: LDC 0, 25(0)	* Load the error message into ACC0
78: LDA 1, 1(0)	* Increment the address stored in ACC0 to get the string's char location (put in ACC1)
79: LD 0, 0(0)	* Load the string size into ACC0
80: JEQ 0, 5(7)	* Jump to end when run out of string
81: LDA 0, -1(0)	* subtract one from string size
82: LD 3, 0(1)	* Load next char from string into ACC3
83: LDA 1, 1(1)	* increment pointer into string
84: OUTC 3, 0, 0	* Write out character in ACC3
85: LDA 7, -6(7)	* Go back to start of loop
86: OUTC 2, 0, 0	* Write out diagnostic char in ACC2
87: OUTNL 0, 0, 0	* dump out the newline
88: HALT 0, 0, 0	* Halt for stack limit
* END: stack limit message handler
