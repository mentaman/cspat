.DATA 23	* string length
.SDATA "Arrays bounds violation"	* string constant
.DATA 19	* string length
.SDATA "Out of stack space "	* string constant
.DATA 1	* string length
.SDATA " "	* string constant
.DATA 8	* string length
.SDATA "Hi There"	* string constant
* BEGIN preamble
0: LDC 4, 0(0)	* initialize ZEROREG to 0
1: LD 5, 0(4)	* initialize SP to end of memory
2: LDA 5, -1(5)	* subtract one to get the true SP
3: LDA 6, 0(5)	* FP and SP start off the same
* END preamble
* BEGIN: load an int constant
4: LDC 0, 5(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: push to stack
5: LDA 3, -57(5)	* Subtract the stack limit from SP - store in ACC3
6: LDC 2, 55(0)	* Load diagnostic char into ACC2
7: JLE 3, 34(4)	* stack failure
8: ST 0, 0(5)	* save ACC0 into the current SP location
9: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
10: LDC 0, 7(0)	* Load a constant into ACC0
* END: load an int constant
11: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
12: LD 1, 0(5)	* Load stored result into ACC1
13: ADD 0, 0, 1	* Add ACC0 & ACC1 placing result in ACC0
* BEGIN: write(s)
14: OUT 0, 0, 0	* write out the int value in ACC0
* END: write(s)
* BEGIN: load a string's location into ACC0
15: LDC 0, 45(0)	* Load a string's location into ACC0
* END: load a string's location into ACC0
* BEGIN: write(s)
16: LDA 1, 1(0)	* Increment the address stored in ACC0 to get the string's char location (put in ACC1)
17: LD 0, 0(0)	* Load the string size into ACC0
18: JEQ 0, 5(7)	* Jump to end when run out of string
19: LDA 0, -1(0)	* subtract one from string size
20: LD 2, 0(1)	* Load next char from string into ACC2
21: LDA 1, 1(1)	* increment pointer into string
22: OUTC 2, 0, 0	* Write out character in ACC2
23: LDA 7, -6(7)	* Go back to start of loop
* END: write(s)
* BEGIN: load a string's location into ACC0
24: LDC 0, 47(0)	* Load a string's location into ACC0
* END: load a string's location into ACC0
* BEGIN: write(s)
25: LDA 1, 1(0)	* Increment the address stored in ACC0 to get the string's char location (put in ACC1)
26: LD 0, 0(0)	* Load the string size into ACC0
27: JEQ 0, 5(7)	* Jump to end when run out of string
28: LDA 0, -1(0)	* subtract one from string size
29: LD 2, 0(1)	* Load next char from string into ACC2
30: LDA 1, 1(1)	* increment pointer into string
31: OUTC 2, 0, 0	* Write out character in ACC2
32: LDA 7, -6(7)	* Go back to start of loop
* END: write(s)
33: HALT 0, 0, 0	* End of Program
* BEGIN: stack limit message handler
34: LDC 0, 25(0)	* Load the error message into ACC0
35: LDA 1, 1(0)	* Increment the address stored in ACC0 to get the string's char location (put in ACC1)
36: LD 0, 0(0)	* Load the string size into ACC0
37: JEQ 0, 5(7)	* Jump to end when run out of string
38: LDA 0, -1(0)	* subtract one from string size
39: LD 3, 0(1)	* Load next char from string into ACC3
40: LDA 1, 1(1)	* increment pointer into string
41: OUTC 3, 0, 0	* Write out character in ACC3
42: LDA 7, -6(7)	* Go back to start of loop
43: OUTC 2, 0, 0	* Write out diagnostic char in ACC2
44: OUTNL 0, 0, 0	* dump out the newline
45: HALT 0, 0, 0	* Halt for stack limit
* END: stack limit message handler
