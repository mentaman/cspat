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
4: LDA 0, 13(7)	* Get return address into ACC0
5: LDA 3, -49(5)	* Subtract the stack limit from SP - store in ACC3
6: LDC 2, 97(0)	* Load diagnostic char into ACC2
7: JLE 3, 207(4)	* stack failure
8: ST 0, 0(5)	* Store return address (in ACC0) to SP/FP
* return value sits at SP-1/FP-1
9: ST 5, -2(5)	* Store SP to SP-2/FP-2
10: ST 6, -3(5)	* Store FP to SP-3/FP-3
11: LDA 5, -4(5)	* decrement SP by 4 (i.e., 4 pushes)
12: LDA 3, -47(5)	* Subtract the stack limit from SP - store in ACC3
13: LDC 2, 99(0)	* Load diagnostic char into ACC2
14: JLE 3, 207(4)	* stack failure
15: LDA 5, -2(5)	* decrement SP by local var's size (i.e., push)
16: LDA 6, 6(5)	* Set FP to be the "pre-push of AR" SP
* SP already points to end of the AR
17: LDA 7, 92(4)	* Jump to the start of the proc
18: LD 5, -2(6)	* Restore SP from FP-2
19: LD 6, -3(6)	* Restore FP from FP-3
* END: procedure call
20: HALT 0, 0, 0	* End of Program
* BEGIN: procedure code
21: LDA 0, 0(0)	* NOOP to mark beginning of proc
* BEGIN: variable (rvalue) access
22: LD 0, -4(6)	* Load the base address out of the AR
* BEGIN: push to stack
23: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
24: LDC 2, 56(0)	* Load diagnostic char into ACC2
25: JLE 3, 207(4)	* stack failure
26: ST 0, 0(5)	* save ACC0 into the current SP location
27: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
28: LDC 0, 0(0)	* Load a constant into ACC0
* END: load an int constant
29: JLT 0, 196(4)	* array bounds too small
30: LDC 3, 1(0)	* Load the array bounds limit into ACC3
31: SUB 3, 0, 3	* Subtract the max from the current index
32: JGE 3, 196(4)	* array bounds too big
33: LDC 1, 2(0)	* Load the skip size into ACC1
34: MUL 1, 1, 0	* Multiply the index by the skip size and place the result back into ACC1
35: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
36: LD 0, 0(5)	* Load stored result into ACC0
37: ADD 0, 1, 0	* add the base (ACC0) and the skip size (ACC1) and put the result back in ACC0
* BEGIN: push to stack
38: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
39: LDC 2, 56(0)	* Load diagnostic char into ACC2
40: JLE 3, 207(4)	* stack failure
41: ST 0, 0(5)	* save ACC0 into the current SP location
42: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
43: LDC 0, 0(0)	* Load a constant into ACC0
* END: load an int constant
44: JLT 0, 196(4)	* array bounds too small
45: LDC 3, 2(0)	* Load the array bounds limit into ACC3
46: SUB 3, 0, 3	* Subtract the max from the current index
47: JGE 3, 196(4)	* array bounds too big
48: LDC 1, 1(0)	* Load the skip size into ACC1
49: MUL 1, 1, 0	* Multiply the index by the skip size and place the result back into ACC1
50: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
51: LD 0, 0(5)	* Load stored result into ACC0
52: ADD 0, 1, 0	* add the base (ACC0) and the skip size (ACC1) and put the result back in ACC0
53: LD 0, 0(0)	* Load the final dereferenced value into the specified register
* END: variable (rvalue) access
* BEGIN: write(s)
54: OUT 0, 0, 0	* write out the int value in ACC0
55: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
* BEGIN: variable (rvalue) access
56: LD 0, -4(6)	* Load the base address out of the AR
* BEGIN: push to stack
57: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
58: LDC 2, 56(0)	* Load diagnostic char into ACC2
59: JLE 3, 207(4)	* stack failure
60: ST 0, 0(5)	* save ACC0 into the current SP location
61: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
62: LDC 0, 0(0)	* Load a constant into ACC0
* END: load an int constant
63: JLT 0, 196(4)	* array bounds too small
64: LDC 3, 1(0)	* Load the array bounds limit into ACC3
65: SUB 3, 0, 3	* Subtract the max from the current index
66: JGE 3, 196(4)	* array bounds too big
67: LDC 1, 2(0)	* Load the skip size into ACC1
68: MUL 1, 1, 0	* Multiply the index by the skip size and place the result back into ACC1
69: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
70: LD 0, 0(5)	* Load stored result into ACC0
71: ADD 0, 1, 0	* add the base (ACC0) and the skip size (ACC1) and put the result back in ACC0
* BEGIN: push to stack
72: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
73: LDC 2, 56(0)	* Load diagnostic char into ACC2
74: JLE 3, 207(4)	* stack failure
75: ST 0, 0(5)	* save ACC0 into the current SP location
76: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
77: LDC 0, 1(0)	* Load a constant into ACC0
* END: load an int constant
78: JLT 0, 196(4)	* array bounds too small
79: LDC 3, 2(0)	* Load the array bounds limit into ACC3
80: SUB 3, 0, 3	* Subtract the max from the current index
81: JGE 3, 196(4)	* array bounds too big
82: LDC 1, 1(0)	* Load the skip size into ACC1
83: MUL 1, 1, 0	* Multiply the index by the skip size and place the result back into ACC1
84: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
85: LD 0, 0(5)	* Load stored result into ACC0
86: ADD 0, 1, 0	* add the base (ACC0) and the skip size (ACC1) and put the result back in ACC0
87: LD 0, 0(0)	* Load the final dereferenced value into the specified register
* END: variable (rvalue) access
* BEGIN: write(s)
88: OUT 0, 0, 0	* write out the int value in ACC0
89: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
90: LD 0, 0(6)	* Load the return address from the 1st slot in the AR to ACC0
91: LDA 7, 0(0)	* Return to calling location (stored in ACC0)
* END: procedure code
* BEGIN: procedure code
92: LDA 0, 0(0)	* NOOP to mark beginning of proc
* BEGIN: load an int constant
93: LDC 0, 13(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: push to stack
94: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
95: LDC 2, 50(0)	* Load diagnostic char into ACC2
96: JLE 3, 207(4)	* stack failure
97: ST 0, 0(5)	* save ACC0 into the current SP location
98: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: assignment
99: LDC 0, -5(0)	* Load the base address into ACC0
* BEGIN: push to stack
100: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
101: LDC 2, 56(0)	* Load diagnostic char into ACC2
102: JLE 3, 207(4)	* stack failure
103: ST 0, 0(5)	* save ACC0 into the current SP location
104: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
105: LDC 0, 0(0)	* Load a constant into ACC0
* END: load an int constant
106: JLT 0, 196(4)	* array bounds too small
107: LDC 3, 1(0)	* Load the array bounds limit into ACC3
108: SUB 3, 0, 3	* Subtract the max from the current index
109: JGE 3, 196(4)	* array bounds too big
110: LDC 1, 2(0)	* Load the skip size into ACC1
111: MUL 1, 1, 0	* Multiply the index by the skip size and place the result back into ACC1
112: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
113: LD 0, 0(5)	* Load stored result into ACC0
114: ADD 0, 1, 0	* add the base (ACC0) and the skip size (ACC1) and put the result back in ACC0
* BEGIN: push to stack
115: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
116: LDC 2, 56(0)	* Load diagnostic char into ACC2
117: JLE 3, 207(4)	* stack failure
118: ST 0, 0(5)	* save ACC0 into the current SP location
119: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
120: LDC 0, 0(0)	* Load a constant into ACC0
* END: load an int constant
121: JLT 0, 196(4)	* array bounds too small
122: LDC 3, 2(0)	* Load the array bounds limit into ACC3
123: SUB 3, 0, 3	* Subtract the max from the current index
124: JGE 3, 196(4)	* array bounds too big
125: LDC 1, 1(0)	* Load the skip size into ACC1
126: MUL 1, 1, 0	* Multiply the index by the skip size and place the result back into ACC1
127: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
128: LD 0, 0(5)	* Load stored result into ACC0
129: ADD 0, 1, 0	* add the base (ACC0) and the skip size (ACC1) and put the result back in ACC0
130: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
131: LD 1, 0(5)	* Load stored result into ACC1
132: ADD 0, 0, 6	* Add FP to the relative offset
133: ST 1, 0(0)	* Store ACC0 into local offset (relative to FP)
* END: assignment
* BEGIN: load an int constant
134: LDC 0, 16(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: push to stack
135: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
136: LDC 2, 50(0)	* Load diagnostic char into ACC2
137: JLE 3, 207(4)	* stack failure
138: ST 0, 0(5)	* save ACC0 into the current SP location
139: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: assignment
140: LDC 0, -5(0)	* Load the base address into ACC0
* BEGIN: push to stack
141: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
142: LDC 2, 56(0)	* Load diagnostic char into ACC2
143: JLE 3, 207(4)	* stack failure
144: ST 0, 0(5)	* save ACC0 into the current SP location
145: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
146: LDC 0, 0(0)	* Load a constant into ACC0
* END: load an int constant
147: JLT 0, 196(4)	* array bounds too small
148: LDC 3, 1(0)	* Load the array bounds limit into ACC3
149: SUB 3, 0, 3	* Subtract the max from the current index
150: JGE 3, 196(4)	* array bounds too big
151: LDC 1, 2(0)	* Load the skip size into ACC1
152: MUL 1, 1, 0	* Multiply the index by the skip size and place the result back into ACC1
153: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
154: LD 0, 0(5)	* Load stored result into ACC0
155: ADD 0, 1, 0	* add the base (ACC0) and the skip size (ACC1) and put the result back in ACC0
* BEGIN: push to stack
156: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
157: LDC 2, 56(0)	* Load diagnostic char into ACC2
158: JLE 3, 207(4)	* stack failure
159: ST 0, 0(5)	* save ACC0 into the current SP location
160: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
161: LDC 0, 1(0)	* Load a constant into ACC0
* END: load an int constant
162: JLT 0, 196(4)	* array bounds too small
163: LDC 3, 2(0)	* Load the array bounds limit into ACC3
164: SUB 3, 0, 3	* Subtract the max from the current index
165: JGE 3, 196(4)	* array bounds too big
166: LDC 1, 1(0)	* Load the skip size into ACC1
167: MUL 1, 1, 0	* Multiply the index by the skip size and place the result back into ACC1
168: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
169: LD 0, 0(5)	* Load stored result into ACC0
170: ADD 0, 1, 0	* add the base (ACC0) and the skip size (ACC1) and put the result back in ACC0
171: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
172: LD 1, 0(5)	* Load stored result into ACC1
173: ADD 0, 0, 6	* Add FP to the relative offset
174: ST 1, 0(0)	* Store ACC0 into local offset (relative to FP)
* END: assignment
* BEGIN: procedure call
175: LDA 0, 16(7)	* Get return address into ACC0
176: LDA 3, -49(5)	* Subtract the stack limit from SP - store in ACC3
177: LDC 2, 97(0)	* Load diagnostic char into ACC2
178: JLE 3, 207(4)	* stack failure
179: ST 0, 0(5)	* Store return address (in ACC0) to SP/FP
* return value sits at SP-1/FP-1
180: ST 5, -2(5)	* Store SP to SP-2/FP-2
181: ST 6, -3(5)	* Store FP to SP-3/FP-3
182: LDA 5, -4(5)	* decrement SP by 4 (i.e., 4 pushes)
* BEGIN: variable (rvalue) access
183: LDC 0, -5(0)	* Load the base address into ACC0
184: ADD 0, 0, 6	* Add the array offset to FP for a local access
* END: variable (rvalue) access
185: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
186: LDC 2, 98(0)	* Load diagnostic char into ACC2
187: JLE 3, 207(4)	* stack failure
188: ST 0, 0(5)	* Store param in slot
189: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
190: LDA 6, 5(5)	* Set FP to be the "pre-push of AR" SP
* SP already points to end of the AR
191: LDA 7, 21(4)	* Jump to the start of the proc
192: LD 5, -2(6)	* Restore SP from FP-2
193: LD 6, -3(6)	* Restore FP from FP-3
* END: procedure call
194: LD 0, 0(6)	* Load the return address from the 1st slot in the AR to ACC0
195: LDA 7, 0(0)	* Return to calling location (stored in ACC0)
* END: procedure code
* BEGIN: array bounds message handler
196: LDC 0, 1(0)	* Load the error message into ACC0
197: LDA 1, 1(0)	* Increment the address stored in ACC0 to get the string's char location (put in ACC1)
198: LD 0, 0(0)	* Load the string size into ACC0
199: JEQ 0, 5(7)	* Jump to end when run out of string
200: LDA 0, -1(0)	* subtract one from string size
201: LD 2, 0(1)	* Load next char from string into ACC2
202: LDA 1, 1(1)	* increment pointer into string
203: OUTC 2, 0, 0	* Write out character in ACC2
204: LDA 7, -6(7)	* Go back to start of loop
205: OUTNL 0, 0, 0	* dump out the newline
206: HALT 0, 0, 0	* Halt for array bounds
* END: array bounds message handler
* BEGIN: stack limit message handler
207: LDC 0, 25(0)	* Load the error message into ACC0
208: LDA 1, 1(0)	* Increment the address stored in ACC0 to get the string's char location (put in ACC1)
209: LD 0, 0(0)	* Load the string size into ACC0
210: JEQ 0, 5(7)	* Jump to end when run out of string
211: LDA 0, -1(0)	* subtract one from string size
212: LD 3, 0(1)	* Load next char from string into ACC3
213: LDA 1, 1(1)	* increment pointer into string
214: OUTC 3, 0, 0	* Write out character in ACC3
215: LDA 7, -6(7)	* Go back to start of loop
216: OUTC 2, 0, 0	* Write out diagnostic char in ACC2
217: OUTNL 0, 0, 0	* dump out the newline
218: HALT 0, 0, 0	* Halt for stack limit
* END: stack limit message handler
