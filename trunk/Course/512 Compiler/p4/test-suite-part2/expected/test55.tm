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
7: JLE 3, 85(4)	* stack failure
8: ST 0, 0(5)	* Store return address (in ACC0) to SP/FP
* return value sits at SP-1/FP-1
9: ST 5, -2(5)	* Store SP to SP-2/FP-2
10: ST 6, -3(5)	* Store FP to SP-3/FP-3
11: LDA 5, -4(5)	* decrement SP by 4 (i.e., 4 pushes)
12: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
13: LDC 2, 99(0)	* Load diagnostic char into ACC2
14: JLE 3, 85(4)	* stack failure
15: LDA 5, -1(5)	* decrement SP by local var's size (i.e., push)
16: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
17: LDC 2, 99(0)	* Load diagnostic char into ACC2
18: JLE 3, 85(4)	* stack failure
19: LDA 5, -1(5)	* decrement SP by local var's size (i.e., push)
20: LDA 6, 6(5)	* Set FP to be the "pre-push of AR" SP
* SP already points to end of the AR
21: LDA 7, 28(4)	* Jump to the start of the proc
22: LD 5, -2(6)	* Restore SP from FP-2
23: LD 6, -3(6)	* Restore FP from FP-3
* END: procedure call
* BEGIN: load an int constant
24: LDC 0, 5(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: write(s)
25: OUT 0, 0, 0	* write out the int value in ACC0
26: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
27: HALT 0, 0, 0	* End of Program
* BEGIN: procedure code
28: LDA 0, 0(0)	* NOOP to mark beginning of proc
* BEGIN: for loop
* BEGIN: load an int constant
29: LDC 0, 2(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: save initial value to loop var
* BEGIN: push to stack
30: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
31: LDC 2, 52(0)	* Load diagnostic char into ACC2
32: JLE 3, 85(4)	* stack failure
33: ST 0, 0(5)	* save ACC0 into the current SP location
34: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
35: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
36: LD 0, 0(5)	* Load stored result into ACC0
37: ST 0, -4(6)	* Store ACC0 into local offset (relative to FP)
* END: save initial value to loop var
* BEGIN: load an int constant
38: LDC 0, 4(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: save max value to max loop var
* BEGIN: push to stack
39: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
40: LDC 2, 53(0)	* Load diagnostic char into ACC2
41: JLE 3, 85(4)	* stack failure
42: ST 0, 0(5)	* save ACC0 into the current SP location
43: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
44: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
45: LD 0, 0(5)	* Load stored result into ACC0
46: ST 0, -5(6)	* Store ACC0 into local offset (relative to FP)
* END: save max value to max loop var
47: LDA 5, 0(5)	* NOOP to mark top of loop
48: LD 0, -4(6)	* Load the local var into ACC0
49: LD 1, -5(6)	* Load the local var into ACC0
50: SUB 1, 1, 0	* Subtract the loop var from the max
51: JLT 1, 82(4)	* go to the loop exit
* BEGIN: body of for loop
* BEGIN: variable (rvalue) access
52: LD 0, -4(6)	* Load the local var into ACC0
* END: variable (rvalue) access
* BEGIN: write(s)
53: OUT 0, 0, 0	* write out the int value in ACC0
54: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
* BEGIN: variable (rvalue) access
55: LD 0, -4(6)	* Load the local var into ACC0
* END: variable (rvalue) access
* BEGIN: push to stack
56: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
57: LDC 2, 51(0)	* Load diagnostic char into ACC2
58: JLE 3, 85(4)	* stack failure
59: ST 0, 0(5)	* save ACC0 into the current SP location
60: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
61: LDC 0, 3(0)	* Load a constant into ACC0
* END: load an int constant
62: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
63: LD 1, 0(5)	* Load stored result into ACC1
* BEGIN: >=
64: SUB 0, 1, 0	* for >=, subtract right from left
65: JGE 0, 2(7)	* Jump to Load 1 if ACC0 >= 0
66: LDC 0, 0(0)	* Load 0 into ACC0
67: LDA 7, 1(7)	* Jump over Load 1
68: LDC 0, 1(0)	* Load 1 into ACC0
* END: >=
69: JEQ 0, 1(7)	* Jump over the then stmts if false
* BEGIN: return
70: LDA 7, 83(4)	* Jump to the end of the proc
* END: return
* END: body of for loop
71: LD 0, -4(6)	* Load the local var into ACC0
72: LDA 0, 1(0)	* increment the loop var
* BEGIN: push to stack
73: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
74: LDC 2, 54(0)	* Load diagnostic char into ACC2
75: JLE 3, 85(4)	* stack failure
76: ST 0, 0(5)	* save ACC0 into the current SP location
77: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
78: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
79: LD 0, 0(5)	* Load stored result into ACC0
80: ST 0, -4(6)	* Store ACC0 into local offset (relative to FP)
81: LDA 7, 47(4)	* return to the top of the loop
82: LDA 5, 0(5)	* NOOP to mark end of loop
* END: for loop
83: LD 0, 0(6)	* Load the return address from the 1st slot in the AR to ACC0
84: LDA 7, 0(0)	* Return to calling location (stored in ACC0)
* END: procedure code
* BEGIN: stack limit message handler
85: LDC 0, 25(0)	* Load the error message into ACC0
86: LDA 1, 1(0)	* Increment the address stored in ACC0 to get the string's char location (put in ACC1)
87: LD 0, 0(0)	* Load the string size into ACC0
88: JEQ 0, 5(7)	* Jump to end when run out of string
89: LDA 0, -1(0)	* subtract one from string size
90: LD 3, 0(1)	* Load next char from string into ACC3
91: LDA 1, 1(1)	* increment pointer into string
92: OUTC 3, 0, 0	* Write out character in ACC3
93: LDA 7, -6(7)	* Go back to start of loop
94: OUTC 2, 0, 0	* Write out diagnostic char in ACC2
95: OUTNL 0, 0, 0	* dump out the newline
96: HALT 0, 0, 0	* Halt for stack limit
* END: stack limit message handler
