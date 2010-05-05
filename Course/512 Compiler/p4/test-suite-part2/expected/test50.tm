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
4: LDA 0, 15(7)	* Get return address into ACC0
5: LDA 3, -49(5)	* Subtract the stack limit from SP - store in ACC3
6: LDC 2, 97(0)	* Load diagnostic char into ACC2
7: JLE 3, 61(4)	* stack failure
8: ST 0, 0(5)	* Store return address (in ACC0) to SP/FP
* return value sits at SP-1/FP-1
9: ST 5, -2(5)	* Store SP to SP-2/FP-2
10: ST 6, -3(5)	* Store FP to SP-3/FP-3
11: LDA 5, -4(5)	* decrement SP by 4 (i.e., 4 pushes)
* BEGIN: load a bool value into ACC0
12: LDC 0, 1(0)	* Load a boolean value into ACC0
* END: load a bool value into ACC0
13: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
14: LDC 2, 98(0)	* Load diagnostic char into ACC2
15: JLE 3, 61(4)	* stack failure
16: ST 0, 0(5)	* Store param in slot
17: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
18: LDA 6, 5(5)	* Set FP to be the "pre-push of AR" SP
* SP already points to end of the AR
19: LDA 7, 44(4)	* Jump to the start of the proc
20: LD 5, -2(6)	* Restore SP from FP-2
21: LD 6, -3(6)	* Restore FP from FP-3
* END: procedure call
* BEGIN: procedure call
22: LDA 0, 15(7)	* Get return address into ACC0
23: LDA 3, -49(5)	* Subtract the stack limit from SP - store in ACC3
24: LDC 2, 97(0)	* Load diagnostic char into ACC2
25: JLE 3, 61(4)	* stack failure
26: ST 0, 0(5)	* Store return address (in ACC0) to SP/FP
* return value sits at SP-1/FP-1
27: ST 5, -2(5)	* Store SP to SP-2/FP-2
28: ST 6, -3(5)	* Store FP to SP-3/FP-3
29: LDA 5, -4(5)	* decrement SP by 4 (i.e., 4 pushes)
* BEGIN: load a bool value into ACC0
30: LDC 0, 0(0)	* Load a boolean value into ACC0
* END: load a bool value into ACC0
31: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
32: LDC 2, 98(0)	* Load diagnostic char into ACC2
33: JLE 3, 61(4)	* stack failure
34: ST 0, 0(5)	* Store param in slot
35: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
36: LDA 6, 5(5)	* Set FP to be the "pre-push of AR" SP
* SP already points to end of the AR
37: LDA 7, 44(4)	* Jump to the start of the proc
38: LD 5, -2(6)	* Restore SP from FP-2
39: LD 6, -3(6)	* Restore FP from FP-3
* END: procedure call
* BEGIN: load an int constant
40: LDC 0, 4(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: write(s)
41: OUT 0, 0, 0	* write out the int value in ACC0
42: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
43: HALT 0, 0, 0	* End of Program
* BEGIN: procedure code
44: LDA 0, 0(0)	* NOOP to mark beginning of proc
* BEGIN: variable (rvalue) access
45: LD 0, -4(6)	* Load the local var into ACC0
* END: variable (rvalue) access
46: JEQ 0, 5(7)	* Jump over the then stmts if false
* BEGIN: load an int constant
47: LDC 0, 1(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: write(s)
48: OUT 0, 0, 0	* write out the int value in ACC0
49: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
* BEGIN: return
50: LDA 7, 59(4)	* Jump to the end of the proc
* END: return
51: LDA 7, 4(7)	* Jump over the rest of the if
* BEGIN: load an int constant
52: LDC 0, 2(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: write(s)
53: OUT 0, 0, 0	* write out the int value in ACC0
54: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
* BEGIN: return
55: LDA 7, 59(4)	* Jump to the end of the proc
* END: return
* BEGIN: load an int constant
56: LDC 0, 3(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: write(s)
57: OUT 0, 0, 0	* write out the int value in ACC0
58: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
59: LD 0, 0(6)	* Load the return address from the 1st slot in the AR to ACC0
60: LDA 7, 0(0)	* Return to calling location (stored in ACC0)
* END: procedure code
* BEGIN: stack limit message handler
61: LDC 0, 25(0)	* Load the error message into ACC0
62: LDA 1, 1(0)	* Increment the address stored in ACC0 to get the string's char location (put in ACC1)
63: LD 0, 0(0)	* Load the string size into ACC0
64: JEQ 0, 5(7)	* Jump to end when run out of string
65: LDA 0, -1(0)	* subtract one from string size
66: LD 3, 0(1)	* Load next char from string into ACC3
67: LDA 1, 1(1)	* increment pointer into string
68: OUTC 3, 0, 0	* Write out character in ACC3
69: LDA 7, -6(7)	* Go back to start of loop
70: OUTC 2, 0, 0	* Write out diagnostic char in ACC2
71: OUTNL 0, 0, 0	* dump out the newline
72: HALT 0, 0, 0	* Halt for stack limit
* END: stack limit message handler
