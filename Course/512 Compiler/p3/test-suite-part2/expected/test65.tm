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
4: LDA 0, 25(7)	* Get return address into ACC0
5: LDA 3, -49(5)	* Subtract the stack limit from SP - store in ACC3
6: LDC 2, 97(0)	* Load diagnostic char into ACC2
7: JLE 3, 157(4)	* stack failure
8: ST 0, 0(5)	* Store return address (in ACC0) to SP/FP
* return value sits at SP-1/FP-1
9: ST 5, -2(5)	* Store SP to SP-2/FP-2
10: ST 6, -3(5)	* Store FP to SP-3/FP-3
11: LDA 5, -4(5)	* decrement SP by 4 (i.e., 4 pushes)
* BEGIN: load an int constant
12: LDC 0, 1(0)	* Load a constant into ACC0
* END: load an int constant
13: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
14: LDC 2, 98(0)	* Load diagnostic char into ACC2
15: JLE 3, 157(4)	* stack failure
16: ST 0, 0(5)	* Store param in slot
17: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* BEGIN: load an int constant
18: LDC 0, 4(0)	* Load a constant into ACC0
* END: load an int constant
19: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
20: LDC 2, 98(0)	* Load diagnostic char into ACC2
21: JLE 3, 157(4)	* stack failure
22: ST 0, 0(5)	* Store param in slot
23: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
24: LDA 3, -55(5)	* Subtract the stack limit from SP - store in ACC3
25: LDC 2, 99(0)	* Load diagnostic char into ACC2
26: JLE 3, 157(4)	* stack failure
27: LDA 5, -10(5)	* decrement SP by local var's size (i.e., push)
28: LDA 6, 16(5)	* Set FP to be the "pre-push of AR" SP
* SP already points to end of the AR
29: LDA 7, 61(4)	* Jump to the start of the proc
30: LD 5, -2(6)	* Restore SP from FP-2
31: LD 6, -3(6)	* Restore FP from FP-3
* END: procedure call
* BEGIN: procedure call
32: LDA 0, 25(7)	* Get return address into ACC0
33: LDA 3, -49(5)	* Subtract the stack limit from SP - store in ACC3
34: LDC 2, 97(0)	* Load diagnostic char into ACC2
35: JLE 3, 157(4)	* stack failure
36: ST 0, 0(5)	* Store return address (in ACC0) to SP/FP
* return value sits at SP-1/FP-1
37: ST 5, -2(5)	* Store SP to SP-2/FP-2
38: ST 6, -3(5)	* Store FP to SP-3/FP-3
39: LDA 5, -4(5)	* decrement SP by 4 (i.e., 4 pushes)
* BEGIN: load an int constant
40: LDC 0, 0(0)	* Load a constant into ACC0
* END: load an int constant
41: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
42: LDC 2, 98(0)	* Load diagnostic char into ACC2
43: JLE 3, 157(4)	* stack failure
44: ST 0, 0(5)	* Store param in slot
45: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* BEGIN: load an int constant
46: LDC 0, 3(0)	* Load a constant into ACC0
* END: load an int constant
47: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
48: LDC 2, 98(0)	* Load diagnostic char into ACC2
49: JLE 3, 157(4)	* stack failure
50: ST 0, 0(5)	* Store param in slot
51: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
52: LDA 3, -55(5)	* Subtract the stack limit from SP - store in ACC3
53: LDC 2, 99(0)	* Load diagnostic char into ACC2
54: JLE 3, 157(4)	* stack failure
55: LDA 5, -10(5)	* decrement SP by local var's size (i.e., push)
56: LDA 6, 16(5)	* Set FP to be the "pre-push of AR" SP
* SP already points to end of the AR
57: LDA 7, 61(4)	* Jump to the start of the proc
58: LD 5, -2(6)	* Restore SP from FP-2
59: LD 6, -3(6)	* Restore FP from FP-3
* END: procedure call
60: HALT 0, 0, 0	* End of Program
* BEGIN: procedure code
61: LDA 0, 0(0)	* NOOP to mark beginning of proc
* BEGIN: load an int constant
62: LDC 0, 3(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: push to stack
63: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
64: LDC 2, 50(0)	* Load diagnostic char into ACC2
65: JLE 3, 157(4)	* stack failure
66: ST 0, 0(5)	* save ACC0 into the current SP location
67: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: assignment
68: LDC 0, -15(0)	* Load the base address into ACC0
* BEGIN: push to stack
69: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
70: LDC 2, 56(0)	* Load diagnostic char into ACC2
71: JLE 3, 157(4)	* stack failure
72: ST 0, 0(5)	* save ACC0 into the current SP location
73: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: variable (rvalue) access
74: LD 0, -4(6)	* Load the local var into ACC0
* END: variable (rvalue) access
75: JLT 0, 146(4)	* array bounds too small
76: LDC 3, 2(0)	* Load the array bounds limit into ACC3
77: SUB 3, 0, 3	* Subtract the max from the current index
78: JGE 3, 146(4)	* array bounds too big
79: LDC 1, 5(0)	* Load the skip size into ACC1
80: MUL 1, 1, 0	* Multiply the index by the skip size and place the result back into ACC1
81: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
82: LD 0, 0(5)	* Load stored result into ACC0
83: ADD 0, 1, 0	* add the base (ACC0) and the skip size (ACC1) and put the result back in ACC0
* BEGIN: push to stack
84: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
85: LDC 2, 56(0)	* Load diagnostic char into ACC2
86: JLE 3, 157(4)	* stack failure
87: ST 0, 0(5)	* save ACC0 into the current SP location
88: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: variable (rvalue) access
89: LD 0, -5(6)	* Load the local var into ACC0
* END: variable (rvalue) access
90: JLT 0, 146(4)	* array bounds too small
91: LDC 3, 5(0)	* Load the array bounds limit into ACC3
92: SUB 3, 0, 3	* Subtract the max from the current index
93: JGE 3, 146(4)	* array bounds too big
94: LDC 1, 1(0)	* Load the skip size into ACC1
95: MUL 1, 1, 0	* Multiply the index by the skip size and place the result back into ACC1
96: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
97: LD 0, 0(5)	* Load stored result into ACC0
98: ADD 0, 1, 0	* add the base (ACC0) and the skip size (ACC1) and put the result back in ACC0
99: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
100: LD 1, 0(5)	* Load stored result into ACC1
101: ADD 0, 0, 6	* Add FP to the relative offset
102: ST 1, 0(0)	* Store ACC0 into local offset (relative to FP)
* END: assignment
* BEGIN: variable (rvalue) access
103: LDC 0, -15(0)	* Load the base address into ACC0
* BEGIN: push to stack
104: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
105: LDC 2, 56(0)	* Load diagnostic char into ACC2
106: JLE 3, 157(4)	* stack failure
107: ST 0, 0(5)	* save ACC0 into the current SP location
108: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: variable (rvalue) access
109: LD 0, -4(6)	* Load the local var into ACC0
* END: variable (rvalue) access
110: JLT 0, 146(4)	* array bounds too small
111: LDC 3, 2(0)	* Load the array bounds limit into ACC3
112: SUB 3, 0, 3	* Subtract the max from the current index
113: JGE 3, 146(4)	* array bounds too big
114: LDC 1, 5(0)	* Load the skip size into ACC1
115: MUL 1, 1, 0	* Multiply the index by the skip size and place the result back into ACC1
116: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
117: LD 0, 0(5)	* Load stored result into ACC0
118: ADD 0, 1, 0	* add the base (ACC0) and the skip size (ACC1) and put the result back in ACC0
* BEGIN: push to stack
119: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
120: LDC 2, 56(0)	* Load diagnostic char into ACC2
121: JLE 3, 157(4)	* stack failure
122: ST 0, 0(5)	* save ACC0 into the current SP location
123: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: variable (rvalue) access
124: LD 0, -5(6)	* Load the local var into ACC0
* END: variable (rvalue) access
125: JLT 0, 146(4)	* array bounds too small
126: LDC 3, 5(0)	* Load the array bounds limit into ACC3
127: SUB 3, 0, 3	* Subtract the max from the current index
128: JGE 3, 146(4)	* array bounds too big
129: LDC 1, 1(0)	* Load the skip size into ACC1
130: MUL 1, 1, 0	* Multiply the index by the skip size and place the result back into ACC1
131: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
132: LD 0, 0(5)	* Load stored result into ACC0
133: ADD 0, 1, 0	* add the base (ACC0) and the skip size (ACC1) and put the result back in ACC0
134: ADD 0, 0, 6	* Add the array offset to FP for a local access
135: LD 0, 0(0)	* Load the final dereferenced local var into the specified register
* END: variable (rvalue) access
* BEGIN: write(s)
136: OUT 0, 0, 0	* write out the int value in ACC0
137: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
* BEGIN: variable (rvalue) access
138: LD 0, -4(6)	* Load the local var into ACC0
* END: variable (rvalue) access
* BEGIN: write(s)
139: OUT 0, 0, 0	* write out the int value in ACC0
140: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
* BEGIN: variable (rvalue) access
141: LD 0, -5(6)	* Load the local var into ACC0
* END: variable (rvalue) access
* BEGIN: write(s)
142: OUT 0, 0, 0	* write out the int value in ACC0
143: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
144: LD 0, 0(6)	* Load the return address from the 1st slot in the AR to ACC0
145: LDA 7, 0(0)	* Return to calling location (stored in ACC0)
* END: procedure code
* BEGIN: array bounds message handler
146: LDC 0, 1(0)	* Load the error message into ACC0
147: LDA 1, 1(0)	* Increment the address stored in ACC0 to get the string's char location (put in ACC1)
148: LD 0, 0(0)	* Load the string size into ACC0
149: JEQ 0, 5(7)	* Jump to end when run out of string
150: LDA 0, -1(0)	* subtract one from string size
151: LD 2, 0(1)	* Load next char from string into ACC2
152: LDA 1, 1(1)	* increment pointer into string
153: OUTC 2, 0, 0	* Write out character in ACC2
154: LDA 7, -6(7)	* Go back to start of loop
155: OUTNL 0, 0, 0	* dump out the newline
156: HALT 0, 0, 0	* Halt for array bounds
* END: array bounds message handler
* BEGIN: stack limit message handler
157: LDC 0, 25(0)	* Load the error message into ACC0
158: LDA 1, 1(0)	* Increment the address stored in ACC0 to get the string's char location (put in ACC1)
159: LD 0, 0(0)	* Load the string size into ACC0
160: JEQ 0, 5(7)	* Jump to end when run out of string
161: LDA 0, -1(0)	* subtract one from string size
162: LD 3, 0(1)	* Load next char from string into ACC3
163: LDA 1, 1(1)	* increment pointer into string
164: OUTC 3, 0, 0	* Write out character in ACC3
165: LDA 7, -6(7)	* Go back to start of loop
166: OUTC 2, 0, 0	* Write out diagnostic char in ACC2
167: OUTNL 0, 0, 0	* dump out the newline
168: HALT 0, 0, 0	* Halt for stack limit
* END: stack limit message handler
