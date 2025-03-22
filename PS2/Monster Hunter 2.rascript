// Monster Hunter 2
// #ID = 19249

SaveFile = byte(0x6adb51)

MapID = word(0x5f9054)

CurrentQuest = word(0x5d8268)

QuestTimer = dword(0x5d8270)

QuestState = byte(0x005d8266)

CompletedQuest = QuestState == 3 && prev(QuestState) != 3



QuestsIDs = {
    1:{"title":"Hunter Basics - Hunting 101", "ids":[0x01]},
2:{"title":"Hunter Basics - The Hungry Hunter", "ids":[0x02]},
3:{"title":"Hunter Basics - The Honey Hunter", "ids":[0x03]},
4:{"title":"Hunter Basics - Secrets of Combination", "ids":[0x04]},
5:{"title":"Hunter Basics - Fishing Secrets", "ids":[0x05]},
6:{"title":"Hunter Basics - Swords & Shield 101", "ids":[0x06]},
7:{"title":"Hunter Basics - Great Sword 101", "ids":[0x07]},
8:{"title":"Hunter Basics - Hammer 101", "ids":[0x08]},
9:{"title":"Hunter Basics - Lance 101", "ids":[0x09]},
10:{"title":"Hunter Basics - Dual Blades 101", "ids":[0x0a]},
11:{"title":"Hunter Basics - Long Sword 101", "ids":[0x0b]},
12:{"title":"Hunter Basics - Hunting Horn 101", "ids":[0x0c]},
13:{"title":"Hunter Basics - Gunlance 101", "ids":[0x0d]},
14:{"title":"Hunter Basics - Light Bowgun 101", "ids":[0x0e]},
15:{"title":"Hunter Basics - Heavy Bowgun 101", "ids":[0x0f]},
16:{"title":"Hunter Basics - Bow 101", "ids":[0x10]},
17:{"title":"Hunter Basics - Egg Stealing 101", "ids":[0x11]},
18:{"title":"Hunter Basics - Secrets of Hunting", "ids":[0x12]},
19:{"title":"Dojo Exercises - An A-lure-ing Outing!", "ids":[0x65]},
20:{"title":"Dojo Exercises - Face the Blue Beasts!", "ids":[0xc9]},
21:{"title":"Dojo Exercises - Gotta Squash 'Em All!", "ids":[0x66]},
22:{"title":"Dojo Exercises - Desert Runaways!", "ids":[0x67]},
23:{"title":"Dojo Exercises - Fighting a Monstrous Bird!", "ids":[0xca]},
24:{"title":"Dojo Exercises - Leaping in the Desert", "ids":[0x68]},
25:{"title":"Dojo Exercises - Hunt the Jungle Queen!", "ids":[0x69]},
26:{"title":"Dojo Exercises - The Queen of the Land!", "ids":[0xcb]},
27:{"title":"Dojo Exercises - Hunt, Hunt, and Hunt!", "ids":[0x6a]},
28:{"title":"Dojo Exercises - Giant Skull in the Sand?!", "ids":[0x6b]},
29:{"title":"Dojo Exercises - Facing Shogun Ceanataur!", "ids":[0xcc]},
30:{"title":"Dojo Exercises - An Eggcellent Taste!", "ids":[0x6c]},
31:{"title":"Dojo Exercises - Woah! Two Huge Monsters!", "ids":[0x6d]},
32:{"title":"Dojo Exercises - Chasing Rolling Thunder", "ids":[0xcd]},
33:{"title":"Quest - Explore the Jungle!", "ids":[0x3e9,0x43e,0x43f]},
34:{"title":"Quest - The Blue Hunter's Domain", "ids":[0x3ea,0x3eb]},
35:{"title":"Quest - Hunt the Boar King!", "ids":[0x3ec,0x3ed]},
36:{"title":"Quest - Tracking the Bird's Call", "ids":[0x3ee]},
37:{"title":"Quest - Blue Bird Watching", "ids":[0x3ef,0x3f0]},
38:{"title":"Quest - The Waterfront Daimyo", "ids":[0x3f1]},
39:{"title":"Quest - A Violet Rampage", "ids":[0x3f2]},
40:{"title":"Quest - The Pink Ape's Territory", "ids":[0x3f3,0x3f4,0x3f5]},
41:{"title":"Quest - The Queen of the Land", "ids":[0x3f6,0x3f8]},
42:{"title":"Quest - The Jungle's Cherry Blossom", "ids":[0x3f7]},
43:{"title":"Quest - The Jungle Typhoon", "ids":[0x3f9,0x3fa]},
44:{"title":"Quest - Phantom of the Jungle", "ids":[0x3fb,0x3fc]},
45:{"title":"Quest - Leaping in the Desert", "ids":[0x3fd,0x3fe]},
46:{"title":"Quest - Wyvern in the Sands", "ids":[0x3ff]},
47:{"title":"Quest - Heir of the Dead", "ids":[0x400]},
48:{"title":"Quest - The Sunken Jade", "ids":[0x401]},
49:{"title":"Quest - The Cavern Lake Wyvern", "ids":[0x402]},
50:{"title":"Quest - The Deser Cherry Blossom", "ids":[0x403]},
51:{"title":"Quest - The Fearsome White Devil", "ids":[0x404]},
52:{"title":"Quest - The One-horned Wyvern", "ids":[0x405]},
53:{"title":"Quest - The Brutal Horned Wyvern", "ids":[0x406]},
54:{"title":"Quest - Jet-Black Twisted Horns", "ids":[0x407]},
55:{"title":"Quest - The Desert Sandstorm", "ids":[0x408,0x409,0x40a]},
56:{"title":"Quest - Smelting the Desert Sands", "ids":[0x40b]},
57:{"title":"Quest - The Sun Fallen in the Sand", "ids":[0x40c,0x40d]},
58:{"title":"Quest - A Splash of Red and Poison", "ids":[0x40e,0x40f]},
59:{"title":"Quest - A Reckless Rush", "ids":[0x410]},
60:{"title":"Quest - Blue Bird Watching", "ids":[0x411,0x412]},
61:{"title":"Quest - A Violet Rampage", "ids":[0x413]},
62:{"title":"Quest - Charging Through Poison", "ids":[0x414]},
63:{"title":"Quest - A White Shadow in the Dark", "ids":[0x415]},
64:{"title":"Quest - The Queen's Dance", "ids":[0x416]},
65:{"title":"Quest - The Scythe in the Swamp", "ids":[0x417,0x418]},
66:{"title":"Quest - A Gluttonous Ape", "ids":[0x419,0x41a,0x41b]},
67:{"title":"Quest - Silence", "ids":[0x41c,0x41d]},
68:{"title":"Quest - The Emperor of Flame", "ids":[0x41e,0x41f]},
69:{"title":"Quest - Frigid Hunting", "ids":[0x420]},
70:{"title":"Quest - Red in a Field of Snow", "ids":[0x421]},
71:{"title":"Quest - A White Shadow in the Dark", "ids":[0x422]},
72:{"title":"Quest - The Lord of Fanged Beasts", "ids":[0x423,0x424,0x425]},
73:{"title":"Quest - A Phantom in the Drifts", "ids":[0x426,0x427]},
74:{"title":"Quest - Icy Winds Awoken by Steel", "ids":[0x428]},
75:{"title":"Quest - It That Wields Poison", "ids":[0x429]},
76:{"title":"Quest - A Trap Lurking Underground", "ids":[0x42a,0x42b]},
77:{"title":"Quest - The Scorching Conqueror", "ids":[0x42c]},
78:{"title":"Quest - The Black-armored Wyvern", "ids":[0x42d,0x42e]},
79:{"title":"Quest - The Earth-splitting Scythe", "ids":[0x42f]},
80:{"title":"Quest - The Emperor of Flame", "ids":[0x430,0x431]},
81:{"title":"Quest - The Empress of Flame", "ids":[0x432,0x433]},
82:{"title":"Quest - The King of the Skies", "ids":[0x434,0x435]},
83:{"title":"Quest - The King and Queen Wyverns", "ids":[0x436,0x437]},
84:{"title":"Quest - The Silent Elder Dragon", "ids":[0x438]},
85:{"title":"Quest - Lighting Strikes the Tower", "ids":[0x439,0x43a,0x43b]},
86:{"title":"Quest - The Azure Wyvern's Roost", "ids":[0x43c]},
87:{"title":"Quest - The Empress's Tower", "ids":[0x43d]},
88:{"title":"Quest - Defending the Fortress [Repel Lao-Shan Lung!]", "ids":[0x1772]},
89:{"title":"Quest - Hunting a Daimyo Hermitaur! [Chief's Urgent Quest]", "ids":[0x1389]},
90:{"title":"Quest - The Black Wolf bird Attacks [Urgent Quest]", "ids":[0x1771]},
91:{"title":"Quest - Hunt the One-horned Wyvern! [Chief's Urgent Quest]", "ids":[0x1390]},
92:{"title":"Quest - An Endless Typhoon [Mission: Repel Kushala]", "ids":[0x138a]},
93:{"title":"Quest - Portent of Sand and Steel [Mission: Repel Kushala]", "ids":[0x138b]},
94:{"title":"Quest - Icy Winds Awoken by Steel [Mission: Slay Kushala]", "ids":[0x138c]},
95:{"title":"Quest - Empress of Crimson Flames [Mission: Repel Lunastra]", "ids":[0x138d]},
96:{"title":"Quest - The Sun Fallen in the Sand [Mission: Repel Lunastra]", "ids":[0x138e]},
97:{"title":"Quest - The Empress's Tower [Mission: Slay Lunastra]", "ids":[0x138f]},
}

