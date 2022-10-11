// Meteos
// #ID = 9462

// $06227C: [N-bit] Ingame Indicator
//          Bit 0 = 1 when ingame


// $064218: [32-bit] Total Power-Ons
// $064238: [N-bit] Ending Flags
//          Bit 0 = Straight Route 1
//          Bit 1 = Straight Route 2 (500.000 Points)

// $064392: [8-bit] Geolitia unlocked position
GeolitiaUnlock = byte(0x064392)
// $064396: [8-bit] Bavoom unlocked position
BavoomUnlock = byte(0x064396)
// $06439A: [8-bit] Ignius unlocked position
IgniusUnlock = byte(0x06439A)
// $06439E: [8-bit] Magmor unlocked position
MagmorUnlock = byte(0x06439E)
// $0643A2: [8-bit] Oleana unlocked position
OleanaUnlock = byte(0x0643A2)
// $0643A6: [8-bit] Polaria unlocked position
PolariaUnlock = byte(0x0643A6)
// $0643AA: [8-bit] Anasaze unlocked position
AnasazeUnlock = byte(0x0643AA)
// $0643AE: [8-bit] Forte unlocked position
ForteUnlock = byte(0x0643AE)
// $0643B2: [8-bit] Cavernus unlocked position
CavernisUnlock = byte(0x0643B2)
// $0643B6: [8-bit] Smogor unlocked position
SmogorUnlock = byte(0x0643B6)
// $0643BA: [8-bit] Mekks unlocked position
MekksUnlock = byte(0x0643BA)
// $0643BE: [8-bit] Suburbion unlocked position
SuburbionUnlock = byte(0x0643BE)
// $0643C2: [8-bit] Gravitas unlocked position
GravitasUnlock = byte(0x0643C2)
// $0643C6: [8-bit] Holozero unlocked position
HolozeroUnlock = byte(0x0643C6)
// $0643CA: [8-bit] Perilia unlocked position
PeriliaUnlock = byte(0x0643CA)
// $0643CE: [8-bit] Arborea unlocked position
ArboreaUnlock = byte(0x0643CE)
// $0643D2: [8-bit] Megadom unlocked position
MegadomUnlock = byte(0x0643D2)
// $0643D6: [8-bit] Insomnis unlocked position
InsomnisUnlock = byte(0x0643D6)
// $0643DA: [8-bit] Trinova unlocked position
TrinovaUnlock = byte(0x0643DA)
// $0643DE: [8-bit] Vortinia unlocked position
VortiniaUnlock = byte(0x0643DE)
// $0643E2: [8-bit] Hevendor unlocked position
HevendorUnlock = byte(0x0643E2)
// $0643E6: [8-bit] Aetheria unlocked position
AetheriaUnlock = byte(0x0643E6)
// $0643EA: [8-bit] Gigantis unlocked position
GigantisUnlock = byte(0x0643EA)
// $0643EE: [8-bit] Pyros unlocked position
PyrosUnlock = byte(0x0643EE)
// $0643F2: [8-bit] Sferia unlocked position
SferiaUnlock = byte(0x0643F2)
// $0643F6: [8-bit] Neuralis unlocked position
NeuralisUnlock = byte(0x0643F6)
// $0643FA: [8-bit] Florias unlocked position
FloriasUnlock = byte(0x0643FA)
// $0643FB: Literally any bit*
//          Bit 1 = Florias Available to fusion
// $0643FE: [8-bit] Globin unlocked position
GlobinUnlock = byte(0x0643FE)
// $064402: [8-bit] Stellis unlocked position
StellisUnlock = byte(0x064402)
// $064406: [8-bit] Candelor unlocked position
CandelorUnlock = byte(0x064406)
// $06440A: [8-bit] Luna=Luna unlocked position
LunaLunaUnlock = byte(0x06440A)
// $06440E: [8-bit] Meteo unlocked position
MeteoUnlock = byte(0x06440E)

