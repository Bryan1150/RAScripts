// Super Monkey Ball 2
// #ID = 6253


InGame = dword_be(0x005bc484) == 0x01
MenuProgress = byte(0x0054df84)
TitleScreen = 0xff
TitleScreen2 = 0x00
NumberOfPlayers = byte(0x0054df24)

MainMode = byte(0x0054df20)
MainGame = 0x00 
PartyGame = 0x01 
Options = 0x02

PartyGameSelect = byte(0x0054df21)

function MenuProgressCheck(){
    return 
    MenuProgress != TitleScreen &&
    MenuProgress != TitleScreen2
}

MonkeyRaceDX = 0



MonkeyRaceDXMode = byte(0x0054df2f)
GrandPrix = 0x01


function MonkeyRaceDX(){
    logic = 
    MenuProgressCheck() &&
    InGame &&
    NumberOfPlayers == 0 &&
    MainMode == PartyGame &&
    PartyGameSelect == MonkeyRaceDX 
    return logic
}

MonkeyRaceDXPoints = word_be(0x00926230)
MonkeyRaceDXPointsCPU1 = word_be(0x00926232)
MonkeyRaceDXPointsCPU2 = word_be(0x00926234)
MonkeyRaceDXPointsCPU3 = word_be(0x00926236)
MonkeyRaceDXPointsCPU4 = word_be(0x00926238)
MonkeyRaceDXPointsCPU5 = word_be(0x0092623a)
MonkeyRaceDXPointsCPU6 = word_be(0x0092623c)
MonkeyRaceDXPointsCPU7 = word_be(0x0092623e)

MonkeyRaceDXCupProgress = word_be(0x009246ee)
RaceFinishedCup1 = 0x06

achievement(
    title = "Grand Prixmate",
    description = "[Monkey Race 2 - Grand Prix] Win the Grand Prix",
    points = 5, 
    trigger = MonkeyRaceDX() && MonkeyRaceDXMode == GrandPrix && 
    MonkeyRaceDXPoints >= MonkeyRaceDXPointsCPU1 &&
    MonkeyRaceDXPoints >= MonkeyRaceDXPointsCPU2 &&
    MonkeyRaceDXPoints >= MonkeyRaceDXPointsCPU3 &&
    MonkeyRaceDXPoints >= MonkeyRaceDXPointsCPU4 &&
    MonkeyRaceDXPoints >= MonkeyRaceDXPointsCPU5 &&
    
    (prev(MonkeyRaceDXCupProgress) == RaceFinishedCup1-1 && MonkeyRaceDXCupProgress == RaceFinishedCup1) 
)


achievement(
    title = "Real Racer",
    description = "[Monkey Race 2 - Grand Prix] Get 1st in every race in the Grand Prix",
    points = 5, 
    trigger = MonkeyRaceDX() && MonkeyRaceDXMode == GrandPrix &&
    prev(MonkeyRaceDXCupProgress) == RaceFinishedCup1-1 && MonkeyRaceDXCupProgress == RaceFinishedCup1 && MonkeyRaceDXPoints == 96
)
RacingTracks =
{

7:{"title":"Charming Banana Sprint", "points":5, "trackName":"Charming Banana Road", "stageID":0x00, "minutes":1, "seconds":43},
8:{"title":"Lovely Heart Charge", "points":5, "trackName":"Lovely Heart Ring", "stageID":0x01, "minutes":1, "seconds":31},
9:{"title":"Clock Tower Rush", "points":5, "trackName":"Clock Tower Hill", "stageID":0x02, "minutes":1, "seconds":37},
10:{"title":"Cannon Ball Zap", "points":5, "trackName":"Cannon Ball Circuit", "stageID":0x03, "minutes":1, "seconds":50},
11:{"title":"Submarine Rush", "points":5, "trackName":"Submarine Street", "stageID":0x04, "minutes":1, "seconds":35},
12:{"title":"Starlight Bolt", "points":5, "trackName":"Starlight Highway", "stageID":0x05, "minutes":1, "seconds":33},
}


TimeAttack = 0x02
MonkeyRaceDXTimer = dword_be(0x009248f0)
MonkeyRaceDXFinished = bit1(0x00924747) > prev(bit1(0x00924747))
MonkeyRaceDXSelectedCourse = byte(0x0054df31)

