.DATA 23	* string length
.SDATA "Arrays bounds violation"	* string constant
.DATA 19	* string length
.SDATA "Out of stack space "	* string constant
.DATA 0	* storage location (45) for var a
.DATA 0	* storage location (45) for var a
.DATA 0	* storage location (47) for var b
.DATA 0	* storage location (47) for var b
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
5: LDA 3, -50(5)	* Subtract the stack limit from SP - store in ACC3
6: LDC 2, 50(0)	* Load diagnostic char into ACC2
7: JLE 3, 101(4)	* stack failure
8: ST 0, 0(5)	* save ACC0 into the current SP location
9: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: assignment
10: LDC 0, 47(0)	* Load the base address into ACC0
* BEGIN: push to stack
11: LDA 3, -50(5)	* Subtract the stack limit from SP - store in ACC3
12: LDC 2, 56(0)	* Load diagnostic char into ACC2
13: JLE 3, 101(4)	* stack failure
14: ST 0, 0(5)	* save ACC0 into the current SP location
15: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
16: LDC 0, 0(0)	* Load a constant into ACC0
* END: load an int constant
17: JLT 0, 90(4)	* array bounds too small
18: LDC 3, 2(0)	* Load the array bounds limit into ACC3
19: SUB 3, 0, 3	* Subtract the max from the current index
20: JGE 3, 90(4)	* array bounds too big
21: LDC 1, 1(0)	* Load the skip size into ACC1
22: MUL 1, 1, 0	* Multiply the index by the skip size and place the result back into ACC1
23: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
24: LD 0, 0(5)	* Load stored result into ACC0
25: ADD 0, 1, 0	* add the base (ACC0) and the skip size (ACC1) and put the result back in ACC0
26: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
27: LD 1, 0(5)	* Load stored result into ACC1
28: ST 1, 0(0)	* Store ACC0 into global offset
* END: assignment
* BEGIN: variable (rvalue) access
29: LDC 0, 47(0)	* Load the base address into ACC0
* BEGIN: push to stack
30: LDA 3, -50(5)	* Subtract the stack limit from SP - store in ACC3
31: LDC 2, 56(0)	* Load diagnostic char into ACC2
32: JLE 3, 101(4)	* stack failure
33: ST 0, 0(5)	* save ACC0 into the current SP location
34: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
35: LDC 0, 0(0)	* Load a constant into ACC0
* END: load an int constant
36: JLT 0, 90(4)	* array bounds too small
37: LDC 3, 2(0)	* Load the array bounds limit into ACC3
38: SUB 3, 0, 3	* Subtract the max from the current index
39: JGE 3, 90(4)	* array bounds too big
40: LDC 1, 1(0)	* Load the skip size into ACC1
41: MUL 1, 1, 0	* Multiply the index by the skip size and place the result back into ACC1
42: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
43: LD 0, 0(5)	* Load stored result into ACC0
44: ADD 0, 1, 0	* add the base (ACC0) and the skip size (ACC1) and put the result back in ACC0
45: LD 0, 0(0)	* Load the final dereferenced value into the specified register
* END: variable (rvalue) access
* BEGIN: push to stack
46: LDA 3, -50(5)	* Subtract the stack limit from SP - store in ACC3
47: LDC 2, 50(0)	* Load diagnostic char into ACC2
48: JLE 3, 101(4)	* stack failure
49: ST 0, 0(5)	* save ACC0 into the current SP location
50: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: assignment
51: LDC 0, 45(0)	* Load the base address into ACC0
* BEGIN: push to stack
52: LDA 3, -50(5)	* Subtract the stack limit from SP - store in ACC3
53: LDC 2, 56(0)	* Load diagnostic char into ACC2
54: JLE 3, 101(4)	* stack failure
55: ST 0, 0(5)	* save ACC0 into the current SP location
56: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
57: LDC 0, 0(0)	* Load a constant into ACC0
* END: load an int constant
58: JLT 0, 90(4)	* array bounds too small
59: LDC 3, 2(0)	* Load the array bounds limit into ACC3
60: SUB 3, 0, 3	* Subtract the max from the current index
61: JGE 3, 90(4)	* array bounds too big
62: LDC 1, 1(0)	* Load the skip size into ACC1
63: MUL 1, 1, 0	* Multiply the index by the skip size and place the result back into ACC1
64: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
65: LD 0, 0(5)	* Load stored result into ACC0
66: ADD 0, 1, 0	* add the base (ACC0) and the skip size (ACC1) and put the result back in ACC0
67: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
68: LD 1, 0(5)	* Load stored result into ACC1
69: ST 1, 0(0)	* Store ACC0 into global offset
* END: assignment
* BEGIN: variable (rvalue) access
70: LDC 0, 45(0)	* Load the base address into ACC0
* BEGIN: push to stack
71: LDA 3, -50(5)	* Subtract the stack limit from SP - store in ACC3
72: LDC 2, 56(0)	* Load diagnostic char into ACC2
73: JLE 3, 101(4)	* stack failure
74: ST 0, 0(5)	* save ACC0 into the current SP location
75: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
76: LDC 0, 0(0)	* Load a constant into ACC0
* END: load an int constant
77: JLT 0, 90(4)	* array bounds too small
78: LDC 3, 2(0)	* Load the array bounds limit into ACC3
79: SUB 3, 0, 3	* Subtract the max from the current index
80: JGE 3, 90(4)	* array bounds too big
81: LDC 1, 1(0)	* Load the skip size into ACC1
82: MUL 1, 1, 0	* Multiply the index by the skip size and place the result back into ACC1
83: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
84: LD 0, 0(5)	* Load stored result into ACC0
85: ADD 0, 1, 0	* add the base (ACC0) and the skip size (ACC1) and put the result back in ACC0
86: LD 0, 0(0)	* Load the final dereferenced value into the specified register
* END: variable (rvalue) access
* BEGIN: write(s)
87: OUT 0, 0, 0	* write out the int value in ACC0
88: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
89: HALT 0, 0, 0	* End of Program
* BEGIN: array bounds message handler
90: LDC 0, 1(0)	* Load the error message into ACC0
91: LDA 1, 1(0)	* Increment the address stored in ACC0 to get the string's char location (put in ACC1)
92: LD 0, 0(0)	* Load the string size into ACC0
93: JEQ 0, 5(7)	* Jump to end when run out of string
94: LDA 0, -1(0)	* subtract one from string size
95: LD 2, 0(1)	* Load next char from string into ACC2
96: LDA 1, 1(1)	* increment pointer into string
97: OUTC 2, 0, 0	* Write out character in ACC2
98: LDA 7, -6(7)	* Go back to start of loop
99: OUTNL 0, 0, 0	* dump out the newline
100: HALT 0, 0, 0	* Halt for array bounds
* END: array bounds message handler
* BEGIN: stack limit message handler
101: LDC 0, 25(0)	* Load the error message into ACC0
102: LDA 1, 1(0)	* Increment the address stored in ACC0 to get the string's char location (put in ACC1)
103: LD 0, 0(0)	* Load the string size into ACC0
104: JEQ 0, 5(7)	* Jump to end when run out of string
105: LDA 0, -1(0)	* subtract one from string size
106: LD 3, 0(1)	* Load next char from string into ACC3
107: LDA 1, 1(1)	* increment pointer into string
108: OUTC 3, 0, 0	* Write out character in ACC3
109: LDA 7, -6(7)	* Go back to start of loop
110: OUTC 2, 0, 0	* Write out diagnostic char in ACC2
111: OUTNL 0, 0, 0	* dump out the newline
112: HALT 0, 0, 0	* Halt for stack limit
* END: stack limit message handler
