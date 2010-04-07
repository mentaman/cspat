.DATA 23	* string length
.SDATA "Arrays bounds violation"	* string constant
.DATA 19	* string length
.SDATA "Out of stack space "	* string constant
.DATA 5	* string length
.SDATA "first"	* string constant
.DATA 6	* string length
.SDATA "second"	* string constant
* BEGIN preamble
0: LDC 4, 0(0)	* initialize ZEROREG to 0
1: LD 5, 0(4)	* initialize SP to end of memory
2: LDA 5, -1(5)	* subtract one to get the true SP
3: LDA 6, 0(5)	* FP and SP start off the same
* END preamble
* BEGIN: load a bool value into ACC0
4: LDC 0, 1(0)	* Load a boolean value into ACC0
* END: load a bool value into ACC0
5: JGT 0, 15(7)	* Jump over rest of logical or code
* BEGIN: push to stack
6: LDA 3, -59(5)	* Subtract the stack limit from SP - store in ACC3
7: LDC 2, 57(0)	* Load diagnostic char into ACC2
8: JLE 3, 43(4)	* stack failure
9: ST 0, 0(5)	* save ACC0 into the current SP location
10: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load a bool value into ACC0
11: LDC 0, 0(0)	* Load a boolean value into ACC0
* END: load a bool value into ACC0
12: JEQ 0, 2(7)	* Jump to Load 1 if ACC0 == 0
13: LDC 0, 0(0)	* Load 0 into ACC0
14: LDA 7, 1(7)	* Jump over Load 1
15: LDC 0, 1(0)	* Load 1 into ACC0
16: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
17: LD 1, 0(5)	* Load stored result into ACC1
18: ADD 0, 1, 0	* for OR, add right and left
19: JEQ 0, 1(7)	* Jump over Load 1 if ACC0 == 0
20: LDC 0, 1(0)	* Load 1 into ACC0
21: JEQ 0, 10(7)	* Jump over the then stmts if false
* BEGIN: load a string's location into ACC0
22: LDC 0, 45(0)	* Load a string's location into ACC0
* END: load a string's location into ACC0
* BEGIN: write(s)
23: LDA 1, 1(0)	* Increment the address stored in ACC0 to get the string's char location (put in ACC1)
24: LD 0, 0(0)	* Load the string size into ACC0
25: JEQ 0, 5(7)	* Jump to end when run out of string
26: LDA 0, -1(0)	* subtract one from string size
27: LD 2, 0(1)	* Load next char from string into ACC2
28: LDA 1, 1(1)	* increment pointer into string
29: OUTC 2, 0, 0	* Write out character in ACC2
30: LDA 7, -6(7)	* Go back to start of loop
31: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
* BEGIN: load a string's location into ACC0
32: LDC 0, 51(0)	* Load a string's location into ACC0
* END: load a string's location into ACC0
* BEGIN: write(s)
33: LDA 1, 1(0)	* Increment the address stored in ACC0 to get the string's char location (put in ACC1)
34: LD 0, 0(0)	* Load the string size into ACC0
35: JEQ 0, 5(7)	* Jump to end when run out of string
36: LDA 0, -1(0)	* subtract one from string size
37: LD 2, 0(1)	* Load next char from string into ACC2
38: LDA 1, 1(1)	* increment pointer into string
39: OUTC 2, 0, 0	* Write out character in ACC2
40: LDA 7, -6(7)	* Go back to start of loop
41: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
42: HALT 0, 0, 0	* End of Program
* BEGIN: stack limit message handler
43: LDC 0, 25(0)	* Load the error message into ACC0
44: LDA 1, 1(0)	* Increment the address stored in ACC0 to get the string's char location (put in ACC1)
45: LD 0, 0(0)	* Load the string size into ACC0
46: JEQ 0, 5(7)	* Jump to end when run out of string
47: LDA 0, -1(0)	* subtract one from string size
48: LD 3, 0(1)	* Load next char from string into ACC3
49: LDA 1, 1(1)	* increment pointer into string
50: OUTC 3, 0, 0	* Write out character in ACC3
51: LDA 7, -6(7)	* Go back to start of loop
52: OUTC 2, 0, 0	* Write out diagnostic char in ACC2
53: OUTNL 0, 0, 0	* dump out the newline
54: HALT 0, 0, 0	* Halt for stack limit
* END: stack limit message handler
