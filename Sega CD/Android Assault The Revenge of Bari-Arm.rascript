// Android Assault: The Revenge of Bari-Arm
// #ID = 16040

// $E610: [16-bit] Current Stage
// $E612: [16 bit] Score upper bits
ScoreUpper1 = 0xE612
ScoreUpper2 = 0xE613
ScoreLower1 = 0xE614
ScoreLower2 = 0xE615
// $E614: [16 bit] Score lower bits
// $E61A: [8-bit] Game Level
//        0x00 = Easy
//        0x01 = Normal
//        0x02 = Hard
//        0x03 = Mania
GameLevel = byte(0xE61A)
Easy = 0x00
Normal = 0x01
Hard = 0x02
Mania = 0x03
// $E61E: [16-bit] Current Lifes
CurrentLifes = word(0xE61E)
// $E620: [8-bit] Current Weapon
//        0x00 = Thunder Cracker (Orange)
//        0x01 = Burning Wave (Green)
//        0x02 = Chase Cannon (Red)
//        0x03 = Satellite Bombs (Blue)
CurrentWeapon = byte(0xE620)
BurningWave = 0x01
ChaseCannon = 0x02
SatelliteBomb = 0x03
// $E621: [8-bit] Weapon Level - Max = 0x02
//        When on 0x02, picking another level up gives you the mecha transformation (Extra hit)
WeaponLevel = byte(0xE621)
// $E624: [N-bit] Cheat Mode Flags
//        Bit 0 = Immortal ON
NotImmortal = bit0(0xE624) == false
// $E62E: [8-bit] Current credits
Credits = byte(0xE62E)

// $E63A: [16-bit] Starting lives (Stocks) - Max = 0x0005
StartingLives = word(0xE63A)
// $E63C: [16-bit] Starting continues (Credits) - Max = 0x0005
StartingContinues = word(0xE63C)
// $E6E0: [N-bit] Cheat mode flag
//        Bit 0 = Cheat Mode activated
CheatNonActivated = bit0(0xE6E0) == 0
// $E6E2: [N-bit] Mecha transformation
//        Bit 1 = Mecha transformed
MechaFlag = bit1(0xE6E2)
// $E700: [8-bit] Screen to load ID (It stays so works as screen ID)
//        0x01 = Initial cutscene part 1
//        0x02 = Title Screen
//        0x03 = Options
//        0x05 = Initial cutscene part 2
//        0x06 = Stage Clear Screen
//        0x09 = Continue Menu/Ranking Registration
//        0x0a = Stage 1 "Ganymede"
//        0x0b = Stage 3 "Zeus Fleet"
//        0x0c = Stage 3 Part 2
//        0x0d = Stage 4 "Olympus"
//        0x0e = Stage 5 " Moon Base"
//        0x0f = Stage 6 "Blue Wind"
//        0x10 = Stage 7 "Bay Side City"
//        0x11 = Stage 2 "Gravity Pagooda"
//        0x12 = Ending Cutscene
//        0x17 = Best Ranking
ScreenID = byte(0xE700)
function ScreenID() => byte(0xE700)
TitleScreen = 0x02
InitialCutscene1 = 0x01
InitialCutscene2 = 0x05
StageClear = 0x06
Stage1 = 0x0a
Stage3 = 0x0c
Stage4 = 0x0d
Stage5 = 0x0e
Stage6 = 0x0f
Stage7 = 0x10
Stage2 = 0x11
Ending = 0x12
ContinueScreen = 0x09
// $E701: [N-bit]
//        Bit 0 = Load screen on Screen ID buffer
LoadScreenBuffer = bit0(0xE701)
// $E74C: [8-bit] Pause Indication
//        0x00 = Paused
//        0x10 = Not Paused
//        *For 1 Frame
//        Paused => Playing = 0x04
//        Playing => Paused = 0x14
PauseIndication = byte(0xE74C)
Paused = 0x00
NotPaused = 0x10
PausedToPlaying = 0x04
PlayingToPaused = 0x14
//0x00e610 [16-bit] Current Stage
CurrentStage = word(0x00e610)

ProgressionData = {
"Stage1": {"title": "Ganymede", "description": "Beat Stage 1", "points": 5, "value": Stage1, "pointsDamageless": 10},
"Stage2": {"title": "Gravity Pagoda", "description": "Beat Stage 2", "points": 5, "value": Stage2, "pointsDamageless": 10},
"Stage3": {"title": "Zeus Fleet", "description": "Beat Stage 3", "points": 10, "value": Stage3, "pointsDamageless": 10},
"Stage4": {"title": "Olympus", "description": "Beat Stage 4", "points": 10, "value": Stage4, "pointsDamageless": 10},
"Stage5": {"title": "Moon Base", "description": "Beat Stage 5", "points": 10, "value": Stage5, "pointsDamageless": 25},
"Stage6": {"title": "Blue Wind", "description": "Beat Stage 6", "points": 10, "value": Stage6, "pointsDamageless": 25},
}

