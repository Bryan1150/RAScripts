// ~Homebrew~ ~Hack~ PSXFunkin: B Sides
// #ID = 22064
FullScreenID = byte(0x1e4070)
ScreenID = byte(0x1e4071)
TitleScreen = 0x01
MainMenu = 0x02
StoryMode = 0x03
QuickPlay = 0x04
Options = 0x06
InGame = 0x07

Difficulty = byte(0x1e408d)
Easier = 0x00
Standard = 0x01
Flip = 0x02

GhostTap = byte(0x1fdc1d)

StartInput = bit3(0x03403c)

FinishedFlag = byte(0x034010)

CurrentSong = byte(0x1fdc60)
Bopeebo = 0x00
Fresh = 0x01
DadBattle = 0x02
Tutorial = 0x03
Spookez = 0x04
South = 0x05
Pico = 0x07
PhillyNice = 0x08
Blamed = 0x09
SatinPanties = 0x0a
High = 0x0b
Milf = 0x0c
Cocoa = 0x0e
EggNog = 0x0f

Life = word(0x1fdd00)
Score = dword(0x1fdd04)

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
    (Difficulty <= Flip && Difficulty >= Standard) &&
    GhostTap == 0 &&
    (always_false() || never(prev(ScreenID) == QuickPlay && ScreenID == InGame))
       
    return logic
}

Weeks = {
    1: {"title": "Dear Father", "titleFlip": "Strict Parenting", "lastSong": DadBattle},
    2: {"title": "Scary Time", "titleFlip": "Trick or Treat, Give Me Something Good to Eat", "lastSong": South},
    3: {"title": "Pico is Back", "titleFlip": "Walking Onto Some New Grounds", "lastSong": Blamed},
    4: {"title": "Murder Must Mommy", "titleFlip": "Dancing on a Limousine", "lastSong": Milf},
    5: {"title": "Crimson Cold", "titleFlip": "Christmas Time", "lastSong": EggNog},
}

Songs = {
    1: {"title": "Right, Down, Left, Up", "songName": "the Tutorial", "song": Tutorial, "points": 2},
    2: {"title": "Bop Bo Beep", "songName": "Bopeebo", "song": Bopeebo, "points": 5},
    3: {"title": "The Block is Fresh", "songName": "Fresh", "song": Fresh, "points": 5},
    4: {"title": "Parent In Law", "songName": "Dadbattle", "song": DadBattle, "points": 10},
    5: {"title": "Spooky Skid", "songName": "Spookeez", "song": Spookez, "points": 10},
    6: {"title": "Southern Pump", "songName": "South", "song": South, "points": 10},
    7: {"title": "Handbag With No End", "songName": "Pico", "song": Pico, "points": 10},
    8: {"title": "Long Time", "songName": "Philly Nice", "song": PhillyNice, "points": 10},
    9: {"title": "Hitman is my Name", "songName": "Blammed", "song": Blamed, "points": 10},
    10: {"title": "Undies of Satan", "songName": "Satin Panties", "song": SatinPanties, "points": 10},
    11: {"title": "Stoned... Again", "songName": "High", "song": High, "points": 25},
    12: {"title": "Man I Love Funkin'", "songName": "Milf", "song": Milf, "points": 25},
    13: {"title": "Warm Dessert", "songName": "Cocoa", "song": Cocoa, "points": 10},
    14: {"title": "Dairy Hit", "songName": "Eggnog", "song": EggNog, "points": 10},
}

achievement(
        title = "The Fiancé",
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
        description = "Beat Week " + week + " on Standard/Flip",
        points = 4,
        trigger = CompletedWeek(Weeks[week]["lastSong"]) && (Difficulty <= Flip && Difficulty >= Standard)
    )
}

for song in Songs{
    achievement(
        title = Songs[song]["title"],
        description = "[Freeplay] Beat " + Songs[song]["songName"] + " without misses on Standard/Flip (Ghost Tap OFF)",
        points = Songs[song]["points"],
        trigger = FullCombo(Songs[song]["song"])
    )
    
    leaderboard(
    title = "[Standard/Flip] " + Songs[song]["songName"] + " Top Score", 
    description = "", 
    start = 
    CurrentSong == Songs[song]["song"] &&
    (Difficulty <= Flip && Difficulty >= Standard) &&
    GhostTap == 0 &&
    prev(ScreenID) == InGame && (ScreenID == QuickPlay)
    , 
    cancel = always_false(), 
    submit = always_true(), 
    value = prev(Score) * 10, 
    format="VALUE", 
    lower_is_better=false)
}

