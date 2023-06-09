// Harvest Moon DS: Cute
// #ID = 12198

CutsceneFlag = bit0(0x3b6250)
StageID = byte(0x3b6ee4)
Farmland = 0x01
InCutscene = CutsceneFlag == 1

MapIndicator = byte(0x1cfa8d)
NormalMenu = 0x00

BottomMenu = dword(0x3a8af8)
SaveLoad = 0x01
Map = 0x03

LoadPopUp = byte(0x3a8b7c)
NotLoading = 0x00
ASCIIIdentifier = dword(0x3ffa80)
function SaveProtection(){
    return
    never(ASCIIIdentifier != 0x44204d48 || prev(ASCIIIdentifier) != 0x44204d48) &&
    !(
        MapIndicator == NormalMenu &&
        BottomMenu == SaveLoad &&
        LoadPopUp != NotLoading
    )
}

function SumFlags(Flags, result){
    return measured(sum_of(Flags, f => f) == result) && sum_of(Flags, f => prev(f)) < result
}

function SumFlagsNoDelta(Flags, result){
    return sum_of(Flags, f=>f) == result
}

function AnyFlagTrue(Flags, title, description, points){
    achievement(
        title, description, points,
        trigger = 
            SaveProtection() &&
            SumFlags(Flags, 1) 
    )
}

function AllFlagsTrue(Flags, title, description, points){
    achievement(
        title, description, points,
        trigger = 
            SaveProtection() &&
            SumFlags(Flags, length(Flags))
    )
}

function SimpleEvent(eventFlag){
return
    once(SaveProtection() && eventFlag == 1 && prev(eventFlag) == 0) &&
    trigger_when(CutsceneFlag == 0)
}

SimpleEvents = 
{
    1:{"title":"Ancestor's Rod", "description":"Get the fishing rod", "points":1, "flag":bit1(0x3c0f31)},
2:{"title":"The Painting - Part 1", "description":"Hear Romana talk about Jeff and his painting", "points":2, "flag":bit5(0x3c0f36)},
3:{"title":"Kate's Life Advice", "description":"Overhear Lumina and Kate's Conversation", "points":2, "flag":bit2(0x3c0f38)},
4:{"title":"Fierce Bargaining", "description":"Watch Van do a special deal for Romana", "points":2, "flag":bit6(0x3c0f36)},
5:{"title":"Mukumuku's Gift", "description":"Receive a fish from Mukumuku", "points":2, "flag":bit4(0x3c0f3d)},
6:{"title":"Mukumuku's Sickness", "description":"Take Mukumuku to the clinic after giving him a mushroom", "points":2, "flag":bit5(0x3c0f3d)},
7:{"title":"Path to Cooking Expert", "description":"See Ruby's problems with cooking", "points":2, "flag":bit1(0x3c0f3a)},
8:{"title":"Attacked! ", "description":"See Murrey steal some food from Van", "points":2, "flag":bit2(0x3c0f3c)},
9:{"title":"New Trade Negotiations", "description":"Watch Daryll offer his 'Super Ultra Great Delicious Wonderful Water Pistol' for sale", "points":2, "flag":bit3(0x3c0f3c)},
10:{"title":"Muffy's Meddling", "description":"Watch Kassey complimenting Muffy at the bar", "points":2, "flag":bit4(0x3c0f3c)},
11:{"title":"Begging - Part 1", "description":"See Murrey ask for the 'usual' at the Farm Shop for the first time ", "points":2, "flag":bit0(0x3c0f3d)},
12:{"title":"Secret Fireworks - Part 1", "description":"Watch Kassey work on making the fireworks for next year's Fireworks Festival", "points":2, "flag":bit6(0x3c0f3c)},
13:{"title":"Secret Fireworks - Part 2", "description":"See the two brothers quarrelling about the way fireworks are made", "points":2, "flag":bit7(0x3c0f3c)},
14:{"title":"Persuit of Beauty", "description":"Be asked about what the ultimate beauty is by Cody", "points":2, "flag":bit4(0x3c0f3b)},
15:{"title":"Cody's Aesthetics", "description":"Meet Cody in his house and hear about his worry about his next artwork", "points":2, "flag":bit5(0x3c0f3b)},
16:{"title":"2nd Hot Spring", "description":"Get a 2nd hot spring built by using the 1st one 100 times", "points":2, "flag":bit4(0x3c0f30)},
17:{"title":"Bonsai Contest", "description":"See Galen showing off his Bonsai tree to Hardy", "points":2, "flag":bit6(0x3c0f3a)},
18:{"title":"Budding Romance", "description":"Hear Mimi talk about wanting love", "points":2, "flag":bit2(0x3c0f3e)},
19:{"title":"Capture Mukumuku", "description":"Watch Daryll's 'Demon Beast Capture Plan' in action", "points":2, "flag":bit2(0x3c0f3b)},
20:{"title":"Murrey the Gourmet - Part 1", "description":"Experience the 'Murrey's Lunch' ocurrence", "points":2, "flag":bit4(0x3c0f42)},
21:{"title":"Murrey the Gourmet - Part 2", "description":"Experience the follow up to the 'Murrey's Lunch' ocurrence", "points":2, "flag":bit5(0x3c0f42)},
22:{"title":"Barney's Scout", "description":"See Barney being excited about finding the star for the circus", "points":2, "flag":bit1(0x3c0f3e)},
23:{"title":"Flora's Stalker", "description":"Watch Daryll be beat up by Flora", "points":2, "flag":bit3(0x3c0f39)},
24:{"title":"Da-chan vs. Mukumuku", "description":"Watch Da-chan get frightened by Mumuku's rage", "points":2, "flag":bit7(0x3c0f3d)},
25:{"title":"Vesta vs. Van - Part 1", "description":"Watch Van proposal to Vesta about a weight-match", "points":2, "flag":bit4(0x3c0f39)},
26:{"title":"Vesta vs. Van - Part 2", "description":"Watch Van and Vesta's weight-match", "points":2, "flag":bit5(0x3c0f39)},
27:{"title":"Past Glory", "description":"Go running with Wally", "points":2, "flag":bit3(0x3c0f37)},
28:{"title":"Da-chan Walks", "description":"See Da-chan walking at dawn", "points":2, "flag":bit6(0x3c0f3d)},
29:{"title":"Tak and Vesta", "description":"Watch Takakura admire the crops that grow on Vesta's Farm", "points":2, "flag":bit3(0x3c0f3d)},
30:{"title":"Whip Practice", "description":"Overhear Barney's shame about not being very good at the whip", "points":2, "flag":bit0(0x3c0f3e)},
31:{"title":"Parent Argument", "description":"Scold your child for their outburst", "points":2, "flag":bit6(0x3c0f3e)},
32:{"title":"Kate vs. Hugh - Part 1", "description":"See Hugh and Kate play Shiritori for the 1st time", "points":2, "flag":bit1(0x3c0f38)},
33:{"title":"Kate vs. Hugh - Part 2 [m]", "description":"Help Hugh get better at Shiritori *You are not married*", "points":2, "flag":bit5(0x3c0f38)},
34:{"title":"Kate vs. Hugh - Part 3", "description":"See Hugh and Kate play Shiritori for the 2nd time", "points":2, "flag":bit6(0x3c0f38)},
35:{"title":"Self Defense Practice", "description":"Watch Flora practice her self-defense skills", "points":2, "flag":bit2(0x3c0f50)},
36:{"title":"Big Emergency!", "description":"Help Muffy in her big emergency!", "points":2, "flag":bit1(0x3c0f50)},
37:{"title":"The Apprentice - Part 1", "description":"Watch Kate and Mary talking about books [GBA]", "points":2, "flag":bit3(0x3c0f38)},
38:{"title":"A Visit to Romana", "description":"Watch Elli checkup on Romana [GBA]", "points":2, "flag":bit1(0x3c0f40)},
39:{"title":"Cooking Pride", "description":"Eat the Takaran Pepe Special made by Sebastian [GBA]", "points":2, "flag":bit0(0x3c0f37)},
40:{"title":"Dr. Hardy's Help", "description":"Watch Elli get some medicine to Dr. Hardy [GBA]", "points":2, "flag":bit0(0x3c0f40)},
41:{"title":"Cooking Bonzai", "description":"Try some of Ruby's Stir Fry [GBA]", "points":2, "flag":bit4(0x3c0f3f)},
42:{"title":"Karen's Earring", "description":"See Muffy and Karen talk about earrings [GBA]", "points":2, "flag":bit1(0x3c0f36)},
43:{"title":"Karen's Meddling", "description":"Watch Kassey complimenting Karen at the bar [GBA]", "points":2, "flag":bit5(0x3c0f3c)},
44:{"title":"Fireworks Shop", "description":"Be kicked out of Kassey and Patrick's house [GBA]", "points":2, "flag":bit5(0x3c0f3f)},
45:{"title":"Witch Data", "description":"Watch Mary questioning the Witch Princess [GBA]", "points":2, "flag":bit3(0x3c0f40)},
46:{"title":"Socializing", "description":"Eavesdrop a conversation between Karen and Celia [GBA]", "points":2, "flag":bit6(0x3c0f3f)},
47:{"title":"The Painting - Part 2", "description":"See Karen reveal his ancestor to Romana [GBA]", "points":2, "flag":bit7(0x3c0f3f)},
48:{"title":"Excavation Data", "description":"See Mary gather information for his novel at the excavation site [GBA]", "points":2, "flag":bit2(0x3c0f40)},
49:{"title":"The Apprentice - Part 2", "description":"Watch Kate asking Mukumuku to be her novel's hero [GBA]", "points":2, "flag":bit4(0x3c0f38)},
50:{"title":"Toadstool Research", "description":"Teach Trent how to cultivate mushrooms [GBA]", "points":2, "flag":bit3(0x3c0f41)},
51:{"title":"Advice for Cliff - Part 1 ", "description":"See Galen cheer up Cliff [GBA]", "points":2, "flag":bit6(0x3c0f40)},
52:{"title":"Advice for Cliff - Part 2", "description":"See Griffin cheer up Cliff [GBA]", "points":2, "flag":bit7(0x3c0f40)},
53:{"title":"Leia's Request", "description":"Watch Leia be out of her bathtub", "points":2, "flag":bit7(0x3c0f3e)},
54:{"title":"Mermaid's Easy Life", "description":"Have a meal with Leia and Daryll", "points":2, "flag":bit3(0x3c0f3b)},
55:{"title":"Ann's Hidden Skills", "description":"Watch Ann show her hidden circus skills [GBA]", "points":2, "flag":bit6(0x3c0f50)},
56:{"title":"The Big Plan [m]", "description":"Learn from Wally about what 'Project B' is *You are not married*", "points":2, "flag":bit4(0x3c0f37)},
57:{"title":"Family Argument - Part 1 [m]", "description":"Watch Kate and Grant's first argument *You are not married*", "points":2, "flag":bit7(0x3c0f37)},
58:{"title":"Family Argument - Part 2 [m]", "description":"Watch Kate and Grant's second argument", "points":2, "flag":bit0(0x3c0f38)},
59:{"title":"Best Friends [m]", "description":"Get told that one of Mary's books has won a prize [GBA] *Not married to Lumina*", "points":2, "flag":bit2(0x3c0f37)},
60:{"title":"Ancestor's Pride [m]", "description":"Learn about Griffin's parents professions *Not married to Griffin*", "points":2, "flag":bit0(0x3c0f3c)},
61:{"title":"Somewhere, Sometime [m]", "description":"See Cliff thanking Nami for helping him out [GBA] *Nami is not married", "points":2, "flag":bit3(0x3c0f36)},
62:{"title":"Popuri Problem [m]", "description":"See Popuri discover Nami's hiding place [GBA] *Nami is not married*", "points":2, "flag":bit2(0x3c0f3f)},
63:{"title":"Path to Musician [m]", "description":"Learn about Gustafa's family of musicians *Nami and Gustafa are not married", "points":2, "flag":bit6(0x3c0f3b)},
64:{"title":"Original Cocktail Drink", "description":"Taste test some drinks and choose the best one at the bar", "points":2, "flag":bit1(0x3c0f3c)},
65:{"title":"Family [m]", "description":"Watch Nami apologize to Ruby at the Inn *Nami and Gustafa are married*", "points":2, "flag":bit4(0x3c0f36)},
66:{"title":"Thankful Feelings [m]", "description":"See Celia giving a present from herself and Marlin to Vesta *Celia and Marlin are married*", "points":2, "flag":bit7(0x3c0f35)},
67:{"title":"Cocktail Challenge [m]", "description":"Tell Muffy and Griffin to work together in the creation of a new type of drink *Muffy and Griffin are married*", "points":2, "flag":bit2(0x3c0f36)},
68:{"title":"Begging - Part 2 [m]", "description":"See Murrey ask for the 'usual' at the bar for the second time *Muffy and Griffin are married*", "points":2, "flag":bit1(0x3c0f3d)},
69:{"title":"Education Policy - Part 1 [m]", "description":"Be asked about your child's future *Have a Child at Stage 1*", "points":2, "flag":bit5(0x3c0f37)},
70:{"title":"Education Policy - Part 2 [m]", "description":"Judge the race between Wally and Chris", "points":2, "flag":bit7(0x3c0f38)},
71:{"title":"A Man's Back [m]", "description":"See Griffin have a drink with Takakura and talk about his daughter *Married*", "points":2, "flag":bit2(0x3c0f3d)},
72:{"title":"Chris' Fortune Telling [m]", "description":"Get your fortune told by Chris *Not married to Griffin*", "points":2, "flag":bit6(0x3c0f37)},
73:{"title":"Galen's Date [m]", "description":"Hear Nina joke about entering a street fighter tournament *You are not married*", "points":2, "flag":bit0(0x3c0f3b)},
74:{"title":"Likeable Child [m]", "description":"Let Mimi play with your child *Have a Child at Stage 1*", "points":2, "flag":bit3(0x3c0f3e)},
75:{"title":"Memory Stories [m]", "description":"See Lumina sing a little song to Rock *Lumina and Rock are married*", "points":2, "flag":bit1(0x3c0f37)},
76:{"title":"Small Adventure [m]", "description":"Look for a tree goblin with your kid *Have a Child at Stage 2*", "points":2, "flag":bit5(0x3c0f3e)},
77:{"title":"Lumina's Advice [m]", "description":"See Lumina's realization about music *Not married to Rock*", "points":2, "flag":bit7(0x3c0f3b)},
78:{"title":"Lumina's Request [m] ", "description":"Rescue Sebastian from Mukumuku *You are not married*", "points":2, "flag":bit7(0x3c0f36)},
79:{"title":"The Love Triangle [m]", "description":"See Popuri walk towards Kai and Muffy's conversation [GBA] *Muffy is not married*", "points":2, "flag":bit5(0x3c0f40)},
80:{"title":"Marlin's Sickness - Part 1 [m]", "description":"Watch Marlin go to the clinic for a checkup [GBA] *Celia and Marlin are married*", "points":2, "flag":bit6(0x3c0f39)},
81:{"title":"Marlin's Sickness - Part 2 [m]", "description":"Watch Griffin make a special healthy drink for Marlin [GBA] *Celia and Marlin are married*", "points":2, "flag":bit7(0x3c0f39)},
82:{"title":"Outlook on Humanity [m]", "description":"Hear Mary talk about the Mineral Town people [GBA] *You are not married, Lumina is not married*", "points":2, "flag":bit0(0x3c0f51)},
83:{"title":"Daughter's Tea [m]", "description":"Drink some tea with Lumina *Lumina is not married*", "points":2, "flag":bit3(0x3c0f50)},
84:{"title":"Elder Sister [m]", "description":"Get help from Karen for your tummy ache [GBA] *You are not married*", "points":2, "flag":bit4(0x3c0f50)},
85:{"title":"Popuri and the Kids [m]", "description":"Watch Popuri get upset with the kids [GBA] *You are not married*", "points":2, "flag":bit5(0x3c0f50)},
86:{"title":"Memories of Travel [m]", "description":"Hear the story about Nami's travel to another country *Nami is not married*", "points":2, "flag":bit0(0x3c0f50)},
87:{"title":"Injury Helper [m]", "description":"Help Ellie treat Hugh's foot *Don't have a child*", "points":2, "flag":bit7(0x3c0f50)},
88:{"title":"Love Letter [m]", "description":"Tell Celia what to do with her love letters *Married to Marlin*", "points":2, "flag":bit7(0x3c0f4f)},
}

