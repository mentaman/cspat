.DATA 23	* string length
.SDATA "Arrays bounds violation"	* string constant
.DATA 19	* string length
.SDATA "Out of stack space "	* string constant
.DATA 0	* storage location (45) for var pi
.DATA 0	* storage location (45) for var pi
.DATA 0	* storage location (45) for var pi
.DATA 0	* storage location (45) for var pi
.DATA 0	* storage location (45) for var pi
.DATA 0	* storage location (50) for var i
.DATA 0	* storage location (51) for var $-i
.DATA 0	* storage location (52) for var i
.DATA 0	* storage location (53) for var $-i
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
5: LDA 3, -55(5)	* Subtract the stack limit from SP - store in ACC3
6: LDC 2, 52(0)	* Load diagnostic char into ACC2
7: JLE 3, 133(4)	* stack failure
8: ST 0, 0(5)	* save ACC0 into the current SP location
9: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
10: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
11: LD 0, 0(5)	* Load stored result into ACC0
12: ST 0, 50(4)	* Store ACC0 into global offset
* END: save initial value to loop var
* BEGIN: load an int constant
13: LDC 0, 4(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: save max value to max loop var
* BEGIN: push to stack
14: LDA 3, -55(5)	* Subtract the stack limit from SP - store in ACC3
15: LDC 2, 53(0)	* Load diagnostic char into ACC2
16: JLE 3, 133(4)	* stack failure
17: ST 0, 0(5)	* save ACC0 into the current SP location
18: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
19: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
20: LD 0, 0(5)	* Load stored result into ACC0
21: ST 0, 51(4)	* Store ACC0 into global offset
* END: save max value to max loop var
22: LDA 5, 0(5)	* NOOP to mark top of loop
23: LD 0, 50(4)	* Load the global var into ACC0
24: LD 1, 51(4)	* Load the global var into ACC0
25: SUB 1, 1, 0	* Subtract the loop var from the max
26: JLT 1, 63(4)	* go to the loop exit
* BEGIN: body of for loop
* BEGIN: variable (rvalue) access
27: LD 0, 50(4)	* Load the global var into ACC0
* END: variable (rvalue) access
* BEGIN: push to stack
28: LDA 3, -55(5)	* Subtract the stack limit from SP - store in ACC3
29: LDC 2, 50(0)	* Load diagnostic char into ACC2
30: JLE 3, 133(4)	* stack failure
31: ST 0, 0(5)	* save ACC0 into the current SP location
32: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: assignment
33: LDC 0, 45(0)	* Load the base address into ACC0
* BEGIN: push to stack
34: LDA 3, -55(5)	* Subtract the stack limit from SP - store in ACC3
35: LDC 2, 56(0)	* Load diagnostic char into ACC2
36: JLE 3, 133(4)	* stack failure
37: ST 0, 0(5)	* save ACC0 into the current SP location
38: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: variable (rvalue) access
39: LD 0, 50(4)	* Load the global var into ACC0
* END: variable (rvalue) access
40: JLT 0, 122(4)	* array bounds too small
41: LDC 3, 5(0)	* Load the array bounds limit into ACC3
42: SUB 3, 0, 3	* Subtract the max from the current index
43: JGE 3, 122(4)	* array bounds too big
44: LDC 1, 1(0)	* Load the skip size into ACC1
45: MUL 1, 1, 0	* Multiply the index by the skip size and place the result back into ACC1
46: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
47: LD 0, 0(5)	* Load stored result into ACC0
48: ADD 0, 1, 0	* add the base (ACC0) and the skip size (ACC1) and put the result back in ACC0
49: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
50: LD 1, 0(5)	* Load stored result into ACC1
51: ST 1, 0(0)	* Store ACC0 into global offset
* END: assignment
* END: body of for loop
52: LD 0, 50(4)	* Load the global var into ACC0
53: LDA 0, 1(0)	* increment the loop var
* BEGIN: push to stack
54: LDA 3, -55(5)	* Subtract the stack limit from SP - store in ACC3
55: LDC 2, 54(0)	* Load diagnostic char into ACC2
56: JLE 3, 133(4)	* stack failure
57: ST 0, 0(5)	* save ACC0 into the current SP location
58: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
59: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
60: LD 0, 0(5)	* Load stored result into ACC0
61: ST 0, 50(4)	* Store ACC0 into global offset
62: LDA 7, 22(4)	* return to the top of the loop
63: LDA 5, 0(5)	* NOOP to mark end of loop
* END: for loop
* BEGIN: for loop
* BEGIN: load an int constant
64: LDC 0, 0(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: save initial value to loop var
* BEGIN: push to stack
65: LDA 3, -55(5)	* Subtract the stack limit from SP - store in ACC3
66: LDC 2, 52(0)	* Load diagnostic char into ACC2
67: JLE 3, 133(4)	* stack failure
68: ST 0, 0(5)	* save ACC0 into the current SP location
69: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
70: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
71: LD 0, 0(5)	* Load stored result into ACC0
72: ST 0, 52(4)	* Store ACC0 into global offset
* END: save initial value to loop var
* BEGIN: load an int constant
73: LDC 0, 4(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: save max value to max loop var
* BEGIN: push to stack
74: LDA 3, -55(5)	* Subtract the stack limit from SP - store in ACC3
75: LDC 2, 53(0)	* Load diagnostic char into ACC2
76: JLE 3, 133(4)	* stack failure
77: ST 0, 0(5)	* save ACC0 into the current SP location
78: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
79: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
80: LD 0, 0(5)	* Load stored result into ACC0
81: ST 0, 53(4)	* Store ACC0 into global offset
* END: save max value to max loop var
82: LDA 5, 0(5)	* NOOP to mark top of loop
83: LD 0, 52(4)	* Load the global var into ACC0
84: LD 1, 53(4)	* Load the global var into ACC0
85: SUB 1, 1, 0	* Subtract the loop var from the max
86: JLT 1, 117(4)	* go to the loop exit
* BEGIN: body of for loop
* BEGIN: variable (rvalue) access
87: LDC 0, 45(0)	* Load the base address into ACC0
* BEGIN: push to stack
88: LDA 3, -55(5)	* Subtract the stack limit from SP - store in ACC3
89: LDC 2, 56(0)	* Load diagnostic char into ACC2
90: JLE 3, 133(4)	* stack failure
91: ST 0, 0(5)	* save ACC0 into the current SP location
92: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: variable (rvalue) access
93: LD 0, 52(4)	* Load the global var into ACC0
* END: variable (rvalue) access
94: JLT 0, 122(4)	* array bounds too small
95: LDC 3, 5(0)	* Load the array bounds limit into ACC3
96: SUB 3, 0, 3	* Subtract the max from the current index
97: JGE 3, 122(4)	* array bounds too big
98: LDC 1, 1(0)	* Load the skip size into ACC1
99: MUL 1, 1, 0	* Multiply the index by the skip size and place the result back into ACC1
100: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
101: LD 0, 0(5)	* Load stored result into ACC0
102: ADD 0, 1, 0	* add the base (ACC0) and the skip size (ACC1) and put the result back in ACC0
103: LD 0, 0(0)	* Load the final dereferenced value into the specified register
* END: variable (rvalue) access
* BEGIN: write(s)
104: OUT 0, 0, 0	* write out the int value in ACC0
105: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
* END: body of for loop
106: LD 0, 52(4)	* Load the global var into ACC0
107: LDA 0, 1(0)	* increment the loop var
* BEGIN: push to stack
108: LDA 3, -55(5)	* Subtract the stack limit from SP - store in ACC3
109: LDC 2, 54(0)	* Load diagnostic char into ACC2
110: JLE 3, 133(4)	* stack failure
111: ST 0, 0(5)	* save ACC0 into the current SP location
112: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
113: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
114: LD 0, 0(5)	* Load stored result into ACC0
115: ST 0, 52(4)	* Store ACC0 into global offset
116: LDA 7, 82(4)	* return to the top of the loop
117: LDA 5, 0(5)	* NOOP to mark end of loop
* END: for loop
* BEGIN: load an int constant
118: LDC 0, 5(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: write(s)
119: OUT 0, 0, 0	* write out the int value in ACC0
120: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
121: HALT 0, 0, 0	* End of Program
* BEGIN: array bounds message handler
122: LDC 0, 1(0)	* Load the error message into ACC0
123: LDA 1, 1(0)	* Increment the address stored in ACC0 to get the string's char location (put in ACC1)
124: LD 0, 0(0)	* Load the string size into ACC0
125: JEQ 0, 5(7)	* Jump to end when run out of string
126: LDA 0, -1(0)	* subtract one from string size
127: LD 2, 0(1)	* Load next char from string into ACC2
128: LDA 1, 1(1)	* increment pointer into string
129: OUTC 2, 0, 0	* Write out character in ACC2
130: LDA 7, -6(7)	* Go back to start of loop
131: OUTNL 0, 0, 0	* dump out the newline
132: HALT 0, 0, 0	* Halt for array bounds
* END: array bounds message handler
* BEGIN: stack limit message handler
133: LDC 0, 25(0)	* Load the error message into ACC0
134: LDA 1, 1(0)	* Increment the address stored in ACC0 to get the string's char location (put in ACC1)
135: LD 0, 0(0)	* Load the string size into ACC0
136: JEQ 0, 5(7)	* Jump to end when run out of string
137: LDA 0, -1(0)	* subtract one from string size
138: LD 3, 0(1)	* Load next char from string into ACC3
139: LDA 1, 1(1)	* increment pointer into string
140: OUTC 3, 0, 0	* Write out character in ACC3
141: LDA 7, -6(7)	* Go back to start of loop
142: OUTC 2, 0, 0	* Write out diagnostic char in ACC2
143: OUTNL 0, 0, 0	* dump out the newline
144: HALT 0, 0, 0	* Halt for stack limit
* END: stack limit message handler
