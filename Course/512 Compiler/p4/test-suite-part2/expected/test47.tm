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
4: LDA 0, 33(7)	* Get return address into ACC0
5: LDA 3, -49(5)	* Subtract the stack limit from SP - store in ACC3
6: LDC 2, 97(0)	* Load diagnostic char into ACC2
7: JLE 3, 185(4)	* stack failure
8: ST 0, 0(5)	* Store return address (in ACC0) to SP/FP
* return value sits at SP-1/FP-1
9: ST 5, -2(5)	* Store SP to SP-2/FP-2
10: ST 6, -3(5)	* Store FP to SP-3/FP-3
11: LDA 5, -4(5)	* decrement SP by 4 (i.e., 4 pushes)
12: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
13: LDC 2, 99(0)	* Load diagnostic char into ACC2
14: JLE 3, 185(4)	* stack failure
15: LDA 5, -1(5)	* decrement SP by local var's size (i.e., push)
* BEGIN: load an int constant
16: LDC 0, 1(0)	* Load a constant into ACC0
* END: load an int constant
17: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
18: LDC 2, 98(0)	* Load diagnostic char into ACC2
19: JLE 3, 185(4)	* stack failure
20: ST 0, 0(5)	* Store param in slot
21: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* BEGIN: load an int constant
22: LDC 0, 1(0)	* Load a constant into ACC0
* END: load an int constant
23: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
24: LDC 2, 98(0)	* Load diagnostic char into ACC2
25: JLE 3, 185(4)	* stack failure
26: ST 0, 0(5)	* Store param in slot
27: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
28: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
29: LDC 2, 99(0)	* Load diagnostic char into ACC2
30: JLE 3, 185(4)	* stack failure
31: LDA 5, -1(5)	* decrement SP by local var's size (i.e., push)
32: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
33: LDC 2, 99(0)	* Load diagnostic char into ACC2
34: JLE 3, 185(4)	* stack failure
35: LDA 5, -1(5)	* decrement SP by local var's size (i.e., push)
36: LDA 6, 9(5)	* Set FP to be the "pre-push of AR" SP
* SP already points to end of the AR
37: LDA 7, 101(4)	* Jump to the start of the proc
38: LD 0, -4(6)	* Load the return value into ACC0
39: LD 5, -2(6)	* Restore SP from FP-2
40: LD 6, -3(6)	* Restore FP from FP-3
* END: procedure call
* BEGIN: write(s)
41: OUT 0, 0, 0	* write out the int value in ACC0
42: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
43: HALT 0, 0, 0	* End of Program
* BEGIN: procedure code
44: LDA 0, 0(0)	* NOOP to mark beginning of proc
* BEGIN: variable (rvalue) access
45: LD 0, -5(6)	* Load the local var into ACC0
* END: variable (rvalue) access
* BEGIN: push to stack
46: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
47: LDC 2, 55(0)	* Load diagnostic char into ACC2
48: JLE 3, 185(4)	* stack failure
49: ST 0, 0(5)	* save ACC0 into the current SP location
50: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: variable (rvalue) access
51: LD 0, -6(6)	* Load the local var into ACC0
* END: variable (rvalue) access
52: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
53: LD 1, 0(5)	* Load stored result into ACC1
54: ADD 0, 0, 1	* Add ACC0 & ACC1 placing result in ACC0
* BEGIN: push to stack
55: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
56: LDC 2, 50(0)	* Load diagnostic char into ACC2
57: JLE 3, 185(4)	* stack failure
58: ST 0, 0(5)	* save ACC0 into the current SP location
59: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: assignment
60: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
61: LD 0, 0(5)	* Load stored result into ACC0
62: ST 0, -7(6)	* Store ACC0 into local offset (relative to FP)
* END: assignment
* BEGIN: load an int constant
63: LDC 0, 2(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: push to stack
64: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
65: LDC 2, 55(0)	* Load diagnostic char into ACC2
66: JLE 3, 185(4)	* stack failure
67: ST 0, 0(5)	* save ACC0 into the current SP location
68: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: variable (rvalue) access
69: LD 0, -7(6)	* Load the local var into ACC0
* END: variable (rvalue) access
70: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
71: LD 1, 0(5)	* Load stored result into ACC1
72: MUL 0, 0, 1	* Multiply ACC0 & ACC1 placing result in ACC0
* BEGIN: push to stack
73: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
74: LDC 2, 50(0)	* Load diagnostic char into ACC2
75: JLE 3, 185(4)	* stack failure
76: ST 0, 0(5)	* save ACC0 into the current SP location
77: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: assignment
78: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
79: LD 0, 0(5)	* Load stored result into ACC0
80: ST 0, -8(6)	* Store ACC0 into local offset (relative to FP)
* END: assignment
* BEGIN: variable (rvalue) access
81: LD 0, -7(6)	* Load the local var into ACC0
* END: variable (rvalue) access
* BEGIN: push to stack
82: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
83: LDC 2, 55(0)	* Load diagnostic char into ACC2
84: JLE 3, 185(4)	* stack failure
85: ST 0, 0(5)	* save ACC0 into the current SP location
86: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: variable (rvalue) access
87: LD 0, -8(6)	* Load the local var into ACC0
* END: variable (rvalue) access
88: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
89: LD 1, 0(5)	* Load stored result into ACC1
90: ADD 0, 0, 1	* Add ACC0 & ACC1 placing result in ACC0
* BEGIN: push to stack
91: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
92: LDC 2, 50(0)	* Load diagnostic char into ACC2
93: JLE 3, 185(4)	* stack failure
94: ST 0, 0(5)	* save ACC0 into the current SP location
95: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: assignment
96: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
97: LD 0, 0(5)	* Load stored result into ACC0
98: ST 0, -4(6)	* Store ACC0 into local offset (relative to FP)
* END: assignment
99: LD 0, 0(6)	* Load the return address from the 1st slot in the AR to ACC0
100: LDA 7, 0(0)	* Return to calling location (stored in ACC0)
* END: procedure code
* BEGIN: procedure code
101: LDA 0, 0(0)	* NOOP to mark beginning of proc
* BEGIN: load an int constant
102: LDC 0, 2(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: push to stack
103: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
104: LDC 2, 55(0)	* Load diagnostic char into ACC2
105: JLE 3, 185(4)	* stack failure
106: ST 0, 0(5)	* save ACC0 into the current SP location
107: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: variable (rvalue) access
108: LD 0, -5(6)	* Load the local var into ACC0
* END: variable (rvalue) access
109: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
110: LD 1, 0(5)	* Load stored result into ACC1
111: MUL 0, 0, 1	* Multiply ACC0 & ACC1 placing result in ACC0
* BEGIN: push to stack
112: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
113: LDC 2, 50(0)	* Load diagnostic char into ACC2
114: JLE 3, 185(4)	* stack failure
115: ST 0, 0(5)	* save ACC0 into the current SP location
116: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: assignment
117: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
118: LD 0, 0(5)	* Load stored result into ACC0
119: ST 0, -7(6)	* Store ACC0 into local offset (relative to FP)
* END: assignment
* BEGIN: load an int constant
120: LDC 0, 2(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: push to stack
121: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
122: LDC 2, 55(0)	* Load diagnostic char into ACC2
123: JLE 3, 185(4)	* stack failure
124: ST 0, 0(5)	* save ACC0 into the current SP location
125: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: variable (rvalue) access
126: LD 0, -6(6)	* Load the local var into ACC0
* END: variable (rvalue) access
127: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
128: LD 1, 0(5)	* Load stored result into ACC1
129: MUL 0, 0, 1	* Multiply ACC0 & ACC1 placing result in ACC0
* BEGIN: push to stack
130: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
131: LDC 2, 50(0)	* Load diagnostic char into ACC2
132: JLE 3, 185(4)	* stack failure
133: ST 0, 0(5)	* save ACC0 into the current SP location
134: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: assignment
135: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
136: LD 0, 0(5)	* Load stored result into ACC0
137: ST 0, -8(6)	* Store ACC0 into local offset (relative to FP)
* END: assignment
* BEGIN: procedure call
138: LDA 0, 33(7)	* Get return address into ACC0
139: LDA 3, -49(5)	* Subtract the stack limit from SP - store in ACC3
140: LDC 2, 97(0)	* Load diagnostic char into ACC2
141: JLE 3, 185(4)	* stack failure
142: ST 0, 0(5)	* Store return address (in ACC0) to SP/FP
* return value sits at SP-1/FP-1
143: ST 5, -2(5)	* Store SP to SP-2/FP-2
144: ST 6, -3(5)	* Store FP to SP-3/FP-3
145: LDA 5, -4(5)	* decrement SP by 4 (i.e., 4 pushes)
146: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
147: LDC 2, 99(0)	* Load diagnostic char into ACC2
148: JLE 3, 185(4)	* stack failure
149: LDA 5, -1(5)	* decrement SP by local var's size (i.e., push)
* BEGIN: variable (rvalue) access
150: LD 0, -7(6)	* Load the local var into ACC0
* END: variable (rvalue) access
151: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
152: LDC 2, 98(0)	* Load diagnostic char into ACC2
153: JLE 3, 185(4)	* stack failure
154: ST 0, 0(5)	* Store param in slot
155: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* BEGIN: variable (rvalue) access
156: LD 0, -8(6)	* Load the local var into ACC0
* END: variable (rvalue) access
157: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
158: LDC 2, 98(0)	* Load diagnostic char into ACC2
159: JLE 3, 185(4)	* stack failure
160: ST 0, 0(5)	* Store param in slot
161: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
162: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
163: LDC 2, 99(0)	* Load diagnostic char into ACC2
164: JLE 3, 185(4)	* stack failure
165: LDA 5, -1(5)	* decrement SP by local var's size (i.e., push)
166: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
167: LDC 2, 99(0)	* Load diagnostic char into ACC2
168: JLE 3, 185(4)	* stack failure
169: LDA 5, -1(5)	* decrement SP by local var's size (i.e., push)
170: LDA 6, 9(5)	* Set FP to be the "pre-push of AR" SP
* SP already points to end of the AR
171: LDA 7, 44(4)	* Jump to the start of the proc
172: LD 0, -4(6)	* Load the return value into ACC0
173: LD 5, -2(6)	* Restore SP from FP-2
174: LD 6, -3(6)	* Restore FP from FP-3
* END: procedure call
* BEGIN: push to stack
175: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
176: LDC 2, 50(0)	* Load diagnostic char into ACC2
177: JLE 3, 185(4)	* stack failure
178: ST 0, 0(5)	* save ACC0 into the current SP location
179: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: assignment
180: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
181: LD 0, 0(5)	* Load stored result into ACC0
182: ST 0, -4(6)	* Store ACC0 into local offset (relative to FP)
* END: assignment
183: LD 0, 0(6)	* Load the return address from the 1st slot in the AR to ACC0
184: LDA 7, 0(0)	* Return to calling location (stored in ACC0)
* END: procedure code
* BEGIN: stack limit message handler
185: LDC 0, 25(0)	* Load the error message into ACC0
186: LDA 1, 1(0)	* Increment the address stored in ACC0 to get the string's char location (put in ACC1)
187: LD 0, 0(0)	* Load the string size into ACC0
188: JEQ 0, 5(7)	* Jump to end when run out of string
189: LDA 0, -1(0)	* subtract one from string size
190: LD 3, 0(1)	* Load next char from string into ACC3
191: LDA 1, 1(1)	* increment pointer into string
192: OUTC 3, 0, 0	* Write out character in ACC3
193: LDA 7, -6(7)	* Go back to start of loop
194: OUTC 2, 0, 0	* Write out diagnostic char in ACC2
195: OUTNL 0, 0, 0	* dump out the newline
196: HALT 0, 0, 0	* Halt for stack limit
* END: stack limit message handler
