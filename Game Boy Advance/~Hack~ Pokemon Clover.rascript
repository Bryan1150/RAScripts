// ~Hack~ Pokemon Clover
// #ID = 11575
MusicID = word(0x000fc0)
TradingMusic = 0x108
PokemonCenterMusic = 0x1ae
GymMusic = 0x15d
GymBattleMusic = 0x180
GymLeaderStartMusic = 0x171

MapID = word(0x0473a8)
VeepierTown = 0x0003
Laboratory = 0x0304
VitlyaCity = 0x0103
VitlyaWoods = 0x0001
VitlyaWoodsGrotto = 0x002a
GadechCity = 0x0203
GadechGutsifly = 0x0406
BrockFight = 0x0806
MtMootTop = 0x181a

EventPointer = tbyte(0x005008)
DataPointer = tbyte(0x00500c)
TotalOwnID = dword(DataPointer + 0x800a)
OwnTrainerID = word(DataPointer + 0x800a)
OwnSecretID = word(DataPointer + 0x800c)
SetModeFlag = bit1(DataPointer + 0x8015)

BadgesOffset = 0x9f88
BoulderBadge = bit0(DataPointer + BadgesOffset)
JusticeBadge = bit1(DataPointer + BadgesOffset)
BoulderBadgeRoom = 0x0806

StoragePointer = tbyte(0x005010)

EdgyFirstBattle = byte(EventPointer + 0x9406)
ViolFirstBattle = byte(EventPointer + 0x9400)
QuickClawEvent = bit3(EventPointer + 0x9308)
PokedexObtained = byte(EventPointer + 0x9408)

Route1Potion = bit0(EventPointer + 0x931a)
//Town Map = 0x02
TownMap = byte(EventPointer + 0x940e)
TownMapFlag = bit1(EventPointer + 0x940e)

HM05Event = bit0(EventPointer + 0x930a)
BlobboSleeping = bit6(EventPointer + 0x9309)
GutsiflyTrade = bit0(EventPointer + 0x933c)
PressedFMoot = bit4(EventPointer + 0x930a)

BattleOutcome = byte(0x02be8a)
BattleWin = 0x01
BattleCaught = 0x07

TrainerID = word(0x0406ae)
Edgie = 0x15d
Viol = 0x16d
Keksandra = 0x170
Brock = 0x000b

//Vitlya Woods
VitlyaWItem1 = bit0(EventPointer + 0x9309)
VitlyaWItem2 = bit1(EventPointer + 0x9309)
VitlyaWItem3 = bit2(EventPointer + 0x9309)
VitlyaWItem4 = bit3(EventPointer + 0x9309)
VitlyaWHItem1 = bit2(EventPointer + 0x9359)
VitlyaWHItem2 = bit1(EventPointer + 0x9350)

VitlyaWTrainer1 = bit2(EventPointer + 0x8f80)
VitlyaWTrainer2 = bit3(EventPointer + 0x8f80)
VitlyaWTrainer3 = bit4(EventPointer + 0x8f80)
VitlyaWTrainer4 = bit5(EventPointer + 0x8f80)
VitlyaWTrainer5 = bit6(EventPointer + 0x8f80)

VitlyaWoodsStuff = [
VitlyaWItem1,
VitlyaWItem2,
VitlyaWItem3,
VitlyaWItem4,
VitlyaWHItem1,
VitlyaWHItem2,
VitlyaWTrainer1,
VitlyaWTrainer2,
VitlyaWTrainer3,
VitlyaWTrainer4,
VitlyaWTrainer5
]

EnemyPokemonID = word(0x02bc3c)
Birdhouse = 0x001a

FirstTrainerID = (0x02c288)
FirstSecretID = (0x02c28a)
PartyOffset = 0x64

//Battle Stuff
OwnFirstType = byte(0x02bc05)
OwnSecondType = byte(0x02bc06)
RockType = 0x05

CurrentTurn = byte(0x02be86)
PlayerTurn = 0x01

OwnPartyCount = byte(0x02c029)

function SaveProtection(){
    return
    MapID != 0 
}

function FlickerProtection(){
    return
    MapID == prev(MapID) &&
    EventPointer == prev(EventPointer) &&
    DataPointer == prev(DataPointer) &&
    StoragePointer == prev(StoragePointer) 
}

function SimpleBitflag(flag, map){
    return
    FlickerProtection() && 
    MapID == map &&
    flag > prev(flag) && 
    disable_when(tally(5, FlickerProtection() && flag == 1), until= MapID != prev(MapID))
}

function SimpleDeltaMem(delta, mem, address, map){
    return
    FlickerProtection() &&
    MapID == map &&
    address == mem &&
    prev(address) == delta && 
    disable_when(tally(5, FlickerProtection() && address == mem), until= MapID != prev(MapID))
}

