.DATA 23	* string length
.SDATA "Arrays bounds violation"	* string constant
.DATA 19	* string length
.SDATA "Out of stack space "	* string constant
.DATA 30	* string length
.SDATA "Input length of array (1-100):"	* string constant
.DATA 5	* string length
.SDATA "wrong"	* string constant
.DATA 6	* string length
.SDATA "Input "	* string constant
.DATA 2	* string length
.SDATA ": "	* string constant
.DATA 12	* string length
.SDATA "Sorted list:"	* string constant
.DATA 0	* storage location (105) for var n
.DATA 0	* storage location (106) for var t
.DATA 0	* storage location (107) for var a
.DATA 0	* storage location (107) for var a
.DATA 0	* storage location (107) for var a
.DATA 0	* storage location (107) for var a
.DATA 0	* storage location (107) for var a
.DATA 0	* storage location (107) for var a
.DATA 0	* storage location (107) for var a
.DATA 0	* storage location (107) for var a
.DATA 0	* storage location (107) for var a
.DATA 0	* storage location (107) for var a
.DATA 0	* storage location (107) for var a
.DATA 0	* storage location (107) for var a
.DATA 0	* storage location (107) for var a
.DATA 0	* storage location (107) for var a
.DATA 0	* storage location (107) for var a
.DATA 0	* storage location (107) for var a
.DATA 0	* storage location (107) for var a
.DATA 0	* storage location (107) for var a
.DATA 0	* storage location (107) for var a
.DATA 0	* storage location (107) for var a
.DATA 0	* storage location (107) for var a
.DATA 0	* storage location (107) for var a
.DATA 0	* storage location (107) for var a
.DATA 0	* storage location (107) for var a
.DATA 0	* storage location (107) for var a
.DATA 0	* storage location (107) for var a
.DATA 0	* storage location (107) for var a
.DATA 0	* storage location (107) for var a
.DATA 0	* storage location (107) for var a
.DATA 0	* storage location (107) for var a
.DATA 0	* storage location (107) for var a
.DATA 0	* storage location (107) for var a
.DATA 0	* storage location (107) for var a
.DATA 0	* storage location (107) for var a
.DATA 0	* storage location (107) for var a
.DATA 0	* storage location (107) for var a
.DATA 0	* storage location (107) for var a
.DATA 0	* storage location (107) for var a
.DATA 0	* storage location (107) for var a
.DATA 0	* storage location (107) for var a
.DATA 0	* storage location (107) for var a
.DATA 0	* storage location (107) for var a
.DATA 0	* storage location (107) for var a
.DATA 0	* storage location (107) for var a
.DATA 0	* storage location (107) for var a
.DATA 0	* storage location (107) for var a
.DATA 0	* storage location (107) for var a
.DATA 0	* storage location (107) for var a
.DATA 0	* storage location (107) for var a
.DATA 0	* storage location (107) for var a
.DATA 0	* storage location (107) for var a
.DATA 0	* storage location (107) for var a
.DATA 0	* storage location (107) for var a
.DATA 0	* storage location (107) for var a
.DATA 0	* storage location (107) for var a
.DATA 0	* storage location (107) for var a
.DATA 0	* storage location (107) for var a
.DATA 0	* storage location (107) for var a
.DATA 0	* storage location (107) for var a
.DATA 0	* storage location (107) for var a
.DATA 0	* storage location (107) for var a
.DATA 0	* storage location (107) for var a
.DATA 0	* storage location (107) for var a
.DATA 0	* storage location (107) for var a
.DATA 0	* storage location (107) for var a
.DATA 0	* storage location (107) for var a
.DATA 0	* storage location (107) for var a
.DATA 0	* storage location (107) for var a
.DATA 0	* storage location (107) for var a
.DATA 0	* storage location (107) for var a
.DATA 0	* storage location (107) for var a
.DATA 0	* storage location (107) for var a
.DATA 0	* storage location (107) for var a
.DATA 0	* storage location (107) for var a
.DATA 0	* storage location (107) for var a
.DATA 0	* storage location (107) for var a
.DATA 0	* storage location (107) for var a
.DATA 0	* storage location (107) for var a
.DATA 0	* storage location (107) for var a
.DATA 0	* storage location (107) for var a
.DATA 0	* storage location (107) for var a
.DATA 0	* storage location (107) for var a
.DATA 0	* storage location (107) for var a
.DATA 0	* storage location (107) for var a
.DATA 0	* storage location (107) for var a
.DATA 0	* storage location (107) for var a
.DATA 0	* storage location (107) for var a
.DATA 0	* storage location (107) for var a
.DATA 0	* storage location (107) for var a
.DATA 0	* storage location (107) for var a
.DATA 0	* storage location (107) for var a
.DATA 0	* storage location (107) for var a
.DATA 0	* storage location (107) for var a
.DATA 0	* storage location (107) for var a
.DATA 0	* storage location (107) for var a
.DATA 0	* storage location (107) for var a
.DATA 0	* storage location (107) for var a
.DATA 0	* storage location (107) for var a
.DATA 0	* storage location (107) for var a
.DATA 0	* storage location (107) for var a
.DATA 0	* storage location (207) for var i
.DATA 0	* storage location (208) for var $-i
.DATA 0	* storage location (209) for var j
.DATA 0	* storage location (210) for var $-j
.DATA 0	* storage location (211) for var i
.DATA 0	* storage location (212) for var $-i
.DATA 0	* storage location (213) for var i
.DATA 0	* storage location (214) for var $-i
* BEGIN preamble
0: LDC 4, 0(0)	* initialize ZEROREG to 0
1: LD 5, 0(4)	* initialize SP to end of memory
2: LDA 5, -1(5)	* subtract one to get the true SP
3: LDA 6, 0(5)	* FP and SP start off the same
* END preamble
* BEGIN: load a string's location into ACC0
4: LDC 0, 45(0)	* Load a string's location into ACC0
* END: load a string's location into ACC0
* BEGIN: write(s)
5: LDA 1, 1(0)	* Increment the address stored in ACC0 to get the string's char location (put in ACC1)
6: LD 0, 0(0)	* Load the string size into ACC0
7: JEQ 0, 5(7)	* Jump to end when run out of string
8: LDA 0, -1(0)	* subtract one from string size
9: LD 2, 0(1)	* Load next char from string into ACC2
10: LDA 1, 1(1)	* increment pointer into string
11: OUTC 2, 0, 0	* Write out character in ACC2
12: LDA 7, -6(7)	* Go back to start of loop
13: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
14: IN 0, 0, 0	* Read into ACC0
* BEGIN: push to stack
15: LDA 3, -216(5)	* Subtract the stack limit from SP - store in ACC3
16: LDC 2, 50(0)	* Load diagnostic char into ACC2
17: JLE 3, 483(4)	* stack failure
18: ST 0, 0(5)	* save ACC0 into the current SP location
19: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: assignment
20: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
21: LD 0, 0(5)	* Load stored result into ACC0
22: ST 0, 105(4)	* Store ACC0 into global offset
* END: assignment
* BEGIN: variable (rvalue) access
23: LD 0, 105(4)	* Load the global var into ACC0
* END: variable (rvalue) access
* BEGIN: push to stack
24: LDA 3, -216(5)	* Subtract the stack limit from SP - store in ACC3
25: LDC 2, 51(0)	* Load diagnostic char into ACC2
26: JLE 3, 483(4)	* stack failure
27: ST 0, 0(5)	* save ACC0 into the current SP location
28: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
29: LDC 0, 1(0)	* Load a constant into ACC0
* END: load an int constant
30: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
31: LD 1, 0(5)	* Load stored result into ACC1
* BEGIN: <
32: SUB 0, 1, 0	* for <, subtract right from left
33: JLT 0, 2(7)	* Jump to Load 1 if ACC0 < 0
34: LDC 0, 0(0)	* Load 0 into ACC0
35: LDA 7, 1(7)	* Jump over Load 1
36: LDC 0, 1(0)	* Load 1 into ACC0
* END: <
37: JGT 0, 24(7)	* Jump over rest of logical or code
* BEGIN: push to stack
38: LDA 3, -216(5)	* Subtract the stack limit from SP - store in ACC3
39: LDC 2, 57(0)	* Load diagnostic char into ACC2
40: JLE 3, 483(4)	* stack failure
41: ST 0, 0(5)	* save ACC0 into the current SP location
42: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: variable (rvalue) access
43: LD 0, 105(4)	* Load the global var into ACC0
* END: variable (rvalue) access
* BEGIN: push to stack
44: LDA 3, -216(5)	* Subtract the stack limit from SP - store in ACC3
45: LDC 2, 51(0)	* Load diagnostic char into ACC2
46: JLE 3, 483(4)	* stack failure
47: ST 0, 0(5)	* save ACC0 into the current SP location
48: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
49: LDC 0, 100(0)	* Load a constant into ACC0
* END: load an int constant
50: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
51: LD 1, 0(5)	* Load stored result into ACC1
* BEGIN: >
52: SUB 0, 1, 0	* for >, subtract right from left
53: JGT 0, 2(7)	* Jump to Load 1 if ACC0 > 0
54: LDC 0, 0(0)	* Load 0 into ACC0
55: LDA 7, 1(7)	* Jump over Load 1
56: LDC 0, 1(0)	* Load 1 into ACC0
* END: >
57: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
58: LD 1, 0(5)	* Load stored result into ACC1
59: ADD 0, 1, 0	* for OR, add right and left
60: JEQ 0, 1(7)	* Jump over Load 1 if ACC0 == 0
61: LDC 0, 1(0)	* Load 1 into ACC0
62: JEQ 0, 11(7)	* Jump over the then stmts if false
* BEGIN: load a string's location into ACC0
63: LDC 0, 76(0)	* Load a string's location into ACC0
* END: load a string's location into ACC0
* BEGIN: write(s)
64: LDA 1, 1(0)	* Increment the address stored in ACC0 to get the string's char location (put in ACC1)
65: LD 0, 0(0)	* Load the string size into ACC0
66: JEQ 0, 5(7)	* Jump to end when run out of string
67: LDA 0, -1(0)	* subtract one from string size
68: LD 2, 0(1)	* Load next char from string into ACC2
69: LDA 1, 1(1)	* increment pointer into string
70: OUTC 2, 0, 0	* Write out character in ACC2
71: LDA 7, -6(7)	* Go back to start of loop
72: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
* BEGIN: exit
73: HALT 0, 0, 0	* exit
* END: exit
* BEGIN: variable (rvalue) access
74: LD 0, 105(4)	* Load the global var into ACC0
* END: variable (rvalue) access
* BEGIN: push to stack
75: LDA 3, -216(5)	* Subtract the stack limit from SP - store in ACC3
76: LDC 2, 55(0)	* Load diagnostic char into ACC2
77: JLE 3, 483(4)	* stack failure
78: ST 0, 0(5)	* save ACC0 into the current SP location
79: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
80: LDC 0, 1(0)	* Load a constant into ACC0
* END: load an int constant
81: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
82: LD 1, 0(5)	* Load stored result into ACC1
83: SUB 0, 1, 0	* Subtract ACC0 from ACC1 placing result in ACC0
* BEGIN: push to stack
84: LDA 3, -216(5)	* Subtract the stack limit from SP - store in ACC3
85: LDC 2, 50(0)	* Load diagnostic char into ACC2
86: JLE 3, 483(4)	* stack failure
87: ST 0, 0(5)	* save ACC0 into the current SP location
88: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: assignment
89: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
90: LD 0, 0(5)	* Load stored result into ACC0
91: ST 0, 105(4)	* Store ACC0 into global offset
* END: assignment
* BEGIN: for loop
* BEGIN: load an int constant
92: LDC 0, 0(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: save initial value to loop var
* BEGIN: push to stack
93: LDA 3, -216(5)	* Subtract the stack limit from SP - store in ACC3
94: LDC 2, 52(0)	* Load diagnostic char into ACC2
95: JLE 3, 483(4)	* stack failure
96: ST 0, 0(5)	* save ACC0 into the current SP location
97: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
98: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
99: LD 0, 0(5)	* Load stored result into ACC0
100: ST 0, 207(4)	* Store ACC0 into global offset
* END: save initial value to loop var
* BEGIN: variable (rvalue) access
101: LD 0, 105(4)	* Load the global var into ACC0
* END: variable (rvalue) access
* BEGIN: save max value to max loop var
* BEGIN: push to stack
102: LDA 3, -216(5)	* Subtract the stack limit from SP - store in ACC3
103: LDC 2, 53(0)	* Load diagnostic char into ACC2
104: JLE 3, 483(4)	* stack failure
105: ST 0, 0(5)	* save ACC0 into the current SP location
106: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
107: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
108: LD 0, 0(5)	* Load stored result into ACC0
109: ST 0, 208(4)	* Store ACC0 into global offset
* END: save max value to max loop var
110: LDA 5, 0(5)	* NOOP to mark top of loop
111: LD 0, 207(4)	* Load the global var into ACC0
112: LD 1, 208(4)	* Load the global var into ACC0
113: SUB 1, 1, 0	* Subtract the loop var from the max
114: JLT 1, 180(4)	* go to the loop exit
* BEGIN: body of for loop
* BEGIN: load a string's location into ACC0
115: LDC 0, 82(0)	* Load a string's location into ACC0
* END: load a string's location into ACC0
* BEGIN: write(s)
116: LDA 1, 1(0)	* Increment the address stored in ACC0 to get the string's char location (put in ACC1)
117: LD 0, 0(0)	* Load the string size into ACC0
118: JEQ 0, 5(7)	* Jump to end when run out of string
119: LDA 0, -1(0)	* subtract one from string size
120: LD 2, 0(1)	* Load next char from string into ACC2
121: LDA 1, 1(1)	* increment pointer into string
122: OUTC 2, 0, 0	* Write out character in ACC2
123: LDA 7, -6(7)	* Go back to start of loop
* END: write(s)
* BEGIN: variable (rvalue) access
124: LD 0, 207(4)	* Load the global var into ACC0
* END: variable (rvalue) access
* BEGIN: push to stack
125: LDA 3, -216(5)	* Subtract the stack limit from SP - store in ACC3
126: LDC 2, 55(0)	* Load diagnostic char into ACC2
127: JLE 3, 483(4)	* stack failure
128: ST 0, 0(5)	* save ACC0 into the current SP location
129: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
130: LDC 0, 1(0)	* Load a constant into ACC0
* END: load an int constant
131: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
132: LD 1, 0(5)	* Load stored result into ACC1
133: ADD 0, 0, 1	* Add ACC0 & ACC1 placing result in ACC0
* BEGIN: write(s)
134: OUT 0, 0, 0	* write out the int value in ACC0
* END: write(s)
* BEGIN: load a string's location into ACC0
135: LDC 0, 89(0)	* Load a string's location into ACC0
* END: load a string's location into ACC0
* BEGIN: write(s)
136: LDA 1, 1(0)	* Increment the address stored in ACC0 to get the string's char location (put in ACC1)
137: LD 0, 0(0)	* Load the string size into ACC0
138: JEQ 0, 5(7)	* Jump to end when run out of string
139: LDA 0, -1(0)	* subtract one from string size
140: LD 2, 0(1)	* Load next char from string into ACC2
141: LDA 1, 1(1)	* increment pointer into string
142: OUTC 2, 0, 0	* Write out character in ACC2
143: LDA 7, -6(7)	* Go back to start of loop
* END: write(s)
144: IN 0, 0, 0	* Read into ACC0
* BEGIN: push to stack
145: LDA 3, -216(5)	* Subtract the stack limit from SP - store in ACC3
146: LDC 2, 50(0)	* Load diagnostic char into ACC2
147: JLE 3, 483(4)	* stack failure
148: ST 0, 0(5)	* save ACC0 into the current SP location
149: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: assignment
150: LDC 0, 107(0)	* Load the base address into ACC0
* BEGIN: push to stack
151: LDA 3, -216(5)	* Subtract the stack limit from SP - store in ACC3
152: LDC 2, 56(0)	* Load diagnostic char into ACC2
153: JLE 3, 483(4)	* stack failure
154: ST 0, 0(5)	* save ACC0 into the current SP location
155: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: variable (rvalue) access
156: LD 0, 207(4)	* Load the global var into ACC0
* END: variable (rvalue) access
157: JLT 0, 472(4)	* array bounds too small
158: LDC 3, 100(0)	* Load the array bounds limit into ACC3
159: SUB 3, 0, 3	* Subtract the max from the current index
160: JGE 3, 472(4)	* array bounds too big
161: LDC 1, 1(0)	* Load the skip size into ACC1
162: MUL 1, 1, 0	* Multiply the index by the skip size and place the result back into ACC1
163: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
164: LD 0, 0(5)	* Load stored result into ACC0
165: ADD 0, 1, 0	* add the base (ACC0) and the skip size (ACC1) and put the result back in ACC0
166: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
167: LD 1, 0(5)	* Load stored result into ACC1
168: ST 1, 0(0)	* Store ACC0 into global offset
* END: assignment
* END: body of for loop
169: LD 0, 207(4)	* Load the global var into ACC0
170: LDA 0, 1(0)	* increment the loop var
* BEGIN: push to stack
171: LDA 3, -216(5)	* Subtract the stack limit from SP - store in ACC3
172: LDC 2, 54(0)	* Load diagnostic char into ACC2
173: JLE 3, 483(4)	* stack failure
174: ST 0, 0(5)	* save ACC0 into the current SP location
175: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
176: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
177: LD 0, 0(5)	* Load stored result into ACC0
178: ST 0, 207(4)	* Store ACC0 into global offset
179: LDA 7, 110(4)	* return to the top of the loop
180: LDA 5, 0(5)	* NOOP to mark end of loop
* END: for loop
* BEGIN: for loop
* BEGIN: load an int constant
181: LDC 0, 0(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: save initial value to loop var
* BEGIN: push to stack
182: LDA 3, -216(5)	* Subtract the stack limit from SP - store in ACC3
183: LDC 2, 52(0)	* Load diagnostic char into ACC2
184: JLE 3, 483(4)	* stack failure
185: ST 0, 0(5)	* save ACC0 into the current SP location
186: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
187: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
188: LD 0, 0(5)	* Load stored result into ACC0
189: ST 0, 211(4)	* Store ACC0 into global offset
* END: save initial value to loop var
* BEGIN: variable (rvalue) access
190: LD 0, 105(4)	* Load the global var into ACC0
* END: variable (rvalue) access
* BEGIN: push to stack
191: LDA 3, -216(5)	* Subtract the stack limit from SP - store in ACC3
192: LDC 2, 55(0)	* Load diagnostic char into ACC2
193: JLE 3, 483(4)	* stack failure
194: ST 0, 0(5)	* save ACC0 into the current SP location
195: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
196: LDC 0, 1(0)	* Load a constant into ACC0
* END: load an int constant
197: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
198: LD 1, 0(5)	* Load stored result into ACC1
199: SUB 0, 1, 0	* Subtract ACC0 from ACC1 placing result in ACC0
* BEGIN: save max value to max loop var
* BEGIN: push to stack
200: LDA 3, -216(5)	* Subtract the stack limit from SP - store in ACC3
201: LDC 2, 53(0)	* Load diagnostic char into ACC2
202: JLE 3, 483(4)	* stack failure
203: ST 0, 0(5)	* save ACC0 into the current SP location
204: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
205: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
206: LD 0, 0(5)	* Load stored result into ACC0
207: ST 0, 212(4)	* Store ACC0 into global offset
* END: save max value to max loop var
208: LDA 5, 0(5)	* NOOP to mark top of loop
209: LD 0, 211(4)	* Load the global var into ACC0
210: LD 1, 212(4)	* Load the global var into ACC0
211: SUB 1, 1, 0	* Subtract the loop var from the max
212: JLT 1, 406(4)	* go to the loop exit
* BEGIN: body of for loop
* BEGIN: for loop
* BEGIN: variable (rvalue) access
213: LD 0, 211(4)	* Load the global var into ACC0
* END: variable (rvalue) access
* BEGIN: push to stack
214: LDA 3, -216(5)	* Subtract the stack limit from SP - store in ACC3
215: LDC 2, 55(0)	* Load diagnostic char into ACC2
216: JLE 3, 483(4)	* stack failure
217: ST 0, 0(5)	* save ACC0 into the current SP location
218: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
219: LDC 0, 1(0)	* Load a constant into ACC0
* END: load an int constant
220: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
221: LD 1, 0(5)	* Load stored result into ACC1
222: ADD 0, 0, 1	* Add ACC0 & ACC1 placing result in ACC0
* BEGIN: save initial value to loop var
* BEGIN: push to stack
223: LDA 3, -216(5)	* Subtract the stack limit from SP - store in ACC3
224: LDC 2, 52(0)	* Load diagnostic char into ACC2
225: JLE 3, 483(4)	* stack failure
226: ST 0, 0(5)	* save ACC0 into the current SP location
227: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
228: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
229: LD 0, 0(5)	* Load stored result into ACC0
230: ST 0, 209(4)	* Store ACC0 into global offset
* END: save initial value to loop var
* BEGIN: variable (rvalue) access
231: LD 0, 105(4)	* Load the global var into ACC0
* END: variable (rvalue) access
* BEGIN: save max value to max loop var
* BEGIN: push to stack
232: LDA 3, -216(5)	* Subtract the stack limit from SP - store in ACC3
233: LDC 2, 53(0)	* Load diagnostic char into ACC2
234: JLE 3, 483(4)	* stack failure
235: ST 0, 0(5)	* save ACC0 into the current SP location
236: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
237: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
238: LD 0, 0(5)	* Load stored result into ACC0
239: ST 0, 210(4)	* Store ACC0 into global offset
* END: save max value to max loop var
240: LDA 5, 0(5)	* NOOP to mark top of loop
241: LD 0, 209(4)	* Load the global var into ACC0
242: LD 1, 210(4)	* Load the global var into ACC0
243: SUB 1, 1, 0	* Subtract the loop var from the max
244: JLT 1, 394(4)	* go to the loop exit
* BEGIN: body of for loop
* BEGIN: variable (rvalue) access
245: LDC 0, 107(0)	* Load the base address into ACC0
* BEGIN: push to stack
246: LDA 3, -216(5)	* Subtract the stack limit from SP - store in ACC3
247: LDC 2, 56(0)	* Load diagnostic char into ACC2
248: JLE 3, 483(4)	* stack failure
249: ST 0, 0(5)	* save ACC0 into the current SP location
250: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: variable (rvalue) access
251: LD 0, 211(4)	* Load the global var into ACC0
* END: variable (rvalue) access
252: JLT 0, 472(4)	* array bounds too small
253: LDC 3, 100(0)	* Load the array bounds limit into ACC3
254: SUB 3, 0, 3	* Subtract the max from the current index
255: JGE 3, 472(4)	* array bounds too big
256: LDC 1, 1(0)	* Load the skip size into ACC1
257: MUL 1, 1, 0	* Multiply the index by the skip size and place the result back into ACC1
258: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
259: LD 0, 0(5)	* Load stored result into ACC0
260: ADD 0, 1, 0	* add the base (ACC0) and the skip size (ACC1) and put the result back in ACC0
261: LD 0, 0(0)	* Load the final dereferenced value into the specified register
* END: variable (rvalue) access
* BEGIN: push to stack
262: LDA 3, -216(5)	* Subtract the stack limit from SP - store in ACC3
263: LDC 2, 51(0)	* Load diagnostic char into ACC2
264: JLE 3, 483(4)	* stack failure
265: ST 0, 0(5)	* save ACC0 into the current SP location
266: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: variable (rvalue) access
267: LDC 0, 107(0)	* Load the base address into ACC0
* BEGIN: push to stack
268: LDA 3, -216(5)	* Subtract the stack limit from SP - store in ACC3
269: LDC 2, 56(0)	* Load diagnostic char into ACC2
270: JLE 3, 483(4)	* stack failure
271: ST 0, 0(5)	* save ACC0 into the current SP location
272: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: variable (rvalue) access
273: LD 0, 209(4)	* Load the global var into ACC0
* END: variable (rvalue) access
274: JLT 0, 472(4)	* array bounds too small
275: LDC 3, 100(0)	* Load the array bounds limit into ACC3
276: SUB 3, 0, 3	* Subtract the max from the current index
277: JGE 3, 472(4)	* array bounds too big
278: LDC 1, 1(0)	* Load the skip size into ACC1
279: MUL 1, 1, 0	* Multiply the index by the skip size and place the result back into ACC1
280: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
281: LD 0, 0(5)	* Load stored result into ACC0
282: ADD 0, 1, 0	* add the base (ACC0) and the skip size (ACC1) and put the result back in ACC0
283: LD 0, 0(0)	* Load the final dereferenced value into the specified register
* END: variable (rvalue) access
284: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
285: LD 1, 0(5)	* Load stored result into ACC1
* BEGIN: >
286: SUB 0, 1, 0	* for >, subtract right from left
287: JGT 0, 2(7)	* Jump to Load 1 if ACC0 > 0
288: LDC 0, 0(0)	* Load 0 into ACC0
289: LDA 7, 1(7)	* Jump over Load 1
290: LDC 0, 1(0)	* Load 1 into ACC0
* END: >
291: JEQ 0, 91(7)	* Jump over the then stmts if false
* BEGIN: variable (rvalue) access
292: LDC 0, 107(0)	* Load the base address into ACC0
* BEGIN: push to stack
293: LDA 3, -216(5)	* Subtract the stack limit from SP - store in ACC3
294: LDC 2, 56(0)	* Load diagnostic char into ACC2
295: JLE 3, 483(4)	* stack failure
296: ST 0, 0(5)	* save ACC0 into the current SP location
297: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: variable (rvalue) access
298: LD 0, 211(4)	* Load the global var into ACC0
* END: variable (rvalue) access
299: JLT 0, 472(4)	* array bounds too small
300: LDC 3, 100(0)	* Load the array bounds limit into ACC3
301: SUB 3, 0, 3	* Subtract the max from the current index
302: JGE 3, 472(4)	* array bounds too big
303: LDC 1, 1(0)	* Load the skip size into ACC1
304: MUL 1, 1, 0	* Multiply the index by the skip size and place the result back into ACC1
305: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
306: LD 0, 0(5)	* Load stored result into ACC0
307: ADD 0, 1, 0	* add the base (ACC0) and the skip size (ACC1) and put the result back in ACC0
308: LD 0, 0(0)	* Load the final dereferenced value into the specified register
* END: variable (rvalue) access
* BEGIN: push to stack
309: LDA 3, -216(5)	* Subtract the stack limit from SP - store in ACC3
310: LDC 2, 50(0)	* Load diagnostic char into ACC2
311: JLE 3, 483(4)	* stack failure
312: ST 0, 0(5)	* save ACC0 into the current SP location
313: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: assignment
314: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
315: LD 0, 0(5)	* Load stored result into ACC0
316: ST 0, 106(4)	* Store ACC0 into global offset
* END: assignment
* BEGIN: variable (rvalue) access
317: LDC 0, 107(0)	* Load the base address into ACC0
* BEGIN: push to stack
318: LDA 3, -216(5)	* Subtract the stack limit from SP - store in ACC3
319: LDC 2, 56(0)	* Load diagnostic char into ACC2
320: JLE 3, 483(4)	* stack failure
321: ST 0, 0(5)	* save ACC0 into the current SP location
322: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: variable (rvalue) access
323: LD 0, 209(4)	* Load the global var into ACC0
* END: variable (rvalue) access
324: JLT 0, 472(4)	* array bounds too small
325: LDC 3, 100(0)	* Load the array bounds limit into ACC3
326: SUB 3, 0, 3	* Subtract the max from the current index
327: JGE 3, 472(4)	* array bounds too big
328: LDC 1, 1(0)	* Load the skip size into ACC1
329: MUL 1, 1, 0	* Multiply the index by the skip size and place the result back into ACC1
330: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
331: LD 0, 0(5)	* Load stored result into ACC0
332: ADD 0, 1, 0	* add the base (ACC0) and the skip size (ACC1) and put the result back in ACC0
333: LD 0, 0(0)	* Load the final dereferenced value into the specified register
* END: variable (rvalue) access
* BEGIN: push to stack
334: LDA 3, -216(5)	* Subtract the stack limit from SP - store in ACC3
335: LDC 2, 50(0)	* Load diagnostic char into ACC2
336: JLE 3, 483(4)	* stack failure
337: ST 0, 0(5)	* save ACC0 into the current SP location
338: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: assignment
339: LDC 0, 107(0)	* Load the base address into ACC0
* BEGIN: push to stack
340: LDA 3, -216(5)	* Subtract the stack limit from SP - store in ACC3
341: LDC 2, 56(0)	* Load diagnostic char into ACC2
342: JLE 3, 483(4)	* stack failure
343: ST 0, 0(5)	* save ACC0 into the current SP location
344: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: variable (rvalue) access
345: LD 0, 211(4)	* Load the global var into ACC0
* END: variable (rvalue) access
346: JLT 0, 472(4)	* array bounds too small
347: LDC 3, 100(0)	* Load the array bounds limit into ACC3
348: SUB 3, 0, 3	* Subtract the max from the current index
349: JGE 3, 472(4)	* array bounds too big
350: LDC 1, 1(0)	* Load the skip size into ACC1
351: MUL 1, 1, 0	* Multiply the index by the skip size and place the result back into ACC1
352: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
353: LD 0, 0(5)	* Load stored result into ACC0
354: ADD 0, 1, 0	* add the base (ACC0) and the skip size (ACC1) and put the result back in ACC0
355: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
356: LD 1, 0(5)	* Load stored result into ACC1
357: ST 1, 0(0)	* Store ACC0 into global offset
* END: assignment
* BEGIN: variable (rvalue) access
358: LD 0, 106(4)	* Load the global var into ACC0
* END: variable (rvalue) access
* BEGIN: push to stack
359: LDA 3, -216(5)	* Subtract the stack limit from SP - store in ACC3
360: LDC 2, 50(0)	* Load diagnostic char into ACC2
361: JLE 3, 483(4)	* stack failure
362: ST 0, 0(5)	* save ACC0 into the current SP location
363: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: assignment
364: LDC 0, 107(0)	* Load the base address into ACC0
* BEGIN: push to stack
365: LDA 3, -216(5)	* Subtract the stack limit from SP - store in ACC3
366: LDC 2, 56(0)	* Load diagnostic char into ACC2
367: JLE 3, 483(4)	* stack failure
368: ST 0, 0(5)	* save ACC0 into the current SP location
369: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: variable (rvalue) access
370: LD 0, 209(4)	* Load the global var into ACC0
* END: variable (rvalue) access
371: JLT 0, 472(4)	* array bounds too small
372: LDC 3, 100(0)	* Load the array bounds limit into ACC3
373: SUB 3, 0, 3	* Subtract the max from the current index
374: JGE 3, 472(4)	* array bounds too big
375: LDC 1, 1(0)	* Load the skip size into ACC1
376: MUL 1, 1, 0	* Multiply the index by the skip size and place the result back into ACC1
377: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
378: LD 0, 0(5)	* Load stored result into ACC0
379: ADD 0, 1, 0	* add the base (ACC0) and the skip size (ACC1) and put the result back in ACC0
380: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
381: LD 1, 0(5)	* Load stored result into ACC1
382: ST 1, 0(0)	* Store ACC0 into global offset
* END: assignment
* END: body of for loop
383: LD 0, 209(4)	* Load the global var into ACC0
384: LDA 0, 1(0)	* increment the loop var
* BEGIN: push to stack
385: LDA 3, -216(5)	* Subtract the stack limit from SP - store in ACC3
386: LDC 2, 54(0)	* Load diagnostic char into ACC2
387: JLE 3, 483(4)	* stack failure
388: ST 0, 0(5)	* save ACC0 into the current SP location
389: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
390: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
391: LD 0, 0(5)	* Load stored result into ACC0
392: ST 0, 209(4)	* Store ACC0 into global offset
393: LDA 7, 240(4)	* return to the top of the loop
394: LDA 5, 0(5)	* NOOP to mark end of loop
* END: for loop
* END: body of for loop
395: LD 0, 211(4)	* Load the global var into ACC0
396: LDA 0, 1(0)	* increment the loop var
* BEGIN: push to stack
397: LDA 3, -216(5)	* Subtract the stack limit from SP - store in ACC3
398: LDC 2, 54(0)	* Load diagnostic char into ACC2
399: JLE 3, 483(4)	* stack failure
400: ST 0, 0(5)	* save ACC0 into the current SP location
401: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
402: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
403: LD 0, 0(5)	* Load stored result into ACC0
404: ST 0, 211(4)	* Store ACC0 into global offset
405: LDA 7, 208(4)	* return to the top of the loop
406: LDA 5, 0(5)	* NOOP to mark end of loop
* END: for loop
* BEGIN: load a string's location into ACC0
407: LDC 0, 92(0)	* Load a string's location into ACC0
* END: load a string's location into ACC0
* BEGIN: write(s)
408: LDA 1, 1(0)	* Increment the address stored in ACC0 to get the string's char location (put in ACC1)
409: LD 0, 0(0)	* Load the string size into ACC0
410: JEQ 0, 5(7)	* Jump to end when run out of string
411: LDA 0, -1(0)	* subtract one from string size
412: LD 2, 0(1)	* Load next char from string into ACC2
413: LDA 1, 1(1)	* increment pointer into string
414: OUTC 2, 0, 0	* Write out character in ACC2
415: LDA 7, -6(7)	* Go back to start of loop
416: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
* BEGIN: for loop
* BEGIN: load an int constant
417: LDC 0, 0(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: save initial value to loop var
* BEGIN: push to stack
418: LDA 3, -216(5)	* Subtract the stack limit from SP - store in ACC3
419: LDC 2, 52(0)	* Load diagnostic char into ACC2
420: JLE 3, 483(4)	* stack failure
421: ST 0, 0(5)	* save ACC0 into the current SP location
422: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
423: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
424: LD 0, 0(5)	* Load stored result into ACC0
425: ST 0, 213(4)	* Store ACC0 into global offset
* END: save initial value to loop var
* BEGIN: variable (rvalue) access
426: LD 0, 105(4)	* Load the global var into ACC0
* END: variable (rvalue) access
* BEGIN: save max value to max loop var
* BEGIN: push to stack
427: LDA 3, -216(5)	* Subtract the stack limit from SP - store in ACC3
428: LDC 2, 53(0)	* Load diagnostic char into ACC2
429: JLE 3, 483(4)	* stack failure
430: ST 0, 0(5)	* save ACC0 into the current SP location
431: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
432: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
433: LD 0, 0(5)	* Load stored result into ACC0
434: ST 0, 214(4)	* Store ACC0 into global offset
* END: save max value to max loop var
435: LDA 5, 0(5)	* NOOP to mark top of loop
436: LD 0, 213(4)	* Load the global var into ACC0
437: LD 1, 214(4)	* Load the global var into ACC0
438: SUB 1, 1, 0	* Subtract the loop var from the max
439: JLT 1, 470(4)	* go to the loop exit
* BEGIN: body of for loop
* BEGIN: variable (rvalue) access
440: LDC 0, 107(0)	* Load the base address into ACC0
* BEGIN: push to stack
441: LDA 3, -216(5)	* Subtract the stack limit from SP - store in ACC3
442: LDC 2, 56(0)	* Load diagnostic char into ACC2
443: JLE 3, 483(4)	* stack failure
444: ST 0, 0(5)	* save ACC0 into the current SP location
445: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: variable (rvalue) access
446: LD 0, 213(4)	* Load the global var into ACC0
* END: variable (rvalue) access
447: JLT 0, 472(4)	* array bounds too small
448: LDC 3, 100(0)	* Load the array bounds limit into ACC3
449: SUB 3, 0, 3	* Subtract the max from the current index
450: JGE 3, 472(4)	* array bounds too big
451: LDC 1, 1(0)	* Load the skip size into ACC1
452: MUL 1, 1, 0	* Multiply the index by the skip size and place the result back into ACC1
453: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
454: LD 0, 0(5)	* Load stored result into ACC0
455: ADD 0, 1, 0	* add the base (ACC0) and the skip size (ACC1) and put the result back in ACC0
456: LD 0, 0(0)	* Load the final dereferenced value into the specified register
* END: variable (rvalue) access
* BEGIN: write(s)
457: OUT 0, 0, 0	* write out the int value in ACC0
458: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
* END: body of for loop
459: LD 0, 213(4)	* Load the global var into ACC0
460: LDA 0, 1(0)	* increment the loop var
* BEGIN: push to stack
461: LDA 3, -216(5)	* Subtract the stack limit from SP - store in ACC3
462: LDC 2, 54(0)	* Load diagnostic char into ACC2
463: JLE 3, 483(4)	* stack failure
464: ST 0, 0(5)	* save ACC0 into the current SP location
465: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
466: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
467: LD 0, 0(5)	* Load stored result into ACC0
468: ST 0, 213(4)	* Store ACC0 into global offset
469: LDA 7, 435(4)	* return to the top of the loop
470: LDA 5, 0(5)	* NOOP to mark end of loop
* END: for loop
471: HALT 0, 0, 0	* End of Program
* BEGIN: array bounds message handler
472: LDC 0, 1(0)	* Load the error message into ACC0
473: LDA 1, 1(0)	* Increment the address stored in ACC0 to get the string's char location (put in ACC1)
474: LD 0, 0(0)	* Load the string size into ACC0
475: JEQ 0, 5(7)	* Jump to end when run out of string
476: LDA 0, -1(0)	* subtract one from string size
477: LD 2, 0(1)	* Load next char from string into ACC2
478: LDA 1, 1(1)	* increment pointer into string
479: OUTC 2, 0, 0	* Write out character in ACC2
480: LDA 7, -6(7)	* Go back to start of loop
481: OUTNL 0, 0, 0	* dump out the newline
482: HALT 0, 0, 0	* Halt for array bounds
* END: array bounds message handler
* BEGIN: stack limit message handler
483: LDC 0, 25(0)	* Load the error message into ACC0
484: LDA 1, 1(0)	* Increment the address stored in ACC0 to get the string's char location (put in ACC1)
485: LD 0, 0(0)	* Load the string size into ACC0
486: JEQ 0, 5(7)	* Jump to end when run out of string
487: LDA 0, -1(0)	* subtract one from string size
488: LD 3, 0(1)	* Load next char from string into ACC3
489: LDA 1, 1(1)	* increment pointer into string
490: OUTC 3, 0, 0	* Write out character in ACC3
491: LDA 7, -6(7)	* Go back to start of loop
492: OUTC 2, 0, 0	* Write out diagnostic char in ACC2
493: OUTNL 0, 0, 0	* dump out the newline
494: HALT 0, 0, 0	* Halt for stack limit
* END: stack limit message handler
