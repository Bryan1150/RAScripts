// ~Hack~ Ermii Kart DS: Legacy Edition
// #ID = 16193
TracksData = {
1:{"title":"Ermii Kart", "trackName":"Ermelber City", "points":5, "trackID":0x14, "targetTimeMinutes":1, "targetTimeSeconds":40},
2:{"title":"Chompy Chomp", "trackName":"Rockside River", "points":5, "trackID":0x16, "targetTimeMinutes":1, "targetTimeSeconds":13},
3:{"title":"Triforce Heroes", "trackName":"Triforce Portals", "points":5, "trackID":0x1F, "targetTimeMinutes":1, "targetTimeSeconds":54},
4:{"title":"Sharpest Tool in the Shed", "trackName":"Shrek's Swamp", "points":5, "trackID":0x12, "targetTimeMinutes":2, "targetTimeSeconds":17},
5:{"title":"Yawshi Island", "trackName":"Yawshi Circuit", "points":5, "trackID":0x1B, "targetTimeMinutes":1, "targetTimeSeconds":22},
6:{"title":"Rocky Cave", "trackName":"Rocky Hills", "points":5, "trackID":0x1C, "targetTimeMinutes":2, "targetTimeSeconds":5},
7:{"title":"Hellaven", "trackName":"Heaven & Hell", "points":5, "trackID":0x21, "targetTimeMinutes":1, "targetTimeSeconds":19},
8:{"title":"Into the Volcano", "trackName":"Volcano Beach", "points":5, "trackID":0x18, "targetTimeMinutes":2, "targetTimeSeconds":4},
9:{"title":"Dawn Loops", "trackName":"Sunset Raceway", "points":5, "trackID":0x1E, "targetTimeMinutes":2, "targetTimeSeconds":16},
10:{"title":"Gas, Gas, Gas!", "trackName":"Akina Pass", "points":5, "trackID":0x11, "targetTimeMinutes":2, "targetTimeSeconds":52},
11:{"title":"Spooky Scary Skeletons", "trackName":"Haunted Woods", "points":5, "trackID":0x19, "targetTimeMinutes":2, "targetTimeSeconds":12},
12:{"title":"Doughnuts!", "trackName":"Donut Galaxy", "points":5, "trackID":0x13, "targetTimeMinutes":2, "targetTimeSeconds":29},
13:{"title":"Much Darude, So Sandstorm", "trackName":"Doge Desert", "points":5, "trackID":0x22, "targetTimeMinutes":3, "targetTimeSeconds":7},
14:{"title":"Mikuru Legend of Love", "trackName":"Melancholic Dystopia", "points":5, "trackID":0x1A, "targetTimeMinutes":2, "targetTimeSeconds":45},
15:{"title":"Family Guy Funny Moments", "trackName":"Grand Site", "points":5, "trackID":0x20, "targetTimeMinutes":1, "targetTimeSeconds":52},
16:{"title":"Over the Raynbow", "trackName":"Raynbow Road", "points":5, "trackID":0x1D, "targetTimeMinutes":2, "targetTimeSeconds":52},

17:{"title":"Coconut Gun", "trackName":"(DKR) Ancient Lake", "points":5, "trackID":0x0A, "targetTimeMinutes":1, "targetTimeSeconds":23},
18:{"title":"Alone in the Dark", "trackName":"(SNES) Ghost Valley 1", "points":5, "trackID":0x0B, "targetTimeMinutes":1, "targetTimeSeconds":40},
19:{"title":"Lava Castle", "trackName":"(GBA) Bowser Castle 1", "points":5, "trackID":0x0D, "targetTimeMinutes":1, "targetTimeSeconds":23},
20:{"title":"Super Princess Peach", "trackName":"(GCN) Peach Beach", "points":5, "trackID":0x0E, "targetTimeMinutes":1, "targetTimeSeconds":7},
21:{"title":"Dark Moon", "trackName":"(MK0) Luigi's Mansion 2", "points":5, "trackID":0x23, "targetTimeMinutes":1, "targetTimeSeconds":42},
22:{"title":"Snowman Circuit", "trackName":"(SNES) Vanilla Lake 1", "points":5, "trackID":0x10, "targetTimeMinutes":1, "targetTimeSeconds":16},
23:{"title":"Your Highness", "trackName":"(N64) Royal Raceway", "points":5, "trackID":0x0C, "targetTimeMinutes":2, "targetTimeSeconds":42},
24:{"title":"Beach River", "trackName":"(GBA) Riverside Park", "points":5, "trackID":0x09, "targetTimeMinutes":1, "targetTimeSeconds":37},
25:{"title":"Half-Moon Archipelago", "trackName":"(DKR) Crescent Island", "points":5, "trackID":0x0F, "targetTimeMinutes":1, "targetTimeSeconds":45},
26:{"title":"Native Desert", "trackName":"(GBA) Sunset Wilds", "points":5, "trackID":0x24, "targetTimeMinutes":2, "targetTimeSeconds":18},
27:{"title":"Night City", "trackName":"(3DS) Koopa City", "points":5, "trackID":0x25, "targetTimeMinutes":2, "targetTimeSeconds":4},
28:{"title":"Lava Castle... Again", "trackName":"(SNES) Bowser Castle 1", "points":5, "trackID":0x26, "targetTimeMinutes":1, "targetTimeSeconds":49},
29:{"title":"Multicolored Path", "trackName":"(SNES) Rainbow Road", "points":5, "trackID":0x27 , "targetTimeMinutes":1, "targetTimeSeconds":35},
30:{"title":"Kaleidoscopic Track", "trackName":"(N64) Rainbow Road", "points":5, "trackID":0x17, "targetTimeMinutes":2, "targetTimeSeconds":41},
31:{"title":"Holographic Trail", "trackName":"(Wii) Rainbow Road", "points":5, "trackID":0x28, "targetTimeMinutes":3, "targetTimeSeconds":34},
32:{"title":"Multihued Ride", "trackName":"(3DS) Rainbow Road", "points":5, "trackID":0x01, "targetTimeMinutes":2, "targetTimeSeconds":6},
}


