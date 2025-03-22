// Mario vs. Donkey Kong 2: March of the Minis
// #ID = 14814
ScreenID = byte(0x73ebc)
Minigame = 0x07
Pointer = tbyte(0x0741ac)
Score = byte(Pointer + 0x03)
TimeRemaining = word(Pointer + 0x08)
GameState = byte(Pointer) 


CurrentRoom = byte(0x07407c)
MinigameRoom = 0x0a

CurrentWorld = byte(0x07407d)

Progression = {
    1:{"title":"Monkey Mashdown","description":"Mushroom Mayhem", "screenID":0x09, "flagLevel":bit4(0x07422b), "flagCompletion":bit1(0x074b84)},
2:{"title":"Tropical Triumph","description":"Tropical Turmoil", "screenID":0x09, "flagLevel":bit4(0x07422d), "flagCompletion":bit3(0x074b84)},
3:{"title":"Plumbing Powerhouse","description":"Pipe Works", "screenID":0x09, "flagLevel":bit4(0x07422f), "flagCompletion":bit5(0x074b84)},
4:{"title":"Magnetic Mastery","description":"Magnet Mania", "screenID":0x09, "flagLevel":bit4(0x074231), "flagCompletion":bit7(0x074b84)},
5:{"title":"Blazing Victory","description":"Lava Land", "screenID":0x09, "flagLevel":bit4(0x074233), "flagCompletion":bit1(0x074b85)},
6:{"title":"Castle Conquest","description":"Peach's Castle", "screenID":0x09, "flagLevel":bit4(0x074235), "flagCompletion":bit3(0x074b85)},
7:{"title":"Spooky Showdown","description":"Spooky Attic", "screenID":0x09, "flagLevel":bit4(0x074237), "flagCompletion":bit5(0x074b85)},
8:{"title":"Jungle Juggernaut","description":"Jungle Hijinks", "screenID":0x09, "flagLevel":bit4(0x074239), "flagCompletion":bit7(0x074b85)},
9:{"title":"Rooftop Rumble","description":"Rooftop", "screenID":0x18, "flagLevel":bit0(0x07423a), "flagCompletion":bit6(0x074b80)},
10:{"title":"Hideout Hero","description":"DK's Hideout [B1]", "screenID":0x19, "flagLevel":bit5(0x07423a), "flagCompletion":bit1(0x074b86)},
11:{"title":"Hideout Havoc","description":"DK's Hideout [B2]", "screenID":0x19, "flagLevel":bit6(0x07423a), "flagCompletion":bit7(0x074b80)},
}

CardTitles = ["Fungi Cards",
"Tropical Trinket",
"Pipeline Pursuit",
"Magnetic Marvel",
"Fiery Findings",
"Castle Curator",
"Spooky Explorer",
"Jungle Journey"]

StarTitles = ["Mayhem Master",
"Star Seeker",
"Pipe Prodigy",
"Mania Superstar",
"Lava Legend",
"Castle Champion",
"Star Scavenger",
"Hijinks Hero"]

MiniTitles = ["Miniature Collector",
"Tiny Trove",
"Pocket-Sized Party",
"Minion Mastery",
"Little Warriors",
"Minis United",
"Small Squad",
"Junior Journey"]

GameTitles = ["Mash Master",
"Triumph Whacker",
"Pounding Pro",
"Mayhem Mauler",
"Lava Lasher",
"Castle Crusher",
"Spooky Smasher",
"Hijinks Hammerer"]

MiniQuantity = [25	,
25	,
30	,
30	,
30	,
35	,
35	,
40	]

function SaveProtection(){
    return dword(0x3ffa80) == 0x4952414d && prev(bit4(0x074b80)) == 1 && prev(bit5(0x074b80)) == 1
}

function ProgressionCheck(flagLevel, flagCompletion){
    return
    SaveProtection() &&
    prev(flagLevel) == 1 && flagCompletion > prev(flagCompletion)
}

for cheevo in Progression{
    achievement(
        title = Progression[cheevo]["title"],
        description = "Defeat Donkey Kong in " + Progression[cheevo]["description"],
        points = 5, 
        trigger = ProgressionCheck(Progression[cheevo]["flagLevel"], Progression[cheevo]["flagCompletion"]) 
        //&& prior(ScreenID) == Progression[cheevo]["screenID"]
    )
}

GoldStart = 0x0742ee
CardStart = 0x07431e
MiniMarioStart = 0x07424e

function StarSum(start){
    return bitcount(start) + bit0(start+1) + bit4(start+1)
    
}

function CardSum(start){
    return bitcount(start) + bit0(start+1)
    
}

function MiniSum(start){
    return byte(start)+byte(start+1)+byte(start+2)+byte(start+3)+byte(start+4)+byte(start+5)+byte(start+6)+byte(start+7)+byte(start+8)
}

function MiniGame(world, score){
return
    //Basic reset for the protection hit
    never(ScreenID != Minigame) &&
    
    //Extra stuff to protect
    CurrentWorld == world &&
    prev(Pointer) != 0 &&
    
    //Complete if score is the correct one and time gets to 0
    trigger_when(Score >= score) &&
    trigger_when(TimeRemaining == 0 ) && prev(TimeRemaining) > 0 && 
    
    //Protection
    once(ScreenID == Minigame &&
    CurrentWorld == counterStars &&
    prev(Pointer) != 0 && 
    TimeRemaining == 1800 && 
    Score == 0)
    
}

counterStars = 0
GoldTemp = GoldStart
CardTemp = CardStart
MiniTemp = MiniMarioStart
for cheevo in CardTitles{
    achievement(
        title = StarTitles[counterStars],
        description = "Get all the gold stars in " + Progression[counterStars+1]["description"],
        points = 10,
        trigger = SaveProtection() && measured(StarSum(GoldTemp) == 10) && prev(StarSum(GoldTemp)) == 9
    )
    achievement(
        title = CardTitles[counterStars],
        description = "Get all the cards in " + Progression[counterStars+1]["description"],
        points = 5,
        trigger = SaveProtection() && measured(CardSum(CardTemp) == 9) && prev(CardSum(CardTemp)) == 8
    )
    
      achievement(
        title = MiniTitles[counterStars],
        description = "Get all the Mini-Marios in " + Progression[counterStars+1]["description"],
        points = 5,
        trigger = SaveProtection() && measured(MiniSum(MiniTemp) == MiniQuantity[counterStars]) && prev(MiniSum(MiniTemp)) != 0 && prev(MiniSum(MiniTemp)) < MiniQuantity[counterStars]
    )
    
     achievement(
        title = GameTitles[counterStars],
        description = "Get 35 or more points in the " + Progression[counterStars+1]["description"] + " minigame",
        points = 2,
        trigger = SaveProtection() && MiniGame(counterStars, 35)
    )
    leaderboard(
    title = GameTitles[counterStars], 
    description = "Most points in the " + Progression[counterStars+1]["description"] + " minigame", 
    start =  
    ScreenID == Minigame &&
    CurrentWorld == counterStars &&
    prev(Pointer) != 0 && 
    TimeRemaining == 1800 && 
    Score == 0, 
    
    cancel =  ScreenID != Minigame, 
    
    submit = (TimeRemaining == 0) && prev(TimeRemaining) > 0 && Score >= 1, 
    
    value = Score, 
    format="VALUE", 
    lower_is_better=false)
    
    
    counterStars = counterStars + 1
    GoldTemp = GoldTemp + 2
    CardTemp = CardTemp + 2
    MiniTemp = MiniTemp + 9
}
