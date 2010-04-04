0: LDC   0, 2(5)  store array start address: 2
1: LDC   1, 1(5)  store array offset into ac21
2: ST    0, 0(1)  store array offset
3: LD    6, 0(5)  save stack pointer
4: LD    4, 0(5)  save frame pointer
5: LDA   7, 6(5)  jump to start of the program
6: LDC   0, 0(5)  load integer 0
7: LDA   6, -1(6)  push array index
8: ST    0, 0(6)  push array index
9: LDC   0, 0(5)  load integer 0
10: LDA   6, -1(6)  push array index
11: ST    0, 0(6)  push array index
12: LDC   0, 2(5)  push array dimension
13: LDC   0, 0(5)  load 0 to ac
14: LD    1, 0(6)  pop index
15: LDA   6, 1(6)  pop index
16: LDC   2, 4(5)  load size of subarray
17: MUL   1, 1, 2  compute 0 dim
18: ADD   0, 0, 1  add result
19: LD    1, 0(6)  pop index
20: LDA   6, 1(6)  pop index
21: LDC   2, 1(5)  load size of subarray
22: MUL   1, 1, 2  compute 1 dim
23: ADD   0, 0, 1  add result
24: LD    1, 1(5)  load offset into ac2
25: ADD   0, 0, 1  compute final offset
26: LDA   6, -1(6)  push final offset
27: ST    0, 0(6)  push final offset
28: LDC   0, 1000(5)  load integer 1000
29: LD    1, 0(6)  pop final offset
30: LDA   6, 1(6)  pop final offset
31: ST    0, 0(1)  store value into static data
32: LDC   0, 1(5)  load integer 1
33: LDA   6, -1(6)  push array index
34: ST    0, 0(6)  push array index
35: LDC   0, 0(5)  load integer 0
36: LDA   6, -1(6)  push array index
37: ST    0, 0(6)  push array index
38: LDC   0, 2(5)  push array dimension
39: LDC   0, 0(5)  load 0 to ac
40: LD    1, 0(6)  pop index
41: LDA   6, 1(6)  pop index
42: LDC   2, 4(5)  load size of subarray
43: MUL   1, 1, 2  compute 0 dim
44: ADD   0, 0, 1  add result
45: LD    1, 0(6)  pop index
46: LDA   6, 1(6)  pop index
47: LDC   2, 1(5)  load size of subarray
48: MUL   1, 1, 2  compute 1 dim
49: ADD   0, 0, 1  add result
50: LD    1, 1(5)  load offset into ac2
51: ADD   0, 0, 1  compute final offset
52: LDA   6, -1(6)  push final offset
53: ST    0, 0(6)  push final offset
54: LDC   0, 1001(5)  load integer 1001
55: LD    1, 0(6)  pop final offset
56: LDA   6, 1(6)  pop final offset
57: ST    0, 0(1)  store value into static data
58: LDC   0, 0(5)  load integer 0
59: LDA   6, -1(6)  push array index
60: ST    0, 0(6)  push array index
61: LDC   0, 1(5)  load integer 1
62: LDA   6, -1(6)  push array index
63: ST    0, 0(6)  push array index
64: LDC   0, 2(5)  push array dimension
65: LDC   0, 0(5)  load 0 to ac
66: LD    1, 0(6)  pop index
67: LDA   6, 1(6)  pop index
68: LDC   2, 4(5)  load size of subarray
69: MUL   1, 1, 2  compute 0 dim
70: ADD   0, 0, 1  add result
71: LD    1, 0(6)  pop index
72: LDA   6, 1(6)  pop index
73: LDC   2, 1(5)  load size of subarray
74: MUL   1, 1, 2  compute 1 dim
75: ADD   0, 0, 1  add result
76: LD    1, 1(5)  load offset into ac2
77: ADD   0, 0, 1  compute final offset
78: LDA   6, -1(6)  push final offset
79: ST    0, 0(6)  push final offset
80: LDC   0, 1002(5)  load integer 1002
81: LD    1, 0(6)  pop final offset
82: LDA   6, 1(6)  pop final offset
83: ST    0, 0(1)  store value into static data
84: LDC   0, 2(5)  load integer 2
85: LDA   6, -1(6)  push array index
86: ST    0, 0(6)  push array index
87: LDC   0, 1(5)  load integer 1
88: LDA   6, -1(6)  push array index
89: ST    0, 0(6)  push array index
90: LDC   0, 2(5)  push array dimension
91: LDC   0, 0(5)  load 0 to ac
92: LD    1, 0(6)  pop index
93: LDA   6, 1(6)  pop index
94: LDC   2, 4(5)  load size of subarray
95: MUL   1, 1, 2  compute 0 dim
96: ADD   0, 0, 1  add result
97: LD    1, 0(6)  pop index
98: LDA   6, 1(6)  pop index
99: LDC   2, 1(5)  load size of subarray
100: MUL   1, 1, 2  compute 1 dim
101: ADD   0, 0, 1  add result
102: LD    1, 1(5)  load offset into ac2
103: ADD   0, 0, 1  compute final offset
104: LDA   6, -1(6)  push final offset
105: ST    0, 0(6)  push final offset
106: LDC   0, 2(5)  load integer 2
107: LD    1, 0(6)  pop final offset
108: LDA   6, 1(6)  pop final offset
109: ST    0, 0(1)  store value into static data
110: LDC   0, 0(5)  load integer 0
111: LDA   6, -1(6)  push array index
112: ST    0, 0(6)  push array index
113: LDC   0, 0(5)  load integer 0
114: LDA   6, -1(6)  push array index
115: ST    0, 0(6)  push array index
116: LDC   0, 2(5)  push array dimension
117: LDC   0, 0(5)  load 0 to ac
118: LD    1, 0(6)  pop index
119: LDA   6, 1(6)  pop index
120: LDC   2, 4(5)  load size of subarray
121: MUL   1, 1, 2  compute 0 dim
122: ADD   0, 0, 1  add result
123: LD    1, 0(6)  pop index
124: LDA   6, 1(6)  pop index
125: LDC   2, 1(5)  load size of subarray
126: MUL   1, 1, 2  compute 1 dim
127: ADD   0, 0, 1  add result
128: LD    1, 1(5)  load global offset into ac2
129: ADD   0, 0, 1  compute final offset
130: LD    0, 0(0)  load data from array
131: LDA   6, -1(6)  push first child's value
132: ST    0, 0(6)  push first child's value
133: LDC   0, 1(5)  load integer 1
134: LDA   6, -1(6)  push array index
135: ST    0, 0(6)  push array index
136: LDC   0, 0(5)  load integer 0
137: LDA   6, -1(6)  push array index
138: ST    0, 0(6)  push array index
139: LDC   0, 2(5)  push array dimension
140: LDC   0, 0(5)  load 0 to ac
141: LD    1, 0(6)  pop index
142: LDA   6, 1(6)  pop index
143: LDC   2, 4(5)  load size of subarray
144: MUL   1, 1, 2  compute 0 dim
145: ADD   0, 0, 1  add result
146: LD    1, 0(6)  pop index
147: LDA   6, 1(6)  pop index
148: LDC   2, 1(5)  load size of subarray
149: MUL   1, 1, 2  compute 1 dim
150: ADD   0, 0, 1  add result
151: LD    1, 1(5)  load global offset into ac2
152: ADD   0, 0, 1  compute final offset
153: LD    0, 0(0)  load data from array
154: LD    1, 0(6)  pop first child's value
155: LDA   6, 1(6)  pop first child's value
156: ADD   0, 0, 1  add two children
157: OUT   0, 0, 0  write integer
158: OUTNL 0, 0, 0  write new line
159: LDC   0, 1(5)  load integer 1
160: LDA   6, -1(6)  push array index
161: ST    0, 0(6)  push array index
162: LDC   0, 0(5)  load integer 0
163: LDA   6, -1(6)  push array index
164: ST    0, 0(6)  push array index
165: LDC   0, 2(5)  push array dimension
166: LDC   0, 0(5)  load 0 to ac
167: LD    1, 0(6)  pop index
168: LDA   6, 1(6)  pop index
169: LDC   2, 4(5)  load size of subarray
170: MUL   1, 1, 2  compute 0 dim
171: ADD   0, 0, 1  add result
172: LD    1, 0(6)  pop index
173: LDA   6, 1(6)  pop index
174: LDC   2, 1(5)  load size of subarray
175: MUL   1, 1, 2  compute 1 dim
176: ADD   0, 0, 1  add result
177: LD    1, 1(5)  load global offset into ac2
178: ADD   0, 0, 1  compute final offset
179: LD    0, 0(0)  load data from array
180: OUT   0, 0, 0  write integer
181: OUTNL 0, 0, 0  write new line
182: LDC   0, 0(5)  load integer 0
183: LDA   6, -1(6)  push array index
184: ST    0, 0(6)  push array index
185: LDC   0, 1(5)  load integer 1
186: LDA   6, -1(6)  push array index
187: ST    0, 0(6)  push array index
188: LDC   0, 2(5)  push array dimension
189: LDC   0, 0(5)  load 0 to ac
190: LD    1, 0(6)  pop index
191: LDA   6, 1(6)  pop index
192: LDC   2, 4(5)  load size of subarray
193: MUL   1, 1, 2  compute 0 dim
194: ADD   0, 0, 1  add result
195: LD    1, 0(6)  pop index
196: LDA   6, 1(6)  pop index
197: LDC   2, 1(5)  load size of subarray
198: MUL   1, 1, 2  compute 1 dim
199: ADD   0, 0, 1  add result
200: LD    1, 1(5)  load global offset into ac2
201: ADD   0, 0, 1  compute final offset
202: LD    0, 0(0)  load data from array
203: OUT   0, 0, 0  write integer
204: OUTNL 0, 0, 0  write new line
205: LDC   0, 2(5)  load integer 2
206: LDA   6, -1(6)  push array index
207: ST    0, 0(6)  push array index
208: LDC   0, 1(5)  load integer 1
209: LDA   6, -1(6)  push array index
210: ST    0, 0(6)  push array index
211: LDC   0, 2(5)  push array dimension
212: LDC   0, 0(5)  load 0 to ac
213: LD    1, 0(6)  pop index
214: LDA   6, 1(6)  pop index
215: LDC   2, 4(5)  load size of subarray
216: MUL   1, 1, 2  compute 0 dim
217: ADD   0, 0, 1  add result
218: LD    1, 0(6)  pop index
219: LDA   6, 1(6)  pop index
220: LDC   2, 1(5)  load size of subarray
221: MUL   1, 1, 2  compute 1 dim
222: ADD   0, 0, 1  add result
223: LD    1, 1(5)  load global offset into ac2
224: ADD   0, 0, 1  compute final offset
225: LD    0, 0(0)  load data from array
226: OUT   0, 0, 0  write integer
227: OUTNL 0, 0, 0  write new line
228: HALT  0, 0, 0  program ends
