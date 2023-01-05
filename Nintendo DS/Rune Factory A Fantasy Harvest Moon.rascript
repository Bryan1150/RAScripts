// Rune Factory: A Fantasy Harvest Moon
// #ID = 12704

//0x145bc2 Event Flags
//Bit 6 = Defeated Monster at start (Useful for save protection)
StartingMonster = bit6(0x145bc2)
//0x145be2 Event Flags
FishingRodEvent = bit0(0x145be2) //Bit0 = Get Fishing Rod (Conversation with Sabrina on the pier in the beach where she gives the fishing rod)
AxeEvent = bit5(0x145be1)//0x145be1 Bit5 = Got Cheap Axe from Bianca and Tabatha
SickleEvent = bit4(0x145be1)//Bit4 = Got Cheap Sickle from Rosetta
HammerEvent = bit6(0x145be1)//Bit6 = Got Cheap Hammer from Leo

//Craft Flags
//Level 2
IronSickle = bit3(0x150c3a)
TinWaterpot = bit4(0x150c3a)
SturdyHoe = bit5(0x150c3a)
BambooRod = bit6(0x150c3a)
IronHammer = bit7(0x150c3a)
ChoppingAxe = bit0(0x150c3b)
//Level 3
QualitySickle = bit4(0x150c3d)
LionWaterpot = bit5(0x150c3d)
SeasonedHoe = bit7(0x150c3d)
WillowRod = bit1(0x150c3e)
SilverHammer = bit2(0x150c3e)
LumberAxe = bit3(0x150c3e)
//Level 4
RainbowWaterpot = bit6(0x150c3d)
ShinyHoe = bit0(0x150c3e)
SuperSickle = bit7(0x150c40)
FamousRod = bit2(0x150c41)
GoldenHammer = bit3(0x150c41)
MountainAxe = bit4(0x150c41)

Level4Tools = [RainbowWaterpot, ShinyHoe, SuperSickle, FamousRod, GoldenHammer, MountainAxe]
//Level 5
JoyWaterpot = bit0(0x150c41)
BlessedHoe = bit1(0x150c41)
LegendSickle = bit2(0x150c43)
SacredRod = bit3(0x150c43)
PlatinumHammer = bit4(0x150c43)
MiracleAxe = bit5(0x150c43)
//Level 2 Leo Tool Address
LeoLevelTwo = byte(0x145ada)
LeoLevelThree = byte(0x145adb)
DaysLeo = byte(0x145ad9)
HoeLeo = 0x02
Sickle = 0x03
Waterpot = 0x04
Hammer = 0x05
Axe = 0x06
RodLeo = 0x07

//Cave Passes
CarmiteCave = bit2(0x145bd9)
TorosCave = bit3(0x145bd9)
ClemensCave = bit4(0x145bd9)
MountGigant = bit5(0x145bd9)
MistyBloomCave = bit6(0x145bd9)
KasimirRuins = bit7(0x145bd9)
DanannCave = bit0(0x145bda)
GreedCave = bit1(0x145bda)

//Bosses
GreaterDaemon = bit6(0x145bcb)
Chimera = bit3(0x145bcc)
Rafflesia = bit0(0x145bdb) 
Grimoa = bit4(0x145bdb)
Siren = bit7(0x145bdb)
Golum = bit2(0x145bdc)
BattleTank = bit5(0x145bdc)
Grimoire = bit6(0x145bff)

//Monster Huts
Hut1 = byte(0x150c4a)
Hut2 = byte(0x150cf6)
Hut3 = byte(0x150da2)
Hut4 = byte(0x150e4e)
Hut5 = byte(0x150efa)
Hut6 = byte(0x150fa6)
Hut7 = byte(0x151052)
NotBuilt = 0x00
Built = 0x01
TwoFloors = 0x02
ThreeFloors = 0x03

//Monster Tools
FriendshipGlove = bit6(0x145be2)
//0x145bf0 Bit 4 = Basquet from Neumann
//Bit 5 = Brush from Felicity
//Bit 6 = Shears from Camus
//Bit 7 = Milker from Jasper
Basquet = bit4(0x145bf0)
Brush = bit5(0x145bf0)
Shears = bit6(0x145bf0)
Milker = bit7(0x145bf0)
MonsterTools = [FriendshipGlove, Basquet, Brush, Shears, Milker]

//Monsters
FirstMonsterID = 0x150c50
LastMonsterID = 0x1510f2
FirstMonsterHappiness = 0x150c4e
LastMonsterHappiness = 0x1510f0
NoMonster = 0xff
Hornet = 0x15
QueenBee = 0x16
Woolly = 0x3f
Peekamoo = 0x22
Cockadoodle = 0x24

//Carmite Cave Monsters
Orc = 0x00
OrcArcher = 0x03
GoblinArcher = 0x07
Goblin = 0x05
Ant = 0x13
Hornet = 0x15
Chirori = 0x25
CarmiteCaveMonsters = [Orc, OrcArcher, GoblinArcher, Goblin, Ant, Hornet, Chirori]

//Toros Cave
Demon = 0x0a
LittleMage = 0x0c
Slime = 0x39
Woolly = 0x3f
Ghost = 0x32
Shindra  = 0x30
Reeno = 0x3e
SilverWolf = 0x1f
TorosCaveMonsters = [Demon, LittleMage, Slime, Woolly, Ghost, Shindra, Reeno, SilverWolf]

//Clemens Cave
Troll = 0x0f
Titan = 0x10
HammerTroll = 0x11
Minotaur = 0x09
KillerAnt = 0x14
QueenBee = 0x16
Beetle = 0x19
Ignis = 0x2f
ClemensCaveMonsters = [Troll, Titan, HammerTroll, Minotaur, KillerAnt, QueenBee, Beetle, Ignis]

//Mt. Giant
Buffalo   = 0x21
Buffamo   = 0x22
Weegull   = 0x23
Kokehoho   = 0x24
Fuwori   = 0x26
Flower   = 0x27
BigMush   = 0x28
Spider   = 0x17
MtGiantMonsters = [Buffalo, Buffamo, Weegull, Kokehoho, Fuwori, Flower, BigMush, Spider]

//Misty Bloom
HighOrc   = 0x01
OrcHunter   = 0x04
TrickyMush   = 0x29
SkyFish   = 0x2c
Hitodama   = 0x31
Scorpion   = 0x1b
ShadowPanther   = 0x1d 
Shira = 0x2d
MistyBloomMonsters = [HighOrc, OrcHunter, TrickyMush, SkyFish, Hitodama, Scorpion, ShadowPanther, Shira]

//Kasimir Ruins
MonsterBox  = 0x35
PackunBox  = 0x36
Fairy  = 0x37
DarkSlime  = 0x3a
Gigantus  = 0x12
HellSpider  = 0x18
Heracros  = 0x1a
KasimirRuinsMonsters = [MonsterBox, PackunBox, Fairy, DarkSlime, Gigantus, HellSpider, Heracros]