for event in SimpleEvents{
    achievement(
        title = SimpleEvents[event]["title"],
        description = SimpleEvents[event]["description"],
        points = SimpleEvents[event]["points"],
        trigger = SimpleEvent(SimpleEvents[event]["flag"])
    )
}

function DeltaMemFlag(flag){
return
    SaveProtection() && prev(flag) == 0 && flag == 1
}
Basquet = bit0(0x3c12b8)
MediumRucksack = bit1(0x3c12b8)
LargeRucksack = bit2(0x3c12b8)

achievement(
"Portable Shipping", "Buy the basket", 1,
DeltaMemFlag(Basquet)
)

achievement(
"Medium Order", "Buy the Medium Rucksack", 2,
DeltaMemFlag(MediumRucksack)
)

achievement(
"Deep Inventory", "Buy the Large Rucksack", 3,
DeltaMemFlag(LargeRucksack)
)

ToolToUpgrade = word(0x3c1006)
TypeOfUpgrade = word(0x3c1008)
Copper = 0x0034
Silver = 0x0035
Gold = 0x0036
Mystrile = 0x0039
Mythic = 0x003c
Nothing = 0xffff
function toolUpgradeCheevo(UpgradeMaterial, title, description, points){
    achievement(
            title, description, points,
            trigger = 
                SaveProtection() &&
                StageID == Farmland &&
                prev(TypeOfUpgrade) == UpgradeMaterial && TypeOfUpgrade == Nothing &&
                prev(ToolToUpgrade) <= 5 &&
                ToolToUpgrade == Nothing
    )
}
toolUpgradeCheevo(Copper, "Copperation", "Get your first Copper tool", 2)
toolUpgradeCheevo(Silver, "Silver Soul", "Get your first Silver tool", 3)
toolUpgradeCheevo(Gold, "Gold Heart", "Get your first Gold tool", 5)
toolUpgradeCheevo(Mystrile, "Mystical Ore", "Get your first Mystrile tool", 10)


MystrileAxe = bit2(0x3c12ca)
MystrileSickle = bit0(0x3c12cb)
MystrileHoe = bit6(0x3c12cb)
MystrileFishingRod = bit4(0x3c12cc)
MystrileWateringCan = bit2(0x3c12cd)
MystrileHammer = bit0(0x3c12ce)
MystrileTools = [MystrileAxe, MystrileSickle, MystrileHoe, MystrileFishingRod, MystrileWateringCan, MystrileHammer]