Progression = {1:{"title":"Jungle Explorer", "flags":[bit0(0x5d6a60)], "description":"Complete the 1 star quest 'Explore the Jungle!'", "points":3},
2:{"title":"Domain of the Blue Hunter", "flags":[bit1(0x5d6a60),bit2(0x5d6a60)], "description":"Complete the 1 star quest 'The Blue Hunter's Domain'", "points":5},
3:{"title":"Boar King's Bane", "flags":[bit3(0x5d6a60),bit4(0x5d6a60)], "description":"Complete the 1 star quest 'Hunt the Boar King!'", "points":5},
4:{"title":"Chilled Hunter", "flags":[bit7(0x5d6a66)], "description":"Complete the 1 star quest 'Frigid Hunting'", "points":5},
5:{"title":"Reckless Pursuit", "flags":[bit7(0x5d6a64)], "description":"Complete the 1 star quest 'A Reckless Rush'", "points":5},
6:{"title":"Bird Whisperer", "flags":[bit5(0x5d6a60),bit7(0x5d6a60)], "description":"Complete the 1 star quest 'Tracking the Bird's Call'", "points":5},
7:{"title":"Violet Conqueror", "flags":[bit1(0x5d6a61),bit2(0x5d6a65)], "description":"Complete the 1 star quest 'A Violet Rampage'", "points":5},
8:{"title":"Red Elimination", "flags":[bit5(0x5d6a64),bit6(0x5d6a64)], "description":"Complete the 1 star quest 'A Splash of Red and Poison'", "points":5},
9:{"title":"Poisonous Menace", "flags":[bit0(0x5d6a68)], "description":"Complete the 1 star quest 'It That Wields Poison'", "points":5},
10:{"title":"Bird Watcher", "flags":[bit6(0x5d6a60),bit0(0x5d6a65)], "description":"Complete the 1 star quest 'Blue Bird Watching'", "points":5},
11:{"title":"Poison-Charged", "flags":[bit1(0x5d6a65),bit3(0x5d6a65)], "description":"Complete the 1 star quest 'Charging Through Poison'", "points":5},
12:{"title":"Underground Ambush", "flags":[bit1(0x5d6a68),bit2(0x5d6a68)], "description":"Complete the 1 star quest 'A Trap Lurking Underground'", "points":5},
13:{"title":"Desert Leaper", "flags":[bit4(0x5d6a62),bit5(0x5d6a62)], "description":"Complete the 1 star quest 'Leaping in the Desert'", "points":5},
14:{"title":"Hermitaur Hunt", "flags":[bit7(0x5d6a6a)], "description":"Complete the 2 stars urgent quest 'Hunting a Daimyo Hermitaur!'", "points":5},
15:{"title":"Waterfront Encounter", "flags":[bit0(0x5d6a61)], "description":"Complete the 2 stars quest 'The Waterfront Daimyo'", "points":5},
16:{"title":"Heir's Defeat", "flags":[bit7(0x5d6a62)], "description":"Complete the 2 stars quest 'Heir of the Dead'", "points":5},
17:{"title":"Queen's Domain", "flags":[bit5(0x5d6a61),bit7(0x5d6a61)], "description":"Complete the 2 stars quest 'The Queen of the Land'", "points":5},
18:{"title":"Dance Partner", "flags":[bit5(0x5d6a65)], "description":"Complete the 2 stars quest 'The Queen's Dance'", "points":5},
19:{"title":"Ape Conqueror", "flags":[bit0(0x5d6a66),bit1(0x5d6a66)], "description":"Complete the 2 stars quest 'A Gluttonous Ape'", "points":5},
20:{"title":"Pink Territory", "flags":[bit2(0x5d6a61),bit3(0x5d6a61)], "description":"Complete the 2 stars quest 'The Pink Ape's Territory'", "points":5},
21:{"title":"Red Snow Tracker", "flags":[bit0(0x5d6a67)], "description":"Complete the 2 stars quest 'Red in a Field of Snow'", "points":5},
22:{"title":"Jungle Blossom", "flags":[bit6(0x5d6a61)], "description":"Complete the 2 stars quest 'The Jungle's Cherry Blossom'", "points":5},
23:{"title":"Desert Blossom", "flags":[bit2(0x5d6a63)], "description":"Complete the 2 stars quest 'The Desert Cherry Blossom'", "points":5},
24:{"title":"Wyvern Sands", "flags":[bit6(0x5d6a62)], "description":"Complete the 2 stars quest 'Wyvern in the Sands'", "points":5},
25:{"title":"Shadow in the Dark", "flags":[bit4(0x5d6a65),bit1(0x5d6a67)], "description":"Complete the 2 stars quest 'A White Shadow in the Dark'", "points":5},
26:{"title":"Sky Soarer", "flags":[bit3(0x5d6a69)], "description":"Complete the 2 stars quest 'The King of the Skies'", "points":5},
27:{"title":"Royal Wyvern Duo", "flags":[bit5(0x5d6a69)], "description":"Complete the 2 stars quest 'The King and Queen Wyverns'", "points":5},
28:{"title":"Azure Roar", "flags":[bit4(0x5d6a69)], "description":"Complete the 2 stars quest 'The Azure Wyvern's Roar'", "points":5},
29:{"title":"Horned Wyvern Hunt", "flags":[bit6(0x5d6a6b)], "description":"Complete the 3 stars urgent quest 'Hunt the One-horned Wyvern!'", "points":10},
30:{"title":"Jade Depths", "flags":[bit4(0x5d6a61),bit0(0x5d6a63)], "description":"Complete the 3 stars quest 'The Sunken Jade'", "points":10},
31:{"title":"Swamp's Scythe", "flags":[bit6(0x5d6a65),bit7(0x5d6a65)], "description":"Complete the 3 stars quest 'The Scythe in the Swamp'", "points":10},
32:{"title":"Earth's Scythe", "flags":[bit5(0x5d6a68),bit6(0x5d6a68)], "description":"Complete the 3 stars quest 'The Earth-splitting Scythe'", "points":10},
33:{"title":"Beast Lord", "flags":[bit2(0x5d6a67),bit3(0x5d6a67)], "description":"Complete the 3 stars quest 'The Lord of Fanged Beasts'", "points":10},
34:{"title":"Black Armor", "flags":[bit2(0x5d6a66),bit4(0x5d6a68)], "description":"Complete the 3 stars quest 'The Black-armored Wyvern'", "points":10},
35:{"title":"White Devil", "flags":[bit3(0x5d6a63)], "description":"Complete the 3 stars quest 'The Fearsome White Devil'", "points":10},
36:{"title":"Horned Wyvern", "flags":[bit5(0x5d6a63)], "description":"Complete the 3 stars quest 'The Brutal Horned Wyvern'", "points":10},
37:{"title":"Conqueror Conquered", "flags":[bit3(0x5d6a68)], "description":"Complete the 3 stars quest 'The Scorching Conqueror'", "points":10},
38:{"title":"Lake Wyvern", "flags":[bit1(0x5d6a63)], "description":"Complete the 3 stars quest 'The Cavern Lake Wyvern'", "points":10},
39:{"title":"Twisted Horns", "flags":[bit6(0x5d6a63)], "description":"Complete the 3 stars quest 'Jet-black Twisted Horns'", "points":10},
40:{"title":"Azure Explorer", "flags":[bit2(0x5d6a6a)], "description":"Complete the 3 stars quest 'The Azure Wyvern's Roost'", "points":10},
41:{"title":"Tempest Tamer", "flags":[bit0(0x5d6a6b)], "description":"Complete the 4 stars urgent quest 'An Endless Typhoon'", "points":10},
42:{"title":"Sands of Destiny", "flags":[bit1(0x5d6a6b)], "description":"Complete the 4 stars urgent quest 'Portent of Sand and Steel'", "points":10},
43:{"title":"Steel Tempest", "flags":[bit2(0x5d6a6b)], "description":"Complete the 4 stars urgent quest 'Icy Winds Awoken by Steel'", "points":10},
44:{"title":"Flames of Sovereignty", "flags":[bit3(0x5d6a6b)], "description":"Complete the 4 stars urgent quest 'Empress of Crimson Flames'", "points":10},
45:{"title":"Sun's Descent", "flags":[bit4(0x5d6a6b)], "description":"Complete the 4 stars urgent quest 'The Sun Fallen in the Sand'", "points":10},
46:{"title":"Tower Ascendant", "flags":[bit5(0x5d6a6b)], "description":"Complete the 4 stars urgent quest 'The Empress's Tower'", "points":10},
47:{"title":"Jungle Monsoon", "flags":[bit0(0x5d6a62),bit1(0x5d6a62)], "description":"Complete the 4 stars quest 'The Jungle Typhoon'", "points":10},
48:{"title":"Sandstorm Survivor", "flags":[bit7(0x5d6a63),bit0(0x5d6a64)], "description":"Complete the 4 stars quest 'The Desert Sandstorm'", "points":10},
49:{"title":"Shattered Silence", "flags":[bit3(0x5d6a66),bit4(0x5d6a66)], "description":"Complete the 4 stars quest 'Silence'", "points":10},
50:{"title":"Elder Dragon's Bane", "flags":[bit6(0x5d6a69),bit7(0x5d6a69)], "description":"Complete the 4 stars quest 'The Silent Elder Dragon'", "points":10},
51:{"title":"Phantom Vanquished", "flags":[bit2(0x5d6a62),bit3(0x5d6a62)], "description":"Complete the 4 stars quest 'Phantom of the Jungle'", "points":10},
52:{"title":"Fortress Guardian", "flags":[bit0(0x5d6a6c)], "description":"Complete the 4 stars defense quest 'Defending the Fortress'", "points":10},
53:{"title":"Flame Emperor's Demise", "flags":[bit5(0x5d6a66),bit6(0x5d6a66),bit7(0x5d6a68),bit0(0x5d6a69)], "description":"Complete the 4 stars quest 'The Emperor of Flame'", "points":10},
54:{"title":"Desert Sands Melter", "flags":[bit1(0x5d6a64),bit2(0x5d6a64)], "description":"Complete the 4 stars quest 'Smelting the Desert Sands'", "points":10},
55:{"title":"Drifting Phantom", "flags":[bit4(0x5d6a67),bit5(0x5d6a67)], "description":"Complete the 4 stars quest 'A Phantom in the Drifts'", "points":10},
56:{"title":"Tower Struck", "flags":[bit0(0x5d6a6a),bit1(0x5d6a6a)], "description":"Complete the 4 stars quest 'Lighting Strikes the Tower'", "points":10},}

