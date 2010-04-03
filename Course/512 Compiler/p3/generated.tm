.DATA   5
.SDATA   "hello"
.DATA   11
.SDATA   "hello world"
0: LD    6, 0(5)  save stack pointer
1: LD    4, 0(5)  save frame pointer
2: LDA   7, 3(5)  jump to start of the program
3: LDC   0, 100(5)  load char in ASCii: 100
4: LDA   6, -1(6)  push char into stack
5: ST    0, 0(6)  push char into stack
6: LDC   0, 108(5)  load char in ASCii: 108
7: LDA   6, -1(6)  push char into stack
8: ST    0, 0(6)  push char into stack
9: LDC   0, 114(5)  load char in ASCii: 114
10: LDA   6, -1(6)  push char into stack
11: ST    0, 0(6)  push char into stack
12: LDC   0, 111(5)  load char in ASCii: 111
13: LDA   6, -1(6)  push char into stack
14: ST    0, 0(6)  push char into stack
15: LDC   0, 119(5)  load char in ASCii: 119
16: LDA   6, -1(6)  push char into stack
17: ST    0, 0(6)  push char into stack
18: LDC   0, 32(5)  load char in ASCii: 32
19: LDA   6, -1(6)  push char into stack
20: ST    0, 0(6)  push char into stack
21: LDC   0, 111(5)  load char in ASCii: 111
22: LDA   6, -1(6)  push char into stack
23: ST    0, 0(6)  push char into stack
24: LDC   0, 108(5)  load char in ASCii: 108
25: LDA   6, -1(6)  push char into stack
26: ST    0, 0(6)  push char into stack
27: LDC   0, 108(5)  load char in ASCii: 108
28: LDA   6, -1(6)  push char into stack
29: ST    0, 0(6)  push char into stack
30: LDC   0, 101(5)  load char in ASCii: 101
31: LDA   6, -1(6)  push char into stack
32: ST    0, 0(6)  push char into stack
33: LDC   0, 104(5)  load char in ASCii: 104
34: LDA   6, -1(6)  push char into stack
35: ST    0, 0(6)  push char into stack
36: LDC   0, 11(5)  load string length 11
37: LD    1, 0(6)  pop char
38: LDA   6, 1(6)  pop char
39: OUTC   1, 1, 1  write char
40: LDA   0, -1(0)  decrease length of remaining string
41: JNE   0, -5(7)  continue print if not yet finish
42: OUTNL 0, 0, 0  write new line
43: LDC   0, 111(5)  load char in ASCii: 111
44: LDA   6, -1(6)  push char into stack
45: ST    0, 0(6)  push char into stack
46: LDC   0, 108(5)  load char in ASCii: 108
47: LDA   6, -1(6)  push char into stack
48: ST    0, 0(6)  push char into stack
49: LDC   0, 108(5)  load char in ASCii: 108
50: LDA   6, -1(6)  push char into stack
51: ST    0, 0(6)  push char into stack
52: LDC   0, 101(5)  load char in ASCii: 101
53: LDA   6, -1(6)  push char into stack
54: ST    0, 0(6)  push char into stack
55: LDC   0, 104(5)  load char in ASCii: 104
56: LDA   6, -1(6)  push char into stack
57: ST    0, 0(6)  push char into stack
58: LDC   0, 5(5)  load string length 5
59: LD    1, 0(6)  pop char
60: LDA   6, 1(6)  pop char
61: OUTC   1, 1, 1  write char
62: LDA   0, -1(0)  decrease length of remaining string
63: JNE   0, -5(7)  continue print if not yet finish
64: OUTNL 0, 0, 0  write new line
65: HALT  0, 0, 0  program ends