CursedAxe = bit3(0x3c12ca)
CursedSickle = bit1(0x3c12cb)
CursedHoe = bit7(0x3c12cb)
CursedRod = bit5(0x3c12cc)
CursedWateringCan = bit3(0x3c12cd)
CursedHammer = bit1(0x3c12ce)
CursedTools = [CursedAxe, CursedSickle, CursedHoe, CursedRod, CursedWateringCan, CursedHammer]

BlessedAxe = bit2(0x3c12b4)
BlessedSickle = bit3(0x3c12b4)
BlessedHoe = bit4(0x3c12b4)
BlessedRod = bit5(0x3c12b4)
BlessedWateringCan = bit6(0x3c12b4)
BlessedHammer = bit7(0x3c12b4)
BlessedHammerBackup = bit3(0x3c0ee4)
BlessedTools = [BlessedAxe, BlessedSickle, BlessedHoe, BlessedRod, BlessedWateringCan, BlessedHammer]
BlessedToolsBackup = [BlessedAxe, BlessedSickle, BlessedHoe, BlessedRod, BlessedWateringCan, BlessedHammerBackup]
BlessedToolsTotal = [BlessedAxe, BlessedSickle, BlessedHoe, BlessedRod, BlessedWateringCan, BlessedHammer, BlessedHammerBackup]

function allToolsUpgraded(UpgradeSet, UpgradeMaterial, title, description, points){
    achievement(
        title, description, points,
        trigger = 
            SaveProtection() &&      
            StageID == Farmland &&
            prev(TypeOfUpgrade) == UpgradeMaterial && TypeOfUpgrade == Nothing &&
            prev(ToolToUpgrade) <= 5 &&
            ToolToUpgrade == Nothing && 
            measured(SumFlagsNoDelta(UpgradeSet, length(UpgradeSet)) )
    )
}
allToolsUpgraded(MystrileTools, Mystrile, "Mystical Tools", "Upgrade all your tools to the Mystrile tier", 25)
AnyFlagTrue(CursedTools, "Don't Let it Fall!", "Find one cursed tool", 5)
achievement("Curse of the Rancher [m]", "Find all the cursed tools in the 3rd Mine", 10, SaveProtection() && SumFlags(CursedTools, length(CursedTools)))
AnyFlagTrue(BlessedToolsTotal, "Holy Tool [m]", "Bless your first cursed tool", 10)

function BlessedTools(Flags, Flags2, Sum, title, description, points){
    achievement(
        title, description, points,
        trigger = 
        SaveProtection() &&
        ((SumFlags(Flags, Sum)) ||
        (SumFlags(Flags2, Sum)))
    )
}
BlessedTools(BlessedTools, BlessedToolsBackup, 6, "Praying Worked [m]", "Bless all your cursed tools", 25)

tool_Axe = 0x0000
tool_FishingRod = 0x0001
tool_Hammer = 0x0002
tool_Hoe = 0x0003
tool_Sickle = 0x0004
tool_WateringCan = 0x0005
function MythicToolUpgradeCheevo(tool, title, description, points){
    achievement(
            title, description, points,
            trigger = 
                SaveProtection() &&
                StageID == Farmland &&
                prev(TypeOfUpgrade) == Mythic && TypeOfUpgrade == Nothing &&
                prev(ToolToUpgrade) == tool &&
                ToolToUpgrade == Nothing
    )
}
MythicToolUpgradeCheevo(tool_Axe, "Lady of Lumber [m]", "Upgrade your axe to the Mythic tier", 10)
MythicToolUpgradeCheevo(tool_FishingRod, "Fishing Simulator [m]", "Upgrade your fishing rod to the Mythic tier", 10)
MythicToolUpgradeCheevo(tool_Hammer, "Megaton Hammer [m]", "Upgrade your hammer to the Mythic tier", 10)
MythicToolUpgradeCheevo(tool_Hoe, "Digging Drill [m]", "Upgrade your hoe to the Mythic tier", 10)
MythicToolUpgradeCheevo(tool_Sickle, "Farm Reaper [m]", "Upgrade your sickle to the Mythic tier", 10)
MythicToolUpgradeCheevo(tool_WateringCan, "I Can Water [m]", "Upgrade your watering can to the Mythic tier", 10)



function CheckReceivedItem(item){
    inventory = []
    for address in range(FirstItemSlot, LastItemSlot, 4) {
       array_push(inventory, word(address) == item && prev(word(address)) == Nothing)
    }
    array_push(inventory, EquippedTool == item && EquippedTool == Nothing)
    return any_of(inventory, a => a)
}
item_LegendarySword = 0x0008
LegendarySwordPlace = 0x40

FirstItemSlot = 0x3b9bac
LastItemSlot = 0x3b9c80
EquippedTool = word(0x3b9b90)
function LegendarySword(title, description, points){
    achievement(
        title, description, points,
        trigger = SaveProtection() &&
            CheckReceivedItem(item_LegendarySword) &&
            StageID == LegendarySwordPlace
    )
}
LegendarySword("The Blade of Evil's Bane", "Get the legendary sword from the second mine", 5)

//Home and stuff
function DeltaToValue(Previous, Current, Address, title, description, points){
    achievement(
        title, description, points, 
        trigger = SaveProtection() &&
            prev(Address) == Previous &&
            Address == Current
    )
}
//House Level
HouseLevel = byte(0x3c1434)
SmallHouse = 0x00
MediumHouse = 0x01
LargeHouse = 0x02
DeltaToValue(MediumHouse, LargeHouse, HouseLevel, "Mansion Luxury", "Fully expand your house", 10)

ToolBox = bit0(0x3c1440)
BeautyBox = bit1(0x3c1440)
RoundTable = bit2(0x3c1440)
Television = bit3(0x3c1440)
DVDPlayer = bit4(0x3c1440)
Clock = bit5(0x3c1440)
Shelf = bit7(0x3c1440)
//0x3de309 Bit 0 - Refrigerator Bit 1 - Kitchen Bit 2 - Pot Bit 3 - Mixer Bit 4 - Frying Pan Bit 5 - Steamer Bit 6 - Oven Bit 7 - Big Bed
Refrigerator = bit0(0x3c1441)
Kitchen = bit1(0x3c1441)
Pot = bit2(0x3c1441)
Mixer = bit3(0x3c1441)
FryingPan = bit4(0x3c1441)
Steamer = bit5(0x3c1441)
Oven = bit6(0x3c1441)
BigBed = bit7(0x3c1441)
Furniture = [ToolBox, BeautyBox, RoundTable, Television, DVDPlayer, Clock, Shelf, Refrigerator, Kitchen, Pot, Mixer, FryingPan, Steamer, Oven, BigBed]
Clothes = [
    bit7(0x3c12c6), 
    bit0(0x3c12c7), bit1(0x3c12c7), bit2(0x3c12c7), bit3(0x3c12c7), bit4(0x3c12c7), bit5(0x3c12c7), bit6(0x3c12c7), bit7(0x3c12c7),
    bit0(0x3c12c8), bit1(0x3c12c8), bit2(0x3c12c8), bit3(0x3c12c8), bit4(0x3c12c8), bit5(0x3c12c8)
]
AllFlagsTrue(Furniture, "Embellishing the Interior", "Buy all the furniture", 10)
AllFlagsTrue(Clothes, "Do I Look DS Cute?", "Buy all the outfits", 10)
function SingleFlag(flag, title, description, points){
    achievement(
        title, description, points,
        trigger = SaveProtection() &&
            prev(flag) == 0 &&
            flag == 1
    )
}
Bathroom = bit0(0x3bfe10)
Toilet = bit0(0x3bfe14)
Basement = bit0(0x3bfe20)
SingleFlag(Bathroom, "Don't Peek", "Build a bath room in your house", 5)
SingleFlag(Toilet, "Deposit Time", "Build a toilet room in your house", 5)
SingleFlag(Basement, "Underground Farm", "Build all three levels of the basement", 10)

ChickenCoop = 0x02
AnimalBarn = 0x01
NotBuilt = 0xff
Building1 = byte(0x3bfd79)
Building2 = byte(0x3bfd81)
Building3 = byte(0x3bfd89)
Building4 = byte(0x3bfd91)
Building5 = byte(0x3bfd99)
Building6 = byte(0x3bfda1)
Building7 = byte(0x3bfda9)
Buildings = [Building1, Building2, Building3, Building4, Building5, Building6, Building7]
function BuildingCheck(buildingType){
    buildingLogic = []
    for build in Buildings{
        array_push(buildingLogic, build == buildingType && prev(build) == NotBuilt)
    }
    return any_of(buildingLogic, a => a)
}
function CheckSpecificBuilding(buildingType, title, description, points){
    achievement(
        title, description, points,
        trigger = SaveProtection() &&
        BuildingCheck(buildingType)
    )
}

CheckSpecificBuilding(ChickenCoop, "Flying Space", "Build a bird shed", 5)
CheckSpecificBuilding(AnimalBarn, "Cow Shelter", "Build an animal shed", 5)

Silo = bit0(0x3bfdf4)
MushroomHouse = bit0(0x3bfe04)
SingleFlag(Silo, "Food for my Friends", "Build a fodder silo", 3)
SingleFlag(MushroomHouse, "Mmm... Shrooms", "Build a mushroom shed", 5)