questFlags = {
    1:{"flag":bit0(0x5d6a60), "stars":1, "season":"Warm"},
2:{"flag":bit1(0x5d6a60), "stars":1, "season":"Warm"},
3:{"flag":bit2(0x5d6a60), "stars":1, "season":"Breeding"},
4:{"flag":bit3(0x5d6a60), "stars":1, "season":"Warm"},
5:{"flag":bit4(0x5d6a60), "stars":1, "season":"Cold"},
6:{"flag":bit5(0x5d6a60), "stars":1, "season":"Warm"},
7:{"flag":bit6(0x5d6a60), "stars":1, "season":"Cold"},
8:{"flag":bit7(0x5d6a60), "stars":1, "season":"Breeding"},
9:{"flag":bit0(0x5d6a61), "stars":2, "season":"Warm"},
10:{"flag":bit1(0x5d6a61), "stars":1, "season":"Warm"},
11:{"flag":bit2(0x5d6a61), "stars":2, "season":"Cold"},
12:{"flag":bit3(0x5d6a61), "stars":2, "season":"Breeding"},
13:{"flag":bit4(0x5d6a61), "stars":3, "season":"Warm"},
14:{"flag":bit5(0x5d6a61), "stars":2, "season":"Warm"},
15:{"flag":bit6(0x5d6a61), "stars":2, "season":"Cold"},
16:{"flag":bit7(0x5d6a61), "stars":2, "season":"Breeding"},
17:{"flag":bit0(0x5d6a62), "stars":4, "season":"Warm"},
18:{"flag":bit1(0x5d6a62), "stars":4, "season":"Cold"},
19:{"flag":bit2(0x5d6a62), "stars":4, "season":"Cold"},
20:{"flag":bit3(0x5d6a62), "stars":4, "season":"Breeding"},
21:{"flag":bit4(0x5d6a62), "stars":1, "season":"Cold"},
22:{"flag":bit5(0x5d6a62), "stars":1, "season":"Breeding"},
23:{"flag":bit6(0x5d6a62), "stars":2, "season":"Cold"},
24:{"flag":bit7(0x5d6a62), "stars":2, "season":"Breeding"},
25:{"flag":bit0(0x5d6a63), "stars":3, "season":"Cold"},
26:{"flag":bit1(0x5d6a63), "stars":3, "season":"Breeding"},
27:{"flag":bit2(0x5d6a63), "stars":2, "season":"Breeding"},
28:{"flag":bit3(0x5d6a63), "stars":3, "season":"Cold"},
29:{"flag":bit4(0x5d6a63), "stars":3, "season":"Breeding"},
30:{"flag":bit5(0x5d6a63), "stars":3, "season":"Cold"},
31:{"flag":bit6(0x5d6a63), "stars":3, "season":"Breeding"},
32:{"flag":bit7(0x5d6a63), "stars":4, "season":"Cold"},
33:{"flag":bit0(0x5d6a64), "stars":4, "season":"Breeding"},
34:{"flag":bit1(0x5d6a64), "stars":4, "season":"Cold"},
35:{"flag":bit2(0x5d6a64), "stars":4, "season":"Breeding"},
36:{"flag":bit3(0x5d6a64), "stars":4, "season":"Cold"},
37:{"flag":bit4(0x5d6a64), "stars":4, "season":"Breeding"},
38:{"flag":bit5(0x5d6a64), "stars":1, "season":"Warm"},
39:{"flag":bit6(0x5d6a64), "stars":1, "season":"Breeding"},
40:{"flag":bit7(0x5d6a64), "stars":1, "season":"Cold"},
41:{"flag":bit0(0x5d6a65), "stars":1, "season":"Warm"},
42:{"flag":bit1(0x5d6a65), "stars":1, "season":"Warm"},
43:{"flag":bit2(0x5d6a65), "stars":1, "season":"Cold"},
44:{"flag":bit3(0x5d6a65), "stars":1, "season":"Breeding"},
45:{"flag":bit4(0x5d6a65), "stars":2, "season":"Cold"},
46:{"flag":bit5(0x5d6a65), "stars":2, "season":"Cold"},
47:{"flag":bit6(0x5d6a65), "stars":3, "season":"Warm"},
48:{"flag":bit7(0x5d6a65), "stars":3, "season":"Breeding"},
49:{"flag":bit0(0x5d6a66), "stars":2, "season":"Warm"},
50:{"flag":bit1(0x5d6a66), "stars":2, "season":"Breeding"},
51:{"flag":bit2(0x5d6a66), "stars":3, "season":"Breeding"},
52:{"flag":bit3(0x5d6a66), "stars":4, "season":"Warm"},
53:{"flag":bit4(0x5d6a66), "stars":4, "season":"Breeding"},
54:{"flag":bit5(0x5d6a66), "stars":4, "season":"Warm"},
55:{"flag":bit6(0x5d6a66), "stars":4, "season":"Cold"},
56:{"flag":bit7(0x5d6a66), "stars":1, "season":"Warm"},
57:{"flag":bit0(0x5d6a67), "stars":2, "season":"Warm"},
58:{"flag":bit1(0x5d6a67), "stars":2, "season":"Breeding"},
59:{"flag":bit2(0x5d6a67), "stars":3, "season":"Warm"},
60:{"flag":bit3(0x5d6a67), "stars":3, "season":"Breeding"},
61:{"flag":bit4(0x5d6a67), "stars":4, "season":"Warm"},
62:{"flag":bit5(0x5d6a67), "stars":4, "season":"Breeding"},
63:{"flag":bit6(0x5d6a67), "stars":4, "season":"Warm"},
64:{"flag":bit7(0x5d6a67), "stars":4, "season":"Breeding"},
65:{"flag":bit0(0x5d6a68), "stars":1, "season":"Warm"},
66:{"flag":bit1(0x5d6a68), "stars":1, "season":"Warm"},
67:{"flag":bit2(0x5d6a68), "stars":1, "season":"Breeding"},
68:{"flag":bit3(0x5d6a68), "stars":3, "season":"Cold"},
69:{"flag":bit4(0x5d6a68), "stars":3, "season":"Warm"},
70:{"flag":bit5(0x5d6a68), "stars":3, "season":"Cold"},
71:{"flag":bit6(0x5d6a68), "stars":3, "season":"Breeding"},
72:{"flag":bit7(0x5d6a68), "stars":4, "season":"Warm"},
73:{"flag":bit0(0x5d6a69), "stars":4, "season":"Breeding"},
74:{"flag":bit1(0x5d6a69), "stars":4, "season":"Warm"},
75:{"flag":bit2(0x5d6a69), "stars":4, "season":"Breeding"},
76:{"flag":bit3(0x5d6a69), "stars":2, "season":"Warm"},
77:{"flag":bit4(0x5d6a69), "stars":2, "season":"Cold"},
78:{"flag":bit5(0x5d6a69), "stars":2, "season":"Breeding"},
79:{"flag":bit6(0x5d6a69), "stars":4, "season":"Warm"},
80:{"flag":bit7(0x5d6a69), "stars":4, "season":"Cold"},
81:{"flag":bit0(0x5d6a6a), "stars":4, "season":"Warm"},
82:{"flag":bit1(0x5d6a6a), "stars":4, "season":"Cold"},
83:{"flag":bit2(0x5d6a6a), "stars":3, "season":"Breeding"},
84:{"flag":bit3(0x5d6a6a), "stars":4, "season":"Warm"},
85:{"flag":bit4(0x5d6a6a), "stars":4, "season":"Cold"},
86:{"flag":bit5(0x5d6a6a), "stars":1, "season":"Cold"},
87:{"flag":bit6(0x5d6a6a), "stars":1, "season":"Breeding"},
}

