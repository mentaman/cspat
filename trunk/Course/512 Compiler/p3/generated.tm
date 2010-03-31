0: LD    6, 0(5)  save stack pointer
1: LD    0, 0(5)  load from static data
2: LDC   0, 10(5)  load integer 10
3: ST    0, 1(5)  store into static data
4: LD    0, 1(5)  load from static data
5: LDA   6, -1(6)  push first child's value
6: ST    0, 0(6)  push first child's value
7: LDC   0, 2(5)  load integer 2
8: LD    1, 0(6)  pop first child's value
9: LDA   6, 1(6)  pop first child's value
10: ADD   0, 0, 1  add two children
11: OUT   0, 0, 0  write integer
12: OUTNL 0, 0, 0  write new line
13: HALT  0, 0, 0  program ends
