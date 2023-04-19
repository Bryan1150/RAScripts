// Harvest Moon DS
// #ID = 11637

//#region Variables
//Tools List
tool_Axe = 0x0000
tool_FishingRod = 0x0001
tool_Hammer = 0x0002
tool_Hoe = 0x0003
tool_Sickle = 0x0004
tool_WateringCan = 0x0005

tools = [tool_Axe, tool_FishingRod, tool_Hammer, tool_Sickle, tool_WateringCan, tool_Hoe]

item_Clipper = 0x0006
item_Milker = 0x0007
item_LegendarySword = 0x0008
item_AnimalMedicine = 0x0009
item_Bell = 0x000a
item_BlueFeather = 0x000b
item_Brush = 0x000c
item_CowMiraclePotion = 0x001d
item_SheepMiraclePotion = 0x001e
item_TurnipSeeds = 0x00c7
item_PotatoSeeds = 0x00c8
item_CucumberSeeds = 0x00c9
item_StrawberrySeeds = 0x00ca
item_CabbageSeeds = 0x00cb
item_TomatoSeeds = 0x00cc
item_CornSeeds = 0x00cd
item_OnionSeeds = 0x00ce
item_PumpkinSeeds = 0x00cf
item_PineappleSeeds = 0x00d0
item_EggplantSeeds = 0x00d1
item_CarrotSeeds = 0x00d2
item_YamSeeds = 0x00d3
item_SpinachSeeds = 0x00d4
item_BellPepperSeeds = 0x00d5
item_MoondropSeeds = 0x00d6
item_ToyflowerSeeds = 0x00d7
item_PinkcatSeeds = 0x00d8
item_MagicRedSeeds = 0x00d9
item_GrassSeeds = 0x00da
item_PeachSeeds = 0x00db
item_BananaSeeds = 0x00dc
item_OrangeSeeds = 0x00dd
item_AppleSeeds = 0x00de
item_GrapeSeeds = 0x00df
item_ShiitakeSeeds = 0x00e0
item_MatsutakeSeeds = 0x00e1
item_ToadstoolSeeds = 0x00e2

//#endregion

//Friendship Max 255
//0x3dbd58 [8-bit] Celia's Friendship
CeliaFP = byte(0x3dbd58)
//0x3dbd80 [8-bit] Muffy's Friendship
MuffyFP = byte(0x3dbd80)
//0x3dbda8 [8-bit] Nami's Friendship
NamiFP = byte(0x3dbda8)
//0x3dbdd0 [8-bit] Romana's Friendship
RomanaFP = byte(0x3dbdd0)
//0x3dbe20 [8-bit] Lumina's Friendship
LuminaFP = byte(0x3dbe20)
//0x3dbe48 [8-bit] Wally's Friendship
WallyFP = byte(0x3dbe48)
//0x3dbe70 [8-bit] Chris' Friendship
ChrisFP = byte(0x3dbe70)
//0x3dbe98 [8-bit] Grant's Friendship
GrantFP = byte(0x3dbe98)
//0x3dbec0 [8-bit] Kate's Friendship
KateFP = byte(0x3dbec0)
//0x3dbee8 [8-bit] Hugh's Friendship
HughFP = byte(0x3dbee8)
//0x3dbf10 [8-bit] Carter's Friendship
CarterFP = byte(0x3dbf10)
//0x3dbf38 [8-bit] Flora's Friendship
FloraFP = byte(0x3dbf38)
//0x3dbf60 [8-bit] Vesta's Friendship
VestaFP = byte(0x3dbf60)
//0x3dbf88 [8-bit] Marlin's Friendship
MarlinFP = byte(0x3dbf88)
//0x3dbfb0 [8-bit] Ruby's Friendship
RubyFP = byte(0x3dbfb0)
//0x3dbfd8 [8-bit] Rock's Friendship
RockFP = byte(0x3dbfd8)
//0x3dc000 [8-bit] Dr. Hardy's Friendship
HardyFP = byte(0x3dc000)
//0x3dc028 [8-bit] Galen - Friendship Points
GalenFP = byte(0x3dc028)
//[8-bit] Nina - Friendship Points
NinaFP = byte(0x3dc050)
//0x3dc078 [8-bit] Daryll - Friendship Points
DaryllFP = byte(0x3dc078)
//0x3dc0f0 [8-bit] Griffin's Friendship
GriffinFP = byte(0x3dc0f0)
//0x3dc280 [8-bit] Popuri's Friendship
PopuriFP = byte(0x3dc280)
//0x3dc3e8 [8-bit] Gray's Friendship
GrayFP = byte(0x3dc3e8)
//0x3dc398 [8-bit] Rick's Friendship
RickFP = byte(0x3dc398)
//0x3dc320 [8-bit] Mary's Friendship
MaryFP = byte(0x3dc320)
//0x3dc2d0 [8-bit] Karen's Friendship Points
KarenFP = byte(0x3dc2d0)
//0x3dc2f8 [8-bit] Elli's Friendship
ElliFP = byte(0x3dc2f8)
//0x3dc3c0 [8-bit] Trent's Friendship
TrentFP = byte(0x3dc3c0)
//0x3dc2a8 [8-bit] Ann's Friendship
AnnFP = byte(0x3dc2a8)
//0x3dc370 [8-bit] Cliff's Friendship
CliffFP = byte(0x3dc370)
//0x3dc500 [8-bit] Witch's Princess' Friendship
WitchFP = byte(0x3dc500)
//0x3dc118 [8-bit] Van's Friendship
VanFP = byte(0x3dc118)
//0x3dc1b8 [8-bit] Takakura's Friendship
TakakuraFP = byte(0x3dc1b8)
//0x3dc438 [8-bit] Thomas' Friendship
ThomasFP = byte(0x3dc438)
//0x3dbdf8 [8-bit] Sebastian's Friendship
SebastianFP = byte(0x3dbdf8)
//0x3dc0a0 [8-bit] Cody's Friendship
CodyFP = byte(0x3dc0a0)
//0x3dc0c8 [8-bit] Gustafa's Friendship
GustafaFP = byte(0x3dc0c8)
//0x3dc168 [8-bit] Patrick's Friendship
PatrickFP = byte(0x3dc168)
//0x3dc140 [8-bit] Kassey's Friendship
KasseyFP = byte(0x3dc140)
//0x3dc190 [8-bit] Murrey's Friendship
MurreyFP = byte(0x3dc190)
//0x3dc1e0 [8-bit] Mukumuku's Friendship
MukumukuFP = byte(0x3dc1e0)
//0x3dc4b0 [8-bit] Leia's Friendship
LeiaFP = byte(0x3dc4b0)
//0x3dc4d8 [8-bit] Keira's Friendship
KeiraFP = byte(0x3dc4d8)
//0x3dc348 [8-bit] Kai's Friendship
KaiFP = byte(0x3dc348)
//0x3dc460 [8-bit] Gotz's Affection
GotzFP = byte(0x3dc460)
//0x3dc410 [8-bit] Harvest Goddess' Friendship
GoddessFP = byte(0x3dc410)
//0x3dc230 [8-bit] Barney's Friendship
BarneyFP = byte(0x3dc230)
//0x3dc258 [8-bit] Mimi's Friendship
MimiFP = byte(0x3dc258)

//Item Slots
FirstItemSlot = 0x3d6b24
LastItemSlot = 0x3d6bf8
EquippedTool = word(0x3d6b0c)

//Time
//0x1cbb02 [8-bit] Time | Hours
Hours = byte(0x1cbb02)
//0x1cbb03 [8-bit] Time | Minutes
Minutes = byte(0x1cbb03)

//SongID 0x1d1334 0x12 = Bear Shuffle Minigame / Heart Event 2
//0x2d = Dog House Minigame / Credits
//0x30 = Girl memory Minigame / Last Dance
BearShuffleSong = byte(0x1d1334) == 0x12
DogHouseSong = byte(0x1d1334) == 0x2d
GirlMemorySong = byte(0x1d1334) == 0x30
HarvestGoddessSong = byte(0x1d1334) == 0x13