//Danann Cave
Leafball  = 0x2a
Plantcore  = 0x2b
ArchDemon  = 0x0b
LittleWizard  = 0x0d
Necro  = 0x33
MiniGolem  = 0x3c
BloodPanther  = 0x1e
HunterWolf  = 0x20
Tortoise  = 0x2e
DanannCaveMonsters = [Leafball, Plantcore, ArchDemon, LittleWizard, Necro, MiniGolem, BloodPanther, HunterWolf, Tortoise]

//Greed Cave
OrcLord  = 0x02
GoblinMaster  = 0x06
GoblinSniper  = 0x08
DeathStalker  = 0x1c
LittleEmperor  = 0x0e
Faust  = 0x34
MiniDragon  = 0x3d
Hades  = 0x38
GreedCaveMonsters = [OrcLord, GoblinMaster, GoblinSniper, DeathStalker, LittleEmperor, Faust, MiniDragon, Hades]

//Slots
HandSlot = 0x1a34b5
HandSlotItemType = 
bit2(HandSlot) + 
bit3(HandSlot) * 2 +
bit4(HandSlot) * 4 +
bit5(HandSlot) * 8 +
bit6(HandSlot) * 16 +
bit7(HandSlot) * 32 

LastItemGiven = 0x145af6
LastItemGivenType = 
bit2(LastItemGiven) + 
bit3(LastItemGiven) * 2 +
bit4(LastItemGiven) * 4 +
bit5(LastItemGiven) * 8 +
bit6(LastItemGiven) * 16 +
bit7(LastItemGiven) * 32 

WeaponSlot = 0x1a34a1
WeaponSlotType = 
bit2(WeaponSlot) + 
bit3(WeaponSlot) * 2 +
bit4(WeaponSlot) * 4 +
bit5(WeaponSlot) * 8 +
bit6(WeaponSlot) * 16 +
bit7(WeaponSlot) * 32 
WeaponSlotEmpty = word(0x1a34a0) == 0xffff


HandSlotLevel = byte(0x1a34b7)
Vegetable = 0x00
Fruit = 0x01
Grass = 0x02
Sword1 = 0x05
Sword2 = 0x06
Spear = 0x07
Hammer = 0x08
Axe = 0x09
Hoe = 0x0c


GameState = byte(0x145c65)
Talking = 0x01
Playing = 0x02
Gifting = 0x05
//Shipping History
CropStart = 0x1512cc
CropEnd = 0x151388

DecorationStart = 0x151824
DecorationEnd = 0x151948

DishStart = 0x1513ec
DishEnd = 0x1516c0

PharmacyStart = 0x15138c
PharmacyEnd = 0x1513e8

ETCStart = 0x1519d8
ETCEnd = 0x151aec

FishStart = 0x151b14
FishEnd = 0x151b88

//Weapons
//1H
Sunspot = bit6(0x150c3e)
HeavenAsunder = bit0(0x150c3f)
ChaosBlade = bit6(0x150c41)
RuneBlade = bit7(0x150c41)
OneHandedWeapons = [Sunspot, HeavenAsunder, ChaosBlade, RuneBlade]
//2H
Punisher = bit3(0x150c3f)
Volcannon = bit5(0x150c3f)
AtomicBuster = bit1(0x150c42)
ForthElement = bit2(0x150c42)
TwoHandedWeapons = [Punisher, Volcannon, AtomicBuster, ForthElement]

//Polearm
Belvaros = bit3(0x150c42) 
FeatherLance = bit2(0x150c40)
Brionac = bit1(0x150c40)
Gungnir = bit5(0x150c42) 
Bjor = bit4(0x150c42) 
Iseberk = bit7(0x150c3c)
PolearmWeapons = [Belvaros, FeatherLance, Brionac, Gungnir, Bjor, Iseberk]

//Hammer
Schnabel = bit3(0x150c40)
SpikedHammer = bit7(0x150c42)
Myurnil = bit6(0x150c42)
HammerWeapons = [Schnabel, SpikedHammer, Myurnil]

//Axe
DemonAxe = bit6(0x150c40)
Executioner = bit1(0x150c43)
CrescentAxe = bit0(0x150c43)
AxeWeapons = [DemonAxe, Executioner, CrescentAxe]

//Shield
RuneShield = bit3(0x150c44)
ChaosShield = bit7(0x150c44)
Shields = [RuneShield, ChaosShield]

//Books
Soulcraft1 = bit0(0x145bde)
Soulcraft2 = bit1(0x145bde)
Soulcraft3 = bit2(0x145bde)
Soulcraft4 = bit3(0x145bde)
Accessories1 = bit5(0x145bde)
Accessories2 = bit6(0x145bde)
Accessories3 = bit7(0x145bde)
Accessories4 = bit0(0x145bdf)
Mixtures = bit1(0x145bdf)
ChopShop1 = bit2(0x145bdf)
ChopShop2 = bit3(0x145bdf)
SideDishes1 = bit4(0x145bdf)
SideDishes2 = bit5(0x145bdf)
ForDinner1 = bit6(0x145bdf)
ForDinner2 = bit7(0x145bdf)
BakeTender = bit0(0x145be0)
Blending = bit1(0x145be0)
SteamCooking = bit2(0x145be0)
InstantDishes = bit3(0x145be0)
Books = [
Soulcraft1,
Soulcraft2,
Soulcraft3 ,
Soulcraft4 ,
Accessories1 ,
Accessories2 ,
Accessories3 ,
Accessories4 ,
Mixtures,
ChopShop1 ,
ChopShop2 ,
SideDishes1 ,
SideDishes2 ,
ForDinner1 ,
ForDinner2 ,
BakeTender ,
Blending ,
SteamCooking ,
InstantDishes ,
]

//Spells
Teleport = bit3(0x145bf0)
Medication = bit5(0x145bef)
Fireball = bit6(0x145bee)
Cure = bit0(0x145bef)
WaterLaser = bit1(0x145bef)
CrimsonFire = bit3(0x145bef)
Inferno = bit2(0x145bef)
StoneSpike = bit7(0x145bef)
Swordstorm = bit4(0x145bef)
LifeAbsorber = bit6(0x145bef)
Explosion = bit7(0x145bef)
Quake = bit6(0x145bfe)
Storm = bit1(0x145bf0)
Meteor = bit0(0x145bf0)
Spells = [
Teleport ,
Medication ,
Fireball ,
Cure,
WaterLaser ,
CrimsonFire ,
Inferno ,
StoneSpike,
Swordstorm ,
LifeAbsorber,
Explosion ,
Quake ,
Storm ,
Meteor 
]

//House stuff
HouseUpgrade = bit1(0x145aa9)

CheeseMaker = bit0(0x145bc7)
YogurtMaker = bit1(0x145bc7)
SeedMaker = bit2(0x145bc7)
WoolBallMaker = bit3(0x145bc7)
Makers = [   
    CheeseMaker,
    YogurtMaker,
    SeedMaker,
    WoolBallMaker
]

//Day Stuff
Hour = byte(0x17ac27)
Day = byte(0x17ac26)
Season = byte(0x17ac25)
Year = byte(0x17ac24)
Spring = 0x00
Summer = 0x01
Autumn = 0x02
Winter = 0x03
MapID = byte(0x151f8c)
EntranceKasimir = 0x0a
TownPart1 = 0x0d
TownPart2 = 0x0e
TownPart3 = 0x0f
Plaza = 0x10
Beach = 0x11

