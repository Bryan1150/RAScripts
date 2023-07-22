// Harvest Moon DS: Sunshine Islands
// #ID = 24964

farmName = dword(0x0ea420)
saveFile = byte(0x0ec901)
function SaveProtection(){
    return farmName == prev(farmName) && saveFile == prev(saveFile)
}

shippingList = {1:{"address":0xebc08, "name":"Turnip", "category":"Crops", "subcategory":""},
2:{"address":0xebc10, "name":"Potato", "category":"Crops", "subcategory":""},
3:{"address":0xebc18, "name":"Cucumber", "category":"Crops", "subcategory":""},
4:{"address":0xebc20, "name":"Strawberry", "category":"Crops", "subcategory":""},
5:{"address":0xebc28, "name":"Cabbage", "category":"Crops", "subcategory":""},
6:{"address":0xebc30, "name":"Tomato", "category":"Crops", "subcategory":""},
7:{"address":0xebc38, "name":"Maize", "category":"Crops", "subcategory":""},
8:{"address":0xebc40, "name":"Onion", "category":"Crops", "subcategory":""},
9:{"address":0xebc48, "name":"Pumpkin", "category":"Crops", "subcategory":""},
10:{"address":0xebc50, "name":"Pineapple", "category":"Crops", "subcategory":""},
11:{"address":0xebc58, "name":"Aubergine", "category":"Crops", "subcategory":""},
12:{"address":0xebc60, "name":"Carrot", "category":"Crops", "subcategory":""},
13:{"address":0xebc68, "name":"Sweet Potato", "category":"Crops", "subcategory":""},
14:{"address":0xebc70, "name":"Spinach", "category":"Crops", "subcategory":""},
15:{"address":0xebc78, "name":"Bell Pepper", "category":"Crops", "subcategory":""},
16:{"address":0xebc80, "name":"Peach", "category":"Crops", "subcategory":""},
17:{"address":0xebc88, "name":"Banana", "category":"Crops", "subcategory":""},
18:{"address":0xebc90, "name":"Orange", "category":"Crops", "subcategory":""},
19:{"address":0xebc98, "name":"Apple", "category":"Crops", "subcategory":""},
20:{"address":0xebca0, "name":"Grape", "category":"Crops", "subcategory":""},
21:{"address":0xebca8, "name":"Mushroom", "category":"Other", "subcategory":""},
22:{"address":0xebcb0, "name":"Mushroom Cluster", "category":"Other", "subcategory":""},
23:{"address":0xebcb8, "name":"Truffle", "category":"Other", "subcategory":""},
24:{"address":0xebcc0, "name":"Poisonous Mushroom", "category":"Other", "subcategory":""},
25:{"address":0xebcc8, "name":"Rice", "category":"Crops", "subcategory":""},
26:{"address":0xebcd0, "name":"Wheat", "category":"Crops", "subcategory":""},
27:{"address":0xebcd8, "name":"Soybeans", "category":"Crops", "subcategory":""},
28:{"address":0xebce0, "name":"Buckwheat", "category":"Crops", "subcategory":""},
29:{"address":0xebce8, "name":"Edamame", "category":"Crops", "subcategory":""},
30:{"address":0xebcf0, "name":"Seaweed", "category":"Fishing", "subcategory":""},
31:{"address":0xebcf8, "name":"Bamboo Shoot", "category":"Other", "subcategory":""},
32:{"address":0xebd00, "name":"Blueberry", "category":"Other", "subcategory":""},
33:{"address":0xebd08, "name":"Chestnut", "category":"Other", "subcategory":""},
34:{"address":0xebd10, "name":"Sea Urchin", "category":"Fishing", "subcategory":""},
35:{"address":0xebd18, "name":"Jelly", "category":"Other", "subcategory":""},
36:{"address":0xebd20, "name":"Rice Flour", "category":"Crops", "subcategory":""},
37:{"address":0xebd28, "name":"Wheat Flour", "category":"Crops", "subcategory":""},
38:{"address":0xebd30, "name":"Soybean Flour", "category":"Crops", "subcategory":""},
39:{"address":0xebd38, "name":"Buckwheat Flour", "category":"Crops", "subcategory":""},
40:{"address":0xebd40, "name":"Bread Crumbs", "category":"Other", "subcategory":""},
41:{"address":0xebd48, "name":"Sweet Rice Flour", "category":"Other", "subcategory":""},
42:{"address":0xebd50, "name":"Egg", "category":"Animal", "subcategory":""},
43:{"address":0xebd58, "name":"Silkie Egg", "category":"Animal", "subcategory":""},
44:{"address":0xebd60, "name":"Mayonnaise", "category":"Animal", "subcategory":""},
45:{"address":0xebd68, "name":"Superb Mayonnaise", "category":"Animal", "subcategory":""},
46:{"address":0xebd70, "name":"Milk", "category":"Animal", "subcategory":""},
47:{"address":0xebd78, "name":"Jersey Milk", "category":"Animal", "subcategory":""},
48:{"address":0xebd80, "name":"Cheese", "category":"Animal", "subcategory":""},
49:{"address":0xebd88, "name":"Superb Cheese", "category":"Animal", "subcategory":""},
50:{"address":0xebd90, "name":"Yoghurt", "category":"Animal", "subcategory":""},
51:{"address":0xebd98, "name":"Superb Yoghurt", "category":"Animal", "subcategory":""},
52:{"address":0xebda0, "name":"Butter", "category":"Animal", "subcategory":""},
53:{"address":0xebda8, "name":"Superb Butter", "category":"Animal", "subcategory":""},
54:{"address":0xebdb0, "name":"Blue Herb", "category":"Other", "subcategory":""},
55:{"address":0xebdb8, "name":"Green Herb", "category":"Other", "subcategory":""},
56:{"address":0xebdc0, "name":"Red Herb", "category":"Other", "subcategory":""},
57:{"address":0xebdc8, "name":"Yellow Herb", "category":"Other", "subcategory":""},
58:{"address":0xebdd0, "name":"Orange Herb", "category":"Other", "subcategory":""},
59:{"address":0xebdd8, "name":"Purple Herb", "category":"Other", "subcategory":""},
60:{"address":0xebde0, "name":"Indigo Herb", "category":"Other", "subcategory":""},
61:{"address":0xebde8, "name":"Black Herb", "category":"Other", "subcategory":""},
62:{"address":0xebdf0, "name":"White Herb", "category":"Other", "subcategory":""},
63:{"address":0xebdf8, "name":"Twin Herb", "category":"Other", "subcategory":""},
64:{"address":0xebe00, "name":"Fish (S)", "category":"Fishing", "subcategory":""},
65:{"address":0xebe08, "name":"Fish (M)", "category":"Fishing", "subcategory":""},
66:{"address":0xebe10, "name":"Fish (L)", "category":"Fishing", "subcategory":""},
67:{"address":0xebe18, "name":"Rice Cake", "category":"Other", "subcategory":""},
68:{"address":0xebe20, "name":"Oil", "category":"Other", "subcategory":""},
69:{"address":0xebe28, "name":"Curry Powder", "category":"Other", "subcategory":""},
70:{"address":0xebe30, "name":"Chocolate", "category":"Other", "subcategory":""},
71:{"address":0xebe38, "name":"Salad", "category":"Cooking", "subcategory":""},
72:{"address":0xebe40, "name":"Pickled Turnip", "category":"Cooking", "subcategory":""},
73:{"address":0xebe48, "name":"Mashed Potatoes", "category":"Cooking", "subcategory":""},
74:{"address":0xebe50, "name":"Gherkin", "category":"Cooking", "subcategory":""},
75:{"address":0xebe58, "name":"Onion Salad", "category":"Cooking", "subcategory":""},
76:{"address":0xebe60, "name":"Boiled Spinach", "category":"Cooking", "subcategory":""},
77:{"address":0xebe68, "name":"Tomato Salad", "category":"Cooking", "subcategory":""},
78:{"address":0xebe70, "name":"Insalata di Caprese", "category":"Cooking", "subcategory":""},
79:{"address":0xebe78, "name":"Herb Salad", "category":"Cooking", "subcategory":""},
80:{"address":0xebe80, "name":"Spaguetti Salad", "category":"Cooking", "subcategory":""},
81:{"address":0xebe88, "name":"Elli Leaves", "category":"Cooking", "subcategory":""},
82:{"address":0xebe90, "name":"Vichyssoise", "category":"Cooking", "subcategory":""},
83:{"address":0xebe98, "name":"Gazpacho", "category":"Cooking", "subcategory":""},
84:{"address":0xebea0, "name":"Bouillabaisse", "category":"Cooking", "subcategory":""},
85:{"address":0xebea8, "name":"Corn Soup", "category":"Cooking", "subcategory":""},
86:{"address":0xebeb0, "name":"Onion Soup", "category":"Cooking", "subcategory":""},
87:{"address":0xebeb8, "name":"Pumpkin Soup", "category":"Cooking", "subcategory":""},
88:{"address":0xebec0, "name":"Egg Soup", "category":"Cooking", "subcategory":""},
89:{"address":0xebec8, "name":"SoyMilk", "category":"Cooking", "subcategory":""},
90:{"address":0xebed0, "name":"Miso Soup", "category":"Cooking", "subcategory":""},
91:{"address":0xebed8, "name":"Herb Soup", "category":"Cooking", "subcategory":""},
92:{"address":0xebee0, "name":"Spaghetti Soup", "category":"Cooking", "subcategory":""},
93:{"address":0xebee8, "name":"Tomato Juice", "category":"Cooking", "subcategory":""},
94:{"address":0xebef0, "name":"Pineapple Juice", "category":"Cooking", "subcategory":""},
95:{"address":0xebef8, "name":"Peach Juice", "category":"Cooking", "subcategory":""},
96:{"address":0xebf00, "name":"Banana Juice", "category":"Cooking", "subcategory":""},
97:{"address":0xebf08, "name":"Orange Juice", "category":"Cooking", "subcategory":""},
98:{"address":0xebf10, "name":"Apple Juice", "category":"Cooking", "subcategory":""},
99:{"address":0xebf18, "name":"Grape Juice", "category":"Cooking", "subcategory":""},
100:{"address":0xebf20, "name":"Grape Nectar", "category":"Cooking", "subcategory":""},
101:{"address":0xebf28, "name":"Carrot Juice", "category":"Cooking", "subcategory":""},
102:{"address":0xebf30, "name":"Blueberry Juice", "category":"Cooking", "subcategory":""},
103:{"address":0xebf38, "name":"Lassi", "category":"Cooking", "subcategory":""},
104:{"address":0xebf40, "name":"Fruit Juice", "category":"Cooking", "subcategory":""},
105:{"address":0xebf48, "name":"Vegetable Juice", "category":"Cooking", "subcategory":""},
106:{"address":0xebf50, "name":"Mixed Juice", "category":"Cooking", "subcategory":""},
107:{"address":0xebf58, "name":"Fruit Milkshake", "category":"Cooking", "subcategory":""},
108:{"address":0xebf60, "name":"Veggie Milkshake", "category":"Cooking", "subcategory":""},
109:{"address":0xebf68, "name":"Mixed Milkshake", "category":"Cooking", "subcategory":""},
110:{"address":0xebf70, "name":"Strawberry Milk", "category":"Cooking", "subcategory":""},
111:{"address":0xebf78, "name":"Relax Tea", "category":"Cooking", "subcategory":""},
112:{"address":0xebf80, "name":"Hot Milk", "category":"Cooking", "subcategory":""},
113:{"address":0xebf88, "name":"Hot Chocolate", "category":"Cooking", "subcategory":""},
114:{"address":0xebf90, "name":"Fruit Nectar", "category":"Cooking", "subcategory":""},
115:{"address":0xebf98, "name":"Genki Soup", "category":"Cooking", "subcategory":""},
116:{"address":0xebfa0, "name":"Steamed Turnip", "category":"Cooking", "subcategory":""},
117:{"address":0xebfa8, "name":"Chips", "category":"Cooking", "subcategory":""},
118:{"address":0xebfb0, "name":"Braised Potato", "category":"Cooking", "subcategory":""},
119:{"address":0xebfb8, "name":"Stuffed Cabbage", "category":"Cooking", "subcategory":""},
120:{"address":0xebfc0, "name":"Roasted Corn", "category":"Cooking", "subcategory":""},
121:{"address":0xebfc8, "name":"Popcorn", "category":"Cooking", "subcategory":""},
122:{"address":0xebfd0, "name":"Corn Cereal", "category":"Cooking", "subcategory":""},
123:{"address":0xebfd8, "name":"Cooked Pumpkin", "category":"Cooking", "subcategory":""},
124:{"address":0xebfe0, "name":"Miso Aubergine", "category":"Cooking", "subcategory":""},
125:{"address":0xebfe8, "name":"Grilled Aubergine", "category":"Cooking", "subcategory":""},
126:{"address":0xebff0, "name":"Baked Sweat Potato", "category":"Cooking", "subcategory":""},
127:{"address":0xebff8, "name":"Boiled Egg", "category":"Cooking", "subcategory":""},
128:{"address":0xec000, "name":"Hot Spring Egg", "category":"Cooking", "subcategory":""},
129:{"address":0xec008, "name":"Fried Egg", "category":"Cooking", "subcategory":""},
130:{"address":0xec010, "name":"Steamed Egg Custard", "category":"Cooking", "subcategory":""},
131:{"address":0xec018, "name":"Rolled Omelette", "category":"Cooking", "subcategory":""},
132:{"address":0xec020, "name":"Sashimi", "category":"Cooking", "subcategory":""},
133:{"address":0xec028, "name":"Fish Sticks", "category":"Cooking", "subcategory":""},
134:{"address":0xec030, "name":"Fish & Chips", "category":"Cooking", "subcategory":""},
135:{"address":0xec038, "name":"Grilled Mushrooms", "category":"Cooking", "subcategory":""},
136:{"address":0xec040, "name":"Foiled Mushroom", "category":"Cooking", "subcategory":""},
137:{"address":0xec048, "name":"Mountain Stew", "category":"Cooking", "subcategory":""},
138:{"address":0xec050, "name":"Stir-Fry Veggies", "category":"Cooking", "subcategory":""},
139:{"address":0xec058, "name":"Chop Suey", "category":"Cooking", "subcategory":""},
140:{"address":0xec060, "name":"Sandwich", "category":"Cooking", "subcategory":""},
141:{"address":0xec068, "name":"Fruit Sandwich", "category":"Cooking", "subcategory":""},
142:{"address":0xec070, "name":"Scone", "category":"Cooking", "subcategory":""},
143:{"address":0xec078, "name":"Raisin Bread", "category":"Cooking", "subcategory":""},
144:{"address":0xec080, "name":"Jam Bread", "category":"Cooking", "subcategory":""},
145:{"address":0xec088, "name":"Curry Bread", "category":"Cooking", "subcategory":""},
146:{"address":0xec090, "name":"Toast", "category":"Cooking", "subcategory":""},
147:{"address":0xec098, "name":"Eggy Bread", "category":"Cooking", "subcategory":""},
148:{"address":0xec0a0, "name":"Steamed Bread", "category":"Cooking", "subcategory":""},
149:{"address":0xec0a8, "name":"Dinner Roll", "category":"Cooking", "subcategory":""},
150:{"address":0xec0b0, "name":"Croquette", "category":"Cooking", "subcategory":""},
151:{"address":0xec0b8, "name":"Cream Croquette", "category":"Cooking", "subcategory":""},
152:{"address":0xec0c0, "name":"Veggie Dumpling", "category":"Cooking", "subcategory":""},
153:{"address":0xec0c8, "name":"Curry Bun", "category":"Cooking", "subcategory":""},
154:{"address":0xec0d0, "name":"Pot Sticker", "category":"Cooking", "subcategory":""},
155:{"address":0xec0d8, "name":"Stew", "category":"Cooking", "subcategory":""},
156:{"address":0xec0e0, "name":"Tempura", "category":"Cooking", "subcategory":""},
157:{"address":0xec0e8, "name":"Buckwheat Chips", "category":"Cooking", "subcategory":""},
158:{"address":0xec0f0, "name":"Buckwheat Ball", "category":"Cooking", "subcategory":""},
159:{"address":0xec0f8, "name":"Steamed Bun", "category":"Cooking", "subcategory":""},
160:{"address":0xec100, "name":"Seaweed Paste", "category":"Cooking", "subcategory":""},
161:{"address":0xec108, "name":"Spring Roll", "category":"Cooking", "subcategory":""},
162:{"address":0xec110, "name":"Tofu", "category":"Cooking", "subcategory":""},
163:{"address":0xec118, "name":"Natto", "category":"Cooking", "subcategory":""},
164:{"address":0xec120, "name":"Okara", "category":"Cooking", "subcategory":""},
165:{"address":0xec128, "name":"Deep-Fried Tofu", "category":"Cooking", "subcategory":""},
166:{"address":0xec130, "name":"Fried Tofu Dumplings", "category":"Cooking", "subcategory":""},
167:{"address":0xec138, "name":"Freeze-Dried Tofu", "category":"Cooking", "subcategory":""},
168:{"address":0xec140, "name":"Boiled Tofu", "category":"Cooking", "subcategory":""},
169:{"address":0xec148, "name":"Cold Tofu", "category":"Cooking", "subcategory":""},
170:{"address":0xec150, "name":"Dried Bean Curd", "category":"Cooking", "subcategory":""},
171:{"address":0xec158, "name":"Mixed Natto", "category":"Cooking", "subcategory":""},
172:{"address":0xec160, "name":"Fish Natto", "category":"Cooking", "subcategory":""},
173:{"address":0xec168, "name":"Dairy Natto", "category":"Cooking", "subcategory":""},
174:{"address":0xec170, "name":"Gem Natto", "category":"Cooking", "subcategory":""},
175:{"address":0xec178, "name":"Sweet Rice Natto", "category":"Cooking", "subcategory":""},
176:{"address":0xec180, "name":"Red Flower Mix Natto", "category":"Cooking", "subcategory":""},
177:{"address":0xec188, "name":"Chazuke", "category":"Cooking", "subcategory":""},
178:{"address":0xec190, "name":"Omelette", "category":"Cooking", "subcategory":""},
179:{"address":0xec198, "name":"Omelette Rice", "category":"Cooking", "subcategory":""},
180:{"address":0xec1a0, "name":"Fried Egg Over Rice", "category":"Cooking", "subcategory":""},
181:{"address":0xec1a8, "name":"Egg Over Rice", "category":"Cooking", "subcategory":""},
182:{"address":0xec1b0, "name":"Milk Soup", "category":"Cooking", "subcategory":""},
183:{"address":0xec1b8, "name":"Cheese Fondue", "category":"Cooking", "subcategory":""},
184:{"address":0xec1c0, "name":"Vegetable Gratin", "category":"Cooking", "subcategory":""},
185:{"address":0xec1c8, "name":"Pizza", "category":"Cooking", "subcategory":""},
186:{"address":0xec1d0, "name":"Sushi", "category":"Cooking", "subcategory":""},
187:{"address":0xec1d8, "name":"Sashimi Bowl", "category":"Cooking", "subcategory":""},
188:{"address":0xec1e0, "name":"Grilled Fish", "category":"Cooking", "subcategory":""},
189:{"address":0xec1e8, "name":"Simmered Fish", "category":"Cooking", "subcategory":""},
190:{"address":0xec1f0, "name":"Fish Meuniere", "category":"Cooking", "subcategory":""},
191:{"address":0xec1f8, "name":"Carpaccio", "category":"Cooking", "subcategory":""},
192:{"address":0xec200, "name":"Marinated Fish", "category":"Cooking", "subcategory":""},
193:{"address":0xec208, "name":"Rice Ball", "category":"Cooking", "subcategory":""},
194:{"address":0xec210, "name":"Bread", "category":"Cooking", "subcategory":""},
195:{"address":0xec218, "name":"Toasted Rice Ball", "category":"Cooking", "subcategory":""},
196:{"address":0xec220, "name":"Rice Soup", "category":"Cooking", "subcategory":""},
197:{"address":0xec228, "name":"Porridge", "category":"Cooking", "subcategory":""},
198:{"address":0xec230, "name":"Fried Rice", "category":"Cooking", "subcategory":""},
199:{"address":0xec238, "name":"Risotto", "category":"Cooking", "subcategory":""},
200:{"address":0xec240, "name":"Doria", "category":"Cooking", "subcategory":""},
201:{"address":0xec248, "name":"Paella", "category":"Cooking", "subcategory":""},
202:{"address":0xec250, "name":"Edamame Rice", "category":"Cooking", "subcategory":""},
203:{"address":0xec258, "name":"Sweet Potato Rice", "category":"Cooking", "subcategory":""},
204:{"address":0xec260, "name":"Mixed Rice", "category":"Cooking", "subcategory":""},
205:{"address":0xec268, "name":"Mushroom Rice", "category":"Cooking", "subcategory":""},
206:{"address":0xec270, "name":"Chestnut Rice", "category":"Cooking", "subcategory":""},
207:{"address":0xec278, "name":"Bamboo Shoot Rice", "category":"Cooking", "subcategory":""},
208:{"address":0xec280, "name":"Tempura Rice", "category":"Cooking", "subcategory":""},
209:{"address":0xec288, "name":"Tofu Sushi", "category":"Cooking", "subcategory":""},
210:{"address":0xec290, "name":"Dry Curry", "category":"Cooking", "subcategory":""},
211:{"address":0xec298, "name":"Curry Rice", "category":"Cooking", "subcategory":""},
212:{"address":0xec2a0, "name":"Blue Curry", "category":"Cooking", "subcategory":""},
213:{"address":0xec2a8, "name":"Green Curry", "category":"Cooking", "subcategory":""},
214:{"address":0xec2b0, "name":"Red Curry", "category":"Cooking", "subcategory":""},
215:{"address":0xec2b8, "name":"Yellow Curry", "category":"Cooking", "subcategory":""},
216:{"address":0xec2c0, "name":"Orange Curry", "category":"Cooking", "subcategory":""},
217:{"address":0xec2c8, "name":"Purple Curry", "category":"Cooking", "subcategory":""},
218:{"address":0xec2d0, "name":"Indigo Curry", "category":"Cooking", "subcategory":""},
219:{"address":0xec2d8, "name":"Black Curry", "category":"Cooking", "subcategory":""},
220:{"address":0xec2e0, "name":"White Curry", "category":"Cooking", "subcategory":""},
221:{"address":0xec2e8, "name":"Rainbow Curry", "category":"Cooking", "subcategory":""},
222:{"address":0xec2f0, "name":"Ultimate Curry", "category":"Cooking", "subcategory":""},
223:{"address":0xec2f8, "name":"Finest Curry", "category":"Cooking", "subcategory":""},
224:{"address":0xec300, "name":"Savoury Pancake", "category":"Cooking", "subcategory":""},
225:{"address":0xec308, "name":"Noodles", "category":"Cooking", "subcategory":""},
226:{"address":0xec310, "name":"Curry Noodles", "category":"Cooking", "subcategory":""},
227:{"address":0xec318, "name":"Tempura Noodles", "category":"Cooking", "subcategory":""},
228:{"address":0xec320, "name":"Thick Noodles", "category":"Cooking", "subcategory":""},
229:{"address":0xec328, "name":"Buckwheat Noodles", "category":"Cooking", "subcategory":""},
230:{"address":0xec330, "name":"Tempura Soba", "category":"Cooking", "subcategory":""},
231:{"address":0xec338, "name":"Fried Noodles", "category":"Cooking", "subcategory":""},
232:{"address":0xec340, "name":"Spaghetti", "category":"Cooking", "subcategory":""},
233:{"address":0xec348, "name":"Tofu Steak", "category":"Cooking", "subcategory":""},
234:{"address":0xec350, "name":"Fried Rice Noodles", "category":"Cooking", "subcategory":""},
235:{"address":0xec358, "name":"Poseidon Bowl", "category":"Cooking", "subcategory":""},
236:{"address":0xec360, "name":"Sweet Potato Pudding", "category":"Cooking", "subcategory":""},
237:{"address":0xec368, "name":"Pumpkin Pudding", "category":"Cooking", "subcategory":""},
238:{"address":0xec370, "name":"Baked Banana", "category":"Cooking", "subcategory":""},
239:{"address":0xec378, "name":"Chocolate Banana", "category":"Cooking", "subcategory":""},
240:{"address":0xec380, "name":"Candied Potato", "category":"Cooking", "subcategory":""},
241:{"address":0xec388, "name":"Sweet Dumpling", "category":"Cooking", "subcategory":""},
242:{"address":0xec390, "name":"Baked Apple", "category":"Cooking", "subcategory":""},
243:{"address":0xec398, "name":"Apple Pie", "category":"Cooking", "subcategory":""},
244:{"address":0xec3a0, "name":"Pineapple Pie", "category":"Cooking", "subcategory":""},
245:{"address":0xec3a8, "name":"Pink Rice Cake", "category":"Cooking", "subcategory":""},
246:{"address":0xec3b0, "name":"Sponge Cake", "category":"Cooking", "subcategory":""},
247:{"address":0xec3b8, "name":"Pudding", "category":"Cooking", "subcategory":""},
248:{"address":0xec3c0, "name":"Cheesecake", "category":"Cooking", "subcategory":""},
249:{"address":0xec3c8, "name":"Pancake", "category":"Cooking", "subcategory":""},
250:{"address":0xec3d0, "name":"Doughnut", "category":"Cooking", "subcategory":""},
251:{"address":0xec3d8, "name":"Cookies", "category":"Cooking", "subcategory":""},
252:{"address":0xec3e0, "name":"Chocolate Cookies", "category":"Cooking", "subcategory":""},
253:{"address":0xec3e8, "name":"Ice Cream", "category":"Cooking", "subcategory":""},
254:{"address":0xec3f0, "name":"Trifle", "category":"Cooking", "subcategory":""},
255:{"address":0xec3f8, "name":"Baumkuchen", "category":"Cooking", "subcategory":""},
256:{"address":0xec400, "name":"Churro", "category":"Cooking", "subcategory":""},
257:{"address":0xec408, "name":"Cake", "category":"Cooking", "subcategory":""},
258:{"address":0xec410, "name":"Steamed Cake", "category":"Cooking", "subcategory":""},
259:{"address":0xec418, "name":"Chocolate Cake", "category":"Cooking", "subcategory":""},
260:{"address":0xec420, "name":"Soba Dumpling", "category":"Cooking", "subcategory":""},
261:{"address":0xec428, "name":"Roasted Rice Cake", "category":"Cooking", "subcategory":""},
262:{"address":0xec430, "name":"Soybean Rice Cake", "category":"Cooking", "subcategory":""},
263:{"address":0xec438, "name":"Green Dumplings", "category":"Cooking", "subcategory":""},
264:{"address":0xec440, "name":"Bamboo Dumpling", "category":"Cooking", "subcategory":""},
265:{"address":0xec448, "name":"Fruit Dumpling", "category":"Cooking", "subcategory":""},
266:{"address":0xec450, "name":"Chocolate Fondue", "category":"Cooking", "subcategory":""},
267:{"address":0xec458, "name":"Potato Jelly", "category":"Cooking", "subcategory":""},
268:{"address":0xec460, "name":"Chestnut Jelly", "category":"Cooking", "subcategory":""},
269:{"address":0xec468, "name":"Chestnut Bun", "category":"Cooking", "subcategory":""},
270:{"address":0xec470, "name":"Chestnut Kinton", "category":"Cooking", "subcategory":""},
271:{"address":0xec478, "name":"Sweet and Sunny", "category":"Cooking", "subcategory":""},
272:{"address":0xec480, "name":"Rice", "category":"Cooking", "subcategory":""},
273:{"address":0xec488, "name":"Strawberry Jam", "category":"Cooking", "subcategory":""},
274:{"address":0xec490, "name":"Apple Jam", "category":"Cooking", "subcategory":""},
275:{"address":0xec498, "name":"Grape Jam", "category":"Cooking", "subcategory":""},
276:{"address":0xec4a0, "name":"Blueberry Jam", "category":"Cooking", "subcategory":""},
277:{"address":0xec4a8, "name":"Marmalade", "category":"Cooking", "subcategory":""},
278:{"address":0xec4b0, "name":"Ketchup", "category":"Cooking", "subcategory":""},
279:{"address":0xec4b8, "name":"Miso", "category":"Cooking", "subcategory":""},
280:{"address":0xec4c0, "name":"Relax Tea Leaves", "category":"Cooking", "subcategory":""},
281:{"address":0xec4c8, "name":"Bodigizer", "category":"Cooking", "subcategory":""},
282:{"address":0xec4d0, "name":"Bodigizer XL", "category":"Cooking", "subcategory":""},
283:{"address":0xec4d8, "name":"Hungerizer", "category":"Cooking", "subcategory":""},
284:{"address":0xec4e0, "name":"Hungerizer XL", "category":"Cooking", "subcategory":""},
285:{"address":0xec4e8, "name":"Blue Book", "category":"Cooking", "subcategory":""},
286:{"address":0xec4f0, "name":"Green Book", "category":"Cooking", "subcategory":""},
287:{"address":0xec4f8, "name":"Red Book", "category":"Cooking", "subcategory":""},
288:{"address":0xec500, "name":"Yellow Book", "category":"Cooking", "subcategory":""},
289:{"address":0xec508, "name":"Orange Book", "category":"Cooking", "subcategory":""},
290:{"address":0xec510, "name":"Purple Book", "category":"Cooking", "subcategory":""},
291:{"address":0xec518, "name":"Indigo Book", "category":"Cooking", "subcategory":""},
292:{"address":0xec520, "name":"Black Book", "category":"Cooking", "subcategory":""},
293:{"address":0xec528, "name":"White Book", "category":"Cooking", "subcategory":""},
294:{"address":0xec530, "name":"Failed Dish", "category":"Cooking", "subcategory":""},
295:{"address":0xec538, "name":"Reaped Rice", "category":"Crops", "subcategory":""},
296:{"address":0xec540, "name":"Reaped Wheat", "category":"Crops", "subcategory":""},
297:{"address":0xec548, "name":"Reaped Buckwheat", "category":"Crops", "subcategory":""},
298:{"address":0xec550, "name":"Reaped Soybean", "category":"Crops", "subcategory":""},
299:{"address":0xec558, "name":"Moondrop Flower", "category":"Other", "subcategory":""},
300:{"address":0xec560, "name":"Pinkcat Flower", "category":"Other", "subcategory":""},
301:{"address":0xec568, "name":"Blue Magic Flower", "category":"Other", "subcategory":""},
302:{"address":0xec570, "name":"Red Magic Flower", "category":"Other", "subcategory":""},
303:{"address":0xec578, "name":"Toyflower", "category":"Other", "subcategory":""},
304:{"address":0xec580, "name":"Firefly Flower", "category":"Other", "subcategory":""},
305:{"address":0xec588, "name":"Wool", "category":"Animal", "subcategory":""},
306:{"address":0xec590, "name":"Suffolk Wool", "category":"Animal", "subcategory":""},
307:{"address":0xec598, "name":"Yarn", "category":"Animal", "subcategory":""},
308:{"address":0xec5a0, "name":"Superb Yarn", "category":"Animal", "subcategory":""},
309:{"address":0xec5a8, "name":"Junk Ore", "category":"Ore", "subcategory":""},
310:{"address":0xec5b0, "name":"Copper", "category":"Ore", "subcategory":""},
311:{"address":0xec5b8, "name":"Silver", "category":"Ore", "subcategory":""},
312:{"address":0xec5c0, "name":"Gold", "category":"Ore", "subcategory":""},
313:{"address":0xec5c8, "name":"Mystrile", "category":"Ore", "subcategory":""},
314:{"address":0xec5d0, "name":"Orichalcum", "category":"Ore", "subcategory":""},
315:{"address":0xec5d8, "name":"Adamantite", "category":"Ore", "subcategory":""},
316:{"address":0xec5e0, "name":"Moon Stone", "category":"Ore", "subcategory":""},
317:{"address":0xec5e8, "name":"Sand Rose", "category":"Ore", "subcategory":""},
318:{"address":0xec5f0, "name":"Pink Diamond", "category":"Ore", "subcategory":""},
319:{"address":0xec5f8, "name":"Alexandrite Red", "category":"Ore", "subcategory":""},
320:{"address":0xec608, "name":"Mythic Stone", "category":"Ore", "subcategory":""},
321:{"address":0xec610, "name":"Diamond", "category":"Ore", "subcategory":""},
322:{"address":0xec618, "name":"Emerald", "category":"Ore", "subcategory":""},
323:{"address":0xec620, "name":"Ruby", "category":"Ore", "subcategory":""},
324:{"address":0xec628, "name":"Topaz", "category":"Ore", "subcategory":""},
325:{"address":0xec630, "name":"Peridot", "category":"Ore", "subcategory":""},
326:{"address":0xec638, "name":"Fluorite", "category":"Ore", "subcategory":""},
327:{"address":0xec640, "name":"Agate", "category":"Ore", "subcategory":""},
328:{"address":0xec648, "name":"Amethyst", "category":"Ore", "subcategory":""},
329:{"address":0xec650, "name":"The Spring Sun", "category":"Other", "subcategory":""},
330:{"address":0xec658, "name":"The Summer Sun", "category":"Other", "subcategory":""},
331:{"address":0xec660, "name":"The Autumn Sun", "category":"Other", "subcategory":""},
332:{"address":0xec668, "name":"The Winter Sun", "category":"Other", "subcategory":""},
333:{"address":0xec670, "name":"Weed", "category":"Other", "subcategory":""},
334:{"address":0xec678, "name":"Weed [2]", "category":"Other", "subcategory":""},
335:{"address":0xec680, "name":"Stone", "category":"Other", "subcategory":""},
336:{"address":0xec688, "name":"Branch", "category":"Other", "subcategory":""},
337:{"address":0xec690, "name":"Lumber", "category":"Other", "subcategory":""},
338:{"address":0xec698, "name":"Material Stone", "category":"Other", "subcategory":""},
339:{"address":0xec6a0, "name":"Golden Lumber", "category":"Other", "subcategory":""},
340:{"address":0xec6a8, "name":"Stone Tablet", "category":"Ore", "subcategory":""},
341:{"address":0xec6b0, "name":"Bottle", "category":"Fishing", "subcategory":""},
342:{"address":0xec6b8, "name":"Pirate Treasure", "category":"Fishing", "subcategory":""},
343:{"address":0xec6c0, "name":"Fish Fossil", "category":"Fishing", "subcategory":""},
344:{"address":0xec6c8, "name":"Empty Can", "category":"Fishing", "subcategory":""},
345:{"address":0xec6d0, "name":"Boots", "category":"Fishing", "subcategory":""},
346:{"address":0xec6d8, "name":"Fish Bones", "category":"Fishing", "subcategory":""},
347:{"address":0xec6e0, "name":"Fodder", "category":"Other", "subcategory":""},
348:{"address":0xec6e8, "name":"Chicken Feed", "category":"Other", "subcategory":""},
349:{"address":0xec6f0, "name":"Pet Food", "category":"Other", "subcategory":""},
350:{"address":0xec6f8, "name":"Mouse Food", "category":"Other", "subcategory":""},
351:{"address":0xec700, "name":"Sparrow Food", "category":"Other", "subcategory":""},
352:{"address":0xec708, "name":"Rabbit Food", "category":"Other", "subcategory":""},
353:{"address":0xec710, "name":"Duck Food", "category":"Other", "subcategory":""},
354:{"address":0xec718, "name":"Badger Food", "category":"Other", "subcategory":""},
355:{"address":0xec720, "name":"Monkey Food", "category":"Other", "subcategory":""},
356:{"address":0xec730, "name":"10000G Ticket", "category":"Other", "subcategory":""},
357:{"address":0xec738, "name":"1000000G Ticket", "category":"Other", "subcategory":""},
358:{"address":0xec740, "name":"Blue Feather", "category":"Other", "subcategory":""},
359:{"address":0xec748, "name":"Blue Wonderful", "category":"Other", "subcategory":""},
360:{"address":0xec750, "name":"Green Wonderful", "category":"Other", "subcategory":""},
361:{"address":0xec758, "name":"Red Wonderful", "category":"Other", "subcategory":""},
362:{"address":0xec760, "name":"Yellow Wonderful", "category":"Other", "subcategory":""},
363:{"address":0xec768, "name":"Khaki Wonderful", "category":"Other", "subcategory":""},
364:{"address":0xec770, "name":"Mauve Wonderful", "category":"Other", "subcategory":""},
365:{"address":0xec778, "name":"Indigo Wonderful", "category":"Other", "subcategory":""},
366:{"address":0xec780, "name":"Wonderful Piece", "category":"Other", "subcategory":""},}

