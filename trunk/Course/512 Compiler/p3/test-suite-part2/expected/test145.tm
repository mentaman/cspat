.DATA 23	* string length
.SDATA "Arrays bounds violation"	* string constant
.DATA 19	* string length
.SDATA "Out of stack space "	* string constant
.DATA 0	* storage location (45) for var bar
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
7: JLE 3, 50(4)	* stack failure
8: ST 0, 0(5)	* save ACC0 into the current SP location
9: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: assignment
10: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
11: LD 0, 0(5)	* Load stored result into ACC0
12: ST 0, 45(4)	* Store ACC0 into global offset
* END: assignment
* BEGIN: procedure call
13: LDA 0, 15(7)	* Get return address into ACC0
14: LDA 3, -50(5)	* Subtract the stack limit from SP - store in ACC3
15: LDC 2, 97(0)	* Load diagnostic char into ACC2
16: JLE 3, 50(4)	* stack failure
17: ST 0, 0(5)	* Store return address (in ACC0) to SP/FP
* return value sits at SP-1/FP-1
18: ST 5, -2(5)	* Store SP to SP-2/FP-2
19: ST 6, -3(5)	* Store FP to SP-3/FP-3
20: LDA 5, -4(5)	* decrement SP by 4 (i.e., 4 pushes)
* BEGIN: load a bool value into ACC0
21: LDC 0, 1(0)	* Load a boolean value into ACC0
* END: load a bool value into ACC0
22: LDA 3, -47(5)	* Subtract the stack limit from SP - store in ACC3
23: LDC 2, 98(0)	* Load diagnostic char into ACC2
24: JLE 3, 50(4)	* stack failure
25: ST 0, 0(5)	* Store param in slot
26: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
27: LDA 6, 5(5)	* Set FP to be the "pre-push of AR" SP
* SP already points to end of the AR
28: LDA 7, 35(4)	* Jump to the start of the proc
29: LD 5, -2(6)	* Restore SP from FP-2
30: LD 6, -3(6)	* Restore FP from FP-3
* END: procedure call
* BEGIN: variable (rvalue) access
31: LD 0, 45(4)	* Load the global var into ACC0
* END: variable (rvalue) access
* BEGIN: write(s)
32: OUT 0, 0, 0	* write out the int value in ACC0
33: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
34: HALT 0, 0, 0	* End of Program
* BEGIN: procedure code
35: LDA 0, 0(0)	* NOOP to mark beginning of proc
* BEGIN: load a bool value into ACC0
36: LDC 0, 1(0)	* Load a boolean value into ACC0
* END: load a bool value into ACC0
* BEGIN: push to stack
37: LDA 3, -47(5)	* Subtract the stack limit from SP - store in ACC3
38: LDC 2, 50(0)	* Load diagnostic char into ACC2
39: JLE 3, 50(4)	* stack failure
40: ST 0, 0(5)	* save ACC0 into the current SP location
41: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: assignment
42: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
43: LD 0, 0(5)	* Load stored result into ACC0
44: ST 0, -4(6)	* Store ACC0 into local offset (relative to FP)
* END: assignment
* BEGIN: variable (rvalue) access
45: LD 0, -4(6)	* Load the local var into ACC0
* END: variable (rvalue) access
* BEGIN: write(s)
46: OUT 0, 0, 0	* write out the int value in ACC0
47: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
48: LD 0, 0(6)	* Load the return address from the 1st slot in the AR to ACC0
49: LDA 7, 0(0)	* Return to calling location (stored in ACC0)
* END: procedure code
* BEGIN: stack limit message handler
50: LDC 0, 25(0)	* Load the error message into ACC0
51: LDA 1, 1(0)	* Increment the address stored in ACC0 to get the string's char location (put in ACC1)
52: LD 0, 0(0)	* Load the string size into ACC0
53: JEQ 0, 5(7)	* Jump to end when run out of string
54: LDA 0, -1(0)	* subtract one from string size
55: LD 3, 0(1)	* Load next char from string into ACC3
56: LDA 1, 1(1)	* increment pointer into string
57: OUTC 3, 0, 0	* Write out character in ACC3
58: LDA 7, -6(7)	* Go back to start of loop
59: OUTC 2, 0, 0	* Write out diagnostic char in ACC2
60: OUTNL 0, 0, 0	* dump out the newline
61: HALT 0, 0, 0	* Halt for stack limit
* END: stack limit message handler
