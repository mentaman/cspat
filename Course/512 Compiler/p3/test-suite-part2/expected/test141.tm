.DATA 23	* string length
.SDATA "Arrays bounds violation"	* string constant
.DATA 19	* string length
.SDATA "Out of stack space "	* string constant
.DATA 1	* string length
.SDATA "b"	* string constant
.DATA 1	* string length
.SDATA "a"	* string constant
.DATA 0	* storage location (49) for var i
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
5: LDA 3, -51(5)	* Subtract the stack limit from SP - store in ACC3
6: LDC 2, 50(0)	* Load diagnostic char into ACC2
7: JLE 3, 155(4)	* stack failure
8: ST 0, 0(5)	* save ACC0 into the current SP location
9: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: assignment
10: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
11: LD 0, 0(5)	* Load stored result into ACC0
12: ST 0, 49(4)	* Store ACC0 into global offset
* END: assignment
* BEGIN: procedure call
13: LDA 0, 15(7)	* Get return address into ACC0
14: LDA 3, -54(5)	* Subtract the stack limit from SP - store in ACC3
15: LDC 2, 97(0)	* Load diagnostic char into ACC2
16: JLE 3, 155(4)	* stack failure
17: ST 0, 0(5)	* Store return address (in ACC0) to SP/FP
* return value sits at SP-1/FP-1
18: ST 5, -2(5)	* Store SP to SP-2/FP-2
19: ST 6, -3(5)	* Store FP to SP-3/FP-3
20: LDA 5, -4(5)	* decrement SP by 4 (i.e., 4 pushes)
* BEGIN: load an int constant
21: LDC 0, 0(0)	* Load a constant into ACC0
* END: load an int constant
22: LDA 3, -51(5)	* Subtract the stack limit from SP - store in ACC3
23: LDC 2, 98(0)	* Load diagnostic char into ACC2
24: JLE 3, 155(4)	* stack failure
25: ST 0, 0(5)	* Store param in slot
26: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
27: LDA 6, 5(5)	* Set FP to be the "pre-push of AR" SP
* SP already points to end of the AR
28: LDA 7, 90(4)	* Jump to the start of the proc
29: LD 5, -2(6)	* Restore SP from FP-2
30: LD 6, -3(6)	* Restore FP from FP-3
* END: procedure call
* BEGIN: load an int constant
31: LDC 0, 0(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: push to stack
32: LDA 3, -51(5)	* Subtract the stack limit from SP - store in ACC3
33: LDC 2, 50(0)	* Load diagnostic char into ACC2
34: JLE 3, 155(4)	* stack failure
35: ST 0, 0(5)	* save ACC0 into the current SP location
36: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: assignment
37: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
38: LD 0, 0(5)	* Load stored result into ACC0
39: ST 0, 49(4)	* Store ACC0 into global offset
* END: assignment
* BEGIN: procedure call
40: LDA 0, 15(7)	* Get return address into ACC0
41: LDA 3, -54(5)	* Subtract the stack limit from SP - store in ACC3
42: LDC 2, 97(0)	* Load diagnostic char into ACC2
43: JLE 3, 155(4)	* stack failure
44: ST 0, 0(5)	* Store return address (in ACC0) to SP/FP
* return value sits at SP-1/FP-1
45: ST 5, -2(5)	* Store SP to SP-2/FP-2
46: ST 6, -3(5)	* Store FP to SP-3/FP-3
47: LDA 5, -4(5)	* decrement SP by 4 (i.e., 4 pushes)
* BEGIN: load an int constant
48: LDC 0, 0(0)	* Load a constant into ACC0
* END: load an int constant
49: LDA 3, -51(5)	* Subtract the stack limit from SP - store in ACC3
50: LDC 2, 98(0)	* Load diagnostic char into ACC2
51: JLE 3, 155(4)	* stack failure
52: ST 0, 0(5)	* Store param in slot
53: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
54: LDA 6, 5(5)	* Set FP to be the "pre-push of AR" SP
* SP already points to end of the AR
55: LDA 7, 59(4)	* Jump to the start of the proc
56: LD 5, -2(6)	* Restore SP from FP-2
57: LD 6, -3(6)	* Restore FP from FP-3
* END: procedure call
58: HALT 0, 0, 0	* End of Program
* BEGIN: procedure code
59: LDA 0, 0(0)	* NOOP to mark beginning of proc
* BEGIN: load a string's location into ACC0
60: LDC 0, 47(0)	* Load a string's location into ACC0
* END: load a string's location into ACC0
* BEGIN: write(s)
61: LDA 1, 1(0)	* Increment the address stored in ACC0 to get the string's char location (put in ACC1)
62: LD 0, 0(0)	* Load the string size into ACC0
63: JEQ 0, 5(7)	* Jump to end when run out of string
64: LDA 0, -1(0)	* subtract one from string size
65: LD 2, 0(1)	* Load next char from string into ACC2
66: LDA 1, 1(1)	* increment pointer into string
67: OUTC 2, 0, 0	* Write out character in ACC2
68: LDA 7, -6(7)	* Go back to start of loop
69: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
* BEGIN: procedure call
70: LDA 0, 15(7)	* Get return address into ACC0
71: LDA 3, -54(5)	* Subtract the stack limit from SP - store in ACC3
72: LDC 2, 97(0)	* Load diagnostic char into ACC2
73: JLE 3, 155(4)	* stack failure
74: ST 0, 0(5)	* Store return address (in ACC0) to SP/FP
* return value sits at SP-1/FP-1
75: ST 5, -2(5)	* Store SP to SP-2/FP-2
76: ST 6, -3(5)	* Store FP to SP-3/FP-3
77: LDA 5, -4(5)	* decrement SP by 4 (i.e., 4 pushes)
* BEGIN: variable (rvalue) access
78: LD 0, -4(6)	* Load the local var into ACC0
* END: variable (rvalue) access
79: LDA 3, -51(5)	* Subtract the stack limit from SP - store in ACC3
80: LDC 2, 98(0)	* Load diagnostic char into ACC2
81: JLE 3, 155(4)	* stack failure
82: ST 0, 0(5)	* Store param in slot
83: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
84: LDA 6, 5(5)	* Set FP to be the "pre-push of AR" SP
* SP already points to end of the AR
85: LDA 7, 90(4)	* Jump to the start of the proc
86: LD 5, -2(6)	* Restore SP from FP-2
87: LD 6, -3(6)	* Restore FP from FP-3
* END: procedure call
88: LD 0, 0(6)	* Load the return address from the 1st slot in the AR to ACC0
89: LDA 7, 0(0)	* Return to calling location (stored in ACC0)
* END: procedure code
* BEGIN: procedure code
90: LDA 0, 0(0)	* NOOP to mark beginning of proc
* BEGIN: variable (rvalue) access
91: LD 0, 49(4)	* Load the global var into ACC0
* END: variable (rvalue) access
* BEGIN: push to stack
92: LDA 3, -51(5)	* Subtract the stack limit from SP - store in ACC3
93: LDC 2, 51(0)	* Load diagnostic char into ACC2
94: JLE 3, 155(4)	* stack failure
95: ST 0, 0(5)	* save ACC0 into the current SP location
96: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
97: LDC 0, 4(0)	* Load a constant into ACC0
* END: load an int constant
98: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
99: LD 1, 0(5)	* Load stored result into ACC1
* BEGIN: >
100: SUB 0, 1, 0	* for >, subtract right from left
101: JGT 0, 2(7)	* Jump to Load 1 if ACC0 > 0
102: LDC 0, 0(0)	* Load 0 into ACC0
103: LDA 7, 1(7)	* Jump over Load 1
104: LDC 0, 1(0)	* Load 1 into ACC0
* END: >
105: JEQ 0, 1(7)	* Jump over the then stmts if false
* BEGIN: return
106: LDA 7, 153(4)	* Jump to the end of the proc
* END: return
* BEGIN: variable (rvalue) access
107: LD 0, 49(4)	* Load the global var into ACC0
* END: variable (rvalue) access
* BEGIN: push to stack
108: LDA 3, -51(5)	* Subtract the stack limit from SP - store in ACC3
109: LDC 2, 55(0)	* Load diagnostic char into ACC2
110: JLE 3, 155(4)	* stack failure
111: ST 0, 0(5)	* save ACC0 into the current SP location
112: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
113: LDC 0, 1(0)	* Load a constant into ACC0
* END: load an int constant
114: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
115: LD 1, 0(5)	* Load stored result into ACC1
116: ADD 0, 0, 1	* Add ACC0 & ACC1 placing result in ACC0
* BEGIN: push to stack
117: LDA 3, -51(5)	* Subtract the stack limit from SP - store in ACC3
118: LDC 2, 50(0)	* Load diagnostic char into ACC2
119: JLE 3, 155(4)	* stack failure
120: ST 0, 0(5)	* save ACC0 into the current SP location
121: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: assignment
122: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
123: LD 0, 0(5)	* Load stored result into ACC0
124: ST 0, 49(4)	* Store ACC0 into global offset
* END: assignment
* BEGIN: load a string's location into ACC0
125: LDC 0, 45(0)	* Load a string's location into ACC0
* END: load a string's location into ACC0
* BEGIN: write(s)
126: LDA 1, 1(0)	* Increment the address stored in ACC0 to get the string's char location (put in ACC1)
127: LD 0, 0(0)	* Load the string size into ACC0
128: JEQ 0, 5(7)	* Jump to end when run out of string
129: LDA 0, -1(0)	* subtract one from string size
130: LD 2, 0(1)	* Load next char from string into ACC2
131: LDA 1, 1(1)	* increment pointer into string
132: OUTC 2, 0, 0	* Write out character in ACC2
133: LDA 7, -6(7)	* Go back to start of loop
134: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
* BEGIN: procedure call
135: LDA 0, 15(7)	* Get return address into ACC0
136: LDA 3, -54(5)	* Subtract the stack limit from SP - store in ACC3
137: LDC 2, 97(0)	* Load diagnostic char into ACC2
138: JLE 3, 155(4)	* stack failure
139: ST 0, 0(5)	* Store return address (in ACC0) to SP/FP
* return value sits at SP-1/FP-1
140: ST 5, -2(5)	* Store SP to SP-2/FP-2
141: ST 6, -3(5)	* Store FP to SP-3/FP-3
142: LDA 5, -4(5)	* decrement SP by 4 (i.e., 4 pushes)
* BEGIN: variable (rvalue) access
143: LD 0, -4(6)	* Load the local var into ACC0
* END: variable (rvalue) access
144: LDA 3, -51(5)	* Subtract the stack limit from SP - store in ACC3
145: LDC 2, 98(0)	* Load diagnostic char into ACC2
146: JLE 3, 155(4)	* stack failure
147: ST 0, 0(5)	* Store param in slot
148: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
149: LDA 6, 5(5)	* Set FP to be the "pre-push of AR" SP
* SP already points to end of the AR
150: LDA 7, 59(4)	* Jump to the start of the proc
151: LD 5, -2(6)	* Restore SP from FP-2
152: LD 6, -3(6)	* Restore FP from FP-3
* END: procedure call
153: LD 0, 0(6)	* Load the return address from the 1st slot in the AR to ACC0
154: LDA 7, 0(0)	* Return to calling location (stored in ACC0)
* END: procedure code
* BEGIN: stack limit message handler
155: LDC 0, 25(0)	* Load the error message into ACC0
156: LDA 1, 1(0)	* Increment the address stored in ACC0 to get the string's char location (put in ACC1)
157: LD 0, 0(0)	* Load the string size into ACC0
158: JEQ 0, 5(7)	* Jump to end when run out of string
159: LDA 0, -1(0)	* subtract one from string size
160: LD 3, 0(1)	* Load next char from string into ACC3
161: LDA 1, 1(1)	* increment pointer into string
162: OUTC 3, 0, 0	* Write out character in ACC3
163: LDA 7, -6(7)	* Go back to start of loop
164: OUTC 2, 0, 0	* Write out diagnostic char in ACC2
165: OUTNL 0, 0, 0	* dump out the newline
166: HALT 0, 0, 0	* Halt for stack limit
* END: stack limit message handler
