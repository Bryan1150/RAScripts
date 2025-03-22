// ~Hack~ CTGP: Nitro
// #ID = 17844



TimeTrialPointer = tbyte(0x17561C)

FrameTimer = dword(TimeTrialPointer + 0x00)
TimeTrialIndicator = dword(TimeTrialPointer + 0x04)
TimeTrialFinished = dword(TimeTrialPointer + 0x14)
TimeTrialMilliseconds = word(TimeTrialPointer + 0x34)
TimeTrialMinutes = byte(TimeTrialPointer + 0x36)
TimeTrialSeconds = byte(TimeTrialPointer + 0x37)
CurrentLap = dword(TimeTrialPointer + 0x38)



EndingScore = word(0x3d9d78)

MusicID = dword(0x17C7B4)
WonGrandPrix = 0x43



CurrentPage = dword(0x1dcc10)
FirstPage = 0x00
SecondPage = 0x04
ThirdPage = 0x08
FourthPage = 0x0c

TrackID = dword(0x3ce260)





ResultsScreen = 0x34
//Target time is seconds
TracksData = {
1:{"title":"Happy Llama Sad Llama", "trackID":0x37, "trackName":"Llama Circuit", "targetTimeMinutes":1, "targetTimeSeconds":21},
2:{"title":"Spotlight Moonlight", "trackID":0x38, "trackName":"Moonlight Lake", "targetTimeMinutes":2, "targetTimeSeconds":13},
3:{"title":"Let It Snow", "trackID":0x3a, "trackName":"Snowy Thrill Trail", "targetTimeMinutes":2, "targetTimeSeconds":58},
4:{"title":"Special Snowflake", "trackID":0x40, "trackName":"Snowflake Canyon", "targetTimeMinutes":2, "targetTimeSeconds":31},
5:{"title":"Radiant Palette", "trackID":0x41, "trackName":"Color Circuit", "targetTimeMinutes":1, "targetTimeSeconds":25},
6:{"title":"You’ve Blown It All Sky High", "trackID":0x42, "trackName":"Sky-High Road", "targetTimeMinutes":2, "targetTimeSeconds":31},
7:{"title":"Fungi Proliferate", "trackID":0x48, "trackName":"Mushroom Garden", "targetTimeMinutes":1, "targetTimeSeconds":49},
8:{"title":"Pakkun Flower", "trackID":0x49, "trackName":"Pirahna Plant Pass", "targetTimeMinutes":1, "targetTimeSeconds":53},
9:{"title":"Building Blocks", "trackID":0x4a, "trackName":"Toy Time Galaxy", "targetTimeMinutes":1, "targetTimeSeconds":11},
10:{"title":"Iced Lake", "trackID":0x4f, "trackName":"Pro Vanilla Lake 2", "targetTimeMinutes":1, "targetTimeSeconds":32},
11:{"title":"Follow the Road", "trackID":0x50, "trackName":"Carrera Circuit", "targetTimeMinutes":1, "targetTimeSeconds":40},
12:{"title":"Out of this World", "trackID":0x51, "trackName":"Mars Colony 2150", "targetTimeMinutes":1, "targetTimeSeconds":56},
13:{"title":"Psychedelic Experience", "trackID":0x52, "trackName":"Environment Map Cave", "targetTimeMinutes":1, "targetTimeSeconds":29},
14:{"title":"Luigi on the Wii", "trackID":0x3b, "trackName":"[Wii] Luigi Circuit", "targetTimeMinutes":1, "targetTimeSeconds":16},
15:{"title":"Milk Valley", "trackID":0x3d, "trackName":"[Wii] Moo Moo Meadows", "targetTimeMinutes":1, "targetTimeSeconds":39},
16:{"title":"Night City", "trackID":0x3e, "trackName":"[N64] Toad's Turnpike", "targetTimeMinutes":1, "targetTimeSeconds":23},
17:{"title":"It's a Me!", "trackID":0x43, "trackName":"[Wii] Mario Circuit", "targetTimeMinutes":1, "targetTimeSeconds":24},
18:{"title":"Statue of Liberty", "trackID":0x44, "trackName":"[Tour] New York Minute", "targetTimeMinutes":1, "targetTimeSeconds":25},
19:{"title":"Motocross Fan", "trackID":0x45, "trackName":"[N64] Wario Stadium", "targetTimeMinutes":2, "targetTimeSeconds":7},
20:{"title":"Spin to Win", "trackID":0x4b, "trackName":"Dokan Course", "targetTimeMinutes":1, "targetTimeSeconds":40},
21:{"title":"Koopa Troopa Beach", "trackID":0x4c, "trackName":"Nokonoko Beach", "targetTimeMinutes":1, "targetTimeSeconds":48},
22:{"title":"Mario on the Gamecube", "trackID":0x4d, "trackName":"[GCN] Mario Circuit", "targetTimeMinutes":1, "targetTimeSeconds":44},
23:{"title":"Alpha Waluigi", "trackID":0x4e, "trackName":"Beta Pinball", "targetTimeMinutes":2, "targetTimeSeconds":3},
24:{"title":"Mario 3 on the SNES", "trackID":0x53, "trackName":"[SNES] Mario Circuit 3", "targetTimeMinutes":1, "targetTimeSeconds":19},
25:{"title":"Bowser on the SNES", "trackID":0x55, "trackName":"[SNES] Bowser's Castle 3", "targetTimeMinutes":1, "targetTimeSeconds":46},
26:{"title":"Multicolored Path", "trackID":0x56, "trackName":"[SNES] Rainbow Road", "targetTimeMinutes":1, "targetTimeSeconds":23},
27:{"title":"Purple Reflection", "trackID":0x57, "trackName":"Crystal Village", "targetTimeMinutes":2, "targetTimeSeconds":0},
28:{"title":"Long Bridge", "trackID":0x58, "trackName":"Goomba Lake", "targetTimeMinutes":1, "targetTimeSeconds":41},
29:{"title":"Voice of Autumn", "trackID":0x59, "trackName":"Autumn Forest", "targetTimeMinutes":1, "targetTimeSeconds":44},
30:{"title":"Dōbutsu no Kart", "trackID":0x5a, "trackName":"Kartville", "targetTimeMinutes":1, "targetTimeSeconds":32},
31:{"title":"Do You Want to Build a Snowman?", "trackID":0x5f, "trackName":"Snowman Village", "targetTimeMinutes":2, "targetTimeSeconds":32},
32:{"title":"Super Kart Maker", "trackID":0x61, "trackName":"Maker Mountain", "targetTimeMinutes":1, "targetTimeSeconds":44},
33:{"title":"Foggy Traveling", "trackID":0x62, "trackName":"Yoshi Mountain", "targetTimeMinutes":2, "targetTimeSeconds":21},
34:{"title":"Indiana Toad", "trackID":0x68, "trackName":"Toad Oasis", "targetTimeMinutes":2, "targetTimeSeconds":12},
35:{"title":"Depths of the Wilderness", "trackID":0x69, "trackName":"Cascade Jungle", "targetTimeMinutes":1, "targetTimeSeconds":26},
36:{"title":"Neko Derby", "trackID":0x6a, "trackName":"Motorcat's Dirt Derby", "targetTimeMinutes":2, "targetTimeSeconds":47},
37:{"title":"Luigi on the 64", "trackID":0x5b, "trackName":"[N64] Luigi Raceway", "targetTimeMinutes":1, "targetTimeSeconds":59},
38:{"title":"Mario 2 on the SNES", "trackID":0x5c, "trackName":"[SNES] Mario Circuit 2", "targetTimeMinutes":1, "targetTimeSeconds":23},
39:{"title":"Timid Sand", "trackID":0x5d, "trackName":"[GBA] Shy Guy Beach", "targetTimeMinutes":1, "targetTimeSeconds":57},
40:{"title":"Gorgeous Bounces", "trackID":0x5e, "trackName":"[Wii] Mushroom Gorge", "targetTimeMinutes":2, "targetTimeSeconds":17},
41:{"title":"Mario on the 64", "trackID":0x63, "trackName":"[N64] Mario Raceway", "targetTimeMinutes":2, "targetTimeSeconds":39},
42:{"title":"Merry Christmas", "trackID":0x65, "trackName":"[MBL] Merry Mountain", "targetTimeMinutes":1, "targetTimeSeconds":56},
43:{"title":"Season Changing", "trackID":0x66, "trackName":"[Wii U] Animal Crossing", "targetTimeMinutes":2, "targetTimeSeconds":2},
44:{"title":"Legend of Karting", "trackID":0x6b, "trackName":"[Wii U] Hyrule Circuit", "targetTimeMinutes":2, "targetTimeSeconds":32},
45:{"title":"Shopping Spree", "trackID":0x6c, "trackName":"[Wii] Coconut Mall", "targetTimeMinutes":2, "targetTimeSeconds":19},
46:{"title":"Slippery Floor", "trackID":0x6d, "trackName":"[GBA] Snow Land", "targetTimeMinutes":2, "targetTimeSeconds":18},
47:{"title":"Bark to the Moon", "trackID":0x6e, "trackName":"[Wii] Moonview Highway", "targetTimeMinutes":1, "targetTimeSeconds":54},
48:{"title":"GB Karting", "trackID":0x39, "trackName":"Monochrome Raceway", "targetTimeMinutes":1, "targetTimeSeconds":27},
49:{"title":"Muddy Sand", "trackID":0x3f, "trackName":"Cliffside Sand Slide", "targetTimeMinutes":1, "targetTimeSeconds":26},
50:{"title":"Down The Branches", "trackID":0x47, "trackName":"Whittle Woodway", "targetTimeMinutes":1, "targetTimeSeconds":24},
51:{"title":"Choco Choco Late Late", "trackID":0x3c, "trackName":"[SNES] Choco Island 1", "targetTimeMinutes":1, "targetTimeSeconds":32},
52:{"title":"Rock Rock Mountain", "trackID":0x46, "trackName":"[3DS] Alpine Pass", "targetTimeMinutes":2, "targetTimeSeconds":23},
53:{"title":"Boo! I'm Scared...", "trackID":0x54, "trackName":"[SNES] Ghost Valley 3", "targetTimeMinutes":1, "targetTimeSeconds":18},
54:{"title":"Galaxy's Journey", "trackID":0x60, "trackName":"Rosalina's Startrip", "targetTimeMinutes":1, "targetTimeSeconds":41},
55:{"title":"Sea Shelter", "trackID":0x67, "trackName":"Pyrenean Harbour", "targetTimeMinutes":1, "targetTimeSeconds":57},
56:{"title":"Day and Night", "trackID":0x78, "trackName":"Flip-Out Ridge", "targetTimeMinutes":1, "targetTimeSeconds":58},
57:{"title":"Neon City", "trackID":0x79, "trackName":"Led-Neon Town", "targetTimeMinutes":1, "targetTimeSeconds":40},
58:{"title":"Seek Religion", "trackID":0x7a, "trackName":"Sky-High Cathedral", "targetTimeMinutes":2, "targetTimeSeconds":18},
59:{"title":"Big Town Banky Blaine's Rockabilly BBQ", "trackID":0x7e, "trackName":"Toad's BBQ", "targetTimeMinutes":2, "targetTimeSeconds":24},
60:{"title":"Ricco Harbor", "trackID":0x64, "trackName":"[SMS] Blooper Surfing Safari", "targetTimeMinutes":2, "targetTimeSeconds":32},
61:{"title":"The Leader of the Bunch", "trackID":0x7f, "trackName":"[N64] DK's Jungle Parkway", "targetTimeMinutes":2, "targetTimeSeconds":45},
62:{"title":"Yoshi on the 64", "trackID":0x7b, "trackName":"[N64] Yoshi Valley", "targetTimeMinutes":2, "targetTimeSeconds":18},
63:{"title":"Lava Reign", "trackID":0x7b, "trackName":"[N64] Bowser's Castle", "targetTimeMinutes":2, "targetTimeSeconds":43},
64:{"title":"Taste the Rainbow", "trackID":0x7d, "trackName":"[N64] Rainbow Road", "targetTimeMinutes":2, "targetTimeSeconds":28},
65:{"title":"Mario is a Pro 2", "trackID":0x81, "trackName":"Pro Mario Circuit 2", "targetTimeMinutes":1, "targetTimeSeconds":2},
66:{"title":"Hypersaline Water", "trackID":0x82, "trackName":"Saltwater Lake", "targetTimeMinutes":1, "targetTimeSeconds":10},
67:{"title":"Who's Alonso?", "trackID":0x80, "trackName":"Alonso Park", "targetTimeMinutes":2, "targetTimeSeconds":9},
68:{"title":"Hot Sand", "trackID":0x83, "trackName":"Lava Beach", "targetTimeMinutes":1, "targetTimeSeconds":20},
69:{"title":"Cheepy Cheepy Chapa Chapa ", "trackID":0x84, "trackName":"[GBA] Cheep Cheep Island", "targetTimeMinutes":1, "targetTimeSeconds":25},
70:{"title":"Royal Building", "trackID":0x85, "trackName":"[SNES] Bowser's Castle 1", "targetTimeMinutes":1, "targetTimeSeconds":49},
71:{"title":"Kalimari Incantation", "trackID":0x87, "trackName":"[N64] Kalimari Desert", "targetTimeMinutes":1, "targetTimeSeconds":50},
72:{"title":"Sweet Sweet Victory", "trackID":0x86, "trackName":"[Wii U] Sweet Sweet Canyon", "targetTimeMinutes":2, "targetTimeSeconds":9},

}


