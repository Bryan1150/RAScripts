// Mario Hoops 3-on-3 | Mario Slam Basketball
// #ID = 15614

True = 1
False = 0

// $0C10B4: [8-bit] Current Special Shot Character
//          0x00 = Mario
//          0x01 = Luigi
//          0x02 = Princess Peach
//          0x03 = Daisy
//          0x04 = Yoshi
//          0x05 = Birdo
//          0x06 = Wario
//          0x07 = Waluigi
//          0x08 = Donkey Kong
//          0x09 = Diddy Kong
//          0x0a = Dixie Kong
//          0x0b = Para Troopa
//          0x0d = Bowser
//          0x0e = Bowser Jr.
//          0x0f = Fly Guy
//          0x10 = Boo
//          0x11 = Ninja
//          0x12 = White Mage
//          0x13 = Black Mage
//          0x14 = Moogle
//          0x15 = Cactuar

Mario = 0x00
Luigi = 0x01 
Peach = 0x02
Daisy = 0x03 
Yoshi = 0x04
Birdo = 0x05
Wario = 0x06
Waluigi = 0x07
DonkeyKong = 0x08
DiddyKong = 0x09
DixieKong = 0x0a
ParaTroopa = 0x0b
Bowser = 0x0d
BowserJr = 0x0e
FlyGuy = 0x0f
Boo = 0x10
Ninja = 0x11
WhiteMage = 0x12
BlackMage = 0x13
Moogle = 0x14
Cactuar = 0x15

TeamMushroomKingdom = [Mario, Luigi, Yoshi]
TeamSarasaland = [Peach, Daisy, Birdo]
TeamKongs = [DonkeyKong, DiddyKong, DixieKong]
TeamKoopa = [Bowser, BowserJr, ParaTroopa]
TeamDiamond = [Wario, Waluigi, Boo]
TeamLindblum = [Cactuar, Moogle, FlyGuy]
TeamMidgar = [Ninja, WhiteMage, BlackMage]

TeamsData = {
"TeamMushroomKingdom": {"title": "Mushroom Kingdom Warriors", "description": "Win the Hard Rainbow Tourney using Mario, Luigi and Yoshi", "team": TeamMushroomKingdom},
"TeamSarasaland": {"title": "Sarasaland Suns", "description": "Win the Hard Rainbow Tourney using Peach, Daisy and Birdo", "team": TeamSarasaland},
"TeamKings": {"title": "Kong Kings", "description": "Win the Hard Rainbow Tourney using Donkey Kong, Diddy Kong and Dixie Kong", "team": TeamKongs},
"TeamKoopa": {"title": "Koopa Mavericks", "description": "Win the Hard Rainbow Tourney using Bowser, Bowser Jr. and Paratroopa", "team": TeamKoopa},
"TeamDiamond": {"title": "Diamond Bulls", "description": "Win the Hard Rainbow Tourney using Wario, Waluigi and Boo", "team": TeamDiamond},
"TeamLindblum": {"title": "Lindblum Spurs", "description": "Win the Hard Rainbow Tourney using Cactuar, Moogle and Fly Guy", "team": TeamLindblum},
"TeamMidgar": {"title": "Midgar Wizards", "description": "Win the Hard Rainbow Tourney using Ninja, White Mage and Black Mage", "team": TeamMidgar}
}

// $0C3F3C: Screen ID?
//[8-bit] Screen ID
//FF/00/01 = Title Screen
//03 = Main Menu
//08 = DS Wireless Play Menu
//09 = DS Download Play Menu
//13 = Options Menu
//12 = Player Rank Menu
//04 = Select Character Menu
//05 = Exhibition Menu
//06 = Tourney Menu
//0a = Challenges Menu
//07 = Select Character Menu
//0c = Real Match
//0f = Practice Match
//10 = Special Shot Match
//0b = Dribble Race Time Trial Menu
//0d = Dribble Race Time Trial Match
ScreenId = byte(0x0C3F3C) 
TitleScreen = 0x00

