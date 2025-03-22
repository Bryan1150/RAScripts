// ~Hack~ Pokemon Emerald Rogue V2
// #ID = 30137

mainQuests = {
1:{"quest":"To Adventure!", "points":2, "type":"Progression", "offset":0x8004},
2:{"quest":"Gym Badge 1", "points":2, "type":"Progression", "offset":0x800c},
3:{"quest":"Gym Badge 2", "points":3, "type":"Progression", "offset":0x8014},
4:{"quest":"Gym Badge 3", "points":3, "type":"Progression", "offset":0x801c},
5:{"quest":"Gym Badge 4", "points":4, "type":"Progression", "offset":0x8024},
6:{"quest":"Gym Badge 5", "points":4, "type":"Progression", "offset":0x802c},
7:{"quest":"Gym Badge 6", "points":5, "type":"Progression", "offset":0x8034},
8:{"quest":"Gym Badge 7", "points":5, "type":"Progression", "offset":0x803c},
9:{"quest":"Gym Badge 8", "points":10, "type":"Progression", "offset":0x8044},
10:{"quest":"Elite Master", "points":10, "type":"Progression", "offset":0x804c},
11:{"quest":"Champion", "points":25, "type":"win_condition", "offset":0x8054},
12:{"quest":"Welcome Home", "points":10, "type":"", "offset":0x805c},
13:{"quest":"Post Game?", "points":1, "type":"", "offset":0x8064},
14:{"quest":"One Last Quest...", "points":10, "type":"", "offset":0x806c},
15:{"quest":"The Final Run.", "points":25, "type":"", "offset":0x8074},
16:{"quest":"Collector", "points":5, "type":"", "offset":0x807c},
17:{"quest":"Collector +", "points":10, "type":"", "offset":0x8084},
18:{"quest":"Collector S", "points":10, "type":"", "offset":0x808c},
19:{"quest":"Collector X", "points":5, "type":"", "offset":0x8094},
20:{"quest":"Care Tactics", "points":10, "type":"", "offset":0x809c},
21:{"quest":"Smart Tactics", "points":10, "type":"", "offset":0x80a4},
22:{"quest":"Mr. Randoman", "points":2, "type":"", "offset":0x80ac},
23:{"quest":"Shopping Spree", "points":5, "type":"", "offset":0x80b4},
24:{"quest":"Big Saver", "points":5, "type":"", "offset":0x80bc},
25:{"quest":"True Legend", "points":5, "type":"", "offset":0x80c4},
26:{"quest":"Shiny a Day", "points":5, "type":"", "offset":0x80cc},
27:{"quest":"Hidden Grotto", "points":5, "type":"", "offset":0x80d4},
28:{"quest":"Poke Ball, Go!", "points":2, "type":"", "offset":0x80dc},
29:{"quest":"Enticing PokeBLOCK", "points":5, "type":"", "offset":0x80e4},
30:{"quest":"Elo Climb", "points":5, "type":"", "offset":0x80ec},
31:{"quest":"All Skill", "points":5, "type":"", "offset":0x80f4},
32:{"quest":"Fateful Encounter", "points":5, "type":"", "offset":0x80fc},
33:{"quest":"Blasting Off", "points":5, "type":"", "offset":0x8104},
34:{"quest":"Mankey's Paw", "points":5, "type":"", "offset":0x810c},
35:{"quest":"Blessing's Favour", "points":5, "type":"", "offset":0x8114},
36:{"quest":"Not Today!", "points":5, "type":"", "offset":0x811c},
37:{"quest":"Double Trouble", "points":5, "type":"", "offset":0x8124},
38:{"quest":"Taste the Rainbow", "points":5, "type":"", "offset":0x812c},
39:{"quest":"Long Haul", "points":5, "type":"", "offset":0x8134},
40:{"quest":"Battle Gimmick", "points":5, "type":"", "offset":0x813c},
41:{"quest":"Regional Style", "points":5, "type":"", "offset":0x8144},
42:{"quest":"Type Master", "points":5, "type":"", "offset":0x819c},
}

