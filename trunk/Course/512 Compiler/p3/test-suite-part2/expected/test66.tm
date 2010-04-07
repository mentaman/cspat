.DATA 23	* string length
.SDATA "Arrays bounds violation"	* string constant
.DATA 19	* string length
.SDATA "Out of stack space "	* string constant
.DATA 0	* storage location (45) for var pi
.DATA 0	* storage location (45) for var pi
.DATA 0	* storage location (45) for var pi
.DATA 0	* storage location (45) for var pi
* BEGIN preamble
0: LDC 4, 0(0)	* initialize ZEROREG to 0
1: LD 5, 0(4)	* initialize SP to end of memory
2: LDA 5, -1(5)	* subtract one to get the true SP
3: LDA 6, 0(5)	* FP and SP start off the same
* END preamble
* BEGIN: load an int constant
4: LDC 0, 3(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: push to stack
5: LDA 3, -50(5)	* Subtract the stack limit from SP - store in ACC3
6: LDC 2, 50(0)	* Load diagnostic char into ACC2
7: JLE 3, 213(4)	* stack failure
8: ST 0, 0(5)	* save ACC0 into the current SP location
9: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: assignment
10: LDC 0, 45(0)	* Load the base address into ACC0
* BEGIN: push to stack
11: LDA 3, -50(5)	* Subtract the stack limit from SP - store in ACC3
12: LDC 2, 56(0)	* Load diagnostic char into ACC2
13: JLE 3, 213(4)	* stack failure
14: ST 0, 0(5)	* save ACC0 into the current SP location
15: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
16: LDC 0, 0(0)	* Load a constant into ACC0
* END: load an int constant
17: JLT 0, 202(4)	* array bounds too small
18: LDC 3, 4(0)	* Load the array bounds limit into ACC3
19: SUB 3, 0, 3	* Subtract the max from the current index
20: JGE 3, 202(4)	* array bounds too big
21: LDC 1, 1(0)	* Load the skip size into ACC1
22: MUL 1, 1, 0	* Multiply the index by the skip size and place the result back into ACC1
23: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
24: LD 0, 0(5)	* Load stored result into ACC0
25: ADD 0, 1, 0	* add the base (ACC0) and the skip size (ACC1) and put the result back in ACC0
26: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
27: LD 1, 0(5)	* Load stored result into ACC1
28: ST 1, 0(0)	* Store ACC0 into global offset
* END: assignment
* BEGIN: load an int constant
29: LDC 0, 2(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: push to stack
30: LDA 3, -50(5)	* Subtract the stack limit from SP - store in ACC3
31: LDC 2, 50(0)	* Load diagnostic char into ACC2
32: JLE 3, 213(4)	* stack failure
33: ST 0, 0(5)	* save ACC0 into the current SP location
34: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: assignment
35: LDC 0, 45(0)	* Load the base address into ACC0
* BEGIN: push to stack
36: LDA 3, -50(5)	* Subtract the stack limit from SP - store in ACC3
37: LDC 2, 56(0)	* Load diagnostic char into ACC2
38: JLE 3, 213(4)	* stack failure
39: ST 0, 0(5)	* save ACC0 into the current SP location
40: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
41: LDC 0, 1(0)	* Load a constant into ACC0
* END: load an int constant
42: JLT 0, 202(4)	* array bounds too small
43: LDC 3, 4(0)	* Load the array bounds limit into ACC3
44: SUB 3, 0, 3	* Subtract the max from the current index
45: JGE 3, 202(4)	* array bounds too big
46: LDC 1, 1(0)	* Load the skip size into ACC1
47: MUL 1, 1, 0	* Multiply the index by the skip size and place the result back into ACC1
48: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
49: LD 0, 0(5)	* Load stored result into ACC0
50: ADD 0, 1, 0	* add the base (ACC0) and the skip size (ACC1) and put the result back in ACC0
51: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
52: LD 1, 0(5)	* Load stored result into ACC1
53: ST 1, 0(0)	* Store ACC0 into global offset
* END: assignment
* BEGIN: load an int constant
54: LDC 0, 1(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: push to stack
55: LDA 3, -50(5)	* Subtract the stack limit from SP - store in ACC3
56: LDC 2, 50(0)	* Load diagnostic char into ACC2
57: JLE 3, 213(4)	* stack failure
58: ST 0, 0(5)	* save ACC0 into the current SP location
59: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: assignment
60: LDC 0, 45(0)	* Load the base address into ACC0
* BEGIN: push to stack
61: LDA 3, -50(5)	* Subtract the stack limit from SP - store in ACC3
62: LDC 2, 56(0)	* Load diagnostic char into ACC2
63: JLE 3, 213(4)	* stack failure
64: ST 0, 0(5)	* save ACC0 into the current SP location
65: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
66: LDC 0, 2(0)	* Load a constant into ACC0
* END: load an int constant
67: JLT 0, 202(4)	* array bounds too small
68: LDC 3, 4(0)	* Load the array bounds limit into ACC3
69: SUB 3, 0, 3	* Subtract the max from the current index
70: JGE 3, 202(4)	* array bounds too big
71: LDC 1, 1(0)	* Load the skip size into ACC1
72: MUL 1, 1, 0	* Multiply the index by the skip size and place the result back into ACC1
73: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
74: LD 0, 0(5)	* Load stored result into ACC0
75: ADD 0, 1, 0	* add the base (ACC0) and the skip size (ACC1) and put the result back in ACC0
76: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
77: LD 1, 0(5)	* Load stored result into ACC1
78: ST 1, 0(0)	* Store ACC0 into global offset
* END: assignment
* BEGIN: load an int constant
79: LDC 0, 0(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: push to stack
80: LDA 3, -50(5)	* Subtract the stack limit from SP - store in ACC3
81: LDC 2, 50(0)	* Load diagnostic char into ACC2
82: JLE 3, 213(4)	* stack failure
83: ST 0, 0(5)	* save ACC0 into the current SP location
84: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: assignment
85: LDC 0, 45(0)	* Load the base address into ACC0
* BEGIN: push to stack
86: LDA 3, -50(5)	* Subtract the stack limit from SP - store in ACC3
87: LDC 2, 56(0)	* Load diagnostic char into ACC2
88: JLE 3, 213(4)	* stack failure
89: ST 0, 0(5)	* save ACC0 into the current SP location
90: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
91: LDC 0, 3(0)	* Load a constant into ACC0
* END: load an int constant
92: JLT 0, 202(4)	* array bounds too small
93: LDC 3, 4(0)	* Load the array bounds limit into ACC3
94: SUB 3, 0, 3	* Subtract the max from the current index
95: JGE 3, 202(4)	* array bounds too big
96: LDC 1, 1(0)	* Load the skip size into ACC1
97: MUL 1, 1, 0	* Multiply the index by the skip size and place the result back into ACC1
98: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
99: LD 0, 0(5)	* Load stored result into ACC0
100: ADD 0, 1, 0	* add the base (ACC0) and the skip size (ACC1) and put the result back in ACC0
101: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
102: LD 1, 0(5)	* Load stored result into ACC1
103: ST 1, 0(0)	* Store ACC0 into global offset
* END: assignment
* BEGIN: procedure call
104: LDA 0, 15(7)	* Get return address into ACC0
105: LDA 3, -53(5)	* Subtract the stack limit from SP - store in ACC3
106: LDC 2, 97(0)	* Load diagnostic char into ACC2
107: JLE 3, 213(4)	* stack failure
108: ST 0, 0(5)	* Store return address (in ACC0) to SP/FP
* return value sits at SP-1/FP-1
109: ST 5, -2(5)	* Store SP to SP-2/FP-2
110: ST 6, -3(5)	* Store FP to SP-3/FP-3
111: LDA 5, -4(5)	* decrement SP by 4 (i.e., 4 pushes)
* BEGIN: variable (rvalue) access
112: LDC 0, 45(0)	* Load the base address into ACC0
* END: variable (rvalue) access
113: LDA 3, -50(5)	* Subtract the stack limit from SP - store in ACC3
114: LDC 2, 98(0)	* Load diagnostic char into ACC2
115: JLE 3, 213(4)	* stack failure
116: ST 0, 0(5)	* Store param in slot
117: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
118: LDA 6, 5(5)	* Set FP to be the "pre-push of AR" SP
* SP already points to end of the AR
119: LDA 7, 123(4)	* Jump to the start of the proc
120: LD 5, -2(6)	* Restore SP from FP-2
121: LD 6, -3(6)	* Restore FP from FP-3
* END: procedure call
122: HALT 0, 0, 0	* End of Program
* BEGIN: procedure code
123: LDA 0, 0(0)	* NOOP to mark beginning of proc
* BEGIN: variable (rvalue) access
124: LD 0, -4(6)	* Load the base address out of the AR
* BEGIN: push to stack
125: LDA 3, -50(5)	* Subtract the stack limit from SP - store in ACC3
126: LDC 2, 56(0)	* Load diagnostic char into ACC2
127: JLE 3, 213(4)	* stack failure
128: ST 0, 0(5)	* save ACC0 into the current SP location
129: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
130: LDC 0, 0(0)	* Load a constant into ACC0
* END: load an int constant
131: JLT 0, 202(4)	* array bounds too small
132: LDC 3, 4(0)	* Load the array bounds limit into ACC3
133: SUB 3, 0, 3	* Subtract the max from the current index
134: JGE 3, 202(4)	* array bounds too big
135: LDC 1, 1(0)	* Load the skip size into ACC1
136: MUL 1, 1, 0	* Multiply the index by the skip size and place the result back into ACC1
137: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
138: LD 0, 0(5)	* Load stored result into ACC0
139: ADD 0, 1, 0	* add the base (ACC0) and the skip size (ACC1) and put the result back in ACC0
140: LD 0, 0(0)	* Load the final dereferenced value into the specified register
* END: variable (rvalue) access
* BEGIN: write(s)
141: OUT 0, 0, 0	* write out the int value in ACC0
142: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
* BEGIN: variable (rvalue) access
143: LD 0, -4(6)	* Load the base address out of the AR
* BEGIN: push to stack
144: LDA 3, -50(5)	* Subtract the stack limit from SP - store in ACC3
145: LDC 2, 56(0)	* Load diagnostic char into ACC2
146: JLE 3, 213(4)	* stack failure
147: ST 0, 0(5)	* save ACC0 into the current SP location
148: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
149: LDC 0, 1(0)	* Load a constant into ACC0
* END: load an int constant
150: JLT 0, 202(4)	* array bounds too small
151: LDC 3, 4(0)	* Load the array bounds limit into ACC3
152: SUB 3, 0, 3	* Subtract the max from the current index
153: JGE 3, 202(4)	* array bounds too big
154: LDC 1, 1(0)	* Load the skip size into ACC1
155: MUL 1, 1, 0	* Multiply the index by the skip size and place the result back into ACC1
156: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
157: LD 0, 0(5)	* Load stored result into ACC0
158: ADD 0, 1, 0	* add the base (ACC0) and the skip size (ACC1) and put the result back in ACC0
159: LD 0, 0(0)	* Load the final dereferenced value into the specified register
* END: variable (rvalue) access
* BEGIN: write(s)
160: OUT 0, 0, 0	* write out the int value in ACC0
161: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
* BEGIN: variable (rvalue) access
162: LD 0, -4(6)	* Load the base address out of the AR
* BEGIN: push to stack
163: LDA 3, -50(5)	* Subtract the stack limit from SP - store in ACC3
164: LDC 2, 56(0)	* Load diagnostic char into ACC2
165: JLE 3, 213(4)	* stack failure
166: ST 0, 0(5)	* save ACC0 into the current SP location
167: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
168: LDC 0, 2(0)	* Load a constant into ACC0
* END: load an int constant
169: JLT 0, 202(4)	* array bounds too small
170: LDC 3, 4(0)	* Load the array bounds limit into ACC3
171: SUB 3, 0, 3	* Subtract the max from the current index
172: JGE 3, 202(4)	* array bounds too big
173: LDC 1, 1(0)	* Load the skip size into ACC1
174: MUL 1, 1, 0	* Multiply the index by the skip size and place the result back into ACC1
175: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
176: LD 0, 0(5)	* Load stored result into ACC0
177: ADD 0, 1, 0	* add the base (ACC0) and the skip size (ACC1) and put the result back in ACC0
178: LD 0, 0(0)	* Load the final dereferenced value into the specified register
* END: variable (rvalue) access
* BEGIN: write(s)
179: OUT 0, 0, 0	* write out the int value in ACC0
180: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
* BEGIN: variable (rvalue) access
181: LD 0, -4(6)	* Load the base address out of the AR
* BEGIN: push to stack
182: LDA 3, -50(5)	* Subtract the stack limit from SP - store in ACC3
183: LDC 2, 56(0)	* Load diagnostic char into ACC2
184: JLE 3, 213(4)	* stack failure
185: ST 0, 0(5)	* save ACC0 into the current SP location
186: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
187: LDC 0, 3(0)	* Load a constant into ACC0
* END: load an int constant
188: JLT 0, 202(4)	* array bounds too small
189: LDC 3, 4(0)	* Load the array bounds limit into ACC3
190: SUB 3, 0, 3	* Subtract the max from the current index
191: JGE 3, 202(4)	* array bounds too big
192: LDC 1, 1(0)	* Load the skip size into ACC1
193: MUL 1, 1, 0	* Multiply the index by the skip size and place the result back into ACC1
194: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
195: LD 0, 0(5)	* Load stored result into ACC0
196: ADD 0, 1, 0	* add the base (ACC0) and the skip size (ACC1) and put the result back in ACC0
197: LD 0, 0(0)	* Load the final dereferenced value into the specified register
* END: variable (rvalue) access
* BEGIN: write(s)
198: OUT 0, 0, 0	* write out the int value in ACC0
199: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
200: LD 0, 0(6)	* Load the return address from the 1st slot in the AR to ACC0
201: LDA 7, 0(0)	* Return to calling location (stored in ACC0)
* END: procedure code
* BEGIN: array bounds message handler
202: LDC 0, 1(0)	* Load the error message into ACC0
203: LDA 1, 1(0)	* Increment the address stored in ACC0 to get the string's char location (put in ACC1)
204: LD 0, 0(0)	* Load the string size into ACC0
205: JEQ 0, 5(7)	* Jump to end when run out of string
206: LDA 0, -1(0)	* subtract one from string size
207: LD 2, 0(1)	* Load next char from string into ACC2
208: LDA 1, 1(1)	* increment pointer into string
209: OUTC 2, 0, 0	* Write out character in ACC2
210: LDA 7, -6(7)	* Go back to start of loop
211: OUTNL 0, 0, 0	* dump out the newline
212: HALT 0, 0, 0	* Halt for array bounds
* END: array bounds message handler
* BEGIN: stack limit message handler
213: LDC 0, 25(0)	* Load the error message into ACC0
214: LDA 1, 1(0)	* Increment the address stored in ACC0 to get the string's char location (put in ACC1)
215: LD 0, 0(0)	* Load the string size into ACC0
216: JEQ 0, 5(7)	* Jump to end when run out of string
217: LDA 0, -1(0)	* subtract one from string size
218: LD 3, 0(1)	* Load next char from string into ACC3
219: LDA 1, 1(1)	* increment pointer into string
220: OUTC 3, 0, 0	* Write out character in ACC3
221: LDA 7, -6(7)	* Go back to start of loop
222: OUTC 2, 0, 0	* Write out diagnostic char in ACC2
223: OUTNL 0, 0, 0	* dump out the newline
224: HALT 0, 0, 0	* Halt for stack limit
* END: stack limit message handler