function TimeTrialRacing(stageID, minutes, seconds){
    return
    MonkeyRaceDX() && MonkeyRaceDXMode == TimeAttack && trigger_when(MonkeyRaceDXFinished) && MonkeyRaceDXSelectedCourse == stageID && MonkeyRaceDXTimer < (seconds * 60 + minutes * 3600)
}

for track in RacingTracks{
achievement(
    title = RacingTracks[track]["title"],
    description = "[Monkey Race 2 - Time Attack] Complete " + RacingTracks[track]["trackName"] + " in less than " + RacingTracks[track]["minutes"] + "m " + RacingTracks[track]["seconds"] + "s",
    points = RacingTracks[track]["points"],
    trigger = TimeTrialRacing(RacingTracks[track]["stageID"], RacingTracks[track]["minutes"], RacingTracks[track]["seconds"])
    )
}

MonkeyRaceFirstLap = dword(0x005f7278)
MonkeyRaceSecondLap = dword(0x005f7280)
MonkeyRaceThirdLap = dword(0x005f7288)
MonkeyRaceFourthLap = dword(0x005f7290)
MonkeyRaceLaps = word(0x005f7274)

//Monkey Fight
MonkeyFightDX = 0x01
MonkeyFightMode = byte(0x0054df35)
MonkeyFightNormalMode = 0x00
MonkeyFightSurvivalMode = 0x01

function MonkeyFightDX(){
    logic = 
    MenuProgressCheck() &&
    InGame &&
    NumberOfPlayers == 0 &&
    MainMode == PartyGame &&
    PartyGameSelect == MonkeyFightDX
    return logic
}


MonkeyFightWins = word_be(0x0095476c)
MonkeyFightWinsRequired = byte(0x0054df36)
MonkeyFightHandicap1 = byte(0x0054dfc4)
MonkeyFightHandicap2 = byte(0x0054dfc5)
MonkeyFightHandicap3 = byte(0x0054dfc6)
MonkeyFightHandicap4 = byte(0x0054dfc7)

achievement(
    title = "Super Punched Out!!",
    description = "[Monkey Fight 2 - Normal Mode] Win a 5-win game with all handicaps set at 1",
    points = 5, 
    trigger = MonkeyFightDX() && 
    MonkeyFightMode == MonkeyFightNormalMode &&   
    trigger_when(MonkeyFightWins == 5 && prev(MonkeyFightWins) == 4) && 
    MonkeyFightWinsRequired == 4 &&
    MonkeyFightHandicap1 == 0 &&
    MonkeyFightHandicap2 == 0 &&
    MonkeyFightHandicap3 == 0 &&
    MonkeyFightHandicap4 == 0
)

achievement(
    title = "Monky Balboa",
    description = "[Monkey Fight 2 - Survival Mode] Win a 5-win game",
    points = 5, 
    trigger = MonkeyFightDX() && 
    MonkeyFightMode == MonkeyFightSurvivalMode &&   
    trigger_when(MonkeyFightWins == 5 && prev(MonkeyFightWins) == 4) && 
    MonkeyFightWinsRequired == 4 
)

//Monkey Target
MonkeyTargetDX = 0x02

MonkeyTargetDXNumberOfRounds = byte(0x0054dfc8)
MonkeyTargetDXNumberOfBalls = byte(0x0054dfc9)


MonkeyTargetDXFinished = byte(0x004c4100) == 0x15 && prev(byte(0x004c4100)) != 0x15

function MonkeyTargetDX(){
    logic = 
    MenuProgressCheck() &&
    InGame &&
    NumberOfPlayers == 0 &&
    MainMode == PartyGame &&
    PartyGameSelect == MonkeyTargetDX
    return logic
}

MonkeyTargetDXScore = dword_be(0x00910bf0)

achievement(
    title = "5k Arrival",
    description = "[Monkey Target 2] Get 5000 points or more with 1 ball and 3 rounds set",
    points = 10, 
    trigger = MonkeyTargetDX() 
    && MonkeyTargetDXNumberOfRounds == 3 
    && MonkeyTargetDXNumberOfBalls == 1 && 
    MonkeyTargetDXScore >= 5000 && prev(MonkeyTargetDXScore) < 5000  && MonkeyTargetDXScore < 50000 
)

