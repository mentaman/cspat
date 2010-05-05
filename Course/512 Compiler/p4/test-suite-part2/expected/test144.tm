.DATA 23	* string length
.SDATA "Arrays bounds violation"	* string constant
.DATA 19	* string length
.SDATA "Out of stack space "	* string constant
.DATA 0	* storage location (45) for var x
.DATA 0	* storage location (45) for var x
.DATA 0	* storage location (45) for var x
.DATA 0	* storage location (45) for var x
.DATA 0	* storage location (45) for var x
.DATA 0	* storage location (45) for var x
.DATA 0	* storage location (45) for var x
.DATA 0	* storage location (45) for var x
.DATA 0	* storage location (53) for var y
.DATA 0	* storage location (53) for var y
.DATA 0	* storage location (53) for var y
.DATA 0	* storage location (53) for var y
.DATA 0	* storage location (57) for var z
.DATA 0	* storage location (57) for var z
.DATA 0	* storage location (59) for var a
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
5: LDA 3, -61(5)	* Subtract the stack limit from SP - store in ACC3
6: LDC 2, 50(0)	* Load diagnostic char into ACC2
7: JLE 3, 214(4)	* stack failure
8: ST 0, 0(5)	* save ACC0 into the current SP location
9: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: assignment
10: LDC 0, 45(0)	* Load the base address into ACC0
* BEGIN: push to stack
11: LDA 3, -61(5)	* Subtract the stack limit from SP - store in ACC3
12: LDC 2, 56(0)	* Load diagnostic char into ACC2
13: JLE 3, 214(4)	* stack failure
14: ST 0, 0(5)	* save ACC0 into the current SP location
15: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: variable (rvalue) access
16: LDC 0, 53(0)	* Load the base address into ACC0
* BEGIN: push to stack
17: LDA 3, -61(5)	* Subtract the stack limit from SP - store in ACC3
18: LDC 2, 56(0)	* Load diagnostic char into ACC2
19: JLE 3, 214(4)	* stack failure
20: ST 0, 0(5)	* save ACC0 into the current SP location
21: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: variable (rvalue) access
22: LDC 0, 57(0)	* Load the base address into ACC0
* BEGIN: push to stack
23: LDA 3, -61(5)	* Subtract the stack limit from SP - store in ACC3
24: LDC 2, 56(0)	* Load diagnostic char into ACC2
25: JLE 3, 214(4)	* stack failure
26: ST 0, 0(5)	* save ACC0 into the current SP location
27: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: variable (rvalue) access
28: LD 0, 59(4)	* Load the global var into ACC0
* END: variable (rvalue) access
29: JLT 0, 203(4)	* array bounds too small
30: LDC 3, 2(0)	* Load the array bounds limit into ACC3
31: SUB 3, 0, 3	* Subtract the max from the current index
32: JGE 3, 203(4)	* array bounds too big
33: LDC 1, 1(0)	* Load the skip size into ACC1
34: MUL 1, 1, 0	* Multiply the index by the skip size and place the result back into ACC1
35: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
36: LD 0, 0(5)	* Load stored result into ACC0
37: ADD 0, 1, 0	* add the base (ACC0) and the skip size (ACC1) and put the result back in ACC0
38: LD 0, 0(0)	* Load the final dereferenced value into the specified register
* END: variable (rvalue) access
39: JLT 0, 203(4)	* array bounds too small
40: LDC 3, 2(0)	* Load the array bounds limit into ACC3
41: SUB 3, 0, 3	* Subtract the max from the current index
42: JGE 3, 203(4)	* array bounds too big
43: LDC 1, 2(0)	* Load the skip size into ACC1
44: MUL 1, 1, 0	* Multiply the index by the skip size and place the result back into ACC1
45: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
46: LD 0, 0(5)	* Load stored result into ACC0
47: ADD 0, 1, 0	* add the base (ACC0) and the skip size (ACC1) and put the result back in ACC0
* BEGIN: push to stack
48: LDA 3, -61(5)	* Subtract the stack limit from SP - store in ACC3
49: LDC 2, 56(0)	* Load diagnostic char into ACC2
50: JLE 3, 214(4)	* stack failure
51: ST 0, 0(5)	* save ACC0 into the current SP location
52: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
53: LDC 0, 0(0)	* Load a constant into ACC0
* END: load an int constant
54: JLT 0, 203(4)	* array bounds too small
55: LDC 3, 2(0)	* Load the array bounds limit into ACC3
56: SUB 3, 0, 3	* Subtract the max from the current index
57: JGE 3, 203(4)	* array bounds too big
58: LDC 1, 1(0)	* Load the skip size into ACC1
59: MUL 1, 1, 0	* Multiply the index by the skip size and place the result back into ACC1
60: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
61: LD 0, 0(5)	* Load stored result into ACC0
62: ADD 0, 1, 0	* add the base (ACC0) and the skip size (ACC1) and put the result back in ACC0
63: LD 0, 0(0)	* Load the final dereferenced value into the specified register
* END: variable (rvalue) access
64: JLT 0, 203(4)	* array bounds too small
65: LDC 3, 2(0)	* Load the array bounds limit into ACC3
66: SUB 3, 0, 3	* Subtract the max from the current index
67: JGE 3, 203(4)	* array bounds too big
68: LDC 1, 4(0)	* Load the skip size into ACC1
69: MUL 1, 1, 0	* Multiply the index by the skip size and place the result back into ACC1
70: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
71: LD 0, 0(5)	* Load stored result into ACC0
72: ADD 0, 1, 0	* add the base (ACC0) and the skip size (ACC1) and put the result back in ACC0
* BEGIN: push to stack
73: LDA 3, -61(5)	* Subtract the stack limit from SP - store in ACC3
74: LDC 2, 56(0)	* Load diagnostic char into ACC2
75: JLE 3, 214(4)	* stack failure
76: ST 0, 0(5)	* save ACC0 into the current SP location
77: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
78: LDC 0, 0(0)	* Load a constant into ACC0
* END: load an int constant
79: JLT 0, 203(4)	* array bounds too small
80: LDC 3, 2(0)	* Load the array bounds limit into ACC3
81: SUB 3, 0, 3	* Subtract the max from the current index
82: JGE 3, 203(4)	* array bounds too big
83: LDC 1, 2(0)	* Load the skip size into ACC1
84: MUL 1, 1, 0	* Multiply the index by the skip size and place the result back into ACC1
85: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
86: LD 0, 0(5)	* Load stored result into ACC0
87: ADD 0, 1, 0	* add the base (ACC0) and the skip size (ACC1) and put the result back in ACC0
* BEGIN: push to stack
88: LDA 3, -61(5)	* Subtract the stack limit from SP - store in ACC3
89: LDC 2, 56(0)	* Load diagnostic char into ACC2
90: JLE 3, 214(4)	* stack failure
91: ST 0, 0(5)	* save ACC0 into the current SP location
92: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
93: LDC 0, 0(0)	* Load a constant into ACC0
* END: load an int constant
94: JLT 0, 203(4)	* array bounds too small
95: LDC 3, 2(0)	* Load the array bounds limit into ACC3
96: SUB 3, 0, 3	* Subtract the max from the current index
97: JGE 3, 203(4)	* array bounds too big
98: LDC 1, 1(0)	* Load the skip size into ACC1
99: MUL 1, 1, 0	* Multiply the index by the skip size and place the result back into ACC1
100: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
101: LD 0, 0(5)	* Load stored result into ACC0
102: ADD 0, 1, 0	* add the base (ACC0) and the skip size (ACC1) and put the result back in ACC0
103: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
104: LD 1, 0(5)	* Load stored result into ACC1
105: ST 1, 0(0)	* Store ACC0 into global offset
* END: assignment
* BEGIN: variable (rvalue) access
106: LDC 0, 45(0)	* Load the base address into ACC0
* BEGIN: push to stack
107: LDA 3, -61(5)	* Subtract the stack limit from SP - store in ACC3
108: LDC 2, 56(0)	* Load diagnostic char into ACC2
109: JLE 3, 214(4)	* stack failure
110: ST 0, 0(5)	* save ACC0 into the current SP location
111: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: variable (rvalue) access
112: LDC 0, 53(0)	* Load the base address into ACC0
* BEGIN: push to stack
113: LDA 3, -61(5)	* Subtract the stack limit from SP - store in ACC3
114: LDC 2, 56(0)	* Load diagnostic char into ACC2
115: JLE 3, 214(4)	* stack failure
116: ST 0, 0(5)	* save ACC0 into the current SP location
117: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: variable (rvalue) access
118: LDC 0, 57(0)	* Load the base address into ACC0
* BEGIN: push to stack
119: LDA 3, -61(5)	* Subtract the stack limit from SP - store in ACC3
120: LDC 2, 56(0)	* Load diagnostic char into ACC2
121: JLE 3, 214(4)	* stack failure
122: ST 0, 0(5)	* save ACC0 into the current SP location
123: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: variable (rvalue) access
124: LD 0, 59(4)	* Load the global var into ACC0
* END: variable (rvalue) access
125: JLT 0, 203(4)	* array bounds too small
126: LDC 3, 2(0)	* Load the array bounds limit into ACC3
127: SUB 3, 0, 3	* Subtract the max from the current index
128: JGE 3, 203(4)	* array bounds too big
129: LDC 1, 1(0)	* Load the skip size into ACC1
130: MUL 1, 1, 0	* Multiply the index by the skip size and place the result back into ACC1
131: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
132: LD 0, 0(5)	* Load stored result into ACC0
133: ADD 0, 1, 0	* add the base (ACC0) and the skip size (ACC1) and put the result back in ACC0
134: LD 0, 0(0)	* Load the final dereferenced value into the specified register
* END: variable (rvalue) access
135: JLT 0, 203(4)	* array bounds too small
136: LDC 3, 2(0)	* Load the array bounds limit into ACC3
137: SUB 3, 0, 3	* Subtract the max from the current index
138: JGE 3, 203(4)	* array bounds too big
139: LDC 1, 2(0)	* Load the skip size into ACC1
140: MUL 1, 1, 0	* Multiply the index by the skip size and place the result back into ACC1
141: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
142: LD 0, 0(5)	* Load stored result into ACC0
143: ADD 0, 1, 0	* add the base (ACC0) and the skip size (ACC1) and put the result back in ACC0
* BEGIN: push to stack
144: LDA 3, -61(5)	* Subtract the stack limit from SP - store in ACC3
145: LDC 2, 56(0)	* Load diagnostic char into ACC2
146: JLE 3, 214(4)	* stack failure
147: ST 0, 0(5)	* save ACC0 into the current SP location
148: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
149: LDC 0, 0(0)	* Load a constant into ACC0
* END: load an int constant
150: JLT 0, 203(4)	* array bounds too small
151: LDC 3, 2(0)	* Load the array bounds limit into ACC3
152: SUB 3, 0, 3	* Subtract the max from the current index
153: JGE 3, 203(4)	* array bounds too big
154: LDC 1, 1(0)	* Load the skip size into ACC1
155: MUL 1, 1, 0	* Multiply the index by the skip size and place the result back into ACC1
156: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
157: LD 0, 0(5)	* Load stored result into ACC0
158: ADD 0, 1, 0	* add the base (ACC0) and the skip size (ACC1) and put the result back in ACC0
159: LD 0, 0(0)	* Load the final dereferenced value into the specified register
* END: variable (rvalue) access
160: JLT 0, 203(4)	* array bounds too small
161: LDC 3, 2(0)	* Load the array bounds limit into ACC3
162: SUB 3, 0, 3	* Subtract the max from the current index
163: JGE 3, 203(4)	* array bounds too big
164: LDC 1, 4(0)	* Load the skip size into ACC1
165: MUL 1, 1, 0	* Multiply the index by the skip size and place the result back into ACC1
166: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
167: LD 0, 0(5)	* Load stored result into ACC0
168: ADD 0, 1, 0	* add the base (ACC0) and the skip size (ACC1) and put the result back in ACC0
* BEGIN: push to stack
169: LDA 3, -61(5)	* Subtract the stack limit from SP - store in ACC3
170: LDC 2, 56(0)	* Load diagnostic char into ACC2
171: JLE 3, 214(4)	* stack failure
172: ST 0, 0(5)	* save ACC0 into the current SP location
173: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
174: LDC 0, 0(0)	* Load a constant into ACC0
* END: load an int constant
175: JLT 0, 203(4)	* array bounds too small
176: LDC 3, 2(0)	* Load the array bounds limit into ACC3
177: SUB 3, 0, 3	* Subtract the max from the current index
178: JGE 3, 203(4)	* array bounds too big
179: LDC 1, 2(0)	* Load the skip size into ACC1
180: MUL 1, 1, 0	* Multiply the index by the skip size and place the result back into ACC1
181: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
182: LD 0, 0(5)	* Load stored result into ACC0
183: ADD 0, 1, 0	* add the base (ACC0) and the skip size (ACC1) and put the result back in ACC0
* BEGIN: push to stack
184: LDA 3, -61(5)	* Subtract the stack limit from SP - store in ACC3
185: LDC 2, 56(0)	* Load diagnostic char into ACC2
186: JLE 3, 214(4)	* stack failure
187: ST 0, 0(5)	* save ACC0 into the current SP location
188: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
189: LDC 0, 0(0)	* Load a constant into ACC0
* END: load an int constant
190: JLT 0, 203(4)	* array bounds too small
191: LDC 3, 2(0)	* Load the array bounds limit into ACC3
192: SUB 3, 0, 3	* Subtract the max from the current index
193: JGE 3, 203(4)	* array bounds too big
194: LDC 1, 1(0)	* Load the skip size into ACC1
195: MUL 1, 1, 0	* Multiply the index by the skip size and place the result back into ACC1
196: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
197: LD 0, 0(5)	* Load stored result into ACC0
198: ADD 0, 1, 0	* add the base (ACC0) and the skip size (ACC1) and put the result back in ACC0
199: LD 0, 0(0)	* Load the final dereferenced value into the specified register
* END: variable (rvalue) access
* BEGIN: write(s)
200: OUT 0, 0, 0	* write out the int value in ACC0
201: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
202: HALT 0, 0, 0	* End of Program
* BEGIN: array bounds message handler
203: LDC 0, 1(0)	* Load the error message into ACC0
204: LDA 1, 1(0)	* Increment the address stored in ACC0 to get the string's char location (put in ACC1)
205: LD 0, 0(0)	* Load the string size into ACC0
206: JEQ 0, 5(7)	* Jump to end when run out of string
207: LDA 0, -1(0)	* subtract one from string size
208: LD 2, 0(1)	* Load next char from string into ACC2
209: LDA 1, 1(1)	* increment pointer into string
210: OUTC 2, 0, 0	* Write out character in ACC2
211: LDA 7, -6(7)	* Go back to start of loop
212: OUTNL 0, 0, 0	* dump out the newline
213: HALT 0, 0, 0	* Halt for array bounds
* END: array bounds message handler
* BEGIN: stack limit message handler
214: LDC 0, 25(0)	* Load the error message into ACC0
215: LDA 1, 1(0)	* Increment the address stored in ACC0 to get the string's char location (put in ACC1)
216: LD 0, 0(0)	* Load the string size into ACC0
217: JEQ 0, 5(7)	* Jump to end when run out of string
218: LDA 0, -1(0)	* subtract one from string size
219: LD 3, 0(1)	* Load next char from string into ACC3
220: LDA 1, 1(1)	* increment pointer into string
221: OUTC 3, 0, 0	* Write out character in ACC3
222: LDA 7, -6(7)	* Go back to start of loop
223: OUTC 2, 0, 0	* Write out diagnostic char in ACC2
224: OUTNL 0, 0, 0	* dump out the newline
225: HALT 0, 0, 0	* Halt for stack limit
* END: stack limit message handler
