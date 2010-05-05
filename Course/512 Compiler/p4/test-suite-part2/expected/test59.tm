.DATA 23	* string length
.SDATA "Arrays bounds violation"	* string constant
.DATA 19	* string length
.SDATA "Out of stack space "	* string constant
.DATA 0	* storage location (45) for var i
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
5: LDA 3, -47(5)	* Subtract the stack limit from SP - store in ACC3
6: LDC 2, 50(0)	* Load diagnostic char into ACC2
7: JLE 3, 71(4)	* stack failure
8: ST 0, 0(5)	* save ACC0 into the current SP location
9: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: assignment
10: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
11: LD 0, 0(5)	* Load stored result into ACC0
12: ST 0, 45(4)	* Store ACC0 into global offset
* END: assignment
* BEGIN: Do loop
* BEGIN: variable (rvalue) access
13: LD 0, 45(4)	* Load the global var into ACC0
* END: variable (rvalue) access
* BEGIN: push to stack
14: LDA 3, -47(5)	* Subtract the stack limit from SP - store in ACC3
15: LDC 2, 51(0)	* Load diagnostic char into ACC2
16: JLE 3, 71(4)	* stack failure
17: ST 0, 0(5)	* save ACC0 into the current SP location
18: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
19: LDC 0, 5(0)	* Load a constant into ACC0
* END: load an int constant
20: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
21: LD 1, 0(5)	* Load stored result into ACC1
* BEGIN: <
22: SUB 0, 1, 0	* for <, subtract right from left
23: JLT 0, 2(7)	* Jump to Load 1 if ACC0 < 0
24: LDC 0, 0(0)	* Load 0 into ACC0
25: LDA 7, 1(7)	* Jump over Load 1
26: LDC 0, 1(0)	* Load 1 into ACC0
* END: <
27: JEQ 0, 38(7)	* Jump to the end of the loop if done
* BEGIN: variable (rvalue) access
28: LD 0, 45(4)	* Load the global var into ACC0
* END: variable (rvalue) access
* BEGIN: push to stack
29: LDA 3, -47(5)	* Subtract the stack limit from SP - store in ACC3
30: LDC 2, 51(0)	* Load diagnostic char into ACC2
31: JLE 3, 71(4)	* stack failure
32: ST 0, 0(5)	* save ACC0 into the current SP location
33: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
34: LDC 0, 3(0)	* Load a constant into ACC0
* END: load an int constant
35: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
36: LD 1, 0(5)	* Load stored result into ACC1
37: SUB 0, 1, 0	* for =, subtract right from left
38: JEQ 0, 2(7)	* Jump to Load 1 if ACC0 == 0
39: LDC 0, 0(0)	* Load 0 into ACC0
40: LDA 7, 1(7)	* Jump over Load 1
41: LDC 0, 1(0)	* Load 1 into ACC0
42: JEQ 0, 1(7)	* Jump over the then stmts if false
* BEGIN: break
43: LDA 7, 66(4)	* skip to the end of the loop
* END: break
* BEGIN: variable (rvalue) access
44: LD 0, 45(4)	* Load the global var into ACC0
* END: variable (rvalue) access
* BEGIN: write(s)
45: OUT 0, 0, 0	* write out the int value in ACC0
46: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
* BEGIN: variable (rvalue) access
47: LD 0, 45(4)	* Load the global var into ACC0
* END: variable (rvalue) access
* BEGIN: push to stack
48: LDA 3, -47(5)	* Subtract the stack limit from SP - store in ACC3
49: LDC 2, 55(0)	* Load diagnostic char into ACC2
50: JLE 3, 71(4)	* stack failure
51: ST 0, 0(5)	* save ACC0 into the current SP location
52: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
53: LDC 0, 1(0)	* Load a constant into ACC0
* END: load an int constant
54: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
55: LD 1, 0(5)	* Load stored result into ACC1
56: ADD 0, 0, 1	* Add ACC0 & ACC1 placing result in ACC0
* BEGIN: push to stack
57: LDA 3, -47(5)	* Subtract the stack limit from SP - store in ACC3
58: LDC 2, 50(0)	* Load diagnostic char into ACC2
59: JLE 3, 71(4)	* stack failure
60: ST 0, 0(5)	* save ACC0 into the current SP location
61: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: assignment
62: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
63: LD 0, 0(5)	* Load stored result into ACC0
64: ST 0, 45(4)	* Store ACC0 into global offset
* END: assignment
65: LDA 7, -53(7)	* Jump back to start of loop
66: LDA 5, 0(5)	* NOOP to mark end of loop
* END: Do loop
* BEGIN: load an int constant
67: LDC 0, 6(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: write(s)
68: OUT 0, 0, 0	* write out the int value in ACC0
69: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
70: HALT 0, 0, 0	* End of Program
* BEGIN: stack limit message handler
71: LDC 0, 25(0)	* Load the error message into ACC0
72: LDA 1, 1(0)	* Increment the address stored in ACC0 to get the string's char location (put in ACC1)
73: LD 0, 0(0)	* Load the string size into ACC0
74: JEQ 0, 5(7)	* Jump to end when run out of string
75: LDA 0, -1(0)	* subtract one from string size
76: LD 3, 0(1)	* Load next char from string into ACC3
77: LDA 1, 1(1)	* increment pointer into string
78: OUTC 3, 0, 0	* Write out character in ACC3
79: LDA 7, -6(7)	* Go back to start of loop
80: OUTC 2, 0, 0	* Write out diagnostic char in ACC2
81: OUTNL 0, 0, 0	* dump out the newline
82: HALT 0, 0, 0	* Halt for stack limit
* END: stack limit message handler