questStars = {
    3:{"title":"Warm - 1 Star", "season":"Warm", "description":"Complete all of the Village's Warm Season 1 star quests", "points":10, "stars":1},
4:{"title":"Cold - 1 Star", "season":"Cold", "description":"Complete all of the Village's Cold Season 1 star quests", "points":10, "stars":1},
5:{"title":"Breeding - 1 Star", "season":"Breeding", "description":"Complete all of the Village's Breeding Season 1 star quests", "points":10, "stars":1},
6:{"title":"Warm - 2 Stars", "season":"Warm", "description":"Complete all of the Village's Warm Season 2 stars quests", "points":10, "stars":2},
7:{"title":"Cold - 2 Stars", "season":"Cold", "description":"Complete all of the Village's Cold Season 2 stars quests", "points":10, "stars":2},
8:{"title":"Breeding - 2 Stars", "season":"Breeding", "description":"Complete all of the Village's Breeding Season 2 stars quests", "points":10, "stars":2},
9:{"title":"Warm - 3 Stars", "season":"Warm", "description":"Complete all of the Village's Warm Season 3 stars quests", "points":10, "stars":3},
10:{"title":"Cold - 3 Stars", "season":"Cold", "description":"Complete all of the Village's Cold Season 3 stars quests", "points":10, "stars":3},
11:{"title":"Breeding - 3 Stars", "season":"Breeding", "description":"Complete all of the Village's Breeding Season 3 stars quests", "points":10, "stars":3},
12:{"title":"Warm - 4 Stars", "season":"Warm", "description":"Complete all of the Village's Warm Season 4 stars quests", "points":10, "stars":4},
13:{"title":"Cold - 4 Stars", "season":"Cold", "description":"Complete all of the Village's Cold Season 4 stars quests", "points":10, "stars":4},
14:{"title":"Breeding - 4 Stars", "season":"Breeding", "description":"Complete all of the Village's Breeding Season 4 stars quests", "points":10, "stars":4},
}

