.DATA 23	* string length
.SDATA "Arrays bounds violation"	* string constant
.DATA 19	* string length
.SDATA "Out of stack space "	* string constant
.DATA 2	* string length
.SDATA "Hi"	* string constant
.DATA 0	* storage location (48) for var a
.DATA 0	* storage location (49) for var b
.DATA 0	* storage location (50) for var c
* BEGIN preamble
0: LDC 4, 0(0)	* initialize ZEROREG to 0
1: LD 5, 0(4)	* initialize SP to end of memory
2: LDA 5, -1(5)	* subtract one to get the true SP
3: LDA 6, 0(5)	* FP and SP start off the same
* END preamble
* BEGIN: load an int constant
4: LDC 0, 3(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: push to stack
5: LDA 3, -52(5)	* Subtract the stack limit from SP - store in ACC3
6: LDC 2, 50(0)	* Load diagnostic char into ACC2
7: JLE 3, 70(4)	* stack failure
8: ST 0, 0(5)	* save ACC0 into the current SP location
9: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: assignment
10: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
11: LD 0, 0(5)	* Load stored result into ACC0
12: ST 0, 48(4)	* Store ACC0 into global offset
* END: assignment
* BEGIN: load a bool value into ACC0
13: LDC 0, 1(0)	* Load a boolean value into ACC0
* END: load a bool value into ACC0
* BEGIN: push to stack
14: LDA 3, -52(5)	* Subtract the stack limit from SP - store in ACC3
15: LDC 2, 50(0)	* Load diagnostic char into ACC2
16: JLE 3, 70(4)	* stack failure
17: ST 0, 0(5)	* save ACC0 into the current SP location
18: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: assignment
19: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
20: LD 0, 0(5)	* Load stored result into ACC0
21: ST 0, 49(4)	* Store ACC0 into global offset
* END: assignment
* BEGIN: load a bool value into ACC0
22: LDC 0, 1(0)	* Load a boolean value into ACC0
* END: load a bool value into ACC0
* BEGIN: push to stack
23: LDA 3, -52(5)	* Subtract the stack limit from SP - store in ACC3
24: LDC 2, 50(0)	* Load diagnostic char into ACC2
25: JLE 3, 70(4)	* stack failure
26: ST 0, 0(5)	* save ACC0 into the current SP location
27: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: assignment
28: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
29: LD 0, 0(5)	* Load stored result into ACC0
30: ST 0, 48(4)	* Store ACC0 into global offset
* END: assignment
* BEGIN: load a bool value into ACC0
31: LDC 0, 0(0)	* Load a boolean value into ACC0
* END: load a bool value into ACC0
32: JEQ 0, 2(7)	* Jump to Load 1 if ACC0 == 0
33: LDC 0, 0(0)	* Load 0 into ACC0
34: LDA 7, 1(7)	* Jump over Load 1
35: LDC 0, 1(0)	* Load 1 into ACC0
* BEGIN: push to stack
36: LDA 3, -52(5)	* Subtract the stack limit from SP - store in ACC3
37: LDC 2, 50(0)	* Load diagnostic char into ACC2
38: JLE 3, 70(4)	* stack failure
39: ST 0, 0(5)	* save ACC0 into the current SP location
40: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: assignment
41: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
42: LD 0, 0(5)	* Load stored result into ACC0
43: ST 0, 49(4)	* Store ACC0 into global offset
* END: assignment
* BEGIN: load a string's location into ACC0
44: LDC 0, 45(0)	* Load a string's location into ACC0
* END: load a string's location into ACC0
* BEGIN: push to stack
45: LDA 3, -52(5)	* Subtract the stack limit from SP - store in ACC3
46: LDC 2, 50(0)	* Load diagnostic char into ACC2
47: JLE 3, 70(4)	* stack failure
48: ST 0, 0(5)	* save ACC0 into the current SP location
49: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: assignment
50: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
51: LD 0, 0(5)	* Load stored result into ACC0
52: ST 0, 50(4)	* Store ACC0 into global offset
* END: assignment
* BEGIN: variable (rvalue) access
53: LD 0, 48(4)	* Load the global var into ACC0
* END: variable (rvalue) access
* BEGIN: write(s)
54: OUT 0, 0, 0	* write out the int value in ACC0
55: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
* BEGIN: variable (rvalue) access
56: LD 0, 49(4)	* Load the global var into ACC0
* END: variable (rvalue) access
* BEGIN: write(s)
57: OUT 0, 0, 0	* write out the int value in ACC0
58: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
* BEGIN: variable (rvalue) access
59: LD 0, 50(4)	* Load the global var into ACC0
* END: variable (rvalue) access
* BEGIN: write(s)
60: LDA 1, 1(0)	* Increment the address stored in ACC0 to get the string's char location (put in ACC1)
61: LD 0, 0(0)	* Load the string size into ACC0
62: JEQ 0, 5(7)	* Jump to end when run out of string
63: LDA 0, -1(0)	* subtract one from string size
64: LD 2, 0(1)	* Load next char from string into ACC2
65: LDA 1, 1(1)	* increment pointer into string
66: OUTC 2, 0, 0	* Write out character in ACC2
67: LDA 7, -6(7)	* Go back to start of loop
68: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
69: HALT 0, 0, 0	* End of Program
* BEGIN: stack limit message handler
70: LDC 0, 25(0)	* Load the error message into ACC0
71: LDA 1, 1(0)	* Increment the address stored in ACC0 to get the string's char location (put in ACC1)
72: LD 0, 0(0)	* Load the string size into ACC0
73: JEQ 0, 5(7)	* Jump to end when run out of string
74: LDA 0, -1(0)	* subtract one from string size
75: LD 3, 0(1)	* Load next char from string into ACC3
76: LDA 1, 1(1)	* increment pointer into string
77: OUTC 3, 0, 0	* Write out character in ACC3
78: LDA 7, -6(7)	* Go back to start of loop
79: OUTC 2, 0, 0	* Write out diagnostic char in ACC2
80: OUTNL 0, 0, 0	* dump out the newline
81: HALT 0, 0, 0	* Halt for stack limit
* END: stack limit message handler
