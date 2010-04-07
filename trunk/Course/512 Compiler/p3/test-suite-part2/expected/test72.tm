.DATA 23	* string length
.SDATA "Arrays bounds violation"	* string constant
.DATA 19	* string length
.SDATA "Out of stack space "	* string constant
.DATA 0	* storage location (45) for var pi
.DATA 0	* storage location (45) for var pi
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
5: LDA 3, -48(5)	* Subtract the stack limit from SP - store in ACC3
6: LDC 2, 50(0)	* Load diagnostic char into ACC2
7: JLE 3, 41(4)	* stack failure
8: ST 0, 0(5)	* save ACC0 into the current SP location
9: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: assignment
10: LDC 0, 45(0)	* Load the base address into ACC0
* BEGIN: push to stack
11: LDA 3, -48(5)	* Subtract the stack limit from SP - store in ACC3
12: LDC 2, 56(0)	* Load diagnostic char into ACC2
13: JLE 3, 41(4)	* stack failure
14: ST 0, 0(5)	* save ACC0 into the current SP location
15: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
16: LDC 0, 2(0)	* Load a constant into ACC0
* END: load an int constant
17: JLT 0, 30(4)	* array bounds too small
18: LDC 3, 2(0)	* Load the array bounds limit into ACC3
19: SUB 3, 0, 3	* Subtract the max from the current index
20: JGE 3, 30(4)	* array bounds too big
21: LDC 1, 1(0)	* Load the skip size into ACC1
22: MUL 1, 1, 0	* Multiply the index by the skip size and place the result back into ACC1
23: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
24: LD 0, 0(5)	* Load stored result into ACC0
25: ADD 0, 1, 0	* add the base (ACC0) and the skip size (ACC1) and put the result back in ACC0
26: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
27: LD 1, 0(5)	* Load stored result into ACC1
28: ST 1, 0(0)	* Store ACC0 into global offset
* END: assignment
29: HALT 0, 0, 0	* End of Program
* BEGIN: array bounds message handler
30: LDC 0, 1(0)	* Load the error message into ACC0
31: LDA 1, 1(0)	* Increment the address stored in ACC0 to get the string's char location (put in ACC1)
32: LD 0, 0(0)	* Load the string size into ACC0
33: JEQ 0, 5(7)	* Jump to end when run out of string
34: LDA 0, -1(0)	* subtract one from string size
35: LD 2, 0(1)	* Load next char from string into ACC2
36: LDA 1, 1(1)	* increment pointer into string
37: OUTC 2, 0, 0	* Write out character in ACC2
38: LDA 7, -6(7)	* Go back to start of loop
39: OUTNL 0, 0, 0	* dump out the newline
40: HALT 0, 0, 0	* Halt for array bounds
* END: array bounds message handler
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
