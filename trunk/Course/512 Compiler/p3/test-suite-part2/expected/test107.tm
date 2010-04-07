.DATA 23	* string length
.SDATA "Arrays bounds violation"	* string constant
.DATA 19	* string length
.SDATA "Out of stack space "	* string constant
.DATA 4	* string length
.SDATA "Done"	* string constant
.DATA 0	* storage location (50) for var b
.DATA 0	* storage location (51) for var b
.DATA 0	* storage location (52) for var $-b
* BEGIN preamble
0: LDC 4, 0(0)	* initialize ZEROREG to 0
1: LD 5, 0(4)	* initialize SP to end of memory
2: LDA 5, -1(5)	* subtract one to get the true SP
3: LDA 6, 0(5)	* FP and SP start off the same
* END preamble
* BEGIN: load a bool value into ACC0
4: LDC 0, 0(0)	* Load a boolean value into ACC0
* END: load a bool value into ACC0
* BEGIN: push to stack
5: LDA 3, -54(5)	* Subtract the stack limit from SP - store in ACC3
6: LDC 2, 50(0)	* Load diagnostic char into ACC2
7: JLE 3, 73(4)	* stack failure
8: ST 0, 0(5)	* save ACC0 into the current SP location
9: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: assignment
10: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
11: LD 0, 0(5)	* Load stored result into ACC0
12: ST 0, 50(4)	* Store ACC0 into global offset
* END: assignment
* BEGIN: for loop
* BEGIN: load an int constant
13: LDC 0, 0(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: save initial value to loop var
* BEGIN: push to stack
14: LDA 3, -54(5)	* Subtract the stack limit from SP - store in ACC3
15: LDC 2, 52(0)	* Load diagnostic char into ACC2
16: JLE 3, 73(4)	* stack failure
17: ST 0, 0(5)	* save ACC0 into the current SP location
18: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
19: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
20: LD 0, 0(5)	* Load stored result into ACC0
21: ST 0, 51(4)	* Store ACC0 into global offset
* END: save initial value to loop var
* BEGIN: load an int constant
22: LDC 0, 1(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: save max value to max loop var
* BEGIN: push to stack
23: LDA 3, -54(5)	* Subtract the stack limit from SP - store in ACC3
24: LDC 2, 53(0)	* Load diagnostic char into ACC2
25: JLE 3, 73(4)	* stack failure
26: ST 0, 0(5)	* save ACC0 into the current SP location
27: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
28: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
29: LD 0, 0(5)	* Load stored result into ACC0
30: ST 0, 52(4)	* Store ACC0 into global offset
* END: save max value to max loop var
31: LDA 5, 0(5)	* NOOP to mark top of loop
32: LD 0, 51(4)	* Load the global var into ACC0
33: LD 1, 52(4)	* Load the global var into ACC0
34: SUB 1, 1, 0	* Subtract the loop var from the max
35: JLT 1, 59(4)	* go to the loop exit
* BEGIN: body of for loop
* BEGIN: variable (rvalue) access
36: LD 0, 51(4)	* Load the global var into ACC0
* END: variable (rvalue) access
* BEGIN: push to stack
37: LDA 3, -54(5)	* Subtract the stack limit from SP - store in ACC3
38: LDC 2, 55(0)	* Load diagnostic char into ACC2
39: JLE 3, 73(4)	* stack failure
40: ST 0, 0(5)	* save ACC0 into the current SP location
41: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
42: LDC 0, 10(0)	* Load a constant into ACC0
* END: load an int constant
43: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
44: LD 1, 0(5)	* Load stored result into ACC1
45: ADD 0, 0, 1	* Add ACC0 & ACC1 placing result in ACC0
* BEGIN: write(s)
46: OUT 0, 0, 0	* write out the int value in ACC0
47: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
* END: body of for loop
48: LD 0, 51(4)	* Load the global var into ACC0
49: LDA 0, 1(0)	* increment the loop var
* BEGIN: push to stack
50: LDA 3, -54(5)	* Subtract the stack limit from SP - store in ACC3
51: LDC 2, 54(0)	* Load diagnostic char into ACC2
52: JLE 3, 73(4)	* stack failure
53: ST 0, 0(5)	* save ACC0 into the current SP location
54: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
55: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
56: LD 0, 0(5)	* Load stored result into ACC0
57: ST 0, 51(4)	* Store ACC0 into global offset
58: LDA 7, 31(4)	* return to the top of the loop
59: LDA 5, 0(5)	* NOOP to mark end of loop
* END: for loop
* BEGIN: variable (rvalue) access
60: LD 0, 50(4)	* Load the global var into ACC0
* END: variable (rvalue) access
61: JEQ 0, 10(7)	* Jump over the then stmts if false
* BEGIN: load a string's location into ACC0
62: LDC 0, 45(0)	* Load a string's location into ACC0
* END: load a string's location into ACC0
* BEGIN: write(s)
63: LDA 1, 1(0)	* Increment the address stored in ACC0 to get the string's char location (put in ACC1)
64: LD 0, 0(0)	* Load the string size into ACC0
65: JEQ 0, 5(7)	* Jump to end when run out of string
66: LDA 0, -1(0)	* subtract one from string size
67: LD 2, 0(1)	* Load next char from string into ACC2
68: LDA 1, 1(1)	* increment pointer into string
69: OUTC 2, 0, 0	* Write out character in ACC2
70: LDA 7, -6(7)	* Go back to start of loop
71: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
72: HALT 0, 0, 0	* End of Program
* BEGIN: stack limit message handler
73: LDC 0, 25(0)	* Load the error message into ACC0
74: LDA 1, 1(0)	* Increment the address stored in ACC0 to get the string's char location (put in ACC1)
75: LD 0, 0(0)	* Load the string size into ACC0
76: JEQ 0, 5(7)	* Jump to end when run out of string
77: LDA 0, -1(0)	* subtract one from string size
78: LD 3, 0(1)	* Load next char from string into ACC3
79: LDA 1, 1(1)	* increment pointer into string
80: OUTC 3, 0, 0	* Write out character in ACC3
81: LDA 7, -6(7)	* Go back to start of loop
82: OUTC 2, 0, 0	* Write out diagnostic char in ACC2
83: OUTNL 0, 0, 0	* dump out the newline
84: HALT 0, 0, 0	* Halt for stack limit
* END: stack limit message handler
