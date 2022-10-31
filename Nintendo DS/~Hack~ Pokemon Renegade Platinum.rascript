// ~Hack~ Pokemon Renegade Platinum
// #ID = 16196
//0x101d40 Global Pointer
GlobalPointer = tbyte(0x101d40) 

//+0x1294
MapID = word(GlobalPointer + 0x1294)
YourHouseMain = 0x019e
TrainerSchool = 0x001d
Lab = 0x01a6
PokemonCenterJubilife = 0x0006
PokemonCenterOreburgh = 0x0030
StevenHouse = 0x0040
FirstGym = 0x002f

//Badges +0x96
FirstBadge = bit0(GlobalPointer + 0x96)

//Event Flags
//+0x1141 Eevee Event --Bit 1 
EeveeEvent = bit1(GlobalPointer + 0x1141)
//+ECE First Lucas Fight --Bit 0

//+EAE Reached Jubilife City --Bit 0 

//+F8E Delivered parcel to rival --Bit 0 

//+ED0 Defeated Rival 2nd Time --Bit 0


//+0x1114 Egg gift --Bit 2
EggGift = bit2(GlobalPointer + 0x1114)
//+111A Get Beldum --Bit 1 
BeldumGift = bit1(GlobalPointer + 0x111A)

//+0x1119 Grabbed Sinnoh Starters --Bit 0
SinnohStarters = bit0(GlobalPointer + 0x1119)
//+0x1142 Grabbed Kanto Starters --Bit 6
KantoStarters = bit6(GlobalPointer + 0x1142)

//+0x1142 Grabbed Kanto Starters --Bit 4
HoennStarters = bit4(GlobalPointer + 0x1142)

//+0xf8e Get Poketch --Bit 1

//+0x1010 Get Old Rod --Bit 4

//+0x1118 Defeated Reporter for kanto pokemon --Bit 6

//+1012 Obtained HM06 --Bit 3

//+0x000eb2 Oreuburgh town first visit opal stone --Bit 0

//TrainerFlags

//Route 202 - 3/3 Normal Matches - 0/1 Rematches - 0/1 Master Trainer
//Lass Natalie +10AA --Bit 3
Route202_LassNatalie = bit3(GlobalPointer + 0x10AA)
//Youngster Tristan +10AA --Bit 1
Route202_YoungsterTristan = bit1(GlobalPointer + 0x10AA)
//YoungsterLogan +10AA --Bit 2
Route202_YoungsterLogan = bit2(GlobalPointer + 0x10AA)

//Jubilife City Trainer School - 0/2 Normal Matches

//Route 204 ~ South - 3/3 Normal Matches - 0/1 Rematches
//Lass Sarah +10AB --Bit 4
Route204_LassSarah = bit4(GlobalPointer + 0x10AB)
// Lass Samantha +10AB --Bit 3
Route204_LassSamantha = bit3(GlobalPointer + 0x10AB)
//Youngster Tyler +10AB --Bit 2
Route204_YoungsterTyler = bit2(GlobalPointer + 0x10AB)

//Route 203 - 4/5 Normal Matches - 0/2 Rematches
//Youngster Dallas +0x10d6 --Bit 3
Route203_YoungsterDallas = bit3(GlobalPointer + 0x10d6)
//Youngster Sebastian +0x10d6 --Bit 4
Route203_YoungsterSebastian = bit4(GlobalPointer + 0x10d6)
//Lass Madeline +0x10d2 --Bit 2
Route203_LassMadeline = bit2(GlobalPointer + 0x10d2)
//Lass Kaitlin +0x10d2 --Bit 3
Route203_LassMadeline = bit3(GlobalPointer + 0x10d2)

//Oreburgh Gate - 1/3 Normal Matches - 0/1 Master Trainer
//Camper Curtis +0x0010cb --bit1
OreburghGate_CamperCurtis = bit1(GlobalPointer + 0x0010cb)
//Picnicker Diana +0x0010d3 --bit1
PicnickerDiana_CamperCurtis = bit1(GlobalPointer + 0x0010d3)

