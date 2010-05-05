.DATA 23	* string length
.SDATA "Arrays bounds violation"	* string constant
.DATA 19	* string length
.SDATA "Out of stack space "	* string constant
.DATA 0	* string length
.SDATA ""	* string constant
.DATA 8	* string length
.SDATA "Hi there"	* string constant
* BEGIN preamble
0: LDC 4, 0(0)	* initialize ZEROREG to 0
1: LD 5, 0(4)	* initialize SP to end of memory
2: LDA 5, -1(5)	* subtract one to get the true SP
3: LDA 6, 0(5)	* FP and SP start off the same
* END preamble
* BEGIN: load an int constant
4: LDC 0, 5(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: push to stack
5: LDA 3, -56(5)	* Subtract the stack limit from SP - store in ACC3
6: LDC 2, 55(0)	* Load diagnostic char into ACC2
7: JLE 3, 46(4)	* stack failure
8: ST 0, 0(5)	* save ACC0 into the current SP location
9: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
10: LDC 0, 6(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: push to stack
11: LDA 3, -56(5)	* Subtract the stack limit from SP - store in ACC3
12: LDC 2, 55(0)	* Load diagnostic char into ACC2
13: JLE 3, 46(4)	* stack failure
14: ST 0, 0(5)	* save ACC0 into the current SP location
15: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
16: LDC 0, 3(0)	* Load a constant into ACC0
* END: load an int constant
17: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
18: LD 1, 0(5)	* Load stored result into ACC1
19: DIV 0, 1, 0	* Divide ACC1 by ACC0 placing result in ACC0
20: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
21: LD 1, 0(5)	* Load stored result into ACC1
22: ADD 0, 0, 1	* Add ACC0 & ACC1 placing result in ACC0
* BEGIN: write(s)
23: OUT 0, 0, 0	* write out the int value in ACC0
24: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
* BEGIN: load a string's location into ACC0
25: LDC 0, 45(0)	* Load a string's location into ACC0
* END: load a string's location into ACC0
* BEGIN: write(s)
26: LDA 1, 1(0)	* Increment the address stored in ACC0 to get the string's char location (put in ACC1)
27: LD 0, 0(0)	* Load the string size into ACC0
28: JEQ 0, 5(7)	* Jump to end when run out of string
29: LDA 0, -1(0)	* subtract one from string size
30: LD 2, 0(1)	* Load next char from string into ACC2
31: LDA 1, 1(1)	* increment pointer into string
32: OUTC 2, 0, 0	* Write out character in ACC2
33: LDA 7, -6(7)	* Go back to start of loop
34: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
* BEGIN: load a string's location into ACC0
35: LDC 0, 46(0)	* Load a string's location into ACC0
* END: load a string's location into ACC0
* BEGIN: write(s)
36: LDA 1, 1(0)	* Increment the address stored in ACC0 to get the string's char location (put in ACC1)
37: LD 0, 0(0)	* Load the string size into ACC0
38: JEQ 0, 5(7)	* Jump to end when run out of string
39: LDA 0, -1(0)	* subtract one from string size
40: LD 2, 0(1)	* Load next char from string into ACC2
41: LDA 1, 1(1)	* increment pointer into string
42: OUTC 2, 0, 0	* Write out character in ACC2
43: LDA 7, -6(7)	* Go back to start of loop
44: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
45: HALT 0, 0, 0	* End of Program
* BEGIN: stack limit message handler
46: LDC 0, 25(0)	* Load the error message into ACC0
47: LDA 1, 1(0)	* Increment the address stored in ACC0 to get the string's char location (put in ACC1)
48: LD 0, 0(0)	* Load the string size into ACC0
49: JEQ 0, 5(7)	* Jump to end when run out of string
50: LDA 0, -1(0)	* subtract one from string size
51: LD 3, 0(1)	* Load next char from string into ACC3
52: LDA 1, 1(1)	* increment pointer into string
53: OUTC 3, 0, 0	* Write out character in ACC3
54: LDA 7, -6(7)	* Go back to start of loop
55: OUTC 2, 0, 0	* Write out diagnostic char in ACC2
56: OUTNL 0, 0, 0	* dump out the newline
57: HALT 0, 0, 0	* Halt for stack limit
* END: stack limit message handler