titles = {
    1:{"flag":bit6(0x5d80c3), "points":10, "title":"Bourgeois Hunter", "description":"Have 2,000,000z at once in your possession"},
2:{"flag":bit7(0x5d80c3), "points":5, "title":"Maverick Hunter", "description":"Have 300 hours of gameplay"},
3:{"flag":bit0(0x5d80c4), "points":25, "title":"Clever Combiner", "description":"Do 213/237 of the Combo recipes"},
4:{"flag":bit1(0x5d80c4), "points":5, "title":"Gluttony", "description":"Have 100 meals"},
5:{"flag":bit4(0x5d80c4), "points":5, "title":"Pro Wrestler", "description":"Win 50 times in the Arm Wrestling Minigame"},
6:{"flag":bit5(0x5d80c4), "points":5, "title":"Unending Thrist", "description":"Win 50 times in the Drinking Minigame"},
7:{"flag":bit1(0x5d80c5), "points":5, "title":"Velociprey Hunter", "description":"Hunt 20 Velocidrome"},
8:{"flag":bit2(0x5d80c5), "points":5, "title":"Genprey Hunter", "description":"Hunt 20 Gendrome"},
9:{"flag":bit3(0x5d80c5), "points":5, "title":"Ioprey Hunter", "description":"Hunt 20 Iodrome"},
10:{"flag":bit4(0x5d80c5), "points":5, "title":"Bulldrome Hunter", "description":"Hunt 20 Bulldrome"},
11:{"flag":bit5(0x5d80c5), "points":10, "title":"Kut-Ku Hunter", "description":"Hunt 20 Yian Kut-Ku (Subspecies included)"},
12:{"flag":bit6(0x5d80c5), "points":10, "title":"Gypceros Hunter", "description":"Hunt 20 Gypceros (Subspecies included)"},
13:{"flag":bit7(0x5d80c5), "points":10, "title":"Cephalos Hunter", "description":"Hunt 20 Cephadrome"},
14:{"flag":bit0(0x5d80c6), "points":10, "title":"Rathian Hunter", "description":"Hunt 20 Rathian (Subspecies included)"},
15:{"flag":bit1(0x5d80c6), "points":10, "title":"Khezu Hunter", "description":"Hunt 20 Khezu (Subspecies included)"},
16:{"flag":bit2(0x5d80c6), "points":10, "title":"Plesioth Hunter", "description":"Hunt 20 Plesioth (Subspecies included)"},
17:{"flag":bit3(0x5d80c6), "points":10, "title":"Monoblos Hunter", "description":"Hunt 20 Monoblos (Subspecies included)"},
18:{"flag":bit4(0x5d80c6), "points":10, "title":"Diablos Hunter", "description":"Hunt 20 Diablos (Subspecies included)"},
19:{"flag":bit5(0x5d80c6), "points":10, "title":"Basarios Hunter", "description":"Hunt 20 Basarios (Subspecies included)"},
20:{"flag":bit6(0x5d80c6), "points":10, "title":"Gravios Hunter", "description":"Hunt 20 Gravios (Subspecies included)"},
21:{"flag":bit7(0x5d80c6), "points":10, "title":"Rathalos Hunter", "description":"Hunt 20 Rathalos (Subspecies included)"},
22:{"flag":bit0(0x5d80c7), "points":10, "title":"Kirin Hunter", "description":"Hunt 20 Kirin"},
23:{"flag":bit2(0x5d80c7), "points":10, "title":"Hermitaur Hunter", "description":"Hunt 20 Daimyo Hermitaur"},
24:{"flag":bit3(0x5d80c7), "points":10, "title":"Ceanataur Hunter", "description":"Hunt 20 Shogun Ceanataur"},
25:{"flag":bit4(0x5d80c7), "points":10, "title":"Blangonga Hunter", "description":"Hunt 20 Blangonga"},
26:{"flag":bit5(0x5d80c7), "points":10, "title":"Congalala Hunter", "description":"Hunt 20 Congalala"},
27:{"flag":bit6(0x5d80c7), "points":10, "title":"Kushala Hunter", "description":"Hunt 20 Kushala Daora"},
28:{"flag":bit7(0x5d80c7), "points":10, "title":"Chameleos Hunter", "description":"Hunt 20 Chameleos"},
29:{"flag":bit0(0x5d80c8), "points":10, "title":"Teo Hunter", "description":"Hunt 20 Teostra"},
30:{"flag":bit1(0x5d80c8), "points":10, "title":"Luna Hunter", "description":"Hunt 20 Lunastra"},
31:{"flag":bit2(0x5d80c8), "points":10, "title":"Blue Claws", "description":"Hunt 50 Velocidrome"},
32:{"flag":bit3(0x5d80c8), "points":10, "title":"Blue Fang", "description":"Hunt 50 Gendrome"},
33:{"flag":bit4(0x5d80c8), "points":10, "title":"Crimson Poison", "description":"Hunt 50 Iodrome"},
34:{"flag":bit5(0x5d80c8), "points":10, "title":"Ham Slayer", "description":"Hunt 50 Bulldrome"},
35:{"flag":bit6(0x5d80c8), "points":10, "title":"Red Bird", "description":"Hunt 50 Yian Kut-Ku (Subspecies included)"},
36:{"flag":bit7(0x5d80c8), "points":10, "title":"Flash", "description":"Hunt 50 Gypceros (Subspecies included)"},
37:{"flag":bit0(0x5d80c9), "points":10, "title":"Cloud of Sand", "description":"Hunt 50 Cephadrome"},
38:{"flag":bit1(0x5d80c9), "points":10, "title":"Wyvern Princess", "description":"Hunt 50 Rathian (Subspecies included)"},
39:{"flag":bit2(0x5d80c9), "points":10, "title":"Light in the Darkness", "description":"Hunt 50 Khezu (Subspecies included)"},
40:{"flag":bit3(0x5d80c9), "points":10, "title":"Fish Out of Water", "description":"Hunt 50 Plesioth (Subspecies included)"},
41:{"flag":bit4(0x5d80c9), "points":10, "title":"The Cornered", "description":"Hunt 50 Monoblos (Subspecies included)"},
42:{"flag":bit5(0x5d80c9), "points":10, "title":"Double Demon", "description":"Hunt 50 Diablos (Subspecies included)"},
43:{"flag":bit6(0x5d80c9), "points":10, "title":"Hidden Rock", "description":"Hunt 50 Basarios (Subspecies included)"},
44:{"flag":bit7(0x5d80c9), "points":10, "title":"Flaming Mountain", "description":"Hunt 50 Gravios (Subspecies included)"},
45:{"flag":bit0(0x5d80ca), "points":10, "title":"Monarch", "description":"Hunt 50 Rathalos (Subspecies included)"},
46:{"flag":bit1(0x5d80ca), "points":10, "title":"Thunder God", "description":"Hunt 50 Kirin"},
47:{"flag":bit2(0x5d80ca), "points":10, "title":"Black Wolf", "description":"Hunt 50 Yian Garuga"},
48:{"flag":bit3(0x5d80ca), "points":10, "title":"Immovable Object", "description":"Hunt 50 Daimyo Hermitaur"},
49:{"flag":bit4(0x5d80ca), "points":10, "title":"Sharpest Sword", "description":"Hunt 50 Shogun Ceanataur"},
50:{"flag":bit5(0x5d80ca), "points":10, "title":"Unstoppable Force", "description":"Hunt 50 Blangonga"},
51:{"flag":bit6(0x5d80ca), "points":10, "title":"Clown", "description":"Hunt 50 Congalala"},
52:{"flag":bit7(0x5d80ca), "points":10, "title":"Hurricane", "description":"Hunt 50 Kushala Daora"},
53:{"flag":bit0(0x5d80cb), "points":10, "title":"Prismatic", "description":"Hunt 50 Chameleos"},
54:{"flag":bit1(0x5d80cb), "points":10, "title":"Fire Emperor", "description":"Hunt 50 Teostra"},
55:{"flag":bit2(0x5d80cb), "points":10, "title":"Hellfire", "description":"Hunt 50 Lunastra"},
56:{"flag":bit6(0x5d80cb), "points":10, "title":"Sealed Wyvern Samurai", "description":"Hunt 30 Lao-Shan Lung"},
57:{"flag":bit3(0x5d80cc), "points":10, "title":"Capture Master", "description":"Capture 100 Large Monsters as Main Objective"},
58:{"flag":bit7(0x5d80cc), "points":25, "title":"Big Master", "description":"Hunt 5 Big-size (Silver Crown) monsters (Normal and Subspecies distinguished)"},
59:{"flag":bit0(0x5d80cd), "points":25, "title":"Giant", "description":"Hunt 10 Big-size (Silver Crown) monsters (Normal and Subspecies distinguished)"},
60:{"flag":bit1(0x5d80cd), "points":25, "title":"Titan", "description":"Hunt 15 Big-size (Silver Crown) monsters (Normal and Subspecies distinguished)"},
61:{"flag":bit2(0x5d80cd), "points":25, "title":"Mini", "description":"Hunt 5 Small-size (Gold Crown) monsters (Normal and Subspecies distinguished)"},
62:{"flag":bit3(0x5d80cd), "points":25, "title":"Mega-Mini", "description":"Hunt 10 Small-size (Gold Crown) monsters (Normal and Subspecies distinguished)"},
63:{"flag":bit4(0x5d80cd), "points":25, "title":"Ultimate Chicken", "description":"Hunt 15 Small-size (Gold Crown) monsters (Normal and Subspecies distinguished)"},
64:{"flag":bit3(0x5d80cf), "points":5, "title":"Dr. Mushroom", "description":"Deliver a total of 30 Spicy Mushrooms"},
65:{"flag":bit4(0x5d80cf), "points":5, "title":"Mushroom Master", "description":"Deliver a total of 30 Choice Mushrooms"},
66:{"flag":bit5(0x5d80cf), "points":5, "title":"Egg Thief", "description":"Deliver a total of 30 Wyvern Eggs"},
67:{"flag":bit6(0x5d80cf), "points":5, "title":"Crystal Hunter", "description":"Deliver a total of 30 Quartz Ore"},
68:{"flag":bit7(0x5d80cf), "points":5, "title":"Danger Hunter", "description":"Deliver a total of 30 Powderstone"},
69:{"flag":bit0(0x5d80d0), "points":5, "title":"Alpine Hunter", "description":"Plant 30 Guild Flags"},
70:{"flag":bit1(0x5d80d0), "points":10, "title":"Transporter", "description":"Clear any Transport Quests 30 times"},
71:{"flag":bit2(0x5d80d0), "points":10, "title":"Jungle Guide", "description":"Clear 100 quests in the Jungle"},
72:{"flag":bit3(0x5d80d0), "points":10, "title":"Desert Guide", "description":"Clear 100 quests in the Desert"},
73:{"flag":bit4(0x5d80d0), "points":10, "title":"Swamp Guide", "description":"Clear 100 quests in the Swamp"},
74:{"flag":bit5(0x5d80d0), "points":10, "title":"Snowy Mountain Guide", "description":"Clear 100 quests in the Snowy Mountains"},
75:{"flag":bit6(0x5d80d0), "points":10, "title":"Volcano Guide", "description":"Clear 100 quests in the Volcano"},
76:{"flag":bit7(0x5d80d0), "points":10, "title":"Forest & Hills Guide", "description":"Clear 100 quests in the Forests & Hills"},
77:{"flag":bit0(0x5d80d1), "points":10, "title":"Dojo Go-Getter", "description":"Have over 200,000 total points at the Hunter's Dojo"},
78:{"flag":bit1(0x5d80d1), "points":10, "title":"Dojo Coin Master", "description":"Adquire all the coins available at the Dojo"},
79:{"flag":bit2(0x5d80d1), "points":10, "title":"Max Points Fanatic", "description":"Score 15,000 at the Hunter's Dojo"},
80:{"flag":bit3(0x5d80d1), "points":10, "title":"Dojo Teacher", "description":"Clear all Hunter's Dojo quests"},
81:{"flag":bit1(0x5d80d2), "points":25, "title":"Hero of Jumbo", "description":"Clear all Village Quests"},
}

