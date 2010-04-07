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
7: JLE 3, 126(4)	* stack failure
8: ST 0, 0(5)	* save ACC0 into the current SP location
9: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
10: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
11: LD 0, 0(5)	* Load stored result into ACC0
12: ST 0, 45(4)	* Store ACC0 into global offset
* END: save initial value to loop var
* BEGIN: load an int constant
13: LDC 0, 5(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: save max value to max loop var
* BEGIN: push to stack
14: LDA 3, -48(5)	* Subtract the stack limit from SP - store in ACC3
15: LDC 2, 53(0)	* Load diagnostic char into ACC2
16: JLE 3, 126(4)	* stack failure
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
26: JLT 1, 121(4)	* go to the loop exit
* BEGIN: body of for loop
* BEGIN: variable (rvalue) access
27: LD 0, 45(4)	* Load the global var into ACC0
* END: variable (rvalue) access
* BEGIN: push to stack
28: LDA 3, -48(5)	* Subtract the stack limit from SP - store in ACC3
29: LDC 2, 51(0)	* Load diagnostic char into ACC2
30: JLE 3, 126(4)	* stack failure
31: ST 0, 0(5)	* save ACC0 into the current SP location
32: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
33: LDC 0, 0(0)	* Load a constant into ACC0
* END: load an int constant
34: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
35: LD 1, 0(5)	* Load stored result into ACC1
36: SUB 0, 1, 0	* for =, subtract right from left
37: JEQ 0, 2(7)	* Jump to Load 1 if ACC0 == 0
38: LDC 0, 0(0)	* Load 0 into ACC0
39: LDA 7, 1(7)	* Jump over Load 1
40: LDC 0, 1(0)	* Load 1 into ACC0
41: JEQ 0, 4(7)	* Jump over the then stmts if false
* BEGIN: load an int constant
42: LDC 0, 0(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: write(s)
43: OUT 0, 0, 0	* write out the int value in ACC0
44: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
45: LDA 7, 64(7)	* Jump over the rest of the if
* BEGIN: variable (rvalue) access
46: LD 0, 45(4)	* Load the global var into ACC0
* END: variable (rvalue) access
* BEGIN: push to stack
47: LDA 3, -48(5)	* Subtract the stack limit from SP - store in ACC3
48: LDC 2, 51(0)	* Load diagnostic char into ACC2
49: JLE 3, 126(4)	* stack failure
50: ST 0, 0(5)	* save ACC0 into the current SP location
51: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
52: LDC 0, 1(0)	* Load a constant into ACC0
* END: load an int constant
53: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
54: LD 1, 0(5)	* Load stored result into ACC1
55: SUB 0, 1, 0	* for =, subtract right from left
56: JEQ 0, 2(7)	* Jump to Load 1 if ACC0 == 0
57: LDC 0, 0(0)	* Load 0 into ACC0
58: LDA 7, 1(7)	* Jump over Load 1
59: LDC 0, 1(0)	* Load 1 into ACC0
60: JEQ 0, 4(7)	* Jump over the then stmts if false
* BEGIN: load an int constant
61: LDC 0, 1(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: write(s)
62: OUT 0, 0, 0	* write out the int value in ACC0
63: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
64: LDA 7, 45(7)	* Jump over the rest of the if
* BEGIN: variable (rvalue) access
65: LD 0, 45(4)	* Load the global var into ACC0
* END: variable (rvalue) access
* BEGIN: push to stack
66: LDA 3, -48(5)	* Subtract the stack limit from SP - store in ACC3
67: LDC 2, 51(0)	* Load diagnostic char into ACC2
68: JLE 3, 126(4)	* stack failure
69: ST 0, 0(5)	* save ACC0 into the current SP location
70: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
71: LDC 0, 2(0)	* Load a constant into ACC0
* END: load an int constant
72: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
73: LD 1, 0(5)	* Load stored result into ACC1
74: SUB 0, 1, 0	* for =, subtract right from left
75: JEQ 0, 2(7)	* Jump to Load 1 if ACC0 == 0
76: LDC 0, 0(0)	* Load 0 into ACC0
77: LDA 7, 1(7)	* Jump over Load 1
78: LDC 0, 1(0)	* Load 1 into ACC0
79: JEQ 0, 8(7)	* Jump over the then stmts if false
* BEGIN: load an int constant
80: LDC 0, 2(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: write(s)
81: OUT 0, 0, 0	* write out the int value in ACC0
82: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
* BEGIN: break
83: LDA 7, 121(4)	* skip to the end of the loop
* END: break
* BEGIN: load an int constant
84: LDC 0, 3(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: write(s)
85: OUT 0, 0, 0	* write out the int value in ACC0
86: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
87: LDA 7, 22(7)	* Jump over the rest of the if
* BEGIN: variable (rvalue) access
88: LD 0, 45(4)	* Load the global var into ACC0
* END: variable (rvalue) access
* BEGIN: push to stack
89: LDA 3, -48(5)	* Subtract the stack limit from SP - store in ACC3
90: LDC 2, 51(0)	* Load diagnostic char into ACC2
91: JLE 3, 126(4)	* stack failure
92: ST 0, 0(5)	* save ACC0 into the current SP location
93: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
94: LDC 0, 3(0)	* Load a constant into ACC0
* END: load an int constant
95: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
96: LD 1, 0(5)	* Load stored result into ACC1
97: SUB 0, 1, 0	* for =, subtract right from left
98: JEQ 0, 2(7)	* Jump to Load 1 if ACC0 == 0
99: LDC 0, 0(0)	* Load 0 into ACC0
100: LDA 7, 1(7)	* Jump over Load 1
101: LDC 0, 1(0)	* Load 1 into ACC0
102: JEQ 0, 4(7)	* Jump over the then stmts if false
* BEGIN: load an int constant
103: LDC 0, 4(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: write(s)
104: OUT 0, 0, 0	* write out the int value in ACC0
105: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
106: LDA 7, 3(7)	* Jump over the rest of the if
* BEGIN: load an int constant
107: LDC 0, 5(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: write(s)
108: OUT 0, 0, 0	* write out the int value in ACC0
109: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
* END: body of for loop
110: LD 0, 45(4)	* Load the global var into ACC0
111: LDA 0, 1(0)	* increment the loop var
* BEGIN: push to stack
112: LDA 3, -48(5)	* Subtract the stack limit from SP - store in ACC3
113: LDC 2, 54(0)	* Load diagnostic char into ACC2
114: JLE 3, 126(4)	* stack failure
115: ST 0, 0(5)	* save ACC0 into the current SP location
116: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
117: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
118: LD 0, 0(5)	* Load stored result into ACC0
119: ST 0, 45(4)	* Store ACC0 into global offset
120: LDA 7, 22(4)	* return to the top of the loop
121: LDA 5, 0(5)	* NOOP to mark end of loop
* END: for loop
* BEGIN: load an int constant
122: LDC 0, 6(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: write(s)
123: OUT 0, 0, 0	* write out the int value in ACC0
124: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
125: HALT 0, 0, 0	* End of Program
* BEGIN: stack limit message handler
126: LDC 0, 25(0)	* Load the error message into ACC0
127: LDA 1, 1(0)	* Increment the address stored in ACC0 to get the string's char location (put in ACC1)
128: LD 0, 0(0)	* Load the string size into ACC0
129: JEQ 0, 5(7)	* Jump to end when run out of string
130: LDA 0, -1(0)	* subtract one from string size
131: LD 3, 0(1)	* Load next char from string into ACC3
132: LDA 1, 1(1)	* increment pointer into string
133: OUTC 3, 0, 0	* Write out character in ACC3
134: LDA 7, -6(7)	* Go back to start of loop
135: OUTC 2, 0, 0	* Write out diagnostic char in ACC2
136: OUTNL 0, 0, 0	* dump out the newline
137: HALT 0, 0, 0	* Halt for stack limit
* END: stack limit message handler
