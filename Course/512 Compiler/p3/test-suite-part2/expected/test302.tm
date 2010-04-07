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
7: JLE 3, 42(4)	* stack failure
8: ST 0, 0(5)	* Store return address (in ACC0) to SP/FP
* return value sits at SP-1/FP-1
9: ST 5, -2(5)	* Store SP to SP-2/FP-2
10: ST 6, -3(5)	* Store FP to SP-3/FP-3
11: LDA 5, -4(5)	* decrement SP by 4 (i.e., 4 pushes)
12: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
13: LDC 2, 99(0)	* Load diagnostic char into ACC2
14: JLE 3, 42(4)	* stack failure
15: LDA 5, -1(5)	* decrement SP by local var's size (i.e., push)
16: LDA 6, 5(5)	* Set FP to be the "pre-push of AR" SP
* SP already points to end of the AR
17: LDA 7, 22(4)	* Jump to the start of the proc
18: LD 0, -4(6)	* Load the return value into ACC0
19: LD 5, -2(6)	* Restore SP from FP-2
20: LD 6, -3(6)	* Restore FP from FP-3
* END: procedure call
21: HALT 0, 0, 0	* End of Program
* BEGIN: procedure code
22: LDA 0, 0(0)	* NOOP to mark beginning of proc
* BEGIN: procedure call
23: LDA 0, 13(7)	* Get return address into ACC0
24: LDA 3, -49(5)	* Subtract the stack limit from SP - store in ACC3
25: LDC 2, 97(0)	* Load diagnostic char into ACC2
26: JLE 3, 42(4)	* stack failure
27: ST 0, 0(5)	* Store return address (in ACC0) to SP/FP
* return value sits at SP-1/FP-1
28: ST 5, -2(5)	* Store SP to SP-2/FP-2
29: ST 6, -3(5)	* Store FP to SP-3/FP-3
30: LDA 5, -4(5)	* decrement SP by 4 (i.e., 4 pushes)
31: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
32: LDC 2, 99(0)	* Load diagnostic char into ACC2
33: JLE 3, 42(4)	* stack failure
34: LDA 5, -1(5)	* decrement SP by local var's size (i.e., push)
35: LDA 6, 5(5)	* Set FP to be the "pre-push of AR" SP
* SP already points to end of the AR
36: LDA 7, 22(4)	* Jump to the start of the proc
37: LD 0, -4(6)	* Load the return value into ACC0
38: LD 5, -2(6)	* Restore SP from FP-2
39: LD 6, -3(6)	* Restore FP from FP-3
* END: procedure call
40: LD 0, 0(6)	* Load the return address from the 1st slot in the AR to ACC0
41: LDA 7, 0(0)	* Return to calling location (stored in ACC0)
* END: procedure code
* BEGIN: stack limit message handler
42: LDC 0, 25(0)	* Load the error message into ACC0
43: LDA 1, 1(0)	* Increment the address stored in ACC0 to get the string's char location (put in ACC1)
44: LD 0, 0(0)	* Load the string size into ACC0
45: JEQ 0, 5(7)	* Jump to end when run out of string
46: LDA 0, -1(0)	* subtract one from string size
47: LD 3, 0(1)	* Load next char from string into ACC3
48: LDA 1, 1(1)	* increment pointer into string
49: OUTC 3, 0, 0	* Write out character in ACC3
50: LDA 7, -6(7)	* Go back to start of loop
51: OUTC 2, 0, 0	* Write out diagnostic char in ACC2
52: OUTNL 0, 0, 0	* dump out the newline
53: HALT 0, 0, 0	* Halt for stack limit
* END: stack limit message handler
