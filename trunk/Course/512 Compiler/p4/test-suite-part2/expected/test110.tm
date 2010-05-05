.DATA 23	* string length
.SDATA "Arrays bounds violation"	* string constant
.DATA 19	* string length
.SDATA "Out of stack space "	* string constant
.DATA 1	* string length
.SDATA " "	* string constant
.DATA 14	* string length
.SDATA "should not see"	* string constant
.DATA 11	* string length
.SDATA "after break"	* string constant
.DATA 0	* storage location (74) for var j
.DATA 0	* storage location (75) for var $-j
.DATA 0	* storage location (76) for var i
.DATA 0	* storage location (77) for var $-i
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
5: LDA 3, -79(5)	* Subtract the stack limit from SP - store in ACC3
6: LDC 2, 52(0)	* Load diagnostic char into ACC2
7: JLE 3, 110(4)	* stack failure
8: ST 0, 0(5)	* save ACC0 into the current SP location
9: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
10: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
11: LD 0, 0(5)	* Load stored result into ACC0
12: ST 0, 76(4)	* Store ACC0 into global offset
* END: save initial value to loop var
* BEGIN: load an int constant
13: LDC 0, 1(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: save max value to max loop var
* BEGIN: push to stack
14: LDA 3, -79(5)	* Subtract the stack limit from SP - store in ACC3
15: LDC 2, 53(0)	* Load diagnostic char into ACC2
16: JLE 3, 110(4)	* stack failure
17: ST 0, 0(5)	* save ACC0 into the current SP location
18: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
19: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
20: LD 0, 0(5)	* Load stored result into ACC0
21: ST 0, 77(4)	* Store ACC0 into global offset
* END: save max value to max loop var
22: LDA 5, 0(5)	* NOOP to mark top of loop
23: LD 0, 76(4)	* Load the global var into ACC0
24: LD 1, 77(4)	* Load the global var into ACC0
25: SUB 1, 1, 0	* Subtract the loop var from the max
26: JLT 1, 98(4)	* go to the loop exit
* BEGIN: body of for loop
* BEGIN: for loop
* BEGIN: load an int constant
27: LDC 0, 0(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: save initial value to loop var
* BEGIN: push to stack
28: LDA 3, -79(5)	* Subtract the stack limit from SP - store in ACC3
29: LDC 2, 52(0)	* Load diagnostic char into ACC2
30: JLE 3, 110(4)	* stack failure
31: ST 0, 0(5)	* save ACC0 into the current SP location
32: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
33: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
34: LD 0, 0(5)	* Load stored result into ACC0
35: ST 0, 74(4)	* Store ACC0 into global offset
* END: save initial value to loop var
* BEGIN: load an int constant
36: LDC 0, 1(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: save max value to max loop var
* BEGIN: push to stack
37: LDA 3, -79(5)	* Subtract the stack limit from SP - store in ACC3
38: LDC 2, 53(0)	* Load diagnostic char into ACC2
39: JLE 3, 110(4)	* stack failure
40: ST 0, 0(5)	* save ACC0 into the current SP location
41: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
42: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
43: LD 0, 0(5)	* Load stored result into ACC0
44: ST 0, 75(4)	* Store ACC0 into global offset
* END: save max value to max loop var
45: LDA 5, 0(5)	* NOOP to mark top of loop
46: LD 0, 74(4)	* Load the global var into ACC0
47: LD 1, 75(4)	* Load the global var into ACC0
48: SUB 1, 1, 0	* Subtract the loop var from the max
49: JLT 1, 75(4)	* go to the loop exit
* BEGIN: body of for loop
* BEGIN: variable (rvalue) access
50: LD 0, 76(4)	* Load the global var into ACC0
* END: variable (rvalue) access
* BEGIN: write(s)
51: OUT 0, 0, 0	* write out the int value in ACC0
* END: write(s)
* BEGIN: load a string's location into ACC0
52: LDC 0, 45(0)	* Load a string's location into ACC0
* END: load a string's location into ACC0
* BEGIN: write(s)
53: LDA 1, 1(0)	* Increment the address stored in ACC0 to get the string's char location (put in ACC1)
54: LD 0, 0(0)	* Load the string size into ACC0
55: JEQ 0, 5(7)	* Jump to end when run out of string
56: LDA 0, -1(0)	* subtract one from string size
57: LD 2, 0(1)	* Load next char from string into ACC2
58: LDA 1, 1(1)	* increment pointer into string
59: OUTC 2, 0, 0	* Write out character in ACC2
60: LDA 7, -6(7)	* Go back to start of loop
* END: write(s)
* BEGIN: variable (rvalue) access
61: LD 0, 74(4)	* Load the global var into ACC0
* END: variable (rvalue) access
* BEGIN: write(s)
62: OUT 0, 0, 0	* write out the int value in ACC0
63: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
* END: body of for loop
64: LD 0, 74(4)	* Load the global var into ACC0
65: LDA 0, 1(0)	* increment the loop var
* BEGIN: push to stack
66: LDA 3, -79(5)	* Subtract the stack limit from SP - store in ACC3
67: LDC 2, 54(0)	* Load diagnostic char into ACC2
68: JLE 3, 110(4)	* stack failure
69: ST 0, 0(5)	* save ACC0 into the current SP location
70: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
71: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
72: LD 0, 0(5)	* Load stored result into ACC0
73: ST 0, 74(4)	* Store ACC0 into global offset
74: LDA 7, 45(4)	* return to the top of the loop
75: LDA 5, 0(5)	* NOOP to mark end of loop
* END: for loop
* BEGIN: break
76: LDA 7, 98(4)	* skip to the end of the loop
* END: break
* BEGIN: load a string's location into ACC0
77: LDC 0, 47(0)	* Load a string's location into ACC0
* END: load a string's location into ACC0
* BEGIN: write(s)
78: LDA 1, 1(0)	* Increment the address stored in ACC0 to get the string's char location (put in ACC1)
79: LD 0, 0(0)	* Load the string size into ACC0
80: JEQ 0, 5(7)	* Jump to end when run out of string
81: LDA 0, -1(0)	* subtract one from string size
82: LD 2, 0(1)	* Load next char from string into ACC2
83: LDA 1, 1(1)	* increment pointer into string
84: OUTC 2, 0, 0	* Write out character in ACC2
85: LDA 7, -6(7)	* Go back to start of loop
86: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
* END: body of for loop
87: LD 0, 76(4)	* Load the global var into ACC0
88: LDA 0, 1(0)	* increment the loop var
* BEGIN: push to stack
89: LDA 3, -79(5)	* Subtract the stack limit from SP - store in ACC3
90: LDC 2, 54(0)	* Load diagnostic char into ACC2
91: JLE 3, 110(4)	* stack failure
92: ST 0, 0(5)	* save ACC0 into the current SP location
93: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
94: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
95: LD 0, 0(5)	* Load stored result into ACC0
96: ST 0, 76(4)	* Store ACC0 into global offset
97: LDA 7, 22(4)	* return to the top of the loop
98: LDA 5, 0(5)	* NOOP to mark end of loop
* END: for loop
* BEGIN: load a string's location into ACC0
99: LDC 0, 62(0)	* Load a string's location into ACC0
* END: load a string's location into ACC0
* BEGIN: write(s)
100: LDA 1, 1(0)	* Increment the address stored in ACC0 to get the string's char location (put in ACC1)
101: LD 0, 0(0)	* Load the string size into ACC0
102: JEQ 0, 5(7)	* Jump to end when run out of string
103: LDA 0, -1(0)	* subtract one from string size
104: LD 2, 0(1)	* Load next char from string into ACC2
105: LDA 1, 1(1)	* increment pointer into string
106: OUTC 2, 0, 0	* Write out character in ACC2
107: LDA 7, -6(7)	* Go back to start of loop
108: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
109: HALT 0, 0, 0	* End of Program
* BEGIN: stack limit message handler
110: LDC 0, 25(0)	* Load the error message into ACC0
111: LDA 1, 1(0)	* Increment the address stored in ACC0 to get the string's char location (put in ACC1)
112: LD 0, 0(0)	* Load the string size into ACC0
113: JEQ 0, 5(7)	* Jump to end when run out of string
114: LDA 0, -1(0)	* subtract one from string size
115: LD 3, 0(1)	* Load next char from string into ACC3
116: LDA 1, 1(1)	* increment pointer into string
117: OUTC 3, 0, 0	* Write out character in ACC3
118: LDA 7, -6(7)	* Go back to start of loop
119: OUTC 2, 0, 0	* Write out diagnostic char in ACC2
120: OUTNL 0, 0, 0	* dump out the newline
121: HALT 0, 0, 0	* Halt for stack limit
* END: stack limit message handler