// $3CF6FC: [32-bits] Current Cup (Just the 8 loaded cups)
CurrentCup = dword(0x3ce264)
//0x00 = Mushroom/1-UP/Acorn Cup
//0x01 = Fireflower/Egg/Freezie Cup
//0x02 = Star/Moon/Shine Cup
//0x03 = Special/POW Cup
//0x04 = Shell/Spiny/Turnip Cup
//0x05 = Banana/Boo/Coin Cup
//0x06 = Leaf/Chomp/Bom-Omb Cup
//0x07 = Thunder/Feather Cup
UPCup = CurrentCup == 0x00 && CurrentPage == SecondPage
EggCup = CurrentCup == 0x01 && CurrentPage == SecondPage
MoonCup = CurrentCup == 0x02 && CurrentPage == SecondPage
POWCup = CurrentCup == 0x03 && CurrentPage == SecondPage
SpinyCup = CurrentCup == 0x04 && CurrentPage == SecondPage
BooCup = CurrentCup == 0x05 && CurrentPage == SecondPage
ChompCup = CurrentCup == 0x06 && CurrentPage == SecondPage
FeatherCup = CurrentCup == 0x07 && CurrentPage == SecondPage

AcornCup = CurrentCup == 0x00 && CurrentPage == ThirdPage
FreezieCup = CurrentCup == 0x01 && CurrentPage == ThirdPage
ShineCup = CurrentCup == 0x02 && CurrentPage == ThirdPage
BellCup = CurrentCup == 0x03 && CurrentPage == ThirdPage
TurnipCup = CurrentCup == 0x04 && CurrentPage == ThirdPage
CoinCup = CurrentCup == 0x05 && CurrentPage == ThirdPage
BobOmbCup = CurrentCup == 0x06 && CurrentPage == ThirdPage
N64Cup = CurrentCup == 0x07 && CurrentPage == ThirdPage

