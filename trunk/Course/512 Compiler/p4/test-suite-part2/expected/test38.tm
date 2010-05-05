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
7: JLE 3, 35(4)	* stack failure
8: ST 0, 0(5)	* Store return address (in ACC0) to SP/FP
* return value sits at SP-1/FP-1
9: ST 5, -2(5)	* Store SP to SP-2/FP-2
10: ST 6, -3(5)	* Store FP to SP-3/FP-3
11: LDA 5, -4(5)	* decrement SP by 4 (i.e., 4 pushes)
12: LDA 6, 4(5)	* Set FP to be the "pre-push of AR" SP
* SP already points to end of the AR
13: LDA 7, 29(4)	* Jump to the start of the proc
14: LD 5, -2(6)	* Restore SP from FP-2
15: LD 6, -3(6)	* Restore FP from FP-3
* END: procedure call
* BEGIN: procedure call
16: LDA 0, 9(7)	* Get return address into ACC0
17: LDA 3, -49(5)	* Subtract the stack limit from SP - store in ACC3
18: LDC 2, 97(0)	* Load diagnostic char into ACC2
19: JLE 3, 35(4)	* stack failure
20: ST 0, 0(5)	* Store return address (in ACC0) to SP/FP
* return value sits at SP-1/FP-1
21: ST 5, -2(5)	* Store SP to SP-2/FP-2
22: ST 6, -3(5)	* Store FP to SP-3/FP-3
23: LDA 5, -4(5)	* decrement SP by 4 (i.e., 4 pushes)
24: LDA 6, 4(5)	* Set FP to be the "pre-push of AR" SP
* SP already points to end of the AR
25: LDA 7, 29(4)	* Jump to the start of the proc
26: LD 5, -2(6)	* Restore SP from FP-2
27: LD 6, -3(6)	* Restore FP from FP-3
* END: procedure call
28: HALT 0, 0, 0	* End of Program
* BEGIN: procedure code
29: LDA 0, 0(0)	* NOOP to mark beginning of proc
* BEGIN: load an int constant
30: LDC 0, 1(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: write(s)
31: OUT 0, 0, 0	* write out the int value in ACC0
32: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
33: LD 0, 0(6)	* Load the return address from the 1st slot in the AR to ACC0
34: LDA 7, 0(0)	* Return to calling location (stored in ACC0)
* END: procedure code
* BEGIN: stack limit message handler
35: LDC 0, 25(0)	* Load the error message into ACC0
36: LDA 1, 1(0)	* Increment the address stored in ACC0 to get the string's char location (put in ACC1)
37: LD 0, 0(0)	* Load the string size into ACC0
38: JEQ 0, 5(7)	* Jump to end when run out of string
39: LDA 0, -1(0)	* subtract one from string size
40: LD 3, 0(1)	* Load next char from string into ACC3
41: LDA 1, 1(1)	* increment pointer into string
42: OUTC 3, 0, 0	* Write out character in ACC3
43: LDA 7, -6(7)	* Go back to start of loop
44: OUTC 2, 0, 0	* Write out diagnostic char in ACC2
45: OUTNL 0, 0, 0	* dump out the newline
46: HALT 0, 0, 0	* Halt for stack limit
* END: stack limit message handler