//Skill Levels
PlayerLevel = byte(0x150bc8)
PharmacyLevel = byte(0x150bdc)
ForgingLevel = byte(0x150be0)
DecorationLevel = byte(0x150be4)
CookingLevel = byte(0x150be8)
MiningLevel = byte(0x150bec)
FishingLevel = byte(0x150bf0)
LoggingLevel = byte(0x150bf4)
FarmingLevel = byte(0x150bf8)
SwordmanshipLevel = byte(0x150bfc)
CampingLevel = byte(0x150c00)
CommunicationLevel = byte(0x150c04)

//Extra Events
RollaboutiWine = bit0(0x145c02)
HolyBook = bit1(0x145bea)
StollerChalice = bit1(0x145bec)
CursedStone = bit7(0x145bf5)
GrimoireSword = bit4(0x145bf6)

//Friendship Points
CamusFP = byte(0x1511be)
CeciliaFP = byte(0x151146)
EdwardFP =  byte(0x15112e)
EmmettFP = byte(0x151156)
GodwinFP = byte(0x15116e)
JasperFP = byte(0x151176)
JeanFP = byte(0x151126)
LadyAnnFP = byte(0x151136)
LeoFP = byte(0x151166)
LukasFP = byte(0x1511fe)
NeumannFP = byte(0x15115e)
NicholasFP = byte(0x15114e)
RusellFP = byte(0x1511ce)
SabrinaFP = byte(0x1511d6)
WesleyFP = byte(0x1511de)
ZavierFP = byte(0x1511c6)
MeiFP = byte(0x151186)
//Marriages
BiancaMarriage = bit5(0x145be7)
FelicityMarriage = bit3(0x145be7)
LaraMarriage = bit1(0x145be7)
LynetteMarriage = bit0(0x145be8)
MelodyMarriage = bit2(0x145be7)
MistMarriage = bit1(0x145be8)
RossetaMarriage = bit7(0x145be6)
SharronMarriage = bit7(0x145be7)
TabathaMarriage = bit6(0x145be7)
ToriMarriage = bit0(0x145be7)


ExtraEvents = {
    "1": {"title": "Legendary Beverage [m]", "description": "Give a bottle of Rollabouti Wine to Emett", "flags": RollaboutiWine},
    "2": {"title": "The Missing Scriptures [m]", "description": "Return the Holy Book to Wesley", "flags": HolyBook},
    "3": {"title": "Second Marriage [m]", "description": "Return the Stoller Chalice to Sabrina and witness the marriage", "flags": StollerChalice},
    "4": {"title": "Ill-Fated Rock [m]", "description": "Cure Felicity's Sickness by getting rid of the Cursed Stone", "flags": CursedStone},
    "5": {"title": "Dragon Weapon [m]", "description": "Help Leo craft a Grimoire Sword ", "flags": GrimoireSword},
}

Friendship = {
    "a": {"title": "Hut Builder", "description": "Become Camus' best friend", "flags": CamusFP},
    "b": {"title": "Little Half-Elf", "description": "Become Cecilia's best friend", "flags": CeciliaFP},
    "c": {"title": "Local Doctor", "description": "Become Edward's best friend", "flags": EdwardFP},
    "d": {"title": "Friendly Bartender", "description": "Become Emmett's best friend", "flags": EmmettFP},
    "e": {"title": "Village's Mayor", "description": "Become Godwin's best friend", "flags": GodwinFP},
    "f": {"title": "Renowned Gourmet", "description": "Become Jasper's best friend", "flags": JasperFP},
    "g": {"title": "Seed Seller", "description": "Become Jean's best friend", "flags": JeanFP},
    "h": {"title": "Inn Owner", "description": "Become Lady Ann's best friend", "flags": LadyAnnFP},
    "i": {"title": "Revered Oldman", "description": "Become Leo's best friend", "flags": LeoFP},
    "j": {"title": "Wandering Minstril", "description": "Become Lukas' best friend", "flags": LukasFP},
    "k": {"title": "Local Farmer", "description": "Become Neumann's best friend", "flags": NeumannFP},
    "l": {"title": "Mischievous Boy", "description": "Become Nicholas' best friend", "flags": NicholasFP},
    "m": {"title": "Elf Bookworm", "description": "Become Rusell's best friend", "flags": RusellFP},
    "n": {"title": "Spear Fisher", "description": "Become Sabrina's best friend", "flags": SabrinaFP},
    "o": {"title": "Church's Priest", "description": "Become Wesley's best friend", "flags": WesleyFP},
    "p": {"title": "Treasure Hunter", "description": "Become Zavier's best friend", "flags": ZavierFP},
    "q": {"title": "Fish Zoned", "description": "Get marri... become Mei's best friend", "flags": MeiFP},
}

Marriages = {
    "a": {"title": "Wealthy Girl", "description": "Get married to Bianca", "flags": BiancaMarriage},
    "b": {"title": "Love and Health", "description": "Get married to Felicity", "flags": FelicityMarriage},
    "c": {"title": "Caring Nurse", "description": "Get married to Lara", "flags": LaraMarriage},
    "d": {"title": "Change of Heart", "description": "Get married to Lynette", "flags": LynetteMarriage},
    "e": {"title": "Odd Little Witch", "description": "Get married to Melody", "flags": MelodyMarriage},
    "f": {"title": "Love at First Sight", "description": "Get married to Mist", "flags": MistMarriage},
    "g": {"title": "Cold Tomboy", "description": "Get married to Rosseta", "flags": RossetaMarriage},
    "h": {"title": "Beautiful Maiden", "description": "Get married to Sharron", "flags": SharronMarriage},
    "i": {"title": "Kind Maid", "description": "Get married to Tabatha", "flags": TabathaMarriage},
    "j": {"title": "Shy Nerd", "description": "Get married to Tori", "flags": ToriMarriage},
   
}

function CheckMaxFriendship(person){
    logic = 
    measured(person == 0xff) &&
    prev(person) < 0xff
    return logic
}


function SpringFestivalCheck(){
    logic  = 
    Day == 0x11 &&
    Season == Spring &&
    (MapID == EntranceKasimir ||
        MapID == TownPart1 ||
        MapID == TownPart2 ||
        MapID == TownPart3 ||
        MapID == Plaza ||
        MapID == Beach
    )
    return logic
}

function InventoryID(address){
    ID = byte(address) + (bit0(address+1) * 256) + (bit1(address+1) * 512)
    return ID
}

Letter1st = dword(0x150b9a)
Letter2nd = dword(0x150b9c)
Letter3rd = dword(0x150b9e)
Letter4th = dword(0x150ba0)
Letter5th = dword(0x150ba2)
Letter6th = dword(0x150ba4)

function SaveProtection(){
    logic = prev(StartingMonster) == 1 &&
    Letter1st == prev(Letter1st) &&
    Letter2nd == prev(Letter2nd) &&
    Letter3rd == prev(Letter3rd) &&
    Letter4th == prev(Letter4th) &&
    Letter5th == prev(Letter5th) &&
    Letter6th == prev(Letter6th)
    return logic
}

//&&
   // Letter1st == prev(Letter1st) &&
   // Letter2nd == prev(Letter1st) &&

