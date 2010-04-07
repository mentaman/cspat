.DATA 23	* string length
.SDATA "Arrays bounds violation"	* string constant
.DATA 19	* string length
.SDATA "Out of stack space "	* string constant
.DATA 0	* string length
.SDATA ""	* string constant
.DATA 0	* string length
.SDATA ""	* string constant
.DATA 0	* storage location (47) for var i
.DATA 0	* storage location (48) for var i
.DATA 0	* storage location (49) for var $-i
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
5: LDA 3, -51(5)	* Subtract the stack limit from SP - store in ACC3
6: LDC 2, 52(0)	* Load diagnostic char into ACC2
7: JLE 3, 128(4)	* stack failure
8: ST 0, 0(5)	* save ACC0 into the current SP location
9: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
10: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
11: LD 0, 0(5)	* Load stored result into ACC0
12: ST 0, 48(4)	* Store ACC0 into global offset
* END: save initial value to loop var
* BEGIN: load an int constant
13: LDC 0, 1(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: save max value to max loop var
* BEGIN: push to stack
14: LDA 3, -51(5)	* Subtract the stack limit from SP - store in ACC3
15: LDC 2, 53(0)	* Load diagnostic char into ACC2
16: JLE 3, 128(4)	* stack failure
17: ST 0, 0(5)	* save ACC0 into the current SP location
18: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
19: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
20: LD 0, 0(5)	* Load stored result into ACC0
21: ST 0, 49(4)	* Store ACC0 into global offset
* END: save max value to max loop var
22: LDA 5, 0(5)	* NOOP to mark top of loop
23: LD 0, 48(4)	* Load the global var into ACC0
24: LD 1, 49(4)	* Load the global var into ACC0
25: SUB 1, 1, 0	* Subtract the loop var from the max
26: JLT 1, 67(4)	* go to the loop exit
* BEGIN: body of for loop
* BEGIN: variable (rvalue) access
27: LD 0, 48(4)	* Load the global var into ACC0
* END: variable (rvalue) access
* BEGIN: write(s)
28: OUT 0, 0, 0	* write out the int value in ACC0
29: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
* BEGIN: procedure call
30: LDA 0, 23(7)	* Get return address into ACC0
31: LDA 3, -54(5)	* Subtract the stack limit from SP - store in ACC3
32: LDC 2, 97(0)	* Load diagnostic char into ACC2
33: JLE 3, 128(4)	* stack failure
34: ST 0, 0(5)	* Store return address (in ACC0) to SP/FP
* return value sits at SP-1/FP-1
35: ST 5, -2(5)	* Store SP to SP-2/FP-2
36: ST 6, -3(5)	* Store FP to SP-3/FP-3
37: LDA 5, -4(5)	* decrement SP by 4 (i.e., 4 pushes)
* BEGIN: variable (rvalue) access
38: LD 0, 48(4)	* Load the global var into ACC0
* END: variable (rvalue) access
39: LDA 3, -51(5)	* Subtract the stack limit from SP - store in ACC3
40: LDC 2, 98(0)	* Load diagnostic char into ACC2
41: JLE 3, 128(4)	* stack failure
42: ST 0, 0(5)	* Store param in slot
43: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
44: LDA 3, -51(5)	* Subtract the stack limit from SP - store in ACC3
45: LDC 2, 99(0)	* Load diagnostic char into ACC2
46: JLE 3, 128(4)	* stack failure
47: LDA 5, -1(5)	* decrement SP by local var's size (i.e., push)
48: LDA 3, -51(5)	* Subtract the stack limit from SP - store in ACC3
49: LDC 2, 99(0)	* Load diagnostic char into ACC2
50: JLE 3, 128(4)	* stack failure
51: LDA 5, -1(5)	* decrement SP by local var's size (i.e., push)
52: LDA 6, 7(5)	* Set FP to be the "pre-push of AR" SP
* SP already points to end of the AR
53: LDA 7, 69(4)	* Jump to the start of the proc
54: LD 5, -2(6)	* Restore SP from FP-2
55: LD 6, -3(6)	* Restore FP from FP-3
* END: procedure call
* END: body of for loop
56: LD 0, 48(4)	* Load the global var into ACC0
57: LDA 0, 1(0)	* increment the loop var
* BEGIN: push to stack
58: LDA 3, -51(5)	* Subtract the stack limit from SP - store in ACC3
59: LDC 2, 54(0)	* Load diagnostic char into ACC2
60: JLE 3, 128(4)	* stack failure
61: ST 0, 0(5)	* save ACC0 into the current SP location
62: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
63: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
64: LD 0, 0(5)	* Load stored result into ACC0
65: ST 0, 48(4)	* Store ACC0 into global offset
66: LDA 7, 22(4)	* return to the top of the loop
67: LDA 5, 0(5)	* NOOP to mark end of loop
* END: for loop
68: HALT 0, 0, 0	* End of Program
* BEGIN: procedure code
69: LDA 0, 0(0)	* NOOP to mark beginning of proc
* BEGIN: for loop
* BEGIN: load an int constant
70: LDC 0, 0(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: save initial value to loop var
* BEGIN: push to stack
71: LDA 3, -51(5)	* Subtract the stack limit from SP - store in ACC3
72: LDC 2, 52(0)	* Load diagnostic char into ACC2
73: JLE 3, 128(4)	* stack failure
74: ST 0, 0(5)	* save ACC0 into the current SP location
75: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
76: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
77: LD 0, 0(5)	* Load stored result into ACC0
78: ST 0, -5(6)	* Store ACC0 into local offset (relative to FP)
* END: save initial value to loop var
* BEGIN: load an int constant
79: LDC 0, 1(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: save max value to max loop var
* BEGIN: push to stack
80: LDA 3, -51(5)	* Subtract the stack limit from SP - store in ACC3
81: LDC 2, 53(0)	* Load diagnostic char into ACC2
82: JLE 3, 128(4)	* stack failure
83: ST 0, 0(5)	* save ACC0 into the current SP location
84: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
85: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
86: LD 0, 0(5)	* Load stored result into ACC0
87: ST 0, -6(6)	* Store ACC0 into local offset (relative to FP)
* END: save max value to max loop var
88: LDA 5, 0(5)	* NOOP to mark top of loop
89: LD 0, -5(6)	* Load the local var into ACC0
90: LD 1, -6(6)	* Load the local var into ACC0
91: SUB 1, 1, 0	* Subtract the loop var from the max
92: JLT 1, 115(4)	* go to the loop exit
* BEGIN: body of for loop
* BEGIN: variable (rvalue) access
93: LD 0, -5(6)	* Load the local var into ACC0
* END: variable (rvalue) access
* BEGIN: write(s)
94: OUT 0, 0, 0	* write out the int value in ACC0
* END: write(s)
* BEGIN: load a string's location into ACC0
95: LDC 0, 45(0)	* Load a string's location into ACC0
* END: load a string's location into ACC0
* BEGIN: write(s)
96: LDA 1, 1(0)	* Increment the address stored in ACC0 to get the string's char location (put in ACC1)
97: LD 0, 0(0)	* Load the string size into ACC0
98: JEQ 0, 5(7)	* Jump to end when run out of string
99: LDA 0, -1(0)	* subtract one from string size
100: LD 2, 0(1)	* Load next char from string into ACC2
101: LDA 1, 1(1)	* increment pointer into string
102: OUTC 2, 0, 0	* Write out character in ACC2
103: LDA 7, -6(7)	* Go back to start of loop
* END: write(s)
* END: body of for loop
104: LD 0, -5(6)	* Load the local var into ACC0
105: LDA 0, 1(0)	* increment the loop var
* BEGIN: push to stack
106: LDA 3, -51(5)	* Subtract the stack limit from SP - store in ACC3
107: LDC 2, 54(0)	* Load diagnostic char into ACC2
108: JLE 3, 128(4)	* stack failure
109: ST 0, 0(5)	* save ACC0 into the current SP location
110: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
111: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
112: LD 0, 0(5)	* Load stored result into ACC0
113: ST 0, -5(6)	* Store ACC0 into local offset (relative to FP)
114: LDA 7, 88(4)	* return to the top of the loop
115: LDA 5, 0(5)	* NOOP to mark end of loop
* END: for loop
* BEGIN: load a string's location into ACC0
116: LDC 0, 46(0)	* Load a string's location into ACC0
* END: load a string's location into ACC0
* BEGIN: write(s)
117: LDA 1, 1(0)	* Increment the address stored in ACC0 to get the string's char location (put in ACC1)
118: LD 0, 0(0)	* Load the string size into ACC0
119: JEQ 0, 5(7)	* Jump to end when run out of string
120: LDA 0, -1(0)	* subtract one from string size
121: LD 2, 0(1)	* Load next char from string into ACC2
122: LDA 1, 1(1)	* increment pointer into string
123: OUTC 2, 0, 0	* Write out character in ACC2
124: LDA 7, -6(7)	* Go back to start of loop
125: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
126: LD 0, 0(6)	* Load the return address from the 1st slot in the AR to ACC0
127: LDA 7, 0(0)	* Return to calling location (stored in ACC0)
* END: procedure code
* BEGIN: stack limit message handler
128: LDC 0, 25(0)	* Load the error message into ACC0
129: LDA 1, 1(0)	* Increment the address stored in ACC0 to get the string's char location (put in ACC1)
130: LD 0, 0(0)	* Load the string size into ACC0
131: JEQ 0, 5(7)	* Jump to end when run out of string
132: LDA 0, -1(0)	* subtract one from string size
133: LD 3, 0(1)	* Load next char from string into ACC3
134: LDA 1, 1(1)	* increment pointer into string
135: OUTC 3, 0, 0	* Write out character in ACC3
136: LDA 7, -6(7)	* Go back to start of loop
137: OUTC 2, 0, 0	* Write out diagnostic char in ACC2
138: OUTNL 0, 0, 0	* dump out the newline
139: HALT 0, 0, 0	* Halt for stack limit
* END: stack limit message handler
