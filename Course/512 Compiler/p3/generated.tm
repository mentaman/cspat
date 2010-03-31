0: LD    6, 0(5)  save stack pointer
1: LDC   3, 1(5)  save data pointer
2: LDC   0, 2(5)  load integer 2
3: LDA   6, -1(6)  push array index
4: ST    0, 0(6)  push array index
5: LDC   0, 1(5)  load integer 1
6: LDA   6, -1(6)  push array index
7: ST    0, 0(6)  push array index
8: LDC   0, 2(5)  push array dimension
9: LDC   0, 0(5)  load 0 to ac
10: LD    1, 0(6)  pop index
11: LDA   6, 1(6)  pop index
12: LDC   2, 4(5)  load size of subarray
13: MUL   1, 1, 2  compute 0 dim
14: ADD   0, 0, 1  add result
15: LD    1, 0(6)  pop index
16: LDA   6, 1(6)  pop index
17: LDC   2, 1(5)  load size of subarray
18: MUL   1, 1, 2  compute 1 dim
19: ADD   0, 0, 1  add result
20: LDC   1, 1(5)  load offset into ac2
21: ADD   0, 0, 1  compute final offset
22: LDA   6, -1(6)  push final offset
23: ST    0, 0(6)  push final offset
24: LDC   0, 2(5)  load integer 2
25: LD    1, 0(6)  pop final offset
26: LDA   6, 1(6)  pop final offset
27: ST    0, 0(1)  store value into static data
28: HALT  0, 0, 0  program ends
