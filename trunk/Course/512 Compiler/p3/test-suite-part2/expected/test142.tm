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
4: LDA 0, 63(7)	* Get return address into ACC0
5: LDA 3, -49(5)	* Subtract the stack limit from SP - store in ACC3
6: LDC 2, 97(0)	* Load diagnostic char into ACC2
7: JLE 3, 182(4)	* stack failure
8: ST 0, 0(5)	* Store return address (in ACC0) to SP/FP
* return value sits at SP-1/FP-1
9: ST 5, -2(5)	* Store SP to SP-2/FP-2
10: ST 6, -3(5)	* Store FP to SP-3/FP-3
11: LDA 5, -4(5)	* decrement SP by 4 (i.e., 4 pushes)
* BEGIN: load an int constant
12: LDC 0, 0(0)	* Load a constant into ACC0
* END: load an int constant
13: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
14: LDC 2, 98(0)	* Load diagnostic char into ACC2
15: JLE 3, 182(4)	* stack failure
16: ST 0, 0(5)	* Store param in slot
17: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* BEGIN: load an int constant
18: LDC 0, 1(0)	* Load a constant into ACC0
* END: load an int constant
19: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
20: LDC 2, 98(0)	* Load diagnostic char into ACC2
21: JLE 3, 182(4)	* stack failure
22: ST 0, 0(5)	* Store param in slot
23: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* BEGIN: load an int constant
24: LDC 0, 2(0)	* Load a constant into ACC0
* END: load an int constant
25: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
26: LDC 2, 98(0)	* Load diagnostic char into ACC2
27: JLE 3, 182(4)	* stack failure
28: ST 0, 0(5)	* Store param in slot
29: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* BEGIN: load an int constant
30: LDC 0, 3(0)	* Load a constant into ACC0
* END: load an int constant
31: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
32: LDC 2, 98(0)	* Load diagnostic char into ACC2
33: JLE 3, 182(4)	* stack failure
34: ST 0, 0(5)	* Store param in slot
35: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* BEGIN: load an int constant
36: LDC 0, 4(0)	* Load a constant into ACC0
* END: load an int constant
37: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
38: LDC 2, 98(0)	* Load diagnostic char into ACC2
39: JLE 3, 182(4)	* stack failure
40: ST 0, 0(5)	* Store param in slot
41: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* BEGIN: load a bool value into ACC0
42: LDC 0, 1(0)	* Load a boolean value into ACC0
* END: load a bool value into ACC0
43: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
44: LDC 2, 98(0)	* Load diagnostic char into ACC2
45: JLE 3, 182(4)	* stack failure
46: ST 0, 0(5)	* Store param in slot
47: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* BEGIN: load a bool value into ACC0
48: LDC 0, 1(0)	* Load a boolean value into ACC0
* END: load a bool value into ACC0
49: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
50: LDC 2, 98(0)	* Load diagnostic char into ACC2
51: JLE 3, 182(4)	* stack failure
52: ST 0, 0(5)	* Store param in slot
53: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* BEGIN: load a bool value into ACC0
54: LDC 0, 1(0)	* Load a boolean value into ACC0
* END: load a bool value into ACC0
55: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
56: LDC 2, 98(0)	* Load diagnostic char into ACC2
57: JLE 3, 182(4)	* stack failure
58: ST 0, 0(5)	* Store param in slot
59: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* BEGIN: load a bool value into ACC0
60: LDC 0, 1(0)	* Load a boolean value into ACC0
* END: load a bool value into ACC0
61: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
62: LDC 2, 98(0)	* Load diagnostic char into ACC2
63: JLE 3, 182(4)	* stack failure
64: ST 0, 0(5)	* Store param in slot
65: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
66: LDA 6, 13(5)	* Set FP to be the "pre-push of AR" SP
* SP already points to end of the AR
67: LDA 7, 71(4)	* Jump to the start of the proc
68: LD 5, -2(6)	* Restore SP from FP-2
69: LD 6, -3(6)	* Restore FP from FP-3
* END: procedure call
70: HALT 0, 0, 0	* End of Program
* BEGIN: procedure code
71: LDA 0, 0(0)	* NOOP to mark beginning of proc
* BEGIN: load an int constant
72: LDC 0, 1(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: push to stack
73: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
74: LDC 2, 50(0)	* Load diagnostic char into ACC2
75: JLE 3, 182(4)	* stack failure
76: ST 0, 0(5)	* save ACC0 into the current SP location
77: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: assignment
78: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
79: LD 0, 0(5)	* Load stored result into ACC0
80: ST 0, -4(6)	* Store ACC0 into local offset (relative to FP)
* END: assignment
* BEGIN: load an int constant
81: LDC 0, 2(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: push to stack
82: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
83: LDC 2, 50(0)	* Load diagnostic char into ACC2
84: JLE 3, 182(4)	* stack failure
85: ST 0, 0(5)	* save ACC0 into the current SP location
86: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: assignment
87: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
88: LD 0, 0(5)	* Load stored result into ACC0
89: ST 0, -5(6)	* Store ACC0 into local offset (relative to FP)
* END: assignment
* BEGIN: load an int constant
90: LDC 0, 3(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: push to stack
91: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
92: LDC 2, 50(0)	* Load diagnostic char into ACC2
93: JLE 3, 182(4)	* stack failure
94: ST 0, 0(5)	* save ACC0 into the current SP location
95: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: assignment
96: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
97: LD 0, 0(5)	* Load stored result into ACC0
98: ST 0, -6(6)	* Store ACC0 into local offset (relative to FP)
* END: assignment
* BEGIN: load an int constant
99: LDC 0, 4(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: push to stack
100: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
101: LDC 2, 50(0)	* Load diagnostic char into ACC2
102: JLE 3, 182(4)	* stack failure
103: ST 0, 0(5)	* save ACC0 into the current SP location
104: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: assignment
105: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
106: LD 0, 0(5)	* Load stored result into ACC0
107: ST 0, -7(6)	* Store ACC0 into local offset (relative to FP)
* END: assignment
* BEGIN: load an int constant
108: LDC 0, 5(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: push to stack
109: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
110: LDC 2, 50(0)	* Load diagnostic char into ACC2
111: JLE 3, 182(4)	* stack failure
112: ST 0, 0(5)	* save ACC0 into the current SP location
113: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: assignment
114: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
115: LD 0, 0(5)	* Load stored result into ACC0
116: ST 0, -8(6)	* Store ACC0 into local offset (relative to FP)
* END: assignment
* BEGIN: load a bool value into ACC0
117: LDC 0, 1(0)	* Load a boolean value into ACC0
* END: load a bool value into ACC0
* BEGIN: push to stack
118: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
119: LDC 2, 50(0)	* Load diagnostic char into ACC2
120: JLE 3, 182(4)	* stack failure
121: ST 0, 0(5)	* save ACC0 into the current SP location
122: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: assignment
123: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
124: LD 0, 0(5)	* Load stored result into ACC0
125: ST 0, -9(6)	* Store ACC0 into local offset (relative to FP)
* END: assignment
* BEGIN: load a bool value into ACC0
126: LDC 0, 1(0)	* Load a boolean value into ACC0
* END: load a bool value into ACC0
* BEGIN: push to stack
127: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
128: LDC 2, 50(0)	* Load diagnostic char into ACC2
129: JLE 3, 182(4)	* stack failure
130: ST 0, 0(5)	* save ACC0 into the current SP location
131: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: assignment
132: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
133: LD 0, 0(5)	* Load stored result into ACC0
134: ST 0, -10(6)	* Store ACC0 into local offset (relative to FP)
* END: assignment
* BEGIN: load a bool value into ACC0
135: LDC 0, 1(0)	* Load a boolean value into ACC0
* END: load a bool value into ACC0
* BEGIN: push to stack
136: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
137: LDC 2, 50(0)	* Load diagnostic char into ACC2
138: JLE 3, 182(4)	* stack failure
139: ST 0, 0(5)	* save ACC0 into the current SP location
140: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: assignment
141: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
142: LD 0, 0(5)	* Load stored result into ACC0
143: ST 0, -11(6)	* Store ACC0 into local offset (relative to FP)
* END: assignment
* BEGIN: load a bool value into ACC0
144: LDC 0, 1(0)	* Load a boolean value into ACC0
* END: load a bool value into ACC0
* BEGIN: push to stack
145: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
146: LDC 2, 50(0)	* Load diagnostic char into ACC2
147: JLE 3, 182(4)	* stack failure
148: ST 0, 0(5)	* save ACC0 into the current SP location
149: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: assignment
150: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
151: LD 0, 0(5)	* Load stored result into ACC0
152: ST 0, -12(6)	* Store ACC0 into local offset (relative to FP)
* END: assignment
* BEGIN: variable (rvalue) access
153: LD 0, -4(6)	* Load the local var into ACC0
* END: variable (rvalue) access
* BEGIN: write(s)
154: OUT 0, 0, 0	* write out the int value in ACC0
155: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
* BEGIN: variable (rvalue) access
156: LD 0, -5(6)	* Load the local var into ACC0
* END: variable (rvalue) access
* BEGIN: write(s)
157: OUT 0, 0, 0	* write out the int value in ACC0
158: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
* BEGIN: variable (rvalue) access
159: LD 0, -6(6)	* Load the local var into ACC0
* END: variable (rvalue) access
* BEGIN: write(s)
160: OUT 0, 0, 0	* write out the int value in ACC0
161: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
* BEGIN: variable (rvalue) access
162: LD 0, -7(6)	* Load the local var into ACC0
* END: variable (rvalue) access
* BEGIN: write(s)
163: OUT 0, 0, 0	* write out the int value in ACC0
164: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
* BEGIN: variable (rvalue) access
165: LD 0, -8(6)	* Load the local var into ACC0
* END: variable (rvalue) access
* BEGIN: write(s)
166: OUT 0, 0, 0	* write out the int value in ACC0
167: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
* BEGIN: variable (rvalue) access
168: LD 0, -9(6)	* Load the local var into ACC0
* END: variable (rvalue) access
* BEGIN: write(s)
169: OUT 0, 0, 0	* write out the int value in ACC0
170: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
* BEGIN: variable (rvalue) access
171: LD 0, -10(6)	* Load the local var into ACC0
* END: variable (rvalue) access
* BEGIN: write(s)
172: OUT 0, 0, 0	* write out the int value in ACC0
173: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
* BEGIN: variable (rvalue) access
174: LD 0, -11(6)	* Load the local var into ACC0
* END: variable (rvalue) access
* BEGIN: write(s)
175: OUT 0, 0, 0	* write out the int value in ACC0
176: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
* BEGIN: variable (rvalue) access
177: LD 0, -12(6)	* Load the local var into ACC0
* END: variable (rvalue) access
* BEGIN: write(s)
178: OUT 0, 0, 0	* write out the int value in ACC0
179: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
180: LD 0, 0(6)	* Load the return address from the 1st slot in the AR to ACC0
181: LDA 7, 0(0)	* Return to calling location (stored in ACC0)
* END: procedure code
* BEGIN: stack limit message handler
182: LDC 0, 25(0)	* Load the error message into ACC0
183: LDA 1, 1(0)	* Increment the address stored in ACC0 to get the string's char location (put in ACC1)
184: LD 0, 0(0)	* Load the string size into ACC0
185: JEQ 0, 5(7)	* Jump to end when run out of string
186: LDA 0, -1(0)	* subtract one from string size
187: LD 3, 0(1)	* Load next char from string into ACC3
188: LDA 1, 1(1)	* increment pointer into string
189: OUTC 3, 0, 0	* Write out character in ACC3
190: LDA 7, -6(7)	* Go back to start of loop
191: OUTC 2, 0, 0	* Write out diagnostic char in ACC2
192: OUTNL 0, 0, 0	* dump out the newline
193: HALT 0, 0, 0	* Halt for stack limit
* END: stack limit message handler
