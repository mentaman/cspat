.DATA 23	* string length
.SDATA "Arrays bounds violation"	* string constant
.DATA 19	* string length
.SDATA "Out of stack space "	* string constant
.DATA 0	* storage location (45) for var f
.DATA 0	* storage location (46) for var g
.DATA 0	* storage location (47) for var h
.DATA 0	* storage location (48) for var i
.DATA 0	* storage location (49) for var a
.DATA 0	* storage location (50) for var b
.DATA 0	* storage location (51) for var c
.DATA 0	* storage location (52) for var d
.DATA 0	* storage location (53) for var e
* BEGIN preamble
0: LDC 4, 0(0)	* initialize ZEROREG to 0
1: LD 5, 0(4)	* initialize SP to end of memory
2: LDA 5, -1(5)	* subtract one to get the true SP
3: LDA 6, 0(5)	* FP and SP start off the same
* END preamble
* BEGIN: load an int constant
4: LDC 0, 1(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: push to stack
5: LDA 3, -55(5)	* Subtract the stack limit from SP - store in ACC3
6: LDC 2, 50(0)	* Load diagnostic char into ACC2
7: JLE 3, 113(4)	* stack failure
8: ST 0, 0(5)	* save ACC0 into the current SP location
9: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: assignment
10: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
11: LD 0, 0(5)	* Load stored result into ACC0
12: ST 0, 49(4)	* Store ACC0 into global offset
* END: assignment
* BEGIN: load an int constant
13: LDC 0, 2(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: push to stack
14: LDA 3, -55(5)	* Subtract the stack limit from SP - store in ACC3
15: LDC 2, 50(0)	* Load diagnostic char into ACC2
16: JLE 3, 113(4)	* stack failure
17: ST 0, 0(5)	* save ACC0 into the current SP location
18: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: assignment
19: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
20: LD 0, 0(5)	* Load stored result into ACC0
21: ST 0, 50(4)	* Store ACC0 into global offset
* END: assignment
* BEGIN: load an int constant
22: LDC 0, 3(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: push to stack
23: LDA 3, -55(5)	* Subtract the stack limit from SP - store in ACC3
24: LDC 2, 50(0)	* Load diagnostic char into ACC2
25: JLE 3, 113(4)	* stack failure
26: ST 0, 0(5)	* save ACC0 into the current SP location
27: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: assignment
28: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
29: LD 0, 0(5)	* Load stored result into ACC0
30: ST 0, 51(4)	* Store ACC0 into global offset
* END: assignment
* BEGIN: load an int constant
31: LDC 0, 4(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: push to stack
32: LDA 3, -55(5)	* Subtract the stack limit from SP - store in ACC3
33: LDC 2, 50(0)	* Load diagnostic char into ACC2
34: JLE 3, 113(4)	* stack failure
35: ST 0, 0(5)	* save ACC0 into the current SP location
36: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: assignment
37: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
38: LD 0, 0(5)	* Load stored result into ACC0
39: ST 0, 52(4)	* Store ACC0 into global offset
* END: assignment
* BEGIN: load an int constant
40: LDC 0, 5(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: push to stack
41: LDA 3, -55(5)	* Subtract the stack limit from SP - store in ACC3
42: LDC 2, 50(0)	* Load diagnostic char into ACC2
43: JLE 3, 113(4)	* stack failure
44: ST 0, 0(5)	* save ACC0 into the current SP location
45: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: assignment
46: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
47: LD 0, 0(5)	* Load stored result into ACC0
48: ST 0, 53(4)	* Store ACC0 into global offset
* END: assignment
* BEGIN: load a bool value into ACC0
49: LDC 0, 1(0)	* Load a boolean value into ACC0
* END: load a bool value into ACC0
* BEGIN: push to stack
50: LDA 3, -55(5)	* Subtract the stack limit from SP - store in ACC3
51: LDC 2, 50(0)	* Load diagnostic char into ACC2
52: JLE 3, 113(4)	* stack failure
53: ST 0, 0(5)	* save ACC0 into the current SP location
54: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: assignment
55: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
56: LD 0, 0(5)	* Load stored result into ACC0
57: ST 0, 45(4)	* Store ACC0 into global offset
* END: assignment
* BEGIN: load a bool value into ACC0
58: LDC 0, 1(0)	* Load a boolean value into ACC0
* END: load a bool value into ACC0
* BEGIN: push to stack
59: LDA 3, -55(5)	* Subtract the stack limit from SP - store in ACC3
60: LDC 2, 50(0)	* Load diagnostic char into ACC2
61: JLE 3, 113(4)	* stack failure
62: ST 0, 0(5)	* save ACC0 into the current SP location
63: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: assignment
64: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
65: LD 0, 0(5)	* Load stored result into ACC0
66: ST 0, 46(4)	* Store ACC0 into global offset
* END: assignment
* BEGIN: load a bool value into ACC0
67: LDC 0, 1(0)	* Load a boolean value into ACC0
* END: load a bool value into ACC0
* BEGIN: push to stack
68: LDA 3, -55(5)	* Subtract the stack limit from SP - store in ACC3
69: LDC 2, 50(0)	* Load diagnostic char into ACC2
70: JLE 3, 113(4)	* stack failure
71: ST 0, 0(5)	* save ACC0 into the current SP location
72: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: assignment
73: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
74: LD 0, 0(5)	* Load stored result into ACC0
75: ST 0, 47(4)	* Store ACC0 into global offset
* END: assignment
* BEGIN: load a bool value into ACC0
76: LDC 0, 1(0)	* Load a boolean value into ACC0
* END: load a bool value into ACC0
* BEGIN: push to stack
77: LDA 3, -55(5)	* Subtract the stack limit from SP - store in ACC3
78: LDC 2, 50(0)	* Load diagnostic char into ACC2
79: JLE 3, 113(4)	* stack failure
80: ST 0, 0(5)	* save ACC0 into the current SP location
81: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: assignment
82: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
83: LD 0, 0(5)	* Load stored result into ACC0
84: ST 0, 48(4)	* Store ACC0 into global offset
* END: assignment
* BEGIN: variable (rvalue) access
85: LD 0, 49(4)	* Load the global var into ACC0
* END: variable (rvalue) access
* BEGIN: write(s)
86: OUT 0, 0, 0	* write out the int value in ACC0
87: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
* BEGIN: variable (rvalue) access
88: LD 0, 50(4)	* Load the global var into ACC0
* END: variable (rvalue) access
* BEGIN: write(s)
89: OUT 0, 0, 0	* write out the int value in ACC0
90: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
* BEGIN: variable (rvalue) access
91: LD 0, 51(4)	* Load the global var into ACC0
* END: variable (rvalue) access
* BEGIN: write(s)
92: OUT 0, 0, 0	* write out the int value in ACC0
93: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
* BEGIN: variable (rvalue) access
94: LD 0, 52(4)	* Load the global var into ACC0
* END: variable (rvalue) access
* BEGIN: write(s)
95: OUT 0, 0, 0	* write out the int value in ACC0
96: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
* BEGIN: variable (rvalue) access
97: LD 0, 53(4)	* Load the global var into ACC0
* END: variable (rvalue) access
* BEGIN: write(s)
98: OUT 0, 0, 0	* write out the int value in ACC0
99: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
* BEGIN: variable (rvalue) access
100: LD 0, 45(4)	* Load the global var into ACC0
* END: variable (rvalue) access
* BEGIN: write(s)
101: OUT 0, 0, 0	* write out the int value in ACC0
102: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
* BEGIN: variable (rvalue) access
103: LD 0, 46(4)	* Load the global var into ACC0
* END: variable (rvalue) access
* BEGIN: write(s)
104: OUT 0, 0, 0	* write out the int value in ACC0
105: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
* BEGIN: variable (rvalue) access
106: LD 0, 47(4)	* Load the global var into ACC0
* END: variable (rvalue) access
* BEGIN: write(s)
107: OUT 0, 0, 0	* write out the int value in ACC0
108: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
* BEGIN: variable (rvalue) access
109: LD 0, 48(4)	* Load the global var into ACC0
* END: variable (rvalue) access
* BEGIN: write(s)
110: OUT 0, 0, 0	* write out the int value in ACC0
111: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
112: HALT 0, 0, 0	* End of Program
* BEGIN: stack limit message handler
113: LDC 0, 25(0)	* Load the error message into ACC0
114: LDA 1, 1(0)	* Increment the address stored in ACC0 to get the string's char location (put in ACC1)
115: LD 0, 0(0)	* Load the string size into ACC0
116: JEQ 0, 5(7)	* Jump to end when run out of string
117: LDA 0, -1(0)	* subtract one from string size
118: LD 3, 0(1)	* Load next char from string into ACC3
119: LDA 1, 1(1)	* increment pointer into string
120: OUTC 3, 0, 0	* Write out character in ACC3
121: LDA 7, -6(7)	* Go back to start of loop
122: OUTC 2, 0, 0	* Write out diagnostic char in ACC2
123: OUTNL 0, 0, 0	* dump out the newline
124: HALT 0, 0, 0	* Halt for stack limit
* END: stack limit message handler
