// Harvest Moon DS: Sunshine Islands
// #ID = 24964

farmName = dword(0x0ea420)
saveFile = byte(0x0ec901)
loaded = byte(0x0ec902)
ASCIIIdentifier = dword(0x3ffa80)
GameASCII = 0x554b4f42

function SaveProtection(){
    return ASCIIIdentifier == GameASCII && ASCIIIdentifier== prev(ASCIIIdentifier)&& farmName == prev(farmName) && saveFile == prev(saveFile) && saveFile <= 0x01 && loaded == prev(loaded)
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
71:{"address":0xebe38, "name":"Salad", "category":"Cooking", "subcategory":"Salad"},
72:{"address":0xebe40, "name":"Pickled Turnip", "category":"Cooking", "subcategory":"Salad"},
73:{"address":0xebe48, "name":"Mashed Potatoes", "category":"Cooking", "subcategory":"Salad"},
74:{"address":0xebe50, "name":"Gherkin", "category":"Cooking", "subcategory":"Salad"},
75:{"address":0xebe58, "name":"Onion Salad", "category":"Cooking", "subcategory":"Salad"},
76:{"address":0xebe60, "name":"Boiled Spinach", "category":"Cooking", "subcategory":"Salad"},
77:{"address":0xebe68, "name":"Tomato Salad", "category":"Cooking", "subcategory":"Salad"},
78:{"address":0xebe70, "name":"Insalata di Caprese", "category":"Cooking", "subcategory":"Salad"},
79:{"address":0xebe78, "name":"Herb Salad", "category":"Cooking", "subcategory":"Salad"},
80:{"address":0xebe80, "name":"Spaguetti Salad", "category":"Cooking", "subcategory":"Salad"},
81:{"address":0xebe88, "name":"Elli Leaves", "category":"Cooking", "subcategory":"Salad"},
82:{"address":0xebe90, "name":"Vichyssoise", "category":"Cooking", "subcategory":"Soup"},
83:{"address":0xebe98, "name":"Gazpacho", "category":"Cooking", "subcategory":"Soup"},
84:{"address":0xebea0, "name":"Bouillabaisse", "category":"Cooking", "subcategory":"Soup"},
85:{"address":0xebea8, "name":"Corn Soup", "category":"Cooking", "subcategory":"Soup"},
86:{"address":0xebeb0, "name":"Onion Soup", "category":"Cooking", "subcategory":"Soup"},
87:{"address":0xebeb8, "name":"Pumpkin Soup", "category":"Cooking", "subcategory":"Soup"},
88:{"address":0xebec0, "name":"Egg Soup", "category":"Cooking", "subcategory":"Soup"},
89:{"address":0xebec8, "name":"SoyMilk", "category":"Cooking", "subcategory":"Soup"},
90:{"address":0xebed0, "name":"Miso Soup", "category":"Cooking", "subcategory":"Soup"},
91:{"address":0xebed8, "name":"Herb Soup", "category":"Cooking", "subcategory":"Soup"},
92:{"address":0xebee0, "name":"Spaghetti Soup", "category":"Cooking", "subcategory":"Soup"},
93:{"address":0xebee8, "name":"Tomato Juice", "category":"Cooking", "subcategory":"Soup"},
94:{"address":0xebef0, "name":"Pineapple Juice", "category":"Cooking", "subcategory":"Soup"},
95:{"address":0xebef8, "name":"Peach Juice", "category":"Cooking", "subcategory":"Soup"},
96:{"address":0xebf00, "name":"Banana Juice", "category":"Cooking", "subcategory":"Soup"},
97:{"address":0xebf08, "name":"Orange Juice", "category":"Cooking", "subcategory":"Soup"},
98:{"address":0xebf10, "name":"Apple Juice", "category":"Cooking", "subcategory":"Soup"},
99:{"address":0xebf18, "name":"Grape Juice", "category":"Cooking", "subcategory":"Soup"},
100:{"address":0xebf20, "name":"Grape Nectar", "category":"Cooking", "subcategory":"Soup"},
101:{"address":0xebf28, "name":"Carrot Juice", "category":"Cooking", "subcategory":"Soup"},
102:{"address":0xebf30, "name":"Blueberry Juice", "category":"Cooking", "subcategory":"Soup"},
103:{"address":0xebf38, "name":"Lassi", "category":"Cooking", "subcategory":"Soup"},
104:{"address":0xebf40, "name":"Fruit Juice", "category":"Cooking", "subcategory":"Soup"},
105:{"address":0xebf48, "name":"Vegetable Juice", "category":"Cooking", "subcategory":"Soup"},
106:{"address":0xebf50, "name":"Mixed Juice", "category":"Cooking", "subcategory":"Soup"},
107:{"address":0xebf58, "name":"Fruit Milkshake", "category":"Cooking", "subcategory":"Soup"},
108:{"address":0xebf60, "name":"Veggie Milkshake", "category":"Cooking", "subcategory":"Soup"},
109:{"address":0xebf68, "name":"Mixed Milkshake", "category":"Cooking", "subcategory":"Soup"},
110:{"address":0xebf70, "name":"Strawberry Milk", "category":"Cooking", "subcategory":"Soup"},
111:{"address":0xebf78, "name":"Relax Tea", "category":"Cooking", "subcategory":"Soup"},
112:{"address":0xebf80, "name":"Hot Milk", "category":"Cooking", "subcategory":"Soup"},
113:{"address":0xebf88, "name":"Hot Chocolate", "category":"Cooking", "subcategory":"Soup"},
114:{"address":0xebf90, "name":"Fruit Nectar", "category":"Cooking", "subcategory":"Soup"},
115:{"address":0xebf98, "name":"Genki Soup", "category":"Cooking", "subcategory":"Soup"},
116:{"address":0xebfa0, "name":"Steamed Turnip", "category":"Cooking", "subcategory":"Appetizer"},
117:{"address":0xebfa8, "name":"Chips", "category":"Cooking", "subcategory":"Appetizer"},
118:{"address":0xebfb0, "name":"Braised Potato", "category":"Cooking", "subcategory":"Appetizer"},
119:{"address":0xebfb8, "name":"Stuffed Cabbage", "category":"Cooking", "subcategory":"Appetizer"},
120:{"address":0xebfc0, "name":"Roasted Corn", "category":"Cooking", "subcategory":"Appetizer"},
121:{"address":0xebfc8, "name":"Popcorn", "category":"Cooking", "subcategory":"Appetizer"},
122:{"address":0xebfd0, "name":"Corn Cereal", "category":"Cooking", "subcategory":"Appetizer"},
123:{"address":0xebfd8, "name":"Cooked Pumpkin", "category":"Cooking", "subcategory":"Appetizer"},
124:{"address":0xebfe0, "name":"Miso Aubergine", "category":"Cooking", "subcategory":"Appetizer"},
125:{"address":0xebfe8, "name":"Grilled Aubergine", "category":"Cooking", "subcategory":"Appetizer"},
126:{"address":0xebff0, "name":"Baked Sweat Potato", "category":"Cooking", "subcategory":"Appetizer"},
127:{"address":0xebff8, "name":"Boiled Egg", "category":"Cooking", "subcategory":"Appetizer"},
128:{"address":0xec000, "name":"Hot Spring Egg", "category":"Cooking", "subcategory":"Appetizer"},
129:{"address":0xec008, "name":"Fried Egg", "category":"Cooking", "subcategory":"Appetizer"},
130:{"address":0xec010, "name":"Steamed Egg Custard", "category":"Cooking", "subcategory":"Appetizer"},
131:{"address":0xec018, "name":"Rolled Omelette", "category":"Cooking", "subcategory":"Appetizer"},
132:{"address":0xec020, "name":"Sashimi", "category":"Cooking", "subcategory":"Appetizer"},
133:{"address":0xec028, "name":"Fish Sticks", "category":"Cooking", "subcategory":"Appetizer"},
134:{"address":0xec030, "name":"Fish & Chips", "category":"Cooking", "subcategory":"Appetizer"},
135:{"address":0xec038, "name":"Grilled Mushrooms", "category":"Cooking", "subcategory":"Appetizer"},
136:{"address":0xec040, "name":"Foiled Mushroom", "category":"Cooking", "subcategory":"Appetizer"},
137:{"address":0xec048, "name":"Mountain Stew", "category":"Cooking", "subcategory":"Appetizer"},
138:{"address":0xec050, "name":"Stir-Fry Veggies", "category":"Cooking", "subcategory":"Appetizer"},
139:{"address":0xec058, "name":"Chop Suey", "category":"Cooking", "subcategory":"Appetizer"},
140:{"address":0xec060, "name":"Sandwich", "category":"Cooking", "subcategory":"Appetizer"},
141:{"address":0xec068, "name":"Fruit Sandwich", "category":"Cooking", "subcategory":"Appetizer"},
142:{"address":0xec070, "name":"Scone", "category":"Cooking", "subcategory":"Appetizer"},
143:{"address":0xec078, "name":"Raisin Bread", "category":"Cooking", "subcategory":"Appetizer"},
144:{"address":0xec080, "name":"Jam Bread", "category":"Cooking", "subcategory":"Appetizer"},
145:{"address":0xec088, "name":"Curry Bread", "category":"Cooking", "subcategory":"Appetizer"},
146:{"address":0xec090, "name":"Toast", "category":"Cooking", "subcategory":"Appetizer"},
147:{"address":0xec098, "name":"Eggy Bread", "category":"Cooking", "subcategory":"Appetizer"},
148:{"address":0xec0a0, "name":"Steamed Bread", "category":"Cooking", "subcategory":"Appetizer"},
149:{"address":0xec0a8, "name":"Dinner Roll", "category":"Cooking", "subcategory":"Appetizer"},
150:{"address":0xec0b0, "name":"Croquette", "category":"Cooking", "subcategory":"Appetizer"},
151:{"address":0xec0b8, "name":"Cream Croquette", "category":"Cooking", "subcategory":"Appetizer"},
152:{"address":0xec0c0, "name":"Veggie Dumpling", "category":"Cooking", "subcategory":"Appetizer"},
153:{"address":0xec0c8, "name":"Curry Bun", "category":"Cooking", "subcategory":"Appetizer"},
154:{"address":0xec0d0, "name":"Pot Sticker", "category":"Cooking", "subcategory":"Appetizer"},
155:{"address":0xec0d8, "name":"Stew", "category":"Cooking", "subcategory":"Appetizer"},
156:{"address":0xec0e0, "name":"Tempura", "category":"Cooking", "subcategory":"Appetizer"},
157:{"address":0xec0e8, "name":"Buckwheat Chips", "category":"Cooking", "subcategory":"Appetizer"},
158:{"address":0xec0f0, "name":"Buckwheat Ball", "category":"Cooking", "subcategory":"Appetizer"},
159:{"address":0xec0f8, "name":"Steamed Bun", "category":"Cooking", "subcategory":"Appetizer"},
160:{"address":0xec100, "name":"Seaweed Paste", "category":"Cooking", "subcategory":"Appetizer"},
161:{"address":0xec108, "name":"Spring Roll", "category":"Cooking", "subcategory":"Appetizer"},
162:{"address":0xec110, "name":"Tofu", "category":"Cooking", "subcategory":"Appetizer"},
163:{"address":0xec118, "name":"Natto", "category":"Cooking", "subcategory":"Appetizer"},
164:{"address":0xec120, "name":"Okara", "category":"Cooking", "subcategory":"Appetizer"},
165:{"address":0xec128, "name":"Deep-Fried Tofu", "category":"Cooking", "subcategory":"Appetizer"},
166:{"address":0xec130, "name":"Fried Tofu Dumplings", "category":"Cooking", "subcategory":"Appetizer"},
167:{"address":0xec138, "name":"Freeze-Dried Tofu", "category":"Cooking", "subcategory":"Appetizer"},
168:{"address":0xec140, "name":"Boiled Tofu", "category":"Cooking", "subcategory":"Appetizer"},
169:{"address":0xec148, "name":"Cold Tofu", "category":"Cooking", "subcategory":"Appetizer"},
170:{"address":0xec150, "name":"Dried Bean Curd", "category":"Cooking", "subcategory":"Appetizer"},
171:{"address":0xec158, "name":"Mixed Natto", "category":"Cooking", "subcategory":"Appetizer"},
172:{"address":0xec160, "name":"Fish Natto", "category":"Cooking", "subcategory":"Appetizer"},
173:{"address":0xec168, "name":"Dairy Natto", "category":"Cooking", "subcategory":"Appetizer"},
174:{"address":0xec170, "name":"Gem Natto", "category":"Cooking", "subcategory":"Appetizer"},
175:{"address":0xec178, "name":"Sweet Rice Natto", "category":"Cooking", "subcategory":"Appetizer"},
176:{"address":0xec180, "name":"Red Flower Mix Natto", "category":"Cooking", "subcategory":"Appetizer"},
177:{"address":0xec188, "name":"Chazuke", "category":"Cooking", "subcategory":"Appetizer"},
178:{"address":0xec190, "name":"Omelette", "category":"Cooking", "subcategory":"Main"},
179:{"address":0xec198, "name":"Omelette Rice", "category":"Cooking", "subcategory":"Main"},
180:{"address":0xec1a0, "name":"Fried Egg Over Rice", "category":"Cooking", "subcategory":"Main"},
181:{"address":0xec1a8, "name":"Egg Over Rice", "category":"Cooking", "subcategory":"Main"},
182:{"address":0xec1b0, "name":"Milk Soup", "category":"Cooking", "subcategory":"Main"},
183:{"address":0xec1b8, "name":"Cheese Fondue", "category":"Cooking", "subcategory":"Main"},
184:{"address":0xec1c0, "name":"Vegetable Gratin", "category":"Cooking", "subcategory":"Main"},
185:{"address":0xec1c8, "name":"Pizza", "category":"Cooking", "subcategory":"Main"},
186:{"address":0xec1d0, "name":"Sushi", "category":"Cooking", "subcategory":"Main"},
187:{"address":0xec1d8, "name":"Sashimi Bowl", "category":"Cooking", "subcategory":"Main"},
188:{"address":0xec1e0, "name":"Grilled Fish", "category":"Cooking", "subcategory":"Main"},
189:{"address":0xec1e8, "name":"Simmered Fish", "category":"Cooking", "subcategory":"Main"},
190:{"address":0xec1f0, "name":"Fish Meuniere", "category":"Cooking", "subcategory":"Main"},
191:{"address":0xec1f8, "name":"Carpaccio", "category":"Cooking", "subcategory":"Main"},
192:{"address":0xec200, "name":"Marinated Fish", "category":"Cooking", "subcategory":"Main"},
193:{"address":0xec208, "name":"Rice Ball", "category":"Cooking", "subcategory":"Main"},
194:{"address":0xec210, "name":"Bread", "category":"Cooking", "subcategory":"Other"},
195:{"address":0xec218, "name":"Toasted Rice Ball", "category":"Cooking", "subcategory":"Main"},
196:{"address":0xec220, "name":"Rice Soup", "category":"Cooking", "subcategory":"Main"},
197:{"address":0xec228, "name":"Porridge", "category":"Cooking", "subcategory":"Main"},
198:{"address":0xec230, "name":"Fried Rice", "category":"Cooking", "subcategory":"Main"},
199:{"address":0xec238, "name":"Risotto", "category":"Cooking", "subcategory":"Main"},
200:{"address":0xec240, "name":"Doria", "category":"Cooking", "subcategory":"Main"},
201:{"address":0xec248, "name":"Paella", "category":"Cooking", "subcategory":"Main"},
202:{"address":0xec250, "name":"Edamame Rice", "category":"Cooking", "subcategory":"Main"},
203:{"address":0xec258, "name":"Sweet Potato Rice", "category":"Cooking", "subcategory":"Main"},
204:{"address":0xec260, "name":"Mixed Rice", "category":"Cooking", "subcategory":"Main"},
205:{"address":0xec268, "name":"Mushroom Rice", "category":"Cooking", "subcategory":"Main"},
206:{"address":0xec270, "name":"Chestnut Rice", "category":"Cooking", "subcategory":"Main"},
207:{"address":0xec278, "name":"Bamboo Shoot Rice", "category":"Cooking", "subcategory":"Main"},
208:{"address":0xec280, "name":"Tempura Rice", "category":"Cooking", "subcategory":"Main"},
209:{"address":0xec288, "name":"Tofu Sushi", "category":"Cooking", "subcategory":"Main"},
210:{"address":0xec290, "name":"Dry Curry", "category":"Cooking", "subcategory":"Main"},
211:{"address":0xec298, "name":"Curry Rice", "category":"Cooking", "subcategory":"Main"},
212:{"address":0xec2a0, "name":"Blue Curry", "category":"Cooking", "subcategory":"Main"},
213:{"address":0xec2a8, "name":"Green Curry", "category":"Cooking", "subcategory":"Main"},
214:{"address":0xec2b0, "name":"Red Curry", "category":"Cooking", "subcategory":"Main"},
215:{"address":0xec2b8, "name":"Yellow Curry", "category":"Cooking", "subcategory":"Main"},
216:{"address":0xec2c0, "name":"Orange Curry", "category":"Cooking", "subcategory":"Main"},
217:{"address":0xec2c8, "name":"Purple Curry", "category":"Cooking", "subcategory":"Main"},
218:{"address":0xec2d0, "name":"Indigo Curry", "category":"Cooking", "subcategory":"Main"},
219:{"address":0xec2d8, "name":"Black Curry", "category":"Cooking", "subcategory":"Main"},
220:{"address":0xec2e0, "name":"White Curry", "category":"Cooking", "subcategory":"Main"},
221:{"address":0xec2e8, "name":"Rainbow Curry", "category":"Cooking", "subcategory":"Main"},
222:{"address":0xec2f0, "name":"Ultimate Curry", "category":"Cooking", "subcategory":"Main"},
223:{"address":0xec2f8, "name":"Finest Curry", "category":"Cooking", "subcategory":"Main"},
224:{"address":0xec300, "name":"Savoury Pancake", "category":"Cooking", "subcategory":"Main"},
225:{"address":0xec308, "name":"Noodles", "category":"Cooking", "subcategory":"Main"},
226:{"address":0xec310, "name":"Curry Noodles", "category":"Cooking", "subcategory":"Main"},
227:{"address":0xec318, "name":"Tempura Noodles", "category":"Cooking", "subcategory":"Main"},
228:{"address":0xec320, "name":"Thick Noodles", "category":"Cooking", "subcategory":"Main"},
229:{"address":0xec328, "name":"Buckwheat Noodles", "category":"Cooking", "subcategory":"Main"},
230:{"address":0xec330, "name":"Tempura Soba", "category":"Cooking", "subcategory":"Main"},
231:{"address":0xec338, "name":"Fried Noodles", "category":"Cooking", "subcategory":"Main"},
232:{"address":0xec340, "name":"Spaghetti", "category":"Cooking", "subcategory":"Main"},
233:{"address":0xec348, "name":"Tofu Steak", "category":"Cooking", "subcategory":"Main"},
234:{"address":0xec350, "name":"Fried Rice Noodles", "category":"Cooking", "subcategory":"Main"},
235:{"address":0xec358, "name":"Poseidon Bowl", "category":"Cooking", "subcategory":"Main"},
236:{"address":0xec360, "name":"Sweet Potato Pudding", "category":"Cooking", "subcategory":"Dessert"},
237:{"address":0xec368, "name":"Pumpkin Pudding", "category":"Cooking", "subcategory":"Dessert"},
238:{"address":0xec370, "name":"Baked Banana", "category":"Cooking", "subcategory":"Dessert"},
239:{"address":0xec378, "name":"Chocolate Banana", "category":"Cooking", "subcategory":"Dessert"},
240:{"address":0xec380, "name":"Candied Potato", "category":"Cooking", "subcategory":"Dessert"},
241:{"address":0xec388, "name":"Sweet Dumpling", "category":"Cooking", "subcategory":"Dessert"},
242:{"address":0xec390, "name":"Baked Apple", "category":"Cooking", "subcategory":"Dessert"},
243:{"address":0xec398, "name":"Apple Pie", "category":"Cooking", "subcategory":"Dessert"},
244:{"address":0xec3a0, "name":"Pineapple Pie", "category":"Cooking", "subcategory":"Dessert"},
245:{"address":0xec3a8, "name":"Pink Rice Cake", "category":"Cooking", "subcategory":"Dessert"},
246:{"address":0xec3b0, "name":"Sponge Cake", "category":"Cooking", "subcategory":"Dessert"},
247:{"address":0xec3b8, "name":"Pudding", "category":"Cooking", "subcategory":"Dessert"},
248:{"address":0xec3c0, "name":"Cheesecake", "category":"Cooking", "subcategory":"Dessert"},
249:{"address":0xec3c8, "name":"Pancake", "category":"Cooking", "subcategory":"Dessert"},
250:{"address":0xec3d0, "name":"Doughnut", "category":"Cooking", "subcategory":"Dessert"},
251:{"address":0xec3d8, "name":"Cookies", "category":"Cooking", "subcategory":"Dessert"},
252:{"address":0xec3e0, "name":"Chocolate Cookies", "category":"Cooking", "subcategory":"Dessert"},
253:{"address":0xec3e8, "name":"Ice Cream", "category":"Cooking", "subcategory":"Dessert"},
254:{"address":0xec3f0, "name":"Trifle", "category":"Cooking", "subcategory":"Dessert"},
255:{"address":0xec3f8, "name":"Baumkuchen", "category":"Cooking", "subcategory":"Dessert"},
256:{"address":0xec400, "name":"Churro", "category":"Cooking", "subcategory":"Dessert"},
257:{"address":0xec408, "name":"Cake", "category":"Cooking", "subcategory":"Dessert"},
258:{"address":0xec410, "name":"Steamed Cake", "category":"Cooking", "subcategory":"Dessert"},
259:{"address":0xec418, "name":"Chocolate Cake", "category":"Cooking", "subcategory":"Dessert"},
260:{"address":0xec420, "name":"Soba Dumpling", "category":"Cooking", "subcategory":"Dessert"},
261:{"address":0xec428, "name":"Roasted Rice Cake", "category":"Cooking", "subcategory":"Dessert"},
262:{"address":0xec430, "name":"Soybean Rice Cake", "category":"Cooking", "subcategory":"Dessert"},
263:{"address":0xec438, "name":"Green Dumplings", "category":"Cooking", "subcategory":"Dessert"},
264:{"address":0xec440, "name":"Bamboo Dumpling", "category":"Cooking", "subcategory":"Dessert"},
265:{"address":0xec448, "name":"Fruit Dumpling", "category":"Cooking", "subcategory":"Dessert"},
266:{"address":0xec450, "name":"Chocolate Fondue", "category":"Cooking", "subcategory":"Dessert"},
267:{"address":0xec458, "name":"Potato Jelly", "category":"Cooking", "subcategory":"Dessert"},
268:{"address":0xec460, "name":"Chestnut Jelly", "category":"Cooking", "subcategory":"Dessert"},
269:{"address":0xec468, "name":"Chestnut Bun", "category":"Cooking", "subcategory":"Dessert"},
270:{"address":0xec470, "name":"Chestnut Kinton", "category":"Cooking", "subcategory":"Dessert"},
271:{"address":0xec478, "name":"Sweet and Sunny", "category":"Cooking", "subcategory":"Dessert"},
272:{"address":0xec480, "name":"Rice", "category":"Cooking", "subcategory":"Other"},
273:{"address":0xec488, "name":"Strawberry Jam", "category":"Cooking", "subcategory":"Other"},
274:{"address":0xec490, "name":"Apple Jam", "category":"Cooking", "subcategory":"Other"},
275:{"address":0xec498, "name":"Grape Jam", "category":"Cooking", "subcategory":"Other"},
276:{"address":0xec4a0, "name":"Blueberry Jam", "category":"Cooking", "subcategory":"Other"},
277:{"address":0xec4a8, "name":"Marmalade", "category":"Cooking", "subcategory":"Other"},
278:{"address":0xec4b0, "name":"Ketchup", "category":"Cooking", "subcategory":"Other"},
279:{"address":0xec4b8, "name":"Miso", "category":"Cooking", "subcategory":"Other"},
280:{"address":0xec4c0, "name":"Relax Tea Leaves", "category":"Cooking", "subcategory":"Other"},
281:{"address":0xec4c8, "name":"Bodigizer", "category":"Cooking", "subcategory":"Other"},
282:{"address":0xec4d0, "name":"Bodigizer XL", "category":"Cooking", "subcategory":"Other"},
283:{"address":0xec4d8, "name":"Hungerizer", "category":"Cooking", "subcategory":"Other"},
284:{"address":0xec4e0, "name":"Hungerizer XL", "category":"Cooking", "subcategory":"Other"},
285:{"address":0xec4e8, "name":"Blue Book", "category":"Cooking", "subcategory":"Other"},
286:{"address":0xec4f0, "name":"Green Book", "category":"Cooking", "subcategory":"Other"},
287:{"address":0xec4f8, "name":"Red Book", "category":"Cooking", "subcategory":"Other"},
288:{"address":0xec500, "name":"Yellow Book", "category":"Cooking", "subcategory":"Other"},
289:{"address":0xec508, "name":"Orange Book", "category":"Cooking", "subcategory":"Other"},
290:{"address":0xec510, "name":"Purple Book", "category":"Cooking", "subcategory":"Other"},
291:{"address":0xec518, "name":"Indigo Book", "category":"Cooking", "subcategory":"Other"},
292:{"address":0xec520, "name":"Black Book", "category":"Cooking", "subcategory":"Other"},
293:{"address":0xec528, "name":"White Book", "category":"Cooking", "subcategory":"Other"},
294:{"address":0xec530, "name":"Failed Dish", "category":"Cooking", "subcategory":"Other"},
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
366:{"address":0xec780, "name":"Wonderful Piece", "category":"Other", "subcategory":""},
}

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


