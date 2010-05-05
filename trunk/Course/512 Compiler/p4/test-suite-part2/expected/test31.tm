.DATA 23	* string length
.SDATA "Arrays bounds violation"	* string constant
.DATA 19	* string length
.SDATA "Out of stack space "	* string constant
.DATA 3	* string length
.SDATA "Hi "	* string constant
.DATA 5	* string length
.SDATA "There"	* string constant
* BEGIN preamble
0: LDC 4, 0(0)	* initialize ZEROREG to 0
1: LD 5, 0(4)	* initialize SP to end of memory
2: LDA 5, -1(5)	* subtract one to get the true SP
3: LDA 6, 0(5)	* FP and SP start off the same
* END preamble
* BEGIN: load a string's location into ACC0
4: LDC 0, 45(0)	* Load a string's location into ACC0
* END: load a string's location into ACC0
* BEGIN: write(s)
5: LDA 1, 1(0)	* Increment the address stored in ACC0 to get the string's char location (put in ACC1)
6: LD 0, 0(0)	* Load the string size into ACC0
7: JEQ 0, 5(7)	* Jump to end when run out of string
8: LDA 0, -1(0)	* subtract one from string size
9: LD 2, 0(1)	* Load next char from string into ACC2
10: LDA 1, 1(1)	* increment pointer into string
11: OUTC 2, 0, 0	* Write out character in ACC2
12: LDA 7, -6(7)	* Go back to start of loop
* END: write(s)
* BEGIN: load a string's location into ACC0
13: LDC 0, 49(0)	* Load a string's location into ACC0
* END: load a string's location into ACC0
* BEGIN: write(s)
14: LDA 1, 1(0)	* Increment the address stored in ACC0 to get the string's char location (put in ACC1)
15: LD 0, 0(0)	* Load the string size into ACC0
16: JEQ 0, 5(7)	* Jump to end when run out of string
17: LDA 0, -1(0)	* subtract one from string size
18: LD 2, 0(1)	* Load next char from string into ACC2
19: LDA 1, 1(1)	* increment pointer into string
20: OUTC 2, 0, 0	* Write out character in ACC2
21: LDA 7, -6(7)	* Go back to start of loop
22: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
23: HALT 0, 0, 0	* End of Program
