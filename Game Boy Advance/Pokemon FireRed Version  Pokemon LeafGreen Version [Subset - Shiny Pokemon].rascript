// Pokemon FireRed Version | Pokemon LeafGreen Version [Subset - Shiny Pokemon]
// #ID = 24875

globalPointer = tbyte(0x005008)

globalPointer2 = tbyte(0x00500c)
slotOffset = 0x50
trainerID = 0x00800a
PID = 0x00bdec

function logicLoop(startingIndex, slot){
    logic = 
        
    (bit(startingIndex, globalPointer + PID + (slotOffset * slot)
    ) 
    ^ bit(startingIndex + 16, globalPointer + PID + (slotOffset * slot)
    )) +
    
    (bit(startingIndex, globalPointer2 + trainerID //+ (slotOffset * slot)
    ) 
    ^ bit(startingIndex + 16, globalPointer2 + trainerID //+ (slotOffset * slot)
    ))
    != 1   
    
    return logic
}

function checkShiny(slot){

    startingIndex = 15
    logic = always_true()
 
    
    for i in range(startingIndex, 3, -1){
        logic = logic && logicLoop(i, slot)
    }
    
    logic = logic && prev(dword(globalPointer + PID + (slotOffset * slot))) == 0 && dword(globalPointer + PID + (slotOffset * slot)) != 0
    
    return logic
}

function checkSlots(quantity){
    logic = always_false()
    for i in range(0, quantity-1){
        logic = logic || checkShiny(i)
    }
    return logic
}

//achievement(
//    title = "test",
//    description = "test",
//    points = 0,
//    trigger = checkSlots(65)
//)


// Pokemon FireRed Version
// #ID = 515

PIDFirstByte = 0x02bc87
PIDSecondByte = 0x02bc86
PIDThirdByte = 0x02bc85
PIDFourthByte = 0x02bc84
EnemyID = byte(0x02bc3c)
Unown = 0xc9
BattleEnd = byte(0x02be8a)
Catched = 0x07
//num - divisor * (num / divisor

function getUnownLetter(){
    return
    (bit1(PIDFirstByte) * 128) +
    (bit0(PIDFirstByte) * 64) +
    (bit1(PIDSecondByte) * 32) +
    (bit0(PIDSecondByte) * 16) +
    (bit1(PIDThirdByte) * 8) +
    (bit0(PIDThirdByte) * 4) +
    (bit1(PIDFourthByte) * 2) +
    (bit0(PIDFourthByte) * 1) 
}

function checkLetter(letter){
    start = 255
    logic = always_false()
    for index in range(0, 255) {
        if(index % 28 == letter){
            logic = logic || getUnownLetter() == index
        }
    }
    return logic
}

function unknownCheevo(){
    logic = []
    for index in range(0,27){
        achievement(
            "Unown " + index,
            "hi",
            0,
            checkLetter(index)
        )
    }
    
}

unknownCheevo()