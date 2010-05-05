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
4: LDC 0, 2(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: push to stack
5: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
6: LDC 2, 55(0)	* Load diagnostic char into ACC2
7: JLE 3, 167(4)	* stack failure
8: ST 0, 0(5)	* save ACC0 into the current SP location
9: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
10: LDC 0, 2(0)	* Load a constant into ACC0
* END: load an int constant
11: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
12: LD 1, 0(5)	* Load stored result into ACC1
13: MUL 0, 0, 1	* Multiply ACC0 & ACC1 placing result in ACC0
* BEGIN: write(s)
14: OUT 0, 0, 0	* write out the int value in ACC0
15: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
* BEGIN: load an int constant
16: LDC 0, 2(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: push to stack
17: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
18: LDC 2, 55(0)	* Load diagnostic char into ACC2
19: JLE 3, 167(4)	* stack failure
20: ST 0, 0(5)	* save ACC0 into the current SP location
21: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
22: LDC 0, 4(0)	* Load a constant into ACC0
* END: load an int constant
23: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
24: LD 1, 0(5)	* Load stored result into ACC1
25: MUL 0, 0, 1	* Multiply ACC0 & ACC1 placing result in ACC0
* BEGIN: push to stack
26: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
27: LDC 2, 55(0)	* Load diagnostic char into ACC2
28: JLE 3, 167(4)	* stack failure
29: ST 0, 0(5)	* save ACC0 into the current SP location
30: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
31: LDC 0, 7(0)	* Load a constant into ACC0
* END: load an int constant
32: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
33: LD 1, 0(5)	* Load stored result into ACC1
34: MUL 0, 0, 1	* Multiply ACC0 & ACC1 placing result in ACC0
* BEGIN: push to stack
35: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
36: LDC 2, 55(0)	* Load diagnostic char into ACC2
37: JLE 3, 167(4)	* stack failure
38: ST 0, 0(5)	* save ACC0 into the current SP location
39: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
40: LDC 0, 9(0)	* Load a constant into ACC0
* END: load an int constant
41: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
42: LD 1, 0(5)	* Load stored result into ACC1
43: MUL 0, 0, 1	* Multiply ACC0 & ACC1 placing result in ACC0
* BEGIN: write(s)
44: OUT 0, 0, 0	* write out the int value in ACC0
45: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
* BEGIN: load an int constant
46: LDC 0, 2(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: push to stack
47: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
48: LDC 2, 55(0)	* Load diagnostic char into ACC2
49: JLE 3, 167(4)	* stack failure
50: ST 0, 0(5)	* save ACC0 into the current SP location
51: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
52: LDC 0, 3(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: push to stack
53: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
54: LDC 2, 55(0)	* Load diagnostic char into ACC2
55: JLE 3, 167(4)	* stack failure
56: ST 0, 0(5)	* save ACC0 into the current SP location
57: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
58: LDC 0, 4(0)	* Load a constant into ACC0
* END: load an int constant
59: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
60: LD 1, 0(5)	* Load stored result into ACC1
61: MUL 0, 0, 1	* Multiply ACC0 & ACC1 placing result in ACC0
62: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
63: LD 1, 0(5)	* Load stored result into ACC1
64: MUL 0, 0, 1	* Multiply ACC0 & ACC1 placing result in ACC0
* BEGIN: write(s)
65: OUT 0, 0, 0	* write out the int value in ACC0
66: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
* BEGIN: load a bool value into ACC0
67: LDC 0, 1(0)	* Load a boolean value into ACC0
* END: load a bool value into ACC0
68: JEQ 0, 14(7)	* if left is false jump over the rest of the and
* BEGIN: push to stack
69: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
70: LDC 2, 49(0)	* Load diagnostic char into ACC2
71: JLE 3, 167(4)	* stack failure
72: ST 0, 0(5)	* save ACC0 into the current SP location
73: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load a bool value into ACC0
74: LDC 0, 0(0)	* Load a boolean value into ACC0
* END: load a bool value into ACC0
75: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
76: LD 1, 0(5)	* Load stored result into ACC1
77: ADD 0, 1, 0	* for AND, add right and left
78: LDA 0, -2(0)	* Then subtract 2
79: JEQ 0, 2(7)	* Jump to Load 1 if ACC0 == 0
80: LDC 0, 0(0)	* Load 0 into ACC0
81: LDA 7, 1(7)	* Jump over Load 1
82: LDC 0, 1(0)	* Load 1 into ACC0
* BEGIN: write(s)
83: OUT 0, 0, 0	* write out the int value in ACC0
84: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
* BEGIN: load a bool value into ACC0
85: LDC 0, 1(0)	* Load a boolean value into ACC0
* END: load a bool value into ACC0
86: JEQ 0, 29(7)	* if left is false jump over the rest of the and
* BEGIN: push to stack
87: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
88: LDC 2, 49(0)	* Load diagnostic char into ACC2
89: JLE 3, 167(4)	* stack failure
90: ST 0, 0(5)	* save ACC0 into the current SP location
91: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load a bool value into ACC0
92: LDC 0, 0(0)	* Load a boolean value into ACC0
* END: load a bool value into ACC0
93: JEQ 0, 14(7)	* if left is false jump over the rest of the and
* BEGIN: push to stack
94: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
95: LDC 2, 49(0)	* Load diagnostic char into ACC2
96: JLE 3, 167(4)	* stack failure
97: ST 0, 0(5)	* save ACC0 into the current SP location
98: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load a bool value into ACC0
99: LDC 0, 0(0)	* Load a boolean value into ACC0
* END: load a bool value into ACC0
100: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
101: LD 1, 0(5)	* Load stored result into ACC1
102: ADD 0, 1, 0	* for AND, add right and left
103: LDA 0, -2(0)	* Then subtract 2
104: JEQ 0, 2(7)	* Jump to Load 1 if ACC0 == 0
105: LDC 0, 0(0)	* Load 0 into ACC0
106: LDA 7, 1(7)	* Jump over Load 1
107: LDC 0, 1(0)	* Load 1 into ACC0
108: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
109: LD 1, 0(5)	* Load stored result into ACC1
110: ADD 0, 1, 0	* for AND, add right and left
111: LDA 0, -2(0)	* Then subtract 2
112: JEQ 0, 2(7)	* Jump to Load 1 if ACC0 == 0
113: LDC 0, 0(0)	* Load 0 into ACC0
114: LDA 7, 1(7)	* Jump over Load 1
115: LDC 0, 1(0)	* Load 1 into ACC0
* BEGIN: write(s)
116: OUT 0, 0, 0	* write out the int value in ACC0
117: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
* BEGIN: load a bool value into ACC0
118: LDC 0, 1(0)	* Load a boolean value into ACC0
* END: load a bool value into ACC0
119: JEQ 0, 14(7)	* if left is false jump over the rest of the and
* BEGIN: push to stack
120: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
121: LDC 2, 49(0)	* Load diagnostic char into ACC2
122: JLE 3, 167(4)	* stack failure
123: ST 0, 0(5)	* save ACC0 into the current SP location
124: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load a bool value into ACC0
125: LDC 0, 0(0)	* Load a boolean value into ACC0
* END: load a bool value into ACC0
126: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
127: LD 1, 0(5)	* Load stored result into ACC1
128: ADD 0, 1, 0	* for AND, add right and left
129: LDA 0, -2(0)	* Then subtract 2
130: JEQ 0, 2(7)	* Jump to Load 1 if ACC0 == 0
131: LDC 0, 0(0)	* Load 0 into ACC0
132: LDA 7, 1(7)	* Jump over Load 1
133: LDC 0, 1(0)	* Load 1 into ACC0
134: JEQ 0, 29(7)	* if left is false jump over the rest of the and
* BEGIN: push to stack
135: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
136: LDC 2, 49(0)	* Load diagnostic char into ACC2
137: JLE 3, 167(4)	* stack failure
138: ST 0, 0(5)	* save ACC0 into the current SP location
139: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load a bool value into ACC0
140: LDC 0, 0(0)	* Load a boolean value into ACC0
* END: load a bool value into ACC0
141: JEQ 0, 14(7)	* if left is false jump over the rest of the and
* BEGIN: push to stack
142: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
143: LDC 2, 49(0)	* Load diagnostic char into ACC2
144: JLE 3, 167(4)	* stack failure
145: ST 0, 0(5)	* save ACC0 into the current SP location
146: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load a bool value into ACC0
147: LDC 0, 0(0)	* Load a boolean value into ACC0
* END: load a bool value into ACC0
148: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
149: LD 1, 0(5)	* Load stored result into ACC1
150: ADD 0, 1, 0	* for AND, add right and left
151: LDA 0, -2(0)	* Then subtract 2
152: JEQ 0, 2(7)	* Jump to Load 1 if ACC0 == 0
153: LDC 0, 0(0)	* Load 0 into ACC0
154: LDA 7, 1(7)	* Jump over Load 1
155: LDC 0, 1(0)	* Load 1 into ACC0
156: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
157: LD 1, 0(5)	* Load stored result into ACC1
158: ADD 0, 1, 0	* for AND, add right and left
159: LDA 0, -2(0)	* Then subtract 2
160: JEQ 0, 2(7)	* Jump to Load 1 if ACC0 == 0
161: LDC 0, 0(0)	* Load 0 into ACC0
162: LDA 7, 1(7)	* Jump over Load 1
163: LDC 0, 1(0)	* Load 1 into ACC0
* BEGIN: write(s)
164: OUT 0, 0, 0	* write out the int value in ACC0
165: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
166: HALT 0, 0, 0	* End of Program
* BEGIN: stack limit message handler
167: LDC 0, 25(0)	* Load the error message into ACC0
168: LDA 1, 1(0)	* Increment the address stored in ACC0 to get the string's char location (put in ACC1)
169: LD 0, 0(0)	* Load the string size into ACC0
170: JEQ 0, 5(7)	* Jump to end when run out of string
171: LDA 0, -1(0)	* subtract one from string size
172: LD 3, 0(1)	* Load next char from string into ACC3
173: LDA 1, 1(1)	* increment pointer into string
174: OUTC 3, 0, 0	* Write out character in ACC3
175: LDA 7, -6(7)	* Go back to start of loop
176: OUTC 2, 0, 0	* Write out diagnostic char in ACC2
177: OUTNL 0, 0, 0	* dump out the newline
178: HALT 0, 0, 0	* Halt for stack limit
* END: stack limit message handler