BeeCup = CurrentCup == 0x00 && CurrentPage == FourthPage
HammerCup = CurrentCup == 0x04 && CurrentPage == FourthPage

CurrentMode = dword(0x3ce268)
GrandPrix = 0x00
TimeTrial = 0x01
BattleMode = 0x02


CurrentCC = dword(0x3ce270)
FiftyCC = 0x00
HundredCC = 0x01
HundredFiftyCC = 0x02



MirrorMode = byte(0x3ce2b7)
MirrorYes = 0x01
MirrorNo = 0x00

TrophyType = dword(0x3d9d4c)
Gold = 0x00
Silver = 0x01
Bronze = 0x02

MusicWon = prev(MusicID) == 0xff && MusicID == WonGrandPrix

CupsData = {
1:{"title1":"Extra Life", "title2":"Gamers Don't Die", "title3":"They Respawn", "title4":"Star Mushroom", "title5":"Afterdeath Prevail", "cup":UPCup, "cupName":"Life"},
2:{"title1":"Boiled Egg", "title2":"Fried Egg", "title3":"Ham and Eggs", "title4":"Omelette Du Fromage", "title5":"Norfolk Eggnog", "cup":EggCup, "cupName":"Egg"},
3:{"title1":"Full Moon", "title2":"Blood Moon", "title3":"Eclipsed Night", "title4":"Dark Moon", "title5":"Crescent Dawn", "cup":MoonCup, "cupName":"Moon"},
4:{"title1":"KAPOW", "title2":"BAM", "title3":"ZIP", "title4":"ZOOM", "title5":"BANG", "cup":POWCup, "cupName":"POW"},
5:{"title1":"Spiny Spike", "title2":"Stinging Dart", "title3":"Honed Spear", "title4":"Piercing Trident", "title5":"Serrated Pike", "cup":SpinyCup, "cupName":"Spiny"},
6:{"title1":"Trick-or-Treat", "title2":"Hocus Pocus", "title3":"Spooky Month", "title4":"This is Halloween", "title5":"Eternal Nightmare", "cup":BooCup, "cupName":"Boo"},
7:{"title1":"Om Nom Nom", "title2":"Bark Bark", "title3":"Guard Dog", "title4":"Sharp Teeth", "title5":"Bound by Chains", "cup":ChompCup, "cupName":"Chomp"},
8:{"title1":"Super Mario World", "title2":"Super Nintendo", "title3":"Super Famicom", "title4":"Now You're Playing with Power", "title5":"Super Power", "cup":FeatherCup, "cupName":"SNES"},
9:{"title1":"Flying Squirrel", "title2":"Standard Nut", "title3":"Super Nut", "title4":"Ultra Nut", "title5":"Max Nut", "cup":AcornCup, "cupName":"Acorn"},
10:{"title1":"Sleigh Bells", "title2":"Christmas Eve", "title3":"Snow Flurry", "title4":"Jack Frost", "title5":"Freezing Spirits", "cup":FreezieCup, "cupName":"Freezie"},
11:{"title1":"Sand Castle", "title2":"Finding Shells", "title3":"Pool Party", "title4":"Ocean Reflection", "title5":"Shining Sun", "cup":ShineCup, "cupName":"Shine"},
12:{"title1":"Hell Bell", "title2":"Taco Bell", "title3":"Jingle Bells", "title4":"Saved by the Bell", "title5":"Ding Ding!", "cup":BellCup, "cupName":"Bell"},
13:{"title1":"Planting Seeds", "title2":"Watering Roots", "title3":"Spring Crop", "title4":"Stardew Racing", "title5":"Harvest Kart", "cup":TurnipCup, "cupName":"Turnip"},
14:{"title1":"Bags of Cash", "title2":"Full Bank", "title3":"Billionary Magnate", "title4":"Deep Pockets", "title5":"True Capitalism", "cup":CoinCup, "cupName":"Coin"},
15:{"title1":"Blasting Away", "title2":"Explosion Detonation", "title3":"Powder Burst", "title4":"Granade Ignition", "title5":"Bombs Go Boom", "cup":BobOmbCup, "cupName":"Bob-omb"},
16:{"title1":"Super Mario 64", "title2":"HYAAAH!", "title3":"Do A Barrel Roll!", "title4":"Change The System", "title5":"Get N or Get Out", "cup":N64Cup, "cupName":"N64"},
17:{"title1":"Queen Bee", "title2":"The Hive Knight", "title3":"Ribombee", "title4":"Sweet Victory", "title5":"According to All Laws of Aviation...", "cup":BeeCup, "cupName":"Bee"},
18:{"title1":"Smash Hit", "title2":"Bonk", "title3":"Mjölnir", "title4":"Nailed It", "title5":"Stop! Hammer Time!", "cup":HammerCup, "cupName":"Hammer"},
}



