.DATA 23	* string length
.SDATA "Arrays bounds violation"	* string constant
.DATA 19	* string length
.SDATA "Out of stack space "	* string constant
.DATA 2	* string length
.SDATA "Hi"	* string constant
* BEGIN preamble
0: LDC 4, 0(0)	* initialize ZEROREG to 0
1: LD 5, 0(4)	* initialize SP to end of memory
2: LDA 5, -1(5)	* subtract one to get the true SP
3: LDA 6, 0(5)	* FP and SP start off the same
* END preamble
* BEGIN: procedure call
4: LDA 0, 21(7)	* Get return address into ACC0
5: LDA 3, -52(5)	* Subtract the stack limit from SP - store in ACC3
6: LDC 2, 97(0)	* Load diagnostic char into ACC2
7: JLE 3, 56(4)	* stack failure
8: ST 0, 0(5)	* Store return address (in ACC0) to SP/FP
* return value sits at SP-1/FP-1
9: ST 5, -2(5)	* Store SP to SP-2/FP-2
10: ST 6, -3(5)	* Store FP to SP-3/FP-3
11: LDA 5, -4(5)	* decrement SP by 4 (i.e., 4 pushes)
* BEGIN: load a bool value into ACC0
12: LDC 0, 1(0)	* Load a boolean value into ACC0
* END: load a bool value into ACC0
13: LDA 3, -49(5)	* Subtract the stack limit from SP - store in ACC3
14: LDC 2, 98(0)	* Load diagnostic char into ACC2
15: JLE 3, 56(4)	* stack failure
16: ST 0, 0(5)	* Store param in slot
17: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* BEGIN: load a bool value into ACC0
18: LDC 0, 1(0)	* Load a boolean value into ACC0
* END: load a bool value into ACC0
19: LDA 3, -49(5)	* Subtract the stack limit from SP - store in ACC3
20: LDC 2, 98(0)	* Load diagnostic char into ACC2
21: JLE 3, 56(4)	* stack failure
22: ST 0, 0(5)	* Store param in slot
23: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
24: LDA 6, 6(5)	* Set FP to be the "pre-push of AR" SP
* SP already points to end of the AR
25: LDA 7, 29(4)	* Jump to the start of the proc
26: LD 5, -2(6)	* Restore SP from FP-2
27: LD 6, -3(6)	* Restore FP from FP-3
* END: procedure call
28: HALT 0, 0, 0	* End of Program
* BEGIN: procedure code
29: LDA 0, 0(0)	* NOOP to mark beginning of proc
* BEGIN: variable (rvalue) access
30: LD 0, -4(6)	* Load the local var into ACC0
* END: variable (rvalue) access
31: JGT 0, 11(7)	* Jump over rest of logical or code
* BEGIN: push to stack
32: LDA 3, -49(5)	* Subtract the stack limit from SP - store in ACC3
33: LDC 2, 57(0)	* Load diagnostic char into ACC2
34: JLE 3, 56(4)	* stack failure
35: ST 0, 0(5)	* save ACC0 into the current SP location
36: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: variable (rvalue) access
37: LD 0, -5(6)	* Load the local var into ACC0
* END: variable (rvalue) access
38: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
39: LD 1, 0(5)	* Load stored result into ACC1
40: ADD 0, 1, 0	* for OR, add right and left
41: JEQ 0, 1(7)	* Jump over Load 1 if ACC0 == 0
42: LDC 0, 1(0)	* Load 1 into ACC0
43: JEQ 0, 10(7)	* Jump over the then stmts if false
* BEGIN: load a string's location into ACC0
44: LDC 0, 45(0)	* Load a string's location into ACC0
* END: load a string's location into ACC0
* BEGIN: write(s)
45: LDA 1, 1(0)	* Increment the address stored in ACC0 to get the string's char location (put in ACC1)
46: LD 0, 0(0)	* Load the string size into ACC0
47: JEQ 0, 5(7)	* Jump to end when run out of string
48: LDA 0, -1(0)	* subtract one from string size
49: LD 2, 0(1)	* Load next char from string into ACC2
50: LDA 1, 1(1)	* increment pointer into string
51: OUTC 2, 0, 0	* Write out character in ACC2
52: LDA 7, -6(7)	* Go back to start of loop
53: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
54: LD 0, 0(6)	* Load the return address from the 1st slot in the AR to ACC0
55: LDA 7, 0(0)	* Return to calling location (stored in ACC0)
* END: procedure code
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