PlanetPoints = 5
Planets = {
    "1": {"title": "Funky Horn", "points": PlanetPoints, "flag": BavoomUnlock, "planet": "Bavoom"},
    "2": {"title": "Cha-Cha Chop", "points": PlanetPoints, "flag": PeriliaUnlock, "planet": "Perilia"},
    "3": {"title": "Pon!", "points": PlanetPoints, "flag": AetheriaUnlock, "planet": "Aetheria"},
    "4": {"title": "Ambient Pipes", "points": PlanetPoints, "flag": CavernisUnlock, "planet": "Cavernis"},
    "5": {"title": "Drumline", "points": PlanetPoints, "flag": InsomnisUnlock, "planet": "Insomnis"},
    "6": {"title": "Indie Music Troupe", "points": PlanetPoints, "flag": FloriasUnlock, "planet": "Florias"},
    "7": {"title": "Stepped On", "points": PlanetPoints, "flag": ForteUnlock, "planet": "Forte"},
    "8": {"title": "Winter Impasse", "points": PlanetPoints, "flag": PolariaUnlock, "planet": "Polaria"},
    "9": {"title": "Aliens", "points": PlanetPoints, "flag": VortiniaUnlock, "planet": "Vortinia"},
    "10": {"title": "Inner Bubbles", "points": PlanetPoints, "flag": GlobinUnlock, "planet": "Globin"},
    "11": {"title": "Tech N' Knock", "points": PlanetPoints, "flag": SmogorUnlock, "planet": "Smogor"},
    "12": {"title": "Metallia", "points": PlanetPoints, "flag": GravitasUnlock, "planet": "Gravitas"},
    "13": {"title": "Space-Time Continuum", "points": PlanetPoints, "flag": HevendorUnlock, "planet": "Hevendor"},
    "14": {"title": "Transpace", "points": PlanetPoints, "flag": PyrosUnlock, "planet": "Pyros"},
    "15": {"title": "Hall of Horrors", "points": PlanetPoints, "flag": MagmorUnlock, "planet": "Magmor"},
    "16": {"title": "Solar Chimes", "points": PlanetPoints, "flag": CandelorUnlock, "planet": "Candelor"},
    "17": {"title": "Eurorockitude", "points": PlanetPoints, "flag": HolozeroUnlock, "planet": "Holozero"},
    "18": {"title": "The Scratch Show", "points": PlanetPoints, "flag": LunaLunaUnlock, "planet": "Luna=Luna"},
    "19": {"title": "Major Tempo", "points": PlanetPoints, "flag": MegadomUnlock, "planet": "Megadom"},
    "20": {"title": "Famicomic", "points": PlanetPoints, "flag": MekksUnlock, "planet": "Meeks"},
    "21": {"title": "Holiday Laughter", "points": PlanetPoints, "flag": StellisUnlock, "planet": "Stellis"},
    "22": {"title": "Hot Revival", "points": PlanetPoints, "flag": SuburbionUnlock, "planet": "Suburbion"},
    "23": {"title": "Bossa Cafe", "points": PlanetPoints, "flag": TrinovaUnlock, "planet": "Trinova"},
    "24": {"title": "Natural Paradise", "points": PlanetPoints, "flag": SferiaUnlock, "planet": "Sferia"},
    "25": {"title": "Speed of Magic", "points": PlanetPoints, "flag": NeuralisUnlock, "planet": "Neuralis"},
    "26": {"title": "Earth Rhythms", "points": PlanetPoints, "flag": ArboreaUnlock, "planet": "Arborea"},
    "27": {"title": "Number 5", "points": PlanetPoints, "flag": GigantisUnlock, "planet": "Gigantis"},
    "28": {"title": "Planet Meteo", "points": PlanetPoints, "flag": MeteoUnlock, "planet": "Meteo"},
}
// $064410: [N-bit] Item Unlocks
//          Bit 0 = Bomb
//          Bit 1 = Smart Bomb
//          Bit 2 = Driller Bomb
//          Bit 3 = Row Bomb
//          Bit 4 = Cross Bomb
//          Bit 5 = X Bomb
//          Bit 6 = Rocket
//          Bit 7 = Super Rocket
Bomb = bit0(0x064410)
SmartBomb = bit1(0x064410)
DrillerBomb = bit2(0x064410)
RowBomb = bit3(0x064410)
CrossBomb = bit4(0x064410)
XBomb = bit5(0x064410)
Rocket = bit6(0x064410)
SuperRocket = bit7(0x064410)
// $064411: Bit 0 = Fury Hammer
//          BIt 1 = War Axe
//          Bit 2 = Smoke Screen
//          BIt 3 = Smoke Line
//          Bit 4 = Mini Weight
//          BIt 5 = Heavy Weight
//          Bit 6 = Eraser
//          Bit 7 = Speeder Lock
FuryHammer = bit0(0x064411)
WarAxe = bit1(0x064411)
SmokeScreen = bit2(0x064411)
SmokeLine = bit3(0x064411)
MiniWeight = bit4(0x064411)
HeavyWeight = bit5(0x064411)
Eraser = bit6(0x064411)
SpeederLock = bit7(0x064411)
Items = [Bomb, SmartBomb, DrillerBomb, RowBomb, CrossBomb, XBomb, Rocket, SuperRocket, FuryHammer, WarAxe, SmokeScreen, SmokeLine, MiniWeight, HeavyWeight, Eraser, SpeederLock]


