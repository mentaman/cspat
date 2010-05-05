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
4: LDC 0, 110(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: push to stack
5: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
6: LDC 2, 55(0)	* Load diagnostic char into ACC2
7: JLE 3, 41(4)	* stack failure
8: ST 0, 0(5)	* save ACC0 into the current SP location
9: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
10: LDC 0, 100(0)	* Load a constant into ACC0
* END: load an int constant
11: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
12: LD 1, 0(5)	* Load stored result into ACC1
* BEGIN: mod
13: DIV 2, 1, 0	* Divide left by right & put result in ACC2
14: MUL 2, 2, 0	* Multiply the right by the divide result & put in ACC2
15: SUB 0, 1, 2	* Subtract the multiplication result from left & put in ACC
* END: mod
* BEGIN: push to stack
16: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
17: LDC 2, 55(0)	* Load diagnostic char into ACC2
18: JLE 3, 41(4)	* stack failure
19: ST 0, 0(5)	* save ACC0 into the current SP location
20: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
21: LDC 0, 19(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: push to stack
22: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
23: LDC 2, 55(0)	* Load diagnostic char into ACC2
24: JLE 3, 41(4)	* stack failure
25: ST 0, 0(5)	* save ACC0 into the current SP location
26: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
27: LDC 0, 4(0)	* Load a constant into ACC0
* END: load an int constant
28: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
29: LD 1, 0(5)	* Load stored result into ACC1
* BEGIN: mod
30: DIV 2, 1, 0	* Divide left by right & put result in ACC2
31: MUL 2, 2, 0	* Multiply the right by the divide result & put in ACC2
32: SUB 0, 1, 2	* Subtract the multiplication result from left & put in ACC
* END: mod
33: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
34: LD 1, 0(5)	* Load stored result into ACC1
* BEGIN: mod
35: DIV 2, 1, 0	* Divide left by right & put result in ACC2
36: MUL 2, 2, 0	* Multiply the right by the divide result & put in ACC2
37: SUB 0, 1, 2	* Subtract the multiplication result from left & put in ACC
* END: mod
* BEGIN: write(s)
38: OUT 0, 0, 0	* write out the int value in ACC0
39: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
40: HALT 0, 0, 0	* End of Program
* BEGIN: stack limit message handler
41: LDC 0, 25(0)	* Load the error message into ACC0
42: LDA 1, 1(0)	* Increment the address stored in ACC0 to get the string's char location (put in ACC1)
43: LD 0, 0(0)	* Load the string size into ACC0
44: JEQ 0, 5(7)	* Jump to end when run out of string
45: LDA 0, -1(0)	* subtract one from string size
46: LD 3, 0(1)	* Load next char from string into ACC3
47: LDA 1, 1(1)	* increment pointer into string
48: OUTC 3, 0, 0	* Write out character in ACC3
49: LDA 7, -6(7)	* Go back to start of loop
50: OUTC 2, 0, 0	* Write out diagnostic char in ACC2
51: OUTNL 0, 0, 0	* dump out the newline
52: HALT 0, 0, 0	* Halt for stack limit
* END: stack limit message handler
