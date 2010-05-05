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
* BEGIN: load an int constant
4: LDC 0, 1(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: push to stack
5: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
6: LDC 2, 55(0)	* Load diagnostic char into ACC2
7: JLE 3, 68(4)	* stack failure
8: ST 0, 0(5)	* save ACC0 into the current SP location
9: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
10: LDC 0, 3(0)	* Load a constant into ACC0
* END: load an int constant
11: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
12: LD 1, 0(5)	* Load stored result into ACC1
13: SUB 0, 1, 0	* Subtract ACC0 from ACC1 placing result in ACC0
* BEGIN: push to stack
14: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
15: LDC 2, 55(0)	* Load diagnostic char into ACC2
16: JLE 3, 68(4)	* stack failure
17: ST 0, 0(5)	* save ACC0 into the current SP location
18: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
19: LDC 0, 5(0)	* Load a constant into ACC0
* END: load an int constant
20: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
21: LD 1, 0(5)	* Load stored result into ACC1
22: SUB 0, 1, 0	* Subtract ACC0 from ACC1 placing result in ACC0
* BEGIN: push to stack
23: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
24: LDC 2, 55(0)	* Load diagnostic char into ACC2
25: JLE 3, 68(4)	* stack failure
26: ST 0, 0(5)	* save ACC0 into the current SP location
27: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
28: LDC 0, 7(0)	* Load a constant into ACC0
* END: load an int constant
29: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
30: LD 1, 0(5)	* Load stored result into ACC1
31: SUB 0, 1, 0	* Subtract ACC0 from ACC1 placing result in ACC0
* BEGIN: write(s)
32: OUT 0, 0, 0	* write out the int value in ACC0
33: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
* BEGIN: load an int constant
34: LDC 0, 5(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: push to stack
35: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
36: LDC 2, 55(0)	* Load diagnostic char into ACC2
37: JLE 3, 68(4)	* stack failure
38: ST 0, 0(5)	* save ACC0 into the current SP location
39: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
40: LDC 0, 4(0)	* Load a constant into ACC0
* END: load an int constant
41: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
42: LD 1, 0(5)	* Load stored result into ACC1
43: SUB 0, 1, 0	* Subtract ACC0 from ACC1 placing result in ACC0
* BEGIN: write(s)
44: OUT 0, 0, 0	* write out the int value in ACC0
45: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
* BEGIN: load an int constant
46: LDC 0, 1(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: push to stack
47: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
48: LDC 2, 55(0)	* Load diagnostic char into ACC2
49: JLE 3, 68(4)	* stack failure
50: ST 0, 0(5)	* save ACC0 into the current SP location
51: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
52: LDC 0, 3(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: push to stack
53: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
54: LDC 2, 55(0)	* Load diagnostic char into ACC2
55: JLE 3, 68(4)	* stack failure
56: ST 0, 0(5)	* save ACC0 into the current SP location
57: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
58: LDC 0, 5(0)	* Load a constant into ACC0
* END: load an int constant
59: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
60: LD 1, 0(5)	* Load stored result into ACC1
61: SUB 0, 1, 0	* Subtract ACC0 from ACC1 placing result in ACC0
62: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
63: LD 1, 0(5)	* Load stored result into ACC1
64: SUB 0, 1, 0	* Subtract ACC0 from ACC1 placing result in ACC0
* BEGIN: write(s)
65: OUT 0, 0, 0	* write out the int value in ACC0
66: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
67: HALT 0, 0, 0	* End of Program
* BEGIN: stack limit message handler
68: LDC 0, 25(0)	* Load the error message into ACC0
69: LDA 1, 1(0)	* Increment the address stored in ACC0 to get the string's char location (put in ACC1)
70: LD 0, 0(0)	* Load the string size into ACC0
71: JEQ 0, 5(7)	* Jump to end when run out of string
72: LDA 0, -1(0)	* subtract one from string size
73: LD 3, 0(1)	* Load next char from string into ACC3
74: LDA 1, 1(1)	* increment pointer into string
75: OUTC 3, 0, 0	* Write out character in ACC3
76: LDA 7, -6(7)	* Go back to start of loop
77: OUTC 2, 0, 0	* Write out diagnostic char in ACC2
78: OUTNL 0, 0, 0	* dump out the newline
79: HALT 0, 0, 0	* Halt for stack limit
* END: stack limit message handler