// $06441E: [8-bit] Planet Registry
//          0x00 = Geolitia
//          0x01 = Bavoom
//          0x03 = Magmor
//          0x02 = Ignius
//          0x04 = Oleana
//          0x05 = Polaria
//          0x06 = Anasaze
//          0x07 = Forte
//          0x08 = Cavernis
//          0x09 = Smogor
//          0x0a = Mekks
//          0x0b = Suburbion
//          0x0c = Gravitas
//          0x0d = Holozero
//          0x0e = Perilia
//          0x0f = Arbolea
//          0x10 = Megadom
//          0x11 = Insomnis
//          0x12 = Trinova
//          0x13 = Vortinia
//          0x14 = Hevendor
//          0x15 = Aetheria
//          0x16 = Gigantis
//          0x17 = Pyros
//          0x18 = Sferia
//          0x19 = Neuralis
//          0x1a = Florias
//          0x1b = Globin
//          0x1c = Stellis
//          0x1d = Candelor
//          0x1e = Luna=Luna
//          0x1f = Meteo
CurrentPlanet = byte(0x06441E)
Geolitia = 0x00
Bavoom = 0x01
Magmor = 0x03
Ignius = 0x02
Oleana = 0x04
Polaria = 0x05
Anasaze = 0x06
Forte = 0x07
Cavernis = 0x08
Smogor = 0x09
Mekks = 0x0a
Suburbion = 0x0b
Gravitas = 0x0c
Holozero = 0x0d
Perilia = 0x0e
Arbolea = 0x0f
Megadom = 0x10
Insomnis = 0x11
Trinova = 0x12
Vortinia = 0x13
Hevendor = 0x14
Aetheria = 0x15
Gigantis = 0x16
Pyros = 0x17
Sferia = 0x18
Neuralis = 0x19
Florias = 0x1a
Globin = 0x1b
Stellis = 0x1c
Candelor = 0x1d
LunaLuna = 0x1e
Meteo = 0x1f

DelugePlanets = {
    "1": {"flag": Trinova, "planet": "Trinova"},
    "2": {"flag": Florias, "planet": "Florias"},
    "3": {"flag": Bavoom, "planet": "Bavoom"},
    "4": {"flag": Globin, "planet": "Globin"},
    "5": {"flag": Insomnis, "planet": "Insomnis"},
    "6": {"flag": LunaLuna, "planet": "Luna=Luna"},
    "7": {"flag": Arbolea, "planet": "Arbolea"},
    "8": {"flag": Neuralis, "planet": "Neuralis"},
    "9": {"flag": Stellis, "planet": "Stellis"},
    "10": {"flag": Megadom, "planet": "Megadom"},
    "11": {"flag": Suburbion, "planet": "Suburbion"},
    "12": {"flag": Anasaze, "planet": "Anasaze"},
    "13": {"flag": Oleana, "planet": "Oleana"},
    "14": {"flag": Sferia, "planet": "Sferia"},
}

