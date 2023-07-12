// ~Hack~ Love Yourself
// #ID = 24892

LevelID = byte(0x0013bf)
ScreenID = word(0x00010b)

GameState = byte(0x000100)
AlmostLoaded = 0x13
FullyLoaded = 0x14 

MethodExit = byte(0x000dd5)

ClearLevel = MethodExit == 1 && prev(MethodExit) == 0

Animation = byte(0x000071)
Death1 = 0x06
Death2 = 0x09


Levels = {
    1:{"title":"Beep Bop", "description":"Bop To It", "points":5, "stageID":0x2c},
    2:{"title":"Pytha...what?", "description":"Pythagoramboo", "points":5, "stageID":0x3a},
    3:{"title":"Asphalt Acrobat", "description":"Concrete Schoolyard", "points":5, "stageID":0x42},
    4:{"title":"Plat4ming", "description":"Platfourming", "points":5, "stageID":0x38},
    5:{"title":"Spin to Win", "description":"A Lil Castle", "points":5, "stageID":0x34},
    6:{"title":"Block Trip", "description":"Round The Bend ", "points":5, "stageID":0x36},
    7:{"title":"Up and Down", "description":"Wobblin", "points":5, "stageID":0x27},
    8:{"title":"Unyielding Determination", "description":"Pressing Onward", "points":5, "stageID":0x44},
    9:{"title":"Nice Hitboxes", "description":"Tippy Toes", "points":5, "stageID":0x31},
    10:{"title":"Water Momentum", "description":"Wet n Wiggly", "points":5, "stageID":0x2b},
    11:{"title":"They Sure Are Shmovin'", "description":"Shmovin Shells", "points":5, "stageID":0x40},
    12:{"title":"Fearless Frostbite", "description":"Cold and Spooked", "points":5, "stageID":0x3c},
    13:{"title":"Warm Bath", "description":"Igneous Intrusion", "points":5, "stageID":0x2e},
    14:{"title":"Beetle Invasion", "description":"Buzzed", "points":5, "stageID":0x3e},
    15:{"title":"The Backdoor", "description":"Breaking In", "points":5, "stageID":0x46},
    16:{"title":"Flameheart", "description":"The Fire Within", "points":5, "stageID":0x4a},
    17:{"title":"Love Yourself", "description":"Looking Back", "points":10, "stageID":0x55},
}

Secrets = {
    19:{"title":"Cheese Detector", "description":"Round The Bend", "points":3, "stageID":0x12d},
20:{"title":"Wholesome Runner", "description":"Cold and Spooked", "points":3, "stageID":0x119},
21:{"title":"Good Vibes", "description":"Buzzed", "points":3, "stageID":0x11b},
}

function CompletedLevel(id){
    return
    LevelID == id &&
    ClearLevel
}

function SecretRoom(id){
    return
    ScreenID == id &&
    GameState == FullyLoaded && prev(GameState) == AlmostLoaded
}

for cheevo in Levels{
    achievement(
        title = Levels[cheevo]["title"],
        description = "Complete '" + Levels[cheevo]["description"] + "'",
        points = Levels[cheevo]["points"],
        trigger = CompletedLevel(Levels[cheevo]["stageID"])
    )
}

for cheevo in Secrets{
    achievement(
        title = Secrets[cheevo]["title"],
        description = "Find the secret room in '" + Secrets[cheevo]["description"] + "'",
        points = Secrets[cheevo]["points"],
        trigger = SecretRoom(Secrets[cheevo]["stageID"])
    )
}

