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
* BEGIN: load a string's location into ACC0
4: LDC 0, 45(0)	* Load a string's location into ACC0
* END: load a string's location into ACC0
5: HALT 0, 0, 0	* End of Program