challengeQuests = {
1:{"quest":"Kanto Style", "points":5, "pointsHard":10, "pointsBrutal":10, "offset":0x814c},
2:{"quest":"Johto Style", "points":5, "pointsHard":10, "pointsBrutal":10, "offset":0x8154},
3:{"quest":"Hoenn Style", "points":5, "pointsHard":10, "pointsBrutal":10, "offset":0x815c},
4:{"quest":"Sinnoh Style", "points":5, "pointsHard":10, "pointsBrutal":10, "offset":0x8164},
5:{"quest":"Unova Style", "points":5, "pointsHard":10, "pointsBrutal":10, "offset":0x816c},
6:{"quest":"Kalos Style", "points":5, "pointsHard":10, "pointsBrutal":10, "offset":0x8174},
7:{"quest":"Alola Style", "points":5, "pointsHard":10, "pointsBrutal":10, "offset":0x817c},
8:{"quest":"Galar Style", "points":5, "pointsHard":10, "pointsBrutal":10, "offset":0x8184},
9:{"quest":"Paldea Style", "points":5, "pointsHard":10, "pointsBrutal":10, "offset":0x818c},
10:{"quest":"Orre Style", "points":5, "pointsHard":10, "pointsBrutal":10, "offset":0x8194},
11:{"quest":"Normal Master", "points":5, "pointsHard":10, "pointsBrutal":10, "offset":0x81a4},
12:{"quest":"Fighting Master", "points":5, "pointsHard":10, "pointsBrutal":10, "offset":0x81ac},
13:{"quest":"Flying Master", "points":5, "pointsHard":10, "pointsBrutal":10, "offset":0x81b4},
14:{"quest":"Poison Master", "points":5, "pointsHard":10, "pointsBrutal":10, "offset":0x81bc},
15:{"quest":"Ground Master", "points":5, "pointsHard":10, "pointsBrutal":10, "offset":0x81c4},
16:{"quest":"Rock Master", "points":5, "pointsHard":10, "pointsBrutal":10, "offset":0x81cc},
17:{"quest":"Bug Master", "points":5, "pointsHard":10, "pointsBrutal":10, "offset":0x81d4},
18:{"quest":"Ghost Master", "points":5, "pointsHard":10, "pointsBrutal":10, "offset":0x81dc},
19:{"quest":"Steel Master", "points":5, "pointsHard":10, "pointsBrutal":10, "offset":0x81e4},
20:{"quest":"Fire Master", "points":5, "pointsHard":10, "pointsBrutal":10, "offset":0x81ec},
21:{"quest":"Water Master", "points":5, "pointsHard":10, "pointsBrutal":10, "offset":0x81f4},
22:{"quest":"Grass Master", "points":5, "pointsHard":10, "pointsBrutal":10, "offset":0x81fc},
23:{"quest":"Electric Master", "points":5, "pointsHard":10, "pointsBrutal":10, "offset":0x8204},
24:{"quest":"Psychic Master", "points":5, "pointsHard":10, "pointsBrutal":10, "offset":0x820c},
25:{"quest":"Ice Master", "points":5, "pointsHard":10, "pointsBrutal":10, "offset":0x8214},
26:{"quest":"Dragon Master", "points":5, "pointsHard":10, "pointsBrutal":10, "offset":0x821c},
27:{"quest":"Dark Master", "points":5, "pointsHard":10, "pointsBrutal":10, "offset":0x8224},
28:{"quest":"Fairy Master", "points":5, "pointsHard":10, "pointsBrutal":10, "offset":0x822c},
29:{"quest":"Mega Evolution", "points":5, "pointsHard":10, "pointsBrutal":10, "offset":0x8234},
30:{"quest":"Z-Moves", "points":5, "pointsHard":10, "pointsBrutal":10, "offset":0x823c},
31:{"quest":"Dynamax", "points":5, "pointsHard":10, "pointsBrutal":10, "offset":0x8244},
32:{"quest":"Terastallization", "points":5, "pointsHard":10, "pointsBrutal":10, "offset":0x824c},
33:{"quest":"Gimmick Overflow", "points":5, "pointsHard":10, "pointsBrutal":10, "offset":0x8254},
34:{"quest":"True Tactics", "points":5, "pointsHard":10, "pointsBrutal":10, "offset":0x825c},
35:{"quest":"Chaos Novice", "points":5, "pointsHard":10, "pointsBrutal":10, "offset":0x8264},
36:{"quest":"Chaos Master", "points":5, "pointsHard":10, "pointsBrutal":10, "offset":0x826c},
37:{"quest":"Roguelocke", "points":5, "pointsHard":10, "pointsBrutal":10, "offset":0x8274},
38:{"quest":"Can't Pick!?", "points":5, "pointsHard":10, "pointsBrutal":10, "offset":0x827c},
39:{"quest":"Diversity", "points":5, "pointsHard":10, "pointsBrutal":10, "offset":0x8284},
40:{"quest":"Apotheosis", "points":5, "pointsHard":10, "pointsBrutal":10, "offset":0x828c},
41:{"quest":"Aesthetics", "points":5, "pointsHard":10, "pointsBrutal":10, "offset":0x8294},
42:{"quest":"I am Speed", "points":5, "pointsHard":10, "pointsBrutal":10, "offset":0x829c},
43:{"quest":"Cursed Body", "points":5, "pointsHard":10, "pointsBrutal":10, "offset":0x82a4},
44:{"quest":"Limited Capture", "points":5, "pointsHard":10, "pointsBrutal":10, "offset":0x82ac},
45:{"quest":"BST Crown", "points":5, "pointsHard":10, "pointsBrutal":10, "offset":0x82b4},
46:{"quest":"Pro-Building", "points":5, "pointsHard":10, "pointsBrutal":10, "offset":0x82bc},
47:{"quest":"Insane Mode", "points":5, "pointsHard":10, "pointsBrutal":10, "offset":0x82c4},
48:{"quest":"Iron Mono", "points":5, "pointsHard":10, "pointsBrutal":10, "offset":0x82cc},
49:{"quest":"Iron Kaizo", "points":5, "pointsHard":10, "pointsBrutal":10, "offset":0x82d4},
50:{"quest":"Rocket Triumph", "points":5, "pointsHard":10, "pointsBrutal":10, "offset":0x82dc},
51:{"quest":"Aqua Triumph", "points":5, "pointsHard":10, "pointsBrutal":10, "offset":0x82e4},
52:{"quest":"Magma Triumph", "points":5, "pointsHard":10, "pointsBrutal":10, "offset":0x82ec},
53:{"quest":"Galactic Triumph", "points":5, "pointsHard":10, "pointsBrutal":10, "offset":0x82f4},
}

