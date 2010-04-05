.DATA    13
.SDATA   "before assign"
.DATA    17
.SDATA   "main after return"
.DATA    13
.SDATA   "before return"
.DATA    12
.SDATA   "after return"
0: LD    6, 0(5)  save stack pointer
1: LD    4, 0(5)  save frame pointer
3: LDC   0, 1(5)  load string offset 1
4: LD    1, 0(0)  load str length into ac2
5: LDA   0, 1(0)  increase offset
6: LD    2, 0(0)  load char into ac3
7: OUTC   2, 2, 2  write char
8: LDA   1, -1(1)  decrease length of remaining string in ac2
9: JNE   1, -5(7)  continue print if not yet finish
10: OUTNL 0, 0, 0  write new line
11: LDC   0, 33(5)  load string offset 33
12: LDA   1, 0(4)  load fp into ac2
13: ST    0, -2(1)  store int/bool/string into stack
15: LDC   0, 47(5)  load string offset 47
16: LD    1, 0(0)  load str length into ac2
17: LDA   0, 1(0)  increase offset
18: LD    2, 0(0)  load char into ac3
19: OUTC   2, 2, 2  write char
20: LDA   1, -1(1)  decrease length of remaining string in ac2
21: JNE   1, -5(7)  continue print if not yet finish
22: OUTNL 0, 0, 0  write new line
14: LDA   7, 8(7)  return procedure call
23: LD    0, -2(4)  load int/bool/string offset as return value
24: LD    1, -1(4)  load return address
25: LDA   6, 0(4)  change sp to fp + 1
26: LD    4, 0(6)  restore fp
27: LDA   6, 1(6)  restore fp
28: LDA   7, 0(1)  jump to the return address
2: LDA   7, 29(5)  jump to start of the program
29: LDA   6, -1(6)  push fp
30: ST    4, 0(6)  push fp
31: LDA   4, 0(6)  set fp to sp
35: LDA   6, -1(6)  push zero as return value
36: ST    5, 0(6)  push zero as return value
37: LDA   6, 0(6)  preserve space for local vars
38: LDA   7, 3(5)  jump to procedure call
32: LDC   0, 39(5)  load return address into ac
33: LDA   6, -1(6)  push return address
34: ST    0, 0(6)  push return address
39: LD    1, 0(0)  load str length into ac2
40: LDA   0, 1(0)  increase offset
41: LD    2, 0(0)  load char into ac3
42: OUTC   2, 2, 2  write char
43: LDA   1, -1(1)  decrease length of remaining string in ac2
44: JNE   1, -5(7)  continue print if not yet finish
45: OUTNL 0, 0, 0  write new line
46: HALT  0, 0, 0  return in global scope
47: LDC   0, 15(5)  load string offset 15
48: LD    1, 0(0)  load str length into ac2
49: LDA   0, 1(0)  increase offset
50: LD    2, 0(0)  load char into ac3
51: OUTC   2, 2, 2  write char
52: LDA   1, -1(1)  decrease length of remaining string in ac2
53: JNE   1, -5(7)  continue print if not yet finish
54: OUTNL 0, 0, 0  write new line
55: HALT  0, 0, 0  program ends