stageID = dword(0x0dc0fc)


function DeltaMem(mem, address){
    return measured(address >= mem) && prev(address) < mem
}

function ShippingListSearch(name){
    address = 0
    for item in shippingList{
        if (shippingList[item]["name"] == name){
            address = shippingList[item]["address"]
        }
    }
    return address
}

function FourCrops(array){
    logic = always_false()
    
    
    for item in array{
        logic2 = always_true()
        logic2 = logic2 && dword(item) >= 100 && prev(dword(item)) < 100
        for item2 in array{
            if(item != item2){
                logic2 = logic2 && dword(item2) >= 100
            }
        }
        logic = logic || logic2
    }
    return logic
}

function SRankCheck(address){
    quality = byte(address + 5)
    size = byte(address + 6)
    freshness = byte(address + 7)
    sum = quality + size + freshness >= 590
    return sum
}

function SRankCheckPrev(address){
    quality = prev(byte(address + 5))
    size = prev(byte(address + 6))
    freshness = prev(byte(address + 7))
    sum = quality + size + freshness >= 590
    return sum
}

function ShippingListQuality(category){
    sum = []
    prevSum = []
    count = 0
    for item in shippingList{
        if(shippingList[item]["category"] == category){
            array_push(sum, once(SRankCheck(shippingList[item]["address"])))
            array_push(prevSum, once(SRankCheckPrev(shippingList[item]["address"])))
            count = count + 1
        }
    }
    
    return measured(tally(count, sum)) && never(tally(count, prevSum)) && never(stageID != prev(stageID)) && never(!SaveProtection())
}