masteries = {
    1:{"quest":"Bulbasaur", "points":3, "offset":0x82fc},
2:{"quest":"Charmander", "points":3, "offset":0x8304},
3:{"quest":"Squirtle", "points":3, "offset":0x830c},
4:{"quest":"Caterpie", "points":3, "offset":0x8314},
5:{"quest":"Weedle", "points":3, "offset":0x831c},
6:{"quest":"Pidgey", "points":3, "offset":0x8324},
7:{"quest":"Pichu", "points":3, "offset":0x832c},
8:{"quest":"Meowth", "points":3, "offset":0x8334},
9:{"quest":"Abra", "points":3, "offset":0x833c},
10:{"quest":"Machop", "points":3, "offset":0x8344},
11:{"quest":"Slowpoke", "points":3, "offset":0x834c},
12:{"quest":"Gastly", "points":3, "offset":0x8354},
13:{"quest":"Onix", "points":3, "offset":0x835c},
14:{"quest":"Krabby", "points":3, "offset":0x8364},
15:{"quest":"Kangaskhan", "points":3, "offset":0x836c},
16:{"quest":"Pinsir", "points":3, "offset":0x8374},
17:{"quest":"Scyther", "points":3, "offset":0x837c},
18:{"quest":"Magikarp", "points":3, "offset":0x8384},
19:{"quest":"Lapras", "points":3, "offset":0x838c},
20:{"quest":"Eevee", "points":3, "offset":0x8394},
21:{"quest":"Aerodactyl", "points":3, "offset":0x839c},
22:{"quest":"Snorlax", "points":3, "offset":0x83a4},
23:{"quest":"Mewtwo", "points":3, "offset":0x83ac},
24:{"quest":"Mew", "points":3, "offset":0x83b4},
25:{"quest":"Mareep", "points":3, "offset":0x83bc},
26:{"quest":"Heracross", "points":3, "offset":0x83c4},
27:{"quest":"Houndour", "points":3, "offset":0x83cc},
28:{"quest":"Larvitar", "points":3, "offset":0x83d4},
29:{"quest":"Treecko", "points":3, "offset":0x83dc},
30:{"quest":"Torchic", "points":3, "offset":0x83e4},
31:{"quest":"Mudkip", "points":3, "offset":0x83ec},
32:{"quest":"Ralts", "points":3, "offset":0x83f4},
33:{"quest":"Sableye", "points":3, "offset":0x83fc},
34:{"quest":"Mawile", "points":3, "offset":0x8404},
35:{"quest":"Aron", "points":3, "offset":0x840c},
36:{"quest":"Meditite", "points":3, "offset":0x8414},
37:{"quest":"Electrike", "points":3, "offset":0x841c},
38:{"quest":"Carvanha", "points":3, "offset":0x8424},
39:{"quest":"Numel", "points":3, "offset":0x842c},
40:{"quest":"Swablu", "points":3, "offset":0x8434},
41:{"quest":"Shuppet", "points":3, "offset":0x843c},
42:{"quest":"Absol", "points":3, "offset":0x8444},
43:{"quest":"Snorunt", "points":3, "offset":0x844c},
44:{"quest":"Bagon", "points":3, "offset":0x8454},
45:{"quest":"Beldum", "points":3, "offset":0x845c},
46:{"quest":"Lati", "points":3, "offset":0x8464},
47:{"quest":"Latias", "points":3, "offset":0x846c},
48:{"quest":"Latios", "points":3, "offset":0x8474},
49:{"quest":"Kyogre", "points":3, "offset":0x847c},
50:{"quest":"Groudon", "points":3, "offset":0x8484},
51:{"quest":"Deoxys", "points":3, "offset":0x848c},
52:{"quest":"Buneary", "points":3, "offset":0x8494},
53:{"quest":"Gible", "points":3, "offset":0x849c},
54:{"quest":"Riolu", "points":3, "offset":0x84a4},
55:{"quest":"Snover", "points":3, "offset":0x84ac},
56:{"quest":"Rotom", "points":3, "offset":0x84b4},
57:{"quest":"Dialga", "points":3, "offset":0x84bc},
58:{"quest":"Palkia", "points":3, "offset":0x84c4},
59:{"quest":"Giratina", "points":3, "offset":0x84cc},
60:{"quest":"Shaymin", "points":3, "offset":0x84d4},
61:{"quest":"Arceus", "points":3, "offset":0x84dc},
62:{"quest":"Audino", "points":3, "offset":0x84e4},
63:{"quest":"Trubbish", "points":3, "offset":0x84ec},
64:{"quest":"Genie", "points":3, "offset":0x84f4},
65:{"quest":"Genesect", "points":3, "offset":0x84fc},
66:{"quest":"Froakie", "points":3, "offset":0x8504},
67:{"quest":"Zygarde", "points":3, "offset":0x850c},
68:{"quest":"Diancie", "points":3, "offset":0x8514},
69:{"quest":"Hoopa", "points":3, "offset":0x851c},
70:{"quest":"Rowlet", "points":3, "offset":0x8524},
71:{"quest":"Litten", "points":3, "offset":0x852c},
72:{"quest":"Popplio", "points":3, "offset":0x8534},
73:{"quest":"Rockruff", "points":3, "offset":0x853c},
74:{"quest":"Mimikyu", "points":3, "offset":0x8544},
75:{"quest":"Silvally", "points":3, "offset":0x854c},
76:{"quest":"Jangmo-o", "points":3, "offset":0x8554},
77:{"quest":"Tapu", "points":3, "offset":0x855c},
78:{"quest":"Cosmog", "points":3, "offset":0x8564},
79:{"quest":"Necrozma", "points":3, "offset":0x856c},
80:{"quest":"Magearna", "points":3, "offset":0x8574},
81:{"quest":"Marshadow", "points":3, "offset":0x857c},
82:{"quest":"Meltan", "points":3, "offset":0x8584},
83:{"quest":"Grookey", "points":3, "offset":0x858c},
84:{"quest":"Scorbunny", "points":3, "offset":0x8594},
85:{"quest":"Sobble", "points":3, "offset":0x859c},
86:{"quest":"Rookidee", "points":3, "offset":0x85a4},
87:{"quest":"Blipbug", "points":3, "offset":0x85ac},
88:{"quest":"Chewtle", "points":3, "offset":0x85b4},
89:{"quest":"Rolycoly", "points":3, "offset":0x85bc},
90:{"quest":"Applin", "points":3, "offset":0x85c4},
91:{"quest":"Silicobra", "points":3, "offset":0x85cc},
92:{"quest":"Toxel", "points":3, "offset":0x85d4},
93:{"quest":"Sizzlipede", "points":3, "offset":0x85dc},
94:{"quest":"Hatenna", "points":3, "offset":0x85e4},
95:{"quest":"Impidimp", "points":3, "offset":0x85ec},
96:{"quest":"Milcery", "points":3, "offset":0x85f4},
97:{"quest":"Cufant", "points":3, "offset":0x85fc},
98:{"quest":"Duraludon", "points":3, "offset":0x8604},
99:{"quest":"Zacian", "points":3, "offset":0x860c},
100:{"quest":"Zamazenta", "points":3, "offset":0x8614},
101:{"quest":"Kubfu", "points":3, "offset":0x861c},
102:{"quest":"Ogerpon", "points":3, "offset":0x8624},
103:{"quest":"Terapagos", "points":3, "offset":0x862c},
}

