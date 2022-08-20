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

//Item Slots
FirstItemSlot = 0x3d6b24
LastItemSlot = 0x3d6bf8
EquippedTool = word(0x3d6b0c)

//Event Flags
//0x3dde08 = Bit 7 - Recieve Fishing Rod
RecieveFishingRod = bit7(0x3dde08)
//0x3dde05 Bit 6 - Get Horse
GetHorse = bit6(0x3dde05)

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
BlessedTools = [BlessedAxe, BlessedSickle, BlessedHoe, BlessedFishingRod, BlessedWateringCan, BlessedHammer, BlessedHammerBackup]

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

Makers = [MayonnaiseMaker, CheeseMaker, YarnMaker, SeedMaker, CanFoodMaker]

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

//OnCellphone Check
OnCellphone = byte(0x3d687c) == 0x01
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

function SaveProtection() => !(NotMap && BottomMenu == bmSaveLoad && LoadPop != lpNotLoading)

function EventCheevo(title, description, points, eventFlag){
    achievement(
        title, description, points,
        trigger = 
            once(SaveProtection() && eventFlag == 1 && prev(eventFlag) == 0) &&
            !InCutscene
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

function checkAnimals(type){
    logic = always_false()
    for address in range(FirstAnimalType, LastAnimalType, 24){      
        logic = logic || low4(address) == type       
    }

    return logic
}

function checkPrevAnimals(type){
    logic = always_false()
    for address in range(FirstAnimalType, LastAnimalType, 24){      
        logic = logic || prev(low4(address)) == type       
    }

    return logic
}

function AnimalDeathReset(){
    logic = always_false()
    for address in range(FirstAnimalType, LastAnimalType, 24){      
        logic = logic || (prev(low4(address)) > 0 && low4(address) == 0)
    }
    return logic
}

function FourAnimals(title, description, points){
    achievement(
        title, description, points,
        trigger = 
        measured(tally(4, tally(1, checkAnimals(Cow)), tally(1, checkAnimals(Sheep)), tally(1, checkAnimals(Chicken)), tally(1, checkAnimals(Duck)))) &&
        never(tally(4, tally(1, checkPrevAnimals(Cow)), tally(1, checkPrevAnimals(Sheep)), tally(1, checkPrevAnimals(Chicken)), tally(1, checkPrevAnimals(Duck)))) &&
        never(AnimalDeathReset())
    )
}

function DeltaToMemLessThan(address, current, title, description, points){
    achievement(
        title, description, points,
        trigger = SaveProtection() &&
            prev(address) <= current &&
            address == current
    )
}

function checkAnimalCrown(type){
    logic = always_false()
    for address in range(FirstAnimalType, LastAnimalType, 24){      
        logic = logic || (low4(address) == type &&        
    }

    return logic
}

function AnimalWin(type, title, description, points){
    achievement(
        title, description, points,
        trigger = SaveProtection() &&
        
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
AllFlagsSum(BlessedTools, 6, "Utterly Hallowed [m]", "Bless all your cursed tools", 25)
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
SingleFlag(FourthMine, "999 Floors of Death [m]", "Unlock the 4rd mine", 25)
CertainValueRange(50000, 65535, FourthMineLowestFloor, "65535 Floors of Despair [m] ", "Reach the bottom of the 4th mine", 50)
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