function ShippingListSum(category){
    sum = 0
    count = 0
    for item in shippingList{
        if(shippingList[item]["category"] == category){
            sum = sum + (dword(shippingList[item]["address"]) / dword(shippingList[item]["address"]))
            count = count + 1
        }
    }
    
    return measured(sum == count) && prev(sum) < count
}

//Crops
cropDegree = dword(0x0ea588)

achievement(
    "Nature's Bounty",
    "Earn 2000 or more Crop Degree points",
    3,
    SaveProtection() && DeltaMem(2000, cropDegree)
)

achievement(
    "Bountiful Harvest",
    "Earn 10,000 or more Crop Degree points",
    4,
    SaveProtection() && DeltaMem(10000, cropDegree)
)

achievement(
    "Fruitful Varieties",
    "Earn 20,000 or more Crop Degree points",
    5,
    SaveProtection() && DeltaMem(20000, cropDegree)
)

achievement(
    "Zesty Citrus",
    "Earn 30,000 or more Crop Degree points",
    5,
    SaveProtection() && DeltaMem(30000, cropDegree)
)

achievement(
    "Leafy Greenery",
    "Earn 40,000 or more Crop Degree points and ship 100 or more Wheat",
    5,
    SaveProtection() && 
    (
    (DeltaMem(40000, cropDegree) && dword(ShippingListSearch("Wheat")) == 100 ) ||
    (dword(ShippingListSearch("Wheat")) >= 100 && prev(dword(ShippingListSearch("Wheat"))) < 100 && cropDegree >= 40000)
    )
)

