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

//Event Flags
//0x3dde08 = Bit 7 - Recieve Fishing Rod
RecieveFishingRod = bit7(0x3dde08)

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

function AllFlagsSum(Flags, Sum, title, description, points){
    achievement(
        title, description, points,
        trigger = SaveProtection() &&
            SumFlags(Flags, Sum) &&
            SumPreviousFlags(Flags, Sum - 1) 
    )
}



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

