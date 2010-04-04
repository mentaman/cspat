.DATA    4
.SDATA   "pass"
.DATA    5
.SDATA   "hello"
.DATA    5
.SDATA   "start"
0: LD    6, 0(5)  save stack pointer
1: LD    4, 0(5)  save frame pointer
3: LDA   1, 0(4)  load fp into ac2
4: LD    0, -3(1)  load int/bool/str from stack
5: LD    1, 0(0)  load str length into ac2
6: LDA   0, 1(0)  increase offset
7: LD    2, 0(0)  load char into ac3
8: OUTC   2, 2, 2  write char
9: LDA   1, -1(1)  decrease length of remaining string in ac2
10: JNE   1, -5(7)  continue print if not yet finish
11: OUTNL 0, 0, 0  write new line
12: LDC   0, 6(5)  load string offset 6
13: LDA   1, 0(4)  load fp into ac2
14: ST    0, -2(1)  store int/bool/string into stack
15: LD    0, -2(4)  load int/bool/string offset as return value
16: LD    1, -1(4)  load return address
17: LDA   6, 0(4)  change sp to fp + 1
18: LD    4, 0(6)  restore fp
19: LDA   6, 1(6)  restore fp
20: LDA   7, 0(1)  jump to the return address
2: LDA   7, 21(5)  jump to start of the program
21: LDC   0, 12(5)  load string offset 12
22: LD    1, 0(0)  load str length into ac2
23: LDA   0, 1(0)  increase offset
24: LD    2, 0(0)  load char into ac3
25: OUTC   2, 2, 2  write char
26: LDA   1, -1(1)  decrease length of remaining string in ac2
27: JNE   1, -5(7)  continue print if not yet finish
28: OUTNL 0, 0, 0  write new line
29: LDC   0, 1(5)  load string offset 1
30: ST    0, 18(5)  store int/bool/string into previous used static data
31: LDA   6, -1(6)  push fp
32: ST    4, 0(6)  push fp
33: LDA   4, 0(6)  set fp to sp
37: LDA   6, -1(6)  push zero as return value
38: ST    5, 0(6)  push zero as return value
39: LD    0, 18(5)  load int/bool/str from static data
40: LDA   6, -1(6)  push int/bool/str parameter
41: ST    0, 0(6)  push int/bool/str parameter
42: LDA   6, 0(6)  preserve space for local vars
43: LDA   7, 3(5)  jump to procedure call
34: LDC   0, 44(5)  load return address into ac
35: LDA   6, -1(6)  push return address
36: ST    0, 0(6)  push return address
44: LD    1, 0(0)  load str length into ac2
45: LDA   0, 1(0)  increase offset
46: LD    2, 0(0)  load char into ac3
47: OUTC   2, 2, 2  write char
48: LDA   1, -1(1)  decrease length of remaining string in ac2
49: JNE   1, -5(7)  continue print if not yet finish
50: OUTNL 0, 0, 0  write new line
51: HALT  0, 0, 0  program ends
