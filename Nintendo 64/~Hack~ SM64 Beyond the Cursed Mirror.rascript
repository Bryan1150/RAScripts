// ~Hack~ SM64: Beyond the Cursed Mirror
// #ID = 25613


saveFile = word(0x230658)
cheats = byte(0x27676c)

offset = 0xa0

mapID = word(0x23065a)
playtime = (0x089cec)
level = 0x089cf0
costume = 0x089cf4


function byteOffset(address){
    return byte(address - offset + offset * saveFile)
}

function wordOffset(address){
    return word(address - offset + offset * saveFile)
}

function dwordOffset(address){
    return dword(address - offset + offset * saveFile)
}

function bitcountOffset(address){
    return bitcount(address - offset + offset * saveFile)
}

function bitOffset(address, index){
    return bit(index, address - offset + offset * saveFile)
}

function low4Offset(address){
    return low4(address - offset + offset * saveFile)
}

function high4Offset(address){
    return high4(address - offset + offset * saveFile)
}

Courses = {
1:{"addressStars":0x089cc7, "course":1, "points":10, "cosmic":0, "name":"Red-Hot Reservoir", "mininame":"in the Reservoir", "mapID":0x09},
2:{"addressStars":0x089cc6, "course":2, "points":10, "cosmic":0, "name":"Lonely Floating Farm", "mininame":"in the Farm", "mapID":0x18},
3:{"addressStars":0x089cc5, "course":3, "points":10, "cosmic":0, "name":"Jurassic Savanna", "mininame":"in the Savanna", "mapID":0x0c},
4:{"addressStars":0x089cc4, "course":4, "points":10, "cosmic":0, "name":"The Phantom Strider", "mininame":"in the Strider", "mapID":0x04},
5:{"addressStars":0x089ccb, "course":5, "points":10, "cosmic":0, "name":"Virtuaplex", "mininame":"in Virtuaplex", "mapID":0x05},
6:{"addressStars":0x089cca, "course":6, "points":10, "cosmic":0, "name":"Cowboy Canyon", "mininame":"in the Canyon", "mapID":0x07},
7:{"addressStars":0x089cc9, "course":7, "points":10, "cosmic":0, "name":"Immense Residence", "mininame":"in the Residence", "mapID":0x16},
8:{"addressStars":0x089cc8, "course":8, "points":10, "cosmic":0, "name":"Retroland", "mininame":"in the Retroland", "mapID":0x08},
9:{"addressStars":0x089ccf, "course":9, "points":10, "cosmic":0, "name":"Thwomp Towers", "mininame":"in the Towers", "mapID":0x17},
10:{"addressStars":0x089cce, "course":10, "points":10, "cosmic":0, "name":"Blueberg", "mininame":"in Blueberg", "mapID":0x0a},
11:{"addressStars":0x089ccd, "course":11, "points":10, "cosmic":0, "name":"Sinful Starfair", "mininame":"in the Starfair", "mapID":0x0b},
12:{"addressStars":0x089ccc, "course":12, "points":25, "cosmic":1, "name":"Orchestral Keys", "mininame":"in the Keys", "mapID":0x24},
13:{"addressStars":0x089cd3, "course":13, "points":25, "cosmic":1, "name":"Hushed Haven", "mininame":"in the Haven", "mapID":0x0d},
14:{"addressStars":0x089cd2, "course":14, "points":25, "cosmic":1, "name":"The Final Empire", "mininame":"in the Empire", "mapID":0x0e},
15:{"addressStars":0x089cd1, "course":15, "points":25, "cosmic":1, "name":"Trials of Terminus", "mininame":"in the Trials", "mapID":0x0f},
16:{"addressStars":0x0, "course":16, "points":0, "cosmic":0, "name":"File Select", "mininame":"", "mapID":0x01},
17:{"addressStars":0x0, "course":17, "points":0, "cosmic":0, "name":"The Castle", "mininame":"", "mapID":0x10},
18:{"addressStars":0x0, "course":18, "points":0, "cosmic":0, "name":"Main Hub", "mininame":"", "mapID":0x06},
19:{"addressStars":0x0, "course":19, "points":0, "cosmic":0, "name":"Showdown With The Showrunner", "mininame":"", "mapID":0x13},
20:{"addressStars":0x0, "course":20, "points":0, "cosmic":0, "name":"Agamemnon", "mininame":"", "mapID":0x15},
21:{"addressStars":0x0, "course":21, "points":0, "cosmic":0, "name":"Bowser On The Highway", "mininame":"", "mapID":0x11},
22:{"addressStars":0x0, "course":22, "points":0, "cosmic":0, "name":"Sloppy Shell Sewers", "mininame":"", "mapID":0x1b},
23:{"addressStars":0x0, "course":23, "points":0, "cosmic":0, "name":"Lost City", "mininame":"", "mapID":0x1f},
}

