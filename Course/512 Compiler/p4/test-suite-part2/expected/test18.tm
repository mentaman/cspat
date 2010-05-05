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
4: LDC 0, 0(0)	* Load a boolean value into ACC0
* END: load a bool value into ACC0
5: JGT 0, 11(7)	* Jump over rest of logical or code
* BEGIN: push to stack
6: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
7: LDC 2, 57(0)	* Load diagnostic char into ACC2
8: JLE 3, 65(4)	* stack failure
9: ST 0, 0(5)	* save ACC0 into the current SP location
10: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load a bool value into ACC0
11: LDC 0, 0(0)	* Load a boolean value into ACC0
* END: load a bool value into ACC0
12: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
13: LD 1, 0(5)	* Load stored result into ACC1
14: ADD 0, 1, 0	* for OR, add right and left
15: JEQ 0, 1(7)	* Jump over Load 1 if ACC0 == 0
16: LDC 0, 1(0)	* Load 1 into ACC0
* BEGIN: write(s)
17: OUT 0, 0, 0	* write out the int value in ACC0
18: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
* BEGIN: load a bool value into ACC0
19: LDC 0, 0(0)	* Load a boolean value into ACC0
* END: load a bool value into ACC0
20: JGT 0, 11(7)	* Jump over rest of logical or code
* BEGIN: push to stack
21: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
22: LDC 2, 57(0)	* Load diagnostic char into ACC2
23: JLE 3, 65(4)	* stack failure
24: ST 0, 0(5)	* save ACC0 into the current SP location
25: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load a bool value into ACC0
26: LDC 0, 1(0)	* Load a boolean value into ACC0
* END: load a bool value into ACC0
27: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
28: LD 1, 0(5)	* Load stored result into ACC1
29: ADD 0, 1, 0	* for OR, add right and left
30: JEQ 0, 1(7)	* Jump over Load 1 if ACC0 == 0
31: LDC 0, 1(0)	* Load 1 into ACC0
* BEGIN: write(s)
32: OUT 0, 0, 0	* write out the int value in ACC0
33: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
* BEGIN: load a bool value into ACC0
34: LDC 0, 1(0)	* Load a boolean value into ACC0
* END: load a bool value into ACC0
35: JGT 0, 11(7)	* Jump over rest of logical or code
* BEGIN: push to stack
36: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
37: LDC 2, 57(0)	* Load diagnostic char into ACC2
38: JLE 3, 65(4)	* stack failure
39: ST 0, 0(5)	* save ACC0 into the current SP location
40: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load a bool value into ACC0
41: LDC 0, 0(0)	* Load a boolean value into ACC0
* END: load a bool value into ACC0
42: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
43: LD 1, 0(5)	* Load stored result into ACC1
44: ADD 0, 1, 0	* for OR, add right and left
45: JEQ 0, 1(7)	* Jump over Load 1 if ACC0 == 0
46: LDC 0, 1(0)	* Load 1 into ACC0
* BEGIN: write(s)
47: OUT 0, 0, 0	* write out the int value in ACC0
48: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
* BEGIN: load a bool value into ACC0
49: LDC 0, 1(0)	* Load a boolean value into ACC0
* END: load a bool value into ACC0
50: JGT 0, 11(7)	* Jump over rest of logical or code
* BEGIN: push to stack
51: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
52: LDC 2, 57(0)	* Load diagnostic char into ACC2
53: JLE 3, 65(4)	* stack failure
54: ST 0, 0(5)	* save ACC0 into the current SP location
55: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load a bool value into ACC0
56: LDC 0, 1(0)	* Load a boolean value into ACC0
* END: load a bool value into ACC0
57: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
58: LD 1, 0(5)	* Load stored result into ACC1
59: ADD 0, 1, 0	* for OR, add right and left
60: JEQ 0, 1(7)	* Jump over Load 1 if ACC0 == 0
61: LDC 0, 1(0)	* Load 1 into ACC0
* BEGIN: write(s)
62: OUT 0, 0, 0	* write out the int value in ACC0
63: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
64: HALT 0, 0, 0	* End of Program
* BEGIN: stack limit message handler
65: LDC 0, 25(0)	* Load the error message into ACC0
66: LDA 1, 1(0)	* Increment the address stored in ACC0 to get the string's char location (put in ACC1)
67: LD 0, 0(0)	* Load the string size into ACC0
68: JEQ 0, 5(7)	* Jump to end when run out of string
69: LDA 0, -1(0)	* subtract one from string size
70: LD 3, 0(1)	* Load next char from string into ACC3
71: LDA 1, 1(1)	* increment pointer into string
72: OUTC 3, 0, 0	* Write out character in ACC3
73: LDA 7, -6(7)	* Go back to start of loop
74: OUTC 2, 0, 0	* Write out diagnostic char in ACC2
75: OUTNL 0, 0, 0	* dump out the newline
76: HALT 0, 0, 0	* Halt for stack limit
* END: stack limit message handler
