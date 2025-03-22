// Pokemon Ruby Version
// #ID = 790


TM01 = bit1(0x02e9d3)
TM02 = bit0(0x02e9db)
TM03 = bit6(0x02ea55)
TM04 = bit5(0x02ea55)
TM05 = bit7(0x02e970)
TM06 = bit3(0x02e9dc)
TM07 = bit0(0x02e9df)
TM08 = bit0(0x02ea55)
TM09 = bit6(0x02e974)
TM11 = bit7(0x02e9da)
TM12 = byte(0x02eafc) // >= 5
TM18 = bit6(0x02e9dd)
TM19 = bit0(0x02e971)
TM22 = bit6(0x02e9dc)
TM23 = bit4(0x02e9d6)
TM26 = bit2(0x02e9dc)
TM28 = bit5(0x02e974)
TM30 = bit1(0x02e9dc)
TM31 = bit1(0x02e963)
TM34 = bit1(0x02ea55)
TM36 = bit6(0x02e970)
TM37 = bit0(0x02e9d2)
TM39 = bit7(0x02ea54)
TM40 = bit4(0x02ea55)
TM41 = bit1(0x02e975)
TM42 = bit3(0x02ea55)
TM44 = bit2(0x02e971)
TM45 = bit3(0x02e971)
TM46 = bit5(0x02e975)
TM47 = bit1(0x02e9bc)
TM48 = bit2(0x02e9da)
TM49 = bit4(0x02e974)
TM50 = bit2(0x02ea55)

OverWorldTms = [
TM01,
TM02,
TM03,
TM04,
TM05,
TM06,
TM07,
TM08,
TM09,
TM11,
TM18,
TM19,
TM22,
TM23,
TM26,
TM28,
TM30,
TM31,
TM34,
TM36,
TM37,
TM39,
TM40,
TM41,
TM42,
TM44,
TM45,
TM46,
TM47,
TM48,
TM49,
TM50
]

//This ones are buyable so need inventory check
//10, 13, 14, 15, 16, 17, 20, 21, 24, 25, 29, 32, 33, 35, 38, 43
//
TM10 = bit0(0x02e975)
TM10ID = 0x12a

TM13 = bit2(0x02e9dd)
TM13ID = 0x12d

TM24 = bit1(0x02e96e)
TM24ID = 0x138

TM27 = bit5(0x02e970)
TM27ID = 0x13b

TM29 = bit6(0x02e9db)
TM29ID = 0x13d

TM32 = bit6(0x02e9a2)
TM32ID = 0x140

TM43 = bit0(0x02e9cc)
TM43ID = 0x14b

TMBuyableFoundable = {
    "1": {"flag": TM10 , "id": TM10ID},
    "2": {"flag": TM13 , "id": TM13ID},
    "3": {"flag": TM24 , "id": TM24ID},
    "4": {"flag": TM27 , "id": TM27ID},
    "5": {"flag": TM29 , "id": TM29ID},
    "6": {"flag": TM32 , "id": TM32ID},
    "7": {"flag": TM43 , "id": TM43ID}   
}

TM14ID = 0x12e
TM15ID = 0x12f
TM16ID = 0x130
TM17ID = 0x131
TM20ID = 0x134
TM21ID = 0x135
TM25ID = 0x139
TM33ID = 0x141
TM35ID = 0x143
TM38ID = 0x146

TMBuyable = [
    TM14ID,
    TM15ID,
    TM16ID,
    TM17ID,
    TM20ID,
    TM21ID,
    TM25ID,
    TM33ID,
    TM35ID,
    TM38ID 
]

InventoryStart = 0x02dd74
InventoryEnd = 0x02de58

function inventoryCheck(ID){
    logic = always_false()
    for address in range(InventoryStart, InventoryEnd, 4){
        logic = logic || (word(address) == ID)
    }
    return logic
}

function TMLogic(flags){
    logic = []
    for flag in flags{
        array_push(logic, tally(1, flag == 1))
    }
    //Special case
    array_push(logic, tally(1, TM12 >= 5))
    //TMs that are both buyable and foundable.
    for TM in TMBuyableFoundable{
        array_push(logic, tally(1, TMBuyableFoundable[TM]["flag"] == 1 || inventoryCheck(TMBuyableFoundable[TM]["id"])))
    }
    //TMs that are just buyable
    for TM in TMBuyable{
        array_push(logic, tally(1, inventoryCheck(TM)))
    }
    
    return logic
}

achievement(
    title = "logic", 
    description = "hi",
    points = 0,
    trigger = measured(tally(50, TMLogic(OverWorldTms)))
)
