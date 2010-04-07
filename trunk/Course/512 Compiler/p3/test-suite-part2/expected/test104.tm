.DATA 23	* string length
.SDATA "Arrays bounds violation"	* string constant
.DATA 19	* string length
.SDATA "Out of stack space "	* string constant
.DATA 14	* string length
.SDATA "should not see"	* string constant
.DATA 11	* string length
.SDATA "after break"	* string constant
.DATA 0	* storage location (72) for var i
* BEGIN preamble
0: LDC 4, 0(0)	* initialize ZEROREG to 0
1: LD 5, 0(4)	* initialize SP to end of memory
2: LDA 5, -1(5)	* subtract one to get the true SP
3: LDA 6, 0(5)	* FP and SP start off the same
* END preamble
* BEGIN: load an int constant
4: LDC 0, 0(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: push to stack
5: LDA 3, -74(5)	* Subtract the stack limit from SP - store in ACC3
6: LDC 2, 50(0)	* Load diagnostic char into ACC2
7: JLE 3, 75(4)	* stack failure
8: ST 0, 0(5)	* save ACC0 into the current SP location
9: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: assignment
10: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
11: LD 0, 0(5)	* Load stored result into ACC0
12: ST 0, 72(4)	* Store ACC0 into global offset
* END: assignment
* BEGIN: Do loop
* BEGIN: load a bool value into ACC0
13: LDC 0, 1(0)	* Load a boolean value into ACC0
* END: load a bool value into ACC0
14: JEQ 0, 48(7)	* Jump to the end of the loop if done
* BEGIN: variable (rvalue) access
15: LD 0, 72(4)	* Load the global var into ACC0
* END: variable (rvalue) access
* BEGIN: write(s)
16: OUT 0, 0, 0	* write out the int value in ACC0
17: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
* BEGIN: variable (rvalue) access
18: LD 0, 72(4)	* Load the global var into ACC0
* END: variable (rvalue) access
* BEGIN: push to stack
19: LDA 3, -74(5)	* Subtract the stack limit from SP - store in ACC3
20: LDC 2, 51(0)	* Load diagnostic char into ACC2
21: JLE 3, 75(4)	* stack failure
22: ST 0, 0(5)	* save ACC0 into the current SP location
23: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
24: LDC 0, 3(0)	* Load a constant into ACC0
* END: load an int constant
25: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
26: LD 1, 0(5)	* Load stored result into ACC1
* BEGIN: >=
27: SUB 0, 1, 0	* for >=, subtract right from left
28: JGE 0, 2(7)	* Jump to Load 1 if ACC0 >= 0
29: LDC 0, 0(0)	* Load 0 into ACC0
30: LDA 7, 1(7)	* Jump over Load 1
31: LDC 0, 1(0)	* Load 1 into ACC0
* END: >=
32: JEQ 0, 11(7)	* Jump over the then stmts if false
* BEGIN: break
33: LDA 7, 63(4)	* skip to the end of the loop
* END: break
* BEGIN: load a string's location into ACC0
34: LDC 0, 45(0)	* Load a string's location into ACC0
* END: load a string's location into ACC0
* BEGIN: write(s)
35: LDA 1, 1(0)	* Increment the address stored in ACC0 to get the string's char location (put in ACC1)
36: LD 0, 0(0)	* Load the string size into ACC0
37: JEQ 0, 5(7)	* Jump to end when run out of string
38: LDA 0, -1(0)	* subtract one from string size
39: LD 2, 0(1)	* Load next char from string into ACC2
40: LDA 1, 1(1)	* increment pointer into string
41: OUTC 2, 0, 0	* Write out character in ACC2
42: LDA 7, -6(7)	* Go back to start of loop
43: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
* BEGIN: variable (rvalue) access
44: LD 0, 72(4)	* Load the global var into ACC0
* END: variable (rvalue) access
* BEGIN: push to stack
45: LDA 3, -74(5)	* Subtract the stack limit from SP - store in ACC3
46: LDC 2, 55(0)	* Load diagnostic char into ACC2
47: JLE 3, 75(4)	* stack failure
48: ST 0, 0(5)	* save ACC0 into the current SP location
49: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
50: LDC 0, 1(0)	* Load a constant into ACC0
* END: load an int constant
51: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
52: LD 1, 0(5)	* Load stored result into ACC1
53: ADD 0, 0, 1	* Add ACC0 & ACC1 placing result in ACC0
* BEGIN: push to stack
54: LDA 3, -74(5)	* Subtract the stack limit from SP - store in ACC3
55: LDC 2, 50(0)	* Load diagnostic char into ACC2
56: JLE 3, 75(4)	* stack failure
57: ST 0, 0(5)	* save ACC0 into the current SP location
58: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: assignment
59: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
60: LD 0, 0(5)	* Load stored result into ACC0
61: ST 0, 72(4)	* Store ACC0 into global offset
* END: assignment
62: LDA 7, -50(7)	* Jump back to start of loop
63: LDA 5, 0(5)	* NOOP to mark end of loop
* END: Do loop
* BEGIN: load a string's location into ACC0
64: LDC 0, 60(0)	* Load a string's location into ACC0
* END: load a string's location into ACC0
* BEGIN: write(s)
65: LDA 1, 1(0)	* Increment the address stored in ACC0 to get the string's char location (put in ACC1)
66: LD 0, 0(0)	* Load the string size into ACC0
67: JEQ 0, 5(7)	* Jump to end when run out of string
68: LDA 0, -1(0)	* subtract one from string size
69: LD 2, 0(1)	* Load next char from string into ACC2
70: LDA 1, 1(1)	* increment pointer into string
71: OUTC 2, 0, 0	* Write out character in ACC2
72: LDA 7, -6(7)	* Go back to start of loop
73: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
74: HALT 0, 0, 0	* End of Program
* BEGIN: stack limit message handler
75: LDC 0, 25(0)	* Load the error message into ACC0
76: LDA 1, 1(0)	* Increment the address stored in ACC0 to get the string's char location (put in ACC1)
77: LD 0, 0(0)	* Load the string size into ACC0
78: JEQ 0, 5(7)	* Jump to end when run out of string
79: LDA 0, -1(0)	* subtract one from string size
80: LD 3, 0(1)	* Load next char from string into ACC3
81: LDA 1, 1(1)	* increment pointer into string
82: OUTC 3, 0, 0	* Write out character in ACC3
83: LDA 7, -6(7)	* Go back to start of loop
84: OUTC 2, 0, 0	* Write out diagnostic char in ACC2
85: OUTNL 0, 0, 0	* dump out the newline
86: HALT 0, 0, 0	* Halt for stack limit
* END: stack limit message handler