sloppyShellSewers = 0x1b
lostCity = 0x1f
bowserOnTheHighway = 0x11
showdownWithTheShowrunner = 0x13
redHotReservoir = 0x09
lonelyFloatingFarm = 0x18
jurassicSavanna = 0x0c
thePhantomStrider = 0x04
virtuaplex = 0x05
cowboyCanyon = 0x07
immenseResidence = 0x16
retroland = 0x08
thwompTowers = 0x17
blueberg = 0x0a
sinfulStarfair = 0x0b
orchestralKeys = 0x24
hushedHaven = 0x0d
theFinalEmpire = 0x0e
trialsOfTerminus = 0x0f

MapIDLookup = {
0x09: "Red-Hot Reservoir",
0x18: "Lonely Floating Farm",
0x0c: "Jurassic Savanna",
0x04: "The Phantom Strider",
0x05: "Virtuaplex",
0x07: "Cowboy Canyon",
0x16: "Immense Residence",
0x08: "Retroland",
0x17: "Thwomp Towers",
0x0a: "Blueberg",
0x0b: "Sinful Starfair",
0x24: "Orchestral Keys",
0x0d: "Hushed Haven",
0x0e: "The Final Empire",
0x0f: "Trials of Terminus",
0x01: "File Select",
0x10: "The Castle",
0x06: "Main Hub",
0x13: "Showdown With The Showrunner",
0x15: "Agamemnon",
0x11: "Bowser On The Highway",
0x1b: "Sloppy Shell Sewers",
0x1f: "Lost City",
}

CostumeLookup = {
0x00: "Mario",
0x03: "Luigi",
0x01: "Fire Mario",
0x04: "Wario",
0x07: "Mocap Mario",
0x06: "Undead Pirate",
0x09: "Butler Mario",
0x0a: "Retro Mario",
0x0b: "Thwompio",
0x02: "Glitchy",
0x08: "Darius",
0x05: "Disco Mario",
0x0c: "Builder Mario",
0x0d: "Showrunner",
0x0e: "C.Phantasm",
}