function ShippingListQualityCooking(category){
    sum = []
    prevSum = []
    count = 0
    for item in shippingList{
        if(shippingList[item]["subcategory"] == category){
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

function SingleFlag(flag){
    return flag > prev(flag)
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

//Animals
ChickenCoopBuilt = bit7(0x0ea43d)
achievement(
    "Feathered Companions",
    "Build a chicken coop",
    3,
    SaveProtection() && SingleFlag(ChickenCoopBuilt) && stageID == 0x00
)

SilkieHensUnlocked = byte(0x0ea52e) == 3 && prev(byte(0x0ea52e)) == 2
achievement(
    "Silkie Sensation",
    "Unlock Silkie Hens",
    3,
    SaveProtection() && SilkieHensUnlocked && stageID == 0x00000017
)
BarnBuilt = bit1(0x0ea440)
achievement(
    "Bovine Buddies",
    "Build a Barn",
    3,
    SaveProtection() && SingleFlag(BarnBuilt) && stageID == 0x00
)

JerseyCowsUnlocked = byte(0x0ea52f) == 3 && prev(byte(0x0ea52f)) == 2
achievement(
    "Jersey Royalty",
    "Unlock Jersey Cows",
    3,
    SaveProtection() && JerseyCowsUnlocked && stageID == 0x00000017
)

SuffolkSheepsUnlocked = byte(0x0ea530) == 3 && prev(byte(0x0ea530)) == 2
achievement(
    "Supreme Suffolk",
    "Unlock Suffolk Sheeps",
    3,
    SaveProtection() && SuffolkSheepsUnlocked && stageID == 0x00000017
)

HorseUnlocked = bit1(0x0ea471)

achievement(
    "Equine Ally",
    "Obtain your Horse",
    3,
    SaveProtection() && SingleFlag(HorseUnlocked) && stageID == 0
)

CatUnlocked = bit7(0x0ea470)
achievement(
    "Feline Friend",
    "Obtain your Cat",
    3,
    SaveProtection() && SingleFlag(CatUnlocked) && stageID == 0
)
DogUnlock = bit0(0x0ea471)
achievement(
    "Canine Companion",
    "Obtain your Dog",
    3,
    SaveProtection() && SingleFlag(DogUnlock) && stageID == 0
)
PigUnlock = bit2(0x0ea471)
achievement(
    "Porky Pal",
    "Obtain your Pig",
    3,
    SaveProtection() && SingleFlag(PigUnlock) && stageID == 6
)

FirstAnimalName = 0x0e5691
SpeciesOffset = 13
AffectionOffset = 35
AnimalOffset = 0x4C

Horse = 0x0a
Dog = 0x09
Pig = 0x12
Cat = 0x13

function AffectionCheck(species){
    logic = always_false()
    for animal in range(FirstAnimalName, FirstAnimalName+(27*AnimalOffset), AnimalOffset){
        logic = logic || 
        (
            (
                byte(animal + SpeciesOffset) == species
            )
            &&
            (
                word(animal + AffectionOffset) >= 9010 && prev(word(animal + AffectionOffset)) < 9009
            )
        )
    }
    return logic
}

function SumFlags(flags){
    sum = 0
    for flag in flags{
        sum = sum + flag
    }
    return measured(sum == length(flags)) && prev(sum) < length(flags)
}


function SumFlagsPercent(flags){
    sum = 0
    for flag in flags{
        sum = sum + flag
    }
    return measured(sum == length(flags), when = always_true(), format="percent") && prev(sum) < length(flags)
}

achievement(
    "Horse's Heart",
    "Max your Horse's affection",
    10,
    SaveProtection() && AffectionCheck(Horse)
)

achievement(
    "Cat's Affection",
    "Max your Cat's affection",
    10,
    SaveProtection() && AffectionCheck(Cat)
)

achievement(
    "Dog's Devotion",
    "Max your Dog's affection",
    10,
    SaveProtection() && AffectionCheck(Dog)
)

achievement(
    "Pig's Fondness",
    "Max your Pig's affection",
    10,
    SaveProtection() && AffectionCheck(Pig)
)

achievement(
    "Animal Pro",
    "Ship every animal product",
    10,
    SaveProtection() && ShippingListSum("Animal")
)

achievement(
    "Top-Tier Rancher",
    "Ship every animal product with an S-Rank",
    25,
    SaveProtection() && ShippingListQuality("Animal")
)

//Shop/Furniture
RucksackLevel = byte(0x0ea48f)
achievement(
    "Carrying Capacity",
    "Buy the Medium Rucksack",
    3,
    SaveProtection() && RucksackLevel == 1 && prev(RucksackLevel) == 0 && stageID == 0x14
)

achievement(
    "Expanded Storage",
    "Buy the Large Rucksack",
    4,
    SaveProtection() && RucksackLevel == 2 && prev(RucksackLevel) == 1 && stageID == 0x14
)
Furnitures = [bit6(0x0ea43c), bit7(0x0ea43c), bit0(0x0ea43d), bit1(0x0ea43d), bit2(0x0ea43d), bit5(0x0ea43d), bit6(0x0ea43d)]

achievement(
    "Furnished to Perfection",
    "Buy every piece of furniture",
    5,
    SaveProtection() && SumFlags(Furnitures)
)

FirstItemSlot = 0x0dc1b0
LastItemSlot = 0x0dc354
ItemWheelFirstSlot = 0x0dc360
ItemWheelLastSlot = 0x0dc384
ToolboxFirstSlot = 0x0dc390
ToolboxLastSlot = 0x0dca44

ToolboxRanges = []

function InventoryCheckToolbox(itemID){
    logic = always_false()
    logicDelta = always_false()
    for item in range(FirstItemSlot, ToolboxLastSlot, 12){
        logic = logic || word(item) == itemID
        logicDelta = logicDelta || prev(word(item)) == itemID
    }
    return logic && never(logicDelta)
}
TeleportStone = 0x27

achievement(
    "Teleportation Mastery",
    "Buy the Teleport Stone",
    5,
    SaveProtection() && stageID == 0x14 && InventoryCheckToolbox(TeleportStone)
)

achievement(
    "Luxurious Getaway",
    "Buy and ship an 1.000.000G ticket",
    10,
    SaveProtection() && 
    (
    dword(ShippingListSearch("1000000G Ticket")) / dword(ShippingListSearch("1000000G Ticket")) == 1
    ) &&
    (
    prev(dword(ShippingListSearch("1000000G Ticket"))) / prev(dword(ShippingListSearch("1000000G Ticket"))) == 0
    )
)

function FurnitureMax(size, material){
    return measured(size + material == 0x06, when = always_true(), format="percent") && prev(size+material) < 6
}
ToolBoxSize = byte(0x0ea497)
FridgeSize = byte(0x0ea498)
CabinetSize = byte(0x0ea499)
BeautyBoxSize = byte(0x0ea49a)
ToolBoxMaterial = byte(0x0ea49b)
FridgeMaterial = byte(0x0ea49c)
CabinetMaterial = byte(0x0ea49d)
BeautyBoxMaterial = byte(0x0ea49e)

achievement(
    "Master of the Toolbox",
    "Upgrade the Tool Box to XL and Mythic material",
    25,
    SaveProtection() && FurnitureMax(ToolBoxSize, ToolBoxMaterial)
)

achievement(
    "Beauty Box Extravaganza",
    "Upgrade the Beauty Box to XL and Mythic material",
    25,
    SaveProtection() && FurnitureMax(BeautyBoxSize, BeautyBoxMaterial)
)

achievement(
    "Cabinet of Wonders",
    "Upgrade the Cabinet to XL and Mythic material",
    25,
    SaveProtection() && FurnitureMax(CabinetSize, CabinetMaterial)
)

achievement(
    "Refrigerator Reinvented",
    "Upgrade the Refrigerator to XL and Mythic material",
    25,
    SaveProtection() && FurnitureMax(FridgeSize, FridgeMaterial)
)



//Islands/Upgrades
HarvestSpriteIsland = bit2(0x0ea448)
SunnyIsland = bit2(0x0ea46d)
AnimalIsland = bit4(0x0ea448)
VolcanoIsland = bit5(0x0ea448)
MushroomIsland = bit6(0x0ea448)
MysticIslands = bit7(0x0ea448)
LinkIsland = bit0(0x0ea449)
RiceIsland = bit1(0x0ea449)
FruitIsland = bit2(0x0ea449)
GreenhouseIsland = bit3(0x0ea449)

Islands = [
   HarvestSpriteIsland,
SunnyIsland,
AnimalIsland,
VolcanoIsland,
MushroomIsland,
MysticIslands,
LinkIsland,
RiceIsland,
FruitIsland,
GreenhouseIsland
]

achievement(
    "Magic Sprites",
    "Raise the Harvest Sprite Island", 
    1,
    SaveProtection() && SingleFlag(HarvestSpriteIsland) && stageID == 0x00
)

achievement(
    "Island Rebirth",
    "Raise the Link Island", 
    5,
    SaveProtection() && SingleFlag(LinkIsland) && stageID == 0x02
)

achievement(
    "Animal Paradise",
    "Raise the Animal Island", 
    10,
    SaveProtection() && SingleFlag(AnimalIsland) && stageID == 0x02
)

achievement(
    "Mystical Shores",
    "Raise the Mystic Islands", 
    10,
    SaveProtection() && SingleFlag(MysticIslands) && stageID == 0x02
)

achievement(
    "Mushroom Kingdom",
    "Raise the Mushroom Island", 
    10,
    SaveProtection() && SingleFlag(MushroomIsland) && stageID == 0x02
)

achievement(
    "Verdant Conservatory",
    "Raise the Greenhouse Island", 
    10,
    SaveProtection() && SingleFlag(GreenhouseIsland) && stageID == 0x02
)

achievement(
    "Fields Blossom",
    "Raise the Rice Island", 
    10,
    SaveProtection() && SingleFlag(RiceIsland) && stageID == 0x02
)

achievement(
    "Fruitful Isle",
    "Raise the Fruit Island", 
    10,
    SaveProtection() && SingleFlag(FruitIsland) && stageID == 0x02
)

achievement(
    "Sunshine Islands",
    "Raise all the islands", 
    25,
    SaveProtection() && SumFlags(Islands)
)
HouseLevel = byte(0x0ea495)
achievement(
    "Homestead Complete",
    "Fully expand your house", 
    10,
    SaveProtection() && HouseLevel == 3 && prev(HouseLevel) == 2
)
Bath = bit3(0x0ea43d)
Toilet = bit4(0x0ea43d)

achievement(
    "A Place to Unwind",
    "Get a Bath Room built in your house", 
    5,
    SaveProtection() && SingleFlag(Bath)
)

achievement(
    "Nature's Call Answered",
    "Get a Toilet Room built in your house", 
    5,
    SaveProtection() && SingleFlag(Toilet)
)
GreenhouseBuilt = bit0(0x0ea445)
achievement(
    "Glass Harvest",
    "Have the Greenhouse built", 
    5,
    SaveProtection() && SingleFlag(GreenhouseBuilt) && prev(GreenhouseIsland) == 1
)

CheeseMaker = bit7(0x0ea443)
YarnMaker = bit0(0x0ea444)
MayonnaiseMaker = bit1(0x0ea444)
YoghurtMaker = bit2(0x0ea444)
ButterMaker = bit3(0x0ea444)
SeedMaker = bit4(0x0ea444)
Thresher = bit5(0x0ea444)
FlourMill = bit6(0x0ea444)
Makers = [
    CheeseMaker,
YarnMaker,
MayonnaiseMaker,
YoghurtMaker,
ButterMaker,
SeedMaker,
Thresher,
FlourMill
]

QualityImprover = bit7(0x0ea444)

MakerShedBuilt = bit4(0x0ea443)

achievement(
    "Master of Craft",
    "Get every Maker Machine except for the Quality Improver", 
    10,
    SaveProtection() && SumFlags(Makers) && prev(MakerShedBuilt) == 1 && prev(MakerShedBuilt) == 1
)

achievement(
    "Rank Maker",
    "Get the Quality Improver", 
    10,
    SaveProtection() && SingleFlag(QualityImprover) && prev(MakerShedBuilt) == 1
)

ChickenCoopUpgrades = byte(0x0ea49f) + byte(0x0ea4a0) + byte(0x0ea4a1) + byte(0x0ea4a2) + bit0(0x0ea43e) + bit7(0x0ea43d)

achievement(
    "Feathered Paradise",
    "Fully upgrade the Chicken Coop", 
    10,
    SaveProtection() && measured(ChickenCoopUpgrades == 22, when = always_true(), format="percent") && prev(ChickenCoopUpgrades) < 22
)

BarnUpgrades = bit1(0x0ea440) + bit2(0x0ea440) + byte(0x0ea4ab) + byte(0x0ea4ac) + byte(0x0ea4ad) + byte(0x0ea4ae)

achievement(
    "Animal Haven",
    "Fully upgrade the Animal Barn", 
    10,
    SaveProtection() && measured(BarnUpgrades == 22, when = always_true(), format="percent") && prev(BarnUpgrades) < 22
)

SupplyUpgrades = bit7(0x0ea445) + bit0(0x0ea4b0) + bit1(0x0ea4b0)

achievement(
    "Supplies Superstore",
    "Fully upgrade the Supply Shed", 
    10,
    SaveProtection() && measured(SupplyUpgrades == 3, when = always_true(), format="percent") && prev(SupplyUpgrades) < 3
)

MakerUpgrades = bit4(0x0ea443) + bit5(0x0ea443) + bit6(0x0ea443) + bit7(0x0ea443)+ bit0(0x0ea444) + bit1(0x0ea444)+ 
bit2(0x0ea444) + bit3(0x0ea444) + bit4(0x0ea444) + bit5(0x0ea444) + bit6(0x0ea444) + bit7(0x0ea444)
    
achievement(
    "Master Craftsman",
    "Fully upgrade the Maker Shed", 
    10,
    SaveProtection() && measured(MakerUpgrades == 12, when = always_true(), format="percent") && prev(MakerUpgrades) < 12
) 

StableUpgrade = byte(0x0ea4af)

achievement(
    "Stable Perfection",
    "Fully upgrade the Stable", 
    5,
    SaveProtection() && measured(StableUpgrade == 2, when = always_true(), format="percent") && prev(StableUpgrade) < 2
) 

GreenhouseUpgrades = bit0(0x0ea445) + bit1(0x0ea445) + bit2(0x0ea445) + bit3(0x0ea445) + byte(0x0ea4b4)

achievement(
     "Year-Round Cultivation",
    "Fully upgrade the Greenhouse", 
    10,
    SaveProtection() && measured(GreenhouseUpgrades == 7, when = always_true(), format="percent") && prev(GreenhouseUpgrades) < 7
)

//Mine/Accessories
WitchEarrings = 0x01A2
WitchPendant = 0x01B1
FriendshipPendant = 0x01A5 
TurboShoes = 0x01A6 
Pedometer = 0x0198
Godhand = 0x0199
SlowRing = 0x01A7
FastRing = 0x01A8

function InventoryAccessories(itemID){
    logic = always_false()
    logicDelta = always_false()
    for item in range(FirstItemSlot, 0x0dc384, 12){
        logic = logic || word(item) == itemID
        logicDelta = logicDelta || prev(word(item)) == itemID
    }
    
    for item in range(0x0dd7d0, 0x0ddcd4, 12){
        logic = logic || word(item) == itemID
        logicDelta = logicDelta || prev(word(item)) == itemID
    }
    return logic && never(logicDelta)
}

achievement(
    "Enchanted Adornments",
    "Get the Blue Witch Earrings",
    10,
    SaveProtection() && stageID == 0x14 && InventoryAccessories(WitchEarrings)
)

achievement(
    "Witch's Mystique",
    "Get the Blue Witch Pendant",
    10,
    SaveProtection() && stageID == 0x14 && InventoryAccessories(WitchPendant)
)

achievement(
    "Bonds of Friendship",
    "Get the Blue Friend Pendant",
    10,
    SaveProtection() && stageID == 0x14 && InventoryAccessories(FriendshipPendant)
)

achievement(
    "Fleet of Foot",
    "Get the Turbo Shoes",
    5,
    SaveProtection() && stageID == 0x14 && InventoryAccessories(TurboShoes)
)

achievement(
    "Step Tally",
    "Get the Pedometer",
    5,
    SaveProtection() && stageID == 0x14 && InventoryAccessories(Pedometer)
)

achievement(
    "Divine Mastery",
    "Get the Godhand",
    10,
    SaveProtection() && stageID == 0x14 && InventoryAccessories(Godhand)
)

achievement(
    "Slow Forward",
    "Get the Time Slowing Ring",
    5,
    SaveProtection() && stageID == 0x14 && InventoryAccessories(SlowRing)
)

achievement(
    "Fast Forward",
    "Get the Time Quickening Ring",
    5,
    SaveProtection() && stageID == 0x14 && InventoryAccessories(FastRing)
)

MineLevel = byte(0x0ea48e)

achievement(
    "Mine Descender",
    "Reach the 100th floor of the Mine",
    5,
    SaveProtection() && stageID >= 0x3c && MineLevel >= 100 && prev(MineLevel) < 100
)

achievement(
    "Deep Earth Delver",
    "Reach the 200th floor of the Mine",
    5,
    SaveProtection() && stageID >= 0x3c && MineLevel >= 200 && prev(MineLevel) < 200
)

achievement(
    "Depths Conqueror",
    "Reach the 255th floor of the Mine",
    10,
    SaveProtection() && stageID >= 0x3c && MineLevel >= 255 && prev(MineLevel) < 255
)
MineStart = 0x0ebbb0
MineEnd = 0x0ebc04
MineException = 0x0ebc04
function RangeCheck(start, end, exception, step){
    sum = 0
    count = 0
    for thing in range(start,end, step){
        if (thing != exception){
            sum = sum + dword(thing)/dword(thing)
            count = count + 1
        }
    }
    return measured(sum == count) && prev(sum) < count
}

achievement(
    "Hidden Treasures",
    "Discover every Mine item",
    10,
    SaveProtection() && RangeCheck(MineStart,MineEnd, MineException, 4)
)

achievement(
    "Ore Apprentice",
    "Ship every Ore",
    5,
    SaveProtection() && ShippingListSum("Ore")
)

achievement(
    "Ore Specialist",
    "Ship every Ore with an S-Rank",
    25,
    SaveProtection() && ShippingListQuality("Ore")
)

season = byte(0x0dc0c4)
spring = 0x00
summer = 0x01
autumn = 0x02
winter = 0x03

day = byte(0x0dc0c5)

function Date(seasonDate, dayDate){
    return 
    season == seasonDate && day == dayDate -1
}

meadow = 0x02
stamina = word(0x0dc110)
function ReturnHome(stage){
    return
    prev(stageID) == stage
    &&
    stageID >= 0x2c &&
    stageID <= 0x2f &&
    stamina != 0 
}

hour = byte(0x0dc0cc)
minute = byte(0x0dc0cd)


achievement(
    "Candy Revelry",
    "Participate in the Rice Candy Festival",
    2,
    SaveProtection() &&
    Date(spring, 1) &&
    hour == 18 &&
    minute == 0 &&
    ReturnHome(meadow)
)
dateID = byte(0x0ea522)
achievement(
    "Goddess Festival",
    "Participate in the Harvest Goddess Festival with someone special",
    3,
    SaveProtection() &&
    never(!Date(spring, 8)) &&
    never(day != prev(day)) &&
    stageID >= 0x2c &&
    stageID <= 0x2f &&
    (prev(stageID) < 0x2c ||
    prev(stageID) > 0x2f) &&
    
    once(dateID != 0xff &&
        (Date(spring, 8)) &&
        hour < 18 &&
        prev(stageID) != meadow &&
        stageID == meadow
    )  
)
cookieFlags = bitcount(0x0ea458)

male = bit0(0x0ea43c) == 0
female = bit0(0x0ea43c) == 1

achievement(
    "Harmony Celebration Cute",
    "Give chocolates to 6 bachelors as a girl in the Winter Harmony Day",
    5,
    SaveProtection() &&
    Date(winter, 14) &&
    measured(bit4(0x0ea45a) + bit5(0x0ea45a) + bit6(0x0ea45a) + bit7(0x0ea45a) + bit0(0x0ea45b) + bit1(0x0ea45b) + bit2(0x0ea45b) == 6) &&
    prev(bit4(0x0ea45a)) + prev(bit5(0x0ea45a)) + prev(bit6(0x0ea45a)) + prev(bit7(0x0ea45a)) + prev(bit0(0x0ea45b)) + prev(bit1(0x0ea45b)) + prev(bit2(0x0ea45b)) == 5
    
    && female
    
)
animalWins = byte(0x0ea4be)
cropWins = byte(0x0ea4ba)
cookingWins = byte(0x0ea4b6)
fishingWins = byte(0x0ea4c6)
oreWins = byte(0x0ea4c2)

achievement(
    "Flock to the Sheep Festival",
    "Win in the Sheep Festival",
    5,
    SaveProtection() &&
    Date(spring, 19) &&
    stageID == meadow &&
    animalWins == prev(animalWins) + 1
)

achievement(
    "Horsing Around",
    "Win in the Horse Festival",
    5,
    SaveProtection() &&
    Date(spring, 24) &&
    stageID == meadow &&
    animalWins == prev(animalWins) + 1
)

achievement(
    "Crop Winner",
    "Win in the Spring Crop Festival",
    5,
    SaveProtection() &&
    Date(spring, 29) &&
    stageID == meadow &&
    cropWins == prev(cropWins) + 1
)

achievement(
    "Clucking Good Time",
    "Win in the Chicken Festival",
    5,
    SaveProtection() &&
    Date(summer, 7) &&
    stageID == meadow &&
    animalWins == prev(animalWins) + 1
)

achievement(
    "Culinary Master",
    "Win in the Cooking Festival",
    5,
    SaveProtection() &&
    Date(summer, 13) &&
    stageID == meadow &&
    cookingWins == prev(cookingWins) + 1
)

achievement(
    "Purrfect Cat",
    "Win in the Cat Festival",
    5,
    SaveProtection() &&
    Date(summer, 18) &&
    stageID == meadow &&
    animalWins == prev(animalWins) + 1
)
achievement(
    "Fishing Frenzy",
    "Win in the Fishing Festival",
    5,
    SaveProtection() &&
    Date(summer, 23) &&
    stageID == meadow &&
    fishingWins == prev(fishingWins) + 1
)

achievement(
    "Festival of Fireworks",
    "Participate in the Fireworks Festival",
    2,
    SaveProtection() &&
    Date(summer, 26) &&
    ReturnHome(meadow) &&
    hour >= 6
)

achievement(
    "Crop Champion",
    "Win in the Summer Crop Festival",
    5,
    SaveProtection() &&
    Date(summer, 29) &&
    stageID == meadow &&
    cropWins == prev(cropWins) + 1
)

achievement(
    "Moo-velous Festival",
    "Win in the Cow Festival",
    5,
    SaveProtection() &&
    Date(autumn, 5) &&
    stageID == meadow &&
    animalWins == prev(animalWins) + 1
)

harvestStew = bit5(0x0ea469)

achievement(
    "Festival Merriment",
    "Participate in the Harvest Festival",
    2,
    SaveProtection() &&
    Date(autumn, 10) &&
    stageID == meadow &&
    harvestStew > prev(harvestStew)
)

achievement(
    "Dog Days",
    "Win in the Dog Festival",
    5,
    SaveProtection() &&
    Date(autumn, 16) &&
    stageID == meadow &&
    animalWins == prev(animalWins) + 1
)
riceShipped = word(0x0ea56e)
achievement(
    "Rice Rejoicer",
    "Participate in the Rice Festival",
    3,
    SaveProtection() &&
    Date(autumn, 24) &&
    ReturnHome(meadow) &&
    riceShipped > 0 &&
    hour == 18 &&
    minute == 0
)

achievement(
    "Crop Master",
    "Win in the Fall Crop Festival",
    5,
    SaveProtection() &&
    Date(autumn, 29) &&
    stageID == meadow &&
    cropWins == prev(cropWins) + 1
)

achievement(
    "Ghostrick Lantern",
    "Participate in the Pumpkin Festival's Party",
    3,
    SaveProtection() &&
    Date(autumn, 30) &&
    ReturnHome(meadow) &&
    byte(0x0ea508) == 4
)

achievement(
    "Snowman Builder",
    "Participate in the Snow Festival",
    2,
    SaveProtection() &&
    Date(winter, 4) &&
    ReturnHome(meadow) &&
    hour == 18 &&
    minute == 0 
)

achievement(
    "Harmony Celebration",
    
    
    
    "Give cookies to 8 bachelorettes as a boy in the Spring Harmony Day",
    5,
    SaveProtection() &&
    Date(spring, 14) &&
    measured(cookieFlags == 8) && prev(cookieFlags) == 7 && male
)

achievement(
    "Festival Miner",
    "Win in the Mining Festival",
    5,
    SaveProtection() &&
    Date(winter, 19) &&
    stageID == meadow &&
    oreWins == prev(oreWins) + 1
)
starryNightID = byte(0x0ea52c)

achievement(
    "Stargazing Day",
    "Participate in the Starry Night",
    3,
    SaveProtection() &&
    (Date(winter, 24) || Date(winter, 25)) &&
    //hour == 6 &&
    //minute == 0 
    //&&
    ((prev(stageID) != 0x0 &&
    (prev(stageID) < 0x2c || prev(stageID) > 0x2f) 
    
    &&
    stageID >= 0x2c &&
    stageID <= 0x2f)
    ||
    starryNightID == 0x07 &&  hour >= 18 && (prev(stageID) < 0x2c || prev(stageID) > 0x2f) 
    
    &&
    stageID >= 0x2c &&
    stageID <= 0x2f
    
    
    ) 
    
    
    &&
    stamina != 0 &&
    starryNightID != 0xff
)

achievement(
    "Noodle Lover",
    "Participate in the New Years Eve Noodle Festival",
    2,
    SaveProtection() &&
    Date(winter, 30) &&
    ReturnHome(meadow)

)

function listCheck(start, end, step){
    sum = 0
    for item in range(start,end, step){
        sum = sum + dword(item)/dword(item)
    }
    return sum
}

fishStart = 0x0ea6dc
fishEnd = 0x0eaacc
fishMiscStart = 0x0eab1c
fishMiscEnd = 0x0eab4c


achievement(
    "Fin-tastic Collector",
    "Fish every fish (except for the King Fishes)",
    25,
    SaveProtection() &&
    measured(
    (
    listCheck(fishStart, fishEnd, 8) 
    + 
    listCheck(fishMiscStart, fishMiscEnd, 8)
    )
    ==    
    (fishEnd-fishStart)/8
    + 
    (fishMiscEnd-fishMiscStart)/8 
    +
    2
    )
    
    &&
    

    (
    listCheck(fishStart, fishEnd, 8) 
    + 
    listCheck(fishMiscStart, fishMiscEnd, 8)
    )
    <    
    (fishEnd-fishStart)/8
    + 
    (fishMiscEnd-fishMiscStart)/8 
    
)

fishKingStart = 0x0eaad4
fishKingEnd = 0x0eab14

achievement(
    "King of the Ocean",
    "Fish every Fish King",
    10,
    SaveProtection() &&
    measured(
        listCheck(fishKingStart,fishKingEnd, 8) == 9
    ) &&
    prev(listCheck(fishKingStart,fishKingEnd, 8)) < 9
)



achievement(
    "Master of the Seas",
    "Ship every fishing ftem",
    10,
    SaveProtection() && ShippingListSum("Fishing")
)

achievement(
    "Flawless Fisherman",
    "Ship every fishing item with an S-Rank",
    25,
    SaveProtection() && ShippingListQuality("Fishing")
)

forageStart = 0x0eab54
forageEnd = 0x0eac8c

achievement(
    "Foraging Master",
    "Fill the mushroom forage list",
    25,
    SaveProtection() &&
    measured(
        listCheck(forageStart,forageEnd, 8) == 40
    ) &&
    prev(listCheck(forageStart,forageEnd, 8)) < 40
)

function recipes(){
    sum = 0
    count = 0
    sum = sum + bit0(0x0eacb1)+ bit1(0x0eacb1)+ bit2(0x0eacb1)+ bit3(0x0eacb1)+ bit4(0x0eacb1)+ bit5(0x0eacb1)
    count = count + 6
    
    for recipe in range(0x0eac94, 0x0eacb0){
    count = count + 8
    sum = sum + bitcount(recipe)
        
    }
    return measured(sum == count) && prev(sum) < count
}

achievement(
    "Master Chef",
    "Unlock every recipe",
    10,
    SaveProtection() && recipes()
)

achievement(
    "Gourmet Extraordinaire",
    "Cook and ship every recipe",
    10,
    SaveProtection() && ShippingListSum("Cooking")
)

achievement(
    "Salad Sensation",
    "Cook and ship every Salad recipe with an S-Rank",
    10,
    SaveProtection() && ShippingListQualityCooking("Salad")
)

achievement(
    "Soup/Drink Adept",
    "Cook and ship every Soup/Drink recipe with an S-Rank",
    10,
    SaveProtection() && ShippingListQualityCooking("Soup")
)

achievement(
    "Appetizer Ace",
    "Cook and ship every Appetizer recipe with an S-Rank",
    10,
    SaveProtection() && ShippingListQualityCooking("Appetizer")
)

achievement(
    "Main Course Savvy",
    "Cook and ship every Main Course recipe with an S-Rank",
    10,
    SaveProtection() && ShippingListQualityCooking("Main")
)


achievement(
    "Dessert Enthusiast",
    "Cook and ship every Dessert recipe with an S-Rank",
    10,
    SaveProtection() && ShippingListQualityCooking("Dessert")
)

achievement(
    "Diverse Cook",
    "Cook and ship every Other recipe with an S-Rank",
    10,
    SaveProtection() && ShippingListQualityCooking("Other")
)

achievement(
    "Perfection on a Plate",
    "Cook and ship every recipe with an S-Rank",
    25,
    SaveProtection() && ShippingListQuality("Cooking")
)

rivalMarry={
    1:{"title":"Great Life", "description":"Celebrate Elliot and Julia's wedding ", "points":10,"address":0x0ea500},
2:{"title":"Fishing Partners", "description":"Celebrate Denny and Lanna's wedding", "points":10,"address":0x0ea502},
3:{"title":"Experience of a Lifetime", "description":"Celebrate Lily and Will's wedding", "points":10,"address":0x0ea504},
4:{"title":"Served Love", "description":"Celebrate Natalie and Pierre's wedding", "points":10,"address":0x0ea503},
5:{"title":"Timid Love", "description":"Celebrate Sabrina and Vaughn's wedding", "points":10,"address":0x0ea501},
}

function rivalMarriage(address){
    return 
    prev(byte(address)) == 0x03 && byte(address) == 0x04
}

for cheevo in rivalMarry{
achievement(
    title = rivalMarry[cheevo]["title"],
    description = rivalMarry[cheevo]["description"],
    points = rivalMarry[cheevo]["points"],
    trigger = 
    SaveProtection() &&
    rivalMarriage(rivalMarry[cheevo]["address"])
)  
}

achievement(
    "Goddess' Devote",
    "Try to get married to Alisa",
    10,
    SaveProtection() && byte(0x0ea4f8) == 5 && prev(byte(0x0ea4f8)) == 4
)

marriages = {
    1:{"title":"Perfectionist", "description":"Get married to Natalie", "points":10,"value":1},
2:{"title":"Animal Lover", "description":"Get married to Julia", "points":10,"value":2},
3:{"title":"Fisher and Singer", "description":"Get married to Lanna", "points":10,"value":3},
4:{"title":"Bookworm", "description":"Get married to Sabrina", "points":10,"value":4},
5:{"title":"Treasure Hunter", "description":"Get married to Lily", "points":10,"value":5},
6:{"title":"Girl Farmer", "description":"Get married to Chelsea", "points":10,"value":6},
7:{"title":"Enchantress", "description":"Get married to the Witch Princess", "points":10,"value":7},
8:{"title":"Shy and Kind", "description":"Get married to Elliot", "points":10,"value":9},
9:{"title":"Lone Wolf", "description":"Get married to Vaughn", "points":10,"value":10},
10:{"title":"Ocean's Heart", "description":"Get married to Denny", "points":10,"value":11},
11:{"title":"Food Gourmet", "description":"Get married to Pierre", "points":10,"value":12},
12:{"title":"Gentleman", "description":"Get married to Will", "points":10,"value":13},
13:{"title":"Male Farmer", "description":"Get married to Mark", "points":10,"value":14},
14:{"title":"Hunter Love", "description":"Get married to Shea", "points":10,"value":15},
}
idMarried = byte(0x0ea488)
function marriage(id){
    return
    prev(idMarried) == 0xff && idMarried == id
    
}

for cheevo in marriages{
    achievement(
        title = marriages[cheevo]["title"],
        description = marriages[cheevo]["description"],
        points = marriages[cheevo]["points"],
        trigger = SaveProtection() && marriage(marriages[cheevo]["value"])
    )
}

villagers = {
    1:{"title":"Sensible Mother", "description":"Felicia", "points":5,"value":0xe4c0a},
2:{"title":"Old Farmer", "description":"Taro", "points":5,"value":0xe4c16},
3:{"title":"Animal Seller", "description":"Mirabelle", "points":5,"value":0xe4c22},
4:{"title":"Merchant", "description":"Chen", "points":5,"value":0xe4c2e},
5:{"title":"Engraver", "description":"Charlie", "points":5,"value":0xe4c3a},
6:{"title":"Carpenter", "description":"Gannon", "points":5,"value":0xe4c46},
7:{"title":"Playful Child", "description":"Eliza", "points":5,"value":0xe4c52},
8:{"title":"Mining CEO", "description":"Regis", "points":5,"value":0xe4c5e},
9:{"title":"Priest", "description":"Nathan", "points":5,"value":0xe4c6a},
10:{"title":"Adoptive Father", "description":"Wada", "points":5,"value":0xe4c76},
11:{"title":"Frog Lover", "description":"Little Witch", "points":5,"value":0xe4c82},
12:{"title":"Harvest Deity", "description":"Harvest Goddess", "points":5,"value":0xe4c8e},
13:{"title":"Good Parent", "description":"your own child", "points":5,"value":0xe4c9a},
14:{"title":"Shy Wanderer", "description":"Cliff", "points":5,"value":0xe4cb2},
15:{"title":"Doctor M.D", "description":"Trent", "points":5,"value":0xe4cbe},
16:{"title":"Cheerleader", "description":"Karen", "points":5,"value":0xe4cca},
17:{"title":"Floriculture", "description":"Popuri", "points":5,"value":0xe4cd6},
18:{"title":"Scarlet Squad", "description":"the Red Harvest Sprites", "points":5,"value":0xe4ce2},
19:{"title":"Tangerine Gang", "description":"the Orange Harvest Sprites", "points":5,"value":0xe4d12},
20:{"title":"Gold Crew", "description":"the Yellow Harvest Sprites", "points":5,"value":0xe4d66},
21:{"title":"Lime Team", "description":"the Green Harvest Sprites", "points":5,"value":0xe4dba},
22:{"title":"Cobalt Lineup", "description":"the Blue Harvest Sprites", "points":5,"value":0xe4e0e},
23:{"title":"Azure Group", "description":"the Indigo Harvest Sprites", "points":5,"value":0xe4e62},
24:{"title":"Lavender Troup", "description":"the Violet Harvest Sprites", "points":5,"value":0xe4eb6},
}

TenHearts = 58978

function friendship(address){
    return measured(word(address) >= TenHearts) && prev(word(address)) < TenHearts
}

for cheevo in villagers{
     achievement(
        title = villagers[cheevo]["title"],
        description = "Reach a 10-heart friendship with " + villagers[cheevo]["description"],
        points = villagers[cheevo]["points"],
        trigger = SaveProtection() && friendship(villagers[cheevo]["value"])
    )
}

achievement(
    "Secondary Friends",
    "Reach a 10-heart friendship with all 6 sub-villagers",
    25,
    SaveProtection() && 
    word(0xe4fb2)>=TenHearts &&
    word(0xe4fbe)>=TenHearts &&
    word(0xe5006)>=TenHearts &&
    word(0xe5012)>=TenHearts &&
    word(0xe505a)>=TenHearts &&
    word(0xe50ba)>=TenHearts &&
    (
        prev(word(0xe4fb2))<TenHearts ||
    prev(word(0xe4fbe))<TenHearts ||
    prev(word(0xe5006))<TenHearts ||
    prev(word(0xe5012))<TenHearts ||
    prev(word(0xe505a))<TenHearts ||
    prev(word(0xe50ba))<TenHearts
    )
)

haveChild = bit1(0x0ea43c)

achievement(
    "Miracle of Life",
    "Have a child with your couple",
    10,
    SaveProtection() &&
    haveChild > prev(haveChild)
)

achievement(
    "Another Man's Thrash...",
    "Ship every 'other' item",
    10,
    SaveProtection() && ShippingListSum("Other")
)

achievement(
    "Misc Perfection",
    "Ship every 'other' item with an S-Rank",
    25,
    SaveProtection() && ShippingListQuality("Other")
)

randomEvents = {
    1:{"address":bit1(0x0ea451), "name":"Love Stinks", "description":"Watch Charlie and Eliza's first bridge talk"},
2:{"address":bit2(0x0ea451), "name":"Eliza's Demands", "description":"Watch Charlie and Eliza's second bridge talk"},
3:{"address":bit3(0x0ea451), "name":"Gannon's Test", "description":"Watch Charlie asking permission to Gannon"},
4:{"address":bit5(0x0ea451), "name":"Eliza's Performance", "description":"Listen to Eliza's first singing performance"},
5:{"address":bit0(0x0ea451), "name":"Chen Aerobics", "description":"Follow Chen's exercise routine"},
6:{"address":bit7(0x0ea450), "name":"Just Like Her Mother", "description":"Watch Mirabelle showing an old photo to Julia"},
7:{"address":bit5(0x0ea450), "name":"Rumors", "description":"Join Felicia and Mirabelle gossip takj"},
8:{"address":bit6(0x0ea450), "name":"The Mayor's Letter", "description":"Read Thomas letter for Taro"},
9:{"address":bit2(0x0ea452), "name":"Who is Cutest?", "description":"Watch the argument between Popuri and Eliza"},
10:{"address":bit4(0x0ea451), "name":"Chasing the Dream", "description":"Watch Lanna helping Eliza with her dream"},
11:{"address":bit0(0x0ea452), "name":"Mineral Town", "description":"Read Trent's Mineral Town letter"},
12:{"address":bit7(0x0ea451), "name":"Faith", "description":"Watch Cliff and Nathan's conversation"},
13:{"address":bit2(0x0ea453), "name":"Nathan and the Harvest Goddess", "description":"Hear Nathan's story about the Goddess"},
14:{"address":bit3(0x0ea454), "name":"Witch Princess vs. Bear?", "description":"Watch the Witch encounter with a... bear?"},
15:{"address":bit2(0x0ea454), "name":"Witchkins vs. Harvest Goddess", "description":"Watch the Little Witch encounter with the Goddess"},
16:{"address":bit1(0x0ea454), "name":"Witchkins vs. Witch Princess", "description":"Watch the Little Witch encounter with the Witch"},
17:{"address":bit5(0x0ea453), "name":"Dedicated Follower of Fashion [m]", "description":"Watch the kids juding Pierre's style (Playing as Mark, Pierre is not married)"},
18:{"address":bit6(0x0ea453), "name":"My Style [m]", "description":"Watch Vaughn argue about his food (Playing as Mark, Vaughn is not married)"},
19:{"address":bit7(0x0ea452), "name":"A Test of Character [m]", "description":"Hear Will and Regis conversation (Playing as Mark, Will is not married)"},
20:{"address":bit7(0x0ea453), "name":"Fishing Follies [m]", "description":"Have a fisherman conversation with Denny (Playing as Mark)"},
21:{"address":bit4(0x0ea453), "name":"Manliness [m]", "description":"Watch Elliot asking Gannon how to become manlier (Playing as Mark, Elliot is not married)"},
22:{"address":bit0(0x0ea454), "name":"First Time Shopping [m]", "description":"Take Shea to the shop (Playing as Mark)"},
23:{"address":bit6(0x0ea452), "name":"Home Cooking [m]", "description":"Watch Lily stay for dinner on Mirabelle's house (Playing as Chelsea, Lily and Julia aren't married)"},
24:{"address":bit3(0x0ea452), "name":"Natalie's Father [m]", "description":"Watch Natalie ask about his father (Playing as Chelsea)"},
25:{"address":bit5(0x0ea452), "name":"A Stalker [m]", "description":"Hear Lanna's concern about a stalker (Playing as Chelsea)"},
26:{"address":bit0(0x0ea453), "name":"A Striking Similarity [m]", "description":"Watch Popuri and Karen confuse Sabrina for Mary (Playing as Chelsea)"},
27:{"address":bit1(0x0ea453), "name":"The Awesome Harvest Goddess [m]", "description":"Hear Alisa talk about the Goddess (Playing as Chelsea)"},
28:{"address":bit1(0x0ea452), "name":"Cooking Class [m]", "description":"Watch Pierre's cooking class (Pierre is not married)"},
29:{"address":bit6(0x0ea451), "name":"A Bitter Argument [m]", "description":"Watch the argument between Regis and Sabrina (Sabrina is not married)"},
30:{"address":bit3(0x0ea453), "name":"Wada's Strength [m]", "description":"Watch Shea and Wada's fight (Shea is not married)"},
}

for event in randomEvents{
    achievement(
        randomEvents[event]["name"],
        randomEvents[event]["description"],
        3,
        SaveProtection() && randomEvents[event]["address"] > prev(randomEvents[event]["address"])
    )
}