dataPointer = tbyte(0x003640)
questPointer = tbyte(0x003648)
pokedexPointer = tbyte(0x00363c)

timeFrames = byte(dataPointer + 0x008012)
deltaTimeFrames = prev(byte(prev(dataPointer) + 0x008012))

function saveProtection(){
    logic = always_true()
    startingIndex = 0x8004
    for index in range(0, 10) { 
        offset = startingIndex + index * 8
        logic = logic &&
        tally(20,
        bit0(questPointer+offset) == prev(bit0(questPointer + offset))
        && prev(bit0(questPointer + offset)) == 1
        )
    }
    return logic && 
    questPointer == prev(questPointer) &&
    dataPointer == prev(dataPointer) 
}


function questCompleted(offset){
    questCompletion = bit5(questPointer + offset)
    questUnlocked = bit0(questPointer + offset)
    return
    never(questPointer != prev(questPointer)) &&
    never(dataPointer != prev(dataPointer)) &&
    never(pokedexPointer != prev(pokedexPointer)) &&
    tally(20, questPointer == prev(questPointer)) &&
    tally(20, dataPointer == prev(dataPointer)) &&
    tally(20, pokedexPointer == prev(pokedexPointer )) &&
    
    questCompletion == 1 &&
    
    prev(questCompletion) == 0 &&
    questUnlocked == 1 && questUnlocked == prev(questUnlocked) &&
    saveProtection()
}

