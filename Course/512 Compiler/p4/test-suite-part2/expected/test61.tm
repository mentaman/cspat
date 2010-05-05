.DATA 23	* string length
.SDATA "Arrays bounds violation"	* string constant
.DATA 19	* string length
.SDATA "Out of stack space "	* string constant
.DATA 0	* storage location (45) for var pi
.DATA 0	* storage location (45) for var pi
.DATA 0	* storage location (45) for var pi
.DATA 0	* storage location (45) for var pi
.DATA 0	* storage location (45) for var pi
.DATA 0	* storage location (50) for var i
* BEGIN preamble
0: LDC 4, 0(0)	* initialize ZEROREG to 0
1: LD 5, 0(4)	* initialize SP to end of memory
2: LDA 5, -1(5)	* subtract one to get the true SP
3: LDA 6, 0(5)	* FP and SP start off the same
* END preamble
* BEGIN: load an int constant
4: LDC 0, 2(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: push to stack
5: LDA 3, -52(5)	* Subtract the stack limit from SP - store in ACC3
6: LDC 2, 50(0)	* Load diagnostic char into ACC2
7: JLE 3, 72(4)	* stack failure
8: ST 0, 0(5)	* save ACC0 into the current SP location
9: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: assignment
10: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
11: LD 0, 0(5)	* Load stored result into ACC0
12: ST 0, 50(4)	* Store ACC0 into global offset
* END: assignment
* BEGIN: load an int constant
13: LDC 0, 3(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: push to stack
14: LDA 3, -52(5)	* Subtract the stack limit from SP - store in ACC3
15: LDC 2, 50(0)	* Load diagnostic char into ACC2
16: JLE 3, 72(4)	* stack failure
17: ST 0, 0(5)	* save ACC0 into the current SP location
18: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: assignment
19: LDC 0, 45(0)	* Load the base address into ACC0
* BEGIN: push to stack
20: LDA 3, -52(5)	* Subtract the stack limit from SP - store in ACC3
21: LDC 2, 56(0)	* Load diagnostic char into ACC2
22: JLE 3, 72(4)	* stack failure
23: ST 0, 0(5)	* save ACC0 into the current SP location
24: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: variable (rvalue) access
25: LD 0, 50(4)	* Load the global var into ACC0
* END: variable (rvalue) access
26: JLT 0, 61(4)	* array bounds too small
27: LDC 3, 5(0)	* Load the array bounds limit into ACC3
28: SUB 3, 0, 3	* Subtract the max from the current index
29: JGE 3, 61(4)	* array bounds too big
30: LDC 1, 1(0)	* Load the skip size into ACC1
31: MUL 1, 1, 0	* Multiply the index by the skip size and place the result back into ACC1
32: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
33: LD 0, 0(5)	* Load stored result into ACC0
34: ADD 0, 1, 0	* add the base (ACC0) and the skip size (ACC1) and put the result back in ACC0
35: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
36: LD 1, 0(5)	* Load stored result into ACC1
37: ST 1, 0(0)	* Store ACC0 into global offset
* END: assignment
* BEGIN: variable (rvalue) access
38: LDC 0, 45(0)	* Load the base address into ACC0
* BEGIN: push to stack
39: LDA 3, -52(5)	* Subtract the stack limit from SP - store in ACC3
40: LDC 2, 56(0)	* Load diagnostic char into ACC2
41: JLE 3, 72(4)	* stack failure
42: ST 0, 0(5)	* save ACC0 into the current SP location
43: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: variable (rvalue) access
44: LD 0, 50(4)	* Load the global var into ACC0
* END: variable (rvalue) access
45: JLT 0, 61(4)	* array bounds too small
46: LDC 3, 5(0)	* Load the array bounds limit into ACC3
47: SUB 3, 0, 3	* Subtract the max from the current index
48: JGE 3, 61(4)	* array bounds too big
49: LDC 1, 1(0)	* Load the skip size into ACC1
50: MUL 1, 1, 0	* Multiply the index by the skip size and place the result back into ACC1
51: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
52: LD 0, 0(5)	* Load stored result into ACC0
53: ADD 0, 1, 0	* add the base (ACC0) and the skip size (ACC1) and put the result back in ACC0
54: LD 0, 0(0)	* Load the final dereferenced value into the specified register
* END: variable (rvalue) access
* BEGIN: write(s)
55: OUT 0, 0, 0	* write out the int value in ACC0
56: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
* BEGIN: variable (rvalue) access
57: LD 0, 50(4)	* Load the global var into ACC0
* END: variable (rvalue) access
* BEGIN: write(s)
58: OUT 0, 0, 0	* write out the int value in ACC0
59: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
60: HALT 0, 0, 0	* End of Program
* BEGIN: array bounds message handler
61: LDC 0, 1(0)	* Load the error message into ACC0
62: LDA 1, 1(0)	* Increment the address stored in ACC0 to get the string's char location (put in ACC1)
63: LD 0, 0(0)	* Load the string size into ACC0
64: JEQ 0, 5(7)	* Jump to end when run out of string
65: LDA 0, -1(0)	* subtract one from string size
66: LD 2, 0(1)	* Load next char from string into ACC2
67: LDA 1, 1(1)	* increment pointer into string
68: OUTC 2, 0, 0	* Write out character in ACC2
69: LDA 7, -6(7)	* Go back to start of loop
70: OUTNL 0, 0, 0	* dump out the newline
71: HALT 0, 0, 0	* Halt for array bounds
* END: array bounds message handler
* BEGIN: stack limit message handler
72: LDC 0, 25(0)	* Load the error message into ACC0
73: LDA 1, 1(0)	* Increment the address stored in ACC0 to get the string's char location (put in ACC1)
74: LD 0, 0(0)	* Load the string size into ACC0
75: JEQ 0, 5(7)	* Jump to end when run out of string
76: LDA 0, -1(0)	* subtract one from string size
77: LD 3, 0(1)	* Load next char from string into ACC3
78: LDA 1, 1(1)	* increment pointer into string
79: OUTC 3, 0, 0	* Write out character in ACC3
80: LDA 7, -6(7)	* Go back to start of loop
81: OUTC 2, 0, 0	* Write out diagnostic char in ACC2
82: OUTNL 0, 0, 0	* dump out the newline
83: HALT 0, 0, 0	* Halt for stack limit
* END: stack limit message handler