arena = {1:{"questID":0x65, "points":10, "title":"Speedy Lure", "description":"Complete 'An A-lure-ing Outing!' in less than 10 minutes", "minutes":10, },
2:{"questID":0x66, "points":10, "title":"Squashing Champion", "description":"Complete 'Gotta Squash 'Em All!' in less than 5 minutes", "minutes":5, },
3:{"questID":0x67, "points":10, "title":"Desert Escape", "description":"Complete 'Desert Runaways!' in less than 3 minutes", "minutes":3, },
4:{"questID":0x68, "points":10, "title":"Quick Egg", "description":"Complete 'Herbivore Egg Hunt!' in less than 5 minutes", "minutes":5, },
5:{"questID":0x69, "points":10, "title":"Swift Slain", "description":"Complete 'Hunt the Jungle Queen!' in less than 13 minutes", "minutes":13, },
6:{"questID":0x6a, "points":10, "title":"Rapid Hunt", "description":"Complete 'Hunt, Hunt, and Hunt!' in less than 15 minutes", "minutes":15, },
7:{"questID":0x6b, "points":10, "title":"Skull Expediter", "description":"Complete 'Giant Skull in the Sand?!' in less than 15 minutes", "minutes":15, },
8:{"questID":0x6c, "points":10, "title":"Eggcellent Time", "description":"Complete 'An Eggcellent Taste!' in less than 7 minutes", "minutes":7, },
9:{"questID":0x6d, "points":10, "title":"Dual Monstrous Expert", "description":"Complete 'Woah! Two Huge Monsters!' in less than 15 minutes", "minutes":15, },
10:{"questID":0xc9, "points":10, "title":"Blue Beasts Sprinter", "description":"Complete 'Face the Blue Beasts!' in less than 2 minutes", "minutes":2, },
11:{"questID":0xca, "points":10, "title":"Bird Speedster", "description":"Complete 'Fighting a Monstrous Bird!' in less than 4 minutes", "minutes":4, },
12:{"questID":0xcb, "points":10, "title":"Fast Vanquisher", "description":"Complete 'The Queen of the Land!' in less than 6 minutes", "minutes":6, },
13:{"questID":0xcc, "points":10, "title":"Timely Foe", "description":"Complete 'Facing Shogun Ceanataur!' in less than 12 minutes", "minutes":12, },
14:{"questID":0xcd, "points":25, "title":"Thunder Pursuer", "description":"Complete 'Chasing Rolling Thunder' in less than 20 minutes", "minutes":20, },}

