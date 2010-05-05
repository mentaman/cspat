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
4: LDC 0, 6(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: push to stack
5: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
6: LDC 2, 51(0)	* Load diagnostic char into ACC2
7: JLE 3, 257(4)	* stack failure
8: ST 0, 0(5)	* save ACC0 into the current SP location
9: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
10: LDC 0, 6(0)	* Load a constant into ACC0
* END: load an int constant
11: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
12: LD 1, 0(5)	* Load stored result into ACC1
* BEGIN: >=
13: SUB 0, 1, 0	* for >=, subtract right from left
14: JGE 0, 2(7)	* Jump to Load 1 if ACC0 >= 0
15: LDC 0, 0(0)	* Load 0 into ACC0
16: LDA 7, 1(7)	* Jump over Load 1
17: LDC 0, 1(0)	* Load 1 into ACC0
* END: >=
18: JEQ 0, 4(7)	* Jump over the then stmts if false
* BEGIN: load an int constant
19: LDC 0, 1(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: write(s)
20: OUT 0, 0, 0	* write out the int value in ACC0
21: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
22: LDA 7, 41(7)	* Jump over the rest of the if
* BEGIN: load an int constant
23: LDC 0, 1(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: push to stack
24: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
25: LDC 2, 51(0)	* Load diagnostic char into ACC2
26: JLE 3, 257(4)	* stack failure
27: ST 0, 0(5)	* save ACC0 into the current SP location
28: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
29: LDC 0, 6(0)	* Load a constant into ACC0
* END: load an int constant
30: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
31: LD 1, 0(5)	* Load stored result into ACC1
* BEGIN: >=
32: SUB 0, 1, 0	* for >=, subtract right from left
33: JGE 0, 2(7)	* Jump to Load 1 if ACC0 >= 0
34: LDC 0, 0(0)	* Load 0 into ACC0
35: LDA 7, 1(7)	* Jump over Load 1
36: LDC 0, 1(0)	* Load 1 into ACC0
* END: >=
37: JEQ 0, 4(7)	* Jump over the then stmts if false
* BEGIN: load an int constant
38: LDC 0, 2(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: write(s)
39: OUT 0, 0, 0	* write out the int value in ACC0
40: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
41: LDA 7, 22(7)	* Jump over the rest of the if
* BEGIN: load an int constant
42: LDC 0, 6(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: push to stack
43: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
44: LDC 2, 51(0)	* Load diagnostic char into ACC2
45: JLE 3, 257(4)	* stack failure
46: ST 0, 0(5)	* save ACC0 into the current SP location
47: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
48: LDC 0, 6(0)	* Load a constant into ACC0
* END: load an int constant
49: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
50: LD 1, 0(5)	* Load stored result into ACC1
* BEGIN: >=
51: SUB 0, 1, 0	* for >=, subtract right from left
52: JGE 0, 2(7)	* Jump to Load 1 if ACC0 >= 0
53: LDC 0, 0(0)	* Load 0 into ACC0
54: LDA 7, 1(7)	* Jump over Load 1
55: LDC 0, 1(0)	* Load 1 into ACC0
* END: >=
56: JEQ 0, 4(7)	* Jump over the then stmts if false
* BEGIN: load an int constant
57: LDC 0, 3(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: write(s)
58: OUT 0, 0, 0	* write out the int value in ACC0
59: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
60: LDA 7, 3(7)	* Jump over the rest of the if
* BEGIN: load an int constant
61: LDC 0, 4(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: write(s)
62: OUT 0, 0, 0	* write out the int value in ACC0
63: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
* BEGIN: load an int constant
64: LDC 0, 5(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: write(s)
65: OUT 0, 0, 0	* write out the int value in ACC0
66: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
* BEGIN: load an int constant
67: LDC 0, 0(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: push to stack
68: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
69: LDC 2, 51(0)	* Load diagnostic char into ACC2
70: JLE 3, 257(4)	* stack failure
71: ST 0, 0(5)	* save ACC0 into the current SP location
72: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
73: LDC 0, 6(0)	* Load a constant into ACC0
* END: load an int constant
74: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
75: LD 1, 0(5)	* Load stored result into ACC1
* BEGIN: >=
76: SUB 0, 1, 0	* for >=, subtract right from left
77: JGE 0, 2(7)	* Jump to Load 1 if ACC0 >= 0
78: LDC 0, 0(0)	* Load 0 into ACC0
79: LDA 7, 1(7)	* Jump over Load 1
80: LDC 0, 1(0)	* Load 1 into ACC0
* END: >=
81: JEQ 0, 4(7)	* Jump over the then stmts if false
* BEGIN: load an int constant
82: LDC 0, 1(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: write(s)
83: OUT 0, 0, 0	* write out the int value in ACC0
84: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
85: LDA 7, 41(7)	* Jump over the rest of the if
* BEGIN: load an int constant
86: LDC 0, 6(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: push to stack
87: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
88: LDC 2, 51(0)	* Load diagnostic char into ACC2
89: JLE 3, 257(4)	* stack failure
90: ST 0, 0(5)	* save ACC0 into the current SP location
91: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
92: LDC 0, 6(0)	* Load a constant into ACC0
* END: load an int constant
93: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
94: LD 1, 0(5)	* Load stored result into ACC1
* BEGIN: >=
95: SUB 0, 1, 0	* for >=, subtract right from left
96: JGE 0, 2(7)	* Jump to Load 1 if ACC0 >= 0
97: LDC 0, 0(0)	* Load 0 into ACC0
98: LDA 7, 1(7)	* Jump over Load 1
99: LDC 0, 1(0)	* Load 1 into ACC0
* END: >=
100: JEQ 0, 4(7)	* Jump over the then stmts if false
* BEGIN: load an int constant
101: LDC 0, 2(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: write(s)
102: OUT 0, 0, 0	* write out the int value in ACC0
103: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
104: LDA 7, 22(7)	* Jump over the rest of the if
* BEGIN: load an int constant
105: LDC 0, 6(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: push to stack
106: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
107: LDC 2, 51(0)	* Load diagnostic char into ACC2
108: JLE 3, 257(4)	* stack failure
109: ST 0, 0(5)	* save ACC0 into the current SP location
110: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
111: LDC 0, 6(0)	* Load a constant into ACC0
* END: load an int constant
112: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
113: LD 1, 0(5)	* Load stored result into ACC1
* BEGIN: >=
114: SUB 0, 1, 0	* for >=, subtract right from left
115: JGE 0, 2(7)	* Jump to Load 1 if ACC0 >= 0
116: LDC 0, 0(0)	* Load 0 into ACC0
117: LDA 7, 1(7)	* Jump over Load 1
118: LDC 0, 1(0)	* Load 1 into ACC0
* END: >=
119: JEQ 0, 4(7)	* Jump over the then stmts if false
* BEGIN: load an int constant
120: LDC 0, 3(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: write(s)
121: OUT 0, 0, 0	* write out the int value in ACC0
122: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
123: LDA 7, 3(7)	* Jump over the rest of the if
* BEGIN: load an int constant
124: LDC 0, 4(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: write(s)
125: OUT 0, 0, 0	* write out the int value in ACC0
126: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
* BEGIN: load an int constant
127: LDC 0, 5(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: write(s)
128: OUT 0, 0, 0	* write out the int value in ACC0
129: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
* BEGIN: load an int constant
130: LDC 0, 0(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: push to stack
131: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
132: LDC 2, 51(0)	* Load diagnostic char into ACC2
133: JLE 3, 257(4)	* stack failure
134: ST 0, 0(5)	* save ACC0 into the current SP location
135: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
136: LDC 0, 6(0)	* Load a constant into ACC0
* END: load an int constant
137: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
138: LD 1, 0(5)	* Load stored result into ACC1
* BEGIN: >=
139: SUB 0, 1, 0	* for >=, subtract right from left
140: JGE 0, 2(7)	* Jump to Load 1 if ACC0 >= 0
141: LDC 0, 0(0)	* Load 0 into ACC0
142: LDA 7, 1(7)	* Jump over Load 1
143: LDC 0, 1(0)	* Load 1 into ACC0
* END: >=
144: JEQ 0, 4(7)	* Jump over the then stmts if false
* BEGIN: load an int constant
145: LDC 0, 1(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: write(s)
146: OUT 0, 0, 0	* write out the int value in ACC0
147: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
148: LDA 7, 41(7)	* Jump over the rest of the if
* BEGIN: load an int constant
149: LDC 0, 1(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: push to stack
150: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
151: LDC 2, 51(0)	* Load diagnostic char into ACC2
152: JLE 3, 257(4)	* stack failure
153: ST 0, 0(5)	* save ACC0 into the current SP location
154: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
155: LDC 0, 6(0)	* Load a constant into ACC0
* END: load an int constant
156: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
157: LD 1, 0(5)	* Load stored result into ACC1
* BEGIN: >=
158: SUB 0, 1, 0	* for >=, subtract right from left
159: JGE 0, 2(7)	* Jump to Load 1 if ACC0 >= 0
160: LDC 0, 0(0)	* Load 0 into ACC0
161: LDA 7, 1(7)	* Jump over Load 1
162: LDC 0, 1(0)	* Load 1 into ACC0
* END: >=
163: JEQ 0, 4(7)	* Jump over the then stmts if false
* BEGIN: load an int constant
164: LDC 0, 2(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: write(s)
165: OUT 0, 0, 0	* write out the int value in ACC0
166: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
167: LDA 7, 22(7)	* Jump over the rest of the if
* BEGIN: load an int constant
168: LDC 0, 6(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: push to stack
169: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
170: LDC 2, 51(0)	* Load diagnostic char into ACC2
171: JLE 3, 257(4)	* stack failure
172: ST 0, 0(5)	* save ACC0 into the current SP location
173: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
174: LDC 0, 6(0)	* Load a constant into ACC0
* END: load an int constant
175: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
176: LD 1, 0(5)	* Load stored result into ACC1
* BEGIN: >=
177: SUB 0, 1, 0	* for >=, subtract right from left
178: JGE 0, 2(7)	* Jump to Load 1 if ACC0 >= 0
179: LDC 0, 0(0)	* Load 0 into ACC0
180: LDA 7, 1(7)	* Jump over Load 1
181: LDC 0, 1(0)	* Load 1 into ACC0
* END: >=
182: JEQ 0, 4(7)	* Jump over the then stmts if false
* BEGIN: load an int constant
183: LDC 0, 3(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: write(s)
184: OUT 0, 0, 0	* write out the int value in ACC0
185: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
186: LDA 7, 3(7)	* Jump over the rest of the if
* BEGIN: load an int constant
187: LDC 0, 4(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: write(s)
188: OUT 0, 0, 0	* write out the int value in ACC0
189: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
* BEGIN: load an int constant
190: LDC 0, 5(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: write(s)
191: OUT 0, 0, 0	* write out the int value in ACC0
192: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
* BEGIN: load an int constant
193: LDC 0, 0(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: push to stack
194: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
195: LDC 2, 51(0)	* Load diagnostic char into ACC2
196: JLE 3, 257(4)	* stack failure
197: ST 0, 0(5)	* save ACC0 into the current SP location
198: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
199: LDC 0, 6(0)	* Load a constant into ACC0
* END: load an int constant
200: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
201: LD 1, 0(5)	* Load stored result into ACC1
* BEGIN: >=
202: SUB 0, 1, 0	* for >=, subtract right from left
203: JGE 0, 2(7)	* Jump to Load 1 if ACC0 >= 0
204: LDC 0, 0(0)	* Load 0 into ACC0
205: LDA 7, 1(7)	* Jump over Load 1
206: LDC 0, 1(0)	* Load 1 into ACC0
* END: >=
207: JEQ 0, 4(7)	* Jump over the then stmts if false
* BEGIN: load an int constant
208: LDC 0, 1(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: write(s)
209: OUT 0, 0, 0	* write out the int value in ACC0
210: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
211: LDA 7, 41(7)	* Jump over the rest of the if
* BEGIN: load an int constant
212: LDC 0, 1(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: push to stack
213: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
214: LDC 2, 51(0)	* Load diagnostic char into ACC2
215: JLE 3, 257(4)	* stack failure
216: ST 0, 0(5)	* save ACC0 into the current SP location
217: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
218: LDC 0, 6(0)	* Load a constant into ACC0
* END: load an int constant
219: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
220: LD 1, 0(5)	* Load stored result into ACC1
* BEGIN: >=
221: SUB 0, 1, 0	* for >=, subtract right from left
222: JGE 0, 2(7)	* Jump to Load 1 if ACC0 >= 0
223: LDC 0, 0(0)	* Load 0 into ACC0
224: LDA 7, 1(7)	* Jump over Load 1
225: LDC 0, 1(0)	* Load 1 into ACC0
* END: >=
226: JEQ 0, 4(7)	* Jump over the then stmts if false
* BEGIN: load an int constant
227: LDC 0, 2(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: write(s)
228: OUT 0, 0, 0	* write out the int value in ACC0
229: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
230: LDA 7, 22(7)	* Jump over the rest of the if
* BEGIN: load an int constant
231: LDC 0, 2(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: push to stack
232: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
233: LDC 2, 51(0)	* Load diagnostic char into ACC2
234: JLE 3, 257(4)	* stack failure
235: ST 0, 0(5)	* save ACC0 into the current SP location
236: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
237: LDC 0, 6(0)	* Load a constant into ACC0
* END: load an int constant
238: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
239: LD 1, 0(5)	* Load stored result into ACC1
* BEGIN: >=
240: SUB 0, 1, 0	* for >=, subtract right from left
241: JGE 0, 2(7)	* Jump to Load 1 if ACC0 >= 0
242: LDC 0, 0(0)	* Load 0 into ACC0
243: LDA 7, 1(7)	* Jump over Load 1
244: LDC 0, 1(0)	* Load 1 into ACC0
* END: >=
245: JEQ 0, 4(7)	* Jump over the then stmts if false
* BEGIN: load an int constant
246: LDC 0, 3(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: write(s)
247: OUT 0, 0, 0	* write out the int value in ACC0
248: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
249: LDA 7, 3(7)	* Jump over the rest of the if
* BEGIN: load an int constant
250: LDC 0, 4(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: write(s)
251: OUT 0, 0, 0	* write out the int value in ACC0
252: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
* BEGIN: load an int constant
253: LDC 0, 5(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: write(s)
254: OUT 0, 0, 0	* write out the int value in ACC0
255: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
256: HALT 0, 0, 0	* End of Program
* BEGIN: stack limit message handler
257: LDC 0, 25(0)	* Load the error message into ACC0
258: LDA 1, 1(0)	* Increment the address stored in ACC0 to get the string's char location (put in ACC1)
259: LD 0, 0(0)	* Load the string size into ACC0
260: JEQ 0, 5(7)	* Jump to end when run out of string
261: LDA 0, -1(0)	* subtract one from string size
262: LD 3, 0(1)	* Load next char from string into ACC3
263: LDA 1, 1(1)	* increment pointer into string
264: OUTC 3, 0, 0	* Write out character in ACC3
265: LDA 7, -6(7)	* Go back to start of loop
266: OUTC 2, 0, 0	* Write out diagnostic char in ACC2
267: OUTNL 0, 0, 0	* dump out the newline
268: HALT 0, 0, 0	* Halt for stack limit
* END: stack limit message handler