//Event Flags
//0x3dde08 = Bit 7 - Recieve Fishing Rod
RecieveFishingRod = bit7(0x3dde08)
//0x3dde05 Bit 6 - Get Horse
GetHorse = bit6(0x3dde05)
//0x3dde54 Bit 1 - Entered New Years Day Area/Goes to 0 when festival ends
NewYearsDay = bit1(0x3dde54)
//0x3dde60  Bit 3 - Gave Cookies to Celia Bit 4 - Gave Cookies to Muffy Bit 5 - Gave Cookies to Nami Bit 6 - Gave Cookies to Lumina Bit 7 - Gave Cookies to Flora
CookieCelia = bit3(0x3dde60)
CookieMuffy = bit4(0x3dde60)
CookieNami = bit5(0x3dde60)
CookieLumina = bit6(0x3dde60)
CookieFlora = bit7(0x3dde60)
//0x3dde61 Bit 0 - Gave Cookies to Karen Bit 1 - Gave Cookies to Popuri Bit 2 - Gave Cookies to Ann Bit 3 - Gave Cookies to Mary Bit 4 - Gave Cookies to Elli 
//Bit 5 - Gave Cookies to H. Goddess Bit 6 - Gave Cookies to W. Princess Bit 7 - Gave Cookies to Keira
CookieKaren = bit0(0x3dde61)
CookiePopuri = bit1(0x3dde61)
CookieAnn = bit2(0x3dde61)
CookieMary = bit3(0x3dde61)
CookieElli = bit4(0x3dde61)
CookieGoddess = bit5(0x3dde61)
CookieWitch = bit6(0x3dde61)
CookieKeira = bit7(0x3dde61)
//0x3dde62 Bit 0 - Gave Cookies to Leia
CookieLeia = bit0(0x3dde62)
SpringThanksgiving = [CookieCelia, CookieMuffy, CookieNami, CookieLumina, CookieFlora, CookieKaren, CookiePopuri, CookieAnn, CookieMary, CookieElli, CookieGoddess, CookieWitch, CookieKeira, CookieLeia]
//0x3dde55 Bit 2 - Entered Kai beach event area
KaiBeach = bit2(0x3dde55)
//0x3dde6b Bit 5 = Festival ocurred
FestivalOcurred = bit5(0x3dde6b)
//0x3dde56 Bit 1 - Entered Fireworks Area
Fireworks = bit1(0x3dde56)
//0x3dde60 Bit 1 - Provided an ingredient for the harvest festival
HarvestFestival = bit1(0x3dde60)
//0x3dde56 Bit 7 - Kate came for Pumpkin Festival
KatePumpkin = bit7(0x3dde56)
//0x3dde57 Bit 0 - Hugh came for Pumpkin Festival Bit 1 - Popuri came for Pumpkin Festival
HughPumpkin = bit0(0x3dde57)
PopuriPumpkin = bit1(0x3dde57)
PumpkinFestival = [KatePumpkin, HughPumpkin, PopuriPumpkin]
//Friendships And Affections
//0x3dbec0 [8-bit] Kate's Friendship
KateFriendship = byte(0x3dbec0)
//0x3dbee8 [8-bit] Hugh's Friendship
HughFriendship = byte(0x3dbee8)
//0x3dc280 [8-bit] Popuri's Friendship
PopuriFriendship = byte(0x3dc280)
//Winter Thanksgiving
//0x3dde62 
//Bit 1 - Recieved Cookies from Celia
ReceivedCelia = bit1(0x3dde62)
//Bit 2 - Recieved Cookies from Muffy
ReceivedMuffy = bit2(0x3dde62)
//Bit 3 - Recieved Cookies from Nami
ReceivedNami = bit3(0x3dde62)
//Bit 4 - Recieved Cookies from Lumina
ReceivedLumina = bit4(0x3dde62)
//Bit 5 - Recieved Cookies from Flora
ReceivedFlora = bit5(0x3dde62)
WinterThanksgiving = [ReceivedCelia, ReceivedMuffy, ReceivedNami, ReceivedLumina, ReceivedFlora]
//0x3dde58 
//Bit 2 - Spend Starry Night with Celia
SNCelia = bit2(0x3dde58)
//Bit 3 - Spend Starry Night with Muffy
SNMuffy = bit3(0x3dde58)
//Bit 4 - Spend Starry Night with Nami
SNNami = bit4(0x3dde58)
//Bit 5 - Spend Starry Night with Lumina
SNLumina = bit5(0x3dde58)
//Bit 6 - Spend Starry Night with Flora
SNFlora = bit6(0x3dde58)
//Bit 7 - Spend Starry Night with H. Goddess
SNGoddess = bit7(0x3dde58)
//0x3dde59
//Bit 0 - Spend Starry Night with Witch Princess
SNPrincess = bit0(0x3dde59)
//Bit 2 - Spend Starry Night with Leia
SNLeia = bit2(0x3dde59)
StarryNight = [SNCelia, SNMuffy, SNNami, SNLumina, SNFlora, SNGoddess, SNPrincess, SNLeia]
//0x3dde12 Bit 7- Nina made socks for you
NinaSocks = bit6(0x3de308)
//0x3ddebe Christmas gift buffer [Item ID]
ChristmasGift = word(0x3ddebe)
//0x3dde59 Bit 5 - Entered New Years Eve area
NewYearsEve = bit5(0x3dde59)
//0x3d33e0 [N-bit] Girl Minigame Win Flag Bit 0 - Won Bit 1 - Give Up
MemoryMinigameState = bit0(0x3d33e0)
//0x3d33f4 [8-bit] Bear Shuffle Win Count
BearShuffleWinCount = byte(0x3d33f4)
//0x3d33ac [8-bit] Quantity of girls beaten - Doghouse minigame
GirlsBeatenDogHouse = byte(0x3d33ac)
//0x3d33c8 [8-bit] Marriage Candidate - Doghouse Minigame / Low-High Minigame Score
LowHighScore = byte(0x3d33c8)
//0x3de0a6 Questions 5 - 13 0x3de0a8 Questions 22 - 29
QuestionStart = 0x3de0a6
QuestionEnd = 0x3de0a8
//0x3de0a5 Bit 3 - Bit 7 - Questions 1-5
Question1 = bit3(0x3de0a5)
Question2 = bit4(0x3de0a5)
Question3 = bit5(0x3de0a5)
Question4 = bit6(0x3de0a5)
Question5 = bit7(0x3de0a5)
//0x3de0a9 Questions 30-35 (Bit 0 to Bit 5)
Question30 = bit0(0x3de0a9)
Question31 = bit1(0x3de0a9)
Question32 = bit2(0x3de0a9)
Question33 = bit3(0x3de0a9)
Question34 = bit4(0x3de0a9)
Question35 = bit5(0x3de0a9)
ExtraQuestions = [Question1, Question2, Question3, Question4, Question5, Question30, Question31, Question32, Question33, Question34, Question35]
//0x3de189 [N-bit] Casino Bought Flags Bit 7 - Teleport Stone
TeleportStone = bit7(0x3de189)
//0x3de18a Bit 0 - Truth Bangle
TruthBangle = bit0(0x3de18a)
//Bit 1 - Love Bangle
LoveBangle = bit1(0x3de18a)
//Bit 2 - Red Cloak
RedCloak = bit2(0x3de18a)
//Bit 3 - Godhand
Godhand = bit3(0x3de18a)
//Bit 4 - Miracle Gloves
MiracleGloves = bit4(0x3de18a)
//0x3ddc38 [N-bit] Card List | Common | 001 - 008
CommonStart = 0x3ddc38
//0x3ddc83 [N-bit] Card List | Common | 600 - 608
CommonEnd = 0x3ddc83
//0x3ddc84 [N-bit] Card List | Uncommon | 001 - 008
UncommonStart = 0x3ddc84
//0x3ddccf [N-bit] Card List | Uncommon | 600 - 608
UncommonEnd = 0x3ddccf
//0x3ddcd0 [N-bit] Card List | Rare | 001 - 008
RareStart = 0x3ddcd0
//0x3ddd1b [N-bit] Card List | Rare | 600 - 608
RareEnd = 0x3ddd1b
//0x3ddd1c [N-bit] Card List | Very Rare | 001 - 008
VeryRareStart = 0x3ddd1c
//0x3ddd67 [N-bit] Card List | Very Rare | 600 - 608
VeryRareEnd = 0x3ddd67
//0x3ddd68 [N-bit] Card List | Super Rare | 001 - 008
SuperRareStart = 0x3ddd68
//0x3dddb3 [N-bit] Card List | Super Rare | 600 - 608
SuperRareEnd = 0x3dddb3
//0x3de0aa Song Flags 1
SongFlags1 = 0x3de0aa
//0x3de0ab Song Flags 2
SongFlags2 = 0x3de0ab
//0x3de0a9 Bit 6 - Spring Song Bit 7 - Town Spirit
SpringSong = bit6(0x3de0a9)
TownSpirit = bit7(0x3de0a9)
//0x3de0ac Bit 0 - WALK
WALK = bit0(0x3de0ac)
//Bit 1 - Sprite Samba
SpriteSamba = bit1(0x3de0ac)
//Bit 2 - FoMT Spring Song
FOMTSpring = bit2(0x3de0ac)
//Bit 3 - FoMT Summer Song
FOMTSummer = bit3(0x3de0ac)
//Bit 4 - FoMT Fall Song
FOMTFall = bit4(0x3de0ac)
//Bit 5 - FoMT Winter Song
FOMTWinter = bit5(0x3de0ac)
//BIt 6 - FoMT Last Dance
FOMTLastDance = bit6(0x3de0ac)
RemainingSongs = [SpringSong, TownSpirit, WALK, SpriteSamba, FOMTSpring, FOMTSummer, FOMTFall, FOMTWinter, FOMTLastDance]
//0x3dde0e Bit 3 - The Painting, part 1
ThePaintingPart1 = bit3(0x3dde0e)

//Bought/Upgraded Flags
//0x3de17f = Bit 7 - Basquet
BoughtBasquet = bit7(0x3de17f)
//0x3de191 Bit 7 = Mystrile Axe
MystrileAxe = bit7(0x3de191)
//0x3de192 Bit 0 = Cursed Axe, Bit 1 = Mythic Axe, Bit 5 = Mystrile Sickle, Bit 6 = Cursed Sickle, Bit 7 = Mythic Sickle
CursedAxe = bit0(0x3de192)
MythicAxe = bit1(0x3de192)
MystrileSickle = bit5(0x3de192)
CursedSickle = bit6(0x3de192)
MythicSickle = bit7(0x3de192)
//0x3de193 Bit 3 = Mystrile Hoe, Bit 4 = Cursed Hoe, Bit 5 = Mythic Hoe
MystrileHoe = bit3(0x3de193)
CursedHoe = bit4(0x3de193)
MythicHoe = bit5(0x3de193)
//0x3de194 Bit 1 = Mystrile Fishing Rod, Bit 2 = Cursed Fishing Rod, Bit 3 = Mythic Fishing Rod, Bit 7 = Mystrile Watering Can
MystrileFishingRod = bit1(0x3de194)
CursedFishingRod = bit2(0x3de194)
MythicFishingRod = bit3(0x3de194)
MystrileWateringCan = bit7(0x3de194)
//0x3de195 Bit 0 = Cursed Watering Can, Bit 1 = Mythic Watering Can, Bit 5 = Mystrile Hammer, Bit 6 = Cursed Hammer, Bit 7 = Mythic Hammer
CursedWateringCan = bit0(0x3de195)
MythicWateringCan = bit1(0x3de195)
MystrileHammer = bit5(0x3de195)
CursedHammer = bit6(0x3de195)
MythicHammer = bit7(0x3de195)
//0x3de17c Bit 1 = Blessed Axe Bit 2 = Blessed Scythe Bit 3 = Blessed Hoe Bit 4 = Blessed Fishing Rod Bit 5 = Blessed Watering Can Bit 6 = Blessed Hammer
BlessedAxe = bit1(0x3de17c)
BlessedSickle = bit2(0x3de17c)
BlessedHoe = bit3(0x3de17c)
BlessedFishingRod = bit4(0x3de17c)
BlessedWateringCan = bit5(0x3de17c)
BlessedHammer = bit6(0x3de17c)
//0x3dddc4 Bit 1 = Sprite Fen Appears (Workaround for Blessed Hammer)
BlessedHammerBackup = bit1(0x3dddc4)

MystrileTools = [MystrileAxe, MystrileFishingRod, MystrileSickle, MystrileHoe, MystrileHammer, MystrileWateringCan]
CursedTools = [CursedAxe, CursedFishingRod, CursedSickle, CursedHoe, CursedHammer, CursedWateringCan]
MythicTools = [MythicAxe, MythicFishingRod, MythicSickle, MythicHoe, MythicHammer, MythicWateringCan]
BlessedTools = [BlessedAxe, BlessedSickle, BlessedHoe, BlessedFishingRod, BlessedWateringCan, BlessedHammer]
BlessedToolsBackup = [BlessedAxe, BlessedSickle, BlessedHoe, BlessedFishingRod, BlessedWateringCan, BlessedHammerBackup]

//Item To UpgradeBlacksmith and Type Of Upgrade
ToolToUpgrade = word(0x3ddece)
Nothing = 0xffff
TypeOfUpgrade = word(0x3dded0)
Copper = 0x0034
Silver = 0x0035
Gold = 0x0036
Mystrile = 0x0039
Mythic = 0x003c

//Rucksack Level 0x3ddf14
rucksackLevel = byte(0x3ddf14)
SmallRucksack = 0x00
MediumRucksack = 0x01
BigRucksack = 0x02

//House Level
HouseLevel = byte(0x3de2fc)
SmallHouse = 0x00
MediumHouse = 0x01
LargeHouse = 0x02

//Toilet 0x3dcd00 [8-bit] Toilet 0x05 = Built 0x14 = Being built
Toilet = byte(0x3dcd00)
//Bathroom 0x3dccfc 0x05 = Built 0x14 = Being built
Bathroom = byte(0x3dccfc)
//Basement 3 0x3dcd0c Bit 0 = Built Bit 4 = Being Built
Basement = bit0(0x3dcd0c)

Built = 0x5
BeingBuilt = 0x14

//Animals 1 heart every 100, 10 hearts 1000
//[16-bit] Dog's Affection 0x3dc976
DogAffection = word(0x3dc976)
//[16-bit] Cat's Affection 0x3dc98e
CatAffection = word(0x3dc98e)
//[16-bit] Horse's Affection 0x3dc95e
HorseAffection = word(0x3dc95e)

//Buildings
//0x01 = Chicken Coop 0x02 = Animal Barn
ChickenCoop = 0x02
AnimalBarn = 0x01
NotBuilt = 0xff
Building1 = byte(0x3dcc65)
Building2 = byte(0x3dcc6d)
Building3 = byte(0x3dcc75)
Building4 = byte(0x3dcc7d)
Building5 = byte(0x3dcc85)
Building6 = byte(0x3dcc8d)
Building7 = byte(0x3dcc95)
Buildings = [Building1, Building2, Building3, Building4, Building5, Building6, Building7]

//Fodder Silo 0x3dcce0 Bit 0 = Built
FodderSilo = bit0(0x3dcce0)
//Mushroom Shed 0x3dccf0 Bit 0 = Built
MushroomShed = bit0(0x3dccf0)
//LumberShed 0x3dcce4 Bit 0 - Built
LumberShed = bit0(0x3dcce4)
//StoneShed 0x3dcce8 Bit 0 - Built
StoneShed = bit0(0x3dcce8)
//GoldenLumberShed 0x3dccec Bit 0 - built
GoldenLumberShed = bit0(0x3dccec)
StorageSheds = [LumberShed, StoneShed, GoldenLumberShed]
//DuckPond 0x3dcd10 Bit 0 - Built
DuckPond = bit0(0x3dcd10)
//MakerShed 0x3dccf4 Bit 0 - Built
MakerShed = bit0(0x3dccf4)
//Cottage 0x3dccf8 Bit 0 - Built
Cottage = bit0(0x3dccf8)