achievement(
    title = "12.5k Docking",
    description = "[Monkey Target 2] Get 12500 points or more with 1 ball and 6 rounds set",
    points = 10, 
    trigger = MonkeyTargetDX()
    && MonkeyTargetDXNumberOfRounds == 6 
    && MonkeyTargetDXNumberOfBalls == 1 && 
    MonkeyTargetDXScore >= 12500 && prev(MonkeyTargetDXScore) < 12500  && MonkeyTargetDXScore < 50000 
)

achievement(
    title = "7.5k Alighting",
    description = "[Monkey Target 2] Get 7500 points or more with 5 balls and 3 rounds set",
    points = 10, 
    trigger = MonkeyTargetDX()
    && MonkeyTargetDXNumberOfRounds == 3 
    && MonkeyTargetDXNumberOfBalls == 5 && 
    MonkeyTargetDXScore >= 7500 && prev(MonkeyTargetDXScore) < 7500  && MonkeyTargetDXScore < 50000 
)

achievement(
    title = "15k Harbor",
    description = "[Monkey Target 2] Get 15000 points or more with 5 balls and 6 rounds set",
    points = 10, 
    trigger = MonkeyTargetDX() 
    && MonkeyTargetDXNumberOfRounds == 6 
    && MonkeyTargetDXNumberOfBalls == 5 && 
    MonkeyTargetDXScore >= 15000 && prev(MonkeyTargetDXScore) < 15000  && MonkeyTargetDXScore < 50000 
)

//Monkey Billiards

MonkeyBilliardsDX = 0x03

MonkeyBilliardsDXMode = byte(0x0054df3f)


MonkeyBilliardsDXVSMode = 0x00
MonkeyBilliardsDXTournamentMode = 0x01

MonkeyBilliardsDXRules = byte(0x0054df40)


MonkeyBilliardsDXUsNineBall = 0x00
MonkeyBilliardsDXJpnNineBall = 0x01
MonkeyBilliardsDXRotation = 0x02
MonkeyBilliardsDXEightBall = 0x03


MonkeyBilliardsDXSets = byte(0x0054dfd0)

MonkeyBilliardsRotation8BallUSNineBall = byte(0x0054dfd2)
MonkeyBilliardsTournamentJPNLevel = byte(0x0054dfd5)


MonkeyBillardsWins = word_be(0x00943846)

//MonkeyBilliardsTournamentProgress = word(0x005fecd0)


function MonkeyBilliardsDX(){
    logic = 
    MenuProgressCheck() &&
    InGame &&
    NumberOfPlayers == 0 &&
    MainMode == PartyGame &&
    PartyGameSelect == MonkeyBilliardsDX 
    return logic
}

achievement(
    title = "American Rules",
    description = "[Monkey Billiards 2 - Vs. Mode] Win against a level 3 COM in US Nine-ball on 3 sets",
    points = 10, 
    trigger = MonkeyBilliardsDX() && MonkeyBilliardsDXMode == MonkeyBilliardsDXVSMode 
    && MonkeyBilliardsRotation8BallUSNineBall >= 2 && MonkeyBilliardsDXSets == 3 && trigger_when(MonkeyBillardsWins == 2 && prev(MonkeyBillardsWins) == 1) &&
    MonkeyBilliardsDXRules == MonkeyBilliardsDXUsNineBall
)


//BScore1 = word(0x0060e7e6)
//BScore2 = word(0x0060e7ee)
//BScore3 = word(0x0060e7f6)
//BScore4 = word(0x0060e7fe)
//BCurrentSet = byte(0x004c3b38)

podiumResults = byte(0x0061bb98)
congratulationsWin = 0x0c
billiardsState = byte(0x00942dcd)
podium = 0x1b

BGameState = byte(0x004c3b18)
achievement(
    title = "Japan Rules",
    description = "[Monkey Billiards 2 - Vs. Mode] Win against a level 3 COM or higher in JPN Nine-ball on 3 sets",
    points = 5, 
    trigger = MonkeyBilliardsDX() && MonkeyBilliardsDXMode == MonkeyBilliardsDXVSMode && MonkeyBilliardsTournamentJPNLevel >= 2 && MonkeyBilliardsDXSets == 3 
    
    && trigger_when
    (
    podiumResults == congratulationsWin && prev(podiumResults) != congratulationsWin &&
    billiardsState == podium
    ) &&
    MonkeyBilliardsDXRules == MonkeyBilliardsDXJpnNineBall
)

