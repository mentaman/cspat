.DATA 23	* string length
.SDATA "Arrays bounds violation"	* string constant
.DATA 19	* string length
.SDATA "Out of stack space "	* string constant
.DATA 0	* storage location (45) for var i
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
5: LDA 3, -47(5)	* Subtract the stack limit from SP - store in ACC3
6: LDC 2, 50(0)	* Load diagnostic char into ACC2
7: JLE 3, 67(4)	* stack failure
8: ST 0, 0(5)	* save ACC0 into the current SP location
9: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: assignment
10: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
11: LD 0, 0(5)	* Load stored result into ACC0
12: ST 0, 45(4)	* Store ACC0 into global offset
* END: assignment
* BEGIN: Do loop
* BEGIN: variable (rvalue) access
13: LD 0, 45(4)	* Load the global var into ACC0
* END: variable (rvalue) access
* BEGIN: push to stack
14: LDA 3, -47(5)	* Subtract the stack limit from SP - store in ACC3
15: LDC 2, 51(0)	* Load diagnostic char into ACC2
16: JLE 3, 67(4)	* stack failure
17: ST 0, 0(5)	* save ACC0 into the current SP location
18: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
19: LDC 0, 5(0)	* Load a constant into ACC0
* END: load an int constant
20: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
21: LD 1, 0(5)	* Load stored result into ACC1
* BEGIN: <
22: SUB 0, 1, 0	* for <, subtract right from left
23: JLT 0, 2(7)	* Jump to Load 1 if ACC0 < 0
24: LDC 0, 0(0)	* Load 0 into ACC0
25: LDA 7, 1(7)	* Jump over Load 1
26: LDC 0, 1(0)	* Load 1 into ACC0
* END: <
27: JEQ 0, 31(7)	* Jump to the end of the loop if done
* BEGIN: procedure call
28: LDA 0, 9(7)	* Get return address into ACC0
29: LDA 3, -50(5)	* Subtract the stack limit from SP - store in ACC3
30: LDC 2, 97(0)	* Load diagnostic char into ACC2
31: JLE 3, 67(4)	* stack failure
32: ST 0, 0(5)	* Store return address (in ACC0) to SP/FP
* return value sits at SP-1/FP-1
33: ST 5, -2(5)	* Store SP to SP-2/FP-2
34: ST 6, -3(5)	* Store FP to SP-3/FP-3
35: LDA 5, -4(5)	* decrement SP by 4 (i.e., 4 pushes)
36: LDA 6, 4(5)	* Set FP to be the "pre-push of AR" SP
* SP already points to end of the AR
37: LDA 7, 61(4)	* Jump to the start of the proc
38: LD 5, -2(6)	* Restore SP from FP-2
39: LD 6, -3(6)	* Restore FP from FP-3
* END: procedure call
* BEGIN: variable (rvalue) access
40: LD 0, 45(4)	* Load the global var into ACC0
* END: variable (rvalue) access
* BEGIN: push to stack
41: LDA 3, -47(5)	* Subtract the stack limit from SP - store in ACC3
42: LDC 2, 55(0)	* Load diagnostic char into ACC2
43: JLE 3, 67(4)	* stack failure
44: ST 0, 0(5)	* save ACC0 into the current SP location
45: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
46: LDC 0, 1(0)	* Load a constant into ACC0
* END: load an int constant
47: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
48: LD 1, 0(5)	* Load stored result into ACC1
49: ADD 0, 0, 1	* Add ACC0 & ACC1 placing result in ACC0
* BEGIN: push to stack
50: LDA 3, -47(5)	* Subtract the stack limit from SP - store in ACC3
51: LDC 2, 50(0)	* Load diagnostic char into ACC2
52: JLE 3, 67(4)	* stack failure
53: ST 0, 0(5)	* save ACC0 into the current SP location
54: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: assignment
55: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
56: LD 0, 0(5)	* Load stored result into ACC0
57: ST 0, 45(4)	* Store ACC0 into global offset
* END: assignment
58: LDA 7, -46(7)	* Jump back to start of loop
59: LDA 5, 0(5)	* NOOP to mark end of loop
* END: Do loop
60: HALT 0, 0, 0	* End of Program
* BEGIN: procedure code
61: LDA 0, 0(0)	* NOOP to mark beginning of proc
* BEGIN: load an int constant
62: LDC 0, 1(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: write(s)
63: OUT 0, 0, 0	* write out the int value in ACC0
64: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
65: LD 0, 0(6)	* Load the return address from the 1st slot in the AR to ACC0
66: LDA 7, 0(0)	* Return to calling location (stored in ACC0)
* END: procedure code
* BEGIN: stack limit message handler
67: LDC 0, 25(0)	* Load the error message into ACC0
68: LDA 1, 1(0)	* Increment the address stored in ACC0 to get the string's char location (put in ACC1)
69: LD 0, 0(0)	* Load the string size into ACC0
70: JEQ 0, 5(7)	* Jump to end when run out of string
71: LDA 0, -1(0)	* subtract one from string size
72: LD 3, 0(1)	* Load next char from string into ACC3
73: LDA 1, 1(1)	* increment pointer into string
74: OUTC 3, 0, 0	* Write out character in ACC3
75: LDA 7, -6(7)	* Go back to start of loop
76: OUTC 2, 0, 0	* Write out diagnostic char in ACC2
77: OUTNL 0, 0, 0	* dump out the newline
78: HALT 0, 0, 0	* Halt for stack limit
* END: stack limit message handler
