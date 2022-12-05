// Harvest Moon GB
// #ID = 5151

TotalShipments = word(0x00b93f)//0x00b93f Total Shipments (16-bits)

Genre = byte(0x00b8ec)
DayOfSeason = byte(0x00b883)
Year = byte(0x00b885)
Season = byte(0x00b884)
MapID = byte(0x00cb50)
Mascot = byte(0x00b8db)
Lumber = word(0x00b938)

GameState = byte(0x00c0a7)
StartScreen = 0x11
Farm = 0x01
AnimalShed = 0x03
BirdShed = 0x04
InGame = byte(0x00cb77) == 0xff
Name = byte(0x00b8f4)
Gold = tbyte(0x00b8ef)
TilledSoil = word(0x00b90f)
Happiness = byte(0x00b8f2)
//Seeds in shed
GrassSeeds = 0x00b8b4
BroccoliSeeds = 0x00b8bc
//Tools
GoldenSickle = byte(0x00b8a7)
GoldenHoe = byte(0x00b8a8)
GoldenHammer = byte(0x00b8a9)
GoldenAxe = byte(0x00b8aa)
Sprinkler = byte(0x00b8af)
Bell = byte(0x00b8b3)
FishingRod = byte(0x00b8bf)
Umbrella = byte(0x00b8be)
Pickaxe = byte(0x00b8bd)

//House
HouseLevel = byte(0x00b911)
BigHouse = 0x02
//Animals
FirstCow = 0x00b949
SecondCow = 0x00b95f
ThirdCow = 0x00b975
FourthCow = 0x00b98b
FirstChicken = 0x00b9a7
SecondChicken = 0x00b9b3
ThirdChicken = 0x00b9bf
FourthChicken = 0x00b9cb

FirstCowHappy = byte(0x00b94f)
SecondCowHappy = byte(0x00b965)
ThirdCowHappy = byte(0x00b97b)
FourthCowHappy = byte(0x00b991)
HorseState = byte(0x00b8ea)
WithSaddles = 0x03

Mole = byte(0x00cbe9)
//Machines
ButterMaker = byte(0x00b943)
CheeseMaker = byte(0x00b944)

//Events
RainMoney = byte(0x00b8ff)

PowerBerries = byte(0x00b904)
MissingBird = byte(0x00b890)
FamilyHeirloom = byte(0x00b891)
CurrentEvent = byte(0x00b88c)
JuiceOne = 0x05
JuiceTwo = 0x08
HorseEvent = 0x01
//Map ID
MapID = byte(0x00cb50)
Farm = 0x01

Hours = byte(0x00b882)

//Used because RAVBA is epic and likes to flicker to random numbers in the farm.
function FlickerProtection(){
    logic = 
    Genre == prev(Genre) &&
    Mascot == prev(Mascot) &&
    Name == prev(Name)
    return logic
}

function DeltaToMem(address, objective, type){
    logic = always_true()
    if(objective != 1){
        if type == "="{
            logic =
            logic &&
            measured(address == objective) &&
            prev(address) == objective-1     
        }else if type == "<"{
            logic =
            logic && 
            measured(address == objective) &&
            prev(address) < objective
        }else if type == "<>="{
            logic =
            logic && 
            measured(address >= objective) &&
            prev(address) < objective
        }
    }else if (objective == 1){
        if type == "="{
            logic =
            logic &&
            (address == objective) &&
            prev(address) == objective-1     
        }else if type == "<"{
            logic =
            logic && 
            (address == objective) &&
            prev(address) < objective
        }else if type == "<>="{
            logic =
            logic && 
            (address >= objective) &&
            prev(address) < objective
        }
    }
    return logic
}


function ByteRangeCount(RangeStart, RangeEnd, objective){
    count = 0
    countPrev = 0
    for address in range(RangeStart, RangeEnd){
        count = count + byte(address)
        countPrev = countPrev + prev(byte(address))
    }
    logic = measured(count == objective)
    logic = logic && countPrev == objective -1
    return logic
}

function CowBitSum(cow){
    logic = bit1(cow) + bit2(cow) - bit7(cow) - bit7(cow) 
    return logic
}

function CowBitSumDelta(cow){
    logic = prev(bit1(cow)) + prev(bit2(cow)) - prev(bit7(cow)) - prev(bit7(cow)) 
    return logic
}

