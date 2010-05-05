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
4: LDA 0, 9(7)	* Get return address into ACC0
5: LDA 3, -49(5)	* Subtract the stack limit from SP - store in ACC3
6: LDC 2, 97(0)	* Load diagnostic char into ACC2
7: JLE 3, 46(4)	* stack failure
8: ST 0, 0(5)	* Store return address (in ACC0) to SP/FP
* return value sits at SP-1/FP-1
9: ST 5, -2(5)	* Store SP to SP-2/FP-2
10: ST 6, -3(5)	* Store FP to SP-3/FP-3
11: LDA 5, -4(5)	* decrement SP by 4 (i.e., 4 pushes)
12: LDA 6, 4(5)	* Set FP to be the "pre-push of AR" SP
* SP already points to end of the AR
13: LDA 7, 17(4)	* Jump to the start of the proc
14: LD 5, -2(6)	* Restore SP from FP-2
15: LD 6, -3(6)	* Restore FP from FP-3
* END: procedure call
16: HALT 0, 0, 0	* End of Program
* BEGIN: procedure code
17: LDA 0, 0(0)	* NOOP to mark beginning of proc
* BEGIN: load a bool value into ACC0
18: LDC 0, 0(0)	* Load a boolean value into ACC0
* END: load a bool value into ACC0
19: JGT 0, 11(7)	* Jump over rest of logical or code
* BEGIN: push to stack
20: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
21: LDC 2, 57(0)	* Load diagnostic char into ACC2
22: JLE 3, 46(4)	* stack failure
23: ST 0, 0(5)	* save ACC0 into the current SP location
24: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load a bool value into ACC0
25: LDC 0, 1(0)	* Load a boolean value into ACC0
* END: load a bool value into ACC0
26: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
27: LD 1, 0(5)	* Load stored result into ACC1
28: ADD 0, 1, 0	* for OR, add right and left
29: JEQ 0, 1(7)	* Jump over Load 1 if ACC0 == 0
30: LDC 0, 1(0)	* Load 1 into ACC0
31: JEQ 0, 0(7)	* Jump over the then stmts if false
* BEGIN: procedure call
32: LDA 0, 9(7)	* Get return address into ACC0
33: LDA 3, -49(5)	* Subtract the stack limit from SP - store in ACC3
34: LDC 2, 97(0)	* Load diagnostic char into ACC2
35: JLE 3, 46(4)	* stack failure
36: ST 0, 0(5)	* Store return address (in ACC0) to SP/FP
* return value sits at SP-1/FP-1
37: ST 5, -2(5)	* Store SP to SP-2/FP-2
38: ST 6, -3(5)	* Store FP to SP-3/FP-3
39: LDA 5, -4(5)	* decrement SP by 4 (i.e., 4 pushes)
40: LDA 6, 4(5)	* Set FP to be the "pre-push of AR" SP
* SP already points to end of the AR
41: LDA 7, 17(4)	* Jump to the start of the proc
42: LD 5, -2(6)	* Restore SP from FP-2
43: LD 6, -3(6)	* Restore FP from FP-3
* END: procedure call
44: LD 0, 0(6)	* Load the return address from the 1st slot in the AR to ACC0
45: LDA 7, 0(0)	* Return to calling location (stored in ACC0)
* END: procedure code
* BEGIN: stack limit message handler
46: LDC 0, 25(0)	* Load the error message into ACC0
47: LDA 1, 1(0)	* Increment the address stored in ACC0 to get the string's char location (put in ACC1)
48: LD 0, 0(0)	* Load the string size into ACC0
49: JEQ 0, 5(7)	* Jump to end when run out of string
50: LDA 0, -1(0)	* subtract one from string size
51: LD 3, 0(1)	* Load next char from string into ACC3
52: LDA 1, 1(1)	* increment pointer into string
53: OUTC 3, 0, 0	* Write out character in ACC3
54: LDA 7, -6(7)	* Go back to start of loop
55: OUTC 2, 0, 0	* Write out diagnostic char in ACC2
56: OUTNL 0, 0, 0	* dump out the newline
57: HALT 0, 0, 0	* Halt for stack limit
* END: stack limit message handler