//Maker Flags 0x3de30a Bit 1 - Mayonnaise Maker Bit 2 - Cheese Maker Bit 3 - Yogurt Maker Bit 4 - Yarn Maker Bit 5 - Seed Maker Bit 6 - Can Food Maker
MayonnaiseMaker = bit1(0x3de30a)
CheeseMaker = bit2(0x3de30a)
YogurtMaker = bit3(0x3de30a)
YarnMaker = bit4(0x3de30a)
SeedMaker = bit5(0x3de30a)
CanFoodMaker = bit6(0x3de30a)

Makers = [MayonnaiseMaker, CheeseMaker, YogurtMaker, YarnMaker, SeedMaker, CanFoodMaker]

//Furniture Flags
//0x3de308 Bit 0 - Tool Box Bit 1 - Beauty Box Bit 2 - Round Table Bit 3 - Television Bit 4 - DVD Player Bit 5 - Clock Bit 6 - Sock on hanger? Bit 7 - Shelf
ToolBox = bit0(0x3de308)
BeautyBox = bit1(0x3de308)
RoundTable = bit2(0x3de308)
Television = bit3(0x3de308)
DVDPlayer = bit4(0x3de308)
Clock = bit5(0x3de308)
Shelf = bit7(0x3de308)
//0x3de309 Bit 0 - Refrigerator Bit 1 - Kitchen Bit 2 - Pot Bit 3 - Mixer Bit 4 - Frying Pan Bit 5 - Steamer Bit 6 - Oven Bit 7 - Big Bed
Refrigerator = bit0(0x3de309)
Kitchen = bit1(0x3de309)
Pot = bit2(0x3de309)
Mixer = bit3(0x3de309)
FryingPan = bit4(0x3de309)
Steamer = bit5(0x3de309)
Oven = bit6(0x3de309)
BigBed = bit7(0x3de309)

Furniture = [ToolBox, BeautyBox, RoundTable, Television, DVDPlayer, Clock, Shelf, Refrigerator, Kitchen, Pot, Mixer, FryingPan, Steamer, Oven, BigBed]

//StageIDs 0x3d3e68
location = byte(0x3d3e68)
RomanaMansion = 0x00
Farmland = 0x01
MainPathway = 0x02
TurtlePond = 0x03
Beach = 0x04
EmptyArea = 0x06
WaterfallArea = 0x07
VestaFarm = 0x08
GoddessPond = 0x09
GalenHouse = 0x2a
SpritesTree = 0x2d
FarmHouse = 0x30
TakakuraHouse = 0x34
Stable = 0x37
Mine = 0x3c
LegendarySwordPlace = 0x40
Casino = 0x2e
//0x39 = Mine Entrance / Minigames
MineEntrance = 0x39

//Mine Flags 0x3ddf41
//Bit 4 = Unlocked 1st Mine Bit 5 = Unlocked 2nd Mine Bit 6 = Unlocked 3rd Mine Bit 7 = Unlocked 4rd Mine
SecondMine = bit5(0x3ddf41)
ThirdMine = bit6(0x3ddf41)
FourthMine = bit7(0x3ddf41)
//0x3ddf7a [16-bit] 4th Mine - Lowest Floor
FourthMineLowestFloor = word(0x3ddf7a)
//0x3dde25 [N-bit] Event Flags Bit 1 = Found all wonderfuls
WonderfulsFlag = bit1(0x3dde25)
//Start of Mine Items
MineItemStart = 0x3ddf39
MineItemEnd = 0x3ddf3f
//0x3ddf40 Bit 0 - Sunblock Bit 1 - Perfume
RemainingMineFlags = [bit0(0x3ddf40), bit1(0x3ddf40), bit2(0x3ddf38), bit3(0x3ddf38), bit4(0x3ddf38), bit5(0x3ddf38), bit6(0x3ddf38), bit7(0x3ddf38)]
//[N-bits] Mine List Flags Bit 2 - Coin Bit 3 - Black GrassBit 4 - Junk Ore Bit 5 - Copper Bit 6 - Silver Bit 7 - Gold
//Mine Enemies
MineEnemiesStart = 0x3ddf44
MineEnemiesEnd = 0x3ddf68
//Cursed Accessories 
//0x3ddf3b Bit 4 - H. Goddess Earrings Bit 5 - Kappa Earrings Bit 6 - Witch P Earrings Bit 7 - Friendship Pendant
//0x3ddf3c Bit 0 - Slow Shoes Bit 1 - Time Ring Bit 2 - H. Goddess Pendant Bit 3 - Kappa Pendant Bit 4 - Harvest Goddess Hat Bit 5 - Kappa Hat
CursedAccessories = [bit4(0x3ddf3b), bit5(0x3ddf3b), bit6(0x3ddf3b), bit7(0x3ddf3b), bit0(0x3ddf3c), bit1(0x3ddf3c), bit2(0x3ddf3c), bit3(0x3ddf3c), bit4(0x3ddf3c), bit5(0x3ddf3c)]
//0x3d73a8 to 0x3d762c Beauty Box Inventory
BeautyBoxStart = 0x3d73a8
BeautyBoxEnd = 0x3d762c
//Accessories IDs 0x0125: Teleport Stone 0x0126 = Pedometer 0x0127 = Clock[Unused] 0x0128 = Red Cloak 0x0129 = Slow Shoes 0x012a = Truth Bangle 0x012b = Love Bangle 0x012c = Godhand 0x012d = Miracle Gloves
//0x012e = Touch Panel Gloves 0x012f =Necklace 0x0130 = H. Goddess Earrings 0x0131 = Kappa Earrings 0x0132 = Witch P Earrings 0x0133 = Friendship Pendant 0x0134 = H. Goddess Pendant
//0x0135 = Kappa Pendant 0x0136 = Time Ring 0x0137 = Harvest Goddess Hat 0x0138 = Kappa Hat
KappaEarings = 0x030131
HGoddessEarrings = 0x030130
WitchPEarrings = 0x010132
FriendshipPendant = 0x030133
FastShoes = 0x010129
TimeRing = 0x010136
HGoddessPendant = 0x030134
KappaPendant = 0x030135
HarvestGoddessHat = 0x030137
KappaHat = 0x030138
BlessedAccessories = [KappaEarings, HGoddessEarrings, WitchPEarrings, FriendshipPendant, FastShoes, TimeRing, HGoddessPendant, KappaPendant, HarvestGoddessHat, KappaHat]
EquippedAccessorySlot = 0x3d6b14

//KingFishes [N-bits] Fish Catched Bit 0 - Message in a bottle  Bit 1 - Huchen Bit 2 - Angler Fish Bit 3 - Spa Catfish Bit 4 - Carp  Bit 5 - Coelacanth Bit 6 - Squid
Huchen = bit1(0x3de07c)
AnglerFish = bit2(0x3de07c)
SpaCatfish = bit3(0x3de07c)
Carp = bit4(0x3de07c)
Coelacanth = bit5(0x3de07c)
Squid = bit6(0x3de07c)
KingFishes = [Huchen, AnglerFish, SpaCatfish, Carp, Coelacanth, Squid]

//Harvest Sprites
//RedTeam 0x3dc548 0x3dc554 0x3dc560 0x3dc56c 0x3dc578 0x3dc584 0x3dc590 0x3dc59c 0x3dc5a8 0x3dc5b4 0x3dc5c0 0x3dc5cc
RedTeamStart = 0x3dc548
RedTeamEnd = 0x3dc5cc
OrangeTeamStart = 0x3dc5d8
OrangeTeamEnd = 0x3dc65c
YellowTeamStart = 0x3dc668
YellowTeamEnd = 0x3dc6ec
GreenTeamStart = 0x3dc6f8
GreenTeamEnd = 0x3dc77c
IndigoTeamStart = 0x3dc788
IndigoTeamEnd = 0x3dc80c
PurpleTeamStart = 0x3dc818
PurpleTeamEnd = 0x3dc89c
BlueTeamStart = 0x3dc8a8
BlueTeamEnd = 0x3dc92c
//Brown Team Single Flags
Guts = bit0(0x3dc938)
Roller = bit0(0x3dc93c)
Hops = bit0(0x3dc940)
Tep = bit0(0x3dc944)
Jum = bit0(0x3dc948)
Jet = bit0(0x3dc94c)
Jackie = bit0(0x3dc950)
BrownTeam = [Guts, Roller, Hops, Tep, Jum, Jet, Jackie]
//White team baby
WBaby = bit0(0x3dc954)
//BlackTeam
Mercury = bit5(0x3dddcd)
Venus = bit6(0x3dddcd)
Earth = bit7(0x3dddcd)
Mars = bit0(0x3dddce)
Jupiter = bit1(0x3dddce)
Saturn = bit2(0x3dddce)
Uranus = bit3(0x3dddce)
Neptune = bit4(0x3dddce)
Pluto = bit5(0x3dddce)
BlackTeam = [Mercury, Venus, Earth, Mars, Jupiter, Saturn, Uranus, Neptune, Pluto]
AllRemainingTeamMembers = [Guts, Roller, Hops, Tep, Jum, Jet, Jackie,Mercury, Venus, Earth, Mars, Jupiter, Saturn, Uranus, Neptune, Pluto, WBaby]

//Map on bottom Screen
NotMap = byte(0x1cbb01) == 0

//BottomMenu
BottomMenu = byte(0x3b56fc)
bmSaveLoad = 0x01
bmRucksack = 0x02
bmMap = 0x03
bmFarmAssets = 0x05

//Load Pop Up while on Save/Load Menu
LoadPop = byte(0x3b5780)
lpNotLoading = 0x00
lpPopUp = 0x01

//Cutscene Check
InCutscene = bit0(0x3d31d8) == 1
InCutscenePrev = prev(bit0(0x3d31d8)) == 1
ASCII = dword(0x3ffa80)
//OnCellphone Check
OnCellphone = byte(0x3d687c) == 0x01 && never(ASCII != 0x44204d48)
NotOnCellphone = byte(0x3d687c) != 0x01
// Check if array of passed flags goes from previously all but one flag is true
// to all flags being true.
function FlagsComplete(Flags)
{
    return sum_of(Flags, f => prev(f)) == length(Flags) - 1 &&
        measured(sum_of(Flags, f => f) == length(Flags)) 
}

function SumFlags(Flags, result){
    return measured(sum_of(Flags, f => f) == result)
}

function SumPreviousFlags(Flags, result){
    return sum_of(Flags, f => prev(f)) == result
}


function SaveProtection() => !(NotMap && BottomMenu == bmSaveLoad && LoadPop != lpNotLoading) && never(ASCII != 0x44204d48)

function EventCheevo(title, description, points, eventFlag){
    achievement(
        title, description, points,
        trigger = 
            once(SaveProtection() && eventFlag == 1 && prev(eventFlag) == 0) &&
            !InCutscene
    )
}

function StarryNightLogic(Flags){
    logic = always_false()
    for flag in Flags{
        logic = logic || once(SaveProtection() && flag == 1 && prev(flag) == 0)
    }
    return logic
}

function StarryNight(title, description, points, eventFlags){
    achievement(
        title, description, points,
        trigger = 
            StarryNightLogic(eventFlags) &&
            !InCutscene
    )
}

function FestivalCheevo(eventFlag, title, description, points){
    achievement(
        title, description, points,
        trigger = 
            once(SaveProtection() && eventFlag == 1 && prev(eventFlag) == 0) &&
            (FestivalOcurred == 1 && prev(FestivalOcurred) == 0) &&
            never(location != prev(location))
    )
}

function FestivalCheevo2(eventFlag, title, description, points){
    achievement(
        title, description, points,
        trigger = 
            once(SaveProtection() && eventFlag == 1 && prev(eventFlag) == 0) &&
            location == FarmHouse &&
            never(location == Farmland && prev(location) == FarmHouse)
    )
}

function BuyOrUpgradeCheevo(title, description, points, BuyOrUpgradeFlag){
    achievement(
        title, description, points,
        trigger = 
            OnCellphone && 
            prev(BuyOrUpgradeFlag) == 0 &&
            BuyOrUpgradeFlag == 1 
	)
}
	