achievement(
    "Colorful Capsicum",
    "Earn 60,000 or more Crop Degree points and ship 100 or more Buckwheat",
    10,
    SaveProtection() && 
    (
    (DeltaMem(60000, cropDegree) && dword(ShippingListSearch("Buckwheat")) == 100 ) ||
    (dword(ShippingListSearch("Buckwheat")) >= 100 && prev(dword(ShippingListSearch("Buckwheat"))) < 100 && cropDegree >= 60000)
    )
)

achievement(
    "Golden Grains",
    "Ship 100 Turnips, 100 Potatoes, 100 Cucumbers, and 100 Strawberries",
    10,
    SaveProtection() &&
    FourCrops(
        [
        ShippingListSearch("Turnip"),
        ShippingListSearch("Potato"),
        ShippingListSearch("Cucumber"),
        ShippingListSearch("Strawberry"),
        ]
    )
)

achievement(
    "Legume Legend",
    "Ship 100 Tomatoes, 100 Corn, 100 Onions, and 100 Pumpkins",
    10,
    SaveProtection() &&
    FourCrops(
        [
        ShippingListSearch("Tomato"),
        ShippingListSearch("Maize"),
        ShippingListSearch("Onion"),
        ShippingListSearch("Pumpkin"),
        ]
    )
)


achievement(
    "Ancient Grains",
    "Ship 100 Eggplant, 100 Carrots, 100 Yams, and 100 Spinaches",
    10,
    SaveProtection() &&
    FourCrops(
        [
        ShippingListSearch("Aubergine"),
        ShippingListSearch("Carrot"),
        ShippingListSearch("Sweet Potato"),
        ShippingListSearch("Spinach"),
        ]
    )
)

achievement(
    "Tropical Delight",
    "Ship 100 Soybeans",
    5,
    SaveProtection() &&
    FourCrops(
        [
        ShippingListSearch("Soybeans"),

        ]
    )
)

achievement(
    "Master Merchant",
    "Ship every crop",
    10,
    SaveProtection() && ShippingListSum("Crops")
)

achievement(
    "Harvesting Excellence",
    "Ship every crop with an S-rank",
    25,
    SaveProtection() && ShippingListQuality("Crops")
)