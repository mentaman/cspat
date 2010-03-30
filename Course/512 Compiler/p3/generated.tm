0: LD    6, 0(5)  save stack pointer
1: LDC   0, 6(5)  load integer 6
2: LDA   6, -1(6)  push first child's value
3: ST    0, 0(6)  push first child's value
4: LDC   0, 3(5)  load integer 3
5: LD    1, 0(6)  pop first child's value
6: LDA   6, 1(6)  pop first child's value
7: SUB   1, 1, 0  greater than
8: LDC   0, 1(5)  load 1 as true
9: JLT   1, 1(7)  skip load false
10: LDC   0, 0(5)  load 0 as false
12: LDC   0, 1(5)  load integer 1
13: OUT   0, 0, 0  write integer
14: OUTNL 0, 0, 0  write new line
11: JEQ   0, 4(7)  if expr not true
16: LDC   0, 2(5)  load integer 2
17: LDA   6, -1(6)  push first child's value
18: ST    0, 0(6)  push first child's value
19: LDC   0, 3(5)  load integer 3
20: LD    1, 0(6)  pop first child's value
21: LDA   6, 1(6)  pop first child's value
22: SUB   1, 1, 0  greater than
23: LDC   0, 1(5)  load 1 as true
24: JGT   1, 1(7)  skip load false
25: LDC   0, 0(5)  load 0 as false
27: LDC   0, 2(5)  load integer 2
28: OUT   0, 0, 0  write integer
29: OUTNL 0, 0, 0  write new line
26: JEQ   0, 4(7)  if expr not true
31: LDC   0, 3(5)  load integer 3
32: OUT   0, 0, 0  write integer
33: OUTNL 0, 0, 0  write new line
15: LDA   7, 18(7)  Jump to the end of if
30: LDA   7, 3(7)  Jump to the end of if
34: HALT  0, 0, 0  program ends