function RuckSackCheevo(previousSize, currentSize, title, description, points){
	achievement(
		title, description, points,
		trigger = OnCellphone &&
				prev(rucksackLevel) == previousSize &&
				rucksackLevel == currentSize
		)
}

function isTool(tool) => prev(ToolToUpgrade) == tool

function toolUpgradeCheevo(UpgradeMaterial, title, description, points){
    achievement(
            title, description, points,
            trigger = 
                SaveProtection() &&
                location == Farmland &&
                prev(TypeOfUpgrade) == UpgradeMaterial && TypeOfUpgrade == Nothing &&
                prev(ToolToUpgrade) <= 5 &&
                ToolToUpgrade == Nothing
    )
}

function MythicToolUpgradeCheevo(tool, title, description, points){
    achievement(
            title, description, points,
            trigger = 
                SaveProtection() &&
                location == Farmland &&
                prev(TypeOfUpgrade) == Mythic && TypeOfUpgrade == Nothing &&
                prev(ToolToUpgrade) == tool &&
                ToolToUpgrade == Nothing
    )
}

function allToolsUpgraded(UpgradeSet, UpgradeMaterial, title, description, points){
    achievement(
        title, description, points,
        trigger = 
            SaveProtection() &&      
            location == Farmland &&
            prev(TypeOfUpgrade) == UpgradeMaterial && TypeOfUpgrade == Nothing &&
            prev(ToolToUpgrade) <= 5 &&
            ToolToUpgrade == Nothing && 
            SumFlags(UpgradeSet, length(UpgradeSet)) 
    )
}

function AnyFlagTrue(Flags, title, description, points){
    achievement(
        title, description, points,
        trigger = 
            SaveProtection() &&
            SumFlags(Flags, 1) &&
            SumPreviousFlags(Flags, 0) 
    )
}

function FlagOrChain(Flags){
    logic = always_false()
    for flag in Flags{
        logic = logic || (flag == 1 && prev(flag) == 0)
    }
    return logic
}

function AnyFlagTrueNotSum(Flags, title, description, points){
    achievement(
        title, description, points,
        trigger = SaveProtection() &&
        FlagOrChain(Flags)
    )
}

//0x3dd289-0x3dd63f
function FlagOrChainCrop(){
    logic = always_false()
    for flag in range(0x3dd289, 0x3dd63f, 50){
        logic = logic || (bit1(flag) == 1 && prev(bit1(flag)) == 0)
    }
    return logic
}

function CropLevel(title, description, points){
    achievement(
        title, description, points,
        trigger = SaveProtection() &&
        FlagOrChainCrop()
    )
}

function AllFlagsTrue(Flags, title, description, points){
    achievement(
        title, description, points,
        trigger = 
            SaveProtection() &&
            SumFlags(Flags, length(Flags)) &&
            SumPreviousFlags(Flags, length(Flags) - 1) 
    )
}

function AllFlagsTrueCellphone(Flags, title, description, points){
    achievement(
        title, description, points,
        trigger = 
            (SaveProtection() || OnCellphone) &&
            SumFlags(Flags, length(Flags)) &&
            SumPreviousFlags(Flags, length(Flags) - 1) 
    )
}


function AllFlagsSum(Flags, Sum, title, description, points){
    achievement(
        title, description, points,
        trigger = SaveProtection() &&
            SumFlags(Flags, Sum) &&
            SumPreviousFlags(Flags, Sum - 1) 
    )
}

function CheckReceivedItem(item){
    inventory = []
    for address in range(FirstItemSlot, LastItemSlot, 4) {
       array_push(inventory, word(address) == item && prev(word(address)) == Nothing)
    }
    array_push(inventory, EquippedTool == item && EquippedTool == Nothing)
    return any_of(inventory, a => a)
}

function checkAccessories(item){
    logic = always_false()
    logicTemp = always_true()
    for address in range(FirstItemSlot, LastItemSlot, 4){              
        logic = logic || (tbyte(address) == item)       
    }
    
    for address in range(BeautyBoxStart, BeautyBoxEnd, 4){              
        logic = logic || (tbyte(address) == item)       
    }
    
    logic = logic || (tbyte(EquippedAccessorySlot) == item)
    return logic
}

function checkAccessoriesPrev(item){
    logic = always_false()
    for address in range(FirstItemSlot, LastItemSlot, 4){      
        logic = logic || (prev(tbyte(address)) == item)        
    }
    
    for address in range(BeautyBoxStart, BeautyBoxEnd, 4){              
        logic = logic || (prev(tbyte(address)) == item)       
    }
    logic = logic || (prev(tbyte(EquippedAccessorySlot)) == item)
    return logic
}

function BlessedAccessories(title, description, points){
    achievement(
        title, description, points,
        trigger =  SaveProtection() &&
            measured(tally(6, tally(1, checkAccessories(KappaEarings)), tally(1, checkAccessories(HGoddessEarrings)), tally(1, checkAccessories(WitchPEarrings)), tally(1, checkAccessories(FriendshipPendant)),
            tally(1, checkAccessories(HGoddessPendant)), tally(1, checkAccessories(KappaPendant))
            )) &&
            never(tally(6, tally(1, checkAccessoriesPrev(KappaEarings)), tally(1, checkAccessoriesPrev(HGoddessEarrings)), tally(1, checkAccessoriesPrev(WitchPEarrings)), tally(1, checkAccessoriesPrev(FriendshipPendant)),
            tally(1, checkAccessoriesPrev(HGoddessPendant)), tally(1, checkAccessoriesPrev(KappaPendant))
            ))
        
    )
}
//[KappaEarings, HGoddessEarrings, WitchPEarrings, FriendshipPendant, FastShoes, TimeRing, HGoddessPendant, KappaPendant, HarvestGoddessHat, KappaHat
function BlessedAccessories2(title, description, points){
    achievement(
        title, description, points,
        trigger =  SaveProtection() &&
            measured(tally(4, tally(1, checkAccessories(TimeRing)), tally(1, checkAccessories(FastShoes)), tally(1, checkAccessories(KappaHat)), tally(1, checkAccessories(HarvestGoddessHat))
            )) &&
            never(tally(4, tally(1, checkAccessoriesPrev(TimeRing)), tally(1, checkAccessoriesPrev(FastShoes)), tally(1, checkAccessoriesPrev(KappaHat)), tally(1, checkAccessoriesPrev(HarvestGoddessHat))
            ))
        
    )
}

function BuildingCheck(buildingType){
    buildingLogic = []
    for build in Buildings{
        array_push(buildingLogic, build == buildingType && prev(build) == NotBuilt)
    }
    return any_of(buildingLogic, a => a)
}

function CheckPreviousItem(){
    inventory = []
    for address in range(FirstItemSlot, LastItemSlot, 4) {
       array_push(inventory, prev(word(address)) == Nothing)
    }
    array_push(inventory, EquippedTool == Nothing)
    return any_of(inventory, a => a)
}

function LegendarySword(title, description, points){
    achievement(
        title, description, points,
        trigger = SaveProtection() &&
            CheckReceivedItem(item_LegendarySword) &&
            location == LegendarySwordPlace
    )
}

function DeltaToValue(Previous, Current, Address, title, description, points){
    achievement(
        title, description, points, 
        trigger = SaveProtection() &&
            prev(Address) == Previous &&
            Address == Current
    )
}

function SingleFlag(flag, title, description, points){
    achievement(
        title, description, points,
        trigger = SaveProtection() &&
            prev(flag) == 0 &&
            flag == 1
    )
}


function SingleFlagReverse(flag, title, description, points){
    achievement(
        title, description, points,
        trigger = SaveProtection() &&
            prev(flag) == 1 &&
            flag == 0
    )
}

function CheckSpecificBuilding(buildingType, title, description, points){
    achievement(
        title, description, points,
        trigger = SaveProtection() &&
        BuildingCheck(buildingType)
    )
}

function CertainValueRange(prevrange, current, address, title, description, points){
    achievement(
        title, description, points,
        trigger = SaveProtection() &&
            prev(address) >= prevrange &&
            prev(address)!= current &&
            address == current
    )
}

function BitflagRangeCount(RangeStart, RangeEnd){
    count = 0
    for address in range(RangeStart, RangeEnd){
        count = count + bitcount(address)
    }
    return count
}

function BitflagsSprites(RangeStart, RangeEnd){
    count = 0
    for address in range(RangeStart, RangeEnd, 12){
        count = count + bit0(address)
    }
    return count
}

function BitRangeSprites(RangeStart, RangeEnd, ExtraFlags, quantity, title, description, points){    
       achievement(
            title, description, points,
            trigger = SaveProtection() &&
                measured(BitflagsSprites(RangeStart, RangeEnd) + sum_of(ExtraFlags, f => f)  ==  (quantity)) &&
                (prev(BitflagsSprites(RangeStart, RangeEnd)) + sum_of(ExtraFlags, f => prev(f))) == (quantity - 1)
       )                                  
}

function BitflagRange(RangeStart, RangeEnd, ExtraFlags, title, description, points){    
       achievement(
            title, description, points,
            trigger = SaveProtection() &&
             measured((BitflagRangeCount(RangeStart, RangeEnd) + sum_of(ExtraFlags, f => f)) == (length(range(RangeStart, RangeEnd))*8) + length(ExtraFlags)) &&
                (prev(BitflagRangeCount(RangeStart, RangeEnd)) + sum_of(ExtraFlags, f => prev(f))) == (length(range(RangeStart, RangeEnd))*8) + length(ExtraFlags) - 1            
       )                                  
}

function BitflagRangeLimit(RangeStart, RangeEnd, ExtraFlags, limit, title, description, points){    
       achievement(
            title, description, points,
            trigger = SaveProtection() &&
             measured((BitflagRangeCount(RangeStart, RangeEnd) + sum_of(ExtraFlags, f => f)) >= limit) &&
                (prev(BitflagRangeCount(RangeStart, RangeEnd)) + sum_of(ExtraFlags, f => prev(f))) < limit           
       )                                  
}


function BitflagRangeQuestions(RangeStart, RangeEnd, ExtraFlags, title, description, points){    
       achievement(
            title, description, points,
            trigger = SaveProtection() &&
             measured((BitflagRangeCount(RangeStart, RangeEnd) + sum_of(ExtraFlags, f => f)) == 0) &&
                (prev(BitflagRangeCount(RangeStart, RangeEnd)) + sum_of(ExtraFlags, f => prev(f))) == 34          
       )                                  
}


function AddSourceCount32bit(RangeStart, RangeEnd){
    count = 0
    for address in range(RangeStart, RangeEnd, 4){
        count = count + (dword(address) / dword(address))
    }
    return count
}

function AddSourceCount32bitprev(RangeStart, RangeEnd){
    count = 0
    for address in range(RangeStart, RangeEnd, 4){
        count = count + (prev(dword(address)) / prev(dword(address)))
    }
    return count
}

function AddSource32bit(RangeStart, RangeEnd, title, description, points){
    achievement(
        title, description, points,
        trigger = SaveProtection() &&
            measured(AddSourceCount32bit(RangeStart,RangeEnd) == (RangeEnd - RangeStart) / 4 + 1) &&
            AddSourceCount32bitprev(RangeStart, RangeEnd) == (RangeEnd - RangeStart) / 4)   
        
}

function AddSource32bitlessthan(RangeStart, RangeEnd, title, description, points){
    achievement(
        title, description, points,
        trigger = SaveProtection() &&
            measured(AddSourceCount32bit(RangeStart,RangeEnd) == (RangeEnd - RangeStart) / 4 + 1) &&
            AddSourceCount32bitprev(RangeStart, RangeEnd) <= (RangeEnd - RangeStart) / 4)   
        
}

//0x3dce3c-0x3dce9c
//0x3dcee8-0x3dcf08
function VegetablesAddsource(title, description, points){
    achievement(
        title, description, points,
        trigger = SaveProtection () &&
        measured(AddSourceCount32bit(0x3dce3c, 0x3dce9c) + AddSourceCount32bit(0x3dcee8, 0x3dcf08) == 34) &&
        AddSourceCount32bitprev(0x3dce3c, 0x3dce9c) + AddSourceCount32bitprev(0x3dcee8, 0x3dcf08) <= 33
    )
}

