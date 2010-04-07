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
4: LDC 0, 7(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: push to stack
5: LDA 3, -48(5)	* Subtract the stack limit from SP - store in ACC3
6: LDC 2, 50(0)	* Load diagnostic char into ACC2
7: JLE 3, 60(4)	* stack failure
8: ST 0, 0(5)	* save ACC0 into the current SP location
9: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: assignment
10: LDC 0, 45(0)	* Load the base address into ACC0
* BEGIN: push to stack
11: LDA 3, -48(5)	* Subtract the stack limit from SP - store in ACC3
12: LDC 2, 56(0)	* Load diagnostic char into ACC2
13: JLE 3, 60(4)	* stack failure
14: ST 0, 0(5)	* save ACC0 into the current SP location
15: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
16: LDC 0, 0(0)	* Load a constant into ACC0
* END: load an int constant
17: JLT 0, 49(4)	* array bounds too small
18: LDC 3, 2(0)	* Load the array bounds limit into ACC3
19: SUB 3, 0, 3	* Subtract the max from the current index
20: JGE 3, 49(4)	* array bounds too big
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
32: JLE 3, 60(4)	* stack failure
33: ST 0, 0(5)	* save ACC0 into the current SP location
34: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
35: LDC 0, 0(0)	* Load a constant into ACC0
* END: load an int constant
36: JLT 0, 49(4)	* array bounds too small
37: LDC 3, 2(0)	* Load the array bounds limit into ACC3
38: SUB 3, 0, 3	* Subtract the max from the current index
39: JGE 3, 49(4)	* array bounds too big
40: LDC 1, 1(0)	* Load the skip size into ACC1
41: MUL 1, 1, 0	* Multiply the index by the skip size and place the result back into ACC1
42: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
43: LD 0, 0(5)	* Load stored result into ACC0
44: ADD 0, 1, 0	* add the base (ACC0) and the skip size (ACC1) and put the result back in ACC0
45: LD 0, 0(0)	* Load the final dereferenced value into the specified register
* END: variable (rvalue) access
* BEGIN: write(s)
46: OUT 0, 0, 0	* write out the int value in ACC0
47: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
48: HALT 0, 0, 0	* End of Program
* BEGIN: array bounds message handler
49: LDC 0, 1(0)	* Load the error message into ACC0
50: LDA 1, 1(0)	* Increment the address stored in ACC0 to get the string's char location (put in ACC1)
51: LD 0, 0(0)	* Load the string size into ACC0
52: JEQ 0, 5(7)	* Jump to end when run out of string
53: LDA 0, -1(0)	* subtract one from string size
54: LD 2, 0(1)	* Load next char from string into ACC2
55: LDA 1, 1(1)	* increment pointer into string
56: OUTC 2, 0, 0	* Write out character in ACC2
57: LDA 7, -6(7)	* Go back to start of loop
58: OUTNL 0, 0, 0	* dump out the newline
59: HALT 0, 0, 0	* Halt for array bounds
* END: array bounds message handler
* BEGIN: stack limit message handler
60: LDC 0, 25(0)	* Load the error message into ACC0
61: LDA 1, 1(0)	* Increment the address stored in ACC0 to get the string's char location (put in ACC1)
62: LD 0, 0(0)	* Load the string size into ACC0
63: JEQ 0, 5(7)	* Jump to end when run out of string
64: LDA 0, -1(0)	* subtract one from string size
65: LD 3, 0(1)	* Load next char from string into ACC3
66: LDA 1, 1(1)	* increment pointer into string
67: OUTC 3, 0, 0	* Write out character in ACC3
68: LDA 7, -6(7)	* Go back to start of loop
69: OUTC 2, 0, 0	* Write out diagnostic char in ACC2
70: OUTNL 0, 0, 0	* dump out the newline
71: HALT 0, 0, 0	* Halt for stack limit
* END: stack limit message handler