// $0C3F40: [8-bit] Court ID
//          0x00 = Mario Stadium
//          0x01 = Koopa Beach
//          0x02 = Peach Field
//          0x03 = DK Cruiser
//          0x04 = Luigi Mansion
//          0x05 = Daisy Garden
//          0x06 = Wario Factory
//          0x07 = JR Street
//          0x08 = Bowser Castle
//          0x09 = Sherbet Land
//          0x0a = Bloocheep Sea
//          0x0b = Rainbow Ship
//          0x0c = Pirate Ship
//          0x0d = Malboro Garden
//          0x0e = Sunset Beach
//          0xf = Glare Desert


// $0F80F8: [32-bit] Rank Points
//5k = S Rank
//7k = SS Rank
//10k = SSS Rank
RankPoints = dword(0x0F80F8)
SRank = 5000
SSRank = 7000
SSSRank = 10000

RanksData = {
    "MVP of the Decade": {"title": "MVP of the Decade", "description": "Reach S Rank", "points": 5, "value": SRank},
    "MVP of the Century": {"title": "MVP of the Century", "description": "Reach SS Rank", "points": 10, "value": SSRank},
    "Mario is Frickin' Ballin'": {"title": "Mario is Frickin' Ballin'", "description": "Reach SSS Rank", "points": 25, "value": SSSRank}
}

// $0F8109: MSB Tourney - Team 1 [3 Bytes]
TeamSlot1 = low4(0x0F8109) + (bit4(0x0F8109) * 16)
TeamSlot2 = low4(0x0F810a) + (bit4(0x0F810a) * 16)
TeamSlot3 = low4(0x0F810b) + (bit4(0x0F810b) * 16)

// $0F8134: [N-bit] Mushroom Cup Trophies
//          Bit 0 = Bronze
//          Bit 1 = Silver
//          Bit 2 = Gold
// $0F8135: [N-bit] Flower Cup Trophies
//          Bit 0 = Bronze
//          Bit 1 = Silver
//          Bit 2 = Gold
// $0F8136: [N-bit] Star Cup Trophies
//          Bit 0 = Bronze
//          Bit 1 = Silver
//          Bit 2 = Gold
// $0F8137: [N-bit] Rainbow Cup Trophies
//          Bit 0 = Bronze
//          Bit 1 = Silver
//          Bit 2 = Gold
// $0F8138: [N-bit] Mushroom Hard Cup Trophies
//          Bit 0 = Bronze
//          Bit 1 = Silver
//          Bit 2 = Gold
// $0F8139: [N-bit] Flower Hard Cup Trophies
//          Bit 0 = Bronze
//          Bit 1 = Silver
//          Bit 2 = Gold
// $0F813A: [N-bit] Star Hard Cup Trophies
//          Bit 0 = Bronze
//          Bit 1 = Silver
//          Bit 2 = Gold
// $0F813B: [N-bit] Rainbow Hard Cup Trophies
//          Bit 0 = Bronze
//          Bit 1 = Silver
//          Bit 2 = Gold
GoldMushroomCup = bit2(0x0F8134)
GoldFlowerCup = bit2(0x0F8135)
GoldStarCup = bit2(0x0F8136)
GoldRainbowCup = bit2(0x0F8137)
GoldMushroomCupHard = bit2(0x0F8138)
GoldFlowerCupHard = bit2(0x0F8139)
GoldStarCupHard = bit2(0x0F813a)
GoldRainbowCupHard = bit2(0x0F813b)

GoldenCups = [GoldMushroomCup, GoldFlowerCup, GoldStarCup, GoldRainbowCup, GoldMushroomCupHard, GoldFlowerCupHard, GoldStarCupHard, GoldRainbowCupHard]