function WonCup(cup, cc, mirror){
    logic =
    CurrentMode == GrandPrix &&
    cup &&
    CurrentCC == cc &&
    TrophyType == Gold &&
    MirrorMode == mirror &&
    MusicWon
    return logic
}

BattleData = {
    1:{"title":"Ruined Shrooms", "trackID":0x72, "trackName":"Goomba Ruins"},
2:{"title":"Time is Ticking", "trackID":0x73, "trackName":"Timebomb Tower"},
3:{"title":"Looking Kinda Sus....", "trackID":0x74, "trackName":"The Skeld"},
4:{"title":"Battling in the SNES", "trackID":0x75, "trackName":"[SNES] Battle Course 1"},
5:{"title":"Woomy!", "trackID":0x76, "trackName":"Urchin Underpass"},
6:{"title":"Air Ride", "trackID":0x77, "trackName":"City Trial"},
}

BattleDifficulty = dword(0x3ce274)
Hard=0x03

SoloBattle = byte(0x3ce2b8) == 0

CurrentBattleScore = dword(tbyte(0x17b3e0) + 0x20)

function WonBattle(){
    logic =
    CurrentMode == BattleMode &&
    BattleDifficulty == Hard &&
    trigger_when(TimeTrialFinished == 0x01) &&
    SoloBattle && 
    trigger_when(CurrentBattleScore == prev(CurrentBattleScore) + 1)
    return logic
}