function SimpleEvent(eventFlag){
    logic = prev(eventFlag) == 0 && eventFlag == 1
    return logic
}

function SumFlags(Flags, result){
    return measured(sum_of(Flags, f => f) == result)
}

function SumPreviousFlags(Flags, result){
    return sum_of(Flags, f => prev(f)) == result
}

function MonsterCount(count){
    sum = 84
    offset = 0
    countoffset = 0
    for id in range(FirstMonsterID, LastMonsterID, 0xe){
        if(id+offset <= LastMonsterID){
            sum = sum - ((word(id + offset))/0xff)
            countoffset = countoffset + 1
            if(countoffset % 12 == 0){
                offset = offset + 4
            }
        }
    }
    return measured(sum == count)
}

function MonsterCountDelta(count){
    sum = 84
    offset = 0
    countoffset = 0
    for id in range(FirstMonsterID, LastMonsterID, 0xe){
        if(id+offset <= LastMonsterID){
            sum = sum - (prev(word(id + offset))/0xff)
            countoffset = countoffset + 1
            if(countoffset % 12 == 0){
                offset = offset + 4
            }
        }
    }
    return sum == count
}

function CheckMaxHappiness(){
    logic = always_false()
    offset = 0
    countoffset = 0
    for id in range(FirstMonsterHappiness, LastMonsterHappiness, 0xe){
        if(id+offset <= LastMonsterHappiness){
            logic = logic || (byte(id + offset) == 0xff && prev(byte(id + offset)) < 0xff && word(id + offset + 2) != 0xff)
            countoffset = countoffset + 1
            if(countoffset % 12 == 0){
                offset = offset + 4
            }
        }
    }
    return logic
}

function CheckSpecificMonster(identifier){
    logic = always_false()
    offset = 0
    countoffset = 0
    for id in range(FirstMonsterID, LastMonsterID, 0xe){
        if(id+offset <= LastMonsterID){
            logic = logic || (word(id + offset) == identifier && prev(word(id + offset)) != identifier)
            countoffset = countoffset + 1
            if(countoffset % 12 == 0){
                offset = offset + 4
            }
        }
    }
    return logic
}

function CheckSpecificMonsterSimple(identifier){
    logic = always_false()
    offset = 0
    countoffset = 0
    for id in range(FirstMonsterID, LastMonsterID, 0xe){
        if(id+offset <= LastMonsterID){
            logic = logic || (word(id + offset) == identifier)
            countoffset = countoffset + 1
            if(countoffset % 12 == 0){
                offset = offset + 4
            }
        }
    }
    return logic
}

function CheckSpecificMonsterSimplePrev(identifier){
    logic = always_false()
    offset = 0
    countoffset = 0
    for id in range(FirstMonsterID, LastMonsterID, 0xe){
        if(id+offset <= LastMonsterID){
            logic = logic || (prev(word(id + offset)) == identifier)
            countoffset = countoffset + 1
            if(countoffset % 12 == 0){
                offset = offset + 4
            }
        }
    }
    return logic
}
// measured(tally(6, tally(1, checkAccessories(KappaEarings)), tally(1, checkAccessories(HGoddessEarrings)), tally(1, checkAccessories(WitchPEarrings)), tally(1, checkAccessories(FriendshipPendant))

function CheckSpecificMonsters(monsters){
    comparisons = []
    comparisonsPrev = []
    for monster in monsters{
        array_push(comparisons, once(CheckSpecificMonsterSimple(monster)))
        array_push(comparisonsPrev, once(CheckSpecificMonsterSimplePrev(monster)))
    }
    return measured(tally(length(monsters), comparisons)) && never(tally(length(monsters), comparisonsPrev))
}

function CheckShippedRange(start, end){
    sum = 0
    sumDelta = 0
    count = 0
    for item in range(start, end, 4){
        sum = sum + (dword(item)/dword(item))
        sumDelta = sumDelta + (prev(dword(item)) / prev(dword(item)))
        count = count + 1
    }
    return measured(sum == count) && sumDelta <= (count - 1)
}

function CheckShippedRangeAll(){
    sum = 0
    sumDelta = 0
    count = 0
    for category in ShippedItems{
        for item in range(ShippedItems[category]["start"], ShippedItems[category]["end"], 4){
            sum = sum + (dword(item)/dword(item))
            sumDelta = sumDelta + (prev(dword(item)) / prev(dword(item)))
            count = count + 1
        }
    }
    return measured(sum == count) && sumDelta <= (count - 1)
}

function CheckLevel(level, target){
    logic = 
    measured(level >= target) &&
    prev(level) < target &&
    prev(level) > (target - 5)
    return logic 
}


ToolEvents = {
    "1": {"title": "Do You Like Fishing?", "description": "Get the fishing rod from Sabrina", "points": 1, "flags": FishingRodEvent},
    "2": {"title": "You Better Work Hard!", "description": "Get the axe from Bianca", "points": 1, "flags": AxeEvent},
    "3": {"title": "Cutting the Weeds", "description": "Get the sickle from Rosetta", "points": 2, "flags": SickleEvent},
    "4": {"title": "Break Them Open", "description": "Get the hammer from Leo", "points": 3, "flags": HammerEvent},
}

Level5Tools = {
    "1": {"title": "Waterpot of Joy", "description": "Upgrade your water pot to level 5", "flags": JoyWaterpot},
    "2": {"title": "Hoe of Blessings", "description": "Upgrade your hoe to level 5", "flags": BlessedHoe},
    "3": {"title": "Axe of Miracles", "description": "Upgrade your axe to level 5", "flags": MiracleAxe},
    "4": {"title": "Sickle of Legends", "description": "Upgrade your sickle to level 5", "flags": LegendSickle},
    "5": {"title": "Renegade Hammer", "description": "Upgrade your hammer to level 5", "flags": PlatinumHammer},
    "6": {"title": "Angelic Rod", "description": "Upgrade your rod to level 5", "flags": SacredRod},
}

CavePasses = {
    "1": {"title": "Mystery Dungeon", "description": "Obtain your permit to Carmite Cave", "flags": CarmiteCave},
    "2": {"title": "Bandit King's Old Base", "description": "Obtain your permit to Toros Cave", "flags": TorosCave},
    "3": {"title": "Cecilia's Rescue", "description": "Obtain your permit to Clemens Cave", "flags": ClemensCave},
    "4": {"title": "Windy Landscape", "description": "Obtain your permit to Mt. Gigant", "flags": MountGigant},
    "5": {"title": "Winter Only", "description": "Obtain your permit to Misty Bloom Cave", "flags": MistyBloomCave},
    "6": {"title": "Ancient Caves", "description": "Obtain your permit to Kasimir Ruins", "flags": KasimirRuins},
    "7": {"title": "Poison Snow", "description": "Obtain your permit to Danann Cave", "flags": DanannCave},
    "8": {"title": "Grimoire's Nest", "description": "Obtain your permit to Greed Cave", "flags": GreedCave},
}

