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
7: JLE 3, 62(4)	* stack failure
8: ST 0, 0(5)	* Store return address (in ACC0) to SP/FP
* return value sits at SP-1/FP-1
9: ST 5, -2(5)	* Store SP to SP-2/FP-2
10: ST 6, -3(5)	* Store FP to SP-3/FP-3
11: LDA 5, -4(5)	* decrement SP by 4 (i.e., 4 pushes)
12: LDA 3, -47(5)	* Subtract the stack limit from SP - store in ACC3
13: LDC 2, 99(0)	* Load diagnostic char into ACC2
14: JLE 3, 62(4)	* stack failure
15: LDA 5, -2(5)	* decrement SP by local var's size (i.e., push)
16: LDA 6, 6(5)	* Set FP to be the "pre-push of AR" SP
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
25: JLE 3, 62(4)	* stack failure
26: ST 0, 0(5)	* save ACC0 into the current SP location
27: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: assignment
28: LDC 0, -5(0)	* Load the base address into ACC0
* BEGIN: push to stack
29: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
30: LDC 2, 56(0)	* Load diagnostic char into ACC2
31: JLE 3, 62(4)	* stack failure
32: ST 0, 0(5)	* save ACC0 into the current SP location
33: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
34: LDC 0, 1(0)	* Load a constant into ACC0
* END: load an int constant
35: SUB 0, 4, 0	* Subtract ACC0 from ZEROREG to negate it
36: JLT 0, 51(4)	* array bounds too small
37: LDC 3, 2(0)	* Load the array bounds limit into ACC3
38: SUB 3, 0, 3	* Subtract the max from the current index
39: JGE 3, 51(4)	* array bounds too big
40: LDC 1, 1(0)	* Load the skip size into ACC1
41: MUL 1, 1, 0	* Multiply the index by the skip size and place the result back into ACC1
42: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
43: LD 0, 0(5)	* Load stored result into ACC0
44: ADD 0, 1, 0	* add the base (ACC0) and the skip size (ACC1) and put the result back in ACC0
45: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
46: LD 1, 0(5)	* Load stored result into ACC1
47: ADD 0, 0, 6	* Add FP to the relative offset
48: ST 1, 0(0)	* Store ACC0 into local offset (relative to FP)
* END: assignment
49: LD 0, 0(6)	* Load the return address from the 1st slot in the AR to ACC0
50: LDA 7, 0(0)	* Return to calling location (stored in ACC0)
* END: procedure code
* BEGIN: array bounds message handler
51: LDC 0, 1(0)	* Load the error message into ACC0
52: LDA 1, 1(0)	* Increment the address stored in ACC0 to get the string's char location (put in ACC1)
53: LD 0, 0(0)	* Load the string size into ACC0
54: JEQ 0, 5(7)	* Jump to end when run out of string
55: LDA 0, -1(0)	* subtract one from string size
56: LD 2, 0(1)	* Load next char from string into ACC2
57: LDA 1, 1(1)	* increment pointer into string
58: OUTC 2, 0, 0	* Write out character in ACC2
59: LDA 7, -6(7)	* Go back to start of loop
60: OUTNL 0, 0, 0	* dump out the newline
61: HALT 0, 0, 0	* Halt for array bounds
* END: array bounds message handler
* BEGIN: stack limit message handler
62: LDC 0, 25(0)	* Load the error message into ACC0
63: LDA 1, 1(0)	* Increment the address stored in ACC0 to get the string's char location (put in ACC1)
64: LD 0, 0(0)	* Load the string size into ACC0
65: JEQ 0, 5(7)	* Jump to end when run out of string
66: LDA 0, -1(0)	* subtract one from string size
67: LD 3, 0(1)	* Load next char from string into ACC3
68: LDA 1, 1(1)	* increment pointer into string
69: OUTC 3, 0, 0	* Write out character in ACC3
70: LDA 7, -6(7)	* Go back to start of loop
71: OUTC 2, 0, 0	* Write out diagnostic char in ACC2
72: OUTNL 0, 0, 0	* dump out the newline
73: HALT 0, 0, 0	* Halt for stack limit
* END: stack limit message handler