achievement(
    title = "Pyramid Pool",
    description = "[Monkey Billiards 2 - Vs. Mode] Win against a level 3 COM or higher in Rotation on 3 sets",
    points = 5, 
    trigger = MonkeyBilliardsDX() && MonkeyBilliardsDXMode == MonkeyBilliardsDXVSMode && MonkeyBilliardsRotation8BallUSNineBall >= 2 
    && MonkeyBilliardsDXSets == 3 && trigger_when(MonkeyBillardsWins == 2 && prev(MonkeyBillardsWins) == 1) &&
    MonkeyBilliardsDXRules == MonkeyBilliardsDXRotation
)

achievement(
    title = "Magic 8 Ball",
    description = "[Monkey Billiards 2 - Vs. Mode] Win against a level 3 COM or higher in Eight-ball on 3 sets",
    points = 5, 
    trigger = MonkeyBilliardsDX() && MonkeyBilliardsDXMode == MonkeyBilliardsDXVSMode && MonkeyBilliardsRotation8BallUSNineBall >= 2 && MonkeyBilliardsDXSets == 3 && trigger_when(MonkeyBillardsWins == 2 && prev(MonkeyBillardsWins) == 1) &&
    MonkeyBilliardsDXRules == MonkeyBilliardsDXEightBall
)


achievement(
    title = "APE World Championship",
    description = "[Monkey Billiards 2 - Tournament Mode] Win a tournament against level 2 or higher COM on 3 sets",
    points = 10, 
    trigger = MonkeyBilliardsDX() && MonkeyBilliardsDXMode == MonkeyBilliardsDXTournamentMode && MonkeyBilliardsTournamentJPNLevel >= 1 && MonkeyBilliardsDXSets == 3 
    && trigger_when
    (
    podiumResults == congratulationsWin && prev(podiumResults) != congratulationsWin &&
    billiardsState == podium
    )
)

//Monkey Bowling
MonkeyBowlingDX = 0x04

MonkeyBowlingMode = byte(0x0054df44)
BowlingNormalMode = 0x00
BowlingSpecialMode = 0x01
BowlingChallengeMode = 0x02

MonkeyBowlingRules = byte(0x0054df45)
BowlingNormalRules = 0x00
NinePinRules = 0x01
StrikeRules = 0x02

MonkeyBowlingSpecialLevel = byte(0x0054df46)
BowlingLevel1 = 0x00
BowlingLevel2 = 0x01
BowlingLevel3 = 0x02


MonkeyBowlingScore = word_be(0x0091e858)

function MonkeyBowlingDX(){
    logic = 
    MenuProgressCheck() &&
    InGame &&
    NumberOfPlayers == 0 &&
    MainMode == PartyGame &&
    PartyGameSelect == MonkeyBowlingDX 
    return logic
}

achievement(
    title = "Traditional Bowling",
    description = "[Monkey Bowling - Normal Mode] Get 190 or more points in Normal Rule",
    points = 5, 
    trigger = MonkeyBowlingDX() && MonkeyBowlingMode == BowlingNormalMode && MonkeyBowlingRules == BowlingNormalRules && trigger_when(MonkeyBowlingScore >= 190 && prev(MonkeyBowlingScore) < 190 && MonkeyBowlingScore < 1000)
)

achievement(
    title = "One Less",
    description = "[Monkey Bowling - Normal Mode] Get 170 or more points in 9 Pins Rule",
    points = 5, 
    trigger = MonkeyBowlingDX() && MonkeyBowlingMode == BowlingNormalMode && MonkeyBowlingRules == NinePinRules && trigger_when(MonkeyBowlingScore >= 170 && prev(MonkeyBowlingScore) < 170 && MonkeyBowlingScore < 1000)
)

MonkeyBowlingStrikeScore = word_be(0x0091e984)

achievement(
    title = "Continuous Improvement",
    description = "[Monkey Bowling 2 - Normal Mode] Get 170 or more points in Strike Rule",
    points = 5, 
    trigger = MonkeyBowlingDX() && MonkeyBowlingMode == BowlingNormalMode && MonkeyBowlingRules == StrikeRules
    && trigger_when(MonkeyBowlingStrikeScore >= 170 && prev(MonkeyBowlingStrikeScore) < 170 && MonkeyBowlingStrikeScore < 1000)
)