BossProgression = {
    "1": {"title": "Demon Lord", "description": "Defeat the Greater Daemon in Carmite Cave", "flags": GreaterDaemon},
    "2": {"title": "Ultimate Chimera", "description": "Defeat the Chimera in Toros Cave", "flags": Chimera},
    "3": {"title": "Giant Manhandla", "description": "Defeat Rafflesia in Clemens Cave", "flags": Rafflesia},
    "4": {"title": "Crimson Rathalos", "description": "Defeat Grimoa in Mt. Gigant", "flags": Grimoa}, //Grimoa or Grimoire?
    "5": {"title": "Magic Mermaid", "description": "Defeat Siren in Misty Bloom Cave", "flags": Siren},
    "6": {"title": "Regigolem", "description": "Defeat Golum in Kasimir Ruins", "flags": Golum},
    "7": {"title": "War Infantry", "description": "Defeat Battle Tank in Danann Cave", "flags": BattleTank},
    "8": {"title": "Divine Terrable", "description": "Defeat Grimoire in Greed Cave and save the village", "flags": Grimoire},
}

MonsterCaves = {
    "1": {"title": "Orcs and Goblins", "description": "Befriend all types of monsters in Carmite Cave", "flags": CarmiteCaveMonsters, "points": 10},
    "2": {"title": "Slimes and Ghosts", "description": "Befriend all types of monsters in Toros Cave", "flags": TorosCaveMonsters, "points": 10},
    "3": {"title": "Trolls and Minotaurs", "description": "Befriend all types of monsters in Clemens Cave", "flags": ClemensCaveMonsters, "points": 10},
    "4": {"title": "Spiders and Mushrooms", "description": "Befriend all types of monsters in Mt. Gigant", "flags": MtGiantMonsters, "points": 10}, 
    "5": {"title": "Scorpions and Fishes", "description": "Befriend all types of monsters in Misty Bloom Cave", "flags": MistyBloomMonsters, "points": 10},
    "6": {"title": "Boxes and Fairies", "description": "Befriend all types of monsters in Kasimir Ruins", "flags": KasimirRuinsMonsters, "points": 10},
    "7": {"title": "Plants and Golems", "description": "Befriend all types of monsters in Danann Cave", "flags": DanannCaveMonsters, "points": 10},
    "8": {"title": "Dragons and Demons", "description": "Befriend all types of monsters in Greed Cave", "flags": GreedCaveMonsters, "points": 25},
}

ShippedItems = {
    "1": {"title": "Phantom Crops", "description": "Ship every crop", "start": CropStart, "end": CropEnd, "points": 25},
    "2": {"title": "Shiny Jewelry", "description": "Ship every decoration", "start": DecorationStart, "end": DecorationEnd, "points": 25},
    "3": {"title": "Flawless Cook", "description": "Ship every dish", "start": DishStart, "end": DishEnd, "points": 50},
    "4": {"title": "First Aids Kit", "description": "Ship every pharmacy item", "start": PharmacyStart, "end": PharmacyEnd, "points": 10},
    "5": {"title": "Master of the Seas", "description": "Ship every fish", "start": FishStart, "end": FishEnd, "points": 25},
    "6": {"title": "Uncategorized Goods", "description": "Ship every et cetera item [Exceptions on forum topic]", "start": ETCStart, "end": ETCEnd, "points": 25},
}
//And spells/books why not
CraftedWeapons = {
    "1": {"title": "One Handed Craft", "description": "Forge a Rune Blade, Chaos Blade, Sunspot and a Heaven Asunder", "flags": OneHandedWeapons, "points": 25},
    "2": {"title": "Two Handed Technique", "description": "Forge an Atomic Buster, Punisher, Forth Element and a Volcannon", "flags": TwoHandedWeapons, "points": 25},
    "3": {"title": "Spear Genius", "description": "Forge a Belvaros, Feather Lance, Brionac, Gungnir, Bjor and an Iseberk", "flags": PolearmWeapons, "points": 25},
    "4": {"title": "Hammer Talent", "description": "Forge a Schnabel, Spiked Hammer and a Myurnil", "flags": HammerWeapons, "points": 25}, 
    "5": {"title": "Axe Virtuosity", "description": "Forge a Demon Axe, Executioner, and a Crescent Axe", "flags": AxeWeapons, "points": 25},
    "6": {"title": "Shield Mastery", "description": "Forge a Rune Shield and a Chaos Shield", "flags": Shields, "points": 25},
    "7": {"title": "All the Knowledge", "description": "Buy every book from Kardia Library", "flags": Books, "points": 10},
    "8": {"title": "Ultimate Wizard", "description": "Have every magic spell", "flags": Spells, "points": 10},
}

//Skills and levels
Levels = {
    "1": {"title": "Yes, This Is Also an RPG", "description": "Reach character Level 10", "flags": PlayerLevel, "points": 3, "target": 10},
    "2": {"title": "Farming Levels", "description": "Reach character Level 25", "flags": PlayerLevel, "points": 5, "target": 25},
    "3": {"title": "Grinding Experience", "description": "Reach character Level 50", "flags": PlayerLevel, "points": 10, "target": 50},
    "4": {"title": "Sword Savant", "description": "Reach Level 50 Swordsmanship Skill", "flags": SwordmanshipLevel, "points": 10, "target": 50},
    "5": {"title": "Ace Miner", "description": "Reach Level 50 Mining Skill", "flags": MiningLevel, "points": 10, "target": 50},
    "6": {"title": "Harvest Mooner", "description": "Reach Level 50 Farming Skill", "flags": FarmingLevel, "points": 10, "target": 50},
    "7": {"title": "Monster Tamer", "description": "Reach Level 50 Communication Skill", "flags": CommunicationLevel, "points": 10, "target": 50},
    "8": {"title": "Professional Camper", "description": "Reach Level 20 Camping Skill", "flags": CampingLevel, "points": 10, "target": 20},
    "9": {"title": "Health Prodigy", "description": "Reach Level 50 Pharmacy Skill", "flags": PharmacyLevel, "points": 10, "target": 50},
    "10": {"title": "Master Jeweler", "description": "Reach Level 50 Decoration Skill", "flags": DecorationLevel, "points": 10, "target": 50},
    "11": {"title": "Pro Lumberjack", "description": "Reach Level 50 Logging Skill", "flags": LoggingLevel, "points": 10, "target": 50},
    "12": {"title": "Cook Guru", "description": "Reach Level 50 Cooking Skill", "flags": CookingLevel, "points": 10, "target": 50},
    "13": {"title": "Expert Blacksmith", "description": "Reach Level 50 Forging Skill", "flags": ForgingLevel, "points": 10, "target": 50},
     "14": {"title": "Master Fisher", "description": "Reach Level 50 Fishing Skill", "flags": FishingLevel, "points": 10, "target": 50},
}

function CheckAnyLevel(target){
    logic = always_false()
    counter = 0
    for flags in Levels{
        if(Levels[flags]["description"] != "Reach character Level 10" && Levels[flags]["description"] != "Reach character Level 25" && Levels[flags]["description"] != "Reach character Level 50"){
        logic = logic || CheckLevel(Levels[flags]["flags"], target)
        }
        counter = counter + 1
    }
    return logic
}


for flags in ToolEvents{
    achievement(
        title = ToolEvents[flags]["title"],
        description = ToolEvents[flags]["description"],
        points = ToolEvents[flags]["points"],
        trigger = SaveProtection() && SimpleEvent(ToolEvents[flags]["flags"])
    )
}

