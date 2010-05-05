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
4: LDC 0, 2(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: push to stack
5: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
6: LDC 2, 55(0)	* Load diagnostic char into ACC2
7: JLE 3, 17(4)	* stack failure
8: ST 0, 0(5)	* save ACC0 into the current SP location
9: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
10: LDC 0, 3(0)	* Load a constant into ACC0
* END: load an int constant
11: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
12: LD 1, 0(5)	* Load stored result into ACC1
13: MUL 0, 0, 1	* Multiply ACC0 & ACC1 placing result in ACC0
* BEGIN: write(s)
14: OUT 0, 0, 0	* write out the int value in ACC0
15: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
16: HALT 0, 0, 0	* End of Program
* BEGIN: stack limit message handler
17: LDC 0, 25(0)	* Load the error message into ACC0
18: LDA 1, 1(0)	* Increment the address stored in ACC0 to get the string's char location (put in ACC1)
19: LD 0, 0(0)	* Load the string size into ACC0
20: JEQ 0, 5(7)	* Jump to end when run out of string
21: LDA 0, -1(0)	* subtract one from string size
22: LD 3, 0(1)	* Load next char from string into ACC3
23: LDA 1, 1(1)	* increment pointer into string
24: OUTC 3, 0, 0	* Write out character in ACC3
25: LDA 7, -6(7)	* Go back to start of loop
26: OUTC 2, 0, 0	* Write out diagnostic char in ACC2
27: OUTNL 0, 0, 0	* dump out the newline
28: HALT 0, 0, 0	* Halt for stack limit
* END: stack limit message handler