SimplePlanets = {
    "1": {"flag": Smogor, "planet": "Smogor"},
    "2": {"flag": Gravitas, "planet": "Gravitas"},
    "3": {"flag": Gigantis, "planet": "Gigantis"},
    "4": {"flag": Polaria, "planet": "Polaria"},
    "5": {"flag": Perilia, "planet": "Perilia"},
    "6": {"flag": Forte, "planet": "Forte"},
    "7": {"flag": Magmor, "planet": "Magmor"},
    "8": {"flag": Pyros, "planet": "Pyros"},
    "9": {"flag": Cavernis, "planet": "Cavernis"},
    "10": {"flag": Candelor, "planet": "Candelor"},
    "11": {"flag": Mekks, "planet": "Mekks"},
}
// $064420: [N-bit] Sound unlock flags
//          Bit 0 = Geolitia Set (Bravo)
//          Bit 1 = Bavoom Set (Funky Horn)
//          Bit 2 = Ignus Set (Rocking Spirit)
//          Bit 3 = Magmor Set (Hall of Horrors)
//          Bit 4 = Oleana Set (Shinin')
//          Bit 5 = Polaria Set (Winter Impasse)
//          BIt 6 = Anasaze Set (Wild West Cowboy)
//          Bit 7 = Forte Set (Stepped On)
GeolitiaSet = bit0(0x064420)
BavoomSet = bit1(0x064420)
IgnusSet = bit2(0x064420)
MagmorSet = bit3(0x064420)
OleanaSet = bit4(0x064420)
PolariaSet = bit5(0x064420)
AnasazeSet = bit6(0x064420)
ForteSet = bit7(0x064420)
// $064421: Bit 0 = Cavernis Set (Ambient Pipes)
//          BIt 1 = Smogor Set (Tech N Knock)
//          Bit 2 = Mekks Set (Famicomic)
//          Bit 3 = Suburbion Set (Hot Revival)
//          Bit 4 = Gravitas Set (Metallia)
//          Bit 5 = Holozero Set (Eurorockitude)
//          Bit 6 = Perilia Set (Cha-Cha Chop)
//          Bit 7 = Arborea Set (Earth Rhythms)
CavernisSet = bit0(0x064421)
SmogorSet = bit1(0x064421)
MekksSet = bit2(0x064421)
SuburbionSet = bit3(0x064421)
GravitasSet = bit4(0x064421)
HolozeroSet = bit5(0x064421)
PeriliaSet = bit6(0x064421)
ArboreaSet = bit7(0x064421)
// $064422: Bit 0 = Megadom Set (Major Tempo)
//          Bit 1 = Insomnis Set (Drumline)
//          Bit 2 = Trinova Set (Bossa Cafe)
//          Bit 3 = Vortinia Set (Aliens)
//          Bit 4 = Hevendor Set (Space-Time Continuum)
//          Bit 5 = Aetheria Set (Pon!)
//          Bit 6 = Gigantis Set (Number 5)
//          Bit 7 = Pyros Set (Transpace)
MegadomSet = bit0(0x064422)
InsomnisSet = bit1(0x064422)
TrinovaSet = bit2(0x064422)
VortiniaSet = bit3(0x064422)
HevendorSet = bit4(0x064422)
AetheriaSet = bit5(0x064422)
GigantisSet = bit6(0x064422)
PyrosSet = bit7(0x064422)
// $064423: Bit 0 = Sferia Set (Natural Paradise)
//          Bit 1 = Neuralis Set (Speed of Magic)
//          Bit 2 = Florias Set (Indie Music Troupe)
//          Bit 3 = Globin Set (Inner Bubbles)
//          Bit 4 = Stellis Set (Holiday Laughter)
//          Bit 5 = Candelor Set (Solar Chimes)
//          Bit 6 = Luna=Luna Set (The Scratch Show)
//          Bit 7 = Meteo Set (Planet Meteo)
SferiaSet = bit0(0x064423)
NeuralisSet = bit1(0x064423)
FloriasSet = bit2(0x064423)
GlobinSet = bit3(0x064423)
StellisSet = bit4(0x064423)
CandelorSet = bit5(0x064423)
LunaLunaSet = bit6(0x064423)
MeteoSet = bit7(0x064423)
// $064424: Bit 0 = Opening (The Last Planet)
//          Bit 1 = Menu (The Path You Travel)
//          Bit 2 = Fusion Room (How Many Planets?)
//          Bit 3 = Star Trip (Destiny)
//          Bit 4 = Results (Tranquility Renewed)
//          Bit 5 = Ending 1 (Denouement)
//          Bit 6 = Ending 2 (Repose)
//          Bit 7= Ending 3 (The Endless Waltz)
OpeningSet = bit0(0x064424)
MenuSet = bit1(0x064424)
FusionSet = bit2(0x064424)
StarSet = bit3(0x064424)
ResultsSet = bit4(0x064424)
Ending1Set = bit5(0x064424)
Ending2Set = bit6(0x064424)
Ending3Set = bit7(0x064424)
// $064425: Bit 0 = Meteos Credits (End of the Universe)
CreditsSet = bit0(0x064425)

SongFlags = [
GeolitiaSet,
BavoomSet,
IgnusSet,
MagmorSet,
OleanaSet,
PolariaSet,
AnasazeSet,
ForteSet,
CavernisSet,
SmogorSet,
MekksSet,
SuburbionSet,
GravitasSet,
HolozeroSet,
PeriliaSet,
ArboreaSet,
MegadomSet,
InsomnisSet,
TrinovaSet,
VortiniaSet,
HevendorSet,
AetheriaSet,
GigantisSet,
PyrosSet,
SferiaSet,
NeuralisSet,
FloriasSet,
GlobinSet,
StellisSet,
CandelorSet,
LunaLunaSet,
MeteoSet,
OpeningSet,
MenuSet,
FusionSet,
StarSet,
ResultsSet,
Ending1Set,
Ending2Set,
Ending3Set,
CreditsSet
]
// $065D10: [N-bit] Simple Rules
//          Bit 0 = If 0 Stock, if 1 Time
SimpleStockOn = bit0(0x065D10) == false
// $065D11: [8-bit] Simple Stocks
SimpleStocks = byte(0x065D11)
// $065D13: [8-bit] Simple Difficulty
//          0x00 = Simple
//          0x01 = Standard
//          0x02 = Difficult
//          0x03 = Very Difficult
//          0x04 = Brutally Hard
SimpleDifficulty = byte(0x065D13)
BrutallyHard = 0x04
// $065D14: [8-bit] Simple CPU Level
//          0x00 = Weak
//          0x01 = Average
//          0x02 = Strong
//          0x03 = Powerful
//          0x04 = Overwhelming
SimpleCPULevel = byte(0x065D14)
Overwhelming = 0x04
// $065D15: [8-bit] Simple Team
//          0x00 = Red
//          0x01 = Blue
//          0x02 = Yellow
//          0x03 = Green
SimpleTeam = byte(0x065D15)
Red = 0x00
Blue = 0x02
Green = 0x03
// $065D16: [8-bit] Last Saved Star Trip Difficulty
StarTripDifficulty = byte(0x065D16)
// $065D17: [8-bit] Last Saved Star Trip Mode
//          0x00 = Straight
//          0x01 = Branch
//          0x02 = Multi
StarTripMode = byte(0x065D17)
Straight = 0x00
Branch = 0x01
Multi = 0x02
// $065D18: [8-bit] Last Saved Time War Mode
//          0x00 = 2:00 Time War
//          0x01 = 5:00 Time War
//          0x02 = 100-Meteo War
//          0x03 = 1000 Meteo War
TimeWarMode = byte(0x065D18)
TwoHundredTimeWar = 0x00
FiveHundredTimeWar = 0x01
HundredMeteoWar = 0x02
ThousandMeteoWar = 0x03
// $065D21: [8-bit] Ingame Mode
//          0x06 = Simple
//          0x07 = Star Trip
//          0x08 = Time War
//          0x09 = Deluge
//          0x0a = Tutorial
IngameMode = byte(0x065D21)
Simple = 0x06
StarTrip = 0x07
TimeWar = 0x08
Deluge = 0x09
//0x065d15 [8-bit] Simple Team
SimpleTeam = byte(0x065d15)