achievement(
    title = "Crazy Bowling",
    description = "[Monkey Bowling 2 - Special Mode] Get 110 or more points in Level 1",
    points = 5, 
    trigger = MonkeyBowlingDX() && MonkeyBowlingMode == BowlingSpecialMode && MonkeyBowlingSpecialLevel == BowlingLevel1
    && trigger_when(MonkeyBowlingScore >= 110 && prev(MonkeyBowlingScore) < 110 && MonkeyBowlingScore < 1000)
)

achievement(
    title = "Unusual Patterns",
    description = "[Monkey Bowling 2 - Special Mode] Get 110 or more points in Level 2",
    points = 5, 
    trigger = MonkeyBowlingDX() && MonkeyBowlingMode == BowlingSpecialMode && MonkeyBowlingSpecialLevel == BowlingLevel2
    && trigger_when(MonkeyBowlingScore >= 110 && prev(MonkeyBowlingScore) < 110 && MonkeyBowlingScore < 1000)
)

achievement(
    title = "Give It Some Spin",
    description = "[Monkey Bowling 2 - Special Mode] Get 65 or more points in Level 3",
    points = 5, 
    trigger = MonkeyBowlingDX() && MonkeyBowlingMode == BowlingSpecialMode && MonkeyBowlingSpecialLevel == BowlingLevel3
    && trigger_when(MonkeyBowlingScore >= 65 && prev(MonkeyBowlingScore) < 65 && MonkeyBowlingScore < 1000)
)

BowlingPatterns = byte(0x0091e9ea)

achievement(
    title = "Challenging Pins 2",
    description = "[Monkey Bowling 2 - Challenge Mode] Get 5 or more points",
    points = 10, 
    trigger = MonkeyBowlingDX() && MonkeyBowlingMode == BowlingChallengeMode && trigger_when(BowlingPatterns == 6 && prev(BowlingPatterns) == 5)
)



//Monkey Golf
MonkeyGolfDX = 0x05


FirstHole = 0x0092e024
LastHole = 0x0092e035

NumberOfHoles = byte(0x0054dfe5)

GolfGame = byte(0x0054df48)
StrokePlay = 0x00

CurrentHole = byte(0x00942da9)

function MonkeyGolfDX(){
    logic = 
    MenuProgressCheck() &&
    InGame &&
    NumberOfPlayers == 0 &&
    MainMode == PartyGame &&
    PartyGameSelect == MonkeyGolfDX &&
    GolfGame == StrokePlay
    return logic
}

function SumOfHoles(){
    sum = 0
    for hole in range(FirstHole, FirstHole + 17){
        sum = sum + byte(hole)
    }
    return sum
}


achievement(
    title = "Monkey Woods",
    description = "[Monkey Golf 2] Get 85 or less points in 18 holes in Stroke Play",
    points = 10, 
    trigger = MonkeyGolfDX() && NumberOfHoles == 0 && SumOfHoles() <= 80 && trigger_when(CurrentHole == 18 && prev(CurrentHole) == 17)
)

//Monkey Boat DX

MonkeyBoat = 0x06

MonkeyBoatMode = byte(0x0054df4b)
BoatGrandPrix = 0x01
BoatTimeAttack = 0x02

BoatPoints = byte(0x00928b8d)
BoatPoints2 = byte(0x0092907d)
BoatPoints3 = byte(0x0092956d)
BoatPoints4 = byte(0x00929a5d)

BoatCurrentLap = byte(0x00928b8f)

FinishedRace = prev(bit3(0x00928b93)) == 0 && bit3(0x00928b93) == 1

LastRaceBoatID =  0x008c

BoatCourse = byte(0x0054df4d)
FlowerGardenSide = 0x00 
WoodyArchRiver = 0x01 
WaterDragonRoute = 0x02

LevelID = dword_be(0x00473118)

BoatTime = dword_be(0x00928bd8) + dword_be(0x00928be4) + dword_be(0x00928bf0) + dword_be(0x00928bfc)

