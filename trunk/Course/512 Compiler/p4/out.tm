.DATA    25
.SDATA   "invalid numeric character"
.DATA    13
.SDATA   "out of memory"
.DATA    25
.SDATA   "please give a value for a"
.DATA    18
.SDATA   "array index error!"
.DATA    17
.SDATA   "b := a + 0, b is "
.DATA    17
.SDATA   "c := a - 0, c is "
0: LD    6, 0(5)  save stack pointer
1: LD    4, 0(5)  save frame pointer
3: LDC   0, 67(5)  load array error str address
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
23: LDC   0, 41(5)  load string offset 41
24: LD    1, 0(0)  load str length into ac2
25: JEQ   1, 5(7)  output nothing when empty
26: LDA   0, 1(0)  increase offset
27: LD    2, 0(0)  load char into ac3
28: OUTC   2, 2, 2  write char
29: LDA   1, -1(1)  decrease length of remaining string in ac2
30: JNE   1, -5(7)  continue print if not yet finish
31: OUTNL 0, 0, 0  write new line
32: IN   0, 0, 0  read integer from stdin
33: ST    0, 124(5)  store int/bool/string into previous used static data
34: LD    0, 124(5)  load int/bool/str from static data
35: ST    0, 122(5)  store int/bool/string into previous used static data
36: LD    0, 124(5)  load int/bool/str from static data
37: ST    0, 123(5)  store int/bool/string into previous used static data
38: LDC   0, 86(5)  load string offset 86
39: LD    1, 0(0)  load str length into ac2
40: JEQ   1, 5(7)  output nothing when empty
41: LDA   0, 1(0)  increase offset
42: LD    2, 0(0)  load char into ac3
43: OUTC   2, 2, 2  write char
44: LDA   1, -1(1)  decrease length of remaining string in ac2
45: JNE   1, -5(7)  continue print if not yet finish
46: LD    0, 122(5)  load int/bool/str from static data
47: OUT   0, 0, 0  write integer
48: OUTNL 0, 0, 0  write new line
49: LDC   0, 104(5)  load string offset 104
50: LD    1, 0(0)  load str length into ac2
51: JEQ   1, 5(7)  output nothing when empty
52: LDA   0, 1(0)  increase offset
53: LD    2, 0(0)  load char into ac3
54: OUTC   2, 2, 2  write char
55: LDA   1, -1(1)  decrease length of remaining string in ac2
56: JNE   1, -5(7)  continue print if not yet finish
57: LD    0, 123(5)  load int/bool/str from static data
58: OUT   0, 0, 0  write integer
59: OUTNL 0, 0, 0  write new line
60: HALT  0, 0, 0  program ends