BlackSmithPlace = 0x1d

//Level 2 tool
achievement(
    title = "Ferrous Upgrade",
    description = "Get your first Level 2 tool",
    points = 4,
    trigger = SaveProtection() &&
    (SimpleEvent(IronSickle) ||
    SimpleEvent(TinWaterpot) ||
    SimpleEvent(SturdyHoe) ||
    SimpleEvent(BambooRod) ||
    SimpleEvent(IronHammer) ||
    SimpleEvent(ChoppingAxe)  
    || (prev(LeoLevelTwo) >= HoeLeo && prev(LeoLevelTwo) <= RodLeo) && LeoLevelTwo == 0 && DaysLeo == 0 && MapID == BlackSmithPlace)
)
//Level 3 tool
achievement(
    title = "Quality Utensil",
    description = "Get your first Level 3 tool",
    points = 5,
    trigger = SaveProtection() &&
    (SimpleEvent(QualitySickle) ||
    SimpleEvent(LionWaterpot) ||
    SimpleEvent(SeasonedHoe) ||
    SimpleEvent(WillowRod) ||
    SimpleEvent(SilverHammer) ||
    SimpleEvent(LumberAxe)  
    || (prev(LeoLevelThree) >= HoeLeo && prev(LeoLevelThree) <= RodLeo) && LeoLevelThree == 0 && DaysLeo == 0 && MapID == BlackSmithPlace)
)
//Level 4 tool
achievement(
    title = "Golden Craft",
    description = "Get your first Level 4 tool",
    points = 5,
    trigger = SaveProtection() &&
    (SimpleEvent(RainbowWaterpot) ||
    SimpleEvent(ShinyHoe) ||
    SimpleEvent(SuperSickle) ||
    SimpleEvent(FamousRod) ||
    SimpleEvent(GoldenHammer) ||
    SimpleEvent(MountainAxe))
)

//All level 4 tools
achievement(
    title = "Shiny Appliances",
    description = "Upgrade all your tools to level 4 or higher",
    points = 25,
    trigger = SaveProtection() &&
    SumFlags(Level4Tools, 6) &&
    SumPreviousFlags(Level4Tools, 5)
)
//Level 5 tools
for flags in Level5Tools{
    achievement(
        title = Level5Tools[flags]["title"],
        description = Level5Tools[flags]["description"],
        points = 10,
        trigger = SaveProtection() && SimpleEvent(Level5Tools[flags]["flags"])
    )
}
//Cave Passes
for flags in CavePasses{
    achievement(
        title = CavePasses[flags]["title"],
        description = CavePasses[flags]["description"],
        points = 3,
        trigger = SaveProtection() && SimpleEvent(CavePasses[flags]["flags"])
    )
}
//Bosses
for flags in BossProgression{
    achievement(
        title = BossProgression[flags]["title"],
        description = BossProgression[flags]["description"],
        points = 10,
        trigger = SaveProtection() && SimpleEvent(BossProgression[flags]["flags"])
    )
}
//Monster cheevos
achievement(
        title = "First Forest",
        description = "Build a monster hut",
        points = 3,
        trigger = SaveProtection() && Hut1 == Built && prev(Hut1) == NotBuilt
)
achievement(
        title = "Full House",
        description = "Have 7 monster huts",
        points = 10,
        trigger = SaveProtection() && Hut7 == Built && prev(Hut7) == NotBuilt
)
achievement(
        title = "Deep Crypts",
        description = "Have all 7 monster huts with 3 basements",
        points = 10,
        trigger = SaveProtection() && Hut7 == ThreeFloors && prev(Hut7) == TwoFloors
)

achievement(
    title = "Monster Caring Kit",
    description = "Get all the monster tools",
    points = 5,
    trigger = SaveProtection() &&
    SumFlags(MonsterTools, 5) &&
    SumPreviousFlags(MonsterTools, 4)
)

achievement(
        title = "Initial Catch",
        description = "Befriend a monster for the first time",
        points = 3,
        trigger = SaveProtection() && word(FirstMonsterID) != NoMonster && prev(word(FirstMonsterID)) == NoMonster && Hut1 >= Built && Hut1 <= ThreeFloors
)

achievement(
        title = "Tenfold Companions",
        description = "Befriend 10 monsters",
        points = 5,
        trigger = SaveProtection() && MonsterCount(10) && MonsterCountDelta(9)
)

achievement(
        title = "Joyful Beast",
        description = "Reach max friendship with a monster",
        points = 5,
        trigger = SaveProtection() && CheckMaxHappiness()
)

achievement(
        title = "Silksong",
        description = "Befriend a Hornet",
        points = 3,
        trigger = SaveProtection() && CheckSpecificMonster(Hornet)
)

achievement(
        title = "Royal Honey",
        description = "Befriend a Queen Bee",
        points = 3,
        trigger = SaveProtection() && CheckSpecificMonster(QueenBee)
)

achievement(
        title = "Totally Not a Sheep",
        description = "Befriend a Woolly",
        points = 3,
        trigger = SaveProtection() && CheckSpecificMonster(Woolly)
)

achievement(
        title = "Totally Not a Cow",
        description = "Befriend a Peekamoo",
        points = 3,
        trigger = SaveProtection() && CheckSpecificMonster(Peekamoo)
)

achievement(
        title = "Totally Not a Chicken",
        description = "Befriend a Cockadoodle",
        points = 3,
        trigger = SaveProtection() && CheckSpecificMonster(Cockadoodle)
)

for flags in MonsterCaves{
    achievement(
        title = MonsterCaves[flags]["title"],
        description = MonsterCaves[flags]["description"],
        points = MonsterCaves[flags]["points"],
        trigger = SaveProtection() && CheckSpecificMonsters(MonsterCaves[flags]["flags"]) && never(GameState == 0x00)
    )
}

achievement(
        title = "Monster Rancher",
        description = "Have 84 befriended monsters at the same time",
        points = 10,
        trigger = SaveProtection() && MonsterCount(84) && MonsterCountDelta(83)
)

//Collection cheevos
achievement(
        title = "Level Limit",
        description = "Harvest a level 10 crop",
        points = 10,
        trigger = SaveProtection() && 
        GameState == Playing &&
        (HandSlotItemType == Vegetable || HandSlotItemType == Fruit || HandSlotItemType == Grass) &&
        HandSlotLevel == 10 && prev(HandSlotLevel) != 10
)

for category in ShippedItems{
    achievement(
        title = ShippedItems[category]["title"],
        description = ShippedItems[category]["description"],
        points = ShippedItems[category]["points"],
        trigger = SaveProtection() && CheckShippedRange(ShippedItems[category]["start"], ShippedItems[category]["end"])
    )
}

achievement(
        title = "Kardia Top Exporter",
        description = "Ship every shippable item ",
        points = 50,
        trigger = SaveProtection() && CheckShippedRangeAll()
)