// $065D24: [N-bit]
//          Bit 0 = First CPU On Flag
SimpleFirstCPUOn = bit0(0x065D24) == true
// $065D25: [8-bit] First CPU planet
// $065D26: [8-bit] Simple 1st CPU Team
//          0x00 = Red
//          0x01 = Blue
//          0x02 = Yellow
//          0x03 = Green
//          0x04 = Null
SimpleFirstCPUTeam = byte(0x065D26)
// $065D28: [N-bit]
//          Bit 0 = Second CPU On Flag
SimpleSecondCPUOn = bit0(0x065D28) == true
// $065D29: [8-bit] Second CPU planet
// $065D2A: [8-bit] Simple 2nd CPU Team
//          0x00 = Red
//          0x01 = Blue
//          0x02 = Yellow
//          0x03 = Green
SimpleSecondCPUTeam = byte(0x065D2A)
// $065D2C: [N-bit]
//          Bit 0 = Third CPU On Flag
// $065D2D: [8-bit] Third CPU planet
SimpleThirdCPUOn = bit0(0x065D2C) == true
// $065D2E: [8-bit] Simple 3rd CPU Team
//          0x00 = Red
//          0x01 = Blue
//          0x02 = Yellow
//          0x03 = Green
SimpleThirdCPUTeam = byte(0x065D2E)
// $0669E8: [N-bit]
//          Bit 0 = True Ingame flag (Just when puzzling)
InGame = bit0(0x0669E8)
// $094CF4: pointer to ingame stuff
//          +17D260
// $2117c0 [32-bit] Score for Time War
TimeWarScore = dword(0x2117c0)
// $21218C: [32-bit] Score for Meteo War
MeteoWarScore = dword(0x21218C)
// $3BFE10: [24-bit] Pointer
//          +15E0 = Score on Star Trip
// $3BFE28: winning indication?
// $3BFE41: could be used as winning indication when 1
// $3BFE74: [8-bit] Menu ID
//          0x00 = Home
//          0x01 = Meteos
//          0x02 = Wireless
//          0x03 = Fusion
//          0x04 = Options
//          0x05 = Extras
//          0x06 = Simple
//          0x07 = Star Trip
//          0x08 = Time War
//          0x09 = Deluge
//          0x0a = Tutorial
//          0x0b = Versus
//          0x0c = DS Download Play
//          0x0d = Profile
//          0x0e = Fusion - Planets
//          0x0f = Fusion - Items
//          0x10 = Fusion - Rare Metals
//          0x11 = Fusion - Sounds
//          0x12 = Planet Registry
//          0x13 = Item Switch
//          0x14 = Hand Choice
//          0x15 = Sound Balance
//          0x16 = Erase Data
//          0x17 = Sounds
//          0x18 = Stats
//          0x19 = Demo Download
// $3BFEF0: [8-bit] Current star trip mode
//          0x00 = Straight
//          0x01 = Multi
//          0x02 = Branch
// $3BFEFC: [8-bit] Current Progress
//          Straight
//          0x07 = Meteo
//          Multi
//          0x08 = Meteo

