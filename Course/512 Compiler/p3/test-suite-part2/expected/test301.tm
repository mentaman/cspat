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
4: LDA 0, 81(7)	* Get return address into ACC0
5: LDA 3, -49(5)	* Subtract the stack limit from SP - store in ACC3
6: LDC 2, 97(0)	* Load diagnostic char into ACC2
7: JLE 3, 176(4)	* stack failure
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
15: JLE 3, 176(4)	* stack failure
16: ST 0, 0(5)	* Store param in slot
17: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* BEGIN: load an int constant
18: LDC 0, 0(0)	* Load a constant into ACC0
* END: load an int constant
19: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
20: LDC 2, 98(0)	* Load diagnostic char into ACC2
21: JLE 3, 176(4)	* stack failure
22: ST 0, 0(5)	* Store param in slot
23: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* BEGIN: load an int constant
24: LDC 0, 0(0)	* Load a constant into ACC0
* END: load an int constant
25: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
26: LDC 2, 98(0)	* Load diagnostic char into ACC2
27: JLE 3, 176(4)	* stack failure
28: ST 0, 0(5)	* Store param in slot
29: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* BEGIN: load an int constant
30: LDC 0, 0(0)	* Load a constant into ACC0
* END: load an int constant
31: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
32: LDC 2, 98(0)	* Load diagnostic char into ACC2
33: JLE 3, 176(4)	* stack failure
34: ST 0, 0(5)	* Store param in slot
35: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* BEGIN: load an int constant
36: LDC 0, 0(0)	* Load a constant into ACC0
* END: load an int constant
37: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
38: LDC 2, 98(0)	* Load diagnostic char into ACC2
39: JLE 3, 176(4)	* stack failure
40: ST 0, 0(5)	* Store param in slot
41: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* BEGIN: load an int constant
42: LDC 0, 0(0)	* Load a constant into ACC0
* END: load an int constant
43: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
44: LDC 2, 98(0)	* Load diagnostic char into ACC2
45: JLE 3, 176(4)	* stack failure
46: ST 0, 0(5)	* Store param in slot
47: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* BEGIN: load an int constant
48: LDC 0, 0(0)	* Load a constant into ACC0
* END: load an int constant
49: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
50: LDC 2, 98(0)	* Load diagnostic char into ACC2
51: JLE 3, 176(4)	* stack failure
52: ST 0, 0(5)	* Store param in slot
53: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* BEGIN: load an int constant
54: LDC 0, 0(0)	* Load a constant into ACC0
* END: load an int constant
55: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
56: LDC 2, 98(0)	* Load diagnostic char into ACC2
57: JLE 3, 176(4)	* stack failure
58: ST 0, 0(5)	* Store param in slot
59: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* BEGIN: load an int constant
60: LDC 0, 0(0)	* Load a constant into ACC0
* END: load an int constant
61: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
62: LDC 2, 98(0)	* Load diagnostic char into ACC2
63: JLE 3, 176(4)	* stack failure
64: ST 0, 0(5)	* Store param in slot
65: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* BEGIN: load an int constant
66: LDC 0, 0(0)	* Load a constant into ACC0
* END: load an int constant
67: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
68: LDC 2, 98(0)	* Load diagnostic char into ACC2
69: JLE 3, 176(4)	* stack failure
70: ST 0, 0(5)	* Store param in slot
71: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* BEGIN: load an int constant
72: LDC 0, 0(0)	* Load a constant into ACC0
* END: load an int constant
73: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
74: LDC 2, 98(0)	* Load diagnostic char into ACC2
75: JLE 3, 176(4)	* stack failure
76: ST 0, 0(5)	* Store param in slot
77: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* BEGIN: load an int constant
78: LDC 0, 0(0)	* Load a constant into ACC0
* END: load an int constant
79: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
80: LDC 2, 98(0)	* Load diagnostic char into ACC2
81: JLE 3, 176(4)	* stack failure
82: ST 0, 0(5)	* Store param in slot
83: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
84: LDA 6, 16(5)	* Set FP to be the "pre-push of AR" SP
* SP already points to end of the AR
85: LDA 7, 89(4)	* Jump to the start of the proc
86: LD 5, -2(6)	* Restore SP from FP-2
87: LD 6, -3(6)	* Restore FP from FP-3
* END: procedure call
88: HALT 0, 0, 0	* End of Program
* BEGIN: procedure code
89: LDA 0, 0(0)	* NOOP to mark beginning of proc
* BEGIN: procedure call
90: LDA 0, 81(7)	* Get return address into ACC0
91: LDA 3, -49(5)	* Subtract the stack limit from SP - store in ACC3
92: LDC 2, 97(0)	* Load diagnostic char into ACC2
93: JLE 3, 176(4)	* stack failure
94: ST 0, 0(5)	* Store return address (in ACC0) to SP/FP
* return value sits at SP-1/FP-1
95: ST 5, -2(5)	* Store SP to SP-2/FP-2
96: ST 6, -3(5)	* Store FP to SP-3/FP-3
97: LDA 5, -4(5)	* decrement SP by 4 (i.e., 4 pushes)
* BEGIN: load an int constant
98: LDC 0, 0(0)	* Load a constant into ACC0
* END: load an int constant
99: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
100: LDC 2, 98(0)	* Load diagnostic char into ACC2
101: JLE 3, 176(4)	* stack failure
102: ST 0, 0(5)	* Store param in slot
103: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* BEGIN: load an int constant
104: LDC 0, 0(0)	* Load a constant into ACC0
* END: load an int constant
105: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
106: LDC 2, 98(0)	* Load diagnostic char into ACC2
107: JLE 3, 176(4)	* stack failure
108: ST 0, 0(5)	* Store param in slot
109: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* BEGIN: load an int constant
110: LDC 0, 0(0)	* Load a constant into ACC0
* END: load an int constant
111: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
112: LDC 2, 98(0)	* Load diagnostic char into ACC2
113: JLE 3, 176(4)	* stack failure
114: ST 0, 0(5)	* Store param in slot
115: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* BEGIN: load an int constant
116: LDC 0, 0(0)	* Load a constant into ACC0
* END: load an int constant
117: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
118: LDC 2, 98(0)	* Load diagnostic char into ACC2
119: JLE 3, 176(4)	* stack failure
120: ST 0, 0(5)	* Store param in slot
121: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* BEGIN: load an int constant
122: LDC 0, 0(0)	* Load a constant into ACC0
* END: load an int constant
123: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
124: LDC 2, 98(0)	* Load diagnostic char into ACC2
125: JLE 3, 176(4)	* stack failure
126: ST 0, 0(5)	* Store param in slot
127: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* BEGIN: load an int constant
128: LDC 0, 0(0)	* Load a constant into ACC0
* END: load an int constant
129: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
130: LDC 2, 98(0)	* Load diagnostic char into ACC2
131: JLE 3, 176(4)	* stack failure
132: ST 0, 0(5)	* Store param in slot
133: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* BEGIN: load an int constant
134: LDC 0, 0(0)	* Load a constant into ACC0
* END: load an int constant
135: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
136: LDC 2, 98(0)	* Load diagnostic char into ACC2
137: JLE 3, 176(4)	* stack failure
138: ST 0, 0(5)	* Store param in slot
139: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* BEGIN: load an int constant
140: LDC 0, 0(0)	* Load a constant into ACC0
* END: load an int constant
141: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
142: LDC 2, 98(0)	* Load diagnostic char into ACC2
143: JLE 3, 176(4)	* stack failure
144: ST 0, 0(5)	* Store param in slot
145: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* BEGIN: load an int constant
146: LDC 0, 0(0)	* Load a constant into ACC0
* END: load an int constant
147: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
148: LDC 2, 98(0)	* Load diagnostic char into ACC2
149: JLE 3, 176(4)	* stack failure
150: ST 0, 0(5)	* Store param in slot
151: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* BEGIN: load an int constant
152: LDC 0, 0(0)	* Load a constant into ACC0
* END: load an int constant
153: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
154: LDC 2, 98(0)	* Load diagnostic char into ACC2
155: JLE 3, 176(4)	* stack failure
156: ST 0, 0(5)	* Store param in slot
157: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* BEGIN: load an int constant
158: LDC 0, 0(0)	* Load a constant into ACC0
* END: load an int constant
159: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
160: LDC 2, 98(0)	* Load diagnostic char into ACC2
161: JLE 3, 176(4)	* stack failure
162: ST 0, 0(5)	* Store param in slot
163: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* BEGIN: load an int constant
164: LDC 0, 0(0)	* Load a constant into ACC0
* END: load an int constant
165: LDA 3, -46(5)	* Subtract the stack limit from SP - store in ACC3
166: LDC 2, 98(0)	* Load diagnostic char into ACC2
167: JLE 3, 176(4)	* stack failure
168: ST 0, 0(5)	* Store param in slot
169: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
170: LDA 6, 16(5)	* Set FP to be the "pre-push of AR" SP
* SP already points to end of the AR
171: LDA 7, 89(4)	* Jump to the start of the proc
172: LD 5, -2(6)	* Restore SP from FP-2
173: LD 6, -3(6)	* Restore FP from FP-3
* END: procedure call
174: LD 0, 0(6)	* Load the return address from the 1st slot in the AR to ACC0
175: LDA 7, 0(0)	* Return to calling location (stored in ACC0)
* END: procedure code
* BEGIN: stack limit message handler
176: LDC 0, 25(0)	* Load the error message into ACC0
177: LDA 1, 1(0)	* Increment the address stored in ACC0 to get the string's char location (put in ACC1)
178: LD 0, 0(0)	* Load the string size into ACC0
179: JEQ 0, 5(7)	* Jump to end when run out of string
180: LDA 0, -1(0)	* subtract one from string size
181: LD 3, 0(1)	* Load next char from string into ACC3
182: LDA 1, 1(1)	* increment pointer into string
183: OUTC 3, 0, 0	* Write out character in ACC3
184: LDA 7, -6(7)	* Go back to start of loop
185: OUTC 2, 0, 0	* Write out diagnostic char in ACC2
186: OUTNL 0, 0, 0	* dump out the newline
187: HALT 0, 0, 0	* Halt for stack limit
* END: stack limit message handler