function CowCheck(objective){
    logic =
    CowBitSum(FirstCow) +
    CowBitSum(SecondCow) +
    CowBitSum(ThirdCow) +
    CowBitSum(FourthCow) ==
    objective &&
    CowBitSumDelta(FirstCow) +
    CowBitSumDelta(SecondCow) +
    CowBitSumDelta(ThirdCow) +
    CowBitSumDelta(FourthCow) ==
    0
    return logic
}

function CowCheckMeasured(objective){
    logic =
    measured(CowBitSum(FirstCow) +
    CowBitSum(SecondCow) +
    CowBitSum(ThirdCow) +
    CowBitSum(FourthCow) ==
    objective) &&
    CowBitSumDelta(FirstCow) +
    CowBitSumDelta(SecondCow) +
    CowBitSumDelta(ThirdCow) +
    CowBitSumDelta(FourthCow) <=
    3
    return logic
}

function ChickenBitSum(chicken){
    logic = bit1(chicken) - bit7(chicken) 
    return logic
}

function ChickenBitSumDelta(chicken){
    logic = prev(bit1(chicken)) - prev(bit7(chicken)) 
    return logic
}

function ChickenCheck(objective){
    logic =
    ChickenBitSum(FirstChicken) +
    ChickenBitSum(SecondChicken) +
    ChickenBitSum(ThirdChicken) +
    ChickenBitSum(FourthChicken) ==
    objective &&
    ChickenBitSumDelta(FirstChicken) +
    ChickenBitSumDelta(SecondChicken) +
    ChickenBitSumDelta(ThirdChicken) +
    ChickenBitSumDelta(FourthChicken) <=
    0 
    return logic
}

function ChickenCheckMeasured(objective){
    logic =
    measured(ChickenBitSum(FirstChicken) +
    ChickenBitSum(SecondChicken) +
    ChickenBitSum(ThirdChicken) +
    ChickenBitSum(FourthChicken) ==
    objective) &&
    ChickenBitSumDelta(FirstChicken) +
    ChickenBitSumDelta(SecondChicken) +
    ChickenBitSumDelta(ThirdChicken) +
    ChickenBitSumDelta(FourthChicken) <=
    3
    return logic
}


achievement(
    title = "It's A Start", points = 3,
    description = "Ship 40 farm products.",
    id = 17664, badge = "17118", published = "23/11/2014 22:52:06", modified = "18/7/2020 02:00:20",
    trigger = FlickerProtection() && InGame && DeltaToMem(TotalShipments, 40, "=")
)

achievement(
    title = "It's A Living", points = 5,
    description = "Ship 200 farm products.",
    id = 17665, badge = "17119", published = "23/11/2014 22:52:07", modified = "18/7/2020 02:00:11",
    trigger = FlickerProtection() && InGame && DeltaToMem(TotalShipments, 200, "=")
)

achievement(
    title = "It's A Business", points = 10,
    description = "Ship 4500 farm products.",
    trigger = FlickerProtection() && InGame && DeltaToMem(TotalShipments, 4500, "=")
)

achievement(
    title = "Seed Collector", points = 10,
    description = "Have at least 1 of every type of crop seed in your shed.",
    id = 17666, badge = "17117", published = "23/11/2014 22:52:09", modified = "18/7/2020 02:00:12",
    trigger = FlickerProtection() && InGame && ByteRangeCount(GrassSeeds, BroccoliSeeds, 9)
)

achievement(
    title = "Golden Overflow", points = 10,
    description = "Have atleast 65536 Gold.",
    trigger = FlickerProtection() && InGame && DeltaToMem(Gold, 65536, "<>=")
)

achievement(
    title = "Leveling the Field", points = 10,
    description = "Plow 1600 squares of land.",
    trigger = FlickerProtection() && InGame && DeltaToMem(TilledSoil, 1600, "<>=")
)

achievement(
    title = "Full of Cheerfulness", points = 10,
    description = "Have 250 points of happiness.",
    trigger = FlickerProtection() && InGame && DeltaToMem(Happiness, 250, "<>=")
)

achievement(
    title = "Hardcore Hoe", points = 10,
    description = "Acquire the Super Hoe.",
    id = 17668, badge = "17127", published = "24/11/2014 01:09:01", modified = "14/11/2018 23:56:29",
    trigger = FlickerProtection() && InGame && DeltaToMem(GoldenHoe, 1, "=")
)

achievement(
    title = "Super Sickle", points = 10,
    description = "Acquire the Super Sickle.",
    id = 17669, badge = "17128", published = "24/11/2014 01:09:08", modified = "14/11/2018 23:56:31",
    trigger = FlickerProtection() && InGame && DeltaToMem(GoldenSickle, 1, "=")
)