//0x3dcf28-0x3dcf90
function EdiblesAddsource(title, description, points){
    achievement(
        title, description, points,
        trigger = SaveProtection () &&
        measured(AddSourceCount32bit(0x3dcf28, 0x3dcf90) == 27) &&
        AddSourceCount32bitprev(0x3dcf28, 0x3dcf90) <= 26
    )
}

//0x3dcea0-0x3dcee4
//0x3dcf0c-0x3dcf24

function AnimalProductsAddsource(title, description, points){
    achievement(
        title, description, points,
        trigger = SaveProtection () &&
        measured(AddSourceCount32bit(0x3dcea0, 0x3dcee4) + AddSourceCount32bit(0x3dcf0c, 0x3dcf24) == 25) &&
        AddSourceCount32bitprev(0x3dcea0, 0x3dcee4) + AddSourceCount32bitprev(0x3dcf0c, 0x3dcf24) <= 24
    )
}

//0x3dcfa0-0x3dd00c
//0x3dd04c-0x3dd058
//0x3dd01c
//0x3dd03c
function MineItemsAddsource(title, description, points){
    achievement(
        title, description, points,
        trigger = SaveProtection () &&
        measured(AddSourceCount32bit(0x3dcfa0, 0x3dd00c) + AddSourceCount32bit(0x3dd04c, 0x3dd058) + (dword(0x3dd01c) / dword(0x3dd01c)) + (dword(0x3dd03c) / dword(0x3dd03c)) == 34) &&
        AddSourceCount32bitprev(0x3dcfa0, 0x3dd00c) + AddSourceCount32bitprev(0x3dd04c, 0x3dd058) + (prev(dword(0x3dd01c)) / prev(dword(0x3dd01c))) + (prev(dword(0x3dd03c)) / prev(dword(0x3dd03c))) <= 33
    )
}
//0x3dcf94-0x3dcf9c
//0x3dd028-0x3dd038
//0x3dd020
function FishItemsAddSource(title, description, points){
    achievement(
        title, description, points,
        trigger = SaveProtection () &&
        measured(AddSourceCount32bit(0x3dcf94, 0x3dcf9c) + AddSourceCount32bit(0x3dd028, 0x3dd038) + (dword(0x3dd020) / dword(0x3dd020)) == 9) &&
        AddSourceCount32bitprev(0x3dcf94, 0x3dcf9c) + AddSourceCount32bitprev(0x3dd028, 0x3dd038) + (prev(dword(0x3dd020)) / prev(dword(0x3dd020))) <= 8
    )
}

//0x3dd010-0x3dd018
//0x3dd024
//0x3dd040-0x3dd048
//0x3dd05c-0x3dd074
function MiscItemsAddSource(title, description, points){
    achievement(
        title, description, points,
        trigger = SaveProtection() &&
        measured(AddSourceCount32bit(0x3dd010, 0x3dd018) + AddSourceCount32bit(0x3dd040, 0x3dd048) + AddSourceCount32bit(0x3dd05c, 0x3dd074) + (dword(0x3dd024) / dword(0x3dd024)) == 14) &&
        AddSourceCount32bitprev(0x3dd010, 0x3dd018) + AddSourceCount32bitprev(0x3dd040, 0x3dd048) + AddSourceCount32bitprev(0x3dd05c, 0x3dd074) + (prev(dword(0x3dd024)) / prev(dword(0x3dd024))) <= 13
    )
}

//Catch all fish 0x3ddfac-0x3de074 AND bit0(0x3de07c)
function CatchAllFish(title, description, points){
    achievement(
        title, description, points,
        trigger = SaveProtection () &&
        measured(AddSourceCount32bit(0x3ddfac, 0x3de074) + bit0(0x3de07c) == 52) &&
        AddSourceCount32bitprev(0x3ddfac, 0x3de074) + prev(bit0(0x3de07c)) <= 51
    )
}


//First Animal
FirstAnimalType = 0x3dc9a0
LastAnimalType = 0x3dcc28
//0x1 = Cow 0x2 = Sheep 0x3 = Chicken 0x4 = Duck
Cow = 0x1
Sheep = 0x2
Chicken = 0x3
Duck = 0x4

function threebits(address){
    return bit0(address) * 1 + bit1(address) * 2 + bit2(address) * 4
}

function checkAnimals(type){
    logic = always_false()
    for address in range(FirstAnimalType, LastAnimalType, 24){      
        logic = logic || (threebits(address) == type)     
    }

    return logic
}

function checkPrevAnimals(type){
    logic = always_false()
    for address in range(FirstAnimalType, LastAnimalType, 24){      
        logic = logic || (prev(threebits(address))) == type       
    }

    return logic
}

function AnimalDeathReset(){
    logic = always_false()
    for address in range(FirstAnimalType, LastAnimalType, 24){      
        logic = logic || (prev(threebits(address)) > 0 && threebits(address)== 0)
    }
    return logic
}

function FourAnimals(title, description, points){
    achievement(
        title, description, points,
        trigger = OnCellphone &&
        measured(tally(4, tally(1, checkAnimals(Cow)), tally(1, checkAnimals(Sheep)), tally(1, checkAnimals(Chicken)), tally(1, checkAnimals(Duck)))) &&
        never(tally(4, tally(1, checkPrevAnimals(Cow)), tally(1, checkPrevAnimals(Sheep)), tally(1, checkPrevAnimals(Chicken)), tally(1, checkPrevAnimals(Duck)))) &&
        never(AnimalDeathReset())
    )
}

function DeltaToMemLessThan(address, current, title, description, points){
    achievement(
        title, description, points,
        trigger = SaveProtection() &&
            prev(address) <= current-1 &&
            measured(address == current)
    )
}

function checkAnimalCrown(type){
    logic = always_false()
    for address in range(FirstAnimalType, LastAnimalType, 24){      
        logic = logic || (threebits(address)  == type && byte(address + 7) == prev(byte(address + 7) + 1))      
    }

    return logic
}

function AnimalWin(type, title, description, points){
    achievement( 
        title, description, points,
        trigger = SaveProtection() &&
        checkAnimalCrown(type)
    )
}


//0x3d6af8 [32-bit] Global time... somehow
GlobalTime = dword(0x3d6af8)
function CookingFestivalCheck(){
    logic = always_false()
    for index in range(0, 254) {
        logic = logic || (GlobalTime >= (756000 + (4320000 * index)) && GlobalTime <= (792000 + (4320000 * index)))
    }
    return logic
}
//0x3ddea8 [32-bits] Farm Degree
FarmDegree = dword(0x3ddea8)
function WinCookingFestival(title, description, points){
    achievement(
        title, description, points,
        trigger = SaveProtection () && CookingFestivalCheck() && (FarmDegree == (prev(FarmDegree) + 100)) && location == Beach
    )
}

function ChristmasCheevo(title, description, points){
    achievement(
        title, description, points,
        trigger = SaveProtection () && (NinaSocks == 1 && ChristmasGift != 0 && ChristmasGift != 0xffff && (prev(ChristmasGift) == 0 || prev(ChristmasGift) == 0xffff))
    )
}

function GirlSelect(title, description, points){
    achievement(
        title, description, points,
        trigger = SaveProtection() && Hours == 6 && Minutes == 2 && GirlMemorySong && location == MineEntrance && MemoryMinigameState == 1 && prev(MemoryMinigameState) == 0
    )
}

function BearShuffle(title, description, points){
    achievement(
        title, description, points,
        trigger = SaveProtection() && Hours == 0 && Minutes == 1 && BearShuffleSong && location == MineEntrance && BearShuffleWinCount == 10 && prev(BearShuffleWinCount) == 9
    )
}

function DogBattle(title, description, points){
    achievement(
        title, description, points,
        trigger = SaveProtection() && Hours == 4 && Minutes == 45 && DogHouseSong && location == MineEntrance && GirlsBeatenDogHouse == 6 && prev(GirlsBeatenDogHouse) == 5
    )
}

function HighLow(title, description, points){
    achievement(
        title, description, points,
        trigger = SaveProtection() && HarvestGoddessSong && location == GoddessPond && LowHighScore == 10 && prev(LowHighScore) == 9
    )
}

//0x3b5ef9 [8-bit] Casino Minigame Identifier Upper 4 = 0xc = Matching 0xb = Poker 0xa = Blackjack
CasinoIdentifier = high4(0x3b5ef9)
Matching = 0xc
Poker = 0xb
Blackjack = 0xa

function CasinoCheck(Type){
    logic = OnCellphone && location == Casino && CasinoIdentifier == Type
    return logic
}

//0x3b65e7 [8-bit] Casino Match Started
//0x01 = Started
MatchStarted = bit0(0x3b65e7) == 1
//0x3b65be [8-bit] Player Score - Matching 0x04 = Win
MatchScore = byte(0x3b65be)

function MatchingCasino(title, description, points){
    achievement(
        title, description, points, 
        trigger = CasinoCheck(Matching) && MatchStarted && (prev(MatchScore) == 3 && MatchScore == 4)
    )
}

//0x3b64d8 [8-bit] Poker type of hand
//0x0a = 1 Pair
//0x09 = 2 Pair
//0x08 = 3-of-a-Kind
//0x07 = Straight
//0x06 = Flush
//0x05 = Full House
//0x04 = 4 of a Kind
//0x03 = Straight Flush
//0x02 = 5 card
//0x01 = Royal Flush
PokerHand = low4(0x3b64d8)

function PokerCasino(title, description, points){
    achievement(
        title, description, points, 
        trigger = CasinoCheck(Poker) && ((prev(PokerHand) == 0 || ((prev(PokerHand) >= 8 ) && (prev(PokerHand) < 11 ))) && PokerHand <= 7 && PokerHand > 0)
    )
}

//0x3b663a [8-bits] Type of blackjack, blackjack minigame
//0x04 = Blackjack
//0x03 = 5 Card Charlie
//0x02 = Three Seven
//0x01 = 6 Card Charlie
BlackjackHand = low4(0x3b663a)

function BlackjackCasino(title, description, points){
    achievement(
        title, description, points, 
        trigger = CasinoCheck(Blackjack) && ((prev(BlackjackHand) == 0 || ((prev(BlackjackHand) == 4 ))) && BlackjackHand <= 3 && BlackjackHand> 0)
    )
}

//0x3dde09 Bit 0 - Initial Mayor Cutscene
InitialMayorCutscene = bit0(0x3dde09)
//[8-bit] Related to convo script
//0x3d31e1 0x0c = Check for ending in initial cutscene
EndingCheck = byte(0x3d31e1)

function InitialCutscene(title, description, points){
    achievement(
        title, description, points,
        trigger = once(SaveProtection() && InitialMayorCutscene == 1 && prev(InitialMayorCutscene) == 0) &&
            InCutscene && EndingCheck == 0x0c && prev(EndingCheck) == 0x0b && location == Farmland &&
            never(!InCutscene && InCutscenePrev)          
    )
}