LumberShed = bit0(0x3bfdf8)
StoneShed = bit0(0x3bfdfc)
GoldenLumberShed = bit0(0x3bfe00)
StorageSheds = [LumberShed, StoneShed, GoldenLumberShed]
AllFlagsTrue(StorageSheds, "Lumber, Stone and Gold", "Build all 3 storage sheds", 5)
DuckPond = bit0(0x3bfe24)
MakerShed = bit0(0x3bfe08)
SingleFlag(DuckPond, "Ducky Home", "Build a duck pond", 5)
SingleFlag(MakerShed, "Making Space", "Build a maker shed", 5)
MayonnaiseMaker = bit1(0x3c1442)
CheeseMaker = bit2(0x3c1442)
YogurtMaker = bit3(0x3c1442)
YarnMaker = bit4(0x3c1442)
SeedMaker = bit5(0x3c1442)
CanFoodMaker = bit6(0x3c1442)
Cottage = bit0(0x3bfe0c)

Makers = [MayonnaiseMaker, CheeseMaker, YarnMaker, SeedMaker, CanFoodMaker, YogurtMaker]
AllFlagsTrue(Makers, "Crafting Machines", "Get all the makers", 10)
SingleFlag(Cottage, "Island of Sunshine", "Build the cottage on the desert island", 50)

//Mine cheevos
function CertainValueRange(prevrange, current, address, title, description, points){
    achievement(
        title, description, points,
        trigger = SaveProtection() &&
            prev(address) >= prevrange &&
            prev(address) != current &&
            address == current
    )
}
function EventCheevo(title, description, points, eventFlag){
    achievement(
        title, description, points,
        trigger = 
             once(SaveProtection() && eventFlag == 1 && prev(eventFlag) == 0) &&
    trigger_when(CutsceneFlag == 0)
    )
}
WonderfulsFlag = bit3(0x3c0f4d)
SecondMine = bit5(0x3c1079)
ThirdMine = bit6(0x3c1079)
FourthMine = bit7(0x3c1079)
FourthMineLowestFloor = word(0x3c10b2)
SingleFlag(SecondMine, "10 Cute Floors of Mystery", "Unlock the 2nd mine", 5)
SingleFlag(ThirdMine, "255 Cute Floors of Grief", "Unlock the 3rd mine", 10)
SingleFlag(FourthMine, "999 Cute Floors of Death [m]", "Unlock the 4th mine", 25)
CertainValueRange(50000, 65535, FourthMineLowestFloor, "65535 Cute Floors of Despair [m]", "Reach the bottom of the 4th mine", 50)
EventCheevo("Infinity Stones [m]", "Find all the wonderful stones in the 4th mine and ask for the Goddess Gift", 10, WonderfulsFlag)

