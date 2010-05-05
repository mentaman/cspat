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
4: LDA 0, 13(7)	* Get return address into ACC0
5: LDA 3, -49(5)	* Subtract the stack limit from SP - store in ACC3
6: LDC 2, 97(0)	* Load diagnostic char into ACC2
7: JLE 3, 76(4)	* stack failure
8: ST 0, 0(5)	* Store return address (in ACC0) to SP/FP
* return value sits at SP-1/FP-1
9: ST 5, -2(5)	* Store SP to SP-2/FP-2
10: ST 6, -3(5)	* Store FP to SP-3/FP-3
11: LDA 5, -4(5)	* decrement SP by 4 (i.e., 4 pushes)
12: LDA 3, -49(5)	* Subtract the stack limit from SP - store in ACC3
13: LDC 2, 99(0)	* Load diagnostic char into ACC2
14: JLE 3, 76(4)	* stack failure
15: LDA 5, -4(5)	* decrement SP by local var's size (i.e., push)
16: LDA 6, 8(5)	* Set FP to be the "pre-push of AR" SP
* SP already points to end of the AR
17: LDA 7, 21(4)	* Jump to the start of the proc
18: LD 5, -2(6)	* Restore SP from FP-2
19: LD 6, -3(6)	* Restore FP from FP-3
* END: procedure call
20: HALT 0, 0, 0	* End of Program
* BEGIN: procedure code
21: LDA 0, 0(0)	* NOOP to mark beginning of proc
* BEGIN: load an int constant
22: LDC 0, 0(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: push to stack
23: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
24: LDC 2, 50(0)	* Load diagnostic char into ACC2
25: JLE 3, 76(4)	* stack failure
26: ST 0, 0(5)	* save ACC0 into the current SP location
27: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: assignment
28: LDC 0, -7(0)	* Load the base address into ACC0
* BEGIN: push to stack
29: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
30: LDC 2, 56(0)	* Load diagnostic char into ACC2
31: JLE 3, 76(4)	* stack failure
32: ST 0, 0(5)	* save ACC0 into the current SP location
33: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
34: LDC 0, 0(0)	* Load a constant into ACC0
* END: load an int constant
35: JLT 0, 65(4)	* array bounds too small
36: LDC 3, 2(0)	* Load the array bounds limit into ACC3
37: SUB 3, 0, 3	* Subtract the max from the current index
38: JGE 3, 65(4)	* array bounds too big
39: LDC 1, 2(0)	* Load the skip size into ACC1
40: MUL 1, 1, 0	* Multiply the index by the skip size and place the result back into ACC1
41: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
42: LD 0, 0(5)	* Load stored result into ACC0
43: ADD 0, 1, 0	* add the base (ACC0) and the skip size (ACC1) and put the result back in ACC0
* BEGIN: push to stack
44: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
45: LDC 2, 56(0)	* Load diagnostic char into ACC2
46: JLE 3, 76(4)	* stack failure
47: ST 0, 0(5)	* save ACC0 into the current SP location
48: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
49: LDC 0, 3(0)	* Load a constant into ACC0
* END: load an int constant
50: JLT 0, 65(4)	* array bounds too small
51: LDC 3, 2(0)	* Load the array bounds limit into ACC3
52: SUB 3, 0, 3	* Subtract the max from the current index
53: JGE 3, 65(4)	* array bounds too big
54: LDC 1, 1(0)	* Load the skip size into ACC1
55: MUL 1, 1, 0	* Multiply the index by the skip size and place the result back into ACC1
56: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
57: LD 0, 0(5)	* Load stored result into ACC0
58: ADD 0, 1, 0	* add the base (ACC0) and the skip size (ACC1) and put the result back in ACC0
59: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
60: LD 1, 0(5)	* Load stored result into ACC1
61: ADD 0, 0, 6	* Add FP to the relative offset
62: ST 1, 0(0)	* Store ACC0 into local offset (relative to FP)
* END: assignment
63: LD 0, 0(6)	* Load the return address from the 1st slot in the AR to ACC0
64: LDA 7, 0(0)	* Return to calling location (stored in ACC0)
* END: procedure code
* BEGIN: array bounds message handler
65: LDC 0, 1(0)	* Load the error message into ACC0
66: LDA 1, 1(0)	* Increment the address stored in ACC0 to get the string's char location (put in ACC1)
67: LD 0, 0(0)	* Load the string size into ACC0
68: JEQ 0, 5(7)	* Jump to end when run out of string
69: LDA 0, -1(0)	* subtract one from string size
70: LD 2, 0(1)	* Load next char from string into ACC2
71: LDA 1, 1(1)	* increment pointer into string
72: OUTC 2, 0, 0	* Write out character in ACC2
73: LDA 7, -6(7)	* Go back to start of loop
74: OUTNL 0, 0, 0	* dump out the newline
75: HALT 0, 0, 0	* Halt for array bounds
* END: array bounds message handler
* BEGIN: stack limit message handler
76: LDC 0, 25(0)	* Load the error message into ACC0
77: LDA 1, 1(0)	* Increment the address stored in ACC0 to get the string's char location (put in ACC1)
78: LD 0, 0(0)	* Load the string size into ACC0
79: JEQ 0, 5(7)	* Jump to end when run out of string
80: LDA 0, -1(0)	* subtract one from string size
81: LD 3, 0(1)	* Load next char from string into ACC3
82: LDA 1, 1(1)	* increment pointer into string
83: OUTC 3, 0, 0	* Write out character in ACC3
84: LDA 7, -6(7)	* Go back to start of loop
85: OUTC 2, 0, 0	* Write out diagnostic char in ACC2
86: OUTNL 0, 0, 0	* dump out the newline
87: HALT 0, 0, 0	* Halt for stack limit
* END: stack limit message handler