//0x3dde0e Bit 4 - Fierce Bargaining
FierceBargaining = bit4(0x3dde0e)
//0x3dde10 Bit 0 - Kate's Life Advice
KateLifeAdvice = bit0(0x3dde10)
//0x3dde08 Bit 5 - Strange Dream
StrangeDream = bit5(0x3dde08)
//0x3dde15 Bit 2 = Mukumuku's Gift
MukumukuGift = bit2(0x3dde15)
//0x3dde15 Bit 3 = Mukumuku's Sickness
MukumukuSickness = bit3(0x3dde15)
//0x3dde11 Bit 7 - Path to cooking expert
CookingExpert = bit7(0x3dde11)
//0x3dde14 Bit 0 - Attacked
//Bit 1 - New Trade Negotiations
//Bit 2 - Muffy's Meddling
Attacked = bit0(0x3dde14)
NewTradeNegotiations = bit1(0x3dde14)
MuffyMeddling = bit2(0x3dde14)
//0x3dde14 Bit 6 - Begging, part 1
BeggingPart1 = bit6(0x3dde14)
//0x3dde14 Bit 4 - Secret Fireworks - Part 1
SecretFireworksPart1 = bit4(0x3dde14)
//0x3dde14 Bit 5 - Secret Fireworks - Part 2
SecretFireworksPart2 = bit5(0x3dde14)
//0x3dde13 [N-bit] Event Flags
//Bit 2 - Persuit of Beauty
//Bit 3 - Cody's Aesthetics
PersuitOfBeauty = bit2(0x3dde13)
CodyAesthetics = bit3(0x3dde13)
//0x3dde17 Bit 7 - A Visit to Romana
AVisitToRomana = bit7(0x3dde17)
//0x3dde0e Bit 6 - Cooking Pride
CookingPride = bit6(0x3dde0e)
//0x3dde17 Bit 6 - Dr.Hardy's Help
DrHardyHelp = bit6(0x3dde17)
//0x3dde19 Bit 0 - Teacher Student
TeacherStudent = bit0(0x3dde19)
//0x3dde17 Bit 2 - Cooking Bonzai
CookingBonzai = bit2(0x3dde17)
//0x3dde0d Bit 7 - Karens Earring
KarenEarring = bit7(0x3dde0d)
//0x3dde14 Bit 3 - Karen's Meddling
KarenMeddling = bit3(0x3dde14)
//0x3dde1a Bit 1 - Iron Arts
IronArts = bit1(0x3dde1a)
//0x3dde17 Bit 3 - Fireworks Shop
FireworksShop = bit3(0x3dde17)
//0x3dde0f Bit 2 - The Big Plan
TheBigPlan = bit2(0x3dde0f)
//0x3dde0f Bit 5 - Family Argument - Part 1
FamilyArgumentPart1 = bit5(0x3dde0f)
//0x3dde0f Bit 0 - Best Friends
BestFriends = bit0(0x3dde0f)
//0x3dde0e Bit 0 - Cocktail Challenge
CocktailChallenge = bit0(0x3dde0e)
//0x3dde14 Bit 7 - Begging, part 2
BeggingPart2 = bit7(0x3dde14)
//Bit 6 - Ancestor's Pride
AncestorPride = bit6(0x3dde13)
//0x3dde17 Bit 0 - Popuri Problem
PopuriProblem = bit0(0x3dde17)
//0x3dde13 Bit 4 - Path to Musician
PathToMusician = bit4(0x3dde13)
//0x3dde0e Bit 2 - Family
Family = bit2(0x3dde0e)
//0x3dde12 Bit 0 - Fickleness Expert
FicklenessExpert = bit1(0x3dde12)
//0x3dde0d Bit 5 - Thankful Feelings
ThankfulFeelings = bit5(0x3dde0d)
//0x3dde16 Bit 0 - Budding Romance
BuddingRomance = bit0(0x3dde16)
//0x3dde10 Bit 1 - The Apprentice, Part 1
TheApprenticePart1 = bit1(0x3dde10)
//0x3dde0f Bit 6 - Family Argument - Part 2
FamilyArgumentPart2 = bit6(0x3dde0f)
//0x3dde13 Bit 7 - Original Cocktail Drink
OriginalCocktailDrink = bit7(0x3dde13)
//0x3dde08 Bit 2 - 2nd Hot Spring
SecondHotSpring = bit2(0x3dde08)
//0x3dde16 Bit 6 - Princess' Past
PrincessPast = bit6(0x3dde16)
//0x3dde0f Bit 3 - Education Policy Part 1
EducationPolicyPart1 = bit3(0x3dde0f)
//0x3dde10 Bit 5 - Education Policy, Part 2
EducationPolicyPart2 = bit5(0x3dde10)

//0x3dde29 Bit 6 - Muffin and Griffin Marriage
MuffinGriffinMarriage = bit6(0x3dde29)
//0x3dde28 Bit 4 - Flora and Carter Marriage
FloraCarterMarriage = bit4(0x3dde28)
//0x3dde27 Bit 2 - Nami and Gustafa Marriage
NamiGustafaMarriage = bit2(0x3dde27)
//0x3dde29 Bit 1 - Celia and Marlin Marriage
CeliaMarlinMarriage = bit1(0x3dde29)
//0x3dde27 Bit 7 - Rock and Lumina Marriage
RockLuminaMarriage = bit7(0x3dde27)

//0x3dde0e Bit 1 - Somewhere, Sometime
SomewhereSometime = bit1(0x3dde0e)

//0x3dde12 Bit 4 - Bonsai Concert
BonsaiConcert = bit4(0x3dde12)

//Bit 4 - Celia Yellow Heart Event
CeliaYellow = bit4(0x3dddd6)
//Bit 4 - Flora Yellow Heart Event
FloraYellow = bit4(0x3dddd3)
//0x3dddd2 Bit 6 - Lumina Yellow Heart Event
LuminaYellow = bit6(0x3dddd2)
//0x3dddd1 Bit 1 - Muffy Yellow Heart Event
MuffyYellow = bit1(0x3dddd1)
//0x3dddd1 Bit 7 - Nami Yellow Heart Event
NamiYellow = bit7(0x3dddd1)
//0x3dddd6 Bit 0 - Ann Yellow Heart Event
AnnYellow = bit0(0x3dddd6)
//0x3dddd7 Bit 5 - Elli Yellow Heart Event
ElliYellow = bit5(0x3dddd7)
//0x3dddd4 Bit 3 - Karen Yellow Heart Event
KarenYellow = bit3(0x3dddd4)
//0x3dddd6 Bit 7 - Mary Yellow Heart Event
MaryYellow = bit7(0x3dddd6)
//0x3dddd5 Bit 2 - Popuri Yellow Heart Event
PopuriYellow = bit2(0x3dddd5)

//0x3dddd1 Bit 3 - Muffy Marriage
MuffyMarriage = bit3(0x3dddd1)
//0x3dddd2 BIt 1 - Nami Marriage
NamiMarriage = bit1(0x3dddd2)
//0x3dddd3 Bit 0 - Lumina Marriage
LuminaMarriage = bit0(0x3dddd3)
//0x3dddd3 Bit 7 - Flora Marriage
FloraMarriage = bit7(0x3dddd3)
//0x3dddd9 Bit 2 - Celia Marriage
CeliaMarriage = bit2(0x3dddd9)
FMNMarriages = [MuffyMarriage, NamiMarriage, LuminaMarriage, FloraMarriage, CeliaMarriage]

//0x3dddd8 Bit 6 - H. Goddess Marriage
HGoddessMarriage = bit6(0x3dddd8)
//0x3dddd9 Bit 5 - W. Princess Marriage
WPrincessMarriage = bit5(0x3dddd9)
//0x3ddddb Bit 0 - Keira Marriage
KeiraMarriage = bit0(0x3ddddb)
//0x3ddddb Bit 6 - Leia Marriage
LeiaMarriage = bit6(0x3ddddb)

//0x3dddd4 Bit 4 - Proposed to Karen
KarenProposal = bit4(0x3dddd4)
//0x3dddd5 Bit 3 - Proposed to Popuri
PopuriProposal = bit3(0x3dddd5)
//0x3dddd6 Bit 1 - Proposed to Ann
AnnProposal = bit1(0x3dddd6)
//0x3dddd7 Bit 0 - Proposed to Mary
MaryProposal = bit0(0x3dddd7)
//0x3dddd7 Bit 6 - Proposed to Elli
ElliProposal = bit6(0x3dddd7)
MTMarriages = [KarenProposal, PopuriProposal, AnnProposal, MaryProposal, ElliProposal]


//0x3dbd34 [16-bit] Child Age
ChildAge = word(0x3dbd34)

function StrangeDreamCheevo(title, description, points){
    achievement(
        title, description, points,
        trigger = once(SaveProtection() && StrangeDream == 1 && prev(StrangeDream) == 0) &&
        location != FarmHouse &&
        never(location == FarmHouse && Hours == 6 && Minutes == 0)
    )
}

function OrNextFlagsEvents(Flags){
    logic = always_false()
    for eventFlag in Flags{
        logic = logic || once(SaveProtection() && (eventFlag == 1 && prev(eventFlag) == 0))
    }
    return logic  
}


function EventCheevoGroup(title, description, points, eventFlags){
    achievement(
        title, description, points,
        trigger = 
            OrNextFlagsEvents(eventFlags) &&
            !InCutscene
    )
}

function SonCheevo(title, description, points){
    achievement(
        title, description, points,
        trigger = 
        SaveProtection() && ChildAge >= 1 && prev(ChildAge) == 0
    )
}

function BlessedTools(Flags, Flags2, Sum, title, description, points){
    achievement(
        title, description, points,
        trigger = 
        SaveProtection() &&
        ((SumFlags(Flags, Sum) && SumPreviousFlags(Flags, Sum - 1) ) ||
        (SumFlags(Flags2, Sum) && SumPreviousFlags(Flags2, Sum - 1)))
    )
}


//Tool Cheevos
EventCheevo("Angler's Heritage", "Get the fishing rod", 1, RecieveFishingRod)
BuyOrUpgradeCheevo("Kuroko no Basket", "Buy the Basket", 1, BoughtBasquet)
RuckSackCheevo(SmallRucksack, MediumRucksack, "Moderate Capacity", "Buy the Medium Rucksack", 2)
RuckSackCheevo(MediumRucksack, BigRucksack, "Substancial Proportion", "Buy the Large Rucksack", 3)
toolUpgradeCheevo(Copper, "Bradley Cooper", "Get your first Copper tool", 2)
toolUpgradeCheevo(Silver, "Silver Surfer", "Get your first Silver tool", 3)
toolUpgradeCheevo(Gold, "Golden Wind", "Get your first Gold tool", 5)
toolUpgradeCheevo(Mystrile, "Middle-earth Mithril", "Get your first Mystrile tool", 10)
allToolsUpgraded(MystrileTools, Mystrile, "Extra Shiny!", "Upgrade all your tools to the Mystrile tier", 25)
AnyFlagTrue(CursedTools, "Don't Drop It!", "Find one cursed tool", 5)
AllFlagsTrue(CursedTools, "Curse of the Farmer [m]", "Find all the cursed tools in the 3rd Mine", 10)
AnyFlagTrue(BlessedTools, "Lone Exorcism [m]", "Bless your first cursed tool", 10)
BlessedTools(BlessedTools, BlessedToolsBackup, 6, "Utterly Hallowed [m]", "Bless all your cursed tools", 25)


