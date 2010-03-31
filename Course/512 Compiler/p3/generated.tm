0: LD    6, 0(5)  save stack pointer
1: LDC   3, 1(5)  save data pointer
2: LDC   0, 0(5)  load integer 0
3: LDA   6, -1(6)  push array index
4: ST    0, 0(6)  push array index
5: LDC   0, 0(5)  load integer 0
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
24: LDC   0, 1000(5)  load integer 1000
25: LD    1, 0(6)  pop final offset
26: LDA   6, 1(6)  pop final offset
27: ST    0, 0(1)  store value into static data
28: LDC   0, 1(5)  load integer 1
29: LDA   6, -1(6)  push array index
30: ST    0, 0(6)  push array index
31: LDC   0, 0(5)  load integer 0
32: LDA   6, -1(6)  push array index
33: ST    0, 0(6)  push array index
34: LDC   0, 2(5)  push array dimension
35: LDC   0, 0(5)  load 0 to ac
36: LD    1, 0(6)  pop index
37: LDA   6, 1(6)  pop index
38: LDC   2, 4(5)  load size of subarray
39: MUL   1, 1, 2  compute 0 dim
40: ADD   0, 0, 1  add result
41: LD    1, 0(6)  pop index
42: LDA   6, 1(6)  pop index
43: LDC   2, 1(5)  load size of subarray
44: MUL   1, 1, 2  compute 1 dim
45: ADD   0, 0, 1  add result
46: LDC   1, 1(5)  load offset into ac2
47: ADD   0, 0, 1  compute final offset
48: LDA   6, -1(6)  push final offset
49: ST    0, 0(6)  push final offset
50: LDC   0, 1001(5)  load integer 1001
51: LD    1, 0(6)  pop final offset
52: LDA   6, 1(6)  pop final offset
53: ST    0, 0(1)  store value into static data
54: LDC   0, 0(5)  load integer 0
55: LDA   6, -1(6)  push array index
56: ST    0, 0(6)  push array index
57: LDC   0, 1(5)  load integer 1
58: LDA   6, -1(6)  push array index
59: ST    0, 0(6)  push array index
60: LDC   0, 2(5)  push array dimension
61: LDC   0, 0(5)  load 0 to ac
62: LD    1, 0(6)  pop index
63: LDA   6, 1(6)  pop index
64: LDC   2, 4(5)  load size of subarray
65: MUL   1, 1, 2  compute 0 dim
66: ADD   0, 0, 1  add result
67: LD    1, 0(6)  pop index
68: LDA   6, 1(6)  pop index
69: LDC   2, 1(5)  load size of subarray
70: MUL   1, 1, 2  compute 1 dim
71: ADD   0, 0, 1  add result
72: LDC   1, 1(5)  load offset into ac2
73: ADD   0, 0, 1  compute final offset
74: LDA   6, -1(6)  push final offset
75: ST    0, 0(6)  push final offset
76: LDC   0, 1002(5)  load integer 1002
77: LD    1, 0(6)  pop final offset
78: LDA   6, 1(6)  pop final offset
79: ST    0, 0(1)  store value into static data
80: LDC   0, 2(5)  load integer 2
81: LDA   6, -1(6)  push array index
82: ST    0, 0(6)  push array index
83: LDC   0, 1(5)  load integer 1
84: LDA   6, -1(6)  push array index
85: ST    0, 0(6)  push array index
86: LDC   0, 2(5)  push array dimension
87: LDC   0, 0(5)  load 0 to ac
88: LD    1, 0(6)  pop index
89: LDA   6, 1(6)  pop index
90: LDC   2, 4(5)  load size of subarray
91: MUL   1, 1, 2  compute 0 dim
92: ADD   0, 0, 1  add result
93: LD    1, 0(6)  pop index
94: LDA   6, 1(6)  pop index
95: LDC   2, 1(5)  load size of subarray
96: MUL   1, 1, 2  compute 1 dim
97: ADD   0, 0, 1  add result
98: LDC   1, 1(5)  load offset into ac2
99: ADD   0, 0, 1  compute final offset
100: LDA   6, -1(6)  push final offset
101: ST    0, 0(6)  push final offset
102: LDC   0, 2(5)  load integer 2
103: LD    1, 0(6)  pop final offset
104: LDA   6, 1(6)  pop final offset
105: ST    0, 0(1)  store value into static data
106: LDC   0, 0(5)  load integer 0
107: LDA   6, -1(6)  push array index
108: ST    0, 0(6)  push array index
109: LDC   0, 0(5)  load integer 0
110: LDA   6, -1(6)  push array index
111: ST    0, 0(6)  push array index
112: LDC   0, 2(5)  push array dimension
113: LDC   0, 0(5)  load 0 to ac
114: LD    1, 0(6)  pop index
115: LDA   6, 1(6)  pop index
116: LDC   2, 4(5)  load size of subarray
117: MUL   1, 1, 2  compute 0 dim
118: ADD   0, 0, 1  add result
119: LD    1, 0(6)  pop index
120: LDA   6, 1(6)  pop index
121: LDC   2, 1(5)  load size of subarray
122: MUL   1, 1, 2  compute 1 dim
123: ADD   0, 0, 1  add result
124: LDC   1, 1(5)  load offset into ac2
125: ADD   0, 0, 1  compute final offset
126: LD    0, 0(0)  load data from array
127: OUT   0, 0, 0  write integer
128: OUTNL 0, 0, 0  write new line
129: LDC   0, 1(5)  load integer 1
130: LDA   6, -1(6)  push array index
131: ST    0, 0(6)  push array index
132: LDC   0, 0(5)  load integer 0
133: LDA   6, -1(6)  push array index
134: ST    0, 0(6)  push array index
135: LDC   0, 2(5)  push array dimension
136: LDC   0, 0(5)  load 0 to ac
137: LD    1, 0(6)  pop index
138: LDA   6, 1(6)  pop index
139: LDC   2, 4(5)  load size of subarray
140: MUL   1, 1, 2  compute 0 dim
141: ADD   0, 0, 1  add result
142: LD    1, 0(6)  pop index
143: LDA   6, 1(6)  pop index
144: LDC   2, 1(5)  load size of subarray
145: MUL   1, 1, 2  compute 1 dim
146: ADD   0, 0, 1  add result
147: LDC   1, 1(5)  load offset into ac2
148: ADD   0, 0, 1  compute final offset
149: LD    0, 0(0)  load data from array
150: OUT   0, 0, 0  write integer
151: OUTNL 0, 0, 0  write new line
152: LDC   0, 0(5)  load integer 0
153: LDA   6, -1(6)  push array index
154: ST    0, 0(6)  push array index
155: LDC   0, 1(5)  load integer 1
156: LDA   6, -1(6)  push array index
157: ST    0, 0(6)  push array index
158: LDC   0, 2(5)  push array dimension
159: LDC   0, 0(5)  load 0 to ac
160: LD    1, 0(6)  pop index
161: LDA   6, 1(6)  pop index
162: LDC   2, 4(5)  load size of subarray
163: MUL   1, 1, 2  compute 0 dim
164: ADD   0, 0, 1  add result
165: LD    1, 0(6)  pop index
166: LDA   6, 1(6)  pop index
167: LDC   2, 1(5)  load size of subarray
168: MUL   1, 1, 2  compute 1 dim
169: ADD   0, 0, 1  add result
170: LDC   1, 1(5)  load offset into ac2
171: ADD   0, 0, 1  compute final offset
172: LD    0, 0(0)  load data from array
173: OUT   0, 0, 0  write integer
174: OUTNL 0, 0, 0  write new line
175: LDC   0, 2(5)  load integer 2
176: LDA   6, -1(6)  push array index
177: ST    0, 0(6)  push array index
178: LDC   0, 1(5)  load integer 1
179: LDA   6, -1(6)  push array index
180: ST    0, 0(6)  push array index
181: LDC   0, 2(5)  push array dimension
182: LDC   0, 0(5)  load 0 to ac
183: LD    1, 0(6)  pop index
184: LDA   6, 1(6)  pop index
185: LDC   2, 4(5)  load size of subarray
186: MUL   1, 1, 2  compute 0 dim
187: ADD   0, 0, 1  add result
188: LD    1, 0(6)  pop index
189: LDA   6, 1(6)  pop index
190: LDC   2, 1(5)  load size of subarray
191: MUL   1, 1, 2  compute 1 dim
192: ADD   0, 0, 1  add result
193: LDC   1, 1(5)  load offset into ac2
194: ADD   0, 0, 1  compute final offset
195: LD    0, 0(0)  load data from array
196: OUT   0, 0, 0  write integer
197: OUTNL 0, 0, 0  write new line
198: HALT  0, 0, 0  program ends
