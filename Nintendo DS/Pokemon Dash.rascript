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

GreenCupTrophy = 0x0d565d
WhiteCupTrophy = 0x0d565e
BlueCupTrophy = 0x0d565f
YellowCupTrophy = 0x0d5660
RedCupTrophy = 0x0d5661

SelectedCourse = byte(0x0d5da8)
Course1 = 0x00
Course2 = 0x01
Course3 = 0x02
Course4 = 0x03
Course5 = 0x04

PointerToCentiseconds = tbyte(0x1939a0)
InGameCentiseconds = dword(PointerToCentiseconds + 0x30)/10

PointerToStatus = tbyte(0x0d51e4) 
Status = byte(PointerToStatus + 0xe4)
InitialCountdown = 0x02
InTheAir = 0x03
Falling = 0x04
RaceStarted = 0x05
RaceFinished = 0x06

TracksData = {
"a": {"title": "Field Runner", "points": 5, "type": RegularRules, "cup": GreenCup, "course": Course1, "trackName": "Green Fields", "targetTimeSeconds": 31,"targetTimeMinutes": 0},
"b": {"title": "Speeding Through", "points": 5, "type": RegularRules, "cup": GreenCup, "course": Course2, "trackName": "Running Through", "targetTimeSeconds": 36,"targetTimeMinutes": 0},
"c": {"title": "Beach Journey", "points": 5, "type": RegularRules, "cup": GreenCup, "course": Course3, "trackName": "Beach Path", "targetTimeSeconds": 43,"targetTimeMinutes": 0},
"d": {"title": "Leaving Footprints", "points": 5, "type": RegularRules, "cup": GreenCup, "course": Course4, "trackName": "Footprint of Mankey", "targetTimeSeconds": 5,"targetTimeMinutes": 1},
"e": {"title": "Volt Tackle", "points": 5, "type": RegularRules, "cup": GreenCup, "course": Course5, "trackName": "Pikachu Island", "targetTimeSeconds": 10,"targetTimeMinutes": 1},

"f": {"title": "Snowy Traversal", "points": 5, "type": RegularRules, "cup": WhiteCup, "course": Course1, "trackName": "White Snow Land", "targetTimeSeconds": 5,"targetTimeMinutes": 1},
"g": {"title": "Trial of the Swamp", "points": 5, "type": RegularRules, "cup": WhiteCup, "course": Course2, "trackName": "Trial Swamp", "targetTimeSeconds": 10,"targetTimeMinutes": 1},
"h": {"title": "What's the Mystery?", "points": 5, "type": RegularRules, "cup": WhiteCup, "course": Course3, "trackName": "Lake of Mystery", "targetTimeSeconds": 35,"targetTimeMinutes": 1},
"i": {"title": "You're Cracked", "points": 5, "type": RegularRules, "cup": WhiteCup, "course": Course4, "trackName": "Cracked Plains", "targetTimeSeconds": 40,"targetTimeMinutes": 1},
"j": {"title": "Island of Happiness", "points": 5, "type": RegularRules, "cup": WhiteCup, "course": Course5, "trackName": "Luvdisc Island", "targetTimeSeconds": 25,"targetTimeMinutes": 1},

"k": {"title": "Doing Zig Zags", "points": 5, "type": RegularRules, "cup": BlueCup, "course": Course1, "trackName": "Zigzag Road", "targetTimeSeconds": 0,"targetTimeMinutes": 1},
"l": {"title": "Steering Wheel", "points": 5, "type": RegularRules, "cup": BlueCup, "course": Course2, "trackName": "Steering Stream", "targetTimeSeconds": 10,"targetTimeMinutes": 1},
"m": {"title": "Great Plateau", "points": 5, "type": RegularRules, "cup": BlueCup, "course": Course3, "trackName": "Mud Plateau", "targetTimeSeconds": 10,"targetTimeMinutes": 1},
"n": {"title": "Bright Star", "points": 5, "type": RegularRules, "cup": BlueCup, "course": Course4, "trackName": "Star Lake", "targetTimeSeconds": 5,"targetTimeMinutes": 1},
"o": {"title": "Make a Wish", "points": 5, "type": RegularRules, "cup": BlueCup, "course": Course5, "trackName": "Jirachi Mountain", "targetTimeSeconds": 40,"targetTimeMinutes": 1},

"p": {"title": "Piece of Art", "points": 5, "type": RegularRules, "cup": YellowCup, "course": Course1, "trackName": "Smeargle's Mark", "targetTimeSeconds": 15,"targetTimeMinutes": 1},
"q": {"title": "Lavaland", "points": 5, "type": RegularRules, "cup": YellowCup, "course": Course2, "trackName": "Lava Island", "targetTimeSeconds": 10,"targetTimeMinutes": 1},
"r": {"title": "Glacierland", "points": 5, "type": RegularRules, "cup": YellowCup, "course": Course3, "trackName": "Glacier Island", "targetTimeSeconds": 15,"targetTimeMinutes": 1},
"s": {"title": "Sandland", "points": 5, "type": RegularRules, "cup": YellowCup, "course": Course4, "trackName": "Sand Island", "targetTimeSeconds": 40,"targetTimeMinutes": 1},
"t": {"title": "Pallet Town", "points": 5, "type": RegularRules, "cup": YellowCup, "course": Course5, "trackName": "Pallet Island", "targetTimeSeconds": 0,"targetTimeMinutes": 2},

"u": {"title": "Fiddle Grasland", "points": 5, "type": RegularRules, "cup": RedCup, "course": Course1, "trackName": "Twiddle Meadow", "targetTimeSeconds": 40,"targetTimeMinutes": 1},
"v": {"title": "It's Hot Here", "points": 5, "type": RegularRules, "cup": RedCup, "course": Course2, "trackName": "Heat Land", "targetTimeSeconds": 15,"targetTimeMinutes": 1},
"w": {"title": "Goo Lagoon", "points": 5, "type": RegularRules, "cup": RedCup, "course": Course3, "trackName": "Vortex Lagoon", "targetTimeSeconds": 40,"targetTimeMinutes": 1},
"x": {"title": "Spiral of Doom", "points": 5, "type": RegularRules, "cup": RedCup, "course": Course4, "trackName": "Freezing Spiral", "targetTimeSeconds": 30,"targetTimeMinutes": 1},
"y": {"title": "Pokemon Dasher", "points": 5, "type": RegularRules, "cup": RedCup, "course": Course5, "trackName": "Pokemon Park Island", "targetTimeSeconds": 10,"targetTimeMinutes": 2},
//Expert Division

"za": {"title": "Field Runner", "points": 5, "type": ExpertRules, "cup": GreenCup, "course": Course1, "trackName": "Green Fields", "targetTimeSeconds": 28,"targetTimeMinutes": 0},
"zb": {"title": "Speeding Through", "points": 5, "type": ExpertRules, "cup": GreenCup, "course": Course2, "trackName": "Running Through", "targetTimeSeconds": 38,"targetTimeMinutes": 0},
"zc": {"title": "Beach Journey", "points": 5, "type": ExpertRules, "cup": GreenCup, "course": Course3, "trackName": "Beach Path", "targetTimeSeconds": 38,"targetTimeMinutes": 0},
"zd": {"title": "Leaving Footprints", "points": 5, "type": ExpertRules, "cup": GreenCup, "course": Course4, "trackName": "Footprint of Mankey", "targetTimeSeconds": 5,"targetTimeMinutes": 1},
"ze": {"title": "Volt Tackle", "points": 5, "type": ExpertRules, "cup": GreenCup, "course": Course5, "trackName": "Pikachu Island", "targetTimeSeconds": 5,"targetTimeMinutes": 1},

"zf": {"title": "Snowy Traversal", "points": 5, "type": ExpertRules, "cup": WhiteCup, "course": Course1, "trackName": "White Snow Land", "targetTimeSeconds": 5,"targetTimeMinutes": 1},
"zg": {"title": "Trial of the Swamp", "points": 5, "type": ExpertRules, "cup": WhiteCup, "course": Course2, "trackName": "Trial Swamp", "targetTimeSeconds": 15,"targetTimeMinutes": 1},
"zh": {"title": "What's the Mystery?", "points": 5, "type": ExpertRules, "cup": WhiteCup, "course": Course3, "trackName": "Lake of Mystery", "targetTimeSeconds": 30,"targetTimeMinutes": 1},
"zi": {"title": "You're Cracked", "points": 5, "type": ExpertRules, "cup": WhiteCup, "course": Course4, "trackName": "Cracked Plains", "targetTimeSeconds": 30,"targetTimeMinutes": 1},
"zj": {"title": "Island of Happiness", "points": 5, "type": ExpertRules, "cup": WhiteCup, "course": Course5, "trackName": "Luvdisc Island", "targetTimeSeconds": 25,"targetTimeMinutes": 1},

"zk": {"title": "Doing Zig Zags", "points": 5, "type": ExpertRules, "cup": BlueCup, "course": Course1, "trackName": "Zigzag Road", "targetTimeSeconds": 55,"targetTimeMinutes": 0},
"zl": {"title": "Steering Wheel", "points": 5, "type": ExpertRules, "cup": BlueCup, "course": Course2, "trackName": "Steering Stream", "targetTimeSeconds": 5,"targetTimeMinutes": 1},
"zm": {"title": "Great Plateau", "points": 5, "type": ExpertRules, "cup": BlueCup, "course": Course3, "trackName": "Mud Plateau", "targetTimeSeconds": 5,"targetTimeMinutes": 1},
"zn": {"title": "Bright Star", "points": 5, "type": ExpertRules, "cup": BlueCup, "course": Course4, "trackName": "Star Lake", "targetTimeSeconds": 59,"targetTimeMinutes": 0},
"zo": {"title": "Make a Wish", "points": 5, "type": ExpertRules, "cup": BlueCup, "course": Course5, "trackName": "Jirachi Mountain", "targetTimeSeconds": 40,"targetTimeMinutes": 1},

"zp": {"title": "Piece of Art", "points": 5, "type": ExpertRules, "cup": YellowCup, "course": Course1, "trackName": "Smeargle's Mark", "targetTimeSeconds": 51,"targetTimeMinutes": 0},
"zq": {"title": "Lavaland", "points": 5, "type": ExpertRules, "cup": YellowCup, "course": Course2, "trackName": "Lava Island", "targetTimeSeconds": 54,"targetTimeMinutes": 0},
"zr": {"title": "Glacierland", "points": 5, "type": ExpertRules, "cup": YellowCup, "course": Course3, "trackName": "Glacier Island", "targetTimeSeconds": 5,"targetTimeMinutes": 1},
"zs": {"title": "Sandland", "points": 5, "type": ExpertRules, "cup": YellowCup, "course": Course4, "trackName": "Sand Island", "targetTimeSeconds": 15,"targetTimeMinutes": 1},
"zt": {"title": "Pallet Town", "points": 5, "type": ExpertRules, "cup": YellowCup, "course": Course5, "trackName": "Pallet Island", "targetTimeSeconds": 0,"targetTimeMinutes": 2},

"zu": {"title": "Fiddle Grasland", "points": 5, "type": ExpertRules, "cup": RedCup, "course": Course1, "trackName": "Twiddle Meadow", "targetTimeSeconds": 20,"targetTimeMinutes": 1},
"zv": {"title": "It's Hot Here", "points": 5, "type": ExpertRules, "cup": RedCup, "course": Course2, "trackName": "Heat Land", "targetTimeSeconds": 10,"targetTimeMinutes": 1},
"zw": {"title": "Goo Lagoon", "points": 5, "type": ExpertRules, "cup": RedCup, "course": Course3, "trackName": "Vortex Lagoon", "targetTimeSeconds": 15,"targetTimeMinutes": 1},
"zx": {"title": "Spiral of Doom", "points": 5, "type": ExpertRules, "cup": RedCup, "course": Course4, "trackName": "Freezing Spiral", "targetTimeSeconds": 15,"targetTimeMinutes": 1},
"zy": {"title": "Pokemon Dasher", "points": 5, "type": ExpertRules, "cup": RedCup, "course": Course5, "trackName": "Pokemon Park Island", "targetTimeSeconds": 50,"targetTimeMinutes": 1},
}