MythicToolUpgradeCheevo(tool_Axe, "Stormbreaker [m]", "Upgrade your axe to the Mythic tier", 10)
MythicToolUpgradeCheevo(tool_FishingRod, "Super Rod [m]", "Upgrade your fishing rod to the Mythic tier", 10)
MythicToolUpgradeCheevo(tool_Hammer, "Obelisk's Mallet [m]", "Upgrade your hammer to the Mythic tier", 10)
MythicToolUpgradeCheevo(tool_Hoe, "Demeter's Cultivator [m]", "Upgrade your hoe to the Mythic tier", 10)
MythicToolUpgradeCheevo(tool_Sickle, "Grim Reaper [m]", "Upgrade your sickle to the Mythic tier", 10)
MythicToolUpgradeCheevo(tool_WateringCan, "Poseidon's Grace [m]", "Upgrade your watering can to the Mythic tier", 10)
LegendarySword("Master Sword", "Get the legendary sword from the second mine", 5)
//Housing Cheevos
DeltaToValue(MediumHouse, LargeHouse, HouseLevel, "Architectural Beauty", "Fully expand your house", 10)
AllFlagsTrueCellphone(Furniture, "Fully Furnished", "Buy all the furniture", 10)
DeltaToValue(BeingBuilt, Built, Bathroom, "Water and Soap", "Build a bath room in your house", 5)
DeltaToValue(BeingBuilt, Built, Toilet, "Poo Time", "Build a toilet room in your house", 5)
SingleFlag(Basement, "Soil's Crypt", "Build all three levels of the basement", 10)
CheckSpecificBuilding(ChickenCoop, "Nestling Hut", "Build a bird shed", 5)
CheckSpecificBuilding(AnimalBarn, "Livestock Barn", "Build an animal shed", 5)
SingleFlag(FodderSilo, "Corn Storage", "Build a fodder silo", 3)
SingleFlag(MushroomShed, "Fungus Shack", "Build a mushroom shed", 5)
AllFlagsTrue(StorageSheds, "Material Safe-Deposit", "Build all 3 storage sheds", 5)
SingleFlag(DuckPond, "Quacky Pool", "Build a duck pond", 5)
SingleFlag(MakerShed, "Artesanal Shed", "Build a maker shed", 5)
AllFlagsTrue(Makers, "Manufacture Machinery", "Get all the makers", 10)
SingleFlag(Cottage, "Vacation Villa", "Build the cottage on the desert island", 50)
//Mining Cheevos
SingleFlag(SecondMine, "10 Floors of Mystery", "Unlock the 2nd mine", 5)
SingleFlag(ThirdMine, "255 Floors of Grief", "Unlock the 3rd mine", 10)
SingleFlag(FourthMine, "999 Floors of Death [m]", "Unlock the 4th mine", 25)
CertainValueRange(50000, 65535, FourthMineLowestFloor, "65535 Floors of Despair [m]", "Reach the bottom of the 4th mine", 50)
EventCheevo("Marvelous Gems [m]", "Find all the wonderful stones in the 4th mine and ask for the Goddess Gift", 10, WonderfulsFlag)
BitflagRange(MineItemStart, MineItemEnd, RemainingMineFlags, "Quarry Discovery [m]", "Find all the mine items", 10)
AddSource32bitlessthan(MineEnemiesStart, MineEnemiesEnd, "Is That... Me? [m]", "Kill all the mine creatures", 10)
AllFlagsTrue(CursedAccessories, "Damned Components", "Dig all the cursed accessories", 10)
BlessedAccessories("Saint Adornments: Old Testament", "Bless all the pendant and earrings cursed accessories", 10)
BlessedAccessories2("Saint Adornments: New Testament", "Bless all the ring, shoe and hats cursed accessories", 10)
//Collection Cheevos
VegetablesAddsource("Variety Harvest","Ship every crop, flower, mushroom and tree fruit", 10)
EdiblesAddsource("Agrestal Comestibles","Ship every wild or purchasable edible item", 10)
AnimalProductsAddsource("Fauna Goods ", "Ship every animal product", 10)
MineItemsAddsource("Excavation Wares [m]", "Ship every mine item", 10)
FishItemsAddSource("Angle Variation", "Ship every fish item", 10)
MiscItemsAddSource("Disparate Elements", "Ship every miscellaneous item", 10)
AddSource32bitlessthan(0x3dd078, 0x3dd280, "Culinary Connoisseur", "Cook and ship all successful and failed dishes", 25) //0x3dd078-0x3dd280
AddSource32bitlessthan(0x3dce3c, 0x3dd280, "Flexible Vendor [m]", "Ship every shippable item", 25) //0x3dce3c - 0x3dd280
CatchAllFish("Marine Exhibit [m]", "Catch all 52 fish and items", 25) 
AllFlagsTrue(KingFishes, "Legend of Forget-Me-Not Valley Kings", "Catch the 6 fish kings", 25)
//Sprites Cheevos
BitRangeSprites(RedTeamStart, RedTeamEnd, [], 12, "Scarlet Team", "Rescue all the Red Team sprites", 10)
BitRangeSprites(OrangeTeamStart, OrangeTeamEnd, [], 12, "Tangerine Group", "Rescue all the Orange Team sprites", 10)
BitRangeSprites(YellowTeamStart, YellowTeamEnd, [], 12, "Gold Squad", "Rescue all the Yellow Team sprites", 10)
BitRangeSprites(GreenTeamStart, GreenTeamEnd, [], 12, "Lime Gang", "Rescue all the Green Team sprites", 10)
BitRangeSprites(BlueTeamStart, BlueTeamEnd, [], 12, "Cobalt Crew", "Rescue all the Blue Team sprites", 10)
BitRangeSprites(IndigoTeamStart, IndigoTeamEnd, [], 12, "Azure Troup", "Rescue all the Indigo Team sprites", 10)
BitRangeSprites(PurpleTeamStart, PurpleTeamEnd, [], 12, "Lavender Lineup", "Rescue all the Purple Team sprites", 10)
AllFlagsTrue(BrownTeam, "Walnut Party", "Rescue all the Brown Team sprites", 10)
AllFlagsTrue(BlackTeam, "Obsidian Forces", "Rescue all the Black Team sprites", 10)
BitRangeSprites(RedTeamStart, BlueTeamEnd, AllRemainingTeamMembers, 60, "Harvest Goddess Rescued", "Rescue 60 sprites", 10)
BitRangeSprites(RedTeamStart, BlueTeamEnd, AllRemainingTeamMembers, 101, "Unbound Sprites", "Rescue all 101 sprites", 25)
//Animal Cheevos
FourAnimals("Poultry Diversity", "Have a chicken, a duck, a cow and a sheep", 5)
EventCheevo("Stallion Ride", "Obtain your horse", 3, GetHorse)
DeltaToMemLessThan(DogAffection, 1000, "What’s Up Dog", "Get your Dog to 10 hearts", 10)
DeltaToMemLessThan(CatAffection, 1000, "A Sinking Feline", "Get your Cat to 10 hearts", 10)
DeltaToMemLessThan(HorseAffection, 1000, "A Show Pony", "Get your Horse to 10 hearts", 10)
AnimalWin(Chicken, "A Different Perspecktive", "Win the Chicken Festival", 10)
AnimalWin(Duck, "Golden Duck", "Win the Duck Festival", 10)
AnimalWin(Cow, "Holy Cow!", "Win the Cow Festival", 10)
AnimalWin(Sheep, "Counting Sheep", "Win the Sheep Festival", 10)
//Festival Cheevos
SingleFlagReverse(NewYearsDay, "Grain Smack", "Pound some rice in New Years Day", 3)
AnyFlagTrueNotSum(SpringThanksgiving, "Sweet Biscuit", "Give your sweetheart some Cookies in the Spring Thanksgiving", 3)
WinCookingFestival("Baking Master", "Win the Cooking Festival", 4)
FestivalCheevo(KaiBeach, "Beach Opening Day", "Take part in the opening of Kai's summertime snack shack", 2)
FestivalCheevo2(Fireworks, "Stunning Pyrotechnics", "Watch the beautiful Fireworks", 3)
SingleFlag(HarvestFestival, "Communal Soup", "Provide an ingredient for the Harvest Festival pot", 2)
AllFlagsTrue(PumpkinFestival, "Ghostrick Lantern", "Play a part in the Pumpkin Festival and recieve the 3 kids that come to your house", 2)
SingleFlag(bit0(OrangeTeamStart), "Gleaming Gift", "Help Thomas and get a Golden Lumber in exchange", 4)
AnyFlagTrueNotSum(WinterThanksgiving, "Sugared Cocoa", "Recieve Chocolates from a girl in the Winter Thanksgiving", 3)
StarryNight("Flaming Flowers That Brightly Blaze", "Celebrate the Starry Night with someone special", 3, StarryNight)
ChristmasCheevo("Stocking Festival", "Recieve a present from Thomas-Claus during Christmas", 4)
SingleFlagReverse(NewYearsEve, "A Brand New Year", "Enjoy some festive Buckwheat Noodles on New Years Eve", 3)
//Minigame Cheevos
GirlSelect("Lady Remembrance","Win the Girl Select minigame", 3)
BearShuffle("Witch's Plushes", "Win the Bear Shuffle minigame", 10)
DogBattle("Harvest Quest", "Win the Doghouse Battle minigame", 10)
HighLow("RNGoddess", "Score 10 points in the Guess High/Low minigame", 5)
BitflagRangeQuestions(QuestionStart, QuestionEnd, ExtraQuestions, "Bokumono Encyclopedia", "Answer all 35 questions of Channel 9 correctly", 10)
//Casino Cheevos
MatchingCasino("Pairing and Matching", "Get 4 matches in the Casino Matching game", 3)
PokerCasino("King of Poker", "Get a Straight or better in the Casino Poker game", 5)
BlackjackCasino("What's 9+10?", "Get a 5-Card Charlie or higher in the Casino Blackjack game", 5)
BuyOrUpgradeCheevo("Teletransportation Gem", "Buy the Teleport Stone", 2, TeleportStone)
BuyOrUpgradeCheevo("Rich Presence", "Buy the Truth Bangle", 2, TruthBangle)
BuyOrUpgradeCheevo("Stalking Bracelet", "Buy the Love Bangle", 3, LoveBangle)
BuyOrUpgradeCheevo("Olé!", "Buy the Red Cloak", 5, RedCloak)
BuyOrUpgradeCheevo("Get Over Here", "Buy the Godhand", 10, Godhand)
BuyOrUpgradeCheevo("Farming Simulator", "Buy the Miracle Gloves", 10, MiracleGloves)
BitflagRange(CommonStart, CommonEnd, [], "Normal Rare", "Have all the Common cards", 5)
BitflagRange(UncommonStart, UncommonEnd, [], "Super Rare", "Have all the Uncommon cards", 5)
BitflagRange(RareStart, RareEnd, [], "Parallel Rare", "Have all the Rare cards", 10)
BitflagRange(VeryRareStart, VeryRareEnd, [], "Secret Rare", "Have all the Very Rare cards", 25)
BitflagRangeLimit(SuperRareStart, SuperRareEnd, [], 304, "Secret Ultra Rare", "Have 304 Super Rare cards", 25)
BitflagRange(CommonStart, SuperRareEnd, [], "Filled Binder", "Collect all cards", 50)
BitflagRange(SongFlags1, SongFlags2, RemainingSongs, "Nostalgic Tracks", "Have all song records [GBA]", 10)
CropLevel("Quality Assurance", "Ship a level 10 crop", 10)
//Event Cheevos
EventCheevo("The Painting - Part 1", "Hear Romana talk about Jeff and his painting", 2, ThePaintingPart1)
EventCheevo("Kate's Life Advice", "Overhear Lumina and Kate's Conversation", 2, KateLifeAdvice)
EventCheevo("Fierce Bargaining", "Watch Van do a special deal for Romana", 2, FierceBargaining)
StrangeDreamCheevo("New Year Dream [m]", "Have a weird dream in New Years Eve", 2)
EventCheevo("Mukumuku's Gift", "Receive a fish from Mukumuku", 2, MukumukuGift)

EventCheevo("Mukumuku's Sickness", "Take Mukumuku to the clinic after giving him a mushroom", 2, MukumukuSickness)
EventCheevo("Path to Cooking Expert", "See Ruby's problems with cooking", 2, CookingExpert)
EventCheevo("Attacked!", "See Murrey steal some food from Van", 2, Attacked)
EventCheevo("New Trade Negotiations", "Watch Daryll offer his 'Super Ultra Great Delicious Wonderful Water Pistol' for sale", 2, NewTradeNegotiations)
EventCheevo("Muffy's Meddling", "Watch Kassey complimenting Muffy at the bar", 2, MuffyMeddling)
EventCheevo("Begging - Part 1", "See Murrey ask for the 'usual' at the Farm Shop for the first time", 2, BeggingPart1)
EventCheevo("Secret Fireworks - Part 1", "Watch Kassey work on making the fireworks for next year's Fireworks Festival", 2, SecretFireworksPart1)
EventCheevo("Secret Fireworks - Part 2", "See the two brothers quarrelling about the way fireworks are made", 2, SecretFireworksPart2)
EventCheevo("Persuit of Beauty", "Be asked about what the ultimate beauty is by Cody", 2, PersuitOfBeauty)
EventCheevo("Cody's Aesthetics", "Meet Cody in his house and hear about his worry about his next artwork", 2, CodyAesthetics)
EventCheevo("2nd Hot Spring", "Get a 2nd hot spring built by using the 1st one 100 times", 2, SecondHotSpring)
EventCheevo("Bonsai Contest", "See Galen showing off his Bonsai tree to Hardy", 2, BonsaiConcert)
EventCheevo("Budding Romance", "Hear Mimi talk about wanting love", 2, BuddingRomance)
EventCheevo("The Apprentice", "Watch Kate and Mary talking about books [GBA]", 2, TheApprenticePart1)