goldCrowns = {
1:{"addresses":[0x5d6c34, 0x5d6c7c, 0x5d6c86], "max":0x76, "monster":"Rathian", "min":0x5d, "points":25, },
2:{"addresses":[0x5d6c3e, 0x5d6c7e], "max":0x72, "monster":"Yian Kut-Ku", "min":0x5a, "points":25, },
3:{"addresses":[0x5d6c42], "max":0x76, "monster":"Cephadrome", "min":0x5d, "points":25, },
4:{"addresses":[0x5d6c48, 0x5d6c84, 0x5d6c94], "max":0x72, "monster":"Rathalos", "min":0x5a, "points":25, },
5:{"addresses":[0x5d6c4e, 0x5d6c88], "max":0x7b, "monster":"Diablos", "min":0x61, "points":25, },
6:{"addresses":[0x5d6c50, 0x5d6c8c], "max":0x76, "monster":"Khezu", "min":0x5d, "points":25, },
7:{"addresses":[0x5d6c54, 0x5d6c90], "max":0x7b, "monster":"Gravios", "min":0x61, "points":25, },
8:{"addresses":[0x5d6c5a, 0x5d6c80], "max":0x76, "monster":"Gypceros", "min":0x5d, "points":25, },
9:{"addresses":[0x5d6c5c, 0x5d6c8e], "max":0x7b, "monster":"Plesioth", "min":0x61, "points":25, },
10:{"addresses":[0x5d6c5e], "max":0x76, "monster":"Basarios", "min":0x5d, "points":25, },
11:{"addresses":[0x5d6c66, 0x5d6c8a], "max":0x74, "monster":"Monoblos", "min":0x5e, "points":25, },
12:{"addresses":[0x5d6c68], "max":0x72, "monster":"Velocidrome", "min":0x5a, "points":25, },
13:{"addresses":[0x5d6c6a], "max":0x71, "monster":"Gendrome", "min":0x5a, "points":25, },
14:{"addresses":[0x5d6c70], "max":0x71, "monster":"Iodrome", "min":0x5a, "points":25, },
15:{"addresses":[0x5d6c74], "max":0x82, "monster":"Kirin", "min":0x61, "points":25, },
16:{"addresses":[0x5d6c92], "max":0x6e, "monster":"Daimyo Hermitaur", "min":0x58, "points":25, },
17:{"addresses":[0x5d6c98], "max":0x7d, "monster":"Blangonga", "min":0x63, "points":25, },
18:{"addresses":[0x5d6c9a], "max":0x73, "monster":"Congalala", "min":0x61, "points":25, },
19:{"addresses":[0x5d6c9e, 0x5d6caa], "max":0x6e, "monster":"Kushala Daora", "min":0x5b, "points":25, },
20:{"addresses":[0x5d6ca8], "max":0x78, "monster":"Chameleos", "min":0x60, "points":25, },
21:{"addresses":[0x5d6cb2], "max":0x73, "monster":"Lunastra", "min":0x5b, "points":25, },
22:{"addresses":[0x5d6cb4], "max":0x6e, "monster":"Teostra", "min":0x58, "points":25, },
23:{"addresses":[0x5d6cb8], "max":0x72, "monster":"Shogun Ceanataur", "min":0x5e, "points":25, },
24:{"addresses":[0x5d6cba], "max":0x71, "monster":"Bulldrome", "min":0x62, "points":25, },
}

