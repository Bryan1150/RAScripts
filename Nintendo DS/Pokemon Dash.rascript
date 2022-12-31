// Pokemon Dash
// #ID = 15335

InGame = byte(0x0cd7bc)

MainMenuOption = byte(0x0d5db8)
SinglePlayer = 0x00
Multiplayer = 0x01
Options = 0x02

SinglePlayerMode = byte(0x0d5fb0)
RegularGP = 0x00
HardGP = 0x01
ExpertGP = 0x02
Special = 0x03
TimeAttack = 0x04
Practice = 0x05

TimeAttackType = byte(0x0d5da0)
RegularRules = 0x03
ExpertRules = 0x04

SelectedCup = byte(0x0d5da4)
GreenCup = 0x00
WhiteCup = 0x01
BlueCup = 0x02
YellowCup = 0x03
RedCup = 0x04

SelectedCourse = byte(0x0d5da8)
Course1 = 0x00
Course2 = 0x01
Course3 = 0x02
Course4 = 0x03
Course5 = 0x04

InGameCentiseconds = dword(0x1ac734)/10

PointerToStatus = tbyte(0x0d51e4) 
Status = byte(PointerToStatus + 0xe4)
InitialCountdown = 0x02
InTheAir = 0x03
Falling = 0x04
RaceStarted = 0x05
RaceFinished = 0x06

TracksData = {
"a": {"title": "Testing1", "points": 5, "type": RegularRules, "cup": GreenCup, "course": Course1, "trackName": "Green Fields", "targetTimeSeconds": 31,"targetTimeMinutes": 0},
"b": {"title": "Testing2", "points": 5, "type": RegularRules, "cup": GreenCup, "course": Course2, "trackName": "Running Through", "targetTimeSeconds": 36,"targetTimeMinutes": 0},
"c": {"title": "Testing3", "points": 5, "type": RegularRules, "cup": GreenCup, "course": Course3, "trackName": "Beach Path", "targetTimeSeconds": 43,"targetTimeMinutes": 0},
"d": {"title": "Testing4", "points": 5, "type": RegularRules, "cup": GreenCup, "course": Course4, "trackName": "Footprint of Mankey", "targetTimeSeconds": 5,"targetTimeMinutes": 1},
"e": {"title": "Testing5", "points": 5, "type": RegularRules, "cup": GreenCup, "course": Course5, "trackName": "Pikachu Island", "targetTimeSeconds": 10,"targetTimeMinutes": 1},
}

function CalculateCentiseconds(seconds, minutes){
    CentiSeconds = (seconds * 100) + (minutes * 6000)
    return CentiSeconds
}

function CheckCurrentCourse(type, cup, course){
    logic =
    InGame == 0x01 &&
    MainMenuOption == SinglePlayer &&
    SinglePlayerMode == TimeAttack &&
    TimeAttackType == type &&
    SelectedCup == cup &&
    SelectedCourse == course
    return logic
}

for track in TracksData{
    typeName = ""
    if(TracksData[track]["type"] == RegularRules){
        typeName = "[Regular]"
    }else{
        typeName = "[Expert]"
    }
      
    leaderboard(
    title = typeName + " Time Attack: " + TracksData[track]["trackName"], 
    description = "", 
    start =
    CheckCurrentCourse(TracksData[track]["type"], TracksData[track]["cup"], TracksData[track]["course"]) &&
    Status == RaceStarted && prev(Status) == InitialCountdown && PointerToStatus != 0
    , 
    cancel = 
    PointerToStatus == 0 || InGame == 0, 
    submit = 
    Status == RaceFinished && prev(Status) != RaceFinished
    , 
    value =
    InGameCentiseconds
    , 
    format="MILLISECS", 
    lower_is_better=true
    )
    
    achievement(
    title = TracksData[track]["title"],
    description = "hi",
    points = TracksData[track]["points"],
    trigger = 
    InGameCentiseconds < CalculateCentiseconds(TracksData[track]["targetTimeSeconds"], TracksData[track]["targetTimeMinutes"])
    )
}