RomanNumerals = {
    1: "I",
    2: "II",
    3: "III",
    4: "IV",
    5: "V",
    6: "VI",
    7: "VII"
}

function DeltaMem(address, delta, mem){
    logic = address == mem && prev(address) == delta
    return logic
}

function DeltaMemTrigger(address, delta, mem){
    logic = trigger_when(address == mem) && prev(address) == delta
    return logic
}

function CurrentPoints(points){
    currentPoints = 0
    currentPotency = 1
    
    currentPoints = currentPoints + bit0(ScoreLower1)
    currentPoints = currentPoints + bit1(ScoreLower1) * 2
    currentPoints = currentPoints + bit2(ScoreLower1) * 4
    currentPoints = currentPoints + bit3(ScoreLower1) * 8
    currentPoints = currentPoints + bit4(ScoreLower1) * 16
    currentPoints = currentPoints + bit5(ScoreLower1) * 32
    currentPoints = currentPoints + bit6(ScoreLower1) * 64
    currentPoints = currentPoints + bit7(ScoreLower1) * 128
    
    currentPoints = currentPoints + bit0(ScoreLower2) * 256
    currentPoints = currentPoints + bit1(ScoreLower2) * 512
    currentPoints = currentPoints + bit2(ScoreLower2) * 1024
    currentPoints = currentPoints + bit3(ScoreLower2) * 2048
    currentPoints = currentPoints + bit4(ScoreLower2) * 4096
    currentPoints = currentPoints + bit5(ScoreLower2) * 8192
    currentPoints = currentPoints + bit6(ScoreLower2) * 16384
    currentPoints = currentPoints + bit7(ScoreLower2) * 32768
    
    currentPoints = currentPoints + bit0(ScoreUpper1) * 65536
    currentPoints = currentPoints + bit1(ScoreUpper1) * 131072
    currentPoints = currentPoints + bit2(ScoreUpper1) * 262144
    currentPoints = currentPoints + bit3(ScoreUpper1) * 524288
    currentPoints = currentPoints + bit4(ScoreUpper1) * 1048576
    currentPoints = currentPoints + bit5(ScoreUpper1) * 2097152
    currentPoints = currentPoints + bit6(ScoreUpper1) * 4194304
    currentPoints = currentPoints + bit7(ScoreUpper1) * 8388608
    
    currentPoints = currentPoints + bit0(ScoreUpper2) * 16777216
    currentPoints = currentPoints + bit1(ScoreUpper2) * 33554432
    currentPoints = currentPoints + bit2(ScoreUpper2) * 67108864
    currentPoints = currentPoints + bit3(ScoreUpper2) * 134217728
    currentPoints = currentPoints + bit4(ScoreUpper2) * 268435456
    currentPoints = currentPoints + bit5(ScoreUpper2) * 536870912
    currentPoints = currentPoints + bit6(ScoreUpper2) * 1073741824
    currentPoints = currentPoints + bit7(ScoreUpper2) * 2147483648
    
    logic = measured(currentPoints >= points) && prev(currentPoints) < points
    return logic
}

function Points(){
    currentPoints = 0
    currentPotency = 1
    
    currentPoints = currentPoints + bit0(ScoreLower1)
    currentPoints = currentPoints + bit1(ScoreLower1) * 2
    currentPoints = currentPoints + bit2(ScoreLower1) * 4
    currentPoints = currentPoints + bit3(ScoreLower1) * 8
    currentPoints = currentPoints + bit4(ScoreLower1) * 16
    currentPoints = currentPoints + bit5(ScoreLower1) * 32
    currentPoints = currentPoints + bit6(ScoreLower1) * 64
    currentPoints = currentPoints + bit7(ScoreLower1) * 128
    
    currentPoints = currentPoints + bit0(ScoreLower2) * 256
    currentPoints = currentPoints + bit1(ScoreLower2) * 512
    currentPoints = currentPoints + bit2(ScoreLower2) * 1024
    currentPoints = currentPoints + bit3(ScoreLower2) * 2048
    currentPoints = currentPoints + bit4(ScoreLower2) * 4096
    currentPoints = currentPoints + bit5(ScoreLower2) * 8192
    currentPoints = currentPoints + bit6(ScoreLower2) * 16384
    currentPoints = currentPoints + bit7(ScoreLower2) * 32768
    
    currentPoints = currentPoints + bit0(ScoreUpper1) * 65536
    currentPoints = currentPoints + bit1(ScoreUpper1) * 131072
    currentPoints = currentPoints + bit2(ScoreUpper1) * 262144
    currentPoints = currentPoints + bit3(ScoreUpper1) * 524288
    currentPoints = currentPoints + bit4(ScoreUpper1) * 1048576
    currentPoints = currentPoints + bit5(ScoreUpper1) * 2097152
    currentPoints = currentPoints + bit6(ScoreUpper1) * 4194304
    currentPoints = currentPoints + bit7(ScoreUpper1) * 8388608
    
    currentPoints = currentPoints + bit0(ScoreUpper2) * 16777216
    currentPoints = currentPoints + bit1(ScoreUpper2) * 33554432
    currentPoints = currentPoints + bit2(ScoreUpper2) * 67108864
    currentPoints = currentPoints + bit3(ScoreUpper2) * 134217728
    currentPoints = currentPoints + bit4(ScoreUpper2) * 268435456
    currentPoints = currentPoints + bit5(ScoreUpper2) * 536870912
    currentPoints = currentPoints + bit6(ScoreUpper2) * 1073741824
    currentPoints = currentPoints + bit7(ScoreUpper2) * 2147483648
    return currentPoints
}

