.DATA 23	* string length
.SDATA "Arrays bounds violation"	* string constant
.DATA 19	* string length
.SDATA "Out of stack space "	* string constant
.DATA 1	* string length
.SDATA "3"	* string constant
.DATA 0	* storage location (47) for var i
* BEGIN preamble
0: LDC 4, 0(0)	* initialize ZEROREG to 0
1: LD 5, 0(4)	* initialize SP to end of memory
2: LDA 5, -1(5)	* subtract one to get the true SP
3: LDA 6, 0(5)	* FP and SP start off the same
* END preamble
* BEGIN: procedure call
4: LDA 0, 19(7)	* Get return address into ACC0
5: LDA 3, -52(5)	* Subtract the stack limit from SP - store in ACC3
6: LDC 2, 97(0)	* Load diagnostic char into ACC2
7: JLE 3, 97(4)	* stack failure
8: ST 0, 0(5)	* Store return address (in ACC0) to SP/FP
* return value sits at SP-1/FP-1
9: ST 5, -2(5)	* Store SP to SP-2/FP-2
10: ST 6, -3(5)	* Store FP to SP-3/FP-3
11: LDA 5, -4(5)	* decrement SP by 4 (i.e., 4 pushes)
12: LDA 3, -49(5)	* Subtract the stack limit from SP - store in ACC3
13: LDC 2, 99(0)	* Load diagnostic char into ACC2
14: JLE 3, 97(4)	* stack failure
15: LDA 5, -1(5)	* decrement SP by local var's size (i.e., push)
* BEGIN: load a string's location into ACC0
16: LDC 0, 45(0)	* Load a string's location into ACC0
* END: load a string's location into ACC0
17: LDA 3, -49(5)	* Subtract the stack limit from SP - store in ACC3
18: LDC 2, 98(0)	* Load diagnostic char into ACC2
19: JLE 3, 97(4)	* stack failure
20: ST 0, 0(5)	* Store param in slot
21: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
22: LDA 6, 6(5)	* Set FP to be the "pre-push of AR" SP
* SP already points to end of the AR
23: LDA 7, 39(4)	* Jump to the start of the proc
24: LD 0, -4(6)	* Load the return value into ACC0
25: LD 5, -2(6)	* Restore SP from FP-2
26: LD 6, -3(6)	* Restore FP from FP-3
* END: procedure call
* BEGIN: push to stack
27: LDA 3, -49(5)	* Subtract the stack limit from SP - store in ACC3
28: LDC 2, 50(0)	* Load diagnostic char into ACC2
29: JLE 3, 97(4)	* stack failure
30: ST 0, 0(5)	* save ACC0 into the current SP location
31: LDA 5, -1(5)	* decrement SP by 1 (i.e., push)
* END: push to stack
* BEGIN: assignment
32: LDA 5, 1(5)	* increment SP by 1 (i.e., pop)
33: LD 0, 0(5)	* Load stored result into ACC0
34: ST 0, 47(4)	* Store ACC0 into global offset
* END: assignment
* BEGIN: variable (rvalue) access
35: LD 0, 47(4)	* Load the global var into ACC0
* END: variable (rvalue) access
* BEGIN: write(s)
36: OUT 0, 0, 0	* write out the int value in ACC0
37: OUTNL 0, 0, 0	* dump out the newline
* END: write(s)
38: HALT 0, 0, 0	* End of Program
* BEGIN: int procedure code
39: LDA 0, 0(0)	* NOOP to mark beginning of proc
40: LDC 5, 0(0)	* Load 0 into SP - we are misusing it in this proc
41: LDC 3, 1(0)	* Load 1 into ACC3
42: ST 3, -6(6)	* Store ACC3 into the bPos local var slot
43: LD 0, -5(6)	* Load the string's address into ACC0
44: LDA 1, 1(0)	* Load the string's char address into ACC1
45: LD 0, 0(0)	* Load the string size into ACC0
46: JEQ 0, 47(7)	* Jump to end if string is zero sized
47: LDA 0, -1(0)	* subtract one from string size
48: LD 2, 0(1)	* Load next char from string into ACC2
49: LDA 1, 1(1)	* increment pointer into string
50: LDC 3, 43(0)	* Load 43 ('+') into ACC3
51: SUB 3, 2, 3	* Subtract 43 from cur char
52: JEQ 3, 9(7)	* break if equal to 43
53: LDC 3, 45(0)	* Load 45 ('-') into ACC3
54: SUB 3, 2, 3	* Subtract 45 from cur char
55: JEQ 3, 6(7)	* break if equal to 45
56: LDC 3, 48(0)	* Load 48 ('0') into ACC3
57: SUB 3, 2, 3	* Subtract 48 from cur char
58: JLT 3, -13(7)	* go back to top if < 48 '0'
59: LDC 3, 57(0)	* Load 57 ('9') into ACC3
60: SUB 3, 2, 3	* Subtract 57 from cur char
61: JGT 3, -16(7)	* go back to top if > 57 '9'
62: LDA 0, 0(0)	* NOOP
63: LDC 3, 43(0)	* Load 43 ('+') into ACC3
64: SUB 3, 2, 3	* Subtract 43 from cur char
65: JEQ 3, 6(7)	* break if equal to 43
66: LDC 3, 45(0)	* Load 45 ('-') into ACC3
67: SUB 3, 2, 3	* Subtract 45 from cur char
68: JEQ 3, 1(7)	* break if equal to 45
69: LDA 7, 5(7)	* jump over
70: LDC 3, 0(0)	* Load 0 into ACC3
71: ST 3, -6(6)	* Store ACC3 into the bPos local var slot
72: LDA 0, -1(0)	* subtract one from string size
73: LD 2, 0(1)	* Load next char from string into ACC2
74: LDA 1, 1(1)	* increment pointer into string
75: JLT 0, 15(7)	* Jump to end if string is zero sized
76: LDC 3, 57(0)	* Load 57 ('9') into ACC3
77: SUB 3, 2, 3	* Subtract 57 from cur char
78: JGT 3, 12(7)	* quit if > 57 '9'
79: LDC 3, 48(0)	* Load 48 ('0') into ACC3
80: SUB 3, 2, 3	* Subtract 48 from cur char
81: JLT 3, 9(7)	* quit if < 48 '0'
82: LDC 3, 10(0)	* Load 10 into ACC3
83: MUL 5, 5, 3	* Shift accum value over
84: LDC 3, 48(0)	* Load 48 ('0') into ACC3
85: SUB 3, 2, 3	* Subtract 48 from cur char
86: ADD 5, 5, 3	* Add in the new ones places
87: LDA 0, -1(0)	* subtract one from string size
88: LD 2, 0(1)	* Load next char from string into ACC2
89: LDA 1, 1(1)	* increment pointer into string
90: LDA 7, -16(7)	* Go back to start of loop
91: LD 3, -6(6)	* Load bPos from the local var slot into ACC3
92: JNE 3, 1(7)	* Jump over the subtraction if still positive
93: SUB 5, 4, 5	* negate the accumulated value
94: ST 5, -4(6)	* Store the result into the return slot
95: LD 0, 0(6)	* Load the return address from the 1st slot in the AR to ACC0
96: LDA 7, 0(0)	* Return to calling location (stored in ACC0)
* END: int procedure code
* BEGIN: stack limit message handler
97: LDC 0, 25(0)	* Load the error message into ACC0
98: LDA 1, 1(0)	* Increment the address stored in ACC0 to get the string's char location (put in ACC1)
99: LD 0, 0(0)	* Load the string size into ACC0
100: JEQ 0, 5(7)	* Jump to end when run out of string
101: LDA 0, -1(0)	* subtract one from string size
102: LD 3, 0(1)	* Load next char from string into ACC3
103: LDA 1, 1(1)	* increment pointer into string
104: OUTC 3, 0, 0	* Write out character in ACC3
105: LDA 7, -6(7)	* Go back to start of loop
106: OUTC 2, 0, 0	* Write out diagnostic char in ACC2
107: OUTNL 0, 0, 0	* dump out the newline
108: HALT 0, 0, 0	* Halt for stack limit
* END: stack limit message handler