for track in BattleData{
    achievement(
        title=BattleData[track]["title"],
        description="Win a battle game on hard difficulty, with team off, in " + BattleData[track]["trackName"],
        points = 5,
        trigger = 
        WonBattle() && TrackID == BattleData[track]["trackID"]
    )
}

function PerfectScore(cup){
    logic =
    CurrentMode == GrandPrix &&
    cup &&
    CurrentCC == HundredFiftyCC &&
    TrophyType == Gold &&
    MusicWon &&
    EndingScore == 40
    return logic
}

for cup in CupsData{
//50CC
    achievement(
        title = CupsData[cup]["title1"],
        description = "Get a gold trophy in the 50cc " + CupsData[cup]["cupName"] + " cup",
        points = 3,
        trigger = WonCup(CupsData[cup]["cup"], FiftyCC, MirrorNo),
        type = "progression"
        
    )
//100CC
achievement(
    title = CupsData[cup]["title2"],
    description = "Get a gold trophy in the 100cc " + CupsData[cup]["cupName"] + " cup",
    points = 4,
    trigger = WonCup(CupsData[cup]["cup"], HundredCC, MirrorNo),
    type = "progression"
)
//150CC
achievement(
    title = CupsData[cup]["title3"],
    description = "Get a gold trophy in the 150cc " + CupsData[cup]["cupName"] + " cup",
    points = 5,
    trigger = WonCup(CupsData[cup]["cup"], HundredFiftyCC, MirrorNo),
    type = "progression"
)
//Mirror
achievement(
    title = CupsData[cup]["title4"],
    description = "Get a gold trophy in the Mirror " + CupsData[cup]["cupName"] + " cup",
    points = 5,
    trigger = WonCup(CupsData[cup]["cup"], HundredFiftyCC, MirrorYes),
    type = "progression"
)
//PerfectScore
achievement(
    title = CupsData[cup]["title5"],
    description = "Get a perfect score (40 points) in the 150cc (or Mirror) " + CupsData[cup]["cupName"] + " cup",
    points = 10,
    trigger = PerfectScore(CupsData[cup]["cup"])
)

}

