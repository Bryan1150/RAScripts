// ~Hack~ CTGP: Nitro
// #ID = 17844



// $153898: Table with current loaded track ids
// $17561C: [24-bit] Pointer
//          +0x00 | Frame Timer (32-bits)
//          +0x04 | Time Trial Indicator (32-bits)
//          0x01 = Started
//          +0x14 | Finished Race Indicator (32-bits)
//          0x01 = Finished
//          +0x18 | Lap Timer (32-bits)
//          +0x50 | Current Race Place (8-bit, Lower 4)
TimeTrialPointer = tbyte(0x17561C)
FrameTimer = dword(TimeTrialPointer + 0x00)
TimeTrialIndicator = dword(TimeTrialPointer + 0x04)
TimeTrialFinished = dword(TimeTrialPointer + 0x14)
TimeTrialMilliseconds = word(TimeTrialPointer + 0x34)
TimeTrialMinutes = byte(TimeTrialPointer + 0x36)
TimeTrialSeconds = byte(TimeTrialPointer + 0x37)
CurrentLap = dword(TimeTrialPointer + 0x38)
// $17B3E0: [24-bit] Pointer
//          0x20 | Current Cup Score (32-bit)

EndingScore = word(0x3db398)


// $17C7B4: [32-bit] Music ID
//          0x43 = Won Grand Prix
MusicID = dword(0x17C7B4)
WonGrandPrix = 0x43

// $1DD1B8: [32-bit] Current Loaded Course Page
//          0x00 = Base Game
//          0x04 = From 1-UP to Feather Cups
//          0x08 = From Acorn to Bob-Omb Cups
CurrentPage = dword(0x1DD1B8)
FirstPage = 0x00
SecondPage = 0x04
ThirdPage = 0x08

// $3CF6F8: [32-bit] Track ID
//          1-UP Cup
//          0x37 = Llama Circuit
//          0x38 = Moonlight Lake
//          0x39 = Sunshine Station
//          0x3a = Snowy Thrill Trail
//          Egg Cup
//          0x3f = Toad Road
//          0x40 = Snowflake Canyon
//          0x41 = Color Circuit
//          0x42 = Sky-High Road
TrackID = dword(0x3CF6F8)
LlamaCircuit = 0x37 
MoonlightLake = 0x38 
SunshineStation = 0x39
SnowyThrillTrail = 0x3a

ToadRoad = 0x3f  
SnowflakeCanyon = 0x40  
ColorCircuit = 0x41  
SkyHighRoad = 0x42 

GreenHillZone = 0x47  
MushroomGarden = 0x48  
PiranhaPlantPass = 0x49
ToyTimeGalaxy = 0x4a 

ProVanillaLake = 0x4f  
CarreraCircuit = 0x50 
MarsColony = 0x51  
EnvironmentMapCave = 0x52  

WiiLuigiCircuit = 0x3b  
SMORCCarChallenge = 0x3c  
WiiMooMooMeadows = 0x3d 
ToadsTurnpike = 0x3e 

WiiMarioCircuit = 0x43  
MBLNewYorkMinute = 0x44  
WarioStadium = 0x45 
RouletteRoad = 0x46 

DokanCourse = 0x4b 
NokonokoBeach = 0x4c 
GCNMarioCircuit = 0x4d
BetaPinball = 0x4e

SNESMarioCircuitThree = 0x53 
SNESGhostValleyTwo = 0x54
SNESBowsersCastleThree = 0x55 
SNESRainbowRoad = 0x56

CrystalVillage = 0x57  
GoombaLake = 0x58
AutumnForest = 0x59 
Kartville = 0x5a

SnowmanVillage = 0x5f
FrappeSnowlandTwo = 0x60
MakerMountain = 0x61
YoshiMountain = 0x62

ErmelberCircuit = 0x67
ToadOasis = 0x68
CascadeJungle = 0x69
MotorcatsDirtDerby = 0x6a

N64LuigiRaceway = 0x5b
SNESMarioCircuitTwo = 0x5c 
GBAShyGuyBeach = 0x5d
WIIMushroomGorge = 0x5e

