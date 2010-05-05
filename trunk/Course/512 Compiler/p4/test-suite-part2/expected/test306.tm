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
4: LDA 0, 17(7)	* Get return address into ACC0
5: LDA 3, -49(5)	* Subtract the stack limit from SP - store in ACC3
6: LDC 2, 97(0)	* Load diagnostic char into ACC2
7: JLE 3, 83(4)	* stack failure
8: ST 0, 0(5)	* Store return address (in ACC0) to SP/FP
* return value sits at SP-1/FP-1
9: ST 5, -2(5)	* Store SP to SP-2/FP-2
10: ST 6, -3(5)	* Store FP to SP-3/FP-3
11: LDA 5, -4(5)	* decrement SP by 4 (i.e., 4 pushes)
12: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
13: LDC 2, 99(0)	* Load diagnostic char into ACC2
14: JLE 3, 83(4)	* stack failure
15: LDA 5, -1(5)	* decrement SP by local var's size (i.e., push)
16: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
17: LDC 2, 99(0)	* Load diagnostic char into ACC2
18: JLE 3, 83(4)	* stack failure
19: LDA 5, -1(5)	* decrement SP by local var's size (i.e., push)
20: LDA 6, 6(5)	* Set FP to be the "pre-push of AR" SP
* SP already points to end of the AR
21: LDA 7, 25(4)	* Jump to the start of the proc
22: LD 5, -2(6)	* Restore SP from FP-2
23: LD 6, -3(6)	* Restore FP from FP-3
* END: procedure call
24: HALT 0, 0, 0	* End of Program
* BEGIN: procedure code
25: LDA 0, 0(0)	* NOOP to mark beginning of proc
* BEGIN: for loop
* BEGIN: load an int constant
26: LDC 0, 0(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: save initial value to loop var
* BEGIN: push to stack
27: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
28: LDC 2, 52(0)	* Load diagnostic char into ACC2
29: JLE 3, 83(4)	* stack failure
30: ST 0, 0(5)	* save ACC0 into the current SP location
31: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
32: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
33: LD 0, 0(5)	* Load stored result into ACC0
34: ST 0, -4(6)	* Store ACC0 into local offset (relative to FP)
* END: save initial value to loop var
* BEGIN: load an int constant
35: LDC 0, 1(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: save max value to max loop var
* BEGIN: push to stack
36: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
37: LDC 2, 53(0)	* Load diagnostic char into ACC2
38: JLE 3, 83(4)	* stack failure
39: ST 0, 0(5)	* save ACC0 into the current SP location
40: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
41: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
42: LD 0, 0(5)	* Load stored result into ACC0
43: ST 0, -5(6)	* Store ACC0 into local offset (relative to FP)
* END: save max value to max loop var
44: LDA 5, 0(5)	* NOOP to mark top of loop
45: LD 0, -4(6)	* Load the local var into ACC0
46: LD 1, -5(6)	* Load the local var into ACC0
47: SUB 1, 1, 0	* Subtract the loop var from the max
48: JLT 1, 60(4)	* go to the loop exit
* BEGIN: body of for loop
* END: body of for loop
49: LD 0, -4(6)	* Load the local var into ACC0
50: LDA 0, 1(0)	* increment the loop var
* BEGIN: push to stack
51: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
52: LDC 2, 54(0)	* Load diagnostic char into ACC2
53: JLE 3, 83(4)	* stack failure
54: ST 0, 0(5)	* save ACC0 into the current SP location
55: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
56: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
57: LD 0, 0(5)	* Load stored result into ACC0
58: ST 0, -4(6)	* Store ACC0 into local offset (relative to FP)
59: LDA 7, 44(4)	* return to the top of the loop
60: LDA 5, 0(5)	* NOOP to mark end of loop
* END: for loop
* BEGIN: procedure call
61: LDA 0, 17(7)	* Get return address into ACC0
62: LDA 3, -49(5)	* Subtract the stack limit from SP - store in ACC3
63: LDC 2, 97(0)	* Load diagnostic char into ACC2
64: JLE 3, 83(4)	* stack failure
65: ST 0, 0(5)	* Store return address (in ACC0) to SP/FP
* return value sits at SP-1/FP-1
66: ST 5, -2(5)	* Store SP to SP-2/FP-2
67: ST 6, -3(5)	* Store FP to SP-3/FP-3
68: LDA 5, -4(5)	* decrement SP by 4 (i.e., 4 pushes)
69: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
70: LDC 2, 99(0)	* Load diagnostic char into ACC2
71: JLE 3, 83(4)	* stack failure
72: LDA 5, -1(5)	* decrement SP by local var's size (i.e., push)
73: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
74: LDC 2, 99(0)	* Load diagnostic char into ACC2
75: JLE 3, 83(4)	* stack failure
76: LDA 5, -1(5)	* decrement SP by local var's size (i.e., push)
77: LDA 6, 6(5)	* Set FP to be the "pre-push of AR" SP
* SP already points to end of the AR
78: LDA 7, 25(4)	* Jump to the start of the proc
79: LD 5, -2(6)	* Restore SP from FP-2
80: LD 6, -3(6)	* Restore FP from FP-3
* END: procedure call
81: LD 0, 0(6)	* Load the return address from the 1st slot in the AR to ACC0
82: LDA 7, 0(0)	* Return to calling location (stored in ACC0)
* END: procedure code
* BEGIN: stack limit message handler
83: LDC 0, 25(0)	* Load the error message into ACC0
84: LDA 1, 1(0)	* Increment the address stored in ACC0 to get the string's char location (put in ACC1)
85: LD 0, 0(0)	* Load the string size into ACC0
86: JEQ 0, 5(7)	* Jump to end when run out of string
87: LDA 0, -1(0)	* subtract one from string size
88: LD 3, 0(1)	* Load next char from string into ACC3
89: LDA 1, 1(1)	* increment pointer into string
90: OUTC 3, 0, 0	* Write out character in ACC3
91: LDA 7, -6(7)	* Go back to start of loop
92: OUTC 2, 0, 0	* Write out diagnostic char in ACC2
93: OUTNL 0, 0, 0	* dump out the newline
94: HALT 0, 0, 0	* Halt for stack limit
* END: stack limit message handler