Collectables = {
1:{"addressStars":0x089cc7, "course":1, "name":"Red-Hot Reservoir", "mapID":0x09, "wallets":bitOffset(0x089cb0, 0), "costumes":[bitOffset(0x089cb2, 1)]},
2:{"addressStars":0x089cc6, "course":2, "name":"Lonely Floating Farm", "mapID":0x18, "wallets":bitOffset(0x089cb0, 1), "costumes":[bitOffset(0x089cb2, 4), bitOffset(0x089cb3, 0)]},
3:{"addressStars":0x089cc5, "course":3, "name":"Jurassic Savanna", "mapID":0x0c, "wallets":bitOffset(0x089cb0, 2), "costumes":[]},
4:{"addressStars":0x089cc4, "course":4, "name":"The Phantom Strider", "mapID":0x04, "wallets":bitOffset(0x089cb0, 4), "costumes":[bitOffset(0x089cb2, 6)]},
5:{"addressStars":0x089ccb, "course":5, "name":"Virtuaplex", "mapID":0x05, "wallets":bitOffset(0x089cb0, 3), "costumes":[bitOffset(0x089cb2, 7)]},
6:{"addressStars":0x089cca, "course":6, "name":"Cowboy Canyon", "mapID":0x07, "wallets":bitOffset(0x089cb0, 5), "costumes":[]},
7:{"addressStars":0x089cc9, "course":7, "name":"Immense Residence", "mapID":0x16, "wallets":bitOffset(0x089cb0, 6), "costumes":[bitOffset(0x089cb3, 1)]},
8:{"addressStars":0x089cc8, "course":8, "name":"Retroland", "mapID":0x08, "wallets":bitOffset(0x089cb0, 7), "costumes":[bitOffset(0x089cb3, 2)]},
9:{"addressStars":0x089ccf, "course":9, "name":"Thwomp Towers", "mapID":0x17, "wallets":bitOffset(0x089cb1, 0), "costumes":[bitOffset(0x089cb3, 3)]},
10:{"addressStars":0x089cce, "course":10, "name":"Blueberg", "mapID":0x0a, "wallets":bitOffset(0x089cb1, 1), "costumes":[bitOffset(0x089cb2, 2), bitOffset(0x089cb2, 5)]},
11:{"addressStars":0x089ccd, "course":11, "name":"Sinful Starfair", "mapID":0x0b, "wallets":bitOffset(0x089cb1, 3), "costumes":[bitOffset(0x089cb3, 4), bitOffset(0x089cb3, 5)]},
}


MinigameStars = 0x089cc3
function SumAllStars(){
    sum = 0
    for course in Courses{
        if(Courses[course]["course"] <= 15){
        sum = sum + 
        bitOffset(Courses[course]["addressStars"], 0) +
        bitOffset(Courses[course]["addressStars"], 1) +
        bitOffset(Courses[course]["addressStars"], 2) +
        bitOffset(Courses[course]["addressStars"], 3) +
        bitOffset(Courses[course]["addressStars"], 4) +
        bitOffset(Courses[course]["addressStars"], 5) +
        bitOffset(Courses[course]["addressStars"], 6)
        }
    }
    
    //Secret Stars here
    sum = sum + bitcountOffset(MinigameStars)
    //Bowser On the Highway
    sum = sum + bitOffset(0x089cd0, 0) + bitOffset(0x089cd0, 1) + bitOffset(0x089cd0, 6)
    //Sloppy Shell Sewers
    sum = sum + bitOffset(0x089cd5, 0)
    //Showdown with showrunner
    sum = sum + bitOffset(0x089cd7, 0) + bitOffset(0x089cd7, 6)
    //Lost City
    sum = sum + bitOffset(0x089cd9, 0)
    
    return sum
}



function StarsCourse(course){
    sum = 0
    sum = sum + 
        bitOffset(Courses[course]["addressStars"], 0) +
        bitOffset(Courses[course]["addressStars"], 1) +
        bitOffset(Courses[course]["addressStars"], 2) +
        bitOffset(Courses[course]["addressStars"], 3) +
        bitOffset(Courses[course]["addressStars"], 4) +
        bitOffset(Courses[course]["addressStars"], 5) +
        bitOffset(Courses[course]["addressStars"], 6)
    return measured(sum == 7) && prev(sum) == 6  
}

newGame = byteOffset(0x089cfb)

function newGame(seed){
    return newGame == seed
}


function SaveProtection(){
    return saveFile <= 3 && saveFile == prev(saveFile) && cheats == 0 && mapID != 0x01 && mapID == prev(mapID)
}

function SaveProtectionMinigame(){
    return saveFile <= 3 && saveFile == prev(saveFile) && cheats == 0 && mapID != 0x01
}


