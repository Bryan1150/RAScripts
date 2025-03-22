// ~Homebrew~ ~Hack~ PSXFunkin: D Sides
// #ID = 22069
FullScreenID = byte(0x1d9b74)
ScreenID = byte(0x1d9b75)
TitleScreen = 0x01
MainMenu = 0x02
StoryMode = 0x03
QuickPlay = 0x04
Options = 0x06
InGame = 0x07

Difficulty = byte(0x1d9b91)
Easier = 0x00
Standard = 0x01
Flip = 0x02

GhostTap = byte(0x1d9d60)

StartInput = bit3(0x039844)

FinishedFlag = byte(0x039814)

CurrentSong = byte(0x1d9da8)
Bopeebo = 0x00 
Fresh = 0x01 
DadBattle = 0x02
Tutorial = 0x03
Spookeez = 0x04
South = 0x05
Ghastly  = 0x06
Monster = 0x07 
Pico = 0x08
PhillyNice = 0x09 
Blammed = 0x0a 
SatinPanties = 0x0b 
High = 0x0c
Awooga = 0x0d 
Milf = 0x0e

Gamemode = byte(0x1d9d64)
Normal = 0x00
Swap = 0x01
TwoPlayer = 0x02

Life = word(0x1d9e5c)
Score = dword(0x1d9e64)

function CompletedWeek(lastSongID){
    logic = 
    prev(ScreenID) == InGame &&
    ScreenID == StoryMode &&
    unless(once(
    prev(FullScreenID) == InGame &&
    FullScreenID == InGame &&
    Life != 0x00 && 
    FinishedFlag != 0x00 &&
    prev(StartInput) != 0x01 &&
    StartInput == 1 
    )) &&
    CurrentSong == lastSongID &&
    Gamemode != TwoPlayer &&
    (always_false() || never(prev(ScreenID) == StoryMode && ScreenID == InGame))
    return logic
}

function CompletedAnyWeek(){
    logic = 
    prev(ScreenID) == InGame &&
    ScreenID == StoryMode &&
    unless(once(
    prev(FullScreenID) == InGame &&
    FullScreenID == InGame &&
    Life != 0x00 && 
    FinishedFlag != 0x00 &&
    prev(StartInput) != 0x01 &&
    StartInput == 1   
    )) &&
    CurrentSong != Tutorial &&
    (always_false() || never(prev(ScreenID) == StoryMode && ScreenID == InGame))
    return logic
}


function FullCombo(song){
    logic =
    once(prior(FullScreenID) == QuickPlay && never(prev(FullScreenID) != StoryMode && FullScreenID == StoryMode)) &&
    prev(ScreenID) == InGame && trigger_when(ScreenID == QuickPlay) &&
    
    unless(once(
    prev(FullScreenID) == InGame &&
    FullScreenID == InGame &&
    Life != 0x00 && 
    FinishedFlag != 0x00 &&
    prev(StartInput) != 0x01 &&
    StartInput == 1 
    )) &&
    
    unless(once((Life < prev(Life) && Score != 0) && never(Life == 0))) &&
    Life != 0 &&
    CurrentSong == song &&
    Difficulty == Flip &&
    GhostTap == 0 &&
    (always_false() || never(prev(ScreenID) == QuickPlay && ScreenID == InGame))
       
    return logic
}

Weeks = {
    1: {"title": "Guest Star", "titleFlip": "Show Time", "lastSong": DadBattle},
    2: {"title": "Sweet Scares", "titleFlip": "Haunted Beings", "lastSong": Monster},
    3: {"title": "Bad Hair Day", "titleFlip": "Bringing the Gang", "lastSong": Blammed},
    4: {"title": "Red Head Momma", "titleFlip": "Awooga... to the Moon", "lastSong": Milf},
}

Songs = {
    1: {"title": "Left, Down, Right, Up", "songName": "the Tutorial", "song": Tutorial, "points": 2},
    2: {"title": "Boop Bo Bap", "songName": "Bopeebo", "song": Bopeebo, "points": 5},
    3: {"title": "Freshly Served", "songName": "Fresh", "song": Fresh, "points": 5},
    4: {"title": "Fight with the Devil", "songName": "Dadbattle", "song": DadBattle, "points": 10},
    5: {"title": "Ghostrick Specter", "songName": "Spookeez", "song": Spookeez, "points": 10},
    6: {"title": "Alucard Mansion", "songName": "South", "song": South, "points": 10},
    7: {"title": "Gengar's Lullaby", "songName": "Ghastly", "song": Ghastly, "points": 25},
    8: {"title": "Cherry Entity", "songName": "Monster", "song": Monster, "points": 10},
    9: {"title": "Pico's New Haircut", "songName": "Pico", "song": Pico, "points": 10},
    10: {"title": "Kawai Sprite", "songName": "Philly Nice", "song": PhillyNice, "points": 10},
    11: {"title": "Blame the Game, Not Me", "songName": "Blammed", "song": Blammed, "points": 25},
    12: {"title": "Satan's Underwear", "songName": "Satin Panties", "song": SatinPanties, "points": 10},
    13: {"title": "Tipsy", "songName": "High", "song": High, "points": 10},
    14: {"title": ":frogeyes:", "songName": "Awooga", "song": Awooga, "points": 10},
    15: {"title": "Man I Love... Football?", "songName": "Milf", "song": Milf, "points": 10},
}

achievement(
        title = "The Sweetheart",
        description = "Beat the Tutorial",
        points = 1,
        trigger = CompletedWeek(Tutorial)
    )

for week in Weeks{
    achievement(
        title = Weeks[week]["title"],
        description = "Beat Week " + week,
        points = 2,
        trigger = CompletedWeek(Weeks[week]["lastSong"])
    )
    
    achievement(
        title = Weeks[week]["titleFlip"],
        description = "Beat Week " + week + " on Hard",
        points = 4,
        trigger = CompletedWeek(Weeks[week]["lastSong"]) && (Difficulty == Flip)
    )
}

for song in Songs{
    achievement(
        title = Songs[song]["title"],
        description = "[Freeplay] Beat " + Songs[song]["songName"] + " without misses on Hard (Gamemode: Normal, Ghost Tap OFF)",
        points = Songs[song]["points"],
        trigger = FullCombo(Songs[song]["song"]) && Gamemode == Normal
    )
    
    leaderboard(
    title = "[Hard] " + Songs[song]["songName"] + " Top Score", 
    description = "", 
    start = 
    CurrentSong == Songs[song]["song"] &&
    (Difficulty == Flip) &&
    GhostTap == 0 &&
    prev(ScreenID) == InGame && (ScreenID == QuickPlay)
    , 
    cancel = always_false(), 
    submit = always_true(), 
    value = prev(Score) * 10, 
    format="VALUE", 
    lower_is_better=false)
}

 achievement(
        title = "Swapping Sides",
        description = "Beat any week in Swap Gamemode",
        points = 3,
        trigger = CompletedAnyWeek() && Gamemode == Swap
    )