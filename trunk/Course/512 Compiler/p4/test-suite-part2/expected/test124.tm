.DATA 23	* string length
.SDATA "Arrays bounds violation"	* string constant
.DATA 19	* string length
.SDATA "Out of stack space "	* string constant
.DATA 0	* storage location (45) for var a
.DATA 0	* storage location (45) for var a
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
5: LDA 3, -48(5)	* Subtract the stack limit from SP - store in ACC3
6: LDC 2, 50(0)	* Load diagnostic char into ACC2
7: JLE 3, 121(4)	* stack failure
8: ST 0, 0(5)	* save ACC0 into the current SP location
9: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: assignment
10: LDC 0, 45(0)	* Load the base address into ACC0
* BEGIN: push to stack
11: LDA 3, -48(5)	* Subtract the stack limit from SP - store in ACC3
12: LDC 2, 56(0)	* Load diagnostic char into ACC2
13: JLE 3, 121(4)	* stack failure
14: ST 0, 0(5)	* save ACC0 into the current SP location
15: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
16: LDC 0, 0(0)	* Load a constant into ACC0
* END: load an int constant
17: JLT 0, 110(4)	* array bounds too small
18: LDC 3, 2(0)	* Load the array bounds limit into ACC3
19: SUB 3, 0, 3	* Subtract the max from the current index
20: JGE 3, 110(4)	* array bounds too big
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
29: LDC 0, 45(0)	* Load the base address into ACC0
* BEGIN: push to stack
30: LDA 3, -48(5)	* Subtract the stack limit from SP - store in ACC3
31: LDC 2, 56(0)	* Load diagnostic char into ACC2
32: JLE 3, 121(4)	* stack failure
33: ST 0, 0(5)	* save ACC0 into the current SP location
34: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
35: LDC 0, 0(0)	* Load a constant into ACC0
* END: load an int constant
36: JLT 0, 110(4)	* array bounds too small
37: LDC 3, 2(0)	* Load the array bounds limit into ACC3
38: SUB 3, 0, 3	* Subtract the max from the current index
39: JGE 3, 110(4)	* array bounds too big
40: LDC 1, 1(0)	* Load the skip size into ACC1
41: MUL 1, 1, 0	* Multiply the index by the skip size and place the result back into ACC1
42: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
43: LD 0, 0(5)	* Load stored result into ACC0
44: ADD 0, 1, 0	* add the base (ACC0) and the skip size (ACC1) and put the result back in ACC0
45: LD 0, 0(0)	* Load the final dereferenced value into the specified register
* END: variable (rvalue) access
46: SUB 0, 4, 0	* Subtract ACC0 from ZEROREG to negate it
* BEGIN: push to stack
47: LDA 3, -48(5)	* Subtract the stack limit from SP - store in ACC3
48: LDC 2, 50(0)	* Load diagnostic char into ACC2
49: JLE 3, 121(4)	* stack failure
50: ST 0, 0(5)	* save ACC0 into the current SP location
51: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: assignment
52: LDC 0, 45(0)	* Load the base address into ACC0
* BEGIN: push to stack
53: LDA 3, -48(5)	* Subtract the stack limit from SP - store in ACC3
54: LDC 2, 56(0)	* Load diagnostic char into ACC2
55: JLE 3, 121(4)	* stack failure
56: ST 0, 0(5)	* save ACC0 into the current SP location
57: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
58: LDC 0, 1(0)	* Load a constant into ACC0
* END: load an int constant
59: JLT 0, 110(4)	* array bounds too small
60: LDC 3, 2(0)	* Load the array bounds limit into ACC3
61: SUB 3, 0, 3	* Subtract the max from the current index
62: JGE 3, 110(4)	* array bounds too big
63: LDC 1, 1(0)	* Load the skip size into ACC1
64: MUL 1, 1, 0	* Multiply the index by the skip size and place the result back into ACC1
65: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
66: LD 0, 0(5)	* Load stored result into ACC0
67: ADD 0, 1, 0	* add the base (ACC0) and the skip size (ACC1) and put the result back in ACC0
68: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
69: LD 1, 0(5)	* Load stored result into ACC1
70: ST 1, 0(0)	* Store ACC0 into global offset
* END: assignment
* BEGIN: variable (rvalue) access
71: LDC 0, 45(0)	* Load the base address into ACC0
* BEGIN: push to stack
72: LDA 3, -48(5)	* Subtract the stack limit from SP - store in ACC3
73: LDC 2, 56(0)	* Load diagnostic char into ACC2
74: JLE 3, 121(4)	* stack failure
75: ST 0, 0(5)	* save ACC0 into the current SP location
76: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
77: LDC 0, 0(0)	* Load a constant into ACC0
* END: load an int constant
78: JLT 0, 110(4)	* array bounds too small
79: LDC 3, 2(0)	* Load the array bounds limit into ACC3
80: SUB 3, 0, 3	* Subtract the max from the current index
81: JGE 3, 110(4)	* array bounds too big
82: LDC 1, 1(0)	* Load the skip size into ACC1
83: MUL 1, 1, 0	* Multiply the index by the skip size and place the result back into ACC1
84: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
85: LD 0, 0(5)	* Load stored result into ACC0
86: ADD 0, 1, 0	* add the base (ACC0) and the skip size (ACC1) and put the result back in ACC0
87: LD 0, 0(0)	* Load the final dereferenced value into the specified register
* END: variable (rvalue) access
* BEGIN: write(s)
88: OUT 0, 0, 0	* write out the int value in ACC0
89: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
* BEGIN: variable (rvalue) access
90: LDC 0, 45(0)	* Load the base address into ACC0
* BEGIN: push to stack
91: LDA 3, -48(5)	* Subtract the stack limit from SP - store in ACC3
92: LDC 2, 56(0)	* Load diagnostic char into ACC2
93: JLE 3, 121(4)	* stack failure
94: ST 0, 0(5)	* save ACC0 into the current SP location
95: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
96: LDC 0, 1(0)	* Load a constant into ACC0
* END: load an int constant
97: JLT 0, 110(4)	* array bounds too small
98: LDC 3, 2(0)	* Load the array bounds limit into ACC3
99: SUB 3, 0, 3	* Subtract the max from the current index
100: JGE 3, 110(4)	* array bounds too big
101: LDC 1, 1(0)	* Load the skip size into ACC1
102: MUL 1, 1, 0	* Multiply the index by the skip size and place the result back into ACC1
103: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
104: LD 0, 0(5)	* Load stored result into ACC0
105: ADD 0, 1, 0	* add the base (ACC0) and the skip size (ACC1) and put the result back in ACC0
106: LD 0, 0(0)	* Load the final dereferenced value into the specified register
* END: variable (rvalue) access
* BEGIN: write(s)
107: OUT 0, 0, 0	* write out the int value in ACC0
108: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
109: HALT 0, 0, 0	* End of Program
* BEGIN: array bounds message handler
110: LDC 0, 1(0)	* Load the error message into ACC0
111: LDA 1, 1(0)	* Increment the address stored in ACC0 to get the string's char location (put in ACC1)
112: LD 0, 0(0)	* Load the string size into ACC0
113: JEQ 0, 5(7)	* Jump to end when run out of string
114: LDA 0, -1(0)	* subtract one from string size
115: LD 2, 0(1)	* Load next char from string into ACC2
116: LDA 1, 1(1)	* increment pointer into string
117: OUTC 2, 0, 0	* Write out character in ACC2
118: LDA 7, -6(7)	* Go back to start of loop
119: OUTNL 0, 0, 0	* dump out the newline
120: HALT 0, 0, 0	* Halt for array bounds
* END: array bounds message handler
* BEGIN: stack limit message handler
121: LDC 0, 25(0)	* Load the error message into ACC0
122: LDA 1, 1(0)	* Increment the address stored in ACC0 to get the string's char location (put in ACC1)
123: LD 0, 0(0)	* Load the string size into ACC0
124: JEQ 0, 5(7)	* Jump to end when run out of string
125: LDA 0, -1(0)	* subtract one from string size
126: LD 3, 0(1)	* Load next char from string into ACC3
127: LDA 1, 1(1)	* increment pointer into string
128: OUTC 3, 0, 0	* Write out character in ACC3
129: LDA 7, -6(7)	* Go back to start of loop
130: OUTC 2, 0, 0	* Write out diagnostic char in ACC2
131: OUTNL 0, 0, 0	* dump out the newline
132: HALT 0, 0, 0	* Halt for stack limit
* END: stack limit message handler