for track in TracksData
{

achievement(
    title = TracksData[track]["title"],
    description = "Complete " + TracksData[track]["trackName"] + " in less than " + TracksData[track]["targetTimeMinutes"] + "m " + TracksData[track]["targetTimeSeconds"] + "s in Time Trial",
    points = 5,
    trigger = 
    TimeTrialPointer != 0 &&
    CurrentMode == TimeTrial &&
    TrackID == TracksData[track]["trackID"] &&
    TimeTrialIndicator == 0x01 &&
    (TimeTrialFinished == 0x01) &&
    prev(TimeTrialFinished) == 0x00 &&
    (TimeTrialMilliseconds / 10 +
    TimeTrialSeconds * 100 +
    TimeTrialMinutes * 6000) <
    (TracksData[track]["targetTimeMinutes"] * 6000 +
    TracksData[track]["targetTimeSeconds"] * 100)
    ||
    TimeTrialPointer != 0 &&
    CurrentMode == TimeTrial &&    
    TrackID == TracksData[track]["trackID"] &&
    TimeTrialIndicator == 0x01 &&
    FrameTimer * 1.666667 <
    (TracksData[track]["targetTimeMinutes"] * 6000 +
    TracksData[track]["targetTimeSeconds"] * 100) &&
    //Used as an always false for the alt group trigger.... LOL
    trigger_when(CurrentLap == 0x69420)
)

leaderboard(
    title = "Time Trial: " + TracksData[track]["trackName"], 
    description = "Best time", 
    start = 
        TimeTrialPointer != 0 &&
        CurrentMode == TimeTrial &&
        TrackID == TracksData[track]["trackID"] &&
        prev(TimeTrialIndicator) == 0x00 &&
        TimeTrialIndicator == 0x01, 

    cancel =    
        (TimeTrialIndicator == 0x00) || (TimeTrialPointer == 0) || (TrackID != prev(TrackID)),         

    submit =
        TimeTrialFinished == 0x01 &&
        prev(TimeTrialFinished) == 0x00 &&
        ((TimeTrialMilliseconds / 10) +
       (TimeTrialSeconds * 100) +
       (TimeTrialMinutes * 6000)) > 3000, 

    value = max_of(
       measured(
       (TimeTrialMilliseconds / 10) +
       (TimeTrialSeconds * 100) +
       (TimeTrialMinutes * 6000),
       when = TimeTrialFinished == 1),

       measured(
       FrameTimer * 1.666667, 
       when = TimeTrialFinished == 0)
),

format="MILLISECS", 
lower_is_better=true)
}