.DATA 23	* string length
.SDATA "Arrays bounds violation"	* string constant
.DATA 19	* string length
.SDATA "Out of stack space "	* string constant
.DATA 3	* string length
.SDATA "end"	* string constant
.DATA 0	* storage location (49) for var i
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
5: LDA 3, -51(5)	* Subtract the stack limit from SP - store in ACC3
6: LDC 2, 50(0)	* Load diagnostic char into ACC2
7: JLE 3, 67(4)	* stack failure
8: ST 0, 0(5)	* save ACC0 into the current SP location
9: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: assignment
10: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
11: LD 0, 0(5)	* Load stored result into ACC0
12: ST 0, 49(4)	* Store ACC0 into global offset
* END: assignment
* BEGIN: Do loop
* BEGIN: load a bool value into ACC0
13: LDC 0, 1(0)	* Load a boolean value into ACC0
* END: load a bool value into ACC0
14: JEQ 0, 40(7)	* Jump to the end of the loop if done
* BEGIN: Do loop
* BEGIN: variable (rvalue) access
15: LD 0, 49(4)	* Load the global var into ACC0
* END: variable (rvalue) access
* BEGIN: push to stack
16: LDA 3, -51(5)	* Subtract the stack limit from SP - store in ACC3
17: LDC 2, 51(0)	* Load diagnostic char into ACC2
18: JLE 3, 67(4)	* stack failure
19: ST 0, 0(5)	* save ACC0 into the current SP location
20: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
21: LDC 0, 3(0)	* Load a constant into ACC0
* END: load an int constant
22: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
23: LD 1, 0(5)	* Load stored result into ACC1
* BEGIN: <
24: SUB 0, 1, 0	* for <, subtract right from left
25: JLT 0, 2(7)	* Jump to Load 1 if ACC0 < 0
26: LDC 0, 0(0)	* Load 0 into ACC0
27: LDA 7, 1(7)	* Jump over Load 1
28: LDC 0, 1(0)	* Load 1 into ACC0
* END: <
29: JEQ 0, 22(7)	* Jump to the end of the loop if done
* BEGIN: variable (rvalue) access
30: LD 0, 49(4)	* Load the global var into ACC0
* END: variable (rvalue) access
* BEGIN: write(s)
31: OUT 0, 0, 0	* write out the int value in ACC0
32: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
* BEGIN: variable (rvalue) access
33: LD 0, 49(4)	* Load the global var into ACC0
* END: variable (rvalue) access
* BEGIN: push to stack
34: LDA 3, -51(5)	* Subtract the stack limit from SP - store in ACC3
35: LDC 2, 55(0)	* Load diagnostic char into ACC2
36: JLE 3, 67(4)	* stack failure
37: ST 0, 0(5)	* save ACC0 into the current SP location
38: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
39: LDC 0, 1(0)	* Load a constant into ACC0
* END: load an int constant
40: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
41: LD 1, 0(5)	* Load stored result into ACC1
42: ADD 0, 0, 1	* Add ACC0 & ACC1 placing result in ACC0
* BEGIN: push to stack
43: LDA 3, -51(5)	* Subtract the stack limit from SP - store in ACC3
44: LDC 2, 50(0)	* Load diagnostic char into ACC2
45: JLE 3, 67(4)	* stack failure
46: ST 0, 0(5)	* save ACC0 into the current SP location
47: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: assignment
48: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
49: LD 0, 0(5)	* Load stored result into ACC0
50: ST 0, 49(4)	* Store ACC0 into global offset
* END: assignment
51: LDA 7, -37(7)	* Jump back to start of loop
52: LDA 5, 0(5)	* NOOP to mark end of loop
* END: Do loop
* BEGIN: break
53: LDA 7, 55(4)	* skip to the end of the loop
* END: break
54: LDA 7, -42(7)	* Jump back to start of loop
55: LDA 5, 0(5)	* NOOP to mark end of loop
* END: Do loop
* BEGIN: load a string's location into ACC0
56: LDC 0, 45(0)	* Load a string's location into ACC0
* END: load a string's location into ACC0
* BEGIN: write(s)
57: LDA 1, 1(0)	* Increment the address stored in ACC0 to get the string's char location (put in ACC1)
58: LD 0, 0(0)	* Load the string size into ACC0
59: JEQ 0, 5(7)	* Jump to end when run out of string
60: LDA 0, -1(0)	* subtract one from string size
61: LD 2, 0(1)	* Load next char from string into ACC2
62: LDA 1, 1(1)	* increment pointer into string
63: OUTC 2, 0, 0	* Write out character in ACC2
64: LDA 7, -6(7)	* Go back to start of loop
65: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
66: HALT 0, 0, 0	* End of Program
* BEGIN: stack limit message handler
67: LDC 0, 25(0)	* Load the error message into ACC0
68: LDA 1, 1(0)	* Increment the address stored in ACC0 to get the string's char location (put in ACC1)
69: LD 0, 0(0)	* Load the string size into ACC0
70: JEQ 0, 5(7)	* Jump to end when run out of string
71: LDA 0, -1(0)	* subtract one from string size
72: LD 3, 0(1)	* Load next char from string into ACC3
73: LDA 1, 1(1)	* increment pointer into string
74: OUTC 3, 0, 0	* Write out character in ACC3
75: LDA 7, -6(7)	* Go back to start of loop
76: OUTC 2, 0, 0	* Write out diagnostic char in ACC2
77: OUTNL 0, 0, 0	* dump out the newline
78: HALT 0, 0, 0	* Halt for stack limit
* END: stack limit message handler