function MonkeyBoat(){
    logic = 
    MenuProgressCheck() &&
    InGame &&
    NumberOfPlayers == 0 &&
    MainMode == PartyGame &&
    PartyGameSelect == MonkeyBoat 
    return logic
}

achievement(
    title = "Canoe King",
    description = "[Monkey Boat - Grand Prix] Win the Grand Prix",
    points = 10, 
    trigger = MonkeyBoat() && MonkeyBoatMode == BoatGrandPrix && LevelID == LastRaceBoatID && BoatPoints > prev(BoatPoints) && 
    (BoatPoints >= BoatPoints2 && BoatPoints >= BoatPoints3 && BoatPoints >= BoatPoints4) && BoatCurrentLap == 1
)

achievement(
    title = "GOAT In A Boat",
    description = "[Monkey Boat - Grand Prix] Get 1st in every race in the Grand Prix",
    points = 10, 
    trigger = MonkeyBoat() && MonkeyBoatMode == BoatGrandPrix && LevelID == LastRaceBoatID && BoatPoints == 21 && prev(BoatPoints) < 21
)

function BoatSpeedrun(stage, seconds, minutes, laps){
    return
    BoatCourse == stage &&
    trigger_when(BoatCurrentLap == laps) &&
    BoatTime < (seconds * 60) + (minutes * 3600)
}

achievement(
    title = "Lawn Bloom",
    description = "[Monkey Boat - Time Attack] Complete Flower Garden Side in less than 2m 43s",
    points = 5, 
    trigger = MonkeyBoat() && MonkeyBoatMode == BoatTimeAttack && trigger_when(FinishedRace) && BoatSpeedrun(FlowerGardenSide, 43, 2, 4)
)

achievement(
    title = "Archway Pass",
    description = "[Monkey Boat - Time Attack] Complete Woody Arch River in less than than 2m 15s",
    points = 5, 
    trigger = MonkeyBoat() && MonkeyBoatMode == BoatTimeAttack && trigger_when(FinishedRace) && BoatSpeedrun(WoodyArchRiver, 15, 2, 4)
)

achievement(
    title = "Kingdra Route",
    description = "[Monkey Boat - Time Attack] Complete Water Dragon Route in less than than 2m 3s",
    points = 5, 
    trigger = MonkeyBoat() && MonkeyBoatMode == BoatTimeAttack && trigger_when(FinishedRace) && BoatSpeedrun(WaterDragonRoute, 3, 2, 4)
)

//Monkey Shot

MonkeyShot = 0x07
function MonkeyShot(){
    logic = 
    MenuProgressCheck() &&
    InGame &&
    NumberOfPlayers == 0 &&
    MainMode == PartyGame &&
    PartyGameSelect == MonkeyShot
    return logic
}
MonkeyShotStage = byte(0x0054df52)
ShotBeginner = 0x00
ShotAdvanced = 0x01
ShotExpert = 0x02

//ShotHealth = dword(0x00652fc8)

ShotScore = dword_be(0x0093a87c)

ShotGameState = byte(0x009a5753)
ShotPreparing = 0x04
ShotReady = 0x05
ShotPlaying = 0x06
ShotStageCleared = 0x07
ShotResults = 0x09

function MonkeyShotLogic(level, levelString, score, title1, title2, title3){
    achievement(
    title = title1,
    description = "[Monkey Shot] Clear " + levelString,
    points = 5, 
    trigger = MonkeyShot() && MonkeyShotStage == level && ShotGameState == ShotResults && prev(ShotGameState) == ShotStageCleared
    )
    
    
    
    achievement(
    title = title3,
    description = "[Monkey Shot] Get " + score + " in " + levelString,
    points = 10, 
    trigger = MonkeyShot() && MonkeyShotStage == level && ShotScore >= score && prev(ShotScore) < score && ShotScore < 150000
    )
    
    

}
MonkeyShotLogic(ShotBeginner, "Beginner", 45000, "Jungle Wars", "Obligatory Damageless Achievement", "Banana Splitters")
MonkeyShotLogic(ShotAdvanced, "Advanced", 40000, "Ocean Attack", "You Like Damageless?", "Chimp and Punishment")
MonkeyShotLogic(ShotExpert, "Expert", 25000, "Planet Monkeys", "Monkey with a GUN", "House Of The Apes")


