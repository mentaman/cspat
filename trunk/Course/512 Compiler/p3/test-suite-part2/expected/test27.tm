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
* BEGIN: load a bool value into ACC0
4: LDC 0, 1(0)	* Load a boolean value into ACC0
* END: load a bool value into ACC0
5: JEQ 0, 3(7)	* Jump over the then stmts if false
* BEGIN: load an int constant
6: LDC 0, 1(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: write(s)
7: OUT 0, 0, 0	* write out the int value in ACC0
8: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
9: HALT 0, 0, 0	* End of Program