CupsData = {
"a": {"title": "Venosaur Cup", "cupValue": GreenCup, "trophyValue": GreenCupTrophy, "cupName": "Green Cup"},
"b": {"title": "Mew Cup", "cupValue": WhiteCup, "trophyValue": WhiteCupTrophy, "cupName": "White Cup" },
"c": {"title": "Blastoise Cup", "cupValue": BlueCup, "trophyValue": BlueCupTrophy, "cupName": "Blue Cup" },
"d": {"title": "Pikachu Cup", "cupValue": YellowCup, "trophyValue": YellowCupTrophy, "cupName": "Yellow Cup"},
"e": {"title": "Charizard Cup", "cupValue": RedCup, "trophyValue": RedCupTrophy, "cupName": "Red Cup"},
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

function CheckCurrentCup(mode, cup){
    logic = 
    prior(InGame) == 0x01 &&
    InGame == 0x00 &&
    MainMenuOption == SinglePlayer &&
    SinglePlayerMode == mode &&
    SelectedCup == cup 
    return logic
}

for cup in CupsData{
    achievement(
        title = CupsData[cup]["title"],
        description = "[Regular GP] Get a Gold Trophy in the " + CupsData[cup]["cupName"],
        points = 5, 
        trigger = 
        CheckCurrentCup(RegularGP, CupsData[cup]["cupValue"]) &&
        byte(CupsData[cup]["trophyValue"]) == 0x00 && prev(byte(CupsData[cup]["trophyValue"]))!= 0x00               
        )
        
     achievement(
        title = "Hard "+ CupsData[cup]["title"],
        description = "[Hard GP] Get a Gold Trophy in the " + CupsData[cup]["cupName"],
        points = 10, 
        trigger = 
        CheckCurrentCup(HardGP, CupsData[cup]["cupValue"]) &&
        byte(CupsData[cup]["trophyValue"] + 5) == 0x00 && prev(byte(CupsData[cup]["trophyValue"] + 5))!= 0x00               
        )
        
     achievement(
        title = "Expert "+ CupsData[cup]["title"],
        description = "[Expert GP] Get a Gold Trophy in the " + CupsData[cup]["cupName"],
        points = 10, 
        trigger = 
        CheckCurrentCup(ExpertGP, CupsData[cup]["cupValue"]) &&
        byte(CupsData[cup]["trophyValue"] + 10) == 0x00 && prev(byte(CupsData[cup]["trophyValue"] + 10))!= 0x00               
        )   
}


for track in TracksData{
    tempPoints = 0
    StatusLogic = always_true()
    typeName = ""
    descriptionAdd = ""
    titleAdd = ""
    if(TracksData[track]["type"] == RegularRules){
        typeName = "[Regular]"
        descriptionAdd = "[Time Attack - Regular Rules]"
        StatusLogic = StatusLogic && (Status == RaceStarted && prev(Status) == InitialCountdown)
        tempPoints = 5
    }else{
        typeName = "[Expert]"
        descriptionAdd = "[Time Attack - Expert Rules]"
        titleAdd = " EX"
        StatusLogic = StatusLogic && (Status == 0x00 && prev(Status) == InTheAir)
        tempPoints = 10
    }
      
      
    leaderboard(
    title = typeName + " Time Attack: " + TracksData[track]["trackName"], 
    description = "", 
    start =
    CheckCurrentCourse(TracksData[track]["type"], TracksData[track]["cup"], TracksData[track]["course"]) &&
    StatusLogic
    
    
    && PointerToStatus != 0, 
    
    cancel = 
    PointerToStatus == 0 || InGame == 0, 
    
    submit = 
    Status == RaceFinished && prev(Status) != RaceFinished, 
    
    value =
    InGameCentiseconds, 
    
    format="MILLISECS", 
    lower_is_better=true)
    ExtraZero = ""
    if (TracksData[track]["targetTimeSeconds"] < 10){
        ExtraZero = "0"
    }
       
    achievement(
    title = TracksData[track]["title"] + titleAdd,
    description = descriptionAdd + " Beat the time of 0" + TracksData[track]["targetTimeMinutes"] + ":" + ExtraZero + TracksData[track]["targetTimeSeconds"] + ".00 in " + TracksData[track]["trackName"],
    points = tempPoints,
    trigger = 
    CheckCurrentCourse(TracksData[track]["type"], TracksData[track]["cup"], TracksData[track]["course"]) &&
    trigger_when(Status == RaceFinished && prev(Status) != RaceFinished) &&
    InGameCentiseconds < CalculateCentiseconds(TracksData[track]["targetTimeSeconds"], TracksData[track]["targetTimeMinutes"])
    )
}