//Monkey Dog Fight
MonkeyDogFight = 0x08
DogTimeLimit = byte(0x0054dff8)
ThreeMin = 0x00
FiveMin = 0x01
TenMin = 0x02

DogMode = byte(0x0054df58)
DogNormal = 0x00
DogSurvival = 0x01

DogScore = dword_be(0x009153d4)
DogScore2 = dword(0x009153d8)
DogScore3 = dword(0x009153dc)
DogScore4 = dword(0x009153e0)

DogHealth = word_be(0x00915164)
//DogHealth2 = word(0x005e67cc)
//DogHealth3 = word(0x005e687c)
//DogHealth4 = word(0x005e692c)

DogTimeRemaining = dword_be(0x00915408)
DogState = byte(0x009150d5)
DogPlaying=0x0d
DogWin=0x0f

function MonkeyDogFight(){
    logic = 
    MenuProgressCheck() &&
    InGame &&
    NumberOfPlayers == 0 &&
    MainMode == PartyGame &&
    PartyGameSelect == MonkeyDogFight
    return logic
}

function DogCheevo(time, timeString, title, points){
    achievement(
    title = title,
    description = "[Monkey Dogfight] Win a " + timeString + " match",
    points = points, 
    trigger = MonkeyDogFight() && DogMode == DogNormal && DogTimeLimit == time && DogTimeRemaining == 0 && prev(DogTimeRemaining) > 0 
    && DogScore >= DogScore2 && DogScore >= DogScore3 && DogScore >= DogScore4
    ) 
    
  
    
}
DogCheevo(TenMin, "10 minutes", "Monkey Combat", 10)

achievement(
    title = "Air Survivalist",
    description = "[Monkey Dogfight - Survival Mode] Win a match",
    points = 5, 
    trigger = MonkeyDogFight() && DogMode == DogSurvival && DogHealth > 0 && DogHealth < 1000 && 
    DogState == DogWin && prev(DogState) == DogPlaying
    
    ) 
    
//Monkey Soccer
MonkeySoccer = 0x09
function MonkeySoccer(){
    logic = 
    MenuProgressCheck() &&
    InGame &&
    NumberOfPlayers == 0 &&
    MainMode == PartyGame &&
    PartyGameSelect == MonkeySoccer
    return logic
}
SoccerMode = byte(0x0054df5d)
SoccerTournament = 0x01
SoccerPKMode = 0x02

SoccerCOMLevel = byte(0x0054e005)

SoccerProgress = byte(0x009369e1)
SoccerLastMatch = 0x03

SoccerScore = dword_be(0x009369b0)
SoccerScoreCOM = dword_be(0x009369b4)

SoccerPKScore = dword_be(0x00942d58)
SoccerPKScoreCOM = dword_be(0x00942d5c)

SoccerState = byte(0x009369e3)
SoccerPodium = 0x0c

function SoccerWin(){
    return
    ((SoccerScore > SoccerScoreCOM) || (SoccerPKScore > SoccerPKScoreCOM)) && SoccerState == SoccerPodium && prev(SoccerState) != SoccerPodium
}


achievement(
    title = "Pro Evolution Balling",
    description = "[Monkey Soccer - Tournament Mode] Win a tournament",
    points = 10, 
    trigger = MonkeySoccer() && trigger_when(SoccerWin()) && SoccerMode == SoccerTournament && SoccerProgress == SoccerLastMatch
)
    
achievement(
    title = "FIFApe World Championship",
    description = "[Monkey Soccer - Tournament Mode] Win a tournament with level 3 or higher COM",
    points = 25, 
    trigger = MonkeySoccer() && trigger_when(SoccerWin()) && SoccerMode == SoccerTournament && SoccerProgress == SoccerLastMatch && SoccerCOMLevel >= 0x02
)

achievement(
    title = "PK Fire",
    description = "[Monkey Soccer - PK Mode] Win a PK match",
    points = 3, 
    trigger = MonkeySoccer() && SoccerWin() && SoccerMode == SoccerPKMode
)

//Monkey Baseball
MonkeyBaseball = 0x0a

BaseballMode = byte(0x0054df62)
BaseballTournament = 0x01

BaseballInnings = byte(0x0054e011)

BaseballLevel = byte(0x0054e012)

