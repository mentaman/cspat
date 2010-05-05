.DATA 23	* string length
.SDATA "Arrays bounds violation"	* string constant
.DATA 19	* string length
.SDATA "Out of stack space "	* string constant
.DATA 5	* string length
.SDATA "inner"	* string constant
.DATA 5	* string length
.SDATA "outer"	* string constant
.DATA 0	* storage location (57) for var j
.DATA 0	* storage location (58) for var $-j
.DATA 0	* storage location (59) for var i
.DATA 0	* storage location (60) for var $-i
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
5: LDA 3, -62(5)	* Subtract the stack limit from SP - store in ACC3
6: LDC 2, 52(0)	* Load diagnostic char into ACC2
7: JLE 3, 96(4)	* stack failure
8: ST 0, 0(5)	* save ACC0 into the current SP location
9: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
10: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
11: LD 0, 0(5)	* Load stored result into ACC0
12: ST 0, 59(4)	* Store ACC0 into global offset
* END: save initial value to loop var
* BEGIN: load an int constant
13: LDC 0, 1(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: save max value to max loop var
* BEGIN: push to stack
14: LDA 3, -62(5)	* Subtract the stack limit from SP - store in ACC3
15: LDC 2, 53(0)	* Load diagnostic char into ACC2
16: JLE 3, 96(4)	* stack failure
17: ST 0, 0(5)	* save ACC0 into the current SP location
18: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
19: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
20: LD 0, 0(5)	* Load stored result into ACC0
21: ST 0, 60(4)	* Store ACC0 into global offset
* END: save max value to max loop var
22: LDA 5, 0(5)	* NOOP to mark top of loop
23: LD 0, 59(4)	* Load the global var into ACC0
24: LD 1, 60(4)	* Load the global var into ACC0
25: SUB 1, 1, 0	* Subtract the loop var from the max
26: JLT 1, 94(4)	* go to the loop exit
* BEGIN: body of for loop
* BEGIN: for loop
* BEGIN: load an int constant
27: LDC 0, 0(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: save initial value to loop var
* BEGIN: push to stack
28: LDA 3, -62(5)	* Subtract the stack limit from SP - store in ACC3
29: LDC 2, 52(0)	* Load diagnostic char into ACC2
30: JLE 3, 96(4)	* stack failure
31: ST 0, 0(5)	* save ACC0 into the current SP location
32: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
33: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
34: LD 0, 0(5)	* Load stored result into ACC0
35: ST 0, 57(4)	* Store ACC0 into global offset
* END: save initial value to loop var
* BEGIN: load an int constant
36: LDC 0, 1(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: save max value to max loop var
* BEGIN: push to stack
37: LDA 3, -62(5)	* Subtract the stack limit from SP - store in ACC3
38: LDC 2, 53(0)	* Load diagnostic char into ACC2
39: JLE 3, 96(4)	* stack failure
40: ST 0, 0(5)	* save ACC0 into the current SP location
41: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
42: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
43: LD 0, 0(5)	* Load stored result into ACC0
44: ST 0, 58(4)	* Store ACC0 into global offset
* END: save max value to max loop var
45: LDA 5, 0(5)	* NOOP to mark top of loop
46: LD 0, 57(4)	* Load the global var into ACC0
47: LD 1, 58(4)	* Load the global var into ACC0
48: SUB 1, 1, 0	* Subtract the loop var from the max
49: JLT 1, 72(4)	* go to the loop exit
* BEGIN: body of for loop
* BEGIN: break
50: LDA 7, 72(4)	* skip to the end of the loop
* END: break
* BEGIN: load a string's location into ACC0
51: LDC 0, 45(0)	* Load a string's location into ACC0
* END: load a string's location into ACC0
* BEGIN: write(s)
52: LDA 1, 1(0)	* Increment the address stored in ACC0 to get the string's char location (put in ACC1)
53: LD 0, 0(0)	* Load the string size into ACC0
54: JEQ 0, 5(7)	* Jump to end when run out of string
55: LDA 0, -1(0)	* subtract one from string size
56: LD 2, 0(1)	* Load next char from string into ACC2
57: LDA 1, 1(1)	* increment pointer into string
58: OUTC 2, 0, 0	* Write out character in ACC2
59: LDA 7, -6(7)	* Go back to start of loop
60: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
* END: body of for loop
61: LD 0, 57(4)	* Load the global var into ACC0
62: LDA 0, 1(0)	* increment the loop var
* BEGIN: push to stack
63: LDA 3, -62(5)	* Subtract the stack limit from SP - store in ACC3
64: LDC 2, 54(0)	* Load diagnostic char into ACC2
65: JLE 3, 96(4)	* stack failure
66: ST 0, 0(5)	* save ACC0 into the current SP location
67: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
68: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
69: LD 0, 0(5)	* Load stored result into ACC0
70: ST 0, 57(4)	* Store ACC0 into global offset
71: LDA 7, 45(4)	* return to the top of the loop
72: LDA 5, 0(5)	* NOOP to mark end of loop
* END: for loop
* BEGIN: load a string's location into ACC0
73: LDC 0, 51(0)	* Load a string's location into ACC0
* END: load a string's location into ACC0
* BEGIN: write(s)
74: LDA 1, 1(0)	* Increment the address stored in ACC0 to get the string's char location (put in ACC1)
75: LD 0, 0(0)	* Load the string size into ACC0
76: JEQ 0, 5(7)	* Jump to end when run out of string
77: LDA 0, -1(0)	* subtract one from string size
78: LD 2, 0(1)	* Load next char from string into ACC2
79: LDA 1, 1(1)	* increment pointer into string
80: OUTC 2, 0, 0	* Write out character in ACC2
81: LDA 7, -6(7)	* Go back to start of loop
82: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
* END: body of for loop
83: LD 0, 59(4)	* Load the global var into ACC0
84: LDA 0, 1(0)	* increment the loop var
* BEGIN: push to stack
85: LDA 3, -62(5)	* Subtract the stack limit from SP - store in ACC3
86: LDC 2, 54(0)	* Load diagnostic char into ACC2
87: JLE 3, 96(4)	* stack failure
88: ST 0, 0(5)	* save ACC0 into the current SP location
89: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
90: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
91: LD 0, 0(5)	* Load stored result into ACC0
92: ST 0, 59(4)	* Store ACC0 into global offset
93: LDA 7, 22(4)	* return to the top of the loop
94: LDA 5, 0(5)	* NOOP to mark end of loop
* END: for loop
95: HALT 0, 0, 0	* End of Program
* BEGIN: stack limit message handler
96: LDC 0, 25(0)	* Load the error message into ACC0
97: LDA 1, 1(0)	* Increment the address stored in ACC0 to get the string's char location (put in ACC1)
98: LD 0, 0(0)	* Load the string size into ACC0
99: JEQ 0, 5(7)	* Jump to end when run out of string
100: LDA 0, -1(0)	* subtract one from string size
101: LD 3, 0(1)	* Load next char from string into ACC3
102: LDA 1, 1(1)	* increment pointer into string
103: OUTC 3, 0, 0	* Write out character in ACC3
104: LDA 7, -6(7)	* Go back to start of loop
105: OUTC 2, 0, 0	* Write out diagnostic char in ACC2
106: OUTNL 0, 0, 0	* dump out the newline
107: HALT 0, 0, 0	* Halt for stack limit
* END: stack limit message handler