achievement(
    title = "Heavy Hammer", points = 10,
    description = "Acquire the Super Hammer.",
    id = 17670, badge = "17130", published = "24/11/2014 01:09:12", modified = "14/11/2018 23:56:33",
    trigger = FlickerProtection() && InGame && DeltaToMem(GoldenHammer, 1, "=")
)

achievement(
    title = "Awesome Axe", points = 10,
    description = "Acquire the Super Axe.",
    id = 17671, badge = "17131", published = "24/11/2014 01:09:13", modified = "14/11/2018 23:56:35",
    trigger = FlickerProtection() && InGame && DeltaToMem(GoldenAxe, 1, "=")
)


achievement(
    title = "No More Refills", points = 10,
    description = "Acquire the Sprinkler.",
    id = 17680, badge = "17142", published = "24/11/2014 02:49:47", modified = "14/11/2018 23:56:49",
    trigger = FlickerProtection() && InGame && DeltaToMem(Sprinkler, 1, "=")
)

achievement(
    title = "Super Deluxe Log House", points = 10,
    description = "Fully upgrade your house.",
    id = 17673, badge = "17133", published = "24/11/2014 01:18:54", modified = "18/7/2020 02:00:17",
    trigger = FlickerProtection() && InGame && DeltaToMem(HouseLevel, BigHouse, "=")
)

achievement(
    title = "Starting The Farm Family", points = 3,
    description = "Buy your first cow.",
    id = 17674, badge = "17138", published = "24/11/2014 01:54:55", modified = "18/7/2020 02:00:19",
    trigger = FlickerProtection() && InGame && DeltaToMem(Bell, 1, "=")
)

achievement(
    title = "Milkman", points = 5,
    description = "Have 4 adult cows.",
    trigger = FlickerProtection() && InGame && CowCheckMeasured(4)
)

achievement(
    title = "Feathered Friend", points = 3,
    description = "Buy your first chicken.",
    trigger = FlickerProtection() && InGame && ChickenCheck(1)
)

achievement(
    title = "Egg Mass Producing", points = 5,
    description = "Have 4 adult chickens.",
    trigger = FlickerProtection() && InGame && ChickenCheckMeasured(4)
)

achievement(
    title = "Lucky Cow", points = 10,
    description = "Max any of your cow's affection.",
    trigger = FlickerProtection() && InGame && 
    (
    measured(FirstCowHappy == 255) && prev(FirstCowHappy) < 255 ||
    measured(SecondCowHappy == 255) && prev(SecondCowHappy) < 255 ||
    measured(ThirdCowHappy == 255) && prev(ThirdCowHappy) < 255 ||
    measured(FourthCowHappy == 255) && prev(FourthCowHappy) < 255
    )
)

achievement(
    title = "Daily Diary", points = 10,
    description = "Buy the cheese and butter makers.",
    trigger = FlickerProtection() && InGame && 
    measured(CheeseMaker + ButterMaker == 2) &&
    (prev(CheeseMaker) + prev(ButterMaker) == 1)
)

achievement(
    title = "Equine Basquet", points = 3,
    description = "Buy saddlebags for your horse.",
    trigger = FlickerProtection() && InGame && HorseState == WithSaddles && prev(HorseState) < WithSaddles
)

achievement(
    title = "I'll Catch You Later", points = 2,
    description = "Find a mole while digging.",
    trigger = FlickerProtection() && InGame && Mole == 0 && prev(Mole) == 1
)

achievement(
    title = "Rainy Day Money", points = 1,
    description = "Find Grandpa's secret stash.",
    trigger = FlickerProtection() && InGame && DeltaToMem(RainMoney, 1, "=")
)

achievement(
    title = "Power Berry", points = 3,
    description = "Eat your first Power Berry.",
    id = 17678, badge = "17140", published = "24/11/2014 02:41:05", modified = "18/7/2020 02:00:21",
    trigger = FlickerProtection() && InGame && DeltaToMem(PowerBerries, 1, "=")
)

achievement(
    title = "I'm Stuffed!", points = 5,
    description = "Eat 6 Power Berries.",
    trigger = FlickerProtection() && InGame && DeltaToMem(PowerBerries, 6, "=")
)


achievement(
    title = "Secret Garden", points = 25,
    description = "Eat all the Power Berries.",
    id = 17679, badge = "17141", published = "24/11/2014 02:41:09", modified = "14/11/2018 23:56:48",
    trigger = FlickerProtection() && InGame && DeltaToMem(PowerBerries, 10, "=")
)

