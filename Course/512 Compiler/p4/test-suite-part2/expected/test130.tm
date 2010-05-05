.DATA 23	* string length
.SDATA "Arrays bounds violation"	* string constant
.DATA 19	* string length
.SDATA "Out of stack space "	* string constant
.DATA 0	* storage location (45) for var i
.DATA 0	* storage location (46) for var $-i
* BEGIN preamble
0: LDC 4, 0(0)	* initialize ZEROREG to 0
1: LD 5, 0(4)	* initialize SP to end of memory
2: LDA 5, -1(5)	* subtract one to get the true SP
3: LDA 6, 0(5)	* FP and SP start off the same
* END preamble
* BEGIN: for loop
* BEGIN: load an int constant
4: LDC 0, 0(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: save initial value to loop var
* BEGIN: push to stack
5: LDA 3, -48(5)	* Subtract the stack limit from SP - store in ACC3
6: LDC 2, 52(0)	* Load diagnostic char into ACC2
7: JLE 3, 62(4)	* stack failure
8: ST 0, 0(5)	* save ACC0 into the current SP location
9: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
10: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
11: LD 0, 0(5)	* Load stored result into ACC0
12: ST 0, 45(4)	* Store ACC0 into global offset
* END: save initial value to loop var
* BEGIN: load an int constant
13: LDC 0, 10(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: save max value to max loop var
* BEGIN: push to stack
14: LDA 3, -48(5)	* Subtract the stack limit from SP - store in ACC3
15: LDC 2, 53(0)	* Load diagnostic char into ACC2
16: JLE 3, 62(4)	* stack failure
17: ST 0, 0(5)	* save ACC0 into the current SP location
18: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
19: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
20: LD 0, 0(5)	* Load stored result into ACC0
21: ST 0, 46(4)	* Store ACC0 into global offset
* END: save max value to max loop var
22: LDA 5, 0(5)	* NOOP to mark top of loop
23: LD 0, 45(4)	* Load the global var into ACC0
24: LD 1, 46(4)	* Load the global var into ACC0
25: SUB 1, 1, 0	* Subtract the loop var from the max
26: JLT 1, 57(4)	* go to the loop exit
* BEGIN: body of for loop
* BEGIN: variable (rvalue) access
27: LD 0, 45(4)	* Load the global var into ACC0
* END: variable (rvalue) access
* BEGIN: push to stack
28: LDA 3, -48(5)	* Subtract the stack limit from SP - store in ACC3
29: LDC 2, 51(0)	* Load diagnostic char into ACC2
30: JLE 3, 62(4)	* stack failure
31: ST 0, 0(5)	* save ACC0 into the current SP location
32: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
33: LDC 0, 3(0)	* Load a constant into ACC0
* END: load an int constant
34: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
35: LD 1, 0(5)	* Load stored result into ACC1
36: SUB 0, 1, 0	* for =, subtract right from left
37: JEQ 0, 2(7)	* Jump to Load 1 if ACC0 == 0
38: LDC 0, 0(0)	* Load 0 into ACC0
39: LDA 7, 1(7)	* Jump over Load 1
40: LDC 0, 1(0)	* Load 1 into ACC0
41: JEQ 0, 1(7)	* Jump over the then stmts if false
* BEGIN: return
42: HALT 0, 0, 0	* a return outside of a proc is just an exit
* END: return
* BEGIN: variable (rvalue) access
43: LD 0, 45(4)	* Load the global var into ACC0
* END: variable (rvalue) access
* BEGIN: write(s)
44: OUT 0, 0, 0	* write out the int value in ACC0
45: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
* END: body of for loop
46: LD 0, 45(4)	* Load the global var into ACC0
47: LDA 0, 1(0)	* increment the loop var
* BEGIN: push to stack
48: LDA 3, -48(5)	* Subtract the stack limit from SP - store in ACC3
49: LDC 2, 54(0)	* Load diagnostic char into ACC2
50: JLE 3, 62(4)	* stack failure
51: ST 0, 0(5)	* save ACC0 into the current SP location
52: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
53: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
54: LD 0, 0(5)	* Load stored result into ACC0
55: ST 0, 45(4)	* Store ACC0 into global offset
56: LDA 7, 22(4)	* return to the top of the loop
57: LDA 5, 0(5)	* NOOP to mark end of loop
* END: for loop
* BEGIN: load an int constant
58: LDC 0, 11(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: write(s)
59: OUT 0, 0, 0	* write out the int value in ACC0
60: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
61: HALT 0, 0, 0	* End of Program
* BEGIN: stack limit message handler
62: LDC 0, 25(0)	* Load the error message into ACC0
63: LDA 1, 1(0)	* Increment the address stored in ACC0 to get the string's char location (put in ACC1)
64: LD 0, 0(0)	* Load the string size into ACC0
65: JEQ 0, 5(7)	* Jump to end when run out of string
66: LDA 0, -1(0)	* subtract one from string size
67: LD 3, 0(1)	* Load next char from string into ACC3
68: LDA 1, 1(1)	* increment pointer into string
69: OUTC 3, 0, 0	* Write out character in ACC3
70: LDA 7, -6(7)	* Go back to start of loop
71: OUTC 2, 0, 0	* Write out diagnostic char in ACC2
72: OUTNL 0, 0, 0	* dump out the newline
73: HALT 0, 0, 0	* Halt for stack limit
* END: stack limit message handler
