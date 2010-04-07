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
4: LDC 0, 6(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: push to stack
5: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
6: LDC 2, 55(0)	* Load diagnostic char into ACC2
7: JLE 3, 38(4)	* stack failure
8: ST 0, 0(5)	* save ACC0 into the current SP location
9: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
10: LDC 0, 3(0)	* Load a constant into ACC0
* END: load an int constant
11: SUB 0, 4, 0	* Subtract ACC0 from ZEROREG to negate it
12: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
13: LD 1, 0(5)	* Load stored result into ACC1
14: SUB 0, 1, 0	* Subtract ACC0 from ACC1 placing result in ACC0
* BEGIN: write(s)
15: OUT 0, 0, 0	* write out the int value in ACC0
16: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
* BEGIN: load a bool value into ACC0
17: LDC 0, 1(0)	* Load a boolean value into ACC0
* END: load a bool value into ACC0
* BEGIN: push to stack
18: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
19: LDC 2, 51(0)	* Load diagnostic char into ACC2
20: JLE 3, 38(4)	* stack failure
21: ST 0, 0(5)	* save ACC0 into the current SP location
22: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load a bool value into ACC0
23: LDC 0, 0(0)	* Load a boolean value into ACC0
* END: load a bool value into ACC0
24: JEQ 0, 2(7)	* Jump to Load 1 if ACC0 == 0
25: LDC 0, 0(0)	* Load 0 into ACC0
26: LDA 7, 1(7)	* Jump over Load 1
27: LDC 0, 1(0)	* Load 1 into ACC0
28: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
29: LD 1, 0(5)	* Load stored result into ACC1
30: SUB 0, 1, 0	* for =, subtract right from left
31: JEQ 0, 2(7)	* Jump to Load 1 if ACC0 == 0
32: LDC 0, 0(0)	* Load 0 into ACC0
33: LDA 7, 1(7)	* Jump over Load 1
34: LDC 0, 1(0)	* Load 1 into ACC0
* BEGIN: write(s)
35: OUT 0, 0, 0	* write out the int value in ACC0
36: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
37: HALT 0, 0, 0	* End of Program
* BEGIN: stack limit message handler
38: LDC 0, 25(0)	* Load the error message into ACC0
39: LDA 1, 1(0)	* Increment the address stored in ACC0 to get the string's char location (put in ACC1)
40: LD 0, 0(0)	* Load the string size into ACC0
41: JEQ 0, 5(7)	* Jump to end when run out of string
42: LDA 0, -1(0)	* subtract one from string size
43: LD 3, 0(1)	* Load next char from string into ACC3
44: LDA 1, 1(1)	* increment pointer into string
45: OUTC 3, 0, 0	* Write out character in ACC3
46: LDA 7, -6(7)	* Go back to start of loop
47: OUTC 2, 0, 0	* Write out diagnostic char in ACC2
48: OUTNL 0, 0, 0	* dump out the newline
49: HALT 0, 0, 0	* Halt for stack limit
* END: stack limit message handler