function challengeQuestHard(offset){
    questUnlocked = bit0(questPointer + offset)
    difficultyCompletedBit1 = bit0(questPointer+(offset+2))
    difficultyCompletedBit2 = bit1(questPointer+(offset+2))
    return
      never(questPointer != prev(questPointer)) &&
    never(dataPointer != prev(dataPointer)) &&
    never(pokedexPointer != prev(pokedexPointer)) &&
    tally(20, questPointer == prev(questPointer)) &&
    tally(20, dataPointer == prev(dataPointer)) &&
    tally(20, pokedexPointer == prev(pokedexPointer )) &&
    difficultyCompletedBit2 == 1 &&
    prev(difficultyCompletedBit2) == 0 &&
    questUnlocked == 1 && questUnlocked == prev(questUnlocked) &&
    saveProtection()
}

function challengeQuestBrutal(offset){
    questUnlocked = bit0(questPointer + offset)
    difficultyCompletedBit1 = bit0(questPointer+(offset+2))
    difficultyCompletedBit2 = bit1(questPointer+(offset+2))
    return
     never(questPointer != prev(questPointer)) &&
    never(dataPointer != prev(dataPointer)) &&
    never(pokedexPointer != prev(pokedexPointer)) &&
    tally(20, questPointer == prev(questPointer)) &&
    tally(20, dataPointer == prev(dataPointer)) &&
    tally(20, pokedexPointer == prev(pokedexPointer )) &&
    difficultyCompletedBit2+difficultyCompletedBit1 == 2 &&
    prev(difficultyCompletedBit2+difficultyCompletedBit1 ) < 2 &&
    questUnlocked == 1 && questUnlocked == prev(questUnlocked) &&
    saveProtection()
}