EventCheevo("A Visit to Romana", "Watch Elli checkup on Romana [GBA]", 2, AVisitToRomana)
EventCheevo("Cooking Pride", "Eat the Takaran Pepe Special made by Sebastian [GBA]", 2, CookingPride)

EventCheevo("Dr. Hardy's Help", "Watch Elli get some medicine to Dr. Hardy [GBA]", 2, DrHardyHelp)
EventCheevo("Teacher Student", "Hear Trent and Dr. Hardy's medicinal conversation [GBA]", 2, TeacherStudent)
EventCheevo("Cooking Bonzai", "Try some of Ruby's Stir Fry [GBA]", 2, CookingBonzai)
EventCheevo("Karen's Earring", "See Muffy and Karen talk about earrings [GBA]", 2, KarenEarring)
EventCheevo("Karen's Meddling", "Watch Kassey complimenting Karen at the bar [GBA]", 2, KarenMeddling)
EventCheevo("Iron Arts", "See Gray get inspired by Cody [GBA]", 2, IronArts)
EventCheevo("Fireworks Shop", "Be kicked out of Kassey and Patrick's house [GBA]", 2, FireworksShop)
EventCheevo("The Big Plan [m]", "Learn from Wally about what 'Project B' is *You are not married*", 3, TheBigPlan)
EventCheevo("Family Argument - Part 1 [m]", "Watch Kate and Grant's first argument *You are not married*", 3, FamilyArgumentPart1)
EventCheevo("Family Argument - Part 2 [m]", "Watch Kate and Grant's second argument", 3, FamilyArgumentPart2)
EventCheevo("Best Friends [m]", "Get told that one of Mary's books has won a prize [GBA] *Not married to Lumina*", 3, BestFriends)
EventCheevo("Ancestor's Pride [m]", "Learn about Griffin's parents professions *Not married to Muffy*", 3, AncestorPride)

EventCheevo("Somewhere, Sometime [m]", "See Cliff thanking Nami for helping him out [GBA] *Nami is not married", 3, SomewhereSometime)
EventCheevo("Popuri Problem [m]", "See Popuri discover Nami's hiding place [GBA] *Nami is not married*", 3, PopuriProblem)
EventCheevo("Path to Musician [m]", "Learn about Gustafa's family of musicians *Nami and Gustafa are not married", 3, PathToMusician)
EventCheevo("Original Cocktail Drink [m]", "Taste test some drinks and choose the best one at the bar *Married to Muffy*", 3, OriginalCocktailDrink)
EventCheevo("Family [m]", "Watch Nami apologize to Ruby at the Inn *Nami and Gustafa are married*", 3, Family)
EventCheevo("Fickleness Expert [m]", "Watch Rock and Lumina's altercation at the Bar *Lumina and Rock are married*", 3, FicklenessExpert)
EventCheevo("Thankful Feelings [m]", "See Celia giving a present from herself and Marlin to Vesta *Celia and Marlin are married*", 3, ThankfulFeelings)


EventCheevo("Cocktail Challenge [m]", "Tell Muffy and Griffin to work together in the creation of a new type of drink *Muffy and Griffin are married*", 3, CocktailChallenge)
EventCheevo("Begging - Part 2 [m]", "See Murrey ask for the 'usual' at the bar for the second time *Muffy and Griffin are married*", 3, BeggingPart2)
EventCheevo("Princess' Past [m]", "Learn about Keira's past *Married to Keira*", 3, PrincessPast)
EventCheevo("Education Policy - Part 1 [m]", "Be asked about your child's future *Have a Child at Stage 1*", 3, EducationPolicyPart1)
EventCheevo("Education Policy - Part 2 [m]", "Judge the race between Wally and Chris", 3, EducationPolicyPart2)


//Friendship Cheevos
DeltaToMemLessThan(AnnFP, 255, "Stressed Girl", "Become Ann's best friend [GBA]", 5)

DeltaToMemLessThan(BarneyFP, 255, "Ringmaster", "Become Barney's best friend", 5)

DeltaToMemLessThan(CarterFP, 255, "Archeologist", "Become Carter's best friend", 5)

DeltaToMemLessThan(CeliaFP, 255, "Polite Farmer", "Become Celia's best friend", 5)

DeltaToMemLessThan(ChrisFP, 255, "Sports Announcer", "Become Chris' best friend", 5)

DeltaToMemLessThan(CliffFP, 255, "Shy Wanderer", "Become Cliff's best friend [GBA]", 5)

DeltaToMemLessThan(CodyFP, 255, "Sculpture Artist", "Become Cody's best friend", 5)

DeltaToMemLessThan(DaryllFP, 255, "Crazy Scientist", "Become Daryll's best friend", 5)

DeltaToMemLessThan(ElliFP, 255, "Delicate Nurse", "Become Elli's best friend [GBA]", 5)

DeltaToMemLessThan(FloraFP, 255, "Mine Researcher", "Become Flora's best friend", 5)

DeltaToMemLessThan(GalenFP, 255, "Old Wanderer", "Become Galen's best friend", 5)

DeltaToMemLessThan(GotzFP, 255, "Man of the Woods", "Become Gotz's best friend", 5)

DeltaToMemLessThan(GrantFP, 255, "Salaryman", "Become Grant's best friend", 5)

DeltaToMemLessThan(GrayFP, 255, "The Apprentice Blacksmith", "Become Gray's best friend [GBA]", 5)

DeltaToMemLessThan(GriffinFP, 255, "Gentle Guitarist", "Become Griffin's best friend", 5)

DeltaToMemLessThan(GustafaFP, 255, "Local Hippie", "Become Gustafa's best friend", 5)

DeltaToMemLessThan(GoddessFP, 255, "Crop Deity", "Become Harvest Goddess' best friend", 5)

DeltaToMemLessThan(HardyFP, 255, "Local Physician", "Become Hardy's best friend", 5)

DeltaToMemLessThan(HughFP, 255, "Athletic Youngster", "Become Hugh's best friend", 5)

DeltaToMemLessThan(KaiFP, 255, "Beach Boy", "Become Kai's best friend", 5)

DeltaToMemLessThan(KarenFP, 255, "Cheerleader", "Become Karen's best friend [GBA]", 5)

DeltaToMemLessThan(KasseyFP, 255, "Serious Brother", "Become Kassey's best friend", 5)

DeltaToMemLessThan(KateFP, 255, "Bored Tomboy", "Become Kate's best friend", 5)

DeltaToMemLessThan(KeiraFP, 255, "Sleeping Beauty", "Become Keira's best friend", 5)

DeltaToMemLessThan(LeiaFP, 255, "Sea Mermaid", "Become Leia's best friend", 5)

DeltaToMemLessThan(LuminaFP, 255, "Proper Pianist", "Become Lumina's best friend", 5)

DeltaToMemLessThan(MarlinFP, 255, "Reserved Farmer", "Become Marlin's best friend", 5)

DeltaToMemLessThan(MaryFP, 255, "Librarian", "Become Mary's best friend [GBA]", 5)

DeltaToMemLessThan(MimiFP, 255, "Acrobat", "Become Mimi's best friend", 5)

DeltaToMemLessThan(MukumukuFP, 255, "White Legend", "Become Mukumuku's best friend", 5)

DeltaToMemLessThan(MurreyFP, 255, "Wild Rascal", "Become Murrey's best friend", 5)

DeltaToMemLessThan(MuffyFP, 255, "Cheerful Bartender", "Become Muffy's best friend", 5)

DeltaToMemLessThan(NamiFP, 255, "Independant Hiker", "Become Nami's best friend", 5)

DeltaToMemLessThan(NinaFP, 255, "Retired Lady", "Become Nina's best friend", 5)

DeltaToMemLessThan(PatrickFP, 255, "Friendly Brother", "Become Patrick's best friend", 5)

DeltaToMemLessThan(PopuriFP, 255, "Floriculture", "Become Popuri's best friend [GBA]", 5)

DeltaToMemLessThan(RickFP, 255, "Concerned Brother", "Become Rick's best friend [GBA]", 5)

DeltaToMemLessThan(RockFP, 255, "Valley's Playboy", "Become Rock's best friend", 5)

DeltaToMemLessThan(RomanaFP, 255, "Fancy Grandma", "Become Romana's best friend", 5)

DeltaToMemLessThan(RubyFP, 255, "Landlord", "Become Ruby's best friend", 5)

DeltaToMemLessThan(SebastianFP, 255, "Elderly Butler", "Become Sebastian's best friend", 5)

DeltaToMemLessThan(TakakuraFP, 255, "Mellow Advisor", "Become Takakura's best friend", 5)

DeltaToMemLessThan(ThomasFP, 255, "Mr. Mayor", "Become Thomas' best friend", 5)

DeltaToMemLessThan(TrentFP, 255, "Doctor M.D.", "Become Trent's best friend [GBA]", 5)

DeltaToMemLessThan(VanFP, 255, "Merchandiser", "Become Van's best friend", 5)

DeltaToMemLessThan(VestaFP, 255, "Farm Owner", "Become Vesta's best friend", 5)

DeltaToMemLessThan(WallyFP, 255, "Sports Dad", "Become Wally's best friend", 5)

DeltaToMemLessThan(WitchFP, 255, "Royal Enchantress", "Become Witch Princess' best friend", 5)
//Wedding Cheevos
EventCheevo("Ancient Royal Wedding", "Celebrate Flora and Carter's wedding", 10, FloraCarterMarriage)
EventCheevo("It Just Clicked", "Celebrate Muffy and Griffin's wedding", 10, MuffinGriffinMarriage)
EventCheevo("You Feel Like Home", "Celebrate Nami and Gustafa's wedding", 10, NamiGustafaMarriage)
EventCheevo("Farmer Couple", "Celebrate Celia and Marlin's wedding", 10, CeliaMarlinMarriage)
EventCheevo("Childhood Friends", "Celebrate Lumina and Rock's wedding", 10, RockLuminaMarriage)

//HeartEvents Cheevos
EventCheevo("Ranch Connection", "See all 4 of Celia's heart events", 10, CeliaYellow)
EventCheevo("Innocent Relationship", "See all 4 of Flora's heart events", 10, FloraYellow)
EventCheevo("Movie Night", "See all 4 of Lumina's heart events", 10, LuminaYellow)
EventCheevo("Pond Date", "See all 4 of Muffy's heart events", 10, MuffyYellow)
EventCheevo("Beach Hangout", "See all 4 of Nami's heart events", 10, NamiYellow)
EventCheevo("Demanding Wishes", "See all 4 of Ann's heart events [GBA]", 10, AnnYellow)
EventCheevo("Elli Leaves", "See all 4 of Elli's heart events [GBA]", 10, ElliYellow)
EventCheevo("Sobber Feelings", "See all 4 of Karen's heart events [GBA]", 10, KarenYellow)
EventCheevo("Intimate Story", "See all 4 of Mary's heart events [GBA]", 10, MaryYellow)
EventCheevo("Made With Love", "See all 4 of Popuri's heart events [GBA]", 10, PopuriYellow)
//Marriage Cheevos
EventCheevoGroup("You Won't Forget Her", "Get married to a Forget-Me-Not Valley Girl", 5, FMNMarriages)
EventCheevoGroup("Wife of Mineral Town", "Get married to a Mineral Town Girl [GBA]", 5, MTMarriages)
EventCheevo("Sea-Espoused", "Get married to Leia", 10, LeiaMarriage)
EventCheevo("Keira Can't Communicate", "Get married to Keira", 10, KeiraMarriage)
EventCheevo("Divine Intervention", "Get married to the Harvest Goddess", 25, HGoddessMarriage)
EventCheevo("Lovus Pocus", "Get married to the Witch Princess", 25, WPrincessMarriage)

SonCheevo("Mutual Offspring", "Have a child", 10)

//Epic last cheevo
InitialCutscene("Harvest Moon Dog Slaughter", "Beat the game in Spring 2 of the first year", 1)