achievement(
    title = "P-Chan", points = 3,
    description = "Find Ellen's missing bird.",
    id = 17683, badge = "17145", published = "24/11/2014 03:16:47", modified = "22/11/2020 03:39:19",
    trigger = FlickerProtection() && InGame && MapID == Farm && Hours != 18 && trigger_when(MissingBird == 0) && prev(MissingBird) == 1
)

achievement(
    title = "New Concoction", points = 3,
    description = "Try out Eve's new juice.",
    id = 17684, badge = "17146", published = "24/11/2014 03:20:05", modified = "22/11/2020 03:56:26",
    trigger = FlickerProtection() && InGame && MapID == Farm && 
    (CurrentEvent == 0 && (prev(CurrentEvent) == JuiceOne) || CurrentEvent == 0 && (prev(CurrentEvent) == JuiceTwo))
)

achievement(
    title = "The Weather-Vane", points = 3,
    description = "Find Anne's family heirloom.",
    id = 17685, badge = "17147", published = "24/11/2014 03:23:11", modified = "22/11/2020 04:18:00",
    trigger = FlickerProtection() && InGame && MapID == Farm && Hours != 18 && trigger_when(FamilyHeirloom == 0) && prev(FamilyHeirloom) == 1
)

achievement(
    title = "Partners For Life", points = 3,
    description = "Get a horse.",
    id = 17686, badge = "17148", published = "24/11/2014 03:28:33", modified = "14/11/2018 23:56:58",
    trigger = FlickerProtection() && InGame && prev(MapID) == Farm && CurrentEvent == 0 && prev(CurrentEvent) == HorseEvent
)

FirstNameLetter = byte(0x00b8f4)

achievement(
    title = "Harvest Code", points = 0,
    description = "Name yourself with a starting symbol to be able to grow all crops.",
    trigger = FlickerProtection() && FirstNameLetter >= 0x3e && prev(FirstNameLetter) < 0x3e
)

Picnic = 0x04

achievement(
    title = "Garden Party", points = 3,
    description = "Spend a picnic with the girls.",
    trigger = FlickerProtection() && InGame && CurrentEvent == 0 && prev(CurrentEvent) == Picnic
)

EggGirl = 0x10

achievement(
    title = "What a Bargain!", points = 3,
    description = "Have a little girl ask money for an egg back.",
    trigger = FlickerProtection() && InGame && CurrentEvent == 0 && prev(CurrentEvent) == EggGirl
)

PicnicPlace = 0x0f

achievement(
    title = "A Hot Day", points = 3,
    description = "Spend a summer night with the girls.",
    trigger = FlickerProtection() && InGame && DayOfSeason == 0x13 && Season == 0x01 && MapID == PicnicPlace && prev(MapID) != PicnicPlace
)

achievement(
    title = "Moon Light", points = 3,
    description = "See the moon with the girls.",
    trigger = FlickerProtection() && InGame && DayOfSeason == 0x17 && Season == 0x03 && MapID == PicnicPlace && prev(MapID) != PicnicPlace
)

UndergroundToolShed = 0x08
FindNina = byte(0x00b899)
Started = 0x01
Finished = 0x03

achievement(
    title = "Dancing with the Sprites", points = 3,
    description = "Find Nina when she gets lost.",
    trigger = FlickerProtection() && InGame && trigger_when(prev(MapID) == UndergroundToolShed) && prev(FindNina) == Started && trigger_when(FindNina == Finished)
)

MariaInHouse = byte(0x00b89a)
FarmHouse = 0x02

achievement(
    title = "Loveless Marriage", points = 3,
    description = "Let Maria stay at your house for some days.",
    trigger = FlickerProtection() && InGame && trigger_when(MapID == FarmHouse && MariaInHouse == 0) && prev(MariaInHouse) == 1
)


achievement(
    title = "Another Form Of Funds", points = 10,
    description = "Get the Fishing Rod by being a Master Rancher for the 1st time.",
    id = 17688, badge = "17151", published = "24/11/2014 04:06:16", modified = "18/7/2020 02:00:25",
    trigger = FlickerProtection() && InGame && DeltaToMem(FishingRod, 1, "=")
)

achievement(
    title = "Minecraft", points = 10,
    description = "Get the Pick-Axe by being a Master Rancher for the 2nd time.",
    id = 17690, badge = "17153", published = "24/11/2014 04:14:05", modified = "18/7/2020 02:00:27",
    trigger = FlickerProtection() && InGame && DeltaToMem(Pickaxe, 1, "=")
)

