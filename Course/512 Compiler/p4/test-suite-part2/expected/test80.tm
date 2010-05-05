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
4: LDC 0, 1(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: push to stack
5: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
6: LDC 2, 55(0)	* Load diagnostic char into ACC2
7: JLE 3, 158(4)	* stack failure
8: ST 0, 0(5)	* save ACC0 into the current SP location
9: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
10: LDC 0, 2(0)	* Load a constant into ACC0
* END: load an int constant
11: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
12: LD 1, 0(5)	* Load stored result into ACC1
13: ADD 0, 0, 1	* Add ACC0 & ACC1 placing result in ACC0
* BEGIN: write(s)
14: OUT 0, 0, 0	* write out the int value in ACC0
15: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
* BEGIN: load an int constant
16: LDC 0, 1(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: push to stack
17: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
18: LDC 2, 55(0)	* Load diagnostic char into ACC2
19: JLE 3, 158(4)	* stack failure
20: ST 0, 0(5)	* save ACC0 into the current SP location
21: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
22: LDC 0, 3(0)	* Load a constant into ACC0
* END: load an int constant
23: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
24: LD 1, 0(5)	* Load stored result into ACC1
25: ADD 0, 0, 1	* Add ACC0 & ACC1 placing result in ACC0
* BEGIN: push to stack
26: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
27: LDC 2, 55(0)	* Load diagnostic char into ACC2
28: JLE 3, 158(4)	* stack failure
29: ST 0, 0(5)	* save ACC0 into the current SP location
30: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
31: LDC 0, 4(0)	* Load a constant into ACC0
* END: load an int constant
32: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
33: LD 1, 0(5)	* Load stored result into ACC1
34: ADD 0, 0, 1	* Add ACC0 & ACC1 placing result in ACC0
* BEGIN: push to stack
35: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
36: LDC 2, 55(0)	* Load diagnostic char into ACC2
37: JLE 3, 158(4)	* stack failure
38: ST 0, 0(5)	* save ACC0 into the current SP location
39: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
40: LDC 0, 5(0)	* Load a constant into ACC0
* END: load an int constant
41: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
42: LD 1, 0(5)	* Load stored result into ACC1
43: ADD 0, 0, 1	* Add ACC0 & ACC1 placing result in ACC0
* BEGIN: write(s)
44: OUT 0, 0, 0	* write out the int value in ACC0
45: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
* BEGIN: load an int constant
46: LDC 0, 1(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: push to stack
47: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
48: LDC 2, 55(0)	* Load diagnostic char into ACC2
49: JLE 3, 158(4)	* stack failure
50: ST 0, 0(5)	* save ACC0 into the current SP location
51: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
52: LDC 0, 3(0)	* Load a constant into ACC0
* END: load an int constant
53: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
54: LD 1, 0(5)	* Load stored result into ACC1
55: ADD 0, 0, 1	* Add ACC0 & ACC1 placing result in ACC0
* BEGIN: push to stack
56: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
57: LDC 2, 55(0)	* Load diagnostic char into ACC2
58: JLE 3, 158(4)	* stack failure
59: ST 0, 0(5)	* save ACC0 into the current SP location
60: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
61: LDC 0, 4(0)	* Load a constant into ACC0
* END: load an int constant
* BEGIN: push to stack
62: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
63: LDC 2, 55(0)	* Load diagnostic char into ACC2
64: JLE 3, 158(4)	* stack failure
65: ST 0, 0(5)	* save ACC0 into the current SP location
66: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load an int constant
67: LDC 0, 5(0)	* Load a constant into ACC0
* END: load an int constant
68: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
69: LD 1, 0(5)	* Load stored result into ACC1
70: ADD 0, 0, 1	* Add ACC0 & ACC1 placing result in ACC0
71: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
72: LD 1, 0(5)	* Load stored result into ACC1
73: ADD 0, 0, 1	* Add ACC0 & ACC1 placing result in ACC0
* BEGIN: write(s)
74: OUT 0, 0, 0	* write out the int value in ACC0
75: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
* BEGIN: load a bool value into ACC0
76: LDC 0, 1(0)	* Load a boolean value into ACC0
* END: load a bool value into ACC0
77: JGT 0, 11(7)	* Jump over rest of logical or code
* BEGIN: push to stack
78: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
79: LDC 2, 57(0)	* Load diagnostic char into ACC2
80: JLE 3, 158(4)	* stack failure
81: ST 0, 0(5)	* save ACC0 into the current SP location
82: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load a bool value into ACC0
83: LDC 0, 0(0)	* Load a boolean value into ACC0
* END: load a bool value into ACC0
84: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
85: LD 1, 0(5)	* Load stored result into ACC1
86: ADD 0, 1, 0	* for OR, add right and left
87: JEQ 0, 1(7)	* Jump over Load 1 if ACC0 == 0
88: LDC 0, 1(0)	* Load 1 into ACC0
* BEGIN: write(s)
89: OUT 0, 0, 0	* write out the int value in ACC0
90: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
* BEGIN: load a bool value into ACC0
91: LDC 0, 1(0)	* Load a boolean value into ACC0
* END: load a bool value into ACC0
92: JGT 0, 23(7)	* Jump over rest of logical or code
* BEGIN: push to stack
93: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
94: LDC 2, 57(0)	* Load diagnostic char into ACC2
95: JLE 3, 158(4)	* stack failure
96: ST 0, 0(5)	* save ACC0 into the current SP location
97: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load a bool value into ACC0
98: LDC 0, 0(0)	* Load a boolean value into ACC0
* END: load a bool value into ACC0
99: JGT 0, 11(7)	* Jump over rest of logical or code
* BEGIN: push to stack
100: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
101: LDC 2, 57(0)	* Load diagnostic char into ACC2
102: JLE 3, 158(4)	* stack failure
103: ST 0, 0(5)	* save ACC0 into the current SP location
104: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load a bool value into ACC0
105: LDC 0, 0(0)	* Load a boolean value into ACC0
* END: load a bool value into ACC0
106: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
107: LD 1, 0(5)	* Load stored result into ACC1
108: ADD 0, 1, 0	* for OR, add right and left
109: JEQ 0, 1(7)	* Jump over Load 1 if ACC0 == 0
110: LDC 0, 1(0)	* Load 1 into ACC0
111: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
112: LD 1, 0(5)	* Load stored result into ACC1
113: ADD 0, 1, 0	* for OR, add right and left
114: JEQ 0, 1(7)	* Jump over Load 1 if ACC0 == 0
115: LDC 0, 1(0)	* Load 1 into ACC0
* BEGIN: write(s)
116: OUT 0, 0, 0	* write out the int value in ACC0
117: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
* BEGIN: load a bool value into ACC0
118: LDC 0, 1(0)	* Load a boolean value into ACC0
* END: load a bool value into ACC0
119: JGT 0, 11(7)	* Jump over rest of logical or code
* BEGIN: push to stack
120: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
121: LDC 2, 57(0)	* Load diagnostic char into ACC2
122: JLE 3, 158(4)	* stack failure
123: ST 0, 0(5)	* save ACC0 into the current SP location
124: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load a bool value into ACC0
125: LDC 0, 1(0)	* Load a boolean value into ACC0
* END: load a bool value into ACC0
126: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
127: LD 1, 0(5)	* Load stored result into ACC1
128: ADD 0, 1, 0	* for OR, add right and left
129: JEQ 0, 1(7)	* Jump over Load 1 if ACC0 == 0
130: LDC 0, 1(0)	* Load 1 into ACC0
131: JGT 0, 23(7)	* Jump over rest of logical or code
* BEGIN: push to stack
132: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
133: LDC 2, 57(0)	* Load diagnostic char into ACC2
134: JLE 3, 158(4)	* stack failure
135: ST 0, 0(5)	* save ACC0 into the current SP location
136: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load a bool value into ACC0
137: LDC 0, 0(0)	* Load a boolean value into ACC0
* END: load a bool value into ACC0
138: JGT 0, 11(7)	* Jump over rest of logical or code
* BEGIN: push to stack
139: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
140: LDC 2, 57(0)	* Load diagnostic char into ACC2
141: JLE 3, 158(4)	* stack failure
142: ST 0, 0(5)	* save ACC0 into the current SP location
143: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: load a bool value into ACC0
144: LDC 0, 0(0)	* Load a boolean value into ACC0
* END: load a bool value into ACC0
145: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
146: LD 1, 0(5)	* Load stored result into ACC1
147: ADD 0, 1, 0	* for OR, add right and left
148: JEQ 0, 1(7)	* Jump over Load 1 if ACC0 == 0
149: LDC 0, 1(0)	* Load 1 into ACC0
150: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
151: LD 1, 0(5)	* Load stored result into ACC1
152: ADD 0, 1, 0	* for OR, add right and left
153: JEQ 0, 1(7)	* Jump over Load 1 if ACC0 == 0
154: LDC 0, 1(0)	* Load 1 into ACC0
* BEGIN: write(s)
155: OUT 0, 0, 0	* write out the int value in ACC0
156: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
157: HALT 0, 0, 0	* End of Program
* BEGIN: stack limit message handler
158: LDC 0, 25(0)	* Load the error message into ACC0
159: LDA 1, 1(0)	* Increment the address stored in ACC0 to get the string's char location (put in ACC1)
160: LD 0, 0(0)	* Load the string size into ACC0
161: JEQ 0, 5(7)	* Jump to end when run out of string
162: LDA 0, -1(0)	* subtract one from string size
163: LD 3, 0(1)	* Load next char from string into ACC3
164: LDA 1, 1(1)	* increment pointer into string
165: OUTC 3, 0, 0	* Write out character in ACC3
166: LDA 7, -6(7)	* Go back to start of loop
167: OUTC 2, 0, 0	* Write out diagnostic char in ACC2
168: OUTNL 0, 0, 0	* dump out the newline
169: HALT 0, 0, 0	* Halt for stack limit
* END: stack limit message handler