function SumCostumes(){
    sum = 0
    sum = sum + bitcountOffset(0x089cb2) 
    + bitOffset(0x089cb3, 0)
    + bitOffset(0x089cb3, 1)
    + bitOffset(0x089cb3, 2)
    + bitOffset(0x089cb3, 3)
    + bitOffset(0x089cb3, 4)
    + bitOffset(0x089cb3, 5)
    + bitOffset(0x089cb3, 6)
    
    return sum
}
//Fix this one once found all wallets lol
function SumWallets(){
    sum = bitcountOffset(0x089cb0) + bitOffset(0x089cb1, 0) + bitOffset(0x089cb1, 1) + bitOffset(0x089cb1, 2) + bitOffset(0x089cb1, 3)
    return sum
}

function SumBadges(){
    sum = bitcountOffset(0x089cf1) + bitcountOffset(0x089cf2) + bitcountOffset(0x089cf3)
    return sum
}

function SumSwitches(){
    sum = bitOffset(0x089cc0, 1) + bitOffset(0x089cc0, 2) + bitOffset(0x089cc0, 3) + bitOffset(0x089cc0, 4)
    return sum
}

for course in Courses{
    if (Courses[course]["course"] <= 15){
    
    if(Courses[course]["cosmic"] == 0 ){
        text = "6 Stars and the Cosmic Seed"
    }else{
        text = "the 7 Cosmic Seeds"
    }
    
    
    achievement(
        title = "Full Course " + Courses[course]["mininame"],
        description = "Collect all " + text + " in " + Courses[course]["name"],
        points = Courses[course]["points"],
        trigger = 
        SaveProtection() && newGame(0) &&
        mapID == Courses[course]["mapID"] &&
        StarsCourse(course) 
        )
    }
}

function SumCollectables(wallets, costumes){
    sum = 0
    sum = sum + wallets
    counter = 1
    for costume in costumes{
        sum = sum + costume
        counter = counter + 1

    }
    return measured(sum == counter) && prev(sum) == counter - 1
}

for course in Collectables{
    achievement(
        title = Collectables[course]["name"] + " - Collectables",
        description = "Collect all costumes and/or wallets in " + Collectables[course]["name"],
        points = 5,
        trigger = 
        SaveProtection() && newGame(0) &&
        mapID == Collectables[course]["mapID"] &&
        SumCollectables(Collectables[course]["wallets"], Collectables[course]["costumes"])
        )
}

achievement(
    title = "Minigame Heaven",
    description = "Obtain all the minigame stars",
    points = 10,
    trigger = SaveProtection() &&
    prev(bitcountOffset(MinigameStars)) == 7  &&
    bitcountOffset(MinigameStars) == 8 
)
castleWallet = bitOffset(0x089cb1,2)
achievement(
    title = "Speedrun Route",
    description = "Obtain the wallet in the starting castle",
    points = 5,
    trigger = SaveProtection() &&
    mapID == 0x0010 &&
    castleWallet > prev(castleWallet)
)

achievement(
    title = "The True End",
    description = "Obtain all 120 Stars and Cosmic Seeds",
    points = 10,
    trigger = SaveProtection() &&
    measured(SumAllStars() == 120) &&
    prev(SumAllStars()) == 119
)


//Switches
yellowSwitch = bitOffset(0x089cc0, 4)
blackSwitch = bitOffset(0x089cc0, 2)
purpleSwitch = bitOffset(0x089cc0, 1)
cyanSwitch = bitOffset(0x089cc0, 3)

achievement(
    "Koopa Shell", "Activate the Yellow Switch in Sloppy Shell Sewers", 3,
    SaveProtection() && newGame(0) &&
    yellowSwitch == 1 && prev(yellowSwitch) == 0 &&
    mapID == sloppyShellSewers
)

