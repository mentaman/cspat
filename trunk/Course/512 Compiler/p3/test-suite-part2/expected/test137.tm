.DATA 23	* string length
.SDATA "Arrays bounds violation"	* string constant
.DATA 19	* string length
.SDATA "Out of stack space "	* string constant
.DATA 0	* storage location (45) for var a
.DATA 0	* storage location (46) for var b
* BEGIN preamble
0: LDC 4, 0(0)	* initialize ZEROREG to 0
1: LD 5, 0(4)	* initialize SP to end of memory
2: LDA 5, -1(5)	* subtract one to get the true SP
3: LDA 6, 0(5)	* FP and SP start off the same
* END preamble
* BEGIN: load an int constant
4: LDC 0, 1(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: push to stack
5: LDA 3, -48(5)	* Subtract the stack limit from SP - store in ACC3
6: LDC 2, 50(0)	* Load diagnostic char into ACC2
7: JLE 3, 29(4)	* stack failure
8: ST 0, 0(5)	* save ACC0 into the current SP location
9: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: assignment
10: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
11: LD 0, 0(5)	* Load stored result into ACC0
12: ST 0, 45(4)	* Store ACC0 into global offset
* END: assignment
* BEGIN: load a bool value into ACC0
13: LDC 0, 1(0)	* Load a boolean value into ACC0
* END: load a bool value into ACC0
* BEGIN: push to stack
14: LDA 3, -48(5)	* Subtract the stack limit from SP - store in ACC3
15: LDC 2, 50(0)	* Load diagnostic char into ACC2
16: JLE 3, 29(4)	* stack failure
17: ST 0, 0(5)	* save ACC0 into the current SP location
18: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: assignment
19: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
20: LD 0, 0(5)	* Load stored result into ACC0
21: ST 0, 46(4)	* Store ACC0 into global offset
* END: assignment
* BEGIN: variable (rvalue) access
22: LD 0, 45(4)	* Load the global var into ACC0
* END: variable (rvalue) access
* BEGIN: write(s)
23: OUT 0, 0, 0	* write out the int value in ACC0
24: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
* BEGIN: variable (rvalue) access
25: LD 0, 46(4)	* Load the global var into ACC0
* END: variable (rvalue) access
* BEGIN: write(s)
26: OUT 0, 0, 0	* write out the int value in ACC0
27: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
28: HALT 0, 0, 0	* End of Program
* BEGIN: stack limit message handler
29: LDC 0, 25(0)	* Load the error message into ACC0
30: LDA 1, 1(0)	* Increment the address stored in ACC0 to get the string's char location (put in ACC1)
31: LD 0, 0(0)	* Load the string size into ACC0
32: JEQ 0, 5(7)	* Jump to end when run out of string
33: LDA 0, -1(0)	* subtract one from string size
34: LD 3, 0(1)	* Load next char from string into ACC3
35: LDA 1, 1(1)	* increment pointer into string
36: OUTC 3, 0, 0	* Write out character in ACC3
37: LDA 7, -6(7)	* Go back to start of loop
38: OUTC 2, 0, 0	* Write out diagnostic char in ACC2
39: OUTNL 0, 0, 0	* dump out the newline
40: HALT 0, 0, 0	* Halt for stack limit
* END: stack limit message handler
