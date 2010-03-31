0: LD    6, 0(5)  save stack pointer
1: LDC   3, 1(5)  save data pointer
2: LDC   0, 1(5)  load integer 1
3: ST    0, 1(5)  store int into static data
4: LD    0, 1(5)  load from static data
5: LDA   6, -1(6)  push first child's value
6: ST    0, 0(6)  push first child's value
7: LDC   0, 5(5)  load integer 5
8: LD    1, 0(6)  pop first child's value
9: LDA   6, 1(6)  pop first child's value
10: SUB   1, 1, 0  greater than
11: LDC   0, 1(5)  load 1 as true
12: JLE   1, 1(7)  skip load false
13: LDC   0, 0(5)  load 0 as false
15: LD    0, 1(5)  load from static data
16: OUT   0, 0, 0  write integer
17: OUTNL 0, 0, 0  write new line
18: LD    0, 1(5)  load from static data
19: LDA   6, -1(6)  push first child's value
20: ST    0, 0(6)  push first child's value
21: LDC   0, 1(5)  load integer 1
22: LD    1, 0(6)  pop first child's value
23: LDA   6, 1(6)  pop first child's value
24: ADD   0, 0, 1  add two children
25: ST    0, 1(5)  store int into previous used static data
26: LDA   7, -23(7)  jump back to loop start
14: JEQ   0, 12(7)  jump out of the do loop
27: HALT  0, 0, 0  program ends