achievement(
    "Pandora's Box", "Activate the Black Switch in Virtuaplex", 3,
    SaveProtection() && newGame(0) &&
    blackSwitch == 1 && prev(blackSwitch) == 0 &&
    mapID == virtuaplex
)

achievement(
    "Rocket Wings", "Activate the Purple Switch in Lost City", 3,
    SaveProtection() && newGame(0) &&
    purpleSwitch == 1 && prev(purpleSwitch) == 0 &&
    mapID == lostCity
)

achievement(
    "Vanetal Cap", "Activate the Cyan Switch in Blueberg", 3,
    SaveProtection() && newGame(0) &&
    cyanSwitch == 1 && prev(cyanSwitch) == 0 &&
    mapID == blueberg
)

//Level
levelMario = low4Offset(level)

achievement(
    "Power of the Stars",
    "Upgrade Mario to max level",
    10,
    SaveProtection() && newGame(0) && measured(levelMario == 8) && prev(levelMario) == 7
)
//Medals
achievement(
    "Just Like Paper Mario",
    "Buy all medals",
    10,
    SaveProtection() && newGame(0) && measured(SumBadges() == 24) && prev(SumBadges()) == 23
)
//Wallets
achievement(
    "Limitless Greed",
    "Obtain all wallets",
    10,
    SaveProtection() && newGame(0) && measured(SumWallets() == 12) && prev(SumWallets()) == 11
)
//Costumes
achievement(
    "Thrift Shop",
    "Obtain all costumes",
    10,
    SaveProtection() && newGame(0) && measured(SumCostumes() == 15) && prev(SumCostumes()) == 14
)

coinsHud = word(0x2765c4)
greedBadge = bitOffset(0x089cf6, 0)
weightBadge = bitOffset(0x089cf6, 7)
brittleBurden = bitOffset(0x089cf7, 5)
witheringBurden = bitOffset(0x089cf7, 6)
defenseBadge = bitOffset(0x089cf5, 2)

function HundredCoins(){
    return trigger_when(tally(100, coinsHud > prev(coinsHud) )) 
    && once(coinsHud > prev(coinsHud))
    && never(greedBadge != 0) 
    && never(defenseBadge != 0) 
    && never(weightBadge != 1) 
    && never(brittleBurden != 1) 
    && never(witheringBurden != 1)
}

for course in Courses{
if (Courses[course]["course"] <= 15){
    achievement(
        title = "Treasure " + Courses[course]["mininame"],
        description = "Collect 100 coins in " + Courses[course]["name"] + " with the weight, brittle and withering badges equipped [No greed or defense badges]",
        points = 10,
        trigger = 
        SaveProtection() && newGame(0) &&
        //once(mapID != Courses[course]["mapID"]) &&
        (mapID == Courses[course]["mapID"]) &&
        never(mapID != prev(mapID)) &&
        HundredCoins()
        )
    }
}

minigames = {
1:{"points":10, "targetScore":10, "name":"Arena Survival", "title":"The True Arena", "mapID":0x05},
2:{"points":10, "targetScore":50, "name":"Hot Rope Jump", "title":"The King of Rope Jump", "mapID":0x07},
3:{"points":10, "targetScore":45, "name":"Hexagon Heat", "title":"Hex-a-Gone", "mapID":0x0a},
4:{"points":10, "targetScore":50, "name":"Snakio", "title":"Snake.io", "mapID":0x1a},
5:{"points":10, "targetScore":70, "name":"Edward Survival", "title":":)", "mapID":0x1a},
6:{"points":10, "targetScore":150, "name":"Bad Apple Dodge", "title":"Bad Apple!!", "mapID":0x1a},
7:{"points":10, "targetScore":10, "name":"Flappy Mario", "title":"Reach For The Stars", "mapID":0x1a},
8:{"points":10, "targetScore":8, "name":"Sign Game", "title":"Signman", "mapID":0x14},
}
score = byte(0x276736)
currentMinigame = byte(0x276733)
function minigame(id, targetScore){
    return 
    currentMinigame == id && trigger_when(score >= targetScore)
}