sumMainQuests = 0
total = 0
for quest in mainQuests{
    if(mainQuests[quest]["type"] != ""){
        achievement(
            title = mainQuests[quest]["quest"],
            description = "Complete the \"" + mainQuests[quest]["quest"] + "\" main quest",
            points = mainQuests[quest]["points"],
            trigger = questCompleted(mainQuests[quest]["offset"]),
            type = mainQuests[quest]["type"]
        )
    }else{
        achievement(
            title = mainQuests[quest]["quest"],
            description = "Complete the \"" + mainQuests[quest]["quest"] + "\" main quest",
            points = mainQuests[quest]["points"],
            trigger = questCompleted(mainQuests[quest]["offset"])
        )
    }
    sumMainQuests = sumMainQuests + bit5(questPointer + mainQuests[quest]["offset"])
    total = total + 1

}

    achievement(
        "main quests", "", 0, sumMainQuests == total
    )

sumMainQuests = 0
total = 0
for quest in challengeQuests{
    achievement(
            title = challengeQuests[quest]["quest"],
            description = "Complete the \"" + challengeQuests[quest]["quest"] + "\" challenge quest",
            points = challengeQuests[quest]["points"],
            trigger = questCompleted(challengeQuests[quest]["offset"])
    )
    
    achievement(
            title = challengeQuests[quest]["quest"] + " - Hard",
            description = "Complete the \"" + challengeQuests[quest]["quest"] + "\" challenge quest in Hard or harder",
            points = challengeQuests[quest]["pointsHard"],
            trigger = challengeQuestHard(challengeQuests[quest]["offset"])
    )
    
        achievement(
            title = challengeQuests[quest]["quest"] + " - Brutal",
            description = "Complete the \"" + challengeQuests[quest]["quest"] + "\" challenge quest in Brutal",
            points = challengeQuests[quest]["pointsBrutal"],
            trigger = challengeQuestBrutal(challengeQuests[quest]["offset"])
    )
    
    sumMainQuests = sumMainQuests + bit5(questPointer + challengeQuests[quest]["offset"])
    total = total + 1
}

    achievement(
        "challenge quests", "", 0, sumMainQuests == total
    )

sumMainQuests = 0
total = 0
for quest in masteries{
    achievement(
            title = masteries[quest]["quest"] + " Mastery",
            description = "Obtain the " + masteries[quest]["quest"] + " Pokemon mastery",
            points = masteries[quest]["points"],
            trigger = questCompleted(masteries[quest]["offset"])
    )
    
        sumMainQuests = sumMainQuests + bit5(questPointer + masteries[quest]["offset"])
    total = total + 1
}

