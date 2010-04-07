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
4: LDC 0, 9(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: push to stack
5: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
6: LDC 2, 55(0)	* Load diagnostic char into ACC2
7: JLE 3, 69(4)	* stack failure
8: ST 0, 0(5)	* save ACC0 into the current SP location
9: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
10: LDC 0, 3(0)	* Load a constant into ACC0
* END: load an int constant
11: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
12: LD 1, 0(5)	* Load stored result into ACC1
* BEGIN: mod
13: DIV 2, 1, 0	* Divide left by right & put result in ACC2
14: MUL 2, 2, 0	* Multiply the right by the divide result & put in ACC2
15: SUB 0, 1, 2	* Subtract the multiplication result from left & put in ACC
* END: mod
* BEGIN: write(s)
16: OUT 0, 0, 0	* write out the int value in ACC0
17: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
* BEGIN: load an int constant
18: LDC 0, 27(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: push to stack
19: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
20: LDC 2, 55(0)	* Load diagnostic char into ACC2
21: JLE 3, 69(4)	* stack failure
22: ST 0, 0(5)	* save ACC0 into the current SP location
23: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
24: LDC 0, 3(0)	* Load a constant into ACC0
* END: load an int constant
25: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
26: LD 1, 0(5)	* Load stored result into ACC1
* BEGIN: mod
27: DIV 2, 1, 0	* Divide left by right & put result in ACC2
28: MUL 2, 2, 0	* Multiply the right by the divide result & put in ACC2
29: SUB 0, 1, 2	* Subtract the multiplication result from left & put in ACC
* END: mod
* BEGIN: push to stack
30: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
31: LDC 2, 55(0)	* Load diagnostic char into ACC2
32: JLE 3, 69(4)	* stack failure
33: ST 0, 0(5)	* save ACC0 into the current SP location
34: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
35: LDC 0, 1(0)	* Load a constant into ACC0
* END: load an int constant
36: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
37: LD 1, 0(5)	* Load stored result into ACC1
* BEGIN: mod
38: DIV 2, 1, 0	* Divide left by right & put result in ACC2
39: MUL 2, 2, 0	* Multiply the right by the divide result & put in ACC2
40: SUB 0, 1, 2	* Subtract the multiplication result from left & put in ACC
* END: mod
* BEGIN: write(s)
41: OUT 0, 0, 0	* write out the int value in ACC0
42: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
* BEGIN: load an int constant
43: LDC 0, 27(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: push to stack
44: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
45: LDC 2, 55(0)	* Load diagnostic char into ACC2
46: JLE 3, 69(4)	* stack failure
47: ST 0, 0(5)	* save ACC0 into the current SP location
48: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
49: LDC 0, 11(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: push to stack
50: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
51: LDC 2, 55(0)	* Load diagnostic char into ACC2
52: JLE 3, 69(4)	* stack failure
53: ST 0, 0(5)	* save ACC0 into the current SP location
54: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
55: LDC 0, 3(0)	* Load a constant into ACC0
* END: load an int constant
56: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
57: LD 1, 0(5)	* Load stored result into ACC1
* BEGIN: mod
58: DIV 2, 1, 0	* Divide left by right & put result in ACC2
59: MUL 2, 2, 0	* Multiply the right by the divide result & put in ACC2
60: SUB 0, 1, 2	* Subtract the multiplication result from left & put in ACC
* END: mod
61: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
62: LD 1, 0(5)	* Load stored result into ACC1
* BEGIN: mod
63: DIV 2, 1, 0	* Divide left by right & put result in ACC2
64: MUL 2, 2, 0	* Multiply the right by the divide result & put in ACC2
65: SUB 0, 1, 2	* Subtract the multiplication result from left & put in ACC
* END: mod
* BEGIN: write(s)
66: OUT 0, 0, 0	* write out the int value in ACC0
67: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
68: HALT 0, 0, 0	* End of Program
* BEGIN: stack limit message handler
69: LDC 0, 25(0)	* Load the error message into ACC0
70: LDA 1, 1(0)	* Increment the address stored in ACC0 to get the string's char location (put in ACC1)
71: LD 0, 0(0)	* Load the string size into ACC0
72: JEQ 0, 5(7)	* Jump to end when run out of string
73: LDA 0, -1(0)	* subtract one from string size
74: LD 3, 0(1)	* Load next char from string into ACC3
75: LDA 1, 1(1)	* increment pointer into string
76: OUTC 3, 0, 0	* Write out character in ACC3
77: LDA 7, -6(7)	* Go back to start of loop
78: OUTC 2, 0, 0	* Write out diagnostic char in ACC2
79: OUTNL 0, 0, 0	* dump out the newline
80: HALT 0, 0, 0	* Halt for stack limit
* END: stack limit message handler
