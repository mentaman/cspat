.DATA 23	* string length
.SDATA "Arrays bounds violation"	* string constant
.DATA 19	* string length
.SDATA "Out of stack space "	* string constant
.DATA 0	* storage location (45) for var i
.DATA 0	* storage location (46) for var $-i
* BEGIN preamble
0: LDC 4, 0(0)	* initialize ZEROREG to 0
1: LD 5, 0(4)	* initialize SP to end of memory
2: LDA 5, -1(5)	* subtract one to get the true SP
3: LDA 6, 0(5)	* FP and SP start off the same
* END preamble
* BEGIN: for loop
* BEGIN: load an int constant
4: LDC 0, 0(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: save initial value to loop var
* BEGIN: push to stack
5: LDA 3, -48(5)	* Subtract the stack limit from SP - store in ACC3
6: LDC 2, 52(0)	* Load diagnostic char into ACC2
7: JLE 3, 43(4)	* stack failure
8: ST 0, 0(5)	* save ACC0 into the current SP location
9: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
10: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
11: LD 0, 0(5)	* Load stored result into ACC0
12: ST 0, 45(4)	* Store ACC0 into global offset
* END: save initial value to loop var
* BEGIN: load an int constant
13: LDC 0, 0(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: save max value to max loop var
* BEGIN: push to stack
14: LDA 3, -48(5)	* Subtract the stack limit from SP - store in ACC3
15: LDC 2, 53(0)	* Load diagnostic char into ACC2
16: JLE 3, 43(4)	* stack failure
17: ST 0, 0(5)	* save ACC0 into the current SP location
18: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
19: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
20: LD 0, 0(5)	* Load stored result into ACC0
21: ST 0, 46(4)	* Store ACC0 into global offset
* END: save max value to max loop var
22: LDA 5, 0(5)	* NOOP to mark top of loop
23: LD 0, 45(4)	* Load the global var into ACC0
24: LD 1, 46(4)	* Load the global var into ACC0
25: SUB 1, 1, 0	* Subtract the loop var from the max
26: JLT 1, 41(4)	* go to the loop exit
* BEGIN: body of for loop
* BEGIN: variable (rvalue) access
27: LD 0, 45(4)	* Load the global var into ACC0
* END: variable (rvalue) access
* BEGIN: write(s)
28: OUT 0, 0, 0	* write out the int value in ACC0
29: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
* END: body of for loop
30: LD 0, 45(4)	* Load the global var into ACC0
31: LDA 0, 1(0)	* increment the loop var
* BEGIN: push to stack
32: LDA 3, -48(5)	* Subtract the stack limit from SP - store in ACC3
33: LDC 2, 54(0)	* Load diagnostic char into ACC2
34: JLE 3, 43(4)	* stack failure
35: ST 0, 0(5)	* save ACC0 into the current SP location
36: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
37: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
38: LD 0, 0(5)	* Load stored result into ACC0
39: ST 0, 45(4)	* Store ACC0 into global offset
40: LDA 7, 22(4)	* return to the top of the loop
41: LDA 5, 0(5)	* NOOP to mark end of loop
* END: for loop
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
