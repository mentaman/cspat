.DATA    4
.SDATA   "n = "
.DATA    5
.SDATA   "hello"
0: LD    6, 0(5)  save stack pointer
1: LD    4, 0(5)  save frame pointer
2: LDA   7, 3(5)  jump to start of the program
3: LDC   0, 6(5)  load string offset 6
4: ST    0, 12(5)  store int/bool/string into previous used static data
5: LD    0, 12(5)  load int/bool/str from static data
6: ST    0, 43(5)  store int/bool/string into previous used static data
7: LD    0, 12(5)  load int/bool/str from static data
8: LD    1, 0(0)  load str length into ac2
9: LDA   0, 1(0)  increase offset
10: LD    2, 0(0)  load char into ac3
11: OUTC   2, 2, 2  write char
12: LDA   1, -1(1)  decrease length of remaining string in ac2
13: JNE   1, -5(7)  continue print if not yet finish
14: OUTNL 0, 0, 0  write new line
15: LDC   0, 5(5)  load integer 5
16: ST    0, 45(5)  store int/bool/string into previous used static data
17: LD    0, 45(5)  load int/bool/str from static data
18: OUT   0, 0, 0  write integer
19: OUTNL 0, 0, 0  write new line
20: LDC   0, 1(5)  load string offset 1
21: LD    1, 0(0)  load str length into ac2
22: LDA   0, 1(0)  increase offset
23: LD    2, 0(0)  load char into ac3
24: OUTC   2, 2, 2  write char
25: LDA   1, -1(1)  decrease length of remaining string in ac2
26: JNE   1, -5(7)  continue print if not yet finish
27: LD    0, 43(5)  load int/bool/str from static data
28: LD    1, 0(0)  load str length into ac2
29: LDA   0, 1(0)  increase offset
30: LD    2, 0(0)  load char into ac3
31: OUTC   2, 2, 2  write char
32: LDA   1, -1(1)  decrease length of remaining string in ac2
33: JNE   1, -5(7)  continue print if not yet finish
34: HALT  0, 0, 0  program ends