MineItemStart = 0x3c1071
MineItemEnd = 0x3c1077
RemainingMineFlags = [bit0(0x3c1078), bit1(0x3c1078), bit2(0x3c1070), bit3(0x3c1070), bit4(0x3c1070), bit5(0x3c1070), bit6(0x3c1070), bit7(0x3c1070)]
function BitflagRangeCount(RangeStart, RangeEnd){
    count = 0
    for address in range(RangeStart, RangeEnd){
        count = count + bitcount(address)
    }
    return count
}
function BitflagRange(RangeStart, RangeEnd, ExtraFlags, title, description, points){    
       achievement(
            title, description, points,
            trigger = SaveProtection() &&
             measured((BitflagRangeCount(RangeStart, RangeEnd) + sum_of(ExtraFlags, f => f)) == (length(range(RangeStart, RangeEnd))*8) + length(ExtraFlags)) &&
                (prev(BitflagRangeCount(RangeStart, RangeEnd)) + sum_of(ExtraFlags, f => prev(f))) == (length(range(RangeStart, RangeEnd))*8) + length(ExtraFlags) - 1            
       )                                  
}
function AddSourceCount32bitprev(RangeStart, RangeEnd){
    count = 0
    for address in range(RangeStart, RangeEnd, 4){
        count = count + (prev(dword(address)) / prev(dword(address)))
    }
    return count
}
function AddSourceCount32bit(RangeStart, RangeEnd){
    count = 0
    for address in range(RangeStart, RangeEnd, 4){
        count = count + (dword(address) / dword(address))
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
BitflagRange(MineItemStart, MineItemEnd, RemainingMineFlags, "Deep Mining [m]", "Find all the mine items", 10)
MineEnemiesStart = 0x3c107c
MineEnemiesEnd = 0x3c10a0
AddSource32bitlessthan(MineEnemiesStart, MineEnemiesEnd, "Creatures of the Underground [m]", "Kill all the mine creatures", 10)
CursedAccessories = [bit4(0x3c1073), bit5(0x3c1073), bit6(0x3c1073), bit7(0x3c1073), bit0(0x3c1074), bit1(0x3c1074), bit2(0x3c1074), bit3(0x3c1074), bit4(0x3c1074), bit5(0x3c1074)]
AllFlagsTrue(CursedAccessories, "Cursed Jewelry", "Dig all the cursed accessories", 10)
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
EquippedAccessorySlot = (0x3b9b98)
BeautyBoxStart  = 0x3ba430
BeautyBoxEnd = 0x3ba6b4
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
BlessedAccessories("Cute Adornments: Old Testament", "Bless all the pendant and earrings cursed accessories", 10)
BlessedAccessories2("Cute Adornments: New Testament", "Bless all the ring, shoe and hats cursed accessories", 10)
//Collection cheevos
//0x3bff50-0x3bffb0
//0x3bfffc-0x3c001c
function VegetablesAddsource(title, description, points){
    achievement(
        title, description, points,
        trigger = SaveProtection () &&
        measured(AddSourceCount32bit(0x3bff50, 0x3bffb0) + AddSourceCount32bit(0x3bfffc, 0x3c001c) == 34) &&
        AddSourceCount32bitprev(0x3bff50, 0x3bffb0) + AddSourceCount32bitprev(0x3bfffc, 0x3c001c) <= 33
    )
}
VegetablesAddsource("Vegetables Harvest","Ship every crop, flower, mushroom and tree fruit", 10)
//0x3c003c-0x3c00a4
function EdiblesAddsource(title, description, points){
    achievement(
        title, description, points,
        trigger = SaveProtection () &&
        measured(AddSourceCount32bit(0x3c003c, 0x3c00a4) == 27) &&
        AddSourceCount32bitprev(0x3c003c, 0x3c00a4) <= 26
    )
}
EdiblesAddsource("Edible Comestibles","Ship every wild or purchasable edible item", 10)
//0x3bffb4-0x3bfff8
//0x3c0020-0x3c0038
function AnimalProductsAddsource(title, description, points){
    achievement(
        title, description, points,
        trigger = SaveProtection () &&
        measured(AddSourceCount32bit(0x3bffb4, 0x3bfff8) + AddSourceCount32bit(0x3c0020, 0x3c0038) == 25) &&
        AddSourceCount32bitprev(0x3bffb4, 0x3bfff8) + AddSourceCount32bitprev(0x3c0020, 0x3c0038) <= 24
    )
}
AnimalProductsAddsource("Animal Goods", "Ship every animal product", 10)
//0x3c00b4-0x3c0120
//0x3c0130
//0x3c0150
//0x3c0160-0x3c016c
function MineItemsAddsource(title, description, points){
    achievement(
        title, description, points,
        trigger = SaveProtection () &&
        measured(AddSourceCount32bit(0x3c00b4, 0x3c0120) + AddSourceCount32bit(0x3c0160, 0x3c016c) + (dword(0x3c0130) / dword(0x3c0130)) + (dword(0x3c0150) / dword(0x3c0150)) == 34) &&
        AddSourceCount32bitprev(0x3c00b4, 0x3c0120) + AddSourceCount32bitprev(0x3c0160, 0x3c016c) + (prev(dword(0x3c0130)) / prev(dword(0x3c0130))) + (prev(dword(0x3c0150)) / prev(dword(0x3c0150))) <= 33
    )
}
MineItemsAddsource("Excavation Transport [m]", "Ship every mine item", 10)
//0x3c00a8-0x3c00b0
//0x3c0134
//0x3c013c-0x3c014c
function FishItemsAddSource(title, description, points){
    achievement(
        title, description, points,
        trigger = SaveProtection () &&
        measured(AddSourceCount32bit(0x3c00a8, 0x3c00b0) + AddSourceCount32bit(0x3c013c, 0x3c014c) + (dword(0x3c0134) / dword(0x3c0134)) == 9) &&
        AddSourceCount32bitprev(0x3c00a8, 0x3c00b0) + AddSourceCount32bitprev(0x3c013c, 0x3c014c) + (prev(dword(0x3c0134)) / prev(dword(0x3c0134))) <= 8
    )
}
FishItemsAddSource("Rod Variation", "Ship every fish item", 10)
//0x3c0124-0x3c012c
//0x3c0138
//0x3c0154-0x3c015c
//0x3c0170-0x3c0188
function MiscItemsAddSource(title, description, points){
    achievement(
        title, description, points,
        trigger = SaveProtection() &&
        measured(AddSourceCount32bit(0x3c0124, 0x3c012c) + AddSourceCount32bit(0x3c0154, 0x3c015c) + AddSourceCount32bit(0x3c0170, 0x3c0188) + (dword(0x3c0138) / dword(0x3c0138)) == 14) &&
        AddSourceCount32bitprev(0x3c0124, 0x3c012c) + AddSourceCount32bitprev(0x3c0154, 0x3c015c) + AddSourceCount32bitprev(0x3c0170, 0x3c0188) + (prev(dword(0x3c0138)) / prev(dword(0x3c0138))) <= 13
    )
}
MiscItemsAddSource("Misc Elements", "Ship every miscellaneous item", 10)
//0x3c018c-0x3c0394
AddSource32bitlessthan(0x3c018c, 0x3c0394, "Cook Connoisseur", "Cook and ship all successful and failed dishes", 25) //0x3dd078-0x3dd280
AddSource32bitlessthan(0x3bff50, 0x3c0394, "Shipping Collection [m]", "Ship every shippable item", 25) //0x3dce3c - 0x3dd280
//
function CatchAllFish(title, description, points){
    achievement(
        title, description, points,
        trigger = SaveProtection () &&
        measured(AddSourceCount32bit(0x3c10e4, 0x3c11ac) + bit0(0x3c11b4) == 52) &&
        AddSourceCount32bitprev(0x3c10e4, 0x3c11ac) + prev(bit0(0x3c11b4)) <= 51
    )
}
//0x3c10e4-0x3c11ac
CatchAllFish("Marine Exhibition [m]", "Catch all 52 fish and items", 25) 
Huchen = bit1(0x3c11b4)
AnglerFish = bit2(0x3c11b4)
SpaCatfish = bit3(0x3c11b4)
Carp = bit4(0x3c11b4)
Coelacanth = bit5(0x3c11b4)
Squid = bit6(0x3c11b4)
KingFishes = [Huchen, AnglerFish, SpaCatfish, Carp, Coelacanth, Squid]
AllFlagsTrue(KingFishes, "Legend of Forget-Me-Not Valley Queens", "Catch the 6 fish kings", 25)
//Sprites Cheevos
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
//Harvest Sprites
//RedTeam 0x3dc548 0x3dc554 0x3dc560 0x3dc56c 0x3dc578 0x3dc584 0x3dc590 0x3dc59c 0x3dc5a8 0x3dc5b4 0x3dc5c0 0x3dc5cc
RedTeamStart = 0x3bf65c
RedTeamEnd = RedTeamStart + (12*11)
OrangeTeamStart = 0x3bf6ec
OrangeTeamEnd = OrangeTeamStart + (12*11)
YellowTeamStart = 0x3bf77c
YellowTeamEnd = YellowTeamStart + (12*11)
GreenTeamStart = 0x3bf80c
GreenTeamEnd = GreenTeamStart + (12*11)
IndigoTeamStart = 0x3bf89c
IndigoTeamEnd = IndigoTeamStart + (12*11)
PurpleTeamStart = 0x3bf92c
PurpleTeamEnd = PurpleTeamStart + (12*11)
BlueTeamStart = 0x3bf9bc
BlueTeamEnd = BlueTeamStart + (12*11)
Guts = bit0(0x3bfa4c)
Roller = bit0(0x3bfa50)
Hops = bit0(0x3bfa54)
Tep = bit0(0x3bfa58)
Jum = bit0(0x3bfa5c)
Jet = bit0(0x3bfa60)
Jackie = bit0(0x3bfa64)
BrownTeam = [Guts, Roller, Hops, Tep, Jum, Jet, Jackie]
//White team baby
WBaby = bit0(0x3bfa68)

Mercury = bit7(0x3c0eed)
Venus = bit0(0x3c0eee)
Earth = bit1(0x3c0eee)
Mars = bit2(0x3c0eee)
Jupiter = bit3(0x3c0eee)
Saturn = bit4(0x3c0eee)
Uranus = bit5(0x3c0eee)
Neptune = bit6(0x3c0eee)
Pluto = bit7(0x3c0eee)
BlackTeam = [Mercury, Venus, Earth, Mars, Jupiter, Saturn, Uranus, Neptune, Pluto]
AllRemainingTeamMembers = [Guts, Roller, Hops, Tep, Jum, Jet, Jackie,Mercury, Venus, Earth, Mars, Jupiter, Saturn, Uranus, Neptune, Pluto, WBaby]

BitRangeSprites(RedTeamStart, RedTeamEnd, [], 12, "Scarlet Group", "Rescue all the Red Team sprites", 10)
BitRangeSprites(OrangeTeamStart, OrangeTeamEnd, [], 12, "Tangerine Squad", "Rescue all the Orange Team sprites", 10)
BitRangeSprites(YellowTeamStart, YellowTeamEnd, [], 12, "Gold Gang", "Rescue all the Yellow Team sprites", 10)
BitRangeSprites(GreenTeamStart, GreenTeamEnd, [], 12, "Lime Crew", "Rescue all the Green Team sprites", 10)
BitRangeSprites(BlueTeamStart, BlueTeamEnd, [], 12, "Cobalt Troup", "Rescue all the Blue Team sprites", 10)
BitRangeSprites(IndigoTeamStart, IndigoTeamEnd, [], 12, "Azure Lineup", "Rescue all the Indigo Team sprites", 10)
BitRangeSprites(PurpleTeamStart, PurpleTeamEnd, [], 12, "Lavender Party", "Rescue all the Purple Team sprites", 10)
AllFlagsTrue(BrownTeam, "Walnut Forces", "Rescue all the Brown Team sprites", 10)
AllFlagsTrue(BlackTeam, "Obsidian Team", "Rescue all the Black Team sprites", 10)
BitRangeSprites(RedTeamStart, BlueTeamEnd, AllRemainingTeamMembers, 60, "Harvest Goddess Saved", "Rescue 60 sprites", 10)
BitRangeSprites(RedTeamStart, BlueTeamEnd, AllRemainingTeamMembers, 101, "Free Spirits", "Rescue all 101 sprites", 25)
//Animal Cheevos
//First Animal
FirstAnimalType = 0x3bfab4
LastAnimalType = FirstAnimalType + (27*0x18)
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
        trigger = SaveProtection() &&
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
FourAnimals("Poultry Diversity", "Have a chicken, a duck, a cow and a sheep", 5)
GetHorse = bit0(0x3c0f2e)
EventCheevo("Stallion Gift", "Obtain your horse", 3, GetHorse)
DogAffection = word(0x3bfa8a)
CatAffection = word(0x3bfaa2)
HorseAffection = word(0x3BFA72)
DeltaToMemLessThan(DogAffection, 1000, "What’s Up Doggie", "Get your Dog to 10 hearts", 10)
DeltaToMemLessThan(CatAffection, 1000, "Feline Love", "Get your Cat to 10 hearts", 10)
DeltaToMemLessThan(HorseAffection, 1000, "My Little Pony", "Get your Horse to 10 hearts", 10)
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

AnimalWin(Chicken, "Feathery Win", "Win the Chicken Festival", 10)
AnimalWin(Duck, "Golduck", "Win the Duck Festival", 10)
AnimalWin(Cow, "Blessed Cow!", "Win the Cow Festival", 10)
AnimalWin(Sheep, "Champion Sheep", "Win the Sheep Festival", 10)

//Festival Cheevos
function SingleFlagReverse(flag, title, description, points){
    achievement(
        title, description, points,
        trigger = SaveProtection() &&
            prev(flag) == 1 &&
            flag == 0
    )
}
NewYearsDay = bit4(0x3c0f80)
SingleFlagReverse(NewYearsDay, "Rice Cake Day", "Pound some rice in New Years Day", 3)
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
ReceivedCelia = bit0(0x3c0f90)
//Bit 2 - Recieved Cookies from Muffy
ReceivedMuffy = bit1(0x3c0f90)
//Bit 3 - Recieved Cookies from Nami
ReceivedNami = bit2(0x3c0f90)
//Bit 4 - Recieved Cookies from Lumina
ReceivedLumina = bit3(0x3c0f90)
//Bit 5 - Recieved Cookies from Flora
ReceivedFlora = bit7(0x3c0f8f)
RecievedRock = bit1(0x3c0f91)
WinterThanksgiving = [ReceivedCelia, ReceivedMuffy, ReceivedNami, ReceivedLumina, ReceivedFlora, RecievedRock]
AnyFlagTrueNotSum(WinterThanksgiving, "Valentines Day", "Recieve Chocolates from a boy in the Spring Thanksgiving", 3)
GlobalTime = dword(0x3b9b7c)
Beach = 0x04
function CookingFestivalCheck(){
    logic = always_false()
    for index in range(0, 254) {
        logic = logic || (GlobalTime >= (756000 + (4320000 * index)) && GlobalTime <= (792000 + (4320000 * index)))
    }
    return logic
}
//0x3ddea8 [32-bits] Farm Degree
FarmDegree = dword(0x3c0fe0)
FestivalOcurred = bit6(0x3c0f98)
function WinCookingFestival(title, description, points){
    achievement(
        title, description, points,
        trigger = SaveProtection () && CookingFestivalCheck() && (FarmDegree == (prev(FarmDegree) + 100)) && StageID == Beach
    )
}
WinCookingFestival("Baking Day", "Win the Cooking Festival", 4)
function FestivalCheevo(eventFlag, title, description, points){
    achievement(
        title, description, points,
        trigger = 
            once(SaveProtection() && eventFlag == 1 && prev(eventFlag) == 0) &&
            (FestivalOcurred == 1 && prev(FestivalOcurred) == 0) &&
            never(StageID != prev(StageID))
    )
}
FarmHouse = 0x30
function FestivalCheevo2(eventFlag, title, description, points){
    achievement(
        title, description, points,
        trigger = 
            once(SaveProtection() && eventFlag == 1 && prev(eventFlag) == 0) &&
            StageID == FarmHouse &&
            never(StageID == Farmland && prev(StageID) == FarmHouse)
    )
}

KaiBeach = bit5(0x3c0f81)
FestivalCheevo(KaiBeach, "Beach Opening Day", "Take part in the opening of Kai's summertime snack shack", 2)
Fireworks = bit4(0x3c0f82)
FestivalCheevo2(Fireworks, "Pyrotechnics Day", "Watch the beautiful Fireworks", 3)
HarvestFestival = bit1(0x3c0f8c)
SingleFlag(HarvestFestival, "Soup Day", "Provide an ingredient for the Harvest Festival pot", 2)
//0x3dde56 Bit 7 - Kate came for Pumpkin Festival
KatePumpkin = bit3(0x3c0f83)
//0x3dde57 Bit 0 - Hugh came for Pumpkin Festival Bit 1 - Popuri came for Pumpkin Festival
HughPumpkin = bit4(0x3c0f83)
PopuriPumpkin = bit5(0x3c0f83)
PumpkinFestival = [KatePumpkin, HughPumpkin, PopuriPumpkin]
AllFlagsTrue(PumpkinFestival, "Pumpkin Day", "Play a part in the Pumpkin Festival and receive the 3 kids that come to your house", 2)
SingleFlag(bit0(OrangeTeamStart), "Gift Day", "Help Thomas and get a Golden Lumber in exchange", 4)

CookieMuffy = bit4(0x3c0f8e)
CookieNami = bit5(0x3c0f8e)
CookieLumina = bit6(0x3c0f8e)
CookieFlora = bit7(0x3c0f8e)
CookieKaren = bit0(0x3c0f8f)
CookiePopuri = bit1(0x3c0f8f)
CookieAnn = bit2(0x3c0f8f)
CookieMary = bit3(0x3c0f8f)
CookieElli = bit4(0x3c0f8f)
CookieWitch = bit6(0x3c0f8f)

SpringThanksgiving = [CookieMuffy, CookieNami, CookieLumina, CookieFlora, CookieKaren, CookiePopuri, CookieAnn, CookieMary, CookieElli, CookieWitch]

AnyFlagTrueNotSum(SpringThanksgiving, "Sweet Day", "Give your sweetheart some Cookies in the Spring Thanksgiving", 3)
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
//Bit 2 - Spend Starry Night with Celia
SNCelia = bit4(0x3c0f85)
//Bit 3 - Spend Starry Night with Muffy
SNMuffy = bit6(0x3c0f85)
//Bit 4 - Spend Starry Night with Nami
SNNami = bit0(0x3c0f86)
//Bit 5 - Spend Starry Night with Lumina
SNLumina = bit2(0x3c0f86)
//Bit 6 - Spend Starry Night with Flora
SNFlora = bit5(0x3c0f86)
//Bit 7 - Spend Starry Night with H. Goddess
SNGoddess = bit6(0x3c0f86)
//0x3dde59
//Bit 0 - Spend Starry Night with Witch Princess
SNPrincess = bit7(0x3c0f86)
//Bit 2 - Spend Starry Night with Leia
SNLeia = bit1(0x3c0f87)
SNSkye = bit2(0x3c0f87)
StarryNight = [SNCelia, SNMuffy, SNNami, SNLumina, SNFlora, SNGoddess, SNPrincess, SNLeia, SNSkye]
StarryNight("Starry Day", "Celebrate the Starry Night with someone special", 3, StarryNight)
ChristmasGift = word(0x3c0ff6)
NinaSocks = bit6(0x3c1440)
function ChristmasCheevo(title, description, points){
    achievement(
        title, description, points,
        trigger = SaveProtection () && (NinaSocks == 1 && ChristmasGift != 0 && ChristmasGift != 0xffff && (prev(ChristmasGift) == 0 || prev(ChristmasGift) == 0xffff))
    )
}

ChristmasCheevo("Stocking Day", "Recieve a present from Thomas-Claus during Christmas", 4)
NewYearsEve = bit5(0x3c0f87)
SingleFlagReverse(NewYearsEve, "Noodles Day", "Enjoy some festive Buckwheat Noodles on New Years Eve", 3)
//Minigame Cheevos
Hours = byte(0x1cfa8e)
Minutes = byte(0x1cfa8f)
GirlMemorySong = byte(0x1d52c0) == 0x30
BearShuffleSong = byte(0x1d52c0) == 0x12
DogHouseSong = byte(0x1d52c0) == 0x2d
HarvestGoddessSong = byte(0x1d52c0) == 0x13
MineEntrance = 0x39
MemoryMinigameState = bit0(0x3b6458)
function GirlSelect(title, description, points){
    achievement(
        title, description, points,
        trigger = SaveProtection() && Hours == 6 && Minutes == 2 && GirlMemorySong && StageID == MineEntrance && MemoryMinigameState == 1 && prev(MemoryMinigameState) == 0
    )
}
GirlSelect("Girl Remembrance","Win the Girl Select minigame", 3)
BearShuffleWinCount = byte(0x3b6470)
function BearShuffle(title, description, points){
    achievement(
        title, description, points,
        trigger = SaveProtection() && Hours == 0 && Minutes == 1 && BearShuffleSong && StageID == MineEntrance && BearShuffleWinCount == 10 && prev(BearShuffleWinCount) == 9
    )
    }
BearShuffle("Witch's Bears", "Win the Bear Shuffle minigame", 10)
GirlsBeatenDogHouse = byte(0x3b6424)
function DogBattle(title, description, points){
    achievement(
        title, description, points,
        trigger = SaveProtection() && Hours == 4 && Minutes == 45 && DogHouseSong && StageID == MineEntrance && GirlsBeatenDogHouse == 6 && prev(GirlsBeatenDogHouse) == 5
    )
}
DogBattle("Harvest Fantasy", "Win the Doghouse Battle minigame", 10)
GoddessPond = 0x09
LowHighScore = byte(0x3b6440)
function HighLow(title, description, points){
    achievement(
        title, description, points,
        trigger = SaveProtection() && HarvestGoddessSong && StageID == GoddessPond && LowHighScore == 10 && prev(LowHighScore) == 9
    )
}
HighLow("RNGoddess", "Score 10 points in the Guess High/Low minigame", 5)
//0x3de0a6 Questions 5 - 13 0x3de0a8 Questions 22 - 29
QuestionStart = 0x3c11de
QuestionEnd = 0x3c11e0
//0x3de0a5 Bit 3 - Bit 7 - Questions 1-5
Question1 = bit3(0x3c11dd)
Question2 = bit4(0x3c11dd)
Question3 = bit5(0x3c11dd)
Question4 = bit6(0x3c11dd)
Question5 = bit7(0x3c11dd)
//0x3de0a9 Questions 30-35 (Bit 0 to Bit 5)
Question30 = bit0(0x3c11e1)
Question31 = bit1(0x3c11e1)
Question32 = bit2(0x3c11e1)
Question33 = bit3(0x3c11e1)
Question34 = bit4(0x3c11e1)
Question35 = bit5(0x3c11e1)
ExtraQuestions = [Question1, Question2, Question3, Question4, Question5, Question30, Question31, Question32, Question33, Question34, Question35]
function BitflagRangeQuestions(RangeStart, RangeEnd, ExtraFlags, title, description, points){    
       achievement(
            title, description, points,
            trigger = SaveProtection() &&
             measured((BitflagRangeCount(RangeStart, RangeEnd) + sum_of(ExtraFlags, f => f)) == 0) &&
                (prev(BitflagRangeCount(RangeStart, RangeEnd)) + sum_of(ExtraFlags, f => prev(f))) == 34          
       )                                  
}

BitflagRangeQuestions(QuestionStart, QuestionEnd, ExtraQuestions, "Bokumono Knowledge", "Answer all 35 questions of Channel 9 correctly", 10)
//Casino Cheevos
Casino = 0x2e
CasinoIdentifier = high4(0x3a92f5)
Matching = 0xc
Poker = 0xb
Blackjack = 0xa
function CasinoCheck(Type){
    logic = StageID == Casino && CasinoIdentifier == Type
    return logic
}

//0x3b65e7 [8-bit] Casino Match Started
//0x01 = Started
MatchStarted = bit0(0x3a99e3) == 1
//0x3b65be [8-bit] Player Score - Matching 0x04 = Win
MatchScore = byte(0x3a99ba)

function MatchingCasino(title, description, points){
    achievement(
        title, description, points, 
        trigger = CasinoCheck(Matching) && MatchStarted && (prev(MatchScore) == 3 && MatchScore == 4)
    )
}
MatchingCasino("Matching and Pairing", "Get 4 matches in the Casino Matching game", 3)
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
PokerHand = low4(0x3A98D4)

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
BlackjackHand = low4(0x3A9A36)

function BlackjackCasino(title, description, points){
    achievement(
        title, description, points, 
        trigger = CasinoCheck(Blackjack) && ((prev(BlackjackHand) == 0 || ((prev(BlackjackHand) == 4 ))) && BlackjackHand <= 3 && BlackjackHand> 0)
    )
}
PokerCasino("Queen of Poker", "Get a Straight of better in the Casino Poker game", 5)
BlackjackCasino("What's 9+10?", "Get a 5-Card Charlie or higher in the Casino Blackjack game", 5)
//0x3de189 [N-bit] Casino Bought Flags Bit 7 - Teleport Stone
TeleportStone = bit0(0x3c12c2)
//0x3de18a Bit 0 - Truth Bangle
TruthBangle = bit1(0x3c12c2)
//Bit 1 - Love Bangle
LoveBangle = bit2(0x3c12c2)
//Bit 2 - Red Cloak
RedCloak = bit3(0x3c12c2)
//Bit 3 - Godhand
Godhand = bit4(0x3c12c2)
//Bit 4 - Miracle Gloves
MiracleGloves = bit5(0x3c12c2)
function BuyOrUpgradeCheevo(title, description, points, BuyOrUpgradeFlag){
    achievement(
        title, description, points,
        trigger = 
            SaveProtection() &&
            StageID == Casino &&
            prev(BuyOrUpgradeFlag) == 0 &&
            BuyOrUpgradeFlag == 1 
	)
}

function Pokedex(startOffset, start, finish){
    logic = always_true()
    StartTemp = startOffset
    PokemonAddress = 0
    Count = 0 
    AddBitFlags = 1
    BitFlags = []
    for number in range(1, finish+1){            
        if(number >= start && number < finish){
            if(finish - number > 8 && Count == 0){
                array_push(BitFlags, bitcount(StartTemp))
                AddBitFlags = 0
            }else if(AddBitFlags == 1){
                      
                if((Count) == 0){
                    array_push(BitFlags, bit0(StartTemp))
                }
                if((Count) == 1){
                    array_push(BitFlags, bit1(StartTemp))
                }
                if((Count) == 2){
                   array_push(BitFlags, bit2(StartTemp))
                }
                if((Count) == 3){
                  array_push(BitFlags, bit3(StartTemp))
                }
                if((Count) == 4){
                   array_push(BitFlags, bit4(StartTemp))
                }
                if((Count) == 5){
                   array_push(BitFlags, bit5(StartTemp))
                }
                if((Count) == 6){
                   array_push(BitFlags, bit6(StartTemp))
                }
                if((Count) == 7){
                   array_push(BitFlags, bit7(StartTemp))
                }
                
            }
         }
         Count = Count + 1
         if(Count == 8){
            Count = 0
            StartTemp = StartTemp + 0x01
            AddBitFlags = 1
         }
    }
    return measured(sum_of(BitFlags, f => f) == finish-start) && sum_of(BitFlags, f => prev(f)) <= finish-start-1 
}
function PokedexValue(startOffset, start, finish, value){
    logic = always_true()
    StartTemp = startOffset
    PokemonAddress = 0
    Count = 0 
    AddBitFlags = 1
    BitFlags = []
    for number in range(1, finish+1){            
        if(number >= start && number < finish){
            if(finish - number > 8 && Count == 0){
                array_push(BitFlags, bitcount(StartTemp))
                AddBitFlags = 0
            }else if(AddBitFlags == 1){
                      
                if((Count) == 0){
                    array_push(BitFlags, bit0(StartTemp))
                }
                if((Count) == 1){
                    array_push(BitFlags, bit1(StartTemp))
                }
                if((Count) == 2){
                   array_push(BitFlags, bit2(StartTemp))
                }
                if((Count) == 3){
                  array_push(BitFlags, bit3(StartTemp))
                }
                if((Count) == 4){
                   array_push(BitFlags, bit4(StartTemp))
                }
                if((Count) == 5){
                   array_push(BitFlags, bit5(StartTemp))
                }
                if((Count) == 6){
                   array_push(BitFlags, bit6(StartTemp))
                }
                if((Count) == 7){
                   array_push(BitFlags, bit7(StartTemp))
                }
                
            }
         }
         Count = Count + 1
         if(Count == 8){
            Count = 0
            StartTemp = StartTemp + 0x01
            AddBitFlags = 1
         }
    }
    return measured(sum_of(BitFlags, f => f) == value) && sum_of(BitFlags, f => prev(f)) <= value-1 
}
BuyOrUpgradeCheevo("Teletransportation Stone", "Buy the Teleport Stone", 2, TeleportStone)
BuyOrUpgradeCheevo("Rich Presence", "Buy the Truth Bangle", 2, TruthBangle)
BuyOrUpgradeCheevo("Stalking Bangle", "Buy the Love Bangle", 3, LoveBangle)
BuyOrUpgradeCheevo("Crimson Cloak", "Buy the Red Cloak", 5, RedCloak)
BuyOrUpgradeCheevo("Get Over Here", "Buy the Godhand", 10, Godhand)
BuyOrUpgradeCheevo("Farming Simulator 2", "Buy the Miracle Gloves", 10, MiracleGloves)

CommonStart = 0x3c0d4c
achievement(
    title = "Commonly Rare",
    description = "Have all the Common cards",
    points = 5,
    trigger = SaveProtection() && Pokedex(CommonStart, 1, 626)
)
achievement(
    title = "Not Common Rare",
    description = "Have all the Uncommon cards",
    points = 5,
    trigger = SaveProtection() && Pokedex(CommonStart, 626, 1251)
)
achievement(
    title = "Secret Rare",
    description = "Have all the Rare cards",
    points = 10,
    trigger = SaveProtection() && Pokedex(CommonStart, 1251, 1876)
)
achievement(
    title = "Parallel Rare",
    description = "Have all the Very Rare cards",
    points = 25,
    trigger = SaveProtection() && Pokedex(CommonStart, 1876, 2501)
)
achievement(
    title = "Secret Legendary Rare",
    description = "Have 312 Super Rare cards",
    points = 25,
    trigger = SaveProtection() && PokedexValue(CommonStart,  2501, 3126, 312)
)
achievement(
    title = "Filled Album",
    description = "Collect all cards",
    points = 50,
    trigger = SaveProtection() && Pokedex(CommonStart, 1, 3126)
)
//0x3de0aa Song Flags 1
SongFlags1 = 0x3c11e2
//0x3de0ab Song Flags 2
SongFlags2 = 0x3c11e3
//0x3de0a9 Bit 6 - Spring Song Bit 7 - Town Spirit
SpringSong = bit6(0x3c11e1)
TownSpirit = bit7(0x3c11e1)
//0x3de0ac Bit 0 - WALK
WALK = bit0(0x3c11e4)
//Bit 1 - Sprite Samba
SpriteSamba = bit1(0x3c11e4)
//Bit 2 - FoMT Spring Song
FOMTSpring = bit2(0x3c11e4)
//Bit 3 - FoMT Summer Song
FOMTSummer = bit3(0x3c11e4)
//Bit 4 - FoMT Fall Song
FOMTFall = bit4(0x3c11e4)
//Bit 5 - FoMT Winter Song
FOMTWinter = bit5(0x3c11e4)
//BIt 6 - FoMT Last Dance
FOMTLastDance = bit6(0x3c11e4)
RemainingSongs = [SpringSong, TownSpirit, WALK, SpriteSamba, FOMTSpring, FOMTSummer, FOMTFall, FOMTWinter, FOMTLastDance]
BitflagRange(SongFlags1, SongFlags2, RemainingSongs, "Nostalgic Songs", "Have all song records [GBA]", 10)
function FlagOrChainCrop(){
    logic = always_false()
    for flag in range(0x3c039d, 0x3c039d + (50*19), 50){
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
CropLevel("Quality Reassurance", "Ship a level 10 crop", 10)
RockLuminaMarriage = bit1(0x3c0f52)
FloraCarterMarriage = bit6(0x3c0f52)
CeliaMarlinMarriage = bit3(0x3c0f53)
MuffinGriffinMarriage = bit0(0x3c0f54)
NamiGustafaMarriage = bit4(0x3c0f51)
//Wedding Cheevos
EventCheevo("Ancient Royal Wedding", "Celebrate Flora and Carter's wedding", 10, FloraCarterMarriage)
EventCheevo("It Just Clicked", "Celebrate Muffy and Griffin's wedding", 10, MuffinGriffinMarriage)
EventCheevo("You Feel Like Home", "Celebrate Nami and Gustafa's wedding", 10, NamiGustafaMarriage)
EventCheevo("Farmer Couple", "Celebrate Celia and Marlin's wedding", 10, CeliaMarlinMarriage)
EventCheevo("Childhood Friends", "Celebrate Lumina and Rock's wedding", 10, RockLuminaMarriage)
//Heart Event Cheevos
CarterYellow = bit7(0x3c0ef3)
EventCheevo("Out for a Drink", "See all 4 of Carter's heart events", 10, CarterYellow)
GriffinYellow = bit3(0x3c0ef1)
EventCheevo("Going for a Walk", "See all 4 of Griffin's heart events", 10, GriffinYellow)
GustafaYellow = bit1(0x3c0ef2)
EventCheevo("Music Inspiration", "See all 4 of Gustafa's heart events", 10, GustafaYellow)
MarlinYellow = bit7(0x3c0ef6)
EventCheevo("Can I Be as Strong as You?", "See all 4 of Marlin's heart events", 10, MarlinYellow)
RockYellow = bit0(0x3c0ef3)
EventCheevo("The Other One", "See all 4 of Rock's heart events", 10, RockYellow)
CliffYellow = bit3(0x3c0ef6)
EventCheevo("Don't Leave Me", "See all 4 of Cliff's heart events [GBA]", 10, CliffYellow)
GrayYellow = bit2(0x3c0ef7)
EventCheevo("Courage and Confidence", "See all 4 of Gray's heart events [GBA]", 10, GrayYellow)
KaiYellow = bit5(0x3c0ef5)
EventCheevo("Where is the Goddess?", "See all 4 of Kai's heart events [GBA]", 10, KaiYellow)
RickYellow = bit6(0x3c0ef4)
EventCheevo("Sister's Approval", "See all 4 of Rick's heart events [GBA]", 10, RickYellow)
TrentYellow = bit0(0x3c0ef8)
EventCheevo("Speak of the Devil", "See all 4 of Trent's heart events [GBA]", 10, TrentYellow)
GoddessYellow = bit7(0x3c0ef8)
EventCheevo("Scolded by a Human", "See all 4 of Harvest Goddess' heart events", 25, GoddessYellow)
LeiaYellow = bit5(0x3c0efc)
EventCheevo("Mom's Letter", "See all 4 of Leia's heart events", 10, LeiaYellow)
PrincessYellow = bit6(0x3c0ef9)
EventCheevo("Dream Potion", "See all 4 of the Witch Princess' heart events", 25, PrincessYellow)
KeiraYellow = bit1(0x3c0efb)
EventCheevo("Gold Fever", "See all 4 of Keira's heart events", 25, KeiraYellow)
//Marriage Cheevos
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
//0x3dddd1 Bit 3 - Muffy Marriage
MuffyMarriage = bit5(0x3c0ef1)
//0x3dddd2 BIt 1 - Nami Marriage
NamiMarriage = bit3(0x3c0ef2)
//0x3dddd3 Bit 0 - Lumina Marriage
LuminaMarriage = bit2(0x3c0ef3)
//0x3dddd3 Bit 7 - Flora Marriage
FloraMarriage = bit2(0x3c0ef4)
//0x3dddd9 Bit 2 - Celia Marriage
CeliaMarriage = bit5(0x3c0ef9)
FMNMarriages = [MuffyMarriage, NamiMarriage, LuminaMarriage, FloraMarriage, CeliaMarriage]
EventCheevoGroup("You Won't Forget Him", "Get married to a Forget-Me-Not Valley Boy", 5, FMNMarriages)

//0x3dddd4 Bit 4 - Proposed to Karen
KarenProposal = bit7(0x3c0ef5)
//0x3dddd5 Bit 3 - Proposed to Popuri
PopuriProposal = bit5(0x3c0ef6)
//0x3dddd6 Bit 1 - Proposed to Ann
AnnProposal = bit4(0x3c0ef7)
//0x3dddd7 Bit 0 - Proposed to Mary
MaryProposal = bit3(0x3c0ef8)
//0x3dddd7 Bit 6 - Proposed to Elli
ElliProposal = bit0(0x3c0ef5)
MTMarriages = [KarenProposal, PopuriProposal, AnnProposal, MaryProposal, ElliProposal]
EventCheevoGroup("Husband of Mineral Town", "Get married to a Mineral Town Boy [GBA]", 5, MTMarriages)
SkyeMarriage = bit7(0x3c0efd)
EventCheevo("Stole Your Heart", "Get married to Skye", 10, SkyeMarriage)
ChildAge = word(0x3bee20)
function SonCheevo(title, description, points){
    achievement(
        title, description, points,
        trigger = 
        SaveProtection() && ChildAge >= 1 && prev(ChildAge) == 0
    )
}
SonCheevo("You're a Mama", "Have a child", 10)

Villagers = {
    1:{"title":"Stressed Girl", "description":"Become Ann's best friend [GBA]", "points":5, "address":0x3bf394},
2:{"title":"Ringmaster", "description":"Become Barney's best friend", "points":5, "address":0x3bf31c},
3:{"title":"Archeologist", "description":"Become Carter's best friend", "points":5, "address":0x3beffc},
4:{"title":"Polite Farmer", "description":"Become Celia's best friend", "points":5, "address":0x3bee44},
5:{"title":"Sports Announcer", "description":"Become Chris' best friend", "points":5, "address":0x3bef5c},
6:{"title":"Shy Wanderer", "description":"Become Cliff's best friend [GBA]", "points":5, "address":0x3bf45c},
7:{"title":"Sculpture Artist", "description":"Become Cody's best friend", "points":5, "address":0x3bf18c},
8:{"title":"Crazy Scientist ", "description":"Become Daryll's best friend", "points":5, "address":0x3bf164},
9:{"title":"Delicate Nurse", "description":"Become Elli's best friend [GBA]", "points":5, "address":0x3bf3e4},
10:{"title":"Mine Researcher", "description":"Become Flora's best friend", "points":5, "address":0x3bf024},
11:{"title":"Old Wanderer", "description":"Become Galen's best friend", "points":5, "address":0x3bf114},
12:{"title":"Man of the Woods", "description":"Become Gotz's best friend", "points":5, "address":0x3bf54c},
13:{"title":"Salaryman", "description":"Become Grant's best friend", "points":5, "address":0x3bef84},
14:{"title":"The Apprentice", "description":"Become Gray's best friend [GBA]", "points":5, "address":0x3bf4d4},
15:{"title":"Gentle Guitarist", "description":"Become Griffin's best friend", "points":5, "address":0x3bf1dc},
16:{"title":"Local Hippie", "description":"Become Gustafa's best friend", "points":5, "address":0x3bf1b4},
17:{"title":"Crop Deity", "description":"Become Harvest Goddess' best friend", "points":5, "address":0x3bf4fc},
18:{"title":"Local Physician", "description":"Become Hardy's best friend", "points":5, "address":0x3bf0ec},
19:{"title":"Athletic Youngster", "description":"Become Hugh's best friend", "points":5, "address":0x3befd4},
20:{"title":"Beach Boy", "description":"Become Kai's best friend", "points":5, "address":0x3bf434},
21:{"title":"Cheerleader", "description":"Become Karen's best friend [GBA]", "points":5, "address":0x3bf3bc},
22:{"title":"Serious Brother", "description":"Become Kassey's best friend", "points":5, "address":0x3bf22c},
23:{"title":"Bored Tomboy", "description":"Become Kate's best friend", "points":5, "address":0x3befac},
24:{"title":"Sleeping Beauty", "description":"Become Keira's best friend", "points":5, "address":0x3bf5c4},
25:{"title":"Sea Mermaid", "description":"Become Leia's best friend", "points":5, "address":0x3bf59c},
26:{"title":"Proper Pianist", "description":"Become Lumina's best friend", "points":5, "address":0x3bef0c},
27:{"title":"Reserved Farmer", "description":"Become Marlin's best friend", "points":5, "address":0x3bf074},
28:{"title":"Librarian", "description":"Become Mary's best friend [GBA]", "points":5, "address":0x3bf40c},
29:{"title":"Acrobat", "description":"Become Mimi's best friend", "points":5, "address":0x3bf344},
30:{"title":"White Legend", "description":"Become Mukumuku's best friend", "points":5, "address":0x3bf2cc},
31:{"title":"Wild Rascal", "description":"Become Murrey's best friend", "points":5, "address":0x3bf27c},
32:{"title":"Cheerful Bartender", "description":"Become Muffy's best friend", "points":5, "address":0x3bee6c},
33:{"title":"Independant Hiker", "description":"Become Nami's best friend", "points":5, "address":0x3bee94},
34:{"title":"Retired Lady [m]", "description":"Become Nina's best friend", "points":5, "address":0x3bf13c},
35:{"title":"Friendly Brother", "description":"Become Patrick's best friend", "points":5, "address":0x3bf254},
36:{"title":"Floriculture", "description":"Become Popuri's best friend [GBA]", "points":5, "address":0x3bf36c},
37:{"title":"Concerned Brother ", "description":"Become Rick's best friend [GBA]", "points":5, "address":0x3bf484},
38:{"title":"Valley's Playboy", "description":"Become Rock's best friend", "points":5, "address":0x3bf0c4},
39:{"title":"Fancy Grandma", "description":"Become Romana's best friend", "points":5, "address":0x3beebc},
40:{"title":"Landlord", "description":"Become Ruby's best friend", "points":5, "address":0x3bf09c},
41:{"title":"Elderly Butler", "description":"Become Sebastian's best friend", "points":5, "address":0x3beee4},
42:{"title":"Prince of the Stars", "description":"Become Skye's best friend", "points":5, "address":0x3bf614},
43:{"title":"Mellow Advisor", "description":"Become Takakura's best friend", "points":5, "address":0x3bf2a4},
44:{"title":"Mr. Mayor", "description":"Become Thomas' best friend", "points":5, "address":0x3bf524},
45:{"title":"Doctor M.D.", "description":"Become Trent's best friend [GBA]", "points":5, "address":0x3bf4ac},
46:{"title":"Merchandiser", "description":"Become Van's best friend", "points":5, "address":0x3bf204},
47:{"title":"Farm Owner", "description":"Become Vesta's best friend", "points":5, "address":0x3bf04c},
48:{"title":"Sports Dad", "description":"Become Wally's best friend", "points":5, "address":0x3bef34},
49:{"title":"Royal Enchantress", "description":"Become Witch Princess' best friend", "points":5, "address":0x3bf5ec},
}
function DeltaToMemLessThan(address, current, title, description, points){
    achievement(
        title, description, points,
        trigger = SaveProtection() &&
            prev(address) <= current-1 &&
            measured(address == current)
    )
}
for villager in Villagers{
    DeltaToMemLessThan(byte(Villagers[villager]["address"]), 255, Villagers[villager]["title"], Villagers[villager]["description"], Villagers[villager]["points"])
}