//Crafter Weapons
for flags in CraftedWeapons{
    achievement(
        title = CraftedWeapons[flags]["title"],
        description = CraftedWeapons[flags]["description"],
        points = CraftedWeapons[flags]["points"],
        trigger = SaveProtection() && 
        SumFlags(CraftedWeapons[flags]["flags"], length(CraftedWeapons[flags]["flags"])) &&
        SumPreviousFlags(CraftedWeapons[flags]["flags"], length(CraftedWeapons[flags]["flags"]) - 1)
    )
}

//House stuff
achievement(
        title = "Home Forgery",
        description = "Expand your house",
        points = 10,
        trigger = SaveProtection() && prev(HouseUpgrade) == 0 && HouseUpgrade == 1
)

achievement(
        title = "Food Factories",
        description = "Get all the makers",
        points = 10,
        trigger = SaveProtection() &&
        SumFlags(Makers, length(Makers)) &&
        SumPreviousFlags(Makers, length(Makers) - 1)
)

DoubleBed = bit4(0x145bc7)
KnifeSet = bit5(0x145bc7)
FryingPan = bit6(0x145bc7)
Mixer = bit7(0x145bc7)
Oven = bit0(0x145bc8)
CookingPot = bit1(0x145bc8)
Steamer = bit2(0x145bc8)
Fridge = byte(0x145ac1)
Shelf = byte(0x145ac2)
TableSet = byte(0x145ac3)
Big = 0x02

achievement(
        title = "Ivan's Merchandise",
        description = "Buy all the furniture and kitchen accessories",
        points = 5,
        trigger = SaveProtection() &&
        measured(
            DoubleBed +
            KnifeSet +
            FryingPan +
            Mixer +
            Oven +
            CookingPot +
            Steamer +
            Shelf/Shelf +
            Fridge/Fridge +
            TableSet/TableSet == 10         
        ) &&
        prev(DoubleBed) +
        prev(KnifeSet) +
        prev(FryingPan) +
        prev(Mixer) +
        prev(Oven) +
        prev(CookingPot) +
        prev(Steamer) +
        prev(Shelf)/prev(Shelf) +
        prev(Fridge)/prev(Fridge) +
        prev(TableSet)/prev(TableSet) < 10              
)
//Bottle cheevo

Bottle1 = bit5(0x145bfc)
Bottle2 = bit6(0x145bfc)
Bottle3 = bit7(0x145bfc)
Bottle4 = bit3(0x145bf9)

achievement(
        title = "Recovery Containers",
        description = "Get all 4 empty bottles",
        points = 10,
        trigger = SaveProtection() &&
        measured(Bottle1 + Bottle2 + Bottle3 + Bottle4 == 4) &&
        (prev(Bottle1) + prev(Bottle2) + prev(Bottle3) + prev(Bottle4) == 3)
)

IDLastTalked = byte(0x145b06)
Rosetta = 0x02
Tori = 0x06
Lara = 0x0a
Melody = 0x0f
Felicity = 0x13
Mei = 0x16
Mist = 0x18
Bianca = 0x19
Tabatha = 0x1b
Sharron = 0x1c

MistLP = byte(0x1510ff)
BiancaLP = byte(0x15118f)
FelicityLP = byte(0x1511f7)
LaraLP = byte(0x1511e7)
MeiLP = byte(0x151187)
MelodyLP = byte(0x1511ef)
RosettaLP = byte(0x1511b7)
SharronLP = byte(0x15119f)
TabathaLP = byte(0x151197)
ToriLP = byte(0x15113f)

LastGiftID = word(0x145af5)
Cookie = 0x10bb
ChocoCookie = 0x10bc

function CheckChange(target){
    return target > prev(target)
}

//Festivals
achievement(
        title = "Love Dessert",
        description = "Give your sweetheart some Cookies in the Spring Festival",
        points = 3,
        trigger = SaveProtection() &&
        SpringFestivalCheck() &&
        (CheckChange(MistLP) ||
          CheckChange(BiancaLP) ||
          CheckChange(FelicityLP) ||
           CheckChange(LaraLP) ||
           CheckChange(MeiLP) ||
           CheckChange(MelodyLP) ||
           CheckChange(RosettaLP) ||
          CheckChange(SharronLP) ||
           CheckChange(TabathaLP) ||
           CheckChange(ToriLP)
        ) &&
        (LastGiftID == Cookie ||
        LastGiftID == ChocoCookie) &&
        GameState == Gifting
)

FestivalPlace = byte(0x145b01)

achievement(
        title = "Cockadoodle Hour",
        description = "Participate in the Egg Show",
        points = 3,
        trigger = SaveProtection() &&
        Day == 0x16 && Season == Spring &&
        MapID == Plaza &&
        FestivalPlace > 0 && prev(FestivalPlace) == 0
)

CookOffFlag = bit5(0x145bf9)

achievement(
        title = "Hell's Kitchen",
        description = "Take part in the Big Cook-Off",
        points = 3,
        trigger = SaveProtection() &&
        Day == 0x1a && Season == Spring &&
        MapID == Plaza &&
        CookOffFlag > prev(CookOffFlag)
)

achievement(
        title = "Peekamoo Period",
        description = "Participate in the Dairy Show",
        points = 3,
        trigger = SaveProtection() &&
        Day == 0x11 && Season == Summer &&
        MapID == Plaza &&
        FestivalPlace > 0 && prev(FestivalPlace) == 0
)
TreasureHuntFlag = bit5(0x145bfa)

achievement(
        title = "Riches Persecution",
        description = "Find and retrieve the Sunset Road book in the Treasure Hunt",
        points = 3,
        trigger = SaveProtection() &&
        Day == 0x19 && Season == Summer &&
        MapID == Plaza &&
        TreasureHuntFlag > prev(TreasureHuntFlag)
)

achievement(
        title = "Crop Giving",
        description = "Provide some crops in the Harvest Festival",
        points = 3,
        trigger = SaveProtection() &&
        Day == 0x06 && Season == Autumn &&
        (MapID == EntranceKasimir ||
        MapID == TownPart1 ||
        MapID == TownPart2 ||
        MapID == TownPart3 ||
        MapID == Plaza ||
        MapID == Beach
        ) &&
        GameState == Gifting &&
        (LastItemGivenType == Vegetable || LastItemGivenType == Fruit || LastItemGivenType == Grass)
        
)
TopOfClemens = 0x09
achievement(
        title = "Love Is in the Air",
        description = "Celebrate the Moonlit Eve with someone special",
        points = 3,
        trigger = SaveProtection() &&
        Day == 0x10 && Season == Autumn && Hour >= 0x12 && Hour < 0x18 &&
        MapID == TopOfClemens &&
        GameState == Playing && prev(GameState) == Talking
)

achievement(
        title = "Woolly Time",
        description = "Take part in the Wool Show",
        points = 3,
        trigger = SaveProtection() &&
        Day == 0x17 && Season == Autumn &&
        MapID == Plaza &&
        FestivalPlace > 0 && prev(FestivalPlace) == 0
)

WinterFestival = bit6(0x145bfa)
achievement(
        title = "Candy Gift",
        description = "Recieve a chocolate from a girl in the Winter Festival",
        points = 3,
        trigger = SaveProtection() &&
        Day == 0x05 && Season == Winter &&
        WinterFestival > prev(WinterFestival)
)