N64MarioRaceway = 0x63
WiiUSuperBellSubway = 0x64
MBLMerryMountain = 0x65
WiiUAnimalCrossingSpring = 0x66 

WiiUHyruleCircuit = 0x6b
WiiCoconutMall = 0x6c
GBASnowLand = 0x6d
WiiMoonviewHighway = 0x6e

ResultsScreen = 0x34
//Target time is seconds
TracksData = {
"a": {"title": "Happy Llama Sad Llama", "trackID": LlamaCircuit, "trackName": "Llama Circuit", "targetTimeMinutes": 1, "targetTimeSeconds": 21},
"b": {"title": "Spotlight Moonlight", "trackID": MoonlightLake, "trackName": "Moonlight Lake",  "targetTimeMinutes": 2, "targetTimeSeconds": 13},
"c": {"title": "Mr. Blue Sky", "trackID": SunshineStation, "trackName": "Sunshine Station",  "targetTimeMinutes": 1, "targetTimeSeconds": 36},
"d": {"title": "Let It Snow", "trackID": SnowyThrillTrail, "trackName": "Snowy Thrill Trail",  "targetTimeMinutes": 2, "targetTimeSeconds": 58},

"e": {"title": "Take Me Home Country Toads", "trackID": ToadRoad, "trackName": "Toad Road", "targetTimeMinutes": 1, "targetTimeSeconds": 41},
"f": {"title": "Special Snowflake", "trackID": SnowflakeCanyon, "trackName": "Snowflake Canyon",  "targetTimeMinutes": 2, "targetTimeSeconds": 10},
"g": {"title": "Radiant Palette", "trackID": ColorCircuit, "trackName": "Color Circuit",  "targetTimeMinutes": 1, "targetTimeSeconds": 25},
"h": {"title": "You’ve Blown It All Sky High", "trackID": SkyHighRoad, "trackName": "Sky-High Road",  "targetTimeMinutes": 2, "targetTimeSeconds": 31},

"i": {"title": "You Aren't Too Slow", "trackID": GreenHillZone, "trackName": "Green Hill Zone", "targetTimeMinutes": 2, "targetTimeSeconds": 11},
"j": {"title": "Fungi Proliferate", "trackID": MushroomGarden, "trackName": "Mushroom Garden",  "targetTimeMinutes": 1, "targetTimeSeconds": 49},
"k": {"title": "Pakkun Flower", "trackID": PiranhaPlantPass, "trackName": "Pirahna Plant Pass",  "targetTimeMinutes": 1, "targetTimeSeconds": 53},
"l": {"title": "Building Blocks", "trackID": ToyTimeGalaxy, "trackName": "Toy Time Galaxy",  "targetTimeMinutes": 1, "targetTimeSeconds": 11},

"m": {"title": "Iced Lake", "trackID": ProVanillaLake, "trackName": "Pro Vanilla Lake 2", "targetTimeMinutes": 1, "targetTimeSeconds": 19},
"n": {"title": "Follow the Road", "trackID": CarreraCircuit, "trackName": "Carrera Circuit",  "targetTimeMinutes": 1, "targetTimeSeconds": 40},
"o": {"title": "Out of this World", "trackID": MarsColony, "trackName": "Mars Colony 2150",  "targetTimeMinutes": 1, "targetTimeSeconds": 56},
"p": {"title": "Psychedelic Experience", "trackID": EnvironmentMapCave, "trackName": "Environment Map Cave",  "targetTimeMinutes": 1, "targetTimeSeconds": 29},

"q": {"title": "Luigi on the Wii", "trackID": WiiLuigiCircuit, "trackName": "[Wii] Luigi Circuit", "targetTimeMinutes": 1, "targetTimeSeconds": 16},
"r": {"title": "Void Racing", "trackID": SMORCCarChallenge, "trackName": "[SMO] RC Car Challenge",  "targetTimeMinutes": 1, "targetTimeSeconds": 17},
"s": {"title": "Milk Valley", "trackID": WiiMooMooMeadows, "trackName": "[Wii] Moo Moo Meadows",  "targetTimeMinutes": 1, "targetTimeSeconds": 39},
"t": {"title": "Night City", "trackID": ToadsTurnpike, "trackName": "[N64] Toad's Turnpike",  "targetTimeMinutes": 1, "targetTimeSeconds": 23},

"u": {"title": "It's a Me!", "trackID": WiiMarioCircuit, "trackName": "[Wii] Mario Circuit", "targetTimeMinutes": 1, "targetTimeSeconds": 24},
"v": {"title": "Statue of Liberty", "trackID": MBLNewYorkMinute, "trackName": "[MBL] New York Minute",  "targetTimeMinutes": 1, "targetTimeSeconds": 25},
"w": {"title": "Motocross Fan", "trackID": WarioStadium, "trackName": "[N64] Wario Stadium",  "targetTimeMinutes": 2, "targetTimeSeconds": 7},
"x": {"title": "Luck of the Draw", "trackID": RouletteRoad, "trackName": "[S&SASR] Roulette Road",  "targetTimeMinutes": 1, "targetTimeSeconds": 54},

"za": {"title": "Spin to Win", "trackID": DokanCourse, "trackName": "Dokan Course", "targetTimeMinutes": 1, "targetTimeSeconds": 40},
"zb": {"title": "Koopa Troopa Beach", "trackID": NokonokoBeach, "trackName": "Nokonoko Beach",  "targetTimeMinutes": 1, "targetTimeSeconds": 48},
"zc": {"title": "Mario on the Gamecube", "trackID": GCNMarioCircuit, "trackName": "[GCN] Mario Circuit",  "targetTimeMinutes": 1, "targetTimeSeconds": 44},
"zd": {"title": "Alpha Waluigi", "trackID": BetaPinball, "trackName": "Beta Pinball",  "targetTimeMinutes": 2, "targetTimeSeconds": 3},

"ze": {"title": "Mario 3 on the SNES", "trackID": SNESMarioCircuitThree, "trackName": "[SNES] Mario Circuit 3", "targetTimeMinutes": 1, "targetTimeSeconds": 19},
"zf": {"title": "Mystery Skulls", "trackID": SNESGhostValleyTwo, "trackName": "[SNES] Ghost Valley 2",  "targetTimeMinutes": 1, "targetTimeSeconds": 19},
"zg": {"title": "Bowser on the SNES", "trackID": SNESBowsersCastleThree, "trackName": "[SNES] Bowser's Castle 3",  "targetTimeMinutes": 1, "targetTimeSeconds": 46},
"zh": {"title": "Multicolored Path", "trackID": SNESRainbowRoad, "trackName": "[SNES] Rainbow Road",  "targetTimeMinutes": 1, "targetTimeSeconds": 23},

"zi": {"title": "Purple Reflection", "trackID": CrystalVillage, "trackName": "Crystal Village", "targetTimeMinutes": 2, "targetTimeSeconds": 0},
"zj": {"title": "Long Bridge", "trackID": GoombaLake, "trackName": "Goomba Lake",  "targetTimeMinutes": 1, "targetTimeSeconds": 41},
"zk": {"title": "Voice of Autumn", "trackID": AutumnForest, "trackName": "Autumn Forest",  "targetTimeMinutes": 1, "targetTimeSeconds": 44},
"zl": {"title": "Dōbutsu no Kart", "trackID": Kartville, "trackName": "Kartville",  "targetTimeMinutes": 1, "targetTimeSeconds": 32},

"zm": {"title": "Do You Want to Build a Snowman?", "trackID": SnowmanVillage, "trackName": "Snowman Village", "targetTimeMinutes": 2, "targetTimeSeconds": 32},
"zn": {"title": "Sweet Coffee", "trackID": FrappeSnowlandTwo, "trackName": "Frappe Snowland 2",  "targetTimeMinutes": 1, "targetTimeSeconds": 46},
"zo": {"title": "Super Kart Maker", "trackID": MakerMountain, "trackName": "Maker Mountain",  "targetTimeMinutes": 1, "targetTimeSeconds": 44},
"zp": {"title": "Foggy Traveling", "trackID": YoshiMountain, "trackName": "Yoshi Mountain",  "targetTimeMinutes": 2, "targetTimeSeconds": 21},

"zq": {"title": "Emii Kart", "trackID": ErmelberCircuit, "trackName": "Ermelber Circuit", "targetTimeMinutes": 1, "targetTimeSeconds": 22},
"zr": {"title": "Indiana Toad", "trackID": ToadOasis, "trackName": "Toad Oasis",  "targetTimeMinutes": 2, "targetTimeSeconds": 12},
"zs": {"title": "Depths of the Wilderness", "trackID": CascadeJungle, "trackName": "Cascade Jungle",  "targetTimeMinutes": 1, "targetTimeSeconds": 26},
"zt": {"title": "Neko Derby", "trackID": MotorcatsDirtDerby, "trackName": "Motorcat's Dirt Derby",  "targetTimeMinutes": 2, "targetTimeSeconds": 47},

"zu": {"title": "Luigi on the 64", "trackID": N64LuigiRaceway, "trackName": "[N64] Luigi Raceway", "targetTimeMinutes": 1, "targetTimeSeconds": 59},
"zv": {"title": "Mario 2 on the SNES", "trackID": SNESMarioCircuitTwo, "trackName": "[SNES] Mario Circuit 2",  "targetTimeMinutes": 1, "targetTimeSeconds": 23},
"zw": {"title": "Timid Sand", "trackID": GBAShyGuyBeach, "trackName": "[GBA] Shy Guy Beach",  "targetTimeMinutes": 1, "targetTimeSeconds": 57},
"zx": {"title": "Gorgeous Bounces", "trackID": WIIMushroomGorge, "trackName": "[Wii] Mushroom Gorge",  "targetTimeMinutes": 2, "targetTimeSeconds": 17},

"zza": {"title": "Mario on the 64", "trackID": N64MarioRaceway, "trackName": "[N64] Mario Raceway", "targetTimeMinutes": 2, "targetTimeSeconds": 39},
"zzb": {"title": "Super Monkey Bell", "trackID": WiiUSuperBellSubway, "trackName": "[Wii U] Super Bell Subway",  "targetTimeMinutes": 2, "targetTimeSeconds": 43},
"zzc": {"title": "Merry Christmas", "trackID": MBLMerryMountain, "trackName": "[MBL] Merry Mountain",  "targetTimeMinutes": 1, "targetTimeSeconds": 56},
"zzd": {"title": "Season Changing", "trackID": WiiUAnimalCrossingSpring, "trackName": "[Wii U] Animal Crossing",  "targetTimeMinutes": 2, "targetTimeSeconds": 2},

"zze": {"title": "Legend of Karting", "trackID": WiiUHyruleCircuit, "trackName": "[Wii U] Hyrule Circuit", "targetTimeMinutes": 2, "targetTimeSeconds": 32},
"zzf": {"title": "Shopping Spree", "trackID": WiiCoconutMall, "trackName": "[Wii] Coconut Mall",  "targetTimeMinutes": 2, "targetTimeSeconds": 19},
"zzg": {"title": "Slippery Floor", "trackID": GBASnowLand, "trackName": "[GBA] Snow Land",  "targetTimeMinutes": 2, "targetTimeSeconds": 18},
"zzh": {"title": "Bark to the Moon", "trackID": WiiMoonviewHighway, "trackName": "[Wii] Moonview Highway",  "targetTimeMinutes": 1, "targetTimeSeconds": 54},
}


