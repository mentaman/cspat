.DATA    25
.SDATA   "invalid numeric character"
.DATA    13
.SDATA   "out of memory"
.DATA    18
.SDATA   "array index error!"
.DATA    11
.SDATA   "hello world"
0: LD    6, 0(5)  save stack pointer
1: LD    4, 0(5)  save frame pointer
3: LDC   0, 41(5)  load array error str address
4: LD    1, 0(0)  load str length into ac2
5: JEQ   1, 5(7)  output nothing when empty
6: LDA   0, 1(0)  increase offset
7: LD    2, 0(0)  load char into ac3
8: OUTC   2, 2, 2  write char
9: LDA   1, -1(1)  decrease length of remaining string in ac2
10: JNE   1, -5(7)  continue print if not yet finish
11: OUTNL 0, 0, 0  emit newline
12: HALT  0, 0, 0  stop because of array error
13: LDC   0, 27(5)  load out of memory str address
14: LD    1, 0(0)  load str length into ac2
15: JEQ   1, 5(7)  output nothing when empty
16: LDA   0, 1(0)  increase offset
17: LD    2, 0(0)  load char into ac3
18: OUTC   2, 2, 2  write char
19: LDA   1, -1(1)  decrease length of remaining string in ac2
20: JNE   1, -5(7)  continue print if not yet finish
21: OUTNL 0, 0, 0  emit newline
22: HALT  0, 0, 0  stop because of out of memory error
2: LDA   7, 23(5)  jump to start of the program
23: LDC   0, 60(5)  load string offset 60
24: LD    1, 0(0)  load str length into ac2
25: JEQ   1, 5(7)  output nothing when empty
26: LDA   0, 1(0)  increase offset
27: LD    2, 0(0)  load char into ac3
28: OUTC   2, 2, 2  write char
29: LDA   1, -1(1)  decrease length of remaining string in ac2
30: JNE   1, -5(7)  continue print if not yet finish
31: OUTNL 0, 0, 0  write new line
32: HALT  0, 0, 0  program ends
