0: LD    6, 0(5)  save stack pointer
1: LD    4, 0(5)  save frame pointer
2: LDA   6, -1(6)  push fp
3: ST    4, 0(6)  push fp
4: LDA   4, 0(6)  set fp to sp
5: LDC   0, 1(5)  load integer 1
6: LDA   6, -1(6)  push low
7: ST    0, 0(6)  push low
8: LDC   0, 3(5)  load integer 3
9: LDA   6, -1(6)  push hi
10: ST    0, 0(6)  push hi
11: LD    0, -2(4)  load hi into ac 
12: LD    1, -1(4)  load low into ac2 
13: SUB   0, 0, 1  subtract hi with low
15: LDA   6, -1(6)  push fp
16: ST    4, 0(6)  push fp
17: LDA   4, 0(6)  set fp to sp
18: LDC   0, 1(5)  load integer 1
19: LDA   6, -1(6)  push low
20: ST    0, 0(6)  push low
21: LDC   0, 3(5)  load integer 3
22: LDA   6, -1(6)  push hi
23: ST    0, 0(6)  push hi
24: LD    0, -2(4)  load hi into ac 
25: LD    1, -1(4)  load low into ac2 
26: SUB   0, 0, 1  subtract hi with low
28: LDA   0, 0(4)  load fp into ac
29: LD    0, 0(0)  load upper level fp
30: LD    0, -1(0)  load int/bool from stack
31: OUT   0, 0, 0  write integer
32: OUTNL 0, 0, 0  write new line
33: LD    0, -1(4)  load low into ac
34: LDA   0, 1(0)  decrease low
35: ST    0, -1(4)  save low
36: LDA   7, -13(7)  jump back to loop start
27: JLT   0, 9(7)  jump out of the fa loop
37: LDA   6, 0(4)  change sp to fp + 1
38: LD    4, 0(6)  restore fp
39: LDA   6, 1(6)  restore fp
40: LD    0, -1(4)  load low into ac
41: LDA   0, 1(0)  decrease low
42: ST    0, -1(4)  save low
43: LDA   7, -33(7)  jump back to loop start
14: JLT   0, 29(7)  jump out of the fa loop
44: LDA   6, 0(4)  change sp to fp + 1
45: LD    4, 0(6)  restore fp
46: LDA   6, 1(6)  restore fp
47: HALT  0, 0, 0  program ends