//BaseballScore = byte(0x0066f46a)
//BaseballScore2 = byte(0x0066f46b)

BaseballProgress = byte(0x009b1280)
BaseballFinalMatch = 0x05

BaseballGameState = byte(0x009b1220)
HomeRun = 0x09
BaseballGameSet = 0x0e

//BaseballHomeRunCheck = (bit1(0x0066f445) == 0 && byte(0x0066f468) == 1) || bit1(0x0066f445) == 1 && byte(0x0066f469) == 1

function MonkeyBaseball(){
    logic = 
    MenuProgressCheck() &&
    InGame &&
    NumberOfPlayers == 0 &&
    MainMode == PartyGame &&
    PartyGameSelect == MonkeyBaseball
    return logic
}

podiumResults = byte(0x0061bb98)
youWin = 0x0c

achievement(
    title = "Super Monkey Sluggers",
    description = "[Monkey Baseball - Tournament Mode] Win a tournament with 9 innings set",
    points = 10, 
    trigger = MonkeyBaseball() && 
    trigger_when(BaseballGameState == BaseballGameSet && podiumResults == youWin && prev(podiumResults) != youWin &&
     BaseballProgress == BaseballFinalMatch )
     && BaseballMode == BaseballTournament  && BaseballInnings == 9
)

achievement(
    title = "Major League Baseballing",
    description = "[Monkey Baseball - Tournament Mode] Win a tournament with level 3 or higher COM with 9 innings set",
    points = 10, 
    trigger = MonkeyBaseball() && 
    trigger_when(BaseballGameState == BaseballGameSet && podiumResults == youWin && prev(podiumResults) != youWin &&
     BaseballProgress == BaseballFinalMatch)
      && BaseballMode == BaseballTournament  && BaseballInnings == 9 && BaseballLevel >= 0x02
)

//Monkey Tennis
MonkeyTennis = 0x0b
function MonkeyTennis(){
    logic = 
    MenuProgressCheck() &&
    InGame &&
    NumberOfPlayers == 0 &&
    MainMode == PartyGame &&
    PartyGameSelect == MonkeyTennis
    return logic
}
TennisMode = byte(0x0054df68)
TennisDoublesMode = 0x01
TennisTournamentMode = 0x02

TennisLevel = byte(0x0054e021)

TennisState = byte(0x0092dd1f)
TennisFinished = 0x10

TennisSets = dword_be(0x0092dd84)
TennisSets2 = dword_be(0x0092dd88)

TennisProgress = byte(0x0092dcab)

TennisGames = byte(0x0054e01b)
TennisSetNumber = byte(0x0054e01c)

achievement(
    title = "SMB Open",
    description = "[Monkey Tennis - Tournament Mode] Win a tournament with 2 games and 3 sets",
    points = 10, 
    trigger = MonkeyTennis() && trigger_when((TennisState == TennisFinished && prev(TennisState) != TennisFinished)) 
    && trigger_when(TennisSets>TennisSets2) && TennisMode == TennisTournamentMode && trigger_when(TennisProgress >= 3) &&
    TennisGames == 2 && TennisSetNumber == 3
)

achievement(
    title = "Ace Advantage",
    description = "[Monkey Tennis - Tournament Mode] Win a tournament with level 3 or higher COM with 2 games and 3 sets",
    points = 10, 
    trigger = MonkeyTennis() && trigger_when(TennisState == TennisFinished && prev(TennisState) != TennisFinished) 
    && trigger_when(TennisSets>TennisSets2) && TennisMode == TennisTournamentMode && trigger_when(TennisProgress >= 3) && TennisLevel >= 2 && 
    TennisGames == 2 && TennisSetNumber == 3
)

StaffRollID = 0x00c5
StaffRollState = dword_be(0x009801a0)
StaffRollFinished = 0x03

StaffRollBananas = dword_be(0x009801b4)

//StaffRollLevel = dword(0x004f90b0)



achievement(
    title = "Starry Night Of Names",
    description = "[Staff Roll] Get 1000 bananas",
    points = 10, 
    trigger = MenuProgressCheck() &&
    InGame && LevelID == StaffRollID &&
    trigger_when(StaffRollState == StaffRollFinished && prev(StaffRollState) < StaffRollFinished) && 
    StaffRollBananas >= 1000 && StaffRollBananas <= 5000
)