achievement(
    title = "Manipulate The Weather", points = 25,
    description = "Get the Umbrella by being a Master Rancher for the 3rd time.",
    id = 17689, badge = "17152", published = "24/11/2014 04:14:02", modified = "18/7/2020 02:00:26",
    trigger = FlickerProtection() && InGame && DeltaToMem(Umbrella, 1, "=")
)

achievement(
    title = "Carpenter's Challenge", points = 25,
    description = "Get the Super Deluxe Log House before Year 2.",
    id = 17675, badge = "17135", published = "24/11/2014 01:55:08", modified = "14/11/2018 23:57:05",
    trigger = FlickerProtection() && InGame && DeltaToMem(HouseLevel, BigHouse, "=") && Year < 1
)

Fodder = word(0x00b93a)

achievement(
    title = "Nina's Challenge", points = 25,
    description = "Cut and store at least 400 bales of fodder before Fall of Year 1.",
    id = 17676, badge = "17136", published = "24/11/2014 01:55:10", modified = "27/7/2022 00:26:03",
    trigger = FlickerProtection() && InGame && DeltaToMem(Fodder, 400, "<>=") && Year < 1 && Season < 2
)

achievement(
    title = "Eve's Challenge", points = 25,
    description = "Get 5 Power Berries before Winter of Year 2.",
    id = 17681, badge = "17143", published = "24/11/2014 03:00:39", modified = "14/11/2018 23:57:08",
    trigger = FlickerProtection() && InGame && DeltaToMem(PowerBerries, 5, "=") && 
    (Year < 1 || 
    Year < 2 && Season < 3)
)

achievement(
    title = "Town Challenge", points = 25,
    description = "Save up 25000 Gold before Year 3.",
    id = 17687, badge = "17149", published = "24/11/2014 03:35:48", modified = "14/11/2018 23:57:09",
    trigger = FlickerProtection() && InGame && DeltaToMem(Gold, 25000, "<>=") && Year < 2
)


achievement(
    title = "Maria's Challenge", points = 25,
    description = "Get 150 points of happiness before Year 2.",
    trigger = FlickerProtection() && InGame && DeltaToMem(Happiness, 150, "<>=") && Year < 1
)

FirstSlot = byte(0x00b8f8)
SecondSlot = byte(0x00b8f9)
SuperSickle = 0x13 
SuperHoe = 0x14
SuperAx = 0x15
SuperHammer = 0x16

function CheckTools(item){
    logic = always_false()
    for number in range(0,4){
        logic = logic || FirstSlot == item || SecondSlot == item
        if item == SuperSickle{
            logic = logic || GoldenSickle == 1 
        }
        
        if item == SuperHoe{
            logic = logic || GoldenHoe == 1 
        }
        
        if item == SuperAx{
            logic = logic || GoldenAxe == 1 
        }
        
        if item == SuperHammer{
            logic = logic || GoldenHammer == 1 
        }
        return logic
    }
    
}

function CheckToolsPrev(item){
    logic = always_false()
    for number in range(0,4){
        logic = logic || prev(FirstSlot) == item || prev(SecondSlot) == item
        if item == SuperSickle{
            logic = logic || prev(GoldenSickle) == 1 
        }
        
        if item == SuperHoe{
            logic = logic || prev(GoldenHoe) == 1 
        }
        
        if item == SuperAx{
            logic = logic || prev(GoldenAxe) == 1 
        }
        
        if item == SuperHammer{
            logic = logic || prev(GoldenHammer) == 1 
        }
        return logic
    }
    
}

achievement(
    title = "Ann's Challenge", points = 25,
    description = "Have all the golden tools before Year 2.",
    trigger = FlickerProtection() && InGame && Year < 1 && 
    measured(tally(4, 
    tally(1, CheckTools(SuperSickle)),
    tally(1, CheckTools(SuperHoe)),
    tally(1, CheckTools(SuperAx)),
    tally(1, CheckTools(SuperHammer))
    )) &&
    never(tally(4, 
    tally(1, CheckToolsPrev(SuperSickle)),
    tally(1, CheckToolsPrev(SuperHoe)),
    tally(1, CheckToolsPrev(SuperAx)),
    tally(1, CheckToolsPrev(SuperHammer))
    ))
    
)


achievement(
    title = "Ellen's Challenge", points = 25,
    description = "Sell 1500 farm products before Year 2.",
    trigger = FlickerProtection() && InGame && DeltaToMem(TotalShipments, 1500, "=") && Year < 1
)
















