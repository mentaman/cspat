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
* BEGIN: load an int constant
4: LDC 0, 7(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: push to stack
5: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
6: LDC 2, 51(0)	* Load diagnostic char into ACC2
7: JLE 3, 33(4)	* stack failure
8: ST 0, 0(5)	* save ACC0 into the current SP location
9: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
10: LDC 0, 7(0)	* Load a constant into ACC0
* END: load an int constant
11: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
12: LD 1, 0(5)	* Load stored result into ACC1
13: SUB 0, 1, 0	* for !=, subtract right from left
14: JEQ 0, 1(7)	* Jump over Load 1 if ACC0 == 0
15: LDC 0, 1(0)	* Load 1 into ACC0
* BEGIN: write(s)
16: OUT 0, 0, 0	* write out the int value in ACC0
17: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
* BEGIN: load an int constant
18: LDC 0, 6(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: push to stack
19: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
20: LDC 2, 51(0)	* Load diagnostic char into ACC2
21: JLE 3, 33(4)	* stack failure
22: ST 0, 0(5)	* save ACC0 into the current SP location
23: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
24: LDC 0, 7(0)	* Load a constant into ACC0
* END: load an int constant
25: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
26: LD 1, 0(5)	* Load stored result into ACC1
27: SUB 0, 1, 0	* for !=, subtract right from left
28: JEQ 0, 1(7)	* Jump over Load 1 if ACC0 == 0
29: LDC 0, 1(0)	* Load 1 into ACC0
* BEGIN: write(s)
30: OUT 0, 0, 0	* write out the int value in ACC0
31: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
32: HALT 0, 0, 0	* End of Program
* BEGIN: stack limit message handler
33: LDC 0, 25(0)	* Load the error message into ACC0
34: LDA 1, 1(0)	* Increment the address stored in ACC0 to get the string's char location (put in ACC1)
35: LD 0, 0(0)	* Load the string size into ACC0
36: JEQ 0, 5(7)	* Jump to end when run out of string
37: LDA 0, -1(0)	* subtract one from string size
38: LD 3, 0(1)	* Load next char from string into ACC3
39: LDA 1, 1(1)	* increment pointer into string
40: OUTC 3, 0, 0	* Write out character in ACC3
41: LDA 7, -6(7)	* Go back to start of loop
42: OUTC 2, 0, 0	* Write out diagnostic char in ACC2
43: OUTNL 0, 0, 0	* dump out the newline
44: HALT 0, 0, 0	* Halt for stack limit
* END: stack limit message handler