for minigame in minigames{
    achievement(
        title = minigames[minigame]["title"],
        description = "Obtain " +  minigames[minigame]["targetScore"] + " or more points in the " +  minigames[minigame]["name"] + " minigame",
        points = minigames[minigame]["points"],
        trigger = 
        SaveProtectionMinigame() && newGame(0) && 
        minigame(minigame,minigames[minigame]["targetScore"]) &&
        prev(mapID) == minigames[minigame]["mapID"] &&
        trigger_when(mapID == 0x06)
    )
    
    
    leaderboard(
        title = minigames[minigame]["name"],
        description = "Best score",
        start = 
        SaveProtectionMinigame() &&
        currentMinigame == minigame &&
        prev(mapID) == minigames[minigame]["mapID"] &&
        (mapID == 0x06)
        ,
        
        
        cancel = always_false(),
        submit = always_true(),
        value = score,
        format="VALUE",
        lower_is_better=false
    )
}

storyProgression = high4Offset(0x089cf0)
startedGame = 0x01
brokenMirror = 0x02

progression = {
1:{"points":5, "description":"Obtain 10 power stars", "title":"The First Goal", "storyID":0x5},
2:{"points":10, "description":"Defeat Bowser in Bowser on the Highway", "title":"I Curse You Evermore", "storyID":0x6},
3:{"points":5, "description":"Obtain the telescope lens", "title":"Touched by the Moon Angel", "storyID":0x8},
4:{"points":10, "description":"Obtain 30 power stars", "title":"Breaking the Studio Apart", "storyID":0x9},
5:{"points":5, "description":"Obtain the Showrunner quiz good ending", "title":"The 5000 IQ Superquiz", "storyID":0xb},
6:{"points":10, "description":"Defeat the Showrunner", "title":"The Show is Over", "storyID":0xc},
7:{"points":5, "description":"Reach Agamemnon for the first time", "title":"Trapped Until the End", "storyID":0xd},
8:{"points":25, "description":"Complete the game", "title":"Heart of Agamemnon", "storyID":0xe},
}

achievement(
    "Cursed Journey has Started",
    "Go beyond the cursed mirror",
    1,
    SaveProtection() && mapID == 0x10 && 
    storyProgression == brokenMirror && prev(storyProgression) == startedGame
)

for achievement in progression{
    achievement(
        title = progression[achievement]["title"],
        description = progression[achievement]["description"],
        points = progression[achievement]["points"],
        trigger = 
        SaveProtection() && newGame(0) &&
        storyProgression == progression[achievement]["storyID"] &&
        prev(storyProgression) < progression[achievement]["storyID"]       
    )
    
    
    
}


for achievement in progression{
    achievement(
        title = progression[achievement]["title"] + "+",
        description = progression[achievement]["description"] + " [NG+ Seed 255]",
        points = progression[achievement]["points"],
        trigger = 
        SaveProtection() && newGame(255) &&
        storyProgression == progression[achievement]["storyID"] &&
        prev(storyProgression) < progression[achievement]["storyID"]       
    )
    
    
    
}






rich_presence_display("{0} | Lvl {1} {8} is in {2} | Stars: {3}/120 | Costumes: {4}/15 | Wallets: {5}/12 | Badges {6}/24 | Switches {7}/4",  
    rich_presence_value("time", dwordOffset(playtime), "SECS"),
    rich_presence_value("level", low4Offset(level)),   
    rich_presence_lookup("course", mapID, MapIDLookup),
    rich_presence_value("stars", SumAllStars()),
    rich_presence_value("costumes", SumCostumes()),
    rich_presence_value("wallets", SumWallets()),
    rich_presence_value("badges", SumBadges()),
    rich_presence_value("switches", SumSwitches()),
    rich_presence_lookup("costume", byteOffset(costume), CostumeLookup)
)