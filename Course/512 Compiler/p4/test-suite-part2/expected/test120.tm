.DATA 23	* string length
.SDATA "Arrays bounds violation"	* string constant
.DATA 19	* string length
.SDATA "Out of stack space "	* string constant
.DATA 0	* storage location (45) for var bar
.DATA 0	* storage location (45) for var bar
.DATA 0	* storage location (45) for var bar
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
5: LDA 3, -49(5)	* Subtract the stack limit from SP - store in ACC3
6: LDC 2, 50(0)	* Load diagnostic char into ACC2
7: JLE 3, 110(4)	* stack failure
8: ST 0, 0(5)	* save ACC0 into the current SP location
9: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: assignment
10: LDC 0, 45(0)	* Load the base address into ACC0
* BEGIN: push to stack
11: LDA 3, -49(5)	* Subtract the stack limit from SP - store in ACC3
12: LDC 2, 56(0)	* Load diagnostic char into ACC2
13: JLE 3, 110(4)	* stack failure
14: ST 0, 0(5)	* save ACC0 into the current SP location
15: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
16: LDC 0, 0(0)	* Load a constant into ACC0
* END: load an int constant
17: JLT 0, 99(4)	* array bounds too small
18: LDC 3, 3(0)	* Load the array bounds limit into ACC3
19: SUB 3, 0, 3	* Subtract the max from the current index
20: JGE 3, 99(4)	* array bounds too big
21: LDC 1, 1(0)	* Load the skip size into ACC1
22: MUL 1, 1, 0	* Multiply the index by the skip size and place the result back into ACC1
23: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
24: LD 0, 0(5)	* Load stored result into ACC0
25: ADD 0, 1, 0	* add the base (ACC0) and the skip size (ACC1) and put the result back in ACC0
26: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
27: LD 1, 0(5)	* Load stored result into ACC1
28: ST 1, 0(0)	* Store ACC0 into global offset
* END: assignment
* BEGIN: load an int constant
29: LDC 0, 1(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: push to stack
30: LDA 3, -49(5)	* Subtract the stack limit from SP - store in ACC3
31: LDC 2, 50(0)	* Load diagnostic char into ACC2
32: JLE 3, 110(4)	* stack failure
33: ST 0, 0(5)	* save ACC0 into the current SP location
34: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: assignment
35: LDC 0, 45(0)	* Load the base address into ACC0
* BEGIN: push to stack
36: LDA 3, -49(5)	* Subtract the stack limit from SP - store in ACC3
37: LDC 2, 56(0)	* Load diagnostic char into ACC2
38: JLE 3, 110(4)	* stack failure
39: ST 0, 0(5)	* save ACC0 into the current SP location
40: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
41: LDC 0, 1(0)	* Load a constant into ACC0
* END: load an int constant
42: JLT 0, 99(4)	* array bounds too small
43: LDC 3, 3(0)	* Load the array bounds limit into ACC3
44: SUB 3, 0, 3	* Subtract the max from the current index
45: JGE 3, 99(4)	* array bounds too big
46: LDC 1, 1(0)	* Load the skip size into ACC1
47: MUL 1, 1, 0	* Multiply the index by the skip size and place the result back into ACC1
48: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
49: LD 0, 0(5)	* Load stored result into ACC0
50: ADD 0, 1, 0	* add the base (ACC0) and the skip size (ACC1) and put the result back in ACC0
51: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
52: LD 1, 0(5)	* Load stored result into ACC1
53: ST 1, 0(0)	* Store ACC0 into global offset
* END: assignment
* BEGIN: load an int constant
54: LDC 0, 2(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: push to stack
55: LDA 3, -49(5)	* Subtract the stack limit from SP - store in ACC3
56: LDC 2, 50(0)	* Load diagnostic char into ACC2
57: JLE 3, 110(4)	* stack failure
58: ST 0, 0(5)	* save ACC0 into the current SP location
59: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: assignment
60: LDC 0, 45(0)	* Load the base address into ACC0
* BEGIN: push to stack
61: LDA 3, -49(5)	* Subtract the stack limit from SP - store in ACC3
62: LDC 2, 56(0)	* Load diagnostic char into ACC2
63: JLE 3, 110(4)	* stack failure
64: ST 0, 0(5)	* save ACC0 into the current SP location
65: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
66: LDC 0, 2(0)	* Load a constant into ACC0
* END: load an int constant
67: JLT 0, 99(4)	* array bounds too small
68: LDC 3, 3(0)	* Load the array bounds limit into ACC3
69: SUB 3, 0, 3	* Subtract the max from the current index
70: JGE 3, 99(4)	* array bounds too big
71: LDC 1, 1(0)	* Load the skip size into ACC1
72: MUL 1, 1, 0	* Multiply the index by the skip size and place the result back into ACC1
73: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
74: LD 0, 0(5)	* Load stored result into ACC0
75: ADD 0, 1, 0	* add the base (ACC0) and the skip size (ACC1) and put the result back in ACC0
76: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
77: LD 1, 0(5)	* Load stored result into ACC1
78: ST 1, 0(0)	* Store ACC0 into global offset
* END: assignment
* BEGIN: variable (rvalue) access
79: LDC 0, 45(0)	* Load the base address into ACC0
* BEGIN: push to stack
80: LDA 3, -49(5)	* Subtract the stack limit from SP - store in ACC3
81: LDC 2, 56(0)	* Load diagnostic char into ACC2
82: JLE 3, 110(4)	* stack failure
83: ST 0, 0(5)	* save ACC0 into the current SP location
84: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
85: LDC 0, 1(0)	* Load a constant into ACC0
* END: load an int constant
86: JLT 0, 99(4)	* array bounds too small
87: LDC 3, 3(0)	* Load the array bounds limit into ACC3
88: SUB 3, 0, 3	* Subtract the max from the current index
89: JGE 3, 99(4)	* array bounds too big
90: LDC 1, 1(0)	* Load the skip size into ACC1
91: MUL 1, 1, 0	* Multiply the index by the skip size and place the result back into ACC1
92: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
93: LD 0, 0(5)	* Load stored result into ACC0
94: ADD 0, 1, 0	* add the base (ACC0) and the skip size (ACC1) and put the result back in ACC0
95: LD 0, 0(0)	* Load the final dereferenced value into the specified register
* END: variable (rvalue) access
* BEGIN: write(s)
96: OUT 0, 0, 0	* write out the int value in ACC0
97: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
98: HALT 0, 0, 0	* End of Program
* BEGIN: array bounds message handler
99: LDC 0, 1(0)	* Load the error message into ACC0
100: LDA 1, 1(0)	* Increment the address stored in ACC0 to get the string's char location (put in ACC1)
101: LD 0, 0(0)	* Load the string size into ACC0
102: JEQ 0, 5(7)	* Jump to end when run out of string
103: LDA 0, -1(0)	* subtract one from string size
104: LD 2, 0(1)	* Load next char from string into ACC2
105: LDA 1, 1(1)	* increment pointer into string
106: OUTC 2, 0, 0	* Write out character in ACC2
107: LDA 7, -6(7)	* Go back to start of loop
108: OUTNL 0, 0, 0	* dump out the newline
109: HALT 0, 0, 0	* Halt for array bounds
* END: array bounds message handler
* BEGIN: stack limit message handler
110: LDC 0, 25(0)	* Load the error message into ACC0
111: LDA 1, 1(0)	* Increment the address stored in ACC0 to get the string's char location (put in ACC1)
112: LD 0, 0(0)	* Load the string size into ACC0
113: JEQ 0, 5(7)	* Jump to end when run out of string
114: LDA 0, -1(0)	* subtract one from string size
115: LD 3, 0(1)	* Load next char from string into ACC3
116: LDA 1, 1(1)	* increment pointer into string
117: OUTC 3, 0, 0	* Write out character in ACC3
118: LDA 7, -6(7)	* Go back to start of loop
119: OUTC 2, 0, 0	* Write out diagnostic char in ACC2
120: OUTNL 0, 0, 0	* dump out the newline
121: HALT 0, 0, 0	* Halt for stack limit
* END: stack limit message handler
