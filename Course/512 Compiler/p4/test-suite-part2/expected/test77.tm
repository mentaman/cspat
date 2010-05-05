.DATA 23	* string length
.SDATA "Arrays bounds violation"	* string constant
.DATA 19	* string length
.SDATA "Out of stack space "	* string constant
* BEGIN preamble
0: LDC 4, 0(0)	* initialize ZEROREG to 0
1: LD 5, 0(4)	* initialize SP to end of memory
2: LDA 5, -1(5)	* subtract one to get the true SP
3: LDA 6, 0(5)	* FP and SP start off the same
* END preamble
* BEGIN: procedure call
4: LDA 0, 17(7)	* Get return address into ACC0
5: LDA 3, -49(5)	* Subtract the stack limit from SP - store in ACC3
6: LDC 2, 97(0)	* Load diagnostic char into ACC2
7: JLE 3, 80(4)	* stack failure
8: ST 0, 0(5)	* Store return address (in ACC0) to SP/FP
* return value sits at SP-1/FP-1
9: ST 5, -2(5)	* Store SP to SP-2/FP-2
10: ST 6, -3(5)	* Store FP to SP-3/FP-3
11: LDA 5, -4(5)	* decrement SP by 4 (i.e., 4 pushes)
12: LDA 3, -49(5)	* Subtract the stack limit from SP - store in ACC3
13: LDC 2, 99(0)	* Load diagnostic char into ACC2
14: JLE 3, 80(4)	* stack failure
15: LDA 5, -4(5)	* decrement SP by local var's size (i.e., push)
16: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
17: LDC 2, 99(0)	* Load diagnostic char into ACC2
18: JLE 3, 80(4)	* stack failure
19: LDA 5, -1(5)	* decrement SP by local var's size (i.e., push)
20: LDA 6, 9(5)	* Set FP to be the "pre-push of AR" SP
* SP already points to end of the AR
21: LDA 7, 25(4)	* Jump to the start of the proc
22: LD 5, -2(6)	* Restore SP from FP-2
23: LD 6, -3(6)	* Restore FP from FP-3
* END: procedure call
24: HALT 0, 0, 0	* End of Program
* BEGIN: procedure code
25: LDA 0, 0(0)	* NOOP to mark beginning of proc
* BEGIN: variable (rvalue) access
26: LDC 0, -7(0)	* Load the base address into ACC0
* BEGIN: push to stack
27: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
28: LDC 2, 56(0)	* Load diagnostic char into ACC2
29: JLE 3, 80(4)	* stack failure
30: ST 0, 0(5)	* save ACC0 into the current SP location
31: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
32: LDC 0, 3(0)	* Load a constant into ACC0
* END: load an int constant
33: JLT 0, 69(4)	* array bounds too small
34: LDC 3, 2(0)	* Load the array bounds limit into ACC3
35: SUB 3, 0, 3	* Subtract the max from the current index
36: JGE 3, 69(4)	* array bounds too big
37: LDC 1, 2(0)	* Load the skip size into ACC1
38: MUL 1, 1, 0	* Multiply the index by the skip size and place the result back into ACC1
39: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
40: LD 0, 0(5)	* Load stored result into ACC0
41: ADD 0, 1, 0	* add the base (ACC0) and the skip size (ACC1) and put the result back in ACC0
* BEGIN: push to stack
42: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
43: LDC 2, 56(0)	* Load diagnostic char into ACC2
44: JLE 3, 80(4)	* stack failure
45: ST 0, 0(5)	* save ACC0 into the current SP location
46: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
47: LDC 0, 0(0)	* Load a constant into ACC0
* END: load an int constant
48: JLT 0, 69(4)	* array bounds too small
49: LDC 3, 2(0)	* Load the array bounds limit into ACC3
50: SUB 3, 0, 3	* Subtract the max from the current index
51: JGE 3, 69(4)	* array bounds too big
52: LDC 1, 1(0)	* Load the skip size into ACC1
53: MUL 1, 1, 0	* Multiply the index by the skip size and place the result back into ACC1
54: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
55: LD 0, 0(5)	* Load stored result into ACC0
56: ADD 0, 1, 0	* add the base (ACC0) and the skip size (ACC1) and put the result back in ACC0
57: ADD 0, 0, 6	* Add the array offset to FP for a local access
58: LD 0, 0(0)	* Load the final dereferenced local var into the specified register
* END: variable (rvalue) access
* BEGIN: push to stack
59: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
60: LDC 2, 50(0)	* Load diagnostic char into ACC2
61: JLE 3, 80(4)	* stack failure
62: ST 0, 0(5)	* save ACC0 into the current SP location
63: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: assignment
64: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
65: LD 0, 0(5)	* Load stored result into ACC0
66: ST 0, -8(6)	* Store ACC0 into local offset (relative to FP)
* END: assignment
67: LD 0, 0(6)	* Load the return address from the 1st slot in the AR to ACC0
68: LDA 7, 0(0)	* Return to calling location (stored in ACC0)
* END: procedure code
* BEGIN: array bounds message handler
69: LDC 0, 1(0)	* Load the error message into ACC0
70: LDA 1, 1(0)	* Increment the address stored in ACC0 to get the string's char location (put in ACC1)
71: LD 0, 0(0)	* Load the string size into ACC0
72: JEQ 0, 5(7)	* Jump to end when run out of string
73: LDA 0, -1(0)	* subtract one from string size
74: LD 2, 0(1)	* Load next char from string into ACC2
75: LDA 1, 1(1)	* increment pointer into string
76: OUTC 2, 0, 0	* Write out character in ACC2
77: LDA 7, -6(7)	* Go back to start of loop
78: OUTNL 0, 0, 0	* dump out the newline
79: HALT 0, 0, 0	* Halt for array bounds
* END: array bounds message handler
* BEGIN: stack limit message handler
80: LDC 0, 25(0)	* Load the error message into ACC0
81: LDA 1, 1(0)	* Increment the address stored in ACC0 to get the string's char location (put in ACC1)
82: LD 0, 0(0)	* Load the string size into ACC0
83: JEQ 0, 5(7)	* Jump to end when run out of string
84: LDA 0, -1(0)	* subtract one from string size
85: LD 3, 0(1)	* Load next char from string into ACC3
86: LDA 1, 1(1)	* increment pointer into string
87: OUTC 3, 0, 0	* Write out character in ACC3
88: LDA 7, -6(7)	* Go back to start of loop
89: OUTC 2, 0, 0	* Write out diagnostic char in ACC2
90: OUTNL 0, 0, 0	* dump out the newline
91: HALT 0, 0, 0	* Halt for stack limit
* END: stack limit message handler
