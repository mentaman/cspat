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
7: JLE 3, 66(4)	* stack failure
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
15: JLE 3, 66(4)	* stack failure
16: ST 0, 0(5)	* Store param in slot
17: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* BEGIN: load an int constant
18: LDC 0, 0(0)	* Load a constant into ACC0
* END: load an int constant
19: LDA 3, -49(5)	* Subtract the stack limit from SP - store in ACC3
20: LDC 2, 98(0)	* Load diagnostic char into ACC2
21: JLE 3, 66(4)	* stack failure
22: ST 0, 0(5)	* Store param in slot
23: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* BEGIN: load a bool value into ACC0
24: LDC 0, 1(0)	* Load a boolean value into ACC0
* END: load a bool value into ACC0
25: LDA 3, -49(5)	* Subtract the stack limit from SP - store in ACC3
26: LDC 2, 98(0)	* Load diagnostic char into ACC2
27: JLE 3, 66(4)	* stack failure
28: ST 0, 0(5)	* Store param in slot
29: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* BEGIN: load a string's location into ACC0
30: LDC 0, 45(0)	* Load a string's location into ACC0
* END: load a string's location into ACC0
31: LDA 3, -49(5)	* Subtract the stack limit from SP - store in ACC3
32: LDC 2, 98(0)	* Load diagnostic char into ACC2
33: JLE 3, 66(4)	* stack failure
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
* BEGIN: push to stack
43: LDA 3, -49(5)	* Subtract the stack limit from SP - store in ACC3
44: LDC 2, 55(0)	* Load diagnostic char into ACC2
45: JLE 3, 66(4)	* stack failure
46: ST 0, 0(5)	* save ACC0 into the current SP location
47: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: variable (rvalue) access
48: LD 0, -5(6)	* Load the local var into ACC0
* END: variable (rvalue) access
49: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
50: LD 1, 0(5)	* Load stored result into ACC1
51: ADD 0, 0, 1	* Add ACC0 & ACC1 placing result in ACC0
* BEGIN: variable (rvalue) access
52: LD 0, -6(6)	* Load the local var into ACC0
* END: variable (rvalue) access
53: JEQ 0, 10(7)	* Jump over the then stmts if false
* BEGIN: variable (rvalue) access
54: LD 0, -7(6)	* Load the local var into ACC0
* END: variable (rvalue) access
* BEGIN: write(s)
55: LDA 1, 1(0)	* Increment the address stored in ACC0 to get the string's char location (put in ACC1)
56: LD 0, 0(0)	* Load the string size into ACC0
57: JEQ 0, 5(7)	* Jump to end when run out of string
58: LDA 0, -1(0)	* subtract one from string size
59: LD 2, 0(1)	* Load next char from string into ACC2
60: LDA 1, 1(1)	* increment pointer into string
61: OUTC 2, 0, 0	* Write out character in ACC2
62: LDA 7, -6(7)	* Go back to start of loop
63: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
64: LD 0, 0(6)	* Load the return address from the 1st slot in the AR to ACC0
65: LDA 7, 0(0)	* Return to calling location (stored in ACC0)
* END: procedure code
* BEGIN: stack limit message handler
66: LDC 0, 25(0)	* Load the error message into ACC0
67: LDA 1, 1(0)	* Increment the address stored in ACC0 to get the string's char location (put in ACC1)
68: LD 0, 0(0)	* Load the string size into ACC0
69: JEQ 0, 5(7)	* Jump to end when run out of string
70: LDA 0, -1(0)	* subtract one from string size
71: LD 3, 0(1)	* Load next char from string into ACC3
72: LDA 1, 1(1)	* increment pointer into string
73: OUTC 3, 0, 0	* Write out character in ACC3
74: LDA 7, -6(7)	* Go back to start of loop
75: OUTC 2, 0, 0	* Write out diagnostic char in ACC2
76: OUTNL 0, 0, 0	* dump out the newline
77: HALT 0, 0, 0	* Halt for stack limit
* END: stack limit message handler
