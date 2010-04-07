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
4: LDC 0, 0(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: push to stack
5: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
6: LDC 2, 51(0)	* Load diagnostic char into ACC2
7: JLE 3, 182(4)	* stack failure
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
22: LDA 7, 37(7)	* Jump over the rest of the if
* BEGIN: load an int constant
23: LDC 0, 1(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: push to stack
24: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
25: LDC 2, 51(0)	* Load diagnostic char into ACC2
26: JLE 3, 182(4)	* stack failure
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
41: LDA 7, 18(7)	* Jump over the rest of the if
* BEGIN: load an int constant
42: LDC 0, 6(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: push to stack
43: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
44: LDC 2, 51(0)	* Load diagnostic char into ACC2
45: JLE 3, 182(4)	* stack failure
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
56: JEQ 0, 3(7)	* Jump over the then stmts if false
* BEGIN: load an int constant
57: LDC 0, 3(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: write(s)
58: OUT 0, 0, 0	* write out the int value in ACC0
59: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
* BEGIN: load an int constant
60: LDC 0, 4(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: write(s)
61: OUT 0, 0, 0	* write out the int value in ACC0
62: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
* BEGIN: load an int constant
63: LDC 0, 6(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: push to stack
64: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
65: LDC 2, 51(0)	* Load diagnostic char into ACC2
66: JLE 3, 182(4)	* stack failure
67: ST 0, 0(5)	* save ACC0 into the current SP location
68: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
69: LDC 0, 6(0)	* Load a constant into ACC0
* END: load an int constant
70: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
71: LD 1, 0(5)	* Load stored result into ACC1
* BEGIN: >=
72: SUB 0, 1, 0	* for >=, subtract right from left
73: JGE 0, 2(7)	* Jump to Load 1 if ACC0 >= 0
74: LDC 0, 0(0)	* Load 0 into ACC0
75: LDA 7, 1(7)	* Jump over Load 1
76: LDC 0, 1(0)	* Load 1 into ACC0
* END: >=
77: JEQ 0, 4(7)	* Jump over the then stmts if false
* BEGIN: load an int constant
78: LDC 0, 1(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: write(s)
79: OUT 0, 0, 0	* write out the int value in ACC0
80: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
81: LDA 7, 37(7)	* Jump over the rest of the if
* BEGIN: load an int constant
82: LDC 0, 1(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: push to stack
83: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
84: LDC 2, 51(0)	* Load diagnostic char into ACC2
85: JLE 3, 182(4)	* stack failure
86: ST 0, 0(5)	* save ACC0 into the current SP location
87: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
88: LDC 0, 6(0)	* Load a constant into ACC0
* END: load an int constant
89: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
90: LD 1, 0(5)	* Load stored result into ACC1
* BEGIN: >=
91: SUB 0, 1, 0	* for >=, subtract right from left
92: JGE 0, 2(7)	* Jump to Load 1 if ACC0 >= 0
93: LDC 0, 0(0)	* Load 0 into ACC0
94: LDA 7, 1(7)	* Jump over Load 1
95: LDC 0, 1(0)	* Load 1 into ACC0
* END: >=
96: JEQ 0, 4(7)	* Jump over the then stmts if false
* BEGIN: load an int constant
97: LDC 0, 2(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: write(s)
98: OUT 0, 0, 0	* write out the int value in ACC0
99: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
100: LDA 7, 18(7)	* Jump over the rest of the if
* BEGIN: load an int constant
101: LDC 0, 0(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: push to stack
102: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
103: LDC 2, 51(0)	* Load diagnostic char into ACC2
104: JLE 3, 182(4)	* stack failure
105: ST 0, 0(5)	* save ACC0 into the current SP location
106: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
107: LDC 0, 6(0)	* Load a constant into ACC0
* END: load an int constant
108: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
109: LD 1, 0(5)	* Load stored result into ACC1
* BEGIN: >=
110: SUB 0, 1, 0	* for >=, subtract right from left
111: JGE 0, 2(7)	* Jump to Load 1 if ACC0 >= 0
112: LDC 0, 0(0)	* Load 0 into ACC0
113: LDA 7, 1(7)	* Jump over Load 1
114: LDC 0, 1(0)	* Load 1 into ACC0
* END: >=
115: JEQ 0, 3(7)	* Jump over the then stmts if false
* BEGIN: load an int constant
116: LDC 0, 3(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: write(s)
117: OUT 0, 0, 0	* write out the int value in ACC0
118: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
* BEGIN: load an int constant
119: LDC 0, 4(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: write(s)
120: OUT 0, 0, 0	* write out the int value in ACC0
121: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
* BEGIN: load an int constant
122: LDC 0, 0(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: push to stack
123: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
124: LDC 2, 51(0)	* Load diagnostic char into ACC2
125: JLE 3, 182(4)	* stack failure
126: ST 0, 0(5)	* save ACC0 into the current SP location
127: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
128: LDC 0, 6(0)	* Load a constant into ACC0
* END: load an int constant
129: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
130: LD 1, 0(5)	* Load stored result into ACC1
* BEGIN: >=
131: SUB 0, 1, 0	* for >=, subtract right from left
132: JGE 0, 2(7)	* Jump to Load 1 if ACC0 >= 0
133: LDC 0, 0(0)	* Load 0 into ACC0
134: LDA 7, 1(7)	* Jump over Load 1
135: LDC 0, 1(0)	* Load 1 into ACC0
* END: >=
136: JEQ 0, 4(7)	* Jump over the then stmts if false
* BEGIN: load an int constant
137: LDC 0, 1(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: write(s)
138: OUT 0, 0, 0	* write out the int value in ACC0
139: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
140: LDA 7, 37(7)	* Jump over the rest of the if
* BEGIN: load an int constant
141: LDC 0, 6(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: push to stack
142: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
143: LDC 2, 51(0)	* Load diagnostic char into ACC2
144: JLE 3, 182(4)	* stack failure
145: ST 0, 0(5)	* save ACC0 into the current SP location
146: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
147: LDC 0, 6(0)	* Load a constant into ACC0
* END: load an int constant
148: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
149: LD 1, 0(5)	* Load stored result into ACC1
* BEGIN: >=
150: SUB 0, 1, 0	* for >=, subtract right from left
151: JGE 0, 2(7)	* Jump to Load 1 if ACC0 >= 0
152: LDC 0, 0(0)	* Load 0 into ACC0
153: LDA 7, 1(7)	* Jump over Load 1
154: LDC 0, 1(0)	* Load 1 into ACC0
* END: >=
155: JEQ 0, 4(7)	* Jump over the then stmts if false
* BEGIN: load an int constant
156: LDC 0, 2(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: write(s)
157: OUT 0, 0, 0	* write out the int value in ACC0
158: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
159: LDA 7, 18(7)	* Jump over the rest of the if
* BEGIN: load an int constant
160: LDC 0, 6(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: push to stack
161: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
162: LDC 2, 51(0)	* Load diagnostic char into ACC2
163: JLE 3, 182(4)	* stack failure
164: ST 0, 0(5)	* save ACC0 into the current SP location
165: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
166: LDC 0, 6(0)	* Load a constant into ACC0
* END: load an int constant
167: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
168: LD 1, 0(5)	* Load stored result into ACC1
* BEGIN: >=
169: SUB 0, 1, 0	* for >=, subtract right from left
170: JGE 0, 2(7)	* Jump to Load 1 if ACC0 >= 0
171: LDC 0, 0(0)	* Load 0 into ACC0
172: LDA 7, 1(7)	* Jump over Load 1
173: LDC 0, 1(0)	* Load 1 into ACC0
* END: >=
174: JEQ 0, 3(7)	* Jump over the then stmts if false
* BEGIN: load an int constant
175: LDC 0, 3(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: write(s)
176: OUT 0, 0, 0	* write out the int value in ACC0
177: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
* BEGIN: load an int constant
178: LDC 0, 4(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: write(s)
179: OUT 0, 0, 0	* write out the int value in ACC0
180: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
181: HALT 0, 0, 0	* End of Program
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