GoldenCupsData = {
"GoldMushroom": {"title": "Minor Mushroom League", "description": "Get a Gold Trophy in the Mushroom Tourney", "points": 5, "flag": GoldMushroomCup},
"GoldFlower": {"title": "Minor Flower League", "description": "Get a Gold Trophy in the Flower Tourney", "points": 5, "flag": GoldFlowerCup},
"GoldStar": {"title": "Minor Star League", "description": "Get a Gold Trophy in the Star Tourney", "points": 10, "flag": GoldStarCup},
"GoldRainbow": {"title": "Minor Rainbow League", "description": "Get a Gold Trophy in the Rainbow Tourney", "points": 10, "flag": GoldRainbowCup},

"GoldMushroomHard": {"title": "Major Mushroom League", "description": "Get a Gold Trophy in the Hard Mushroom Tourney", "points": 10, "flag": GoldMushroomCupHard},
"GoldFlowerHard": {"title": "Major Flower League", "description": "Get a Gold Trophy in the Hard Flower Tourney", "points": 25, "flag": GoldFlowerCupHard},
"GoldStarHard": {"title": "Major Star League", "description": "Get a Gold Trophy in the Hard Star Tourney", "points": 25, "flag": GoldStarCupHard},
"GoldRainbowHard": {"title": "Major Rainbow League", "description": "Get a Gold Trophy in the Hard Rainbow Tourney", "points": 25, "flag": GoldRainbowCupHard}
}

//0x0f8104 [8-bit] Current Tournament
//0x00 = Mushroom
//0x01 = Flower
//0x02 = Star
//0x03 = Rainbow
CurrentTournament = byte(0x0f8104)
Rainbow = 0x04

//0x0f8105 [8-bit] Tournament State
//0x02 = First Round
//0x03 = Won First Round
//0x08 = Second Round
//0x09 = Won Second Round
//0x0c = Third Round
//0x0d = Won Tournament?
//0x0f = Extra
//0x10 = Rainbow Tournament won
TournamentState = byte(0x0f8105)
WonRainbow = 0x10
OnRainbow = 0x0f

//0x0f8106 [N-bit] Bit 7 = Hard Tournament Flag
HardTournamentFlag = bit7(0x0f8106)

// $0F8144: [32-bit] Dribble Race Sunshine Road Best Time
SunshineRoadBestTime = dword(0x0F8144)
// $0F8150: [32-bit] Dribble Race Peach's Castle Best Time
PeachCastleBestTime = dword(0x0F8150)
// $0F8168: [32-bit] Dribble Rainbow Road Castle Best Time
RainbowRoadBestTime = dword(0x0F8168)
// $0F8174: [N-bit]
//          Bit 0 = Beat Sunshine Road best time
//          Bit 1 = Beat Peach's Castle best time
//          Bit 3 = Beat Rainbow Road's best time
BeatSunshineRoad = bit0(0x0F8174)
BeatPeachCastle = bit1(0x0F8174)
BeatRainbowRoad = bit3(0x0F8174)

DribbleRaceData = {
"PeachCastle": {"title": "Noble Dribble", "description": "Complete Dribble Race (Time Trial) on Peach's Castle in less than 45 seconds", "points": 10, "flag": BeatPeachCastle},
"SunshineRoad": {"title": "Daylight Dribble", "description": "Complete Dribble Race (Time Trial) on Sunshine Road in less than 55 seconds", "points": 10, "flag": BeatSunshineRoad},
"RainbowRoad": {"title": "Prismatic Dribble", "description": "Complete Dribble Race (Time Trial) on Rainbow Road in less than 60 seconds", "points": 25, "flag": BeatRainbowRoad}
}