// $3BFF50: [Float] Timer for Meteo War and Deluge (?)
TimerMeteoWar = float(0x3BFF50)
TimerDeluge = float(0x3BFF50)
// $3BFF69: [8-bit] Ending
//          0xfd = Final Words
//          0xff = Credits
EndingStep = byte(0x3BFF69)
FinalWords = 0xfd
Credits = 0xff
// $3BFF80: [8-bit] Current Difficulty for Star Trip
// $3BFF83: [N-bit]
//          Bit 1 = Indication for finishing Star Trip
FinishedStarTrip = bit1(0x3BFF83) == true
// $3BFF84: [8-bit] Current Ending Star Trip
//          0x00 = Straight Route 1
//          0x01 = Straight Route 2
//          0x02 = Branch Route 1
//          0x03 = Branch Route 2
//          0x04 = Branch Route 3
//          0x05 = Branch Route 4
//          0x06 = Branch Route 5
//          0x07 = Branch Route 6
//          0x08 = Branch Route 7
//          0x09 = Multi Route 1?
//          0x0a = Multi Route 2?
//          0x0b = Multi Route 3?
CurrentEnding = byte(0x3BFF84)
StraightRoute1 = 0x00
StraightRoute2 = 0x01
BranchRoute1 = 0x02
BranchRoute2 = 0x03
BranchRoute3 = 0x04
BranchRoute4 = 0x05
BranchRoute5 = 0x06
BranchRoute6 = 0x07
BranchRoute7 = 0x08
MultiRoute3 = 0x09
MultiRoute2 = 0x0a
MultiRoute1 = 0x0b
//0x3bff21 
//[8-bit] Simple player ending game place, used for winning indicaiton
//0xff = Nothing
//0x01 = First
//0x02 = Second
SimplePlace = byte(0x3bff21)
First = 0x01
Second = 0x02
Nothing = 0xff


Endings = {
    "1": {"title": "Invisible Bonds", "description": "[Star Trip] See the ending of the Straight Route", "points": 10, "flag": StraightRoute1, "mode": Straight},
    "2": {"title": "A Miracle Reborn", "description": "[Star Trip] See the secret ending ot the Straight Route", "points": 10, "flag": StraightRoute2, "mode": Straight},
    "3": {"title": "A Spiritual Legacy", "description": "[Star Trip] See the 1st ending of the Branch Route", "points": 10, "flag": BranchRoute1, "mode": Branch},
    "4": {"title": "A Sport is Born", "description": "[Star Trip] See the 2nd ending of the Branch Route", "points": 10, "flag": BranchRoute2, "mode": Branch},
    "5": {"title": "The Galaxy Embarks", "description": "[Star Trip] See the 3rd ending of the Branch Route", "points": 10, "flag": BranchRoute3, "mode": Branch},
    "6": {"title": "The New Utopia", "description": "[Star Trip] See the 4th ending of the Branch Route", "points": 10, "flag": BranchRoute4, "mode": Branch},
    "7": {"title": "The Galactic Fork", "description": "[Star Trip] See the 5th ending of the Branch Route", "points": 10, "flag": BranchRoute5, "mode": Branch},
    "8": {"title": "In the Angel's Halo", "description": "[Star Trip] See the 6th ending of the Branch Route", "points": 10, "flag": BranchRoute6, "mode": Branch},
    "9": {"title": "A New Universe", "description": "[Star Trip] See the 7th ending of the Branch Route", "points": 10, "flag": BranchRoute7, "mode": Branch},
    "10": {"title": "The Limitless Eye", "description": "[Star Trip] See the 1st ending of the Multi Route ", "points": 10, "flag": MultiRoute1, "mode": Multi},
    "11": {"title": "The Great Battle", "description": "[Star Trip] See the 2nd ending of the Multi Route", "points": 10, "flag": MultiRoute2, "mode": Multi},
    "12": {"title": "The Ascent", "description": "[Star Trip] See the 3rd ending of the Multi Route", "points": 10, "flag": MultiRoute3, "mode": Multi}
}

function EndingLogic(ending, mode){
    logic = IngameMode == StarTrip && 
    StarTripMode == mode && 
    FinishedStarTrip && 
    EndingStep == FinalWords && 
    prev(EndingStep) != FinalWords&&
    CurrentEnding == ending
    return logic 
}

function EndingLogic2(mode){
    logic = IngameMode == StarTrip && 
    StarTripMode == mode && 
    FinishedStarTrip && 
    EndingStep == FinalWords && 
    prev(EndingStep) != FinalWords
    return logic 
}

function UnlockPlanet(planet){
    logic = prev(GeolitiaUnlock) != 0x00 && planet != 0 && prev(planet) == 0
    return logic
}

function FlagsAddSource(flags){
    return sum_of(flags, f => prev(f)) <= length(flags) - 1 &&
        measured(sum_of(flags, f => f) == length(flags)) 
}
//0x064392-0x06440E
function AddSourceCount8bitprev(RangeStart, RangeEnd){
    count = 0
    for address in range(RangeStart, RangeEnd, 4){
        count = count + (prev(byte(address)) / prev(byte(address)))
    }
    return count
}

