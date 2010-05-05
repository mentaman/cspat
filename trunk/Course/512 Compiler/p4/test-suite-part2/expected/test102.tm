.DATA 23	* string length
.SDATA "Arrays bounds violation"	* string constant
.DATA 19	* string length
.SDATA "Out of stack space "	* string constant
.DATA 5	* string length
.SDATA "first"	* string constant
.DATA 6	* string length
.SDATA "second"	* string constant
.DATA 5	* string length
.SDATA "third"	* string constant
.DATA 6	* string length
.SDATA "fourth"	* string constant
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
5: LDA 3, -72(5)	* Subtract the stack limit from SP - store in ACC3
6: LDC 2, 51(0)	* Load diagnostic char into ACC2
7: JLE 3, 79(4)	* stack failure
8: ST 0, 0(5)	* save ACC0 into the current SP location
9: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
10: LDC 0, 3(0)	* Load a constant into ACC0
* END: load an int constant
11: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
12: LD 1, 0(5)	* Load stored result into ACC1
* BEGIN: >
13: SUB 0, 1, 0	* for >, subtract right from left
14: JGT 0, 2(7)	* Jump to Load 1 if ACC0 > 0
15: LDC 0, 0(0)	* Load 0 into ACC0
16: LDA 7, 1(7)	* Jump over Load 1
17: LDC 0, 1(0)	* Load 1 into ACC0
* END: >
18: JEQ 0, 11(7)	* Jump over the then stmts if false
* BEGIN: load a string's location into ACC0
19: LDC 0, 45(0)	* Load a string's location into ACC0
* END: load a string's location into ACC0
* BEGIN: write(s)
20: LDA 1, 1(0)	* Increment the address stored in ACC0 to get the string's char location (put in ACC1)
21: LD 0, 0(0)	* Load the string size into ACC0
22: JEQ 0, 5(7)	* Jump to end when run out of string
23: LDA 0, -1(0)	* subtract one from string size
24: LD 2, 0(1)	* Load next char from string into ACC2
25: LDA 1, 1(1)	* increment pointer into string
26: OUTC 2, 0, 0	* Write out character in ACC2
27: LDA 7, -6(7)	* Go back to start of loop
28: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
29: LDA 7, 38(7)	* Jump over the rest of the if
* BEGIN: load a bool value into ACC0
30: LDC 0, 0(0)	* Load a boolean value into ACC0
* END: load a bool value into ACC0
31: JEQ 0, 14(7)	* if left is false jump over the rest of the and
* BEGIN: push to stack
32: LDA 3, -72(5)	* Subtract the stack limit from SP - store in ACC3
33: LDC 2, 49(0)	* Load diagnostic char into ACC2
34: JLE 3, 79(4)	* stack failure
35: ST 0, 0(5)	* save ACC0 into the current SP location
36: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load a bool value into ACC0
37: LDC 0, 1(0)	* Load a boolean value into ACC0
* END: load a bool value into ACC0
38: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
39: LD 1, 0(5)	* Load stored result into ACC1
40: ADD 0, 1, 0	* for AND, add right and left
41: LDA 0, -2(0)	* Then subtract 2
42: JEQ 0, 2(7)	* Jump to Load 1 if ACC0 == 0
43: LDC 0, 0(0)	* Load 0 into ACC0
44: LDA 7, 1(7)	* Jump over Load 1
45: LDC 0, 1(0)	* Load 1 into ACC0
46: JEQ 0, 11(7)	* Jump over the then stmts if false
* BEGIN: load a string's location into ACC0
47: LDC 0, 51(0)	* Load a string's location into ACC0
* END: load a string's location into ACC0
* BEGIN: write(s)
48: LDA 1, 1(0)	* Increment the address stored in ACC0 to get the string's char location (put in ACC1)
49: LD 0, 0(0)	* Load the string size into ACC0
50: JEQ 0, 5(7)	* Jump to end when run out of string
51: LDA 0, -1(0)	* subtract one from string size
52: LD 2, 0(1)	* Load next char from string into ACC2
53: LDA 1, 1(1)	* increment pointer into string
54: OUTC 2, 0, 0	* Write out character in ACC2
55: LDA 7, -6(7)	* Go back to start of loop
56: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
57: LDA 7, 10(7)	* Jump over the rest of the if
* BEGIN: load a string's location into ACC0
58: LDC 0, 58(0)	* Load a string's location into ACC0
* END: load a string's location into ACC0
* BEGIN: write(s)
59: LDA 1, 1(0)	* Increment the address stored in ACC0 to get the string's char location (put in ACC1)
60: LD 0, 0(0)	* Load the string size into ACC0
61: JEQ 0, 5(7)	* Jump to end when run out of string
62: LDA 0, -1(0)	* subtract one from string size
63: LD 2, 0(1)	* Load next char from string into ACC2
64: LDA 1, 1(1)	* increment pointer into string
65: OUTC 2, 0, 0	* Write out character in ACC2
66: LDA 7, -6(7)	* Go back to start of loop
67: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
* BEGIN: load a string's location into ACC0
68: LDC 0, 64(0)	* Load a string's location into ACC0
* END: load a string's location into ACC0
* BEGIN: write(s)
69: LDA 1, 1(0)	* Increment the address stored in ACC0 to get the string's char location (put in ACC1)
70: LD 0, 0(0)	* Load the string size into ACC0
71: JEQ 0, 5(7)	* Jump to end when run out of string
72: LDA 0, -1(0)	* subtract one from string size
73: LD 2, 0(1)	* Load next char from string into ACC2
74: LDA 1, 1(1)	* increment pointer into string
75: OUTC 2, 0, 0	* Write out character in ACC2
76: LDA 7, -6(7)	* Go back to start of loop
77: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
78: HALT 0, 0, 0	* End of Program
* BEGIN: stack limit message handler
79: LDC 0, 25(0)	* Load the error message into ACC0
80: LDA 1, 1(0)	* Increment the address stored in ACC0 to get the string's char location (put in ACC1)
81: LD 0, 0(0)	* Load the string size into ACC0
82: JEQ 0, 5(7)	* Jump to end when run out of string
83: LDA 0, -1(0)	* subtract one from string size
84: LD 3, 0(1)	* Load next char from string into ACC3
85: LDA 1, 1(1)	* increment pointer into string
86: OUTC 3, 0, 0	* Write out character in ACC3
87: LDA 7, -6(7)	* Go back to start of loop
88: OUTC 2, 0, 0	* Write out diagnostic char in ACC2
89: OUTNL 0, 0, 0	* dump out the newline
90: HALT 0, 0, 0	* Halt for stack limit
* END: stack limit message handler