// $0F8178: [N-bit] Court Unlock Flags
//          Bit 0 = Mario Stadium (Mushroom)
//          Bit 1 = Koopa Beach (Mushroom)
//          Bit 2 = Peach Field (Mushroom)
//          Bit 3 = DK Cruiser (Fireflower)
//          Bir 4 = Luigi Mansion (Fireflower)
//          Bit 5 = Daisy Garden (Fireflower)
//          Bit 6 = Wario Factory (Star)
//          Bit 7 = Jr. Street (Star)
// $0F8179: [N-bit] Court Unlock Flags
//          Bit 0 = Bowser Castle (Star)
//          Bit 1 = Sherbet Land (Rainbow)
//          Bit 2 = Bloocheep Sea (Rainbow)
//          Bit 3 = Rainbow Ship (Rainbow)
//          Bit 4 = Pirate Ship (Rainbow)
//          Bit 5 = Malboro Garden (Flower)
//          Bit 6 = Sunset Beach (Mushroom)
//          Bit 7 = Glare Desert (Star)
UnlockMarioStadium = bit0(0x0F8178)
UnlockKoopaBeach = bit1(0x0F8178)
UnlockPeachField = bit2(0x0F8178)
UnlockDKCruiser = bit3(0x0F8178)
UnlockLuigiMansion = bit4(0x0F8178)
UnlockDaisyGarden = bit5(0x0F8178)
UnlockWarioFactory = bit6(0x0F8178)
UnlockJrStreet = bit7(0x0F8178)
UnlockBowserCastle = bit0(0x0F8179)
UnlockSherbetLand = bit1(0x0F8179)
UnlockBloocheepSea = bit2(0x0F8179)
UnlockRainbowShip = bit3(0x0F8179)
UnlockPirateShip = bit4(0x0F8179)
UnlockMalboroGarden = bit5(0x0F8179)
UnlockSunsetBeach = bit6(0x0F8179)
UnlockGlareDesert = bit7(0x0F8179)

Courts = 
[UnlockMarioStadium,
UnlockKoopaBeach,
UnlockPeachField,
UnlockDKCruiser,
UnlockLuigiMansion,
UnlockDaisyGarden,
UnlockWarioFactory,
UnlockJrStreet,
UnlockBowserCastle,
UnlockSherbetLand,
UnlockBloocheepSea,
UnlockRainbowShip,
UnlockPirateShip,
UnlockMalboroGarden,
UnlockSunsetBeach,
UnlockGlareDesert]

// $0F817C: [N-bit] Character Unlock Flags
//          Bit 0 = Unlocked Mario (Default)
//          Bit 1 = Unlocked Luigi (Default)
//          Bit 2 = Unlocked Princess Peach (Default)
//          Bit 3 = Unlocked Daisy (Default)
//          Bit 4 = Unlocked Yoshi (Default)
//          Bit 5 = Unlocked Birdo
//          Bit 6 = Unlocked Wario (Default)
//          Bit 7 = Unlocked Waluigi (Default)

UnlockMario = bit0(0x0F817C)
UnlockLuigi = bit1(0x0F817C)
UnlockPeach = bit2(0x0F817C)
UnlockDaisy = bit3(0x0F817C)
UnlockYoshi = bit4(0x0F817C)
UnlockBirdo = bit5(0x0F817C)
UnlockWario = bit6(0x0F817C)
UnlockWaluigi  = bit7(0x0F817C)

// $0F817D: [N-bit] Character Unlock Flags
//          Bit 0 = Unlocked Donkey Kong (Default)
//          Bit 1 = Unlocked Diddy Kong (Default)
//          Bit 2 = Unlocked Dixie Kong
//          Bit 3 = Unlocked ParaTroopa
//          Bit 5 = Unlocked Bowser
//          Bit 6 = Unlocked Bowser Jr. (Default)
//          Bit 7 = Unlocked Fly Guy

UnlockDonkeyKong = bit0(0x0F817D)
UnlockDiddyKong = bit1(0x0F817D)
UnlockDixieKong = bit2(0x0F817D)
UnlockParatroopa = bit3(0x0F817D)
UnlockBowser = bit5(0x0F817D)
UnlockBowserJr = bit6(0x0F817D)
UnlockFlyGuy = bit7(0x0F817D)