HunterBasics = [bit0(0x5d6a5c),bit1(0x5d6a5c),bit2(0x5d6a5c),bit3(0x5d6a5c),bit4(0x5d6a5c)]
WeaponTraining = [bit5(0x5d6a5c),bit6(0x5d6a5c),bit7(0x5d6a5c),bit0(0x5d6a5d),bit1(0x5d6a5d),bit2(0x5d6a5d),bit3(0x5d6a5d),bit4(0x5d6a5d),bit5(0x5d6a5d),bit6(0x5d6a5d),bit7(0x5d6a5d)]


Serial = dword(0x001c868c)
saveFileTimer = dword(0x005d6a9c)
function SaveProtection(){
    return Serial == 0x4d504c53 && 
    SaveFile == prev(SaveFile) &&
    saveFileTimer - prior(saveFileTimer)  == 1
}

function QuestArrayCheck(array){
    logic = always_false()
    for quest in array{
        logic = logic || CurrentQuest == quest
    }
    return logic
}

function QuestLeaderboard(titleQuest, array){

    leaderboard(
    title = titleQuest,
    description = "Time remaining",
    start = SaveProtection() && QuestArrayCheck(array) && CompletedQuest,
    cancel = always_false(),
    submit = always_true(),
    value = prev(QuestTimer)*2,
    format = "FRAMES", 
    lower_is_better = false
        
    )
}

function QuestCompletion(array){
    logic = SaveProtection() && QuestState == 4
    sum = 0
    for quest in array{
        sum = sum + quest
    }
    
    return logic && sum == 1 && prev(sum) == 0
}

function CalculateSeconds(minutes){
    return 90000 - ((minutes * 60 * 60) /2)
}

function ArenaQuest(id, minutes){
    logic = SaveProtection() && trigger_when(CompletedQuest) && CurrentQuest == id && (prev(QuestTimer)) > CalculateSeconds(minutes)
    return logic
}

function sumArray(array){
    logic = SaveProtection() && QuestState == 4
    sum = 0
    for quest in array{
        sum = sum + quest
    }
    
    return logic && measured(sum == length(array)) && prev(sum) < length(array)
}

function titleCheck(flag){
    logic = SaveProtection() && flag == 1 && prev(flag) == 0
    return logic
}

function MinAddresses(monster){
    array = []

    for address in goldCrowns[monster]["addresses"]{
        array_push(array, address + 0x100)
    }
    return array
}

function GoldCrown(MaxAddresses, MinAddresses, min, max){
    logic = SaveProtection()
    
    logic2 = always_false()

    for addressMax in MaxAddresses{
    maxLogic1 = (word(addressMax) >= max && prev(word(addressMax)) < max) 
    minLogic1 = always_false()
        for addressMin in MinAddresses{
            minLogic1 = minLogic1 || (word(addressMin) <= min && word(addressMin) != 0)
        }
        
    maxLogic1 = maxLogic1 && minLogic1  
    logic2 = logic2 || maxLogic1    
    }
    
    for addressMin in MinAddresses{
    minLogic2 = (word(addressMin) <= min && (prev(word(addressMin)) > min))
    maxLogic2 = always_false()
        for addressMax in MaxAddresses{
            maxLogic2 = maxLogic2 || word(addressMax) >= max
        }
    minLogic2 = maxLogic2 && minLogic2  
    logic2 = logic2 || minLogic2    
    }
    
    
    logic = logic && logic2
    return logic
}

achievement(
    title = "Hunter's Journey Has Started",
    description = "Complete all the Hunter Basics quests",
    points = 3,
    trigger = sumArray(HunterBasics)
)

achievement(
    title = "Weapon Specialist",
    description = "Complete all the Weapon Training quests",
    points = 3,
    trigger = sumArray(WeaponTraining)
)

function questSum(season, stars){
    sum = 0
    count = 0
    for quest in questFlags{
        if(questFlags[quest]["season"] == season && questFlags[quest]["stars"] == stars){
            sum = sum + questFlags[quest]["flag"]
            count = count + 1
        }
    }
    return SaveProtection() && QuestState == 4 && measured(sum == count) && prev(sum) < count
}

for cheevo in Progression{
    achievement(
        title = Progression[cheevo]["title"],
        description = Progression[cheevo]["description"],
        points = Progression[cheevo]["points"],
        trigger = QuestCompletion(Progression[cheevo]["flags"])
    )
}

for quest in QuestsIDs{
    QuestLeaderboard(QuestsIDs[quest]["title"],QuestsIDs[quest]["ids"])
}

for cheevo in questStars{
    achievement(
        title = questStars[cheevo]["title"],
        description = questStars[cheevo]["description"],
        points = questStars[cheevo]["points"],
        trigger = questSum(questStars[cheevo]["season"], questStars[cheevo]["stars"])
    )
}

for cheevo in titles{
    achievement(
        title = titles[cheevo]["title"],
        description = titles[cheevo]["description"],
        points = titles[cheevo]["points"],
        trigger = titleCheck(titles[cheevo]["flag"])
    )
}

for cheevo in arena{
    achievement(
        title = arena[cheevo]["title"],
        description = arena[cheevo]["description"],
        points = arena[cheevo]["points"],
        trigger = ArenaQuest(arena[cheevo]["questID"], arena[cheevo]["minutes"])
    )
}

for cheevo in goldCrowns{
    achievement(
        title = goldCrowns[cheevo]["monster"] + " Royalty",
        description = "Collect both of the " + goldCrowns[cheevo]["monster"] + " shortest Gold Crown and longest Silver Crown",
        points = goldCrowns[cheevo]["points"],
        trigger = GoldCrown(goldCrowns[cheevo]["addresses"], MinAddresses(cheevo), goldCrowns[cheevo]["min"], goldCrowns[cheevo]["max"])
    )
}
