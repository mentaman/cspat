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
* BEGIN: load an int constant
4: LDC 0, 7(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: push to stack
5: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
6: LDC 2, 55(0)	* Load diagnostic char into ACC2
7: JLE 3, 199(4)	* stack failure
8: ST 0, 0(5)	* save ACC0 into the current SP location
9: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
10: LDC 0, 3(0)	* Load a constant into ACC0
* END: load an int constant
11: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
12: LD 1, 0(5)	* Load stored result into ACC1
13: ADD 0, 0, 1	* Add ACC0 & ACC1 placing result in ACC0
* BEGIN: push to stack
14: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
15: LDC 2, 55(0)	* Load diagnostic char into ACC2
16: JLE 3, 199(4)	* stack failure
17: ST 0, 0(5)	* save ACC0 into the current SP location
18: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
19: LDC 0, 15(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: push to stack
20: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
21: LDC 2, 55(0)	* Load diagnostic char into ACC2
22: JLE 3, 199(4)	* stack failure
23: ST 0, 0(5)	* save ACC0 into the current SP location
24: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
25: LDC 0, 5(0)	* Load a constant into ACC0
* END: load an int constant
26: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
27: LD 1, 0(5)	* Load stored result into ACC1
28: SUB 0, 1, 0	* Subtract ACC0 from ACC1 placing result in ACC0
29: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
30: LD 1, 0(5)	* Load stored result into ACC1
31: SUB 0, 1, 0	* Subtract ACC0 from ACC1 placing result in ACC0
* BEGIN: write(s)
32: OUT 0, 0, 0	* write out the int value in ACC0
33: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
* BEGIN: load an int constant
34: LDC 0, 2(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: push to stack
35: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
36: LDC 2, 55(0)	* Load diagnostic char into ACC2
37: JLE 3, 199(4)	* stack failure
38: ST 0, 0(5)	* save ACC0 into the current SP location
39: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
40: LDC 0, 9(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: push to stack
41: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
42: LDC 2, 55(0)	* Load diagnostic char into ACC2
43: JLE 3, 199(4)	* stack failure
44: ST 0, 0(5)	* save ACC0 into the current SP location
45: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
46: LDC 0, 3(0)	* Load a constant into ACC0
* END: load an int constant
47: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
48: LD 1, 0(5)	* Load stored result into ACC1
49: DIV 0, 1, 0	* Divide ACC1 by ACC0 placing result in ACC0
50: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
51: LD 1, 0(5)	* Load stored result into ACC1
52: MUL 0, 0, 1	* Multiply ACC0 & ACC1 placing result in ACC0
* BEGIN: push to stack
53: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
54: LDC 2, 55(0)	* Load diagnostic char into ACC2
55: JLE 3, 199(4)	* stack failure
56: ST 0, 0(5)	* save ACC0 into the current SP location
57: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
58: LDC 0, 1(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: push to stack
59: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
60: LDC 2, 55(0)	* Load diagnostic char into ACC2
61: JLE 3, 199(4)	* stack failure
62: ST 0, 0(5)	* save ACC0 into the current SP location
63: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
64: LDC 0, 1(0)	* Load a constant into ACC0
* END: load an int constant
65: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
66: LD 1, 0(5)	* Load stored result into ACC1
67: ADD 0, 0, 1	* Add ACC0 & ACC1 placing result in ACC0
* BEGIN: push to stack
68: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
69: LDC 2, 55(0)	* Load diagnostic char into ACC2
70: JLE 3, 199(4)	* stack failure
71: ST 0, 0(5)	* save ACC0 into the current SP location
72: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
73: LDC 0, 1(0)	* Load a constant into ACC0
* END: load an int constant
74: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
75: LD 1, 0(5)	* Load stored result into ACC1
76: ADD 0, 0, 1	* Add ACC0 & ACC1 placing result in ACC0
* BEGIN: push to stack
77: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
78: LDC 2, 55(0)	* Load diagnostic char into ACC2
79: JLE 3, 199(4)	* stack failure
80: ST 0, 0(5)	* save ACC0 into the current SP location
81: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
82: LDC 0, 1(0)	* Load a constant into ACC0
* END: load an int constant
83: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
84: LD 1, 0(5)	* Load stored result into ACC1
85: ADD 0, 0, 1	* Add ACC0 & ACC1 placing result in ACC0
86: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
87: LD 1, 0(5)	* Load stored result into ACC1
88: ADD 0, 0, 1	* Add ACC0 & ACC1 placing result in ACC0
* BEGIN: write(s)
89: OUT 0, 0, 0	* write out the int value in ACC0
90: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
* BEGIN: load an int constant
91: LDC 0, 9(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: push to stack
92: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
93: LDC 2, 55(0)	* Load diagnostic char into ACC2
94: JLE 3, 199(4)	* stack failure
95: ST 0, 0(5)	* save ACC0 into the current SP location
96: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
97: LDC 0, 1(0)	* Load a constant into ACC0
* END: load an int constant
98: SUB 0, 4, 0	* Subtract ACC0 from ZEROREG to negate it
99: SUB 0, 4, 0	* Subtract ACC0 from ZEROREG to negate it
100: SUB 0, 4, 0	* Subtract ACC0 from ZEROREG to negate it
101: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
102: LD 1, 0(5)	* Load stored result into ACC1
103: SUB 0, 1, 0	* Subtract ACC0 from ACC1 placing result in ACC0
* BEGIN: push to stack
104: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
105: LDC 2, 51(0)	* Load diagnostic char into ACC2
106: JLE 3, 199(4)	* stack failure
107: ST 0, 0(5)	* save ACC0 into the current SP location
108: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
109: LDC 0, 3(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: push to stack
110: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
111: LDC 2, 55(0)	* Load diagnostic char into ACC2
112: JLE 3, 199(4)	* stack failure
113: ST 0, 0(5)	* save ACC0 into the current SP location
114: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
115: LDC 0, 3(0)	* Load a constant into ACC0
* END: load an int constant
116: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
117: LD 1, 0(5)	* Load stored result into ACC1
118: MUL 0, 0, 1	* Multiply ACC0 & ACC1 placing result in ACC0
119: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
120: LD 1, 0(5)	* Load stored result into ACC1
* BEGIN: >
121: SUB 0, 1, 0	* for >, subtract right from left
122: JGT 0, 2(7)	* Jump to Load 1 if ACC0 > 0
123: LDC 0, 0(0)	* Load 0 into ACC0
124: LDA 7, 1(7)	* Jump over Load 1
125: LDC 0, 1(0)	* Load 1 into ACC0
* END: >
* BEGIN: write(s)
126: OUT 0, 0, 0	* write out the int value in ACC0
127: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
* BEGIN: load an int constant
128: LDC 0, 7(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: push to stack
129: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
130: LDC 2, 51(0)	* Load diagnostic char into ACC2
131: JLE 3, 199(4)	* stack failure
132: ST 0, 0(5)	* save ACC0 into the current SP location
133: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
134: LDC 0, 6(0)	* Load a constant into ACC0
* END: load an int constant
135: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
136: LD 1, 0(5)	* Load stored result into ACC1
* BEGIN: >
137: SUB 0, 1, 0	* for >, subtract right from left
138: JGT 0, 2(7)	* Jump to Load 1 if ACC0 > 0
139: LDC 0, 0(0)	* Load 0 into ACC0
140: LDA 7, 1(7)	* Jump over Load 1
141: LDC 0, 1(0)	* Load 1 into ACC0
* END: >
142: JGT 0, 28(7)	* Jump over rest of logical or code
* BEGIN: push to stack
143: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
144: LDC 2, 57(0)	* Load diagnostic char into ACC2
145: JLE 3, 199(4)	* stack failure
146: ST 0, 0(5)	* save ACC0 into the current SP location
147: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
148: LDC 0, 7(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: push to stack
149: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
150: LDC 2, 51(0)	* Load diagnostic char into ACC2
151: JLE 3, 199(4)	* stack failure
152: ST 0, 0(5)	* save ACC0 into the current SP location
153: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
154: LDC 0, 6(0)	* Load a constant into ACC0
* END: load an int constant
155: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
156: LD 1, 0(5)	* Load stored result into ACC1
157: SUB 0, 1, 0	* for =, subtract right from left
158: JEQ 0, 2(7)	* Jump to Load 1 if ACC0 == 0
159: LDC 0, 0(0)	* Load 0 into ACC0
160: LDA 7, 1(7)	* Jump over Load 1
161: LDC 0, 1(0)	* Load 1 into ACC0
162: JEQ 0, 2(7)	* Jump to Load 1 if ACC0 == 0
163: LDC 0, 0(0)	* Load 0 into ACC0
164: LDA 7, 1(7)	* Jump over Load 1
165: LDC 0, 1(0)	* Load 1 into ACC0
166: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
167: LD 1, 0(5)	* Load stored result into ACC1
168: ADD 0, 1, 0	* for OR, add right and left
169: JEQ 0, 1(7)	* Jump over Load 1 if ACC0 == 0
170: LDC 0, 1(0)	* Load 1 into ACC0
171: JGT 0, 24(7)	* Jump over rest of logical or code
* BEGIN: push to stack
172: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
173: LDC 2, 57(0)	* Load diagnostic char into ACC2
174: JLE 3, 199(4)	* stack failure
175: ST 0, 0(5)	* save ACC0 into the current SP location
176: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
177: LDC 0, 7(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: push to stack
178: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
179: LDC 2, 51(0)	* Load diagnostic char into ACC2
180: JLE 3, 199(4)	* stack failure
181: ST 0, 0(5)	* save ACC0 into the current SP location
182: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
183: LDC 0, 3(0)	* Load a constant into ACC0
* END: load an int constant
184: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
185: LD 1, 0(5)	* Load stored result into ACC1
* BEGIN: <=
186: SUB 0, 1, 0	* for <=, subtract right from left
187: JLE 0, 2(7)	* Jump to Load 1 if ACC0 <= 0
188: LDC 0, 0(0)	* Load 0 into ACC0
189: LDA 7, 1(7)	* Jump over Load 1
190: LDC 0, 1(0)	* Load 1 into ACC0
* END: <=
191: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
192: LD 1, 0(5)	* Load stored result into ACC1
193: ADD 0, 1, 0	* for OR, add right and left
194: JEQ 0, 1(7)	* Jump over Load 1 if ACC0 == 0
195: LDC 0, 1(0)	* Load 1 into ACC0
* BEGIN: write(s)
196: OUT 0, 0, 0	* write out the int value in ACC0
197: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
198: HALT 0, 0, 0	* End of Program
* BEGIN: stack limit message handler
199: LDC 0, 25(0)	* Load the error message into ACC0
200: LDA 1, 1(0)	* Increment the address stored in ACC0 to get the string's char location (put in ACC1)
201: LD 0, 0(0)	* Load the string size into ACC0
202: JEQ 0, 5(7)	* Jump to end when run out of string
203: LDA 0, -1(0)	* subtract one from string size
204: LD 3, 0(1)	* Load next char from string into ACC3
205: LDA 1, 1(1)	* increment pointer into string
206: OUTC 3, 0, 0	* Write out character in ACC3
207: LDA 7, -6(7)	* Go back to start of loop
208: OUTC 2, 0, 0	* Write out diagnostic char in ACC2
209: OUTNL 0, 0, 0	* dump out the newline
210: HALT 0, 0, 0	* Halt for stack limit
* END: stack limit message handler
