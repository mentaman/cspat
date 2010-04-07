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
4: LDA 0, 33(7)	* Get return address into ACC0
5: LDA 3, -52(5)	* Subtract the stack limit from SP - store in ACC3
6: LDC 2, 97(0)	* Load diagnostic char into ACC2
7: JLE 3, 63(4)	* stack failure
8: ST 0, 0(5)	* Store return address (in ACC0) to SP/FP
* return value sits at SP-1/FP-1
9: ST 5, -2(5)	* Store SP to SP-2/FP-2
10: ST 6, -3(5)	* Store FP to SP-3/FP-3
11: LDA 5, -4(5)	* decrement SP by 4 (i.e., 4 pushes)
* BEGIN: load an int constant
12: LDC 0, 0(0)	* Load a constant into ACC0
* END: load an int constant
13: LDA 3, -49(5)	* Subtract the stack limit from SP - store in ACC3
14: LDC 2, 98(0)	* Load diagnostic char into ACC2
15: JLE 3, 63(4)	* stack failure
16: ST 0, 0(5)	* Store param in slot
17: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* BEGIN: load an int constant
18: LDC 0, 1(0)	* Load a constant into ACC0
* END: load an int constant
19: LDA 3, -49(5)	* Subtract the stack limit from SP - store in ACC3
20: LDC 2, 98(0)	* Load diagnostic char into ACC2
21: JLE 3, 63(4)	* stack failure
22: ST 0, 0(5)	* Store param in slot
23: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* BEGIN: load a bool value into ACC0
24: LDC 0, 1(0)	* Load a boolean value into ACC0
* END: load a bool value into ACC0
25: LDA 3, -49(5)	* Subtract the stack limit from SP - store in ACC3
26: LDC 2, 98(0)	* Load diagnostic char into ACC2
27: JLE 3, 63(4)	* stack failure
28: ST 0, 0(5)	* Store param in slot
29: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* BEGIN: load a string's location into ACC0
30: LDC 0, 45(0)	* Load a string's location into ACC0
* END: load a string's location into ACC0
31: LDA 3, -49(5)	* Subtract the stack limit from SP - store in ACC3
32: LDC 2, 98(0)	* Load diagnostic char into ACC2
33: JLE 3, 63(4)	* stack failure
34: ST 0, 0(5)	* Store param in slot
35: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
36: LDA 6, 8(5)	* Set FP to be the "pre-push of AR" SP
* SP already points to end of the AR
37: LDA 7, 41(4)	* Jump to the start of the proc
38: LD 5, -2(6)	* Restore SP from FP-2
39: LD 6, -3(6)	* Restore FP from FP-3
* END: procedure call
40: HALT 0, 0, 0	* End of Program
* BEGIN: procedure code
41: LDA 0, 0(0)	* NOOP to mark beginning of proc
* BEGIN: variable (rvalue) access
42: LD 0, -4(6)	* Load the local var into ACC0
* END: variable (rvalue) access
* BEGIN: write(s)
43: OUT 0, 0, 0	* write out the int value in ACC0
44: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
* BEGIN: variable (rvalue) access
45: LD 0, -5(6)	* Load the local var into ACC0
* END: variable (rvalue) access
* BEGIN: write(s)
46: OUT 0, 0, 0	* write out the int value in ACC0
47: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
* BEGIN: variable (rvalue) access
48: LD 0, -6(6)	* Load the local var into ACC0
* END: variable (rvalue) access
* BEGIN: write(s)
49: OUT 0, 0, 0	* write out the int value in ACC0
50: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
* BEGIN: variable (rvalue) access
51: LD 0, -7(6)	* Load the local var into ACC0
* END: variable (rvalue) access
* BEGIN: write(s)
52: LDA 1, 1(0)	* Increment the address stored in ACC0 to get the string's char location (put in ACC1)
53: LD 0, 0(0)	* Load the string size into ACC0
54: JEQ 0, 5(7)	* Jump to end when run out of string
55: LDA 0, -1(0)	* subtract one from string size
56: LD 2, 0(1)	* Load next char from string into ACC2
57: LDA 1, 1(1)	* increment pointer into string
58: OUTC 2, 0, 0	* Write out character in ACC2
59: LDA 7, -6(7)	* Go back to start of loop
60: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
61: LD 0, 0(6)	* Load the return address from the 1st slot in the AR to ACC0
62: LDA 7, 0(0)	* Return to calling location (stored in ACC0)
* END: procedure code
* BEGIN: stack limit message handler
63: LDC 0, 25(0)	* Load the error message into ACC0
64: LDA 1, 1(0)	* Increment the address stored in ACC0 to get the string's char location (put in ACC1)
65: LD 0, 0(0)	* Load the string size into ACC0
66: JEQ 0, 5(7)	* Jump to end when run out of string
67: LDA 0, -1(0)	* subtract one from string size
68: LD 3, 0(1)	* Load next char from string into ACC3
69: LDA 1, 1(1)	* increment pointer into string
70: OUTC 3, 0, 0	* Write out character in ACC3
71: LDA 7, -6(7)	* Go back to start of loop
72: OUTC 2, 0, 0	* Write out diagnostic char in ACC2
73: OUTNL 0, 0, 0	* dump out the newline
74: HALT 0, 0, 0	* Halt for stack limit
* END: stack limit message handler