//Oreburgh Mine 2/2 Normal Matches
//Worker Mason +10C2 Bit 4
OreburghMine_WorkerMason = bit4(GlobalPointer + 0x10C2)
//Worker Colin +10C2 Bit 3
OreburghMine_WorkerColin = bit3(GlobalPointer + 0x10C2)




MusicID = word(0x1beb04)
GymLeaderFight = 0x45d
GymLeaderWin = 0x469
OpponentTrainerID = dword(GlobalPointer + 0x476EC)
Roark = 0x17d1ea59


//Temporal Items Quantity on battle ranges [offsets]
MedicineStart = 0x442BE
MedicineEnd = 0x44352
BerryStart = 0x4435E
BerryEnd = 0x4445A
BattleItemStart = 0x4449A
BattleItemEnd = 0x444CA
SetMode = bit6(GlobalPointer + 0x78)
LevelCurrentPokemon = byte(GlobalPointer + 0x475EC)
IDCurrentPokemon = word(GlobalPointer + 0x475B8)
CurrentPokemon = dword(GlobalPointer + 0x4762C)
CurrentPartyMember = byte(GlobalPointer + 0x479A4)
TurnCounter = word(GlobalPointer + 0x449C8)

function NoItemUsedCheck(){
    
    logic = always_false()
    for address in range(MedicineStart, MedicineEnd, 4){
        logic = logic || (word(GlobalPointer + address)) == (prev(word(GlobalPointer + address)) - 1)
    }
    
    for address in range(BattleItemStart, BattleItemEnd, 4){
        logic = logic || (word(GlobalPointer + address)) == (prev(word(GlobalPointer + address)) - 1)
    }
    
     for address in range(BerryStart, BerryEnd, 4){
        logic = logic || (word(GlobalPointer + address)) == (prev(word(GlobalPointer + address)) - 1)
    }
        
    return logic
}


function PointerCheck(){
    logic = 
    GlobalPointer != 0 &&
    GlobalPointer == prev(GlobalPointer)
    return logic
}

function Event(flag, mapID){
    logic = 
    PointerCheck() &&
    MapID == mapID &&
    prev(flag) == 0 &&
    flag == 1
    return logic
}

achievement(
    title = "1st gym challenge",
    description = "Defeat Roark without using items in battle [Level Cap < 16 and Set Mode]",
    points = 10,
    //Initial check for battle start [In set mode]
    trigger = once(prev(OpponentTrainerID) != Roark && (MusicID == GymLeaderFight && OpponentTrainerID == Roark && SetMode == true)) &&
    //Reset if pokemon isnt the level cap
    never(IDCurrentPokemon <= 493 && LevelCurrentPokemon > 16 && LevelCurrentPokemon <= 100) &&
    //Reset if map id changes
    never(MapID != prev(MapID)) &&
    //Trigger when music is win
    trigger_when(MusicID == GymLeaderWin) &&
    //Reset if used item
    never(NoItemUsedCheck())
    
)

achievement(
    title = "1st Badge",
    description = "Obtain the Coal Badge by defeating Roark",
    points = 10,
    trigger = Event(FirstBadge, FirstGym)
)

achievement(
    title = "RGB Palette",
    description = "Obtain all three Kanto starters",
    points = 2,
    trigger = Event(KantoStarters, PokemonCenterJubilife)
)

achievement(
    title = "Back to your Roots",
    description = "Obtain all three Hoenn starters",
    points = 2,
    trigger = Event(HoennStarters, PokemonCenterOreburgh)
)

achievement(
    title = "New Sprouts",
    description = "Obtain all three Sinnoh starters",
    points = 1,
    trigger = Event(SinnohStarters, Lab)
)

achievement(
    title = "Uneven Genes",
    description = "Obtain an Eevee from your Mother",
    points = 1,
    trigger = Event(EeveeEvent, YourHouseMain)
)

achievement(
    title = "This Is Were Babies Come From",
    description = "Obtain an egg in Jubilife City",
    points = 1,
    trigger = Event(EggGift, TrainerSchool)
)

achievement(
    title = "Champion's Favorite",
    description = "Obtain a Beldum from Steven",
    points = 1,
    trigger = Event(BeldumGift, StevenHouse)
)

