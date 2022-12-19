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
        array_push(logic, once(checkLetter(index)))
    }
    return measured(tally(28, logic))
}

achievement(
    title = "Thanks GameFreak",
    description = "Catch all the Unown forms in a single session",
    points = 0,
    trigger = unknownCheevo() && unless(EnemyID != Unown || BattleEnd != Catched)
)