function AddSourceCount8bit(RangeStart, RangeEnd){
    count = 0
    for address in range(RangeStart, RangeEnd, 4){
        count = count + (byte(address) / byte(address))
    }
    return count
}

function FlagsAddSourceValue(flags, value){
    return sum_of(flags, f => prev(f)) <= value - 1 &&
        measured(sum_of(flags, f => f) == value) 
}

function AllPlanets(){
    array = []
    logic = always_true()
    for planet in Planets{
        array_push(array, Planets[planet]["flag"])
    }
    return array
}

function DelugeLogic(planet){
    logic = 
    InGame == true &&
    IngameMode == Deluge &&
    CurrentPlanet == planet &&
    trigger_when(TimerDeluge >= 18005) &&
    prev(TimerDeluge) < 18005
    return logic
}

function SimpleLogic(planet){
    logic = 
    InGame == true &&
    IngameMode == Simple &&
    CurrentPlanet == planet &&
    SimpleStockOn &&
    SimpleStocks == 1 &&
    SimpleDifficulty == BrutallyHard &&
    SimpleCPULevel == Overwhelming &&
    SimpleFirstCPUOn &&
    SimpleSecondCPUOn &&
    SimpleThirdCPUOn &&
    SimpleTeam != SimpleFirstCPUTeam &&
    SimpleTeam != SimpleSecondCPUTeam &&
    SimpleTeam != SimpleThirdCPUTeam &&
    SimpleFirstCPUTeam != SimpleSecondCPUTeam &&
    SimpleSecondCPUTeam != SimpleThirdCPUTeam &&
    SimpleThirdCPUTeam != SimpleFirstCPUTeam &&
    prev(SimplePlace) == Nothing &&
    trigger_when(SimplePlace == First)
    return logic
}

//Ending Cheevos
for ending in Endings{
    achievement(
        title = Endings[ending]["title"],
        description = Endings[ending]["description"],
        points = Endings[ending]["points"],
        trigger = EndingLogic(Endings[ending]["flag"], Endings[ending]["mode"])
    )
}

//Planet Cheevos
for planet in Planets{
    achievement(
        title = Planets[planet]["title"],
        description = "[Fusion] Fuse the planet " + Planets[planet]["planet"],
        points = Planets[planet]["points"],
        trigger = UnlockPlanet(Planets[planet]["flag"]) && prev(GeolitiaUnlock) != 0
    )
}

achievement(
    title = "Intergalactic Friendship",
    description = "[Fusion] Fuse every planet!" ,
    points = 10,
    trigger = 
    AddSourceCount8bitprev(0x064392,0x06440E) <= 31 &&
    measured(AddSourceCount8bit(0x064392,0x06440E) == 32)   
    && prev(GeolitiaUnlock) != 0
)

//Item Cheevos
achievement(
    title = "Melee Items",
    description = "[Fusion] Fuse 5 items" ,
    points = 5,
    trigger = FlagsAddSourceValue(Items, 5) && prev(GeolitiaUnlock) != 0
)

achievement(
    title = "Brawl Items",
    description = "[Fusion] Fuse 10 items" ,
    points = 10,
    trigger = FlagsAddSourceValue(Items, 10) && prev(GeolitiaUnlock) != 0
)

achievement(
    title = "Ultimate Items",
    description = "[Fusion] Fuse every item!" ,
    points = 10,
    trigger = FlagsAddSource(Items) && prev(GeolitiaUnlock) != 0
)
//Sound Cheevos
achievement(
    title = "Repose",
    description = "[Fusion] Fuse 10 sounds" ,
    points = 5,
    trigger = FlagsAddSourceValue(SongFlags, 10) && prev(GeolitiaUnlock) != 0
)

achievement(
    title = "Denouement",
    description = "[Fusion] Fuse 20 sounds" ,
    points = 10,
    trigger = FlagsAddSourceValue(SongFlags, 20) && prev(GeolitiaUnlock) != 0
)

achievement(
    title = "Tranquility Renewed",
    description = "[Fusion] Fuse 30 sounds" ,
    points = 10,
    trigger = FlagsAddSourceValue(SongFlags, 30) && prev(GeolitiaUnlock) != 0
)

achievement(
    title = "The Endless Waltz",
    description = "[Fusion] Fuse every sound!" ,
    points = 10,
    trigger = FlagsAddSource(SongFlags) && prev(GeolitiaUnlock) != 0
)
//Time War Challenges
achievement(
    title = "Geolitia Challenge",
    description = "[Time War] Get a High Score of 40000 in 2:00 Time War",
    points = 10,
    trigger = 
    InGame == true &&
    IngameMode == TimeWar &&
    TimeWarMode == TwoHundredTimeWar &&
    TimeWarScore >= 40000 && prev(TimeWarScore) < 40000
)