// $0F817E: [N-bit] Character Unlock Flags
//          Bit 0 = Unlocked Boo
//          Bit 1 = Unlocked Ninja
//          Bit 2 = Unlocked White Mage
//          Bit 3 = Unlocked Black Mage
//          Bit 4 = Unlocked Moogle
//          Bit 5 = Unlocked Cactuar
//          Bit 6 = Costume Change: Peach
//          Bit 7 = Costume Change: Daisy
UnlockBoo = bit0(0x0F817E)
UnlockNinja = bit1(0x0F817E)
UnlockWhiteMage = bit2(0x0F817E)
UnlockBlackMage = bit3(0x0F817E)
UnlockMoogle = bit4(0x0F817E)
UnlockedCactuar = bit5(0x0F817E)

Characters = [
    UnlockMario,
    UnlockLuigi,
    UnlockPeach,
    UnlockDaisy,
    UnlockYoshi,
    UnlockBirdo,
    UnlockWario,
    UnlockWaluigi,
    UnlockDonkeyKong,
    UnlockDiddyKong,
    UnlockDixieKong,
    UnlockParatroopa,
    UnlockBowser,
    UnlockBowserJr,
    UnlockFlyGuy,
    UnlockBoo,
    UnlockNinja,
    UnlockWhiteMage,
    UnlockBlackMage,
    UnlockMoogle,
    UnlockedCactuar
]


CostumePeach = bit6(0x0F817E)
CostumeDaisy = bit7(0x0F817E)

// $0F817F: Bit 4 and 5, white mage and black mage costumes
//          Bit 3 = Costume Change: Ninja
//          Bit 4 = Costume Change: White Mage
//          Bit 5 = Costume Change: Black Mage
//          Bit 1 = Costume Change: Fly Guy
//          Bit 0 = Costume Change: Yoshi
CostumeNinja = bit3(0x0F817F)
CostumeWhiteMage = bit4(0x0F817F)
CostumeBlackMage = bit5(0x0F817F)
CostumeFlyGuy = bit1(0x0F817F)
CostumeYoshi = bit0(0x0F817F)

Costumes = [CostumePeach, CostumeDaisy, CostumeNinja, CostumeWhiteMage, CostumeFlyGuy, CostumeYoshi]

// $0F8180: [N-bit] Ball Unlock Flags
//          Bit 0 = Basquetball (Default)
//          Bit 1 = Gold (5000 points in profile)
//          Bit 2 = Silver (2000 points in profile)
//          Bit 3 = Black/Red (Win an exhibition on Rainbow Ship without ? Panels)
//          Bit 4 = Purple/Orange (Play an exhibition match at Bowser's Castle)
//          Bit 5 = Yellow/Green (Play an exhibition match at Daisy Garden)
//          Bit 6 = Melon (Mushroom Cup Gold)
//          Bit 7 = Spiked (Obtain a gold trophy in the Star Cup tourney)
// $0F8181: [N-bit] Ball Unlock Flags
//          Bit 0 = Pumpkin (Lose 5 games in a row in wireless exhibition)
//          Bit 1 = Blue/White/Red (Win one match in tourney mode using only three-point charged shots)
//          Bit 2 = Cheep Cheep (Obtain a gold trophy in the Hard Mushroom Cup tourney)
//          Bit 3 = Yoshi Egg (Obtain a gold trophy in the Mushroom Cup tourney)
//          BIt 4 = Blue/Silver (Finish Practice Mode)
//          BIt 5 = Dice (Obtain a gold trophy in the Hard Flower Cup tourney)
//          Bit 6 = Rainbow (Win 7 games in wireless exhibition)
//          Bit 7 = Star (Win one match in tourney mode using only Special Shots.)
// $0F8182: [N-bit] Ball Unlock Flags
//          Bit 0 = Goomba (Obtain a gold trophy in the Hard Star Cup tourney)
//          Bit 1 = Soccer (Obtain a silver trophy or better in the Hard Mushroom Cup tourney)