EndingLogic =  DeltaMem(ScreenID, Stage7, Ending)
EndingLogicTrigger =  DeltaMemTrigger(ScreenID, Stage7, Ending)

//Progression
for cheevo in ProgressionData{
    achievement(
        title = ProgressionData[cheevo]["title"],
        description = ProgressionData[cheevo]["description"],
        points = ProgressionData[cheevo]["points"],
        trigger = DeltaMem(ScreenID, ProgressionData[cheevo]["value"], StageClear) && CheatNonActivated
    )
}

achievement(
    title = "Bay Side City",
    description = "Beat Stage 7",
    points = 25,
    trigger = EndingLogic && CheatNonActivated
)

//Deathless Stages
counter = 0
for cheevo in ProgressionData{
    counter = counter + 1
    achievement(
        title = "Android Revenger " + RomanNumerals[counter],
        description = ProgressionData[cheevo]["description"] + " without dying [Level Select OK]",
        points = ProgressionData[cheevo]["pointsDamageless"],
        trigger = DeltaMemTrigger(ScreenID, ProgressionData[cheevo]["value"], StageClear) && NotImmortal && disable_when(CurrentLifes < prev(CurrentLifes) && LoadScreenBuffer == false, ScreenID == ContinueScreen || ScreenID == TitleScreen || CurrentStage != prev(CurrentStage)) 
    )
}

achievement(
    title = "Android Revenger VII",
    description = "Beat Stage 7 without dying [Level Select OK]",
    points = 25,
    trigger =   EndingLogicTrigger && NotImmortal && PauseIndication != PlayingToPaused && disable_when(CurrentLifes < prev(CurrentLifes) && LoadScreenBuffer == false, ScreenID == ContinueScreen || ScreenID == TitleScreen || CurrentStage != prev(CurrentStage)) 
)

//Beat in mania
achievement(
    title = "Mega Maniac!",
    description = "Beat the game on Mania game level",
    points = 50,
    trigger = EndingLogic && CheatNonActivated && GameLevel == Mania
)

//Beat in 1 credit
achievement(
    title = "Good Ol' 1CC",
    description = "Beat the game with only 1 credit set",
    points = 50,
    trigger = EndingLogicTrigger && CheatNonActivated && StartingContinues == 1
)

//Score Cheevos
achievement(
    title = "Mecha Scorer I",
    description = "Reach 100.000 points",
    points = 3,
    trigger = CurrentPoints(10000) && CheatNonActivated
)

achievement(
    title = "Mecha Scorer II",
    description = "Reach 1.000.000 points",
    points = 5,
    trigger = CurrentPoints(100000) && CheatNonActivated
)

achievement(
    title = "Mecha Scorer III",
    description = "Reach 3.000.000 points",
    points = 10,
    trigger = CurrentPoints(300000) && CheatNonActivated
)

achievement(
    title = "Mecha Scorer IV",
    description = "Reach 5.000.000 points",
    points = 25,
    trigger = CurrentPoints(500000) && CheatNonActivated
)
//Misc Cheevos
achievement(
    title = "Burning Wave",
    description = "Get the green transformer module",
    points = 1,
    trigger = CurrentWeapon == BurningWave && prev(CurrentWeapon) != BurningWave && CheatNonActivated
)

achievement(
    title = "Chase Cannon",
    description = "Get the red transformer module",
    points = 1,
    trigger = CurrentWeapon == ChaseCannon && prev(CurrentWeapon) != ChaseCannon && CheatNonActivated
)

achievement(
    title = "Satellite Bombs",
    description = "Get the blue transformer module",
    points = 1,
    trigger = CurrentWeapon == SatelliteBomb && prev(CurrentWeapon) != SatelliteBomb && CheatNonActivated
)

achievement(
    title = "Capacity Ceiling",
    description = "Max your weapon's power",
    points = 2,
    trigger = WeaponLevel == 0x02 && prev(WeaponLevel) == 0x01 && CheatNonActivated
)

achievement(
    title = "Mobile Suit Gundam",
    description = "Become a mecha for the first time",
    points = 2,
    trigger = MechaFlag == true && prev(MechaFlag) == false && CheatNonActivated
)

leaderboard("Top Score", "Who can get the high score on the whole game?", 
start = EndingLogic, 
cancel = 0==1, 
submit = 1==1, 
value = Points(), 
format="VALUE", lower_is_better=false, id=0)