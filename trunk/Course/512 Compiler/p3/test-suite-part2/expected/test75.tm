.DATA 23	* string length
.SDATA "Arrays bounds violation"	* string constant
.DATA 19	* string length
.SDATA "Out of stack space "	* string constant
.DATA 0	* storage location (45) for var ppi
.DATA 0	* storage location (45) for var ppi
.DATA 0	* storage location (45) for var ppi
.DATA 0	* storage location (45) for var ppi
.DATA 0	* storage location (49) for var i
* BEGIN preamble
0: LDC 4, 0(0)	* initialize ZEROREG to 0
1: LD 5, 0(4)	* initialize SP to end of memory
2: LDA 5, -1(5)	* subtract one to get the true SP
3: LDA 6, 0(5)	* FP and SP start off the same
* END preamble
* BEGIN: variable (rvalue) access
4: LDC 0, 45(0)	* Load the base address into ACC0
* BEGIN: push to stack
5: LDA 3, -51(5)	* Subtract the stack limit from SP - store in ACC3
6: LDC 2, 56(0)	* Load diagnostic char into ACC2
7: JLE 3, 56(4)	* stack failure
8: ST 0, 0(5)	* save ACC0 into the current SP location
9: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
10: LDC 0, 0(0)	* Load a constant into ACC0
* END: load an int constant
11: JLT 0, 45(4)	* array bounds too small
12: LDC 3, 2(0)	* Load the array bounds limit into ACC3
13: SUB 3, 0, 3	* Subtract the max from the current index
14: JGE 3, 45(4)	* array bounds too big
15: LDC 1, 2(0)	* Load the skip size into ACC1
16: MUL 1, 1, 0	* Multiply the index by the skip size and place the result back into ACC1
17: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
18: LD 0, 0(5)	* Load stored result into ACC0
19: ADD 0, 1, 0	* add the base (ACC0) and the skip size (ACC1) and put the result back in ACC0
* BEGIN: push to stack
20: LDA 3, -51(5)	* Subtract the stack limit from SP - store in ACC3
21: LDC 2, 56(0)	* Load diagnostic char into ACC2
22: JLE 3, 56(4)	* stack failure
23: ST 0, 0(5)	* save ACC0 into the current SP location
24: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
25: LDC 0, 3(0)	* Load a constant into ACC0
* END: load an int constant
26: JLT 0, 45(4)	* array bounds too small
27: LDC 3, 2(0)	* Load the array bounds limit into ACC3
28: SUB 3, 0, 3	* Subtract the max from the current index
29: JGE 3, 45(4)	* array bounds too big
30: LDC 1, 1(0)	* Load the skip size into ACC1
31: MUL 1, 1, 0	* Multiply the index by the skip size and place the result back into ACC1
32: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
33: LD 0, 0(5)	* Load stored result into ACC0
34: ADD 0, 1, 0	* add the base (ACC0) and the skip size (ACC1) and put the result back in ACC0
35: LD 0, 0(0)	* Load the final dereferenced value into the specified register
* END: variable (rvalue) access
* BEGIN: push to stack
36: LDA 3, -51(5)	* Subtract the stack limit from SP - store in ACC3
37: LDC 2, 50(0)	* Load diagnostic char into ACC2
38: JLE 3, 56(4)	* stack failure
39: ST 0, 0(5)	* save ACC0 into the current SP location
40: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: assignment
41: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
42: LD 0, 0(5)	* Load stored result into ACC0
43: ST 0, 49(4)	* Store ACC0 into global offset
* END: assignment
44: HALT 0, 0, 0	* End of Program
* BEGIN: array bounds message handler
45: LDC 0, 1(0)	* Load the error message into ACC0
46: LDA 1, 1(0)	* Increment the address stored in ACC0 to get the string's char location (put in ACC1)
47: LD 0, 0(0)	* Load the string size into ACC0
48: JEQ 0, 5(7)	* Jump to end when run out of string
49: LDA 0, -1(0)	* subtract one from string size
50: LD 2, 0(1)	* Load next char from string into ACC2
51: LDA 1, 1(1)	* increment pointer into string
52: OUTC 2, 0, 0	* Write out character in ACC2
53: LDA 7, -6(7)	* Go back to start of loop
54: OUTNL 0, 0, 0	* dump out the newline
55: HALT 0, 0, 0	* Halt for array bounds
* END: array bounds message handler
* BEGIN: stack limit message handler
56: LDC 0, 25(0)	* Load the error message into ACC0
57: LDA 1, 1(0)	* Increment the address stored in ACC0 to get the string's char location (put in ACC1)
58: LD 0, 0(0)	* Load the string size into ACC0
59: JEQ 0, 5(7)	* Jump to end when run out of string
60: LDA 0, -1(0)	* subtract one from string size
61: LD 3, 0(1)	* Load next char from string into ACC3
62: LDA 1, 1(1)	* increment pointer into string
63: OUTC 3, 0, 0	* Write out character in ACC3
64: LDA 7, -6(7)	* Go back to start of loop
65: OUTC 2, 0, 0	* Write out diagnostic char in ACC2
66: OUTNL 0, 0, 0	* dump out the newline
67: HALT 0, 0, 0	* Halt for stack limit
* END: stack limit message handler