Basquetball = bit0(0x0F8180)
Gold = bit1(0x0F8180)
Silver = bit2(0x0F8180)
BlackRed = bit3(0x0F8180)
PurpleOrange = bit4(0x0F8180)
YellowGreen = bit5(0x0F8180)
Melon = bit6(0x0F8180)
Spiked = bit7(0x0F8180)
BlueWhiteRed = bit1(0x0F8181)
CheepCheep = bit2(0x0F8181)
YoshiEgg = bit3(0x0F8181)
BlueSilver = bit4(0x0F8181)
Dice = bit5(0x0F8181)
Star = bit7(0x0F8181)
Goomba = bit0(0x0F8182)
Soccer = bit1(0x0F8182)

Balls = [
Basquetball,
Gold,
Silver,
BlackRed,
PurpleOrange,
YellowGreen,
Melon,
Spiked,
BlueWhiteRed,
CheepCheep,
YoshiEgg,
BlueSilver,
Dice,
Star,
Goomba,
Soccer
]


ThreePointCharged = bit1(0x0F8181)
RainbowShipWithoutPanels = bit3(0x0F8180)
OnlySpecialShots = bit7(0x0F8181)
CompletePractice = bit4(0x0F8181)

NotInTitleScreen = ScreenId != TitleScreen

SingleUnlockablesData = {
    "SunsetBeach": {"title": "Twilight Shore", "description": "Unlock the Sunset Beach court", "points": 5, "flag": UnlockSunsetBeach},
    "MalboroGarden": {"title": "Bad Breath Lawn", "description": "Unlock the Malboro Garden court", "points": 5, "flag": UnlockMalboroGarden},
    "GlareDesert": {"title": "Scowl Wasteland", "description": "Unlock the Glare Desert court", "points": 5, "flag": UnlockGlareDesert},
    "Cactuar": {"title": "Stick and Sting", "description": "Unlock the Cactuar character", "points": 5, "flag": UnlockedCactuar},
    "Coming From Downtown": {"title": "Coming From Downtown", "description": "Win one match in tourney mode using only three-point charged shots", "points": 5, "flag": ThreePointCharged},
    "Standard Rules": {"title": "Standard Rules", "description": "Win an exhibition match on Rainbow Ship without touching ? Panels", "points": 5, "flag": RainbowShipWithoutPanels},
    "Style Dunking": {"title": "Style Dunking", "description": "Win one match in tourney mode using only Special Shots", "points": 5, "flag": OnlySpecialShots},
}

AllUnlockablesData = {
    "Official Fields": {"title": "Official Fields", "description": "Unlock all the Courts", "points": 10, "flags": Courts},
    "Filled Draft": {"title": "Filled Draft", "description": "Unlock all the Characters", "points": 10, "flags": Characters},
    "Athletic Jerseys": {"title": "Athletic Jerseys", "description": "Unlock all the Costumes", "points": 10, "flags": Costumes},
    "Spalding Basketball": {"title": "Spalding Basketball", "description": "Unlock all the (obtainable) Balls", "points": 10, "flags": Balls}
}

function ReachValue(address, value){
    return address >= value && prev(address) < value
}


function FlagsAddSource(flags){
    return sum_of(flags, f => prev(f)) <= length(flags) - 1 &&
        measured(sum_of(flags, f => f) == length(flags)) 
}

function FlagActivation(flag){
    logic = (flag == 0x01 && prev(flag) == 0x00)
    return logic
}

function WonRainbowHardCup(){
    logic = CurrentTournament == Rainbow && HardTournamentFlag == 0x01 && (TournamentState == WonRainbow && prev(TournamentState) == OnRainbow) && NotInTitleScreen
    return logic
}