achievement(
    title = "Holozero Challenge",
    description = "[Time War] Get a High Score of 100000 in 5:00 Time War",
    points = 25,
    trigger = 
    InGame == true &&
    IngameMode == TimeWar &&
    TimeWarMode == FiveHundredTimeWar &&
    TimeWarScore >= 100000 && prev(TimeWarScore) < 100000
)

achievement(
    title = "Ignius Challenge",
    description = "[Time War] Clear 100-Meteo War in less than 10 seconds",
    points = 25,
    trigger = 
    InGame == true &&
    IngameMode == TimeWar &&
    TimeWarMode == HundredMeteoWar &&
    trigger_when(MeteoWarScore >= 100) &&
    prev(MeteoWarScore) < 100 &&
    TimerMeteoWar < 1005
)

achievement(
    title = "Hevendor Challenge",
    description = "[Time War] Clear 1000-Meteo War in less than 3 minutes ",
    points = 25,
    trigger = 
    InGame == true &&
    IngameMode == TimeWar &&
    TimeWarMode == ThousandMeteoWar &&
    trigger_when(MeteoWarScore >= 1000) &&
    prev(MeteoWarScore) < 1000 &&
    TimerMeteoWar < 18005
)
//Deluge Challenges
for planet in DelugePlanets{
     achievement(
        title = DelugePlanets[planet]["planet"] + " Challenge",
        description = "[Deluge] Survive 3 minutes with " + DelugePlanets[planet]["planet"],
        points = 10,
        trigger = DelugeLogic(DelugePlanets[planet]["flag"])
    )
}
// Simple Challenges
for planet in SimplePlanets{
     achievement(
        title = SimplePlanets[planet]["planet"] + " Challenge",
        description = "[Simple] Win a game with 1 Stock, in Brutally Hard Difficulty, vs 3 Overwhelming CPUs in different teams with " + SimplePlanets[planet]["planet"],
        points = 10,
        trigger = SimpleLogic(SimplePlanets[planet]["flag"])
    )
}
//Star Trip Challenges
achievement(
    title = "Vortinia Challenge",
    description = "[Star Trip] Reach the secret ending of Straight Route in Brutally Hard Difficulty with Vortinia",
    points = 25,
    trigger = 
    StarTripDifficulty == BrutallyHard &&
    CurrentPlanet == Vortinia &&
    EndingLogic2(Straight) && CurrentEnding == StraightRoute2
)

achievement(
    title = "Aetheria Challenge",
    description = "[Star Trip] Reach the ending of Branch Route in Brutally Hard Difficulty with Aetheria",
    points = 25,
    trigger = 
    StarTripDifficulty == BrutallyHard &&
    CurrentPlanet == Aetheria &&
    EndingLogic2(Branch) && (CurrentEnding == BranchRoute1 || CurrentEnding == BranchRoute2 || CurrentEnding == BranchRoute3 || 
    CurrentEnding == BranchRoute4 || CurrentEnding == BranchRoute5 || CurrentEnding == BranchRoute6 || CurrentEnding == BranchRoute7)
)

achievement(
    title = "Meteo Challenge",
    description = "[Star Trip] Reach the true ending of Multi Route in Brutally Hard Difficulty with Meteo",
    points = 50,
    trigger = 
    StarTripDifficulty == BrutallyHard &&
    CurrentPlanet == Meteo &&
    EndingLogic2(Multi) && CurrentEnding == MultiRoute1
)
//Leaderboards
leaderboard("2:00 Time War", "High Score", 
 start = InGame == true &&
    IngameMode == TimeWar &&
    TimeWarMode == TwoHundredTimeWar,
 cancel = always_false(),
 submit = InGame == false,
 value = TimeWarScore,
 format="VALUE",
 lower_is_better=false)
 
 leaderboard("5:00 Time War", "High Score", 
 start = InGame == true &&
    IngameMode == TimeWar &&
    TimeWarMode == FiveHundredTimeWar,
 cancel = always_false(),
 submit = InGame == false,
 value = TimeWarScore,
 format="VALUE",
 lower_is_better=false)
 
  leaderboard("100-Meteo War", "Fastest time", 
 start = InGame == true &&
    IngameMode == TimeWar &&
    TimeWarMode == HundredMeteoWar,
 cancel = InGame == false,
 submit = MeteoWarScore >= 100,
 value = TimerMeteoWar,
 format="MILLISECS",
 lower_is_better=true)
 
  leaderboard("1000-Meteo War", "Fastest time", 
 start = InGame == true &&
    IngameMode == TimeWar &&
    TimeWarMode == ThousandMeteoWar,
 cancel = InGame == false,
 submit = MeteoWarScore >= 100,
 value = TimerMeteoWar,
 format="MILLISECS",
 lower_is_better=true)