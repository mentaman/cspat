.DATA 23	* string length
.SDATA "Arrays bounds violation"	* string constant
.DATA 19	* string length
.SDATA "Out of stack space "	* string constant
.DATA 5	* string length
.SDATA "first"	* string constant
.DATA 6	* string length
.SDATA "second"	* string constant
.DATA 5	* string length
.SDATA "third"	* string constant
* BEGIN preamble
0: LDC 4, 0(0)	* initialize ZEROREG to 0
1: LD 5, 0(4)	* initialize SP to end of memory
2: LDA 5, -1(5)	* subtract one to get the true SP
3: LDA 6, 0(5)	* FP and SP start off the same
* END preamble
* BEGIN: load a bool value into ACC0
4: LDC 0, 0(0)	* Load a boolean value into ACC0
* END: load a bool value into ACC0
5: JEQ 0, 11(7)	* Jump over the then stmts if false
* BEGIN: load a string's location into ACC0
6: LDC 0, 45(0)	* Load a string's location into ACC0
* END: load a string's location into ACC0
* BEGIN: write(s)
7: LDA 1, 1(0)	* Increment the address stored in ACC0 to get the string's char location (put in ACC1)
8: LD 0, 0(0)	* Load the string size into ACC0
9: JEQ 0, 5(7)	* Jump to end when run out of string
10: LDA 0, -1(0)	* subtract one from string size
11: LD 2, 0(1)	* Load next char from string into ACC2
12: LDA 1, 1(1)	* increment pointer into string
13: OUTC 2, 0, 0	* Write out character in ACC2
14: LDA 7, -6(7)	* Go back to start of loop
15: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
16: LDA 7, 12(7)	* Jump over the rest of the if
* BEGIN: load a bool value into ACC0
17: LDC 0, 1(0)	* Load a boolean value into ACC0
* END: load a bool value into ACC0
18: JEQ 0, 10(7)	* Jump over the then stmts if false
* BEGIN: load a string's location into ACC0
19: LDC 0, 51(0)	* Load a string's location into ACC0
* END: load a string's location into ACC0
* BEGIN: write(s)
20: LDA 1, 1(0)	* Increment the address stored in ACC0 to get the string's char location (put in ACC1)
21: LD 0, 0(0)	* Load the string size into ACC0
22: JEQ 0, 5(7)	* Jump to end when run out of string
23: LDA 0, -1(0)	* subtract one from string size
24: LD 2, 0(1)	* Load next char from string into ACC2
25: LDA 1, 1(1)	* increment pointer into string
26: OUTC 2, 0, 0	* Write out character in ACC2
27: LDA 7, -6(7)	* Go back to start of loop
28: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
* BEGIN: load a string's location into ACC0
29: LDC 0, 58(0)	* Load a string's location into ACC0
* END: load a string's location into ACC0
* BEGIN: write(s)
30: LDA 1, 1(0)	* Increment the address stored in ACC0 to get the string's char location (put in ACC1)
31: LD 0, 0(0)	* Load the string size into ACC0
32: JEQ 0, 5(7)	* Jump to end when run out of string
33: LDA 0, -1(0)	* subtract one from string size
34: LD 2, 0(1)	* Load next char from string into ACC2
35: LDA 1, 1(1)	* increment pointer into string
36: OUTC 2, 0, 0	* Write out character in ACC2
37: LDA 7, -6(7)	* Go back to start of loop
38: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
39: HALT 0, 0, 0	* End of Program
