.DATA 23	* string length
.SDATA "Arrays bounds violation"	* string constant
.DATA 19	* string length
.SDATA "Out of stack space "	* string constant
.DATA 0	* storage location (45) for var pi
.DATA 0	* storage location (45) for var pi
.DATA 0	* storage location (45) for var pi
.DATA 0	* storage location (45) for var pi
.DATA 0	* storage location (45) for var pi
.DATA 0	* storage location (45) for var pi
.DATA 0	* storage location (45) for var pi
.DATA 0	* storage location (45) for var pi
.DATA 0	* storage location (45) for var pi
.DATA 0	* storage location (45) for var pi
.DATA 0	* storage location (55) for var i
.DATA 0	* storage location (56) for var j
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
5: LDA 3, -58(5)	* Subtract the stack limit from SP - store in ACC3
6: LDC 2, 50(0)	* Load diagnostic char into ACC2
7: JLE 3, 114(4)	* stack failure
8: ST 0, 0(5)	* save ACC0 into the current SP location
9: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: assignment
10: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
11: LD 0, 0(5)	* Load stored result into ACC0
12: ST 0, 55(4)	* Store ACC0 into global offset
* END: assignment
* BEGIN: load an int constant
13: LDC 0, 4(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: push to stack
14: LDA 3, -58(5)	* Subtract the stack limit from SP - store in ACC3
15: LDC 2, 50(0)	* Load diagnostic char into ACC2
16: JLE 3, 114(4)	* stack failure
17: ST 0, 0(5)	* save ACC0 into the current SP location
18: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: assignment
19: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
20: LD 0, 0(5)	* Load stored result into ACC0
21: ST 0, 56(4)	* Store ACC0 into global offset
* END: assignment
* BEGIN: load an int constant
22: LDC 0, 3(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: push to stack
23: LDA 3, -58(5)	* Subtract the stack limit from SP - store in ACC3
24: LDC 2, 50(0)	* Load diagnostic char into ACC2
25: JLE 3, 114(4)	* stack failure
26: ST 0, 0(5)	* save ACC0 into the current SP location
27: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: assignment
28: LDC 0, 45(0)	* Load the base address into ACC0
* BEGIN: push to stack
29: LDA 3, -58(5)	* Subtract the stack limit from SP - store in ACC3
30: LDC 2, 56(0)	* Load diagnostic char into ACC2
31: JLE 3, 114(4)	* stack failure
32: ST 0, 0(5)	* save ACC0 into the current SP location
33: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: variable (rvalue) access
34: LD 0, 55(4)	* Load the global var into ACC0
* END: variable (rvalue) access
35: JLT 0, 103(4)	* array bounds too small
36: LDC 3, 2(0)	* Load the array bounds limit into ACC3
37: SUB 3, 0, 3	* Subtract the max from the current index
38: JGE 3, 103(4)	* array bounds too big
39: LDC 1, 5(0)	* Load the skip size into ACC1
40: MUL 1, 1, 0	* Multiply the index by the skip size and place the result back into ACC1
41: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
42: LD 0, 0(5)	* Load stored result into ACC0
43: ADD 0, 1, 0	* add the base (ACC0) and the skip size (ACC1) and put the result back in ACC0
* BEGIN: push to stack
44: LDA 3, -58(5)	* Subtract the stack limit from SP - store in ACC3
45: LDC 2, 56(0)	* Load diagnostic char into ACC2
46: JLE 3, 114(4)	* stack failure
47: ST 0, 0(5)	* save ACC0 into the current SP location
48: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: variable (rvalue) access
49: LD 0, 56(4)	* Load the global var into ACC0
* END: variable (rvalue) access
50: JLT 0, 103(4)	* array bounds too small
51: LDC 3, 5(0)	* Load the array bounds limit into ACC3
52: SUB 3, 0, 3	* Subtract the max from the current index
53: JGE 3, 103(4)	* array bounds too big
54: LDC 1, 1(0)	* Load the skip size into ACC1
55: MUL 1, 1, 0	* Multiply the index by the skip size and place the result back into ACC1
56: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
57: LD 0, 0(5)	* Load stored result into ACC0
58: ADD 0, 1, 0	* add the base (ACC0) and the skip size (ACC1) and put the result back in ACC0
59: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
60: LD 1, 0(5)	* Load stored result into ACC1
61: ST 1, 0(0)	* Store ACC0 into global offset
* END: assignment
* BEGIN: variable (rvalue) access
62: LDC 0, 45(0)	* Load the base address into ACC0
* BEGIN: push to stack
63: LDA 3, -58(5)	* Subtract the stack limit from SP - store in ACC3
64: LDC 2, 56(0)	* Load diagnostic char into ACC2
65: JLE 3, 114(4)	* stack failure
66: ST 0, 0(5)	* save ACC0 into the current SP location
67: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: variable (rvalue) access
68: LD 0, 55(4)	* Load the global var into ACC0
* END: variable (rvalue) access
69: JLT 0, 103(4)	* array bounds too small
70: LDC 3, 2(0)	* Load the array bounds limit into ACC3
71: SUB 3, 0, 3	* Subtract the max from the current index
72: JGE 3, 103(4)	* array bounds too big
73: LDC 1, 5(0)	* Load the skip size into ACC1
74: MUL 1, 1, 0	* Multiply the index by the skip size and place the result back into ACC1
75: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
76: LD 0, 0(5)	* Load stored result into ACC0
77: ADD 0, 1, 0	* add the base (ACC0) and the skip size (ACC1) and put the result back in ACC0
* BEGIN: push to stack
78: LDA 3, -58(5)	* Subtract the stack limit from SP - store in ACC3
79: LDC 2, 56(0)	* Load diagnostic char into ACC2
80: JLE 3, 114(4)	* stack failure
81: ST 0, 0(5)	* save ACC0 into the current SP location
82: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: variable (rvalue) access
83: LD 0, 56(4)	* Load the global var into ACC0
* END: variable (rvalue) access
84: JLT 0, 103(4)	* array bounds too small
85: LDC 3, 5(0)	* Load the array bounds limit into ACC3
86: SUB 3, 0, 3	* Subtract the max from the current index
87: JGE 3, 103(4)	* array bounds too big
88: LDC 1, 1(0)	* Load the skip size into ACC1
89: MUL 1, 1, 0	* Multiply the index by the skip size and place the result back into ACC1
90: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
91: LD 0, 0(5)	* Load stored result into ACC0
92: ADD 0, 1, 0	* add the base (ACC0) and the skip size (ACC1) and put the result back in ACC0
93: LD 0, 0(0)	* Load the final dereferenced value into the specified register
* END: variable (rvalue) access
* BEGIN: write(s)
94: OUT 0, 0, 0	* write out the int value in ACC0
95: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
* BEGIN: variable (rvalue) access
96: LD 0, 55(4)	* Load the global var into ACC0
* END: variable (rvalue) access
* BEGIN: write(s)
97: OUT 0, 0, 0	* write out the int value in ACC0
98: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
* BEGIN: variable (rvalue) access
99: LD 0, 56(4)	* Load the global var into ACC0
* END: variable (rvalue) access
* BEGIN: write(s)
100: OUT 0, 0, 0	* write out the int value in ACC0
101: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
102: HALT 0, 0, 0	* End of Program
* BEGIN: array bounds message handler
103: LDC 0, 1(0)	* Load the error message into ACC0
104: LDA 1, 1(0)	* Increment the address stored in ACC0 to get the string's char location (put in ACC1)
105: LD 0, 0(0)	* Load the string size into ACC0
106: JEQ 0, 5(7)	* Jump to end when run out of string
107: LDA 0, -1(0)	* subtract one from string size
108: LD 2, 0(1)	* Load next char from string into ACC2
109: LDA 1, 1(1)	* increment pointer into string
110: OUTC 2, 0, 0	* Write out character in ACC2
111: LDA 7, -6(7)	* Go back to start of loop
112: OUTNL 0, 0, 0	* dump out the newline
113: HALT 0, 0, 0	* Halt for array bounds
* END: array bounds message handler
* BEGIN: stack limit message handler
114: LDC 0, 25(0)	* Load the error message into ACC0
115: LDA 1, 1(0)	* Increment the address stored in ACC0 to get the string's char location (put in ACC1)
116: LD 0, 0(0)	* Load the string size into ACC0
117: JEQ 0, 5(7)	* Jump to end when run out of string
118: LDA 0, -1(0)	* subtract one from string size
119: LD 3, 0(1)	* Load next char from string into ACC3
120: LDA 1, 1(1)	* increment pointer into string
121: OUTC 3, 0, 0	* Write out character in ACC3
122: LDA 7, -6(7)	* Go back to start of loop
123: OUTC 2, 0, 0	* Write out diagnostic char in ACC2
124: OUTNL 0, 0, 0	* dump out the newline
125: HALT 0, 0, 0	* Halt for stack limit
* END: stack limit message handler
