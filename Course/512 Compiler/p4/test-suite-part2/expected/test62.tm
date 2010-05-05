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
4: LDA 0, 19(7)	* Get return address into ACC0
5: LDA 3, -49(5)	* Subtract the stack limit from SP - store in ACC3
6: LDC 2, 97(0)	* Load diagnostic char into ACC2
7: JLE 3, 112(4)	* stack failure
8: ST 0, 0(5)	* Store return address (in ACC0) to SP/FP
* return value sits at SP-1/FP-1
9: ST 5, -2(5)	* Store SP to SP-2/FP-2
10: ST 6, -3(5)	* Store FP to SP-3/FP-3
11: LDA 5, -4(5)	* decrement SP by 4 (i.e., 4 pushes)
* BEGIN: load an int constant
12: LDC 0, 2(0)	* Load a constant into ACC0
* END: load an int constant
13: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
14: LDC 2, 98(0)	* Load diagnostic char into ACC2
15: JLE 3, 112(4)	* stack failure
16: ST 0, 0(5)	* Store param in slot
17: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
18: LDA 3, -50(5)	* Subtract the stack limit from SP - store in ACC3
19: LDC 2, 99(0)	* Load diagnostic char into ACC2
20: JLE 3, 112(4)	* stack failure
21: LDA 5, -5(5)	* decrement SP by local var's size (i.e., push)
22: LDA 6, 10(5)	* Set FP to be the "pre-push of AR" SP
* SP already points to end of the AR
23: LDA 7, 49(4)	* Jump to the start of the proc
24: LD 5, -2(6)	* Restore SP from FP-2
25: LD 6, -3(6)	* Restore FP from FP-3
* END: procedure call
* BEGIN: procedure call
26: LDA 0, 19(7)	* Get return address into ACC0
27: LDA 3, -49(5)	* Subtract the stack limit from SP - store in ACC3
28: LDC 2, 97(0)	* Load diagnostic char into ACC2
29: JLE 3, 112(4)	* stack failure
30: ST 0, 0(5)	* Store return address (in ACC0) to SP/FP
* return value sits at SP-1/FP-1
31: ST 5, -2(5)	* Store SP to SP-2/FP-2
32: ST 6, -3(5)	* Store FP to SP-3/FP-3
33: LDA 5, -4(5)	* decrement SP by 4 (i.e., 4 pushes)
* BEGIN: load an int constant
34: LDC 0, 1(0)	* Load a constant into ACC0
* END: load an int constant
35: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
36: LDC 2, 98(0)	* Load diagnostic char into ACC2
37: JLE 3, 112(4)	* stack failure
38: ST 0, 0(5)	* Store param in slot
39: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
40: LDA 3, -50(5)	* Subtract the stack limit from SP - store in ACC3
41: LDC 2, 99(0)	* Load diagnostic char into ACC2
42: JLE 3, 112(4)	* stack failure
43: LDA 5, -5(5)	* decrement SP by local var's size (i.e., push)
44: LDA 6, 10(5)	* Set FP to be the "pre-push of AR" SP
* SP already points to end of the AR
45: LDA 7, 49(4)	* Jump to the start of the proc
46: LD 5, -2(6)	* Restore SP from FP-2
47: LD 6, -3(6)	* Restore FP from FP-3
* END: procedure call
48: HALT 0, 0, 0	* End of Program
* BEGIN: procedure code
49: LDA 0, 0(0)	* NOOP to mark beginning of proc
* BEGIN: load an int constant
50: LDC 0, 3(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: push to stack
51: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
52: LDC 2, 50(0)	* Load diagnostic char into ACC2
53: JLE 3, 112(4)	* stack failure
54: ST 0, 0(5)	* save ACC0 into the current SP location
55: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: assignment
56: LDC 0, -9(0)	* Load the base address into ACC0
* BEGIN: push to stack
57: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
58: LDC 2, 56(0)	* Load diagnostic char into ACC2
59: JLE 3, 112(4)	* stack failure
60: ST 0, 0(5)	* save ACC0 into the current SP location
61: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: variable (rvalue) access
62: LD 0, -4(6)	* Load the local var into ACC0
* END: variable (rvalue) access
63: JLT 0, 101(4)	* array bounds too small
64: LDC 3, 5(0)	* Load the array bounds limit into ACC3
65: SUB 3, 0, 3	* Subtract the max from the current index
66: JGE 3, 101(4)	* array bounds too big
67: LDC 1, 1(0)	* Load the skip size into ACC1
68: MUL 1, 1, 0	* Multiply the index by the skip size and place the result back into ACC1
69: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
70: LD 0, 0(5)	* Load stored result into ACC0
71: ADD 0, 1, 0	* add the base (ACC0) and the skip size (ACC1) and put the result back in ACC0
72: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
73: LD 1, 0(5)	* Load stored result into ACC1
74: ADD 0, 0, 6	* Add FP to the relative offset
75: ST 1, 0(0)	* Store ACC0 into local offset (relative to FP)
* END: assignment
* BEGIN: variable (rvalue) access
76: LDC 0, -9(0)	* Load the base address into ACC0
* BEGIN: push to stack
77: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
78: LDC 2, 56(0)	* Load diagnostic char into ACC2
79: JLE 3, 112(4)	* stack failure
80: ST 0, 0(5)	* save ACC0 into the current SP location
81: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: variable (rvalue) access
82: LD 0, -4(6)	* Load the local var into ACC0
* END: variable (rvalue) access
83: JLT 0, 101(4)	* array bounds too small
84: LDC 3, 5(0)	* Load the array bounds limit into ACC3
85: SUB 3, 0, 3	* Subtract the max from the current index
86: JGE 3, 101(4)	* array bounds too big
87: LDC 1, 1(0)	* Load the skip size into ACC1
88: MUL 1, 1, 0	* Multiply the index by the skip size and place the result back into ACC1
89: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
90: LD 0, 0(5)	* Load stored result into ACC0
91: ADD 0, 1, 0	* add the base (ACC0) and the skip size (ACC1) and put the result back in ACC0
92: ADD 0, 0, 6	* Add the array offset to FP for a local access
93: LD 0, 0(0)	* Load the final dereferenced local var into the specified register
* END: variable (rvalue) access
* BEGIN: write(s)
94: OUT 0, 0, 0	* write out the int value in ACC0
95: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
* BEGIN: variable (rvalue) access
96: LD 0, -4(6)	* Load the local var into ACC0
* END: variable (rvalue) access
* BEGIN: write(s)
97: OUT 0, 0, 0	* write out the int value in ACC0
98: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
99: LD 0, 0(6)	* Load the return address from the 1st slot in the AR to ACC0
100: LDA 7, 0(0)	* Return to calling location (stored in ACC0)
* END: procedure code
* BEGIN: array bounds message handler
101: LDC 0, 1(0)	* Load the error message into ACC0
102: LDA 1, 1(0)	* Increment the address stored in ACC0 to get the string's char location (put in ACC1)
103: LD 0, 0(0)	* Load the string size into ACC0
104: JEQ 0, 5(7)	* Jump to end when run out of string
105: LDA 0, -1(0)	* subtract one from string size
106: LD 2, 0(1)	* Load next char from string into ACC2
107: LDA 1, 1(1)	* increment pointer into string
108: OUTC 2, 0, 0	* Write out character in ACC2
109: LDA 7, -6(7)	* Go back to start of loop
110: OUTNL 0, 0, 0	* dump out the newline
111: HALT 0, 0, 0	* Halt for array bounds
* END: array bounds message handler
* BEGIN: stack limit message handler
112: LDC 0, 25(0)	* Load the error message into ACC0
113: LDA 1, 1(0)	* Increment the address stored in ACC0 to get the string's char location (put in ACC1)
114: LD 0, 0(0)	* Load the string size into ACC0
115: JEQ 0, 5(7)	* Jump to end when run out of string
116: LDA 0, -1(0)	* subtract one from string size
117: LD 3, 0(1)	* Load next char from string into ACC3
118: LDA 1, 1(1)	* increment pointer into string
119: OUTC 3, 0, 0	* Write out character in ACC3
120: LDA 7, -6(7)	* Go back to start of loop
121: OUTC 2, 0, 0	* Write out diagnostic char in ACC2
122: OUTNL 0, 0, 0	* dump out the newline
123: HALT 0, 0, 0	* Halt for stack limit
* END: stack limit message handler