achievement(
        "masteries", "", 0, sumMainQuests == total
    )


function CatchedPokemon(startOffset, start, finish){
    logic = always_true()
    StartTemp = startOffset
    PokemonAddress = 0
    Count = 0 
    AddBitFlags = 1
    BitFlags = []
    for number in range(1, 1518){            
        if(number >= start && number < finish){
            if(finish - number > 8 && Count == 0){
                array_push(BitFlags, bitcount(pokedexPointer + StartTemp))
                AddBitFlags = 0
            }else if(AddBitFlags == 1){
                      
                if((Count) == 0){
                    array_push(BitFlags, bit0(pokedexPointer + StartTemp))
                }
                if((Count) == 1){
                    array_push(BitFlags, bit1(pokedexPointer+ StartTemp))
                }
                if((Count) == 2){
                   array_push(BitFlags, bit2(pokedexPointer + StartTemp))
                }
                if((Count) == 3){
                  array_push(BitFlags, bit3(pokedexPointer + StartTemp))
                }
                if((Count) == 4){
                   array_push(BitFlags, bit4(pokedexPointer+ StartTemp))
                }
                if((Count) == 5){
                   array_push(BitFlags, bit5(pokedexPointer + StartTemp))
                }
                if((Count) == 6){
                   array_push(BitFlags, bit6(pokedexPointer + StartTemp))
                }
                if((Count) == 7){
                   array_push(BitFlags, bit7(pokedexPointer + StartTemp))
                }
                
            }
         }
         Count = Count + 1
         if(Count == 8){
            Count = 0
            StartTemp = StartTemp + 0x01
            AddBitFlags = 1
         }
    }
    return 
    measured(sum_of(BitFlags, f => f) == finish-start)
    && tally(20, sum_of(BitFlags, f => prev(f)) == finish-start-1)
   
     
    
}


caughtOffset = 0x00b173

Pokedex = {
    1: {"title": "Kanto Completion", "points": 25, "description": "Catch every Pokemon from Gen 1", "start": 2, "end": 153},
    2: {"title": "Johto Completion", "points": 25, "description": "Catch every Pokemon from Gen 2", "start": 153, "end": 253},
    3: {"title": "Hoenn Completion", "points": 25, "description": "Catch every Pokemon from Gen 3", "start": 253, "end": 388},
    4: {"title": "Sinnoh Completion", "points": 25, "description": "Catch every Pokemon from Gen 4", "start": 388, "end": 495},
    5: {"title": "Unova Completion", "points": 25, "description": "Catch every Pokemon from Gen 5", "start": 495, "end": 651},
    6: {"title": "Kalos Completion", "points": 25, "description": "Catch every Pokemon from Gen 6", "start": 651, "end": 723},
    7: {"title": "Alola Completion", "points": 25, "description": "Catch every Pokemon from Gen 7", "start": 723, "end": 811},
    8: {"title": "Galar Completion", "points": 25, "description": "Catch every Pokemon from Gen 8", "start": 811, "end": 907},
    9: {"title": "Paldea Completion", "points": 25, "description": "Catch every Pokemon from Gen 9", "start": 1290, "end": 1436},
    10: {"title": "All Poke", "points": 0, "description": "Catch every Pokemon from Gen 9", "start": 2, "end": 1436}
}
for pokedex in Pokedex{
    achievement(
        title = Pokedex[pokedex]["title"],
        description = Pokedex[pokedex]["description"],
        points = Pokedex[pokedex]["points"],
        trigger = saveProtection() && questPointer == prev(questPointer) &&
        CatchedPokemon(caughtOffset, Pokedex[pokedex]["start"], Pokedex[pokedex]["end"]) &&
        dataPointer == prev(dataPointer) &&
        never(pokedexPointer != prev(pokedexPointer))
    )
}