TimeTrialPointer = tbyte(0x17561c)
FrameTimer = dword(TimeTrialPointer + 0x00)
TimeTrialIndicator = dword(TimeTrialPointer + 0x04)
TimeTrialFinished = dword(TimeTrialPointer + 0x14)
TimeTrialMilliseconds = word(TimeTrialPointer + 0x34)
TimeTrialMinutes = byte(TimeTrialPointer + 0x36)
TimeTrialSeconds = byte(TimeTrialPointer + 0x37)
CurrentLap = dword(TimeTrialPointer + 0x38)

CurrentMode = byte(0x3cdfa0)
GrandPrix = 0x00
TimeTrial = 0x01

TrackID = dword(0x3cdf98)

SanicMode = byte(0x1dca1d)

for track in TracksData
{

achievement(
    title = TracksData[track]["title"],
    description = "Complete " + TracksData[track]["trackName"] + " in less than " + TracksData[track]["targetTimeMinutes"] + "m " + TracksData[track]["targetTimeSeconds"] + "s in Time Trial",
    points = 5,
    trigger = 
    SanicMode == 0 &&
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
    SanicMode == 0 &&
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
    description = "", 
    start = 
        SanicMode == 0 &&
        TimeTrialPointer != 0 &&
        CurrentMode == TimeTrial &&
        TrackID == TracksData[track]["trackID"] &&
        prev(TimeTrialIndicator) == 0x00 &&
        TimeTrialIndicator == 0x01, 

    cancel =    
        TimeTrialIndicator == 0x00,         

    submit =
        TimeTrialFinished == 0x01 &&
        prev(TimeTrialFinished) == 0x00, 

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

//0x00 = Mushroom/1-UP/Acorn Cup
//0x01 = Fireflower/Egg/Freezie Cup
//0x02 = Star/Moon/Shine Cup
//0x03 = Special/POW Cup
//0x04 = Shell/Spiny/Turnip Cup
//0x05 = Banana/Boo/Coin Cup
//0x06 = Leaf/Chomp/Bom-Omb Cup
//0x07 = Thunder/Feather Cup
CurrentCup = dword(0x3cdf9c)
//0x00 = Mushroom/1-UP/Acorn Cup
//0x01 = Fireflower/Egg/Freezie Cup
//0x02 = Star/Moon/Shine Cup
//0x03 = Special/POW Cup
//0x04 = Shell/Spiny/Turnip Cup
//0x05 = Banana/Boo/Coin Cup
//0x06 = Leaf/Chomp/Bom-Omb Cup
//0x07 = Thunder/Feather Cup
UPCup = CurrentCup == 0x00 
EggCup = CurrentCup == 0x01 
MoonCup = CurrentCup == 0x02
POWCup = CurrentCup == 0x03
SpinyCup = CurrentCup == 0x04 
BooCup = CurrentCup == 0x05
ChompCup = CurrentCup == 0x06 
FeatherCup = CurrentCup == 0x07 

CurrentCC = dword(0x3cdfa8)
FiftyCC = 0x00
HundredCC = 0x01
HundredFiftyCC = 0x02

MirrorMode = byte(0x3cdfef)
MirrorYes = 0x01
MirrorNo = 0x00

MusicID = dword(0x17c7b4)
WonGrandPrix = 0x43
MusicWon = prev(MusicID) == 0xff && MusicID == WonGrandPrix


CupsData = {
"a": {"title1": "Extra Life", "title2": "Gamers Don't Die", "title3": "They Respawn", "title4": "Verdant Mushroom", "title5": "Afterdeath Prevail", "cup": UPCup, "cupName": "Mushroom"},
"b": {"title1": "Boiled Egg", "title2": "Fried Egg", "title3": "Ham and Eggs", "title4": "Omelette Du Fromage", "title5": "Norfolk Eggnog", "cup": EggCup, "cupName": "Egg"},
"c": {"title1": "Full Moon", "title2": "Blood Moon", "title3": "Eclipsed Night", "title4": "Dark Moon", "title5": "Crescent Dawn", "cup": MoonCup, "cupName": "Star"},
"d": {"title1": "KAPOW", "title2": "BAM", "title3": "ZIP", "title4": "ZOOM", "title5": "BANG", "cup": POWCup, "cupName": "Special"},

"e": {"title1": "Spiny Spike", "title2": "Stinging Dart", "title3": "Honed Spear", "title4": "Piercing Trident", "title5": "Serrated Pike", "cup": SpinyCup, "cupName": "Shell"},
"f": {"title1": "Trick-or-Treat", "title2": "Hocus Pocus", "title3": "Spooky Month", "title4": "This is Halloween", "title5": "Eternal Nightmare", "cup": BooCup, "cupName": "Banana"},
"g": {"title1": "Om Nom Nom", "title2": "Bark Bark", "title3": "Guard Dog", "title4": "Sharp Teeth", "title5": "Bound by Chains", "cup": ChompCup, "cupName": "Leaf"},
"h": {"title1": "Cape Wielder", "title2": "Falling Feathers", "title3": "I Believe I Can Fly", "title4": "Celestial Fowl", "title5": "Firmament Soaring", "cup": FeatherCup, "cupName": "Rainbow"},

}

function WonCup(cup, cc, mirror){
    logic =
    SanicMode == 0 &&
    CurrentMode == GrandPrix &&
    cup &&
    CurrentCC == cc &&
    MirrorMode == mirror &&
    MusicWon
    return logic
}


FirstRaceMilliseconds = word(0x3D9C28)
//[16-bit] Cup - 1st Race - Milliseconds

FirstRaceMinutes = byte(0x3D9C2a)
//[8-bit] Cup - 1st Race - Minutes

FirstRaceSeconds = byte(0x3D9C2b)
//[8-bit] Cup - 1st Race - Seconds

SecondRaceMilliseconds = word(0x3D9C2c)
//[16-bit] Cup - 2nd Race - Milliseconds

SecondRaceMinutes = byte(0x3D9C2e)
//[8-bit] Cup - 2nd Race - Minutes

SecondRaceSeconds = byte(0x3D9C2f)
//[8-bit] Cup - 2nd Race - Seconds

ThirdRaceMilliseconds = word(0x3D9C30)
//[16-bit] Cup - 3rd Race - Milliseconds

ThirdRaceMinutes = byte(0x3D9C32)
//[8-bit] Cup - 3rd Race - Minutes

ThirdRaceSeconds = byte(0x3D9C33)
//[8-bit] Cup - 3rd Race - Seconds

FourthRaceMilliseconds = word(0x3D9C34)	
//[16-bit] Cup - 4th Race - Milliseconds

FourthRaceMinutes = byte(0x3D9C36)
//[8-bit] Cup - 4th Race - Minutes

FourthRaceSeconds = byte(0x3D9C37)	
//[8-bit] Cup - 4th Race - Seconds

for cup in CupsData{
leaderboard(
    title = CupsData[cup]["cupName"] + " Cup: 50CC", 
    description = "", 
    start = 
        WonCup(CupsData[cup]["cup"], FiftyCC, MirrorNo) && TrackID == 0x34,

    cancel =    
        always_false(),       

    submit =
       ((FirstRaceMilliseconds / 10) +
       (FirstRaceSeconds * 100) +
       (FirstRaceMinutes * 6000) +
       (SecondRaceMilliseconds / 10) +
       (SecondRaceSeconds * 100) +
       (SecondRaceMinutes * 6000) +
       (ThirdRaceMilliseconds / 10) +
       (ThirdRaceSeconds * 100) +
       (ThirdRaceMinutes * 6000) +
       (FourthRaceMilliseconds / 10) +
       (FourthRaceSeconds * 100) +
       (FourthRaceMinutes * 6000)) > 10000,

    value = 
       (FirstRaceMilliseconds / 10) +
       (FirstRaceSeconds * 100) +
       (FirstRaceMinutes * 6000) +
       (SecondRaceMilliseconds / 10) +
       (SecondRaceSeconds * 100) +
       (SecondRaceMinutes * 6000) +
       (ThirdRaceMilliseconds / 10) +
       (ThirdRaceSeconds * 100) +
       (ThirdRaceMinutes * 6000) +
       (FourthRaceMilliseconds / 10) +
       (FourthRaceSeconds * 100) +
       (FourthRaceMinutes * 6000),
       format="MILLISECS", 
       lower_is_better=true
)
leaderboard(
    title = CupsData[cup]["cupName"] + " Cup: 100CC", 
    description = "", 
    start = 
        WonCup(CupsData[cup]["cup"], HundredCC, MirrorNo) && TrackID == 0x34,

    cancel =    
        always_false(),       

    submit =
        ((FirstRaceMilliseconds / 10) +
       (FirstRaceSeconds * 100) +
       (FirstRaceMinutes * 6000) +
       (SecondRaceMilliseconds / 10) +
       (SecondRaceSeconds * 100) +
       (SecondRaceMinutes * 6000) +
       (ThirdRaceMilliseconds / 10) +
       (ThirdRaceSeconds * 100) +
       (ThirdRaceMinutes * 6000) +
       (FourthRaceMilliseconds / 10) +
       (FourthRaceSeconds * 100) +
       (FourthRaceMinutes * 6000)) > 10000,

    value = 
       (FirstRaceMilliseconds / 10) +
       (FirstRaceSeconds * 100) +
       (FirstRaceMinutes * 6000) +
       (SecondRaceMilliseconds / 10) +
       (SecondRaceSeconds * 100) +
       (SecondRaceMinutes * 6000) +
       (ThirdRaceMilliseconds / 10) +
       (ThirdRaceSeconds * 100) +
       (ThirdRaceMinutes * 6000) +
       (FourthRaceMilliseconds / 10) +
       (FourthRaceSeconds * 100) +
       (FourthRaceMinutes * 6000),
       format="MILLISECS", 
       lower_is_better=true
)

leaderboard(
    title = CupsData[cup]["cupName"] + " Cup: 150CC", 
    description = "", 
    start = 
        WonCup(CupsData[cup]["cup"], HundredFiftyCC, MirrorNo) && TrackID == 0x34,

    cancel =    
        always_false(),       

    submit =
       ((FirstRaceMilliseconds / 10) +
       (FirstRaceSeconds * 100) +
       (FirstRaceMinutes * 6000) +
       (SecondRaceMilliseconds / 10) +
       (SecondRaceSeconds * 100) +
       (SecondRaceMinutes * 6000) +
       (ThirdRaceMilliseconds / 10) +
       (ThirdRaceSeconds * 100) +
       (ThirdRaceMinutes * 6000) +
       (FourthRaceMilliseconds / 10) +
       (FourthRaceSeconds * 100) +
       (FourthRaceMinutes * 6000)) > 10000, 

    value = 
       (FirstRaceMilliseconds / 10) +
       (FirstRaceSeconds * 100) +
       (FirstRaceMinutes * 6000) +
       (SecondRaceMilliseconds / 10) +
       (SecondRaceSeconds * 100) +
       (SecondRaceMinutes * 6000) +
       (ThirdRaceMilliseconds / 10) +
       (ThirdRaceSeconds * 100) +
       (ThirdRaceMinutes * 6000) +
       (FourthRaceMilliseconds / 10) +
       (FourthRaceSeconds * 100) +
       (FourthRaceMinutes * 6000),
       format="MILLISECS", 
       lower_is_better=true
)

leaderboard(
    title = CupsData[cup]["cupName"] + " Cup: Mirror", 
    description = "", 
    start = 
        WonCup(CupsData[cup]["cup"], HundredFiftyCC, MirrorYes) && TrackID == 0x34,

    cancel =    
        always_false(),       

    submit =
       ((FirstRaceMilliseconds / 10) +
       (FirstRaceSeconds * 100) +
       (FirstRaceMinutes * 6000) +
       (SecondRaceMilliseconds / 10) +
       (SecondRaceSeconds * 100) +
       (SecondRaceMinutes * 6000) +
       (ThirdRaceMilliseconds / 10) +
       (ThirdRaceSeconds * 100) +
       (ThirdRaceMinutes * 6000) +
       (FourthRaceMilliseconds / 10) +
       (FourthRaceSeconds * 100) +
       (FourthRaceMinutes * 6000)) > 10000, 

    value = 
       (FirstRaceMilliseconds / 10) +
       (FirstRaceSeconds * 100) +
       (FirstRaceMinutes * 6000) +
       (SecondRaceMilliseconds / 10) +
       (SecondRaceSeconds * 100) +
       (SecondRaceMinutes * 6000) +
       (ThirdRaceMilliseconds / 10) +
       (ThirdRaceSeconds * 100) +
       (ThirdRaceMinutes * 6000) +
       (FourthRaceMilliseconds / 10) +
       (FourthRaceSeconds * 100) +
       (FourthRaceMinutes * 6000),
       format="MILLISECS", 
       lower_is_better=true
)
}