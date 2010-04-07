.DATA 23	* string length
.SDATA "Arrays bounds violation"	* string constant
.DATA 19	* string length
.SDATA "Out of stack space "	* string constant
.DATA 0	* storage location (45) for var baz
.DATA 0	* storage location (45) for var baz
.DATA 0	* storage location (45) for var baz
.DATA 0	* storage location (45) for var baz
.DATA 0	* storage location (45) for var baz
.DATA 0	* storage location (45) for var baz
.DATA 0	* storage location (45) for var baz
.DATA 0	* storage location (45) for var baz
* BEGIN preamble
0: LDC 4, 0(0)	* initialize ZEROREG to 0
1: LD 5, 0(4)	* initialize SP to end of memory
2: LDA 5, -1(5)	* subtract one to get the true SP
3: LDA 6, 0(5)	* FP and SP start off the same
* END preamble
* BEGIN: load an int constant
4: LDC 0, 4(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: push to stack
5: LDA 3, -54(5)	* Subtract the stack limit from SP - store in ACC3
6: LDC 2, 50(0)	* Load diagnostic char into ACC2
7: JLE 3, 141(4)	* stack failure
8: ST 0, 0(5)	* save ACC0 into the current SP location
9: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: assignment
10: LDC 0, 45(0)	* Load the base address into ACC0
* BEGIN: push to stack
11: LDA 3, -54(5)	* Subtract the stack limit from SP - store in ACC3
12: LDC 2, 56(0)	* Load diagnostic char into ACC2
13: JLE 3, 141(4)	* stack failure
14: ST 0, 0(5)	* save ACC0 into the current SP location
15: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
16: LDC 0, 1(0)	* Load a constant into ACC0
* END: load an int constant
17: JLT 0, 130(4)	* array bounds too small
18: LDC 3, 2(0)	* Load the array bounds limit into ACC3
19: SUB 3, 0, 3	* Subtract the max from the current index
20: JGE 3, 130(4)	* array bounds too big
21: LDC 1, 4(0)	* Load the skip size into ACC1
22: MUL 1, 1, 0	* Multiply the index by the skip size and place the result back into ACC1
23: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
24: LD 0, 0(5)	* Load stored result into ACC0
25: ADD 0, 1, 0	* add the base (ACC0) and the skip size (ACC1) and put the result back in ACC0
* BEGIN: push to stack
26: LDA 3, -54(5)	* Subtract the stack limit from SP - store in ACC3
27: LDC 2, 56(0)	* Load diagnostic char into ACC2
28: JLE 3, 141(4)	* stack failure
29: ST 0, 0(5)	* save ACC0 into the current SP location
30: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
31: LDC 0, 1(0)	* Load a constant into ACC0
* END: load an int constant
32: JLT 0, 130(4)	* array bounds too small
33: LDC 3, 2(0)	* Load the array bounds limit into ACC3
34: SUB 3, 0, 3	* Subtract the max from the current index
35: JGE 3, 130(4)	* array bounds too big
36: LDC 1, 2(0)	* Load the skip size into ACC1
37: MUL 1, 1, 0	* Multiply the index by the skip size and place the result back into ACC1
38: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
39: LD 0, 0(5)	* Load stored result into ACC0
40: ADD 0, 1, 0	* add the base (ACC0) and the skip size (ACC1) and put the result back in ACC0
* BEGIN: push to stack
41: LDA 3, -54(5)	* Subtract the stack limit from SP - store in ACC3
42: LDC 2, 56(0)	* Load diagnostic char into ACC2
43: JLE 3, 141(4)	* stack failure
44: ST 0, 0(5)	* save ACC0 into the current SP location
45: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
46: LDC 0, 1(0)	* Load a constant into ACC0
* END: load an int constant
47: JLT 0, 130(4)	* array bounds too small
48: LDC 3, 2(0)	* Load the array bounds limit into ACC3
49: SUB 3, 0, 3	* Subtract the max from the current index
50: JGE 3, 130(4)	* array bounds too big
51: LDC 1, 1(0)	* Load the skip size into ACC1
52: MUL 1, 1, 0	* Multiply the index by the skip size and place the result back into ACC1
53: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
54: LD 0, 0(5)	* Load stored result into ACC0
55: ADD 0, 1, 0	* add the base (ACC0) and the skip size (ACC1) and put the result back in ACC0
56: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
57: LD 1, 0(5)	* Load stored result into ACC1
58: ST 1, 0(0)	* Store ACC0 into global offset
* END: assignment
* BEGIN: procedure call
59: LDA 0, 15(7)	* Get return address into ACC0
60: LDA 3, -57(5)	* Subtract the stack limit from SP - store in ACC3
61: LDC 2, 97(0)	* Load diagnostic char into ACC2
62: JLE 3, 141(4)	* stack failure
63: ST 0, 0(5)	* Store return address (in ACC0) to SP/FP
* return value sits at SP-1/FP-1
64: ST 5, -2(5)	* Store SP to SP-2/FP-2
65: ST 6, -3(5)	* Store FP to SP-3/FP-3
66: LDA 5, -4(5)	* decrement SP by 4 (i.e., 4 pushes)
* BEGIN: variable (rvalue) access
67: LDC 0, 45(0)	* Load the base address into ACC0
* END: variable (rvalue) access
68: LDA 3, -54(5)	* Subtract the stack limit from SP - store in ACC3
69: LDC 2, 98(0)	* Load diagnostic char into ACC2
70: JLE 3, 141(4)	* stack failure
71: ST 0, 0(5)	* Store param in slot
72: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
73: LDA 6, 5(5)	* Set FP to be the "pre-push of AR" SP
* SP already points to end of the AR
74: LDA 7, 78(4)	* Jump to the start of the proc
75: LD 5, -2(6)	* Restore SP from FP-2
76: LD 6, -3(6)	* Restore FP from FP-3
* END: procedure call
77: HALT 0, 0, 0	* End of Program
* BEGIN: procedure code
78: LDA 0, 0(0)	* NOOP to mark beginning of proc
* BEGIN: variable (rvalue) access
79: LD 0, -4(6)	* Load the base address out of the AR
* BEGIN: push to stack
80: LDA 3, -54(5)	* Subtract the stack limit from SP - store in ACC3
81: LDC 2, 56(0)	* Load diagnostic char into ACC2
82: JLE 3, 141(4)	* stack failure
83: ST 0, 0(5)	* save ACC0 into the current SP location
84: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
85: LDC 0, 1(0)	* Load a constant into ACC0
* END: load an int constant
86: JLT 0, 130(4)	* array bounds too small
87: LDC 3, 2(0)	* Load the array bounds limit into ACC3
88: SUB 3, 0, 3	* Subtract the max from the current index
89: JGE 3, 130(4)	* array bounds too big
90: LDC 1, 4(0)	* Load the skip size into ACC1
91: MUL 1, 1, 0	* Multiply the index by the skip size and place the result back into ACC1
92: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
93: LD 0, 0(5)	* Load stored result into ACC0
94: ADD 0, 1, 0	* add the base (ACC0) and the skip size (ACC1) and put the result back in ACC0
* BEGIN: push to stack
95: LDA 3, -54(5)	* Subtract the stack limit from SP - store in ACC3
96: LDC 2, 56(0)	* Load diagnostic char into ACC2
97: JLE 3, 141(4)	* stack failure
98: ST 0, 0(5)	* save ACC0 into the current SP location
99: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
100: LDC 0, 1(0)	* Load a constant into ACC0
* END: load an int constant
101: JLT 0, 130(4)	* array bounds too small
102: LDC 3, 2(0)	* Load the array bounds limit into ACC3
103: SUB 3, 0, 3	* Subtract the max from the current index
104: JGE 3, 130(4)	* array bounds too big
105: LDC 1, 2(0)	* Load the skip size into ACC1
106: MUL 1, 1, 0	* Multiply the index by the skip size and place the result back into ACC1
107: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
108: LD 0, 0(5)	* Load stored result into ACC0
109: ADD 0, 1, 0	* add the base (ACC0) and the skip size (ACC1) and put the result back in ACC0
* BEGIN: push to stack
110: LDA 3, -54(5)	* Subtract the stack limit from SP - store in ACC3
111: LDC 2, 56(0)	* Load diagnostic char into ACC2
112: JLE 3, 141(4)	* stack failure
113: ST 0, 0(5)	* save ACC0 into the current SP location
114: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
115: LDC 0, 1(0)	* Load a constant into ACC0
* END: load an int constant
116: JLT 0, 130(4)	* array bounds too small
117: LDC 3, 2(0)	* Load the array bounds limit into ACC3
118: SUB 3, 0, 3	* Subtract the max from the current index
119: JGE 3, 130(4)	* array bounds too big
120: LDC 1, 1(0)	* Load the skip size into ACC1
121: MUL 1, 1, 0	* Multiply the index by the skip size and place the result back into ACC1
122: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
123: LD 0, 0(5)	* Load stored result into ACC0
124: ADD 0, 1, 0	* add the base (ACC0) and the skip size (ACC1) and put the result back in ACC0
125: LD 0, 0(0)	* Load the final dereferenced value into the specified register
* END: variable (rvalue) access
* BEGIN: write(s)
126: OUT 0, 0, 0	* write out the int value in ACC0
127: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
128: LD 0, 0(6)	* Load the return address from the 1st slot in the AR to ACC0
129: LDA 7, 0(0)	* Return to calling location (stored in ACC0)
* END: procedure code
* BEGIN: array bounds message handler
130: LDC 0, 1(0)	* Load the error message into ACC0
131: LDA 1, 1(0)	* Increment the address stored in ACC0 to get the string's char location (put in ACC1)
132: LD 0, 0(0)	* Load the string size into ACC0
133: JEQ 0, 5(7)	* Jump to end when run out of string
134: LDA 0, -1(0)	* subtract one from string size
135: LD 2, 0(1)	* Load next char from string into ACC2
136: LDA 1, 1(1)	* increment pointer into string
137: OUTC 2, 0, 0	* Write out character in ACC2
138: LDA 7, -6(7)	* Go back to start of loop
139: OUTNL 0, 0, 0	* dump out the newline
140: HALT 0, 0, 0	* Halt for array bounds
* END: array bounds message handler
* BEGIN: stack limit message handler
141: LDC 0, 25(0)	* Load the error message into ACC0
142: LDA 1, 1(0)	* Increment the address stored in ACC0 to get the string's char location (put in ACC1)
143: LD 0, 0(0)	* Load the string size into ACC0
144: JEQ 0, 5(7)	* Jump to end when run out of string
145: LDA 0, -1(0)	* subtract one from string size
146: LD 3, 0(1)	* Load next char from string into ACC3
147: LDA 1, 1(1)	* increment pointer into string
148: OUTC 3, 0, 0	* Write out character in ACC3
149: LDA 7, -6(7)	* Go back to start of loop
150: OUTC 2, 0, 0	* Write out diagnostic char in ACC2
151: OUTNL 0, 0, 0	* dump out the newline
152: HALT 0, 0, 0	* Halt for stack limit
* END: stack limit message handler