function FlagSum(flags){
    
    return
    unless(!FlickerProtection()) &&
    measured(sum_of(flags, f => f) == length(flags)) && 
    prev(sum_of(flags, f => f)) == length(flags)-1 &&
    disable_when(tally(5, FlickerProtection() && sum_of(flags, f => f) == length(flags)), until= MapID != prev(MapID))
}

function BattleWin(){
    return 
    prev(BattleOutcome) != BattleWin &&
    BattleOutcome == BattleWin 
}

function BattleCaught(){
    return
    prev(BattleOutcome) != BattleCaught &&
    BattleOutcome == BattleCaught
}

function WinTrainer(trainer, map){
    return   
    MapID == map &&
    TrainerID == trainer &&
    BattleWin()
}

function MapTransition(coming, going){
    return
    prev(MapID) == coming &&
    MapID == going
}

function CheckForeignPokemon(){
    logic = always_false()
    for pokemon in range(FirstTrainerID, FirstTrainerID + (PartyOffset * 5), PartyOffset){
        logic = logic || 
        (
        dword(pokemon) != 0 &&
        dword(pokemon) - TotalOwnID != 0 && 
        prev(dword(pokemon)) - prev(TotalOwnID) == 0)
    }
    
    return SaveProtection() && FlickerProtection() && prior(MusicID) == PokemonCenterMusic && MusicID == TradingMusic && logic
}

function Monotype(type, room, trainerID, musicDelta, music){
return
//Starting Hit
    once(
        MapID == room &&
        prev(MusicID) == musicDelta &&
        MusicID == music
    )
//Trigger Condition
    &&
    trigger_when(BattleWin()) &&
    TrainerID == trainerID &&
    MapID == room
//Reset Condition
    &&
    never(MapID != prev(MapID)) &&
    never(
        MusicID == music && 
        CurrentTurn == PlayerTurn &&
        OwnFirstType != type && OwnSecondType != type
    )
}

function SetMode(){
    return SetModeFlag == 1
}

function LimitedTeamQuantity(quantity, room, trainerID){
    return
    MapID == room &&
    TrainerID == trainerID &&
    OwnPartyCount <= quantity &&
    SetMode() &&
    trigger_when(BattleWin())
}

achievement(
    "An Edgy Beginning [m]",
    "Defeat your rival in the Pokémon Lab",
    1,
    WinTrainer(Edgie, Laboratory)
)

achievement(
    "We Only Get Better From Here... Fug :D [m]",
    "Defeat your neighbor in Veepier Town",
    1,
    WinTrainer(Viol, VeepierTown) || WinTrainer(Keksandra, VeepierTown)
)

achievement(
    "Gotta Go Fast",
    "Obtain the Quick Claw in Vitlya City",
    1,
    SimpleBitflag(QuickClawEvent, VitlyaCity)
)

achievement(
    ">Journey Has Started",
    "Obtain the Pokédex",
    1,
    SimpleDeltaMem(0x00, 0x01, PokedexObtained, Laboratory)
)

achievement(
    "Starter Pack",
    "Obtain the Town Map from Rhea and the... free sample in Route 1",
    2,
    FlagSum([TownMapFlag,Route1Potion])
)

achievement(
    "I Hate Forests.",
    "Defeat all trainers and collect all items in Vitlya Woods",
    5,
    MapID == VitlyaWoods && FlagSum(VitlyaWoodsStuff)
)

achievement(
    "The Birdhouse is Aggressive!",
    "Catch all the stationary Birdhouses in Vitlya Woods without leaving",
    5,
    MapID == VitlyaWoods && measured(tally(5,BattleCaught() && EnemyPokemonID == Birdhouse))  &&
    never(MapID != VitlyaWoods)
)

achievement(
    "Lost Woods",
    "Enter the hidden grotto in Vitlya Woods",
    2,
    MapTransition(VitlyaWoods, VitlyaWoodsGrotto)
)

achievement(
    "Miracle Exchange",
    "Perform a Wonder Trade for the first time (this is still faulty remember to fix it)",
    2,
    CheckForeignPokemon()
)

achievement(
    "Wanna See Something Neat?",
    "Obtain HM05 in Gadech City",
    2,
    SimpleBitflag(HM05Event, GadechCity)
)

achievement(
    "Blobbo is Slepp",
    "Take the sleeping Blobbos in Gadech City",
    2,
    SimpleBitflag(BlobboSleeping, GadechCity)
)

achievement(
    "Now Go Kick Brock's Ass!",
    "Trade a Gutsifly for a Praunch in Gadech City",
    5,
    SimpleBitflag(GutsiflyTrade, GadechGutsifly)
)

achievement(
    "Showed Him Your Best",
    "Earn the Boulderbadge",
    5,
    SimpleBitflag(BoulderBadge, BoulderBadgeRoom)
)

achievement(
    "Disrespected [m]",
    "Earn the Boulderbadge after having obtained atleast one other badge",
    10,
    SimpleBitflag(BoulderBadge, BoulderBadgeRoom) && bitcount(DataPointer + BadgesOffset) > 1
)

