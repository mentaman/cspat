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
7: JLE 3, 79(4)	* stack failure
8: ST 0, 0(5)	* save ACC0 into the current SP location
9: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
10: LDC 0, 7(0)	* Load a constant into ACC0
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
18: LDC 0, 9(0)	* Load a constant into ACC0
* END: load an int constant
19: SUB 0, 4, 0	* Subtract ACC0 from ZEROREG to negate it
* BEGIN: push to stack
20: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
21: LDC 2, 55(0)	* Load diagnostic char into ACC2
22: JLE 3, 79(4)	* stack failure
23: ST 0, 0(5)	* save ACC0 into the current SP location
24: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
25: LDC 0, 7(0)	* Load a constant into ACC0
* END: load an int constant
26: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
27: LD 1, 0(5)	* Load stored result into ACC1
* BEGIN: mod
28: DIV 2, 1, 0	* Divide left by right & put result in ACC2
29: MUL 2, 2, 0	* Multiply the right by the divide result & put in ACC2
30: SUB 0, 1, 2	* Subtract the multiplication result from left & put in ACC
* END: mod
* BEGIN: write(s)
31: OUT 0, 0, 0	* write out the int value in ACC0
32: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
* BEGIN: load an int constant
33: LDC 0, 9(0)	* Load a constant into ACC0
* END: load an int constant
34: SUB 0, 4, 0	* Subtract ACC0 from ZEROREG to negate it
* BEGIN: push to stack
35: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
36: LDC 2, 55(0)	* Load diagnostic char into ACC2
37: JLE 3, 79(4)	* stack failure
38: ST 0, 0(5)	* save ACC0 into the current SP location
39: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
40: LDC 0, 7(0)	* Load a constant into ACC0
* END: load an int constant
41: SUB 0, 4, 0	* Subtract ACC0 from ZEROREG to negate it
42: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
43: LD 1, 0(5)	* Load stored result into ACC1
* BEGIN: mod
44: DIV 2, 1, 0	* Divide left by right & put result in ACC2
45: MUL 2, 2, 0	* Multiply the right by the divide result & put in ACC2
46: SUB 0, 1, 2	* Subtract the multiplication result from left & put in ACC
* END: mod
* BEGIN: write(s)
47: OUT 0, 0, 0	* write out the int value in ACC0
48: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
* BEGIN: load an int constant
49: LDC 0, 9(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: push to stack
50: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
51: LDC 2, 55(0)	* Load diagnostic char into ACC2
52: JLE 3, 79(4)	* stack failure
53: ST 0, 0(5)	* save ACC0 into the current SP location
54: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
55: LDC 0, 7(0)	* Load a constant into ACC0
* END: load an int constant
56: SUB 0, 4, 0	* Subtract ACC0 from ZEROREG to negate it
57: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
58: LD 1, 0(5)	* Load stored result into ACC1
* BEGIN: mod
59: DIV 2, 1, 0	* Divide left by right & put result in ACC2
60: MUL 2, 2, 0	* Multiply the right by the divide result & put in ACC2
61: SUB 0, 1, 2	* Subtract the multiplication result from left & put in ACC
* END: mod
* BEGIN: write(s)
62: OUT 0, 0, 0	* write out the int value in ACC0
63: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
* BEGIN: load an int constant
64: LDC 0, 9(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: push to stack
65: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
66: LDC 2, 55(0)	* Load diagnostic char into ACC2
67: JLE 3, 79(4)	* stack failure
68: ST 0, 0(5)	* save ACC0 into the current SP location
69: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
70: LDC 0, 3(0)	* Load a constant into ACC0
* END: load an int constant
71: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
72: LD 1, 0(5)	* Load stored result into ACC1
* BEGIN: mod
73: DIV 2, 1, 0	* Divide left by right & put result in ACC2
74: MUL 2, 2, 0	* Multiply the right by the divide result & put in ACC2
75: SUB 0, 1, 2	* Subtract the multiplication result from left & put in ACC
* END: mod
* BEGIN: write(s)
76: OUT 0, 0, 0	* write out the int value in ACC0
77: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
78: HALT 0, 0, 0	* End of Program
* BEGIN: stack limit message handler
79: LDC 0, 25(0)	* Load the error message into ACC0
80: LDA 1, 1(0)	* Increment the address stored in ACC0 to get the string's char location (put in ACC1)
81: LD 0, 0(0)	* Load the string size into ACC0
82: JEQ 0, 5(7)	* Jump to end when run out of string
83: LDA 0, -1(0)	* subtract one from string size
84: LD 3, 0(1)	* Load next char from string into ACC3
85: LDA 1, 1(1)	* increment pointer into string
86: OUTC 3, 0, 0	* Write out character in ACC3
87: LDA 7, -6(7)	* Go back to start of loop
88: OUTC 2, 0, 0	* Write out diagnostic char in ACC2
89: OUTNL 0, 0, 0	* dump out the newline
90: HALT 0, 0, 0	* Halt for stack limit
* END: stack limit message handler
