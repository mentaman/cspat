.DATA 23	* string length
.SDATA "Arrays bounds violation"	* string constant
.DATA 19	* string length
.SDATA "Out of stack space "	* string constant
.DATA 0	* storage location (45) for var ppi
.DATA 0	* storage location (45) for var ppi
.DATA 0	* storage location (45) for var ppi
.DATA 0	* storage location (45) for var ppi
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
5: LDA 3, -50(5)	* Subtract the stack limit from SP - store in ACC3
6: LDC 2, 50(0)	* Load diagnostic char into ACC2
7: JLE 3, 56(4)	* stack failure
8: ST 0, 0(5)	* save ACC0 into the current SP location
9: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: assignment
10: LDC 0, 45(0)	* Load the base address into ACC0
* BEGIN: push to stack
11: LDA 3, -50(5)	* Subtract the stack limit from SP - store in ACC3
12: LDC 2, 56(0)	* Load diagnostic char into ACC2
13: JLE 3, 56(4)	* stack failure
14: ST 0, 0(5)	* save ACC0 into the current SP location
15: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
16: LDC 0, 3(0)	* Load a constant into ACC0
* END: load an int constant
17: JLT 0, 45(4)	* array bounds too small
18: LDC 3, 2(0)	* Load the array bounds limit into ACC3
19: SUB 3, 0, 3	* Subtract the max from the current index
20: JGE 3, 45(4)	* array bounds too big
21: LDC 1, 2(0)	* Load the skip size into ACC1
22: MUL 1, 1, 0	* Multiply the index by the skip size and place the result back into ACC1
23: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
24: LD 0, 0(5)	* Load stored result into ACC0
25: ADD 0, 1, 0	* add the base (ACC0) and the skip size (ACC1) and put the result back in ACC0
* BEGIN: push to stack
26: LDA 3, -50(5)	* Subtract the stack limit from SP - store in ACC3
27: LDC 2, 56(0)	* Load diagnostic char into ACC2
28: JLE 3, 56(4)	* stack failure
29: ST 0, 0(5)	* save ACC0 into the current SP location
30: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
31: LDC 0, 0(0)	* Load a constant into ACC0
* END: load an int constant
32: JLT 0, 45(4)	* array bounds too small
33: LDC 3, 2(0)	* Load the array bounds limit into ACC3
34: SUB 3, 0, 3	* Subtract the max from the current index
35: JGE 3, 45(4)	* array bounds too big
36: LDC 1, 1(0)	* Load the skip size into ACC1
37: MUL 1, 1, 0	* Multiply the index by the skip size and place the result back into ACC1
38: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
39: LD 0, 0(5)	* Load stored result into ACC0
40: ADD 0, 1, 0	* add the base (ACC0) and the skip size (ACC1) and put the result back in ACC0
41: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
42: LD 1, 0(5)	* Load stored result into ACC1
43: ST 1, 0(0)	* Store ACC0 into global offset
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