SNRosetta = bit7(0x145bfa)
SNTori = bit0(0x145bfb)
SNLara = bit1(0x145bfb)
SNMelody = bit2(0x145bfb)
SNFelicity = bit3(0x145bfb)
SNMei = bit4(0x145bfb)
SNBianca = bit5(0x145bfb)
SNTabatha = bit6(0x145bfb)
SNSharron = bit7(0x145bfb)
SNMist = bit0(0x145bfc)

achievement(
        title = "Private Date",
        description = "Talk to your sweetheart at their home in the Sacred Night",
        points = 3,
        trigger = SaveProtection() &&
        Day == 0x17 && Season == Winter &&
        (
            CheckChange(SNRosetta) ||
            CheckChange(SNTori) ||
            CheckChange(SNLara) ||
            CheckChange(SNMelody) ||
            CheckChange(SNFelicity) ||
            CheckChange(SNMei) ||
            CheckChange(SNBianca) ||
            CheckChange(SNTabatha) ||
            CheckChange(SNSharron) ||
            CheckChange(SNMist)
        )
)

//Level Cheevos

achievement(
        title = "10% Luck, 20% Skill",
        description = "Reach Level 10 in any skill",
        points = 3,
        trigger = SaveProtection() && CheckAnyLevel(10) 
)

achievement(
        title = "Half Decent",
        description = "Reach Level 25 in any skill",
        points = 3,
        trigger = SaveProtection() && CheckAnyLevel(25) 
)

for flags in Levels{
    achievement(
        title = Levels[flags]["title"],
        description = Levels[flags]["description"],
        points = Levels[flags]["points"],
        trigger = SaveProtection() && 
        CheckLevel(Levels[flags]["flags"], Levels[flags]["target"])
    )
}

//Extra events
for flags in ExtraEvents{
    achievement(
        title = ExtraEvents[flags]["title"],
        description = ExtraEvents[flags]["description"],
        points = 5,
        trigger = SaveProtection() && SimpleEvent(ExtraEvents[flags]["flags"])
    )
}

for flags in Friendship{
    achievement(
        title = Friendship[flags]["title"],
        description = Friendship[flags]["description"],
        points = 5,
        trigger = SaveProtection() && CheckMaxFriendship(Friendship[flags]["flags"])
    )
}

for flags in Marriages{
    achievement(
        title = Marriages[flags]["title"],
        description = Marriages[flags]["description"],
        points = 10,
        trigger = SaveProtection() && SimpleEvent(Marriages[flags]["flags"])
    )
}

DaysSinceMarriage = byte(0x145b09)

achievement(
        title = "Earth Child",
        description = "Have a child",
        points = 5,
        trigger = SaveProtection() && prev(DaysSinceMarriage) <= 149 && DaysSinceMarriage >= 150
)

//Challenges
achievement(
        title = "Time Manager [m]",
        description = "Upgrade your house in the 1st month",
        points = 25,
        trigger = SaveProtection() && prev(HouseUpgrade) == 0 && HouseUpgrade == 1 && Year == 0 && Season == Spring
)
CarmiteCaveBoss = 0x39
ChimeraBoss = 0x4a
RaflessiaBoss = 0x7a
BeforeGrimoa = 0x5b
GrimoaBoss = 0x5c
SirenBoss = 0x67
GolumBoss = 0x54
BattleTankBoss = 0x6f
GrimoireBoss = 0x81

TrueGrimoire = bit7(0x145bdc)

achievement(
        title = "Wait, This Game Has Weapons? [m]",
        description = "Defeat the Greater Daemon with only a hoe",
        points = 10,
        trigger = SaveProtection() 
        && once(MapID == CarmiteCaveBoss && prev(MapID) != CarmiteCaveBoss)    
        && never(WeaponSlotType != Hoe)
        && WeaponSlotType == Hoe && MapID == CarmiteCaveBoss
        && trigger_when(GreaterDaemon > prev(GreaterDaemon))
)

achievement(
        title = "Chimeratech Overdragon [m]",
        description = "Defeat the Chimera with only a spear",
        points = 10,
        trigger = SaveProtection() 
        && once(MapID == ChimeraBoss && prev(MapID) != ChimeraBoss)    
        && never(WeaponSlotType != Spear)
        && WeaponSlotType == Spear && MapID == ChimeraBoss
        && trigger_when(Chimera > prev(Chimera))
)

achievement(
        title = "Legend of Raguna [m]",
        description = "Defeat Rafflesia with only a one handed sword",
        points = 10,
        trigger = SaveProtection() 
        && once(MapID == RaflessiaBoss && prev(MapID) != RaflessiaBoss)    
        && never(WeaponSlotType != Sword1)
        && WeaponSlotType == Sword1 && MapID == RaflessiaBoss
        && trigger_when(Rafflesia > prev(Rafflesia))
)

achievement(
        title = "Monster Hunter [m]",
        description = "Defeat Grimoa only with a hammer",
        points = 10,
        trigger = SaveProtection() 
        && once(MapID == GrimoaBoss && prev(MapID) != GrimoaBoss)    
        && never(WeaponSlotType != Hammer)
        && WeaponSlotType == Hammer && (MapID == BeforeGrimoa || MapID == GrimoaBoss)
        && trigger_when(Grimoa > prev(Grimoa))
)

achievement(
        title = "Magic vs Magic [m]",
        description = "Defeat Siren with only magic spells [No weapons equipped]",
        points = 10,
        trigger = SaveProtection() 
        && once(MapID == SirenBoss && prev(MapID) != SirenBoss)    
        && never(!WeaponSlotEmpty)
        && WeaponSlotEmpty && MapID == SirenBoss
        && trigger_when(Siren > prev(Siren))
)

achievement(
        title = "My Axe Also Cuts That [m]",
        description = "Defeat Golum with only an axe",
        points = 10,
        trigger = SaveProtection() 
        && once(MapID == GolumBoss && prev(MapID) != GolumBoss)    
        && never(WeaponSlotType != Axe)
        && WeaponSlotType == Axe && (MapID == GolumBoss)
        && trigger_when(Golum > prev(Golum))
)

achievement(
        title = "Magic vs Technology [m]",
        description = "Defeat Battle Tank with only magic spells [No weapons equipped]",
        points = 10,
        trigger = SaveProtection() 
        && once(MapID == BattleTankBoss && prev(MapID) != BattleTankBoss)    
        && never(!WeaponSlotEmpty)
        && WeaponSlotEmpty && MapID == BattleTankBoss
        && trigger_when(BattleTank > prev(BattleTank))
)

achievement(
        title = "The True Earthmate [m]",
        description = "Defeat Grimoire with only a two handed sword",
        points = 10,
        trigger = SaveProtection() 
        && once(MapID == GrimoireBoss && prev(MapID) != GrimoireBoss)    
        && never(WeaponSlotType != Sword2)
        && WeaponSlotType == Sword2 && (MapID == GrimoireBoss)
        && trigger_when(TrueGrimoire > prev(TrueGrimoire))
)

achievement(
        title = "Speedrune Factory [m]",
        description = "Defeat Grimoire in year 1",
        points = 50,
        trigger = SaveProtection()  && TrueGrimoire > prev(TrueGrimoire) && Year == 0
)