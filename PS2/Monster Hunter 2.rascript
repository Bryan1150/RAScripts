// Monster Hunter 2
// #ID = 19249

SaveFile = byte(0x6adb51)

MapID = word(0x5f9054)

CurrentQuest = word(0x5d8268)

QuestTimer = dword(0x5d8270)

QuestState = byte(0x005d8266)

CompletedQuest = QuestState == 3 && prev(QuestState) != 3

function SaveProtection(){
    return SaveFile == prev(SaveFile) && MapID != 0
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

for quest in QuestsIDs{
    QuestLeaderboard(QuestsIDs[quest]["title"],QuestsIDs[quest]["ids"])
}