// $3CF6FC: [32-bits] Current Cup (Just the 8 loaded cups)
CurrentCup = dword(0x3CF6FC)
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
TurnipCup = CurrentCup == 0x04 && CurrentPage == ThirdPage
CoinCup = CurrentCup == 0x05 && CurrentPage == ThirdPage
BobOmbCup = CurrentCup == 0x06 && CurrentPage == ThirdPage


// $3CF700: [32-bit] Current Mode
//          0x00 = Grand Prix
//          0x01 = Time Trials
//          0x02 = Battle
//          0x03 = VS
//          0x04 = Missions
CurrentMode = dword(0x3CF700)
GrandPrix = 0x00
TimeTrial = 0x01

// $3CF708: [32-bits] Current CC
//          0x00 = 50cc
//          0x01 = 100cc
//          0x02 = 150cc
CurrentCC = dword(0x3CF708)
FiftyCC = 0x00
HundredCC = 0x01
HundredFiftyCC = 0x02

// $3CF74F: [8-bit] Mirror Mode Minimap Flag
//          0x01 = Mirrowed

MirrorMode = byte(0x3CF74F)
MirrorYes = 0x01
MirrorNo = 0x00
// $3DB36C: [32-bit] Trophy Type
//          0x00 = Gold
//          0x01 = Silver
//          0x02 = Bronze

TrophyType = dword(0x3DB36C)
Gold = 0x00
Silver = 0x01
Bronze = 0x02

MusicWon = prev(MusicID) == 0xff && MusicID == WonGrandPrix

CupsData = {
"a": {"title1": "Extra Life", "title2": "Gamers Don't Die", "title3": "They Respawn", "title4": "Verdant Mushroom", "title5": "Afterdeath Prevail", "cup": UPCup, "cupName": "1-UP"},
"b": {"title1": "Boiled Egg", "title2": "Fried Egg", "title3": "Ham and Eggs", "title4": "Omelette Du Fromage", "title5": "Norfolk Eggnog", "cup": EggCup, "cupName": "Egg"},
"c": {"title1": "Full Moon", "title2": "Blood Moon", "title3": "Eclipsed Night", "title4": "Dark Moon", "title5": "Crescent Dawn", "cup": MoonCup, "cupName": "Moon"},
"d": {"title1": "KAPOW", "title2": "BAM", "title3": "ZIP", "title4": "ZOOM", "title5": "BANG", "cup": POWCup, "cupName": "POW"},

"e": {"title1": "Spiny Spike", "title2": "Stinging Dart", "title3": "Honed Spear", "title4": "Piercing Trident", "title5": "Serrated Pike", "cup": SpinyCup, "cupName": "Spiny"},
"f": {"title1": "Trick-or-Treat", "title2": "Hocus Pocus", "title3": "Spooky Month", "title4": "This is Halloween", "title5": "Eternal Nightmare", "cup": BooCup, "cupName": "Boo"},
"g": {"title1": "Om Nom Nom", "title2": "Bark Bark", "title3": "Guard Dog", "title4": "Sharp Teeth", "title5": "Bound by Chains", "cup": ChompCup, "cupName": "Chomp"},
"h": {"title1": "Cape Wielder", "title2": "Falling Feathers", "title3": "I Believe I Can Fly", "title4": "Celestial Fowl", "title5": "Firmament Soaring", "cup": FeatherCup, "cupName": "Feather"},

"i": {"title1": "Flying Squirrel", "title2": "Standard Nut", "title3": "Super Nut", "title4": "Ultra Nut", "title5": "Max Nut", "cup": AcornCup, "cupName": "Acorn"},
"j": {"title1": "Sleigh Bells", "title2": "Christmas Eve", "title3": "Snow Flurry", "title4": "Jack Frost", "title5": "Freezing Spirits", "cup": FreezieCup, "cupName": "Freezie"},
"k": {"title1": "Sand Castle", "title2": "Finding Shells", "title3": "Pool Party", "title4": "Ocean Reflection", "title5": "Shining Sun", "cup": ShineCup, "cupName": "Shine"},

"l": {"title1": "Planting Seeds", "title2": "Watering Roots", "title3": "Spring Crop", "title4": "Stardew Racing", "title5": "Harvest Kart", "cup": TurnipCup, "cupName": "Turnip"},
"m": {"title1": "Bags of Cash", "title2": "Full Bank", "title3": "Billionary Magnate", "title4": "Deep Pockets", "title5": "True Capitalism", "cup": CoinCup, "cupName": "Coin"},
"n": {"title1": "Blasting Away", "title2": "Explosion Detonation", "title3": "Powder Burst", "title4": "Granade Ignition", "title5": "Bombs Go Boom", "cup": BobOmbCup, "cupName": "Bob-omb"},
}



FirstRaceMilliseconds = word(0x3db388)
//[16-bit] Cup - 1st Race - Milliseconds

FirstRaceMinutes = byte(0x3db38a)
//[8-bit] Cup - 1st Race - Minutes

FirstRaceSeconds = byte(0x3db38b)
//[8-bit] Cup - 1st Race - Seconds

SecondRaceMilliseconds = word(0x3db38c)
//[16-bit] Cup - 2nd Race - Milliseconds

SecondRaceMinutes = byte(0x3db38e)
//[8-bit] Cup - 2nd Race - Minutes

SecondRaceSeconds = byte(0x3db38f)
//[8-bit] Cup - 2nd Race - Seconds

ThirdRaceMilliseconds = word(0x3db390)
//[16-bit] Cup - 3rd Race - Milliseconds

ThirdRaceMinutes = byte(0x3db392)
//[8-bit] Cup - 3rd Race - Minutes

ThirdRaceSeconds = byte(0x3db393)
//[8-bit] Cup - 3rd Race - Seconds

FourthRaceMilliseconds = word(0x3db394)	
//[16-bit] Cup - 4th Race - Milliseconds

FourthRaceMinutes = byte(0x3db396)
//[8-bit] Cup - 4th Race - Minutes

FourthRaceSeconds = byte(0x3db397)	
//[8-bit] Cup - 4th Race - Seconds


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
        description = "Get a Gold Trophy in the 50cc " + CupsData[cup]["cupName"] + " Cup",
        points = 3,
        trigger = WonCup(CupsData[cup]["cup"], FiftyCC, MirrorNo)       
    )
