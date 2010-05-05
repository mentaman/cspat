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
7: JLE 3, 47(4)	* stack failure
8: ST 0, 0(5)	* save ACC0 into the current SP location
9: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
10: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
11: LD 0, 0(5)	* Load stored result into ACC0
12: ST 0, 45(4)	* Store ACC0 into global offset
* END: save initial value to loop var
* BEGIN: load an int constant
13: LDC 0, 10(0)	* Load a constant into ACC0
* END: load an int constant
14: SUB 0, 4, 0	* Subtract ACC0 from ZEROREG to negate it
* BEGIN: save max value to max loop var
* BEGIN: push to stack
15: LDA 3, -48(5)	* Subtract the stack limit from SP - store in ACC3
16: LDC 2, 53(0)	* Load diagnostic char into ACC2
17: JLE 3, 47(4)	* stack failure
18: ST 0, 0(5)	* save ACC0 into the current SP location
19: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
20: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
21: LD 0, 0(5)	* Load stored result into ACC0
22: ST 0, 46(4)	* Store ACC0 into global offset
* END: save max value to max loop var
23: LDA 5, 0(5)	* NOOP to mark top of loop
24: LD 0, 45(4)	* Load the global var into ACC0
25: LD 1, 46(4)	* Load the global var into ACC0
26: SUB 1, 1, 0	* Subtract the loop var from the max
27: JLT 1, 42(4)	* go to the loop exit
* BEGIN: body of for loop
* BEGIN: variable (rvalue) access
28: LD 0, 45(4)	* Load the global var into ACC0
* END: variable (rvalue) access
* BEGIN: write(s)
29: OUT 0, 0, 0	* write out the int value in ACC0
30: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
* END: body of for loop
31: LD 0, 45(4)	* Load the global var into ACC0
32: LDA 0, 1(0)	* increment the loop var
* BEGIN: push to stack
33: LDA 3, -48(5)	* Subtract the stack limit from SP - store in ACC3
34: LDC 2, 54(0)	* Load diagnostic char into ACC2
35: JLE 3, 47(4)	* stack failure
36: ST 0, 0(5)	* save ACC0 into the current SP location
37: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
38: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
39: LD 0, 0(5)	* Load stored result into ACC0
40: ST 0, 45(4)	* Store ACC0 into global offset
41: LDA 7, 23(4)	* return to the top of the loop
42: LDA 5, 0(5)	* NOOP to mark end of loop
* END: for loop
* BEGIN: load an int constant
43: LDC 0, 11(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: write(s)
44: OUT 0, 0, 0	* write out the int value in ACC0
45: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
46: HALT 0, 0, 0	* End of Program
* BEGIN: stack limit message handler
47: LDC 0, 25(0)	* Load the error message into ACC0
48: LDA 1, 1(0)	* Increment the address stored in ACC0 to get the string's char location (put in ACC1)
49: LD 0, 0(0)	* Load the string size into ACC0
50: JEQ 0, 5(7)	* Jump to end when run out of string
51: LDA 0, -1(0)	* subtract one from string size
52: LD 3, 0(1)	* Load next char from string into ACC3
53: LDA 1, 1(1)	* increment pointer into string
54: OUTC 3, 0, 0	* Write out character in ACC3
55: LDA 7, -6(7)	* Go back to start of loop
56: OUTC 2, 0, 0	* Write out diagnostic char in ACC2
57: OUTNL 0, 0, 0	* dump out the newline
58: HALT 0, 0, 0	* Halt for stack limit
* END: stack limit message handler