achievement(
    "Broke Brock [m]",
    "Defeat Brock using only Rock type Pokémon",
    10,
    Monotype(RockType, BoulderBadgeRoom, Brock, GymLeaderStartMusic, GymBattleMusic)
)

achievement(
    "Showed Him Your Very Best [m]",
    "Defeat Brock in Set Mode and with 3 Pokémon or less",
    10,
    LimitedTeamQuantity(3, BoulderBadgeRoom, Brock)
)

achievement(
    "F",
    "Pay respects at the top of Mt. Moot",
    1,
    SimpleBitflag(PressedFMoot, MtMootTop)
)

TookFossil = bit1(EventPointer + 0x930c)
FossilFloor = 0x0301

achievement(
    "Spelunking",
    "Pick either the Horn or the Tooth fossil in Mt. Moot",
    2,
    SimpleBitflag(TookFossil, FossilFloor)
)

MtMootHItem1 = bit0(EventPointer + 0x9351)
MtMootHItem2 = bit1(EventPointer + 0x9351)
MtMootHItem3 = bit2(EventPointer + 0x9351)
MtMootHItem4 = bit3(EventPointer + 0x9351)
MtMootHItem5 = bit4(EventPointer + 0x9351)
MtMootHItem6 = bit5(EventPointer + 0x9351)
MtMootHItem7 = bit6(EventPointer + 0x9351)
MtMootHItem8 = bit7(EventPointer + 0x9350)

MtMootItem1 = bit0(EventPointer + 0x930b)
MtMootItem2 = bit1(EventPointer + 0x930b)
MtMootItem3 = bit2(EventPointer + 0x930b)
MtMootItem4 = bit3(EventPointer + 0x930b)
MtMootItem5 = bit7(EventPointer + 0x930b)

MtMootItem6 = bit0(EventPointer + 0x930c)

MtMootTrainer1 = bit0(EventPointer + 0x8f83)
MtMootTrainer2 = bit1(EventPointer + 0x8f83)
MtMootTrainer3 = bit2(EventPointer + 0x8f83)
MtMootTrainer4 = bit3(EventPointer + 0x8f83)

MtMootTrainer5 = bit4(EventPointer + 0x8f82)
MtMootTrainer6 = bit5(EventPointer + 0x8f82)
MtMootTrainer7 = bit6(EventPointer + 0x8f82)
MtMootTrainer8 = bit7(EventPointer + 0x8f82)

MtMootStuff = [
    MtMootHItem1 ,
MtMootHItem2 ,
MtMootHItem3 ,
MtMootHItem4 ,
MtMootHItem5 ,
MtMootHItem6 ,
MtMootHItem7 ,
MtMootHItem8 ,

MtMootItem1 ,
MtMootItem2 ,
MtMootItem3 ,
MtMootItem4 ,
MtMootItem5 ,

MtMootItem6 ,

MtMootTrainer1 ,
MtMootTrainer2 ,
MtMootTrainer3 ,
MtMootTrainer4 ,

MtMootTrainer5 ,
MtMootTrainer6 ,
MtMootTrainer7 ,
MtMootTrainer8 
]
MtMoot1 = 0x0101
MtMoot2 = 0x0201
MtMoot3 = 0x0301

achievement(
    "Once a Trainer, Always a Trainer.",
    "Defeat all trainers and collect all items in Mt. Moot",
    10,
    (MapID == MtMoot1 || MapID == MtMoot2 || MapID == MtMoot3) && FlagSum(MtMootStuff)
)
MachoBrace = bit2(EventPointer + 0x930c)
ActuvitCity = 0x0303

achievement(
    "No Pain No Gain!",
    "Obtain the Macho Brace in Actuvit City",
    1,
    SimpleBitflag(MachoBrace, ActuvitCity)
)

BicycleActuvit = byte(EventPointer + 0x9424)
BicycleMap = 0x0607
achievement(
    "Bad Deals! Bicycles That Break Down!!",
    "Obtain the Bicycle in a contest in Actuvit City",
    1,
    SimpleDeltaMem(0x01, 0x02, BicycleActuvit, BicycleMap)
)
JusticeBadgeRoom = 0x0507
achievement(
    "Forgiveness",
    "Earn the Justicebadge",
    5,
    SimpleBitflag(JusticeBadge, JusticeBadgeRoom)
)

WaterType = 0x0b
Tumblrita = 0x0020
achievement(
    "Aqua Fairness [m]",
    "Defeat Tumblrita using only Water type Pokémon",
    10,
    Monotype(WaterType, JusticeBadgeRoom, Tumblrita, GymLeaderStartMusic, GymBattleMusic)
)

achievement(
    "No Forgiveness! [m]",
    "Defeat Tumblrita in Set Mode and with 4 Pokémon or less",
    10,
    LimitedTeamQuantity(4, JusticeBadgeRoom, Tumblrita)
)
