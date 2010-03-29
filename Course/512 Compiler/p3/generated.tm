0: LD    6, 0(5)  save stack pointer
1: LDC   0, 6(5)  load integer 6
2: LDA   6, -1(6)  push first child's value
3: ST    0, 0(6)  push first child's value
4: LDC   0, 5(5)  load integer 5
5: LD    1, 0(6)  pop first child's value
6: LDA   6, 1(6)  pop first child's value
7: SUB   1, 1, 0  greater than
8: LDC   0, 1(5)  load 1 as true
9: JGT   1, 1(7)  skip load false
10: LDC   0, 0(5)  load 0 as false
11: LDC   0, 1(5)  load integer 1
12: OUT   0, 0, 0  write integer
13: OUTNL 0, 0, 0  write new line
14: LDC   0, 7(5)  load integer 7
15: LDA   6, -1(6)  push first child's value
16: ST    0, 0(6)  push first child's value
17: LDC   0, 6(5)  load integer 6
18: LD    1, 0(6)  pop first child's value
19: LDA   6, 1(6)  pop first child's value
20: SUB   1, 1, 0  greater than
21: LDC   0, 1(5)  load 1 as true
22: JGT   1, 1(7)  skip load false
23: LDC   0, 0(5)  load 0 as false
24: LDC   0, 2(5)  load integer 2
25: OUT   0, 0, 0  write integer
26: OUTNL 0, 0, 0  write new line
27: LDC   0, 0(5)  load integer 0
28: OUT   0, 0, 0  write integer
29: OUTNL 0, 0, 0  write new line
30: HALT  0, 0, 0  program ends
