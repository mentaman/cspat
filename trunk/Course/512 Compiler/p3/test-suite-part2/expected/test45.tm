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
* BEGIN: procedure call
4: LDA 0, 29(7)	* Get return address into ACC0
5: LDA 3, -49(5)	* Subtract the stack limit from SP - store in ACC3
6: LDC 2, 97(0)	* Load diagnostic char into ACC2
7: JLE 3, 130(4)	* stack failure
8: ST 0, 0(5)	* Store return address (in ACC0) to SP/FP
* return value sits at SP-1/FP-1
9: ST 5, -2(5)	* Store SP to SP-2/FP-2
10: ST 6, -3(5)	* Store FP to SP-3/FP-3
11: LDA 5, -4(5)	* decrement SP by 4 (i.e., 4 pushes)
12: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
13: LDC 2, 99(0)	* Load diagnostic char into ACC2
14: JLE 3, 130(4)	* stack failure
15: LDA 5, -1(5)	* decrement SP by local var's size (i.e., push)
* BEGIN: load an int constant
16: LDC 0, 1(0)	* Load a constant into ACC0
* END: load an int constant
17: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
18: LDC 2, 98(0)	* Load diagnostic char into ACC2
19: JLE 3, 130(4)	* stack failure
20: ST 0, 0(5)	* Store param in slot
21: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* BEGIN: load an int constant
22: LDC 0, 2(0)	* Load a constant into ACC0
* END: load an int constant
23: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
24: LDC 2, 98(0)	* Load diagnostic char into ACC2
25: JLE 3, 130(4)	* stack failure
26: ST 0, 0(5)	* Store param in slot
27: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
28: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
29: LDC 2, 99(0)	* Load diagnostic char into ACC2
30: JLE 3, 130(4)	* stack failure
31: LDA 5, -1(5)	* decrement SP by local var's size (i.e., push)
32: LDA 6, 8(5)	* Set FP to be the "pre-push of AR" SP
* SP already points to end of the AR
33: LDA 7, 75(4)	* Jump to the start of the proc
34: LD 0, -4(6)	* Load the return value into ACC0
35: LD 5, -2(6)	* Restore SP from FP-2
36: LD 6, -3(6)	* Restore FP from FP-3
* END: procedure call
* BEGIN: write(s)
37: OUT 0, 0, 0	* write out the int value in ACC0
38: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
* BEGIN: procedure call
39: LDA 0, 29(7)	* Get return address into ACC0
40: LDA 3, -49(5)	* Subtract the stack limit from SP - store in ACC3
41: LDC 2, 97(0)	* Load diagnostic char into ACC2
42: JLE 3, 130(4)	* stack failure
43: ST 0, 0(5)	* Store return address (in ACC0) to SP/FP
* return value sits at SP-1/FP-1
44: ST 5, -2(5)	* Store SP to SP-2/FP-2
45: ST 6, -3(5)	* Store FP to SP-3/FP-3
46: LDA 5, -4(5)	* decrement SP by 4 (i.e., 4 pushes)
47: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
48: LDC 2, 99(0)	* Load diagnostic char into ACC2
49: JLE 3, 130(4)	* stack failure
50: LDA 5, -1(5)	* decrement SP by local var's size (i.e., push)
* BEGIN: load an int constant
51: LDC 0, 3(0)	* Load a constant into ACC0
* END: load an int constant
52: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
53: LDC 2, 98(0)	* Load diagnostic char into ACC2
54: JLE 3, 130(4)	* stack failure
55: ST 0, 0(5)	* Store param in slot
56: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* BEGIN: load an int constant
57: LDC 0, 3(0)	* Load a constant into ACC0
* END: load an int constant
58: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
59: LDC 2, 98(0)	* Load diagnostic char into ACC2
60: JLE 3, 130(4)	* stack failure
61: ST 0, 0(5)	* Store param in slot
62: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
63: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
64: LDC 2, 99(0)	* Load diagnostic char into ACC2
65: JLE 3, 130(4)	* stack failure
66: LDA 5, -1(5)	* decrement SP by local var's size (i.e., push)
67: LDA 6, 8(5)	* Set FP to be the "pre-push of AR" SP
* SP already points to end of the AR
68: LDA 7, 75(4)	* Jump to the start of the proc
69: LD 0, -4(6)	* Load the return value into ACC0
70: LD 5, -2(6)	* Restore SP from FP-2
71: LD 6, -3(6)	* Restore FP from FP-3
* END: procedure call
* BEGIN: write(s)
72: OUT 0, 0, 0	* write out the int value in ACC0
73: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
74: HALT 0, 0, 0	* End of Program
* BEGIN: procedure code
75: LDA 0, 0(0)	* NOOP to mark beginning of proc
* BEGIN: variable (rvalue) access
76: LD 0, -5(6)	* Load the local var into ACC0
* END: variable (rvalue) access
* BEGIN: push to stack
77: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
78: LDC 2, 55(0)	* Load diagnostic char into ACC2
79: JLE 3, 130(4)	* stack failure
80: ST 0, 0(5)	* save ACC0 into the current SP location
81: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: variable (rvalue) access
82: LD 0, -6(6)	* Load the local var into ACC0
* END: variable (rvalue) access
83: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
84: LD 1, 0(5)	* Load stored result into ACC1
85: ADD 0, 0, 1	* Add ACC0 & ACC1 placing result in ACC0
* BEGIN: push to stack
86: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
87: LDC 2, 50(0)	* Load diagnostic char into ACC2
88: JLE 3, 130(4)	* stack failure
89: ST 0, 0(5)	* save ACC0 into the current SP location
90: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: assignment
91: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
92: LD 0, 0(5)	* Load stored result into ACC0
93: ST 0, -7(6)	* Store ACC0 into local offset (relative to FP)
* END: assignment
* BEGIN: variable (rvalue) access
94: LD 0, -7(6)	* Load the local var into ACC0
* END: variable (rvalue) access
* BEGIN: push to stack
95: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
96: LDC 2, 51(0)	* Load diagnostic char into ACC2
97: JLE 3, 130(4)	* stack failure
98: ST 0, 0(5)	* save ACC0 into the current SP location
99: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
100: LDC 0, 6(0)	* Load a constant into ACC0
* END: load an int constant
101: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
102: LD 1, 0(5)	* Load stored result into ACC1
* BEGIN: <
103: SUB 0, 1, 0	* for <, subtract right from left
104: JLT 0, 2(7)	* Jump to Load 1 if ACC0 < 0
105: LDC 0, 0(0)	* Load 0 into ACC0
106: LDA 7, 1(7)	* Jump over Load 1
107: LDC 0, 1(0)	* Load 1 into ACC0
* END: <
108: JEQ 0, 10(7)	* Jump over the then stmts if false
* BEGIN: load a bool value into ACC0
109: LDC 0, 1(0)	* Load a boolean value into ACC0
* END: load a bool value into ACC0
* BEGIN: push to stack
110: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
111: LDC 2, 50(0)	* Load diagnostic char into ACC2
112: JLE 3, 130(4)	* stack failure
113: ST 0, 0(5)	* save ACC0 into the current SP location
114: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: assignment
115: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
116: LD 0, 0(5)	* Load stored result into ACC0
117: ST 0, -4(6)	* Store ACC0 into local offset (relative to FP)
* END: assignment
118: LDA 7, 9(7)	* Jump over the rest of the if
* BEGIN: load a bool value into ACC0
119: LDC 0, 0(0)	* Load a boolean value into ACC0
* END: load a bool value into ACC0
* BEGIN: push to stack
120: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
121: LDC 2, 50(0)	* Load diagnostic char into ACC2
122: JLE 3, 130(4)	* stack failure
123: ST 0, 0(5)	* save ACC0 into the current SP location
124: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: assignment
125: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
126: LD 0, 0(5)	* Load stored result into ACC0
127: ST 0, -4(6)	* Store ACC0 into local offset (relative to FP)
* END: assignment
128: LD 0, 0(6)	* Load the return address from the 1st slot in the AR to ACC0
129: LDA 7, 0(0)	* Return to calling location (stored in ACC0)
* END: procedure code
* BEGIN: stack limit message handler
130: LDC 0, 25(0)	* Load the error message into ACC0
131: LDA 1, 1(0)	* Increment the address stored in ACC0 to get the string's char location (put in ACC1)
132: LD 0, 0(0)	* Load the string size into ACC0
133: JEQ 0, 5(7)	* Jump to end when run out of string
134: LDA 0, -1(0)	* subtract one from string size
135: LD 3, 0(1)	* Load next char from string into ACC3
136: LDA 1, 1(1)	* increment pointer into string
137: OUTC 3, 0, 0	* Write out character in ACC3
138: LDA 7, -6(7)	* Go back to start of loop
139: OUTC 2, 0, 0	* Write out diagnostic char in ACC2
140: OUTNL 0, 0, 0	* dump out the newline
141: HALT 0, 0, 0	* Halt for stack limit
* END: stack limit message handler