function teamCheck(team){
    Character1 = team[0]
    Character2 = team[1]
    Character3 = team[2]
    logic = (TeamSlot1  == Character1  || TeamSlot2 == Character1 || TeamSlot3 == Character1  ) &&
    (TeamSlot1 == Character2 || TeamSlot2 == Character2 || TeamSlot3 == Character2) &&
    (TeamSlot1 == Character3 || TeamSlot2  == Character3 || TeamSlot3== Character3)
    return logic
}

//Practice Cheevos
achievement("Mario Will Never Be Ballin'", "Complete all the practice lessons", 5, trigger = NotInTitleScreen && FlagActivation(CompletePractice))
//Trophie Cheevos
for cup in GoldenCupsData{
    achievement(
        title = GoldenCupsData[cup]["title"],
        description = GoldenCupsData[cup]["description"],
        points = GoldenCupsData[cup]["points"],
        trigger = FlagActivation(GoldenCupsData[cup]["flag"]) && NotInTitleScreen
    )
}
//Specific Team Cheevos
for team in TeamsData{
    achievement(
        title = TeamsData[team]["title"],
        description = TeamsData[team]["description"],
        points = 25,
        trigger = WonRainbowHardCup() && teamCheck(TeamsData[team]["team"])
    )
}

//Dribble Race Cheevos
for race in DribbleRaceData{
    achievement(
        title = DribbleRaceData[race]["title"],
        description = DribbleRaceData[race]["description"],
        points = DribbleRaceData[race]["points"],
        trigger = FlagActivation(DribbleRaceData[race]["flag"]) && NotInTitleScreen
    )
}
//Single Unlockable Cheevos
for unlockable in SingleUnlockablesData{
    achievement(
        title = SingleUnlockablesData[unlockable]["title"],
        description = SingleUnlockablesData[unlockable]["description"],
        points = SingleUnlockablesData[unlockable]["points"],
        trigger = FlagActivation(SingleUnlockablesData[unlockable]["flag"]) && NotInTitleScreen
    )
}


//All Unlockables Cheevos
for unlockables in AllUnlockablesData{
    achievement(
        title = AllUnlockablesData[unlockables]["title"],
        description = AllUnlockablesData[unlockables]["description"],
        points = AllUnlockablesData[unlockables]["points"],
        trigger = FlagsAddSource(AllUnlockablesData[unlockables]["flags"]) && NotInTitleScreen
    )
}


//Rank Cheevos
for rank in RanksData{
    achievement(
        title = RanksData[rank]["title"],
        description = RanksData[rank]["description"],
        points = RanksData[rank]["points"],
        trigger = ReachValue(RankPoints, RanksData[rank]["value"]) && NotInTitleScreen
    )
}


//Leaderboards
leaderboard(
title = "Noble Dribble", 
description = "Who can get the best time on Dribble Race (Time Trial) Peach's Castle?", 
start = PeachCastleBestTime != prev(PeachCastleBestTime), 
cancel = !NotInTitleScreen, 
submit = always_true(), 
value = PeachCastleBestTime / 0x1000,
format="FRAMES", 
lower_is_better = true, id=1)

leaderboard(
title = "Daylight Dribble", 
description = "Who can get the best time on Dribble Race (Time Trial) Sunshine Road?", 
start = SunshineRoadBestTime != prev(SunshineRoadBestTime), 
cancel = !NotInTitleScreen, 
submit = always_true(), 
value = SunshineRoadBestTime,
format="FRAMES", 
lower_is_better = true, id=2)

leaderboard(
title = "Prismatic Dribble", 
description = "Who can get the best time on Dribble Race (Time Trial) Rainbow Road?", 
start = RainbowRoadBestTime != prev(RainbowRoadBestTime), 
cancel = !NotInTitleScreen, 
submit = always_true(), 
value = RainbowRoadBestTime,
format="FRAMES", 
lower_is_better = true, id=3)

//Rich Presence
