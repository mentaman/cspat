.DATA 23	* string length
.SDATA "Arrays bounds violation"	* string constant
.DATA 19	* string length
.SDATA "Out of stack space "	* string constant
.DATA 2	* string length
.SDATA "Hi"	* string constant
.DATA 5	* string length
.SDATA "There"	* string constant
.DATA 0	* storage location (54) for var a
.DATA 0	* storage location (55) for var b
.DATA 0	* storage location (56) for var c
.DATA 0	* storage location (57) for var d
.DATA 0	* storage location (58) for var e
.DATA 0	* storage location (59) for var f
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
5: LDA 3, -61(5)	* Subtract the stack limit from SP - store in ACC3
6: LDC 2, 50(0)	* Load diagnostic char into ACC2
7: JLE 3, 91(4)	* stack failure
8: ST 0, 0(5)	* save ACC0 into the current SP location
9: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: assignment
10: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
11: LD 0, 0(5)	* Load stored result into ACC0
12: ST 0, 54(4)	* Store ACC0 into global offset
* END: assignment
* BEGIN: load an int constant
13: LDC 0, 1(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: push to stack
14: LDA 3, -61(5)	* Subtract the stack limit from SP - store in ACC3
15: LDC 2, 50(0)	* Load diagnostic char into ACC2
16: JLE 3, 91(4)	* stack failure
17: ST 0, 0(5)	* save ACC0 into the current SP location
18: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: assignment
19: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
20: LD 0, 0(5)	* Load stored result into ACC0
21: ST 0, 55(4)	* Store ACC0 into global offset
* END: assignment
* BEGIN: load a bool value into ACC0
22: LDC 0, 1(0)	* Load a boolean value into ACC0
* END: load a bool value into ACC0
* BEGIN: push to stack
23: LDA 3, -61(5)	* Subtract the stack limit from SP - store in ACC3
24: LDC 2, 50(0)	* Load diagnostic char into ACC2
25: JLE 3, 91(4)	* stack failure
26: ST 0, 0(5)	* save ACC0 into the current SP location
27: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: assignment
28: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
29: LD 0, 0(5)	* Load stored result into ACC0
30: ST 0, 56(4)	* Store ACC0 into global offset
* END: assignment
* BEGIN: load a bool value into ACC0
31: LDC 0, 0(0)	* Load a boolean value into ACC0
* END: load a bool value into ACC0
* BEGIN: push to stack
32: LDA 3, -61(5)	* Subtract the stack limit from SP - store in ACC3
33: LDC 2, 50(0)	* Load diagnostic char into ACC2
34: JLE 3, 91(4)	* stack failure
35: ST 0, 0(5)	* save ACC0 into the current SP location
36: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: assignment
37: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
38: LD 0, 0(5)	* Load stored result into ACC0
39: ST 0, 57(4)	* Store ACC0 into global offset
* END: assignment
* BEGIN: load a string's location into ACC0
40: LDC 0, 45(0)	* Load a string's location into ACC0
* END: load a string's location into ACC0
* BEGIN: push to stack
41: LDA 3, -61(5)	* Subtract the stack limit from SP - store in ACC3
42: LDC 2, 50(0)	* Load diagnostic char into ACC2
43: JLE 3, 91(4)	* stack failure
44: ST 0, 0(5)	* save ACC0 into the current SP location
45: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: assignment
46: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
47: LD 0, 0(5)	* Load stored result into ACC0
48: ST 0, 58(4)	* Store ACC0 into global offset
* END: assignment
* BEGIN: load a string's location into ACC0
49: LDC 0, 48(0)	* Load a string's location into ACC0
* END: load a string's location into ACC0
* BEGIN: push to stack
50: LDA 3, -61(5)	* Subtract the stack limit from SP - store in ACC3
51: LDC 2, 50(0)	* Load diagnostic char into ACC2
52: JLE 3, 91(4)	* stack failure
53: ST 0, 0(5)	* save ACC0 into the current SP location
54: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: assignment
55: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
56: LD 0, 0(5)	* Load stored result into ACC0
57: ST 0, 59(4)	* Store ACC0 into global offset
* END: assignment
* BEGIN: variable (rvalue) access
58: LD 0, 54(4)	* Load the global var into ACC0
* END: variable (rvalue) access
* BEGIN: write(s)
59: OUT 0, 0, 0	* write out the int value in ACC0
60: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
* BEGIN: variable (rvalue) access
61: LD 0, 55(4)	* Load the global var into ACC0
* END: variable (rvalue) access
* BEGIN: write(s)
62: OUT 0, 0, 0	* write out the int value in ACC0
63: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
* BEGIN: variable (rvalue) access
64: LD 0, 56(4)	* Load the global var into ACC0
* END: variable (rvalue) access
* BEGIN: write(s)
65: OUT 0, 0, 0	* write out the int value in ACC0
66: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
* BEGIN: variable (rvalue) access
67: LD 0, 57(4)	* Load the global var into ACC0
* END: variable (rvalue) access
* BEGIN: write(s)
68: OUT 0, 0, 0	* write out the int value in ACC0
69: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
* BEGIN: variable (rvalue) access
70: LD 0, 58(4)	* Load the global var into ACC0
* END: variable (rvalue) access
* BEGIN: write(s)
71: LDA 1, 1(0)	* Increment the address stored in ACC0 to get the string's char location (put in ACC1)
72: LD 0, 0(0)	* Load the string size into ACC0
73: JEQ 0, 5(7)	* Jump to end when run out of string
74: LDA 0, -1(0)	* subtract one from string size
75: LD 2, 0(1)	* Load next char from string into ACC2
76: LDA 1, 1(1)	* increment pointer into string
77: OUTC 2, 0, 0	* Write out character in ACC2
78: LDA 7, -6(7)	* Go back to start of loop
79: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
* BEGIN: variable (rvalue) access
80: LD 0, 59(4)	* Load the global var into ACC0
* END: variable (rvalue) access
* BEGIN: write(s)
81: LDA 1, 1(0)	* Increment the address stored in ACC0 to get the string's char location (put in ACC1)
82: LD 0, 0(0)	* Load the string size into ACC0
83: JEQ 0, 5(7)	* Jump to end when run out of string
84: LDA 0, -1(0)	* subtract one from string size
85: LD 2, 0(1)	* Load next char from string into ACC2
86: LDA 1, 1(1)	* increment pointer into string
87: OUTC 2, 0, 0	* Write out character in ACC2
88: LDA 7, -6(7)	* Go back to start of loop
89: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
90: HALT 0, 0, 0	* End of Program
* BEGIN: stack limit message handler
91: LDC 0, 25(0)	* Load the error message into ACC0
92: LDA 1, 1(0)	* Increment the address stored in ACC0 to get the string's char location (put in ACC1)
93: LD 0, 0(0)	* Load the string size into ACC0
94: JEQ 0, 5(7)	* Jump to end when run out of string
95: LDA 0, -1(0)	* subtract one from string size
96: LD 3, 0(1)	* Load next char from string into ACC3
97: LDA 1, 1(1)	* increment pointer into string
98: OUTC 3, 0, 0	* Write out character in ACC3
99: LDA 7, -6(7)	* Go back to start of loop
100: OUTC 2, 0, 0	* Write out diagnostic char in ACC2
101: OUTNL 0, 0, 0	* dump out the newline
102: HALT 0, 0, 0	* Halt for stack limit
* END: stack limit message handler
