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
5: JEQ 0, 2(7)	* Jump to Load 1 if ACC0 == 0
6: LDC 0, 0(0)	* Load 0 into ACC0
7: LDA 7, 1(7)	* Jump over Load 1
8: LDC 0, 1(0)	* Load 1 into ACC0
9: JEQ 0, 4(7)	* Jump over the then stmts if false
* BEGIN: load an int constant
10: LDC 0, 1(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: write(s)
11: OUT 0, 0, 0	* write out the int value in ACC0
12: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
13: LDA 7, 9(7)	* Jump over the rest of the if
* BEGIN: load a bool value into ACC0
14: LDC 0, 0(0)	* Load a boolean value into ACC0
* END: load a bool value into ACC0
15: JEQ 0, 2(7)	* Jump to Load 1 if ACC0 == 0
16: LDC 0, 0(0)	* Load 0 into ACC0
17: LDA 7, 1(7)	* Jump over Load 1
18: LDC 0, 1(0)	* Load 1 into ACC0
19: JEQ 0, 3(7)	* Jump over the then stmts if false
* BEGIN: load an int constant
20: LDC 0, 2(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: write(s)
21: OUT 0, 0, 0	* write out the int value in ACC0
22: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
* BEGIN: load an int constant
23: LDC 0, 3(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: write(s)
24: OUT 0, 0, 0	* write out the int value in ACC0
25: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
* BEGIN: load a bool value into ACC0
26: LDC 0, 0(0)	* Load a boolean value into ACC0
* END: load a bool value into ACC0
27: JEQ 0, 2(7)	* Jump to Load 1 if ACC0 == 0
28: LDC 0, 0(0)	* Load 0 into ACC0
29: LDA 7, 1(7)	* Jump over Load 1
30: LDC 0, 1(0)	* Load 1 into ACC0
31: JEQ 0, 4(7)	* Jump over the then stmts if false
* BEGIN: load an int constant
32: LDC 0, 1(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: write(s)
33: OUT 0, 0, 0	* write out the int value in ACC0
34: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
35: LDA 7, 9(7)	* Jump over the rest of the if
* BEGIN: load a bool value into ACC0
36: LDC 0, 1(0)	* Load a boolean value into ACC0
* END: load a bool value into ACC0
37: JEQ 0, 2(7)	* Jump to Load 1 if ACC0 == 0
38: LDC 0, 0(0)	* Load 0 into ACC0
39: LDA 7, 1(7)	* Jump over Load 1
40: LDC 0, 1(0)	* Load 1 into ACC0
41: JEQ 0, 3(7)	* Jump over the then stmts if false
* BEGIN: load an int constant
42: LDC 0, 2(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: write(s)
43: OUT 0, 0, 0	* write out the int value in ACC0
44: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
* BEGIN: load an int constant
45: LDC 0, 3(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: write(s)
46: OUT 0, 0, 0	* write out the int value in ACC0
47: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
48: HALT 0, 0, 0	* End of Program