//100CC
achievement(
    title = CupsData[cup]["title2"],
    description = "Get a Gold Trophy in the 100cc " + CupsData[cup]["cupName"] + " Cup",
    points = 4,
    trigger = WonCup(CupsData[cup]["cup"], HundredCC, MirrorNo)       
)
//150CC
achievement(
    title = CupsData[cup]["title3"],
    description = "Get a Gold Trophy in the 150cc " + CupsData[cup]["cupName"] + " Cup",
    points = 5,
    trigger = WonCup(CupsData[cup]["cup"], HundredFiftyCC, MirrorNo)       
)
//Mirror
achievement(
    title = CupsData[cup]["title4"],
    description = "Get a Gold Trophy in the Mirror " + CupsData[cup]["cupName"] + " Cup",
    points = 5,
    trigger = WonCup(CupsData[cup]["cup"], HundredFiftyCC, MirrorYes)       
)
//PerfectScore
achievement(
    title = CupsData[cup]["title5"],
    description = "Get a Perfect Score in the 150cc (or Mirror) " + CupsData[cup]["cupName"] + " Cup",
    points = 10,
    trigger = PerfectScore(CupsData[cup]["cup"])
)
leaderboard(
    title = CupsData[cup]["cupName"] + " Cup: 50CC", 
    description = "", 
    start = 
        WonCup(CupsData[cup]["cup"], FiftyCC, MirrorNo) && TrackID == ResultsScreen,

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
       (FourthRaceMinutes * 6000)) > 1000,

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
        WonCup(CupsData[cup]["cup"], HundredCC, MirrorNo) && TrackID == ResultsScreen,

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
       (FourthRaceMinutes * 6000)) > 1000,

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
        WonCup(CupsData[cup]["cup"], HundredFiftyCC, MirrorNo) && TrackID == ResultsScreen,

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
       (FourthRaceMinutes * 6000)) > 1000, 

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
        WonCup(CupsData[cup]["cup"], HundredFiftyCC, MirrorYes) && TrackID == ResultsScreen,

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
       (FourthRaceMinutes * 6000)) > 1000, 

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
    description = "", 
    start = 
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