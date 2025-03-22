// Crash Bandicoot 3: Warped [Subset - Developer Times]
// #ID = 21740

// $068E98: [24-bit] Pointer (USA)
//          +0x60 = X Coordinates (32-bit)
//          +0x61 = Y Coordinates (32-bit)
//          +0x62 = Z Coordinates (32-bit)
//          +0xE8 = Animation ID? (8-bit)
//          +0x141 = Wumpa Fruit (8-bit)
//          +0x145 = Lives (8-bit)
//          +0x169 = Total Crates (8-bit)
// $068EA4: [24-bit] Pointer that appears when you finish a time trial... lol
// $068EF9: [8-bit] Level ID (US)
//          0x02 = Hub
//          0x0b = Level 1 - Toad Village
//          0x0e = Level 2 - Under Pressure
//          0x0a = Level 3 - Orient Express
//          0x0c = Level 4 - Bone Yard
//          0x19 = Level 5 - Makin' Waves
//          0x06 = Tiny Tiger - Boss 1

//0x03 = Dingodile - Boss 2

//0x04 = N Tropy - Boss 3

//0x05 = N Gin - Boss 4

//0x07 = N Cortex - Boss 5

LevelId = byte(0x068EF9)
Level1 = 0x0b
Level2 = 0x0e
Level3 = 0x0a
Level4 = 0x0c
Level5 = 0x19
//0x0f = Level 6 - Gee Wiz 
//0x16 = Level 7/27 - Hang Em' High 
//0x15 = Level 8 - Hog Ride
//0x12 = Level 9 - Tomb Time
//0x11 = Level 10 - Midnight Run
Level6 = 0x0f
Level7 = 0x16
Level8 = 0x15
Level9 = 0x12
Level10 = 0x11
//0x10 = Level 11 - Dino Might!
//0x1c = Level 12 - Deep Trouble
//0x1a = Level 13 - Low Time
//0x14 = Level 14 - Road Crash
//0x1d = Level 15 - Double Header
Level11 = 0x10
Level12 = 0x1c
Level13 = 0x1a
Level14 = 0x14
Level15 = 0x1d
//0x1e = Level 16 - Sphynxinator
//0x13 = Level 17 - Bye Bye Blimps
//0x0d = Level 18 - Tell No Tales
//0x1b = Level 19/29 - Future Frenzy
//0x18 = Level 20 - Tomb Wader
Level16 = 0x1e
Level17 = 0x13
Level18 = 0x0d
Level19 = 0x1b
Level20 = 0x18
//0x23 = Level 21 - Gone Tomorrow
//0x20 = Level 22 - Orange Asphalt
//0x22 = Level 23 - Flaming Passion
//0x17 = Level 24 - Mad Bombers
//0x24 = Level 25 - Bug Lite
Level21 = 0x23
Level22 = 0x20
Level23 = 0x22
Level24 = 0x17
Level25 = 0x24
//0x21 = Level 26 - Ski Crazed
//0x25 = Level 28 - Area 51?
//0x1f = Level 30 - Rings Of Power
//0x27 = Level 31 - Hot Coco
//0x26 = Level 32 - Eggipus Rex
Level26 = 0x21
Level28 = 0x25
Level30 = 0x1f
Level31 = 0x27
Level32 = 0x26


// $0691AC: [32-bit] Starting frames for time trial
StartingFrames = dword(0x0691AC)

// $0691E4: [24-bit] Time Trial Pointer (Becomes 0 when you finish a time trial)
//          +0x00 = Indicator for time trial (8-bits)
//          +0x178 = Frame Timer (24-bits)
//          +0x1A4 = Centiseconds
//          +0x1A8 = Seconds
//          +0x1AC = Minutes
TimeTrialPointer = tbyte(0x0691E4)
FrameTimer = tbyte(TimeTrialPointer + 0x178)
TimeTrialIndicator = prev(byte(TimeTrialPointer + 0x0)) == 1

function timeTrialLogic(level, frames){
    logic = 
    //Time Trial Start Indicator
    TimeTrialIndicator &&
    
    //Starting frames becomes 0
    prev(StartingFrames) != 0 &&
    trigger_when(StartingFrames == 0)  &&
    
    //Pointer becomes 0 at the same time as the starting frames.
    prev(TimeTrialPointer) != 0 &&
    trigger_when(TimeTrialPointer == 0) &&
    
    //Less than required time, correct level ID
    prev(FrameTimer) < frames &&
    LevelId == level
    return logic
}

LevelData = {
    "a": {"title": "Toad Jumping", "description": "Beat Andrew Woodworth's time of 0:39:93 in Toad Village", "points": 25, "level": Level1, "frames": 0x0004ae, "title2": "Toad Village"},
    "b": {"title": "You Were Under Pressure", "description": "Beat Shawn Dobbins' time of 0:57:83 in Under Pressure", "points": 10, "level": Level2, "frames": 0x6c7, "title2": "Under Pressure"},
    "c": {"title": "Literally Express", "description": "Beat Justin Monast's time of 0:16:96 in Orient Express", "points": 25, "level": Level3, "frames": 0x1fd, "title2": "Orient Express"},
    "d": {"title": "Bone Rush", "description": "Beat Donovan Soto's time of 1:15:36 in Bone Yard", "points": 25, "level": Level4, "frames": 0x8d5, "title2": "Bone Yard"},
    "e": {"title": "Makin' Times", "description": "Beat Andrew Woodworth's time of 0:50:66 in Makin' Waves", "points": 50, "level": Level5, "frames": 0x5f0, "title2": "Makin' Waves"},
    
    "f": {"title": "Gee Whoosh", "description": "Beat Andrew Woodworth's time of 0:58:66 in Gee Wiz", "points": 25, "level": Level6, "frames": 0x6e0, "title2": "Gee Wiz"},
    "g": {"title": "Ran'em Fast", "description": "Beat Donovan Soto's time of 0:34:36 in Hang'em High", "points": 50, "level": Level7, "frames": 0x407, "title2": "Hang'em High"},
    "h": {"title": "Hog Race", "description": "Beat Evan Wells' time of 0:33:96 in Hog Ride", "points": 50, "level": Level8, "frames": 0x3fb, "title2": "Hog Ride"},
    "i": {"title": "The Tomb Time", "description": "Beat Corey Strock's time of 0:50:63 in Tomb Time", "points": 25, "level": Level9, "frames": 0x5ef, "title2": "Tomb Time"},
    "j": {"title": "Midnight Sprint", "description": "Beat Evan Wells' time of 0:13:20 in Midnight Run", "points": 25, "level": Level10, "frames": 0x18c, "title2": "Midnight Run"},
    
    "k": {"title": "Dino Boost!", "description": "Beat Donovan Soto's time of 0:55:00 in Dino Might!", "points": 25, "level": Level11, "frames": 0x672, "title2": "Dino Might!"},
    "l": {"title": "No Trouble", "description": "Beat Shawn Dobbins' time of 1:00:46 in Deep Trouble", "points": 10, "level": Level12, "frames": 0x716, "title2": "Deep Trouble"},
    "m": {"title": "Low Time", "description": "Beat Corey Strock's time of 0:45:10 in High Time", "points": 25, "level": Level13, "frames": 0x549, "title2": " High Time"},
    "n": {"title": "Dash Crash", "description": "Beat Shawn Dobbins' time of 1:15:53 in Road Crash", "points": 50, "level": Level14, "frames": 0x8da, "title2": "Road Crash"},
    "o": {"title": "Double Tempo", "description": "Beat Andrew Woodworth's time of 0:56:00 in Double Header", "points": 25, "level": Level15, "frames": 0x690, "title2": "Double Header"},
    
    "p": {"title": "Speedxinator", "description": "Beat Evan Wells' time of 0:50:63 in Sphynxinator", "points": 25, "level": Level16, "frames": 0x5ef, "title2": "Sphynxinator"},
    "q": {"title": "Hello Hello Record", "description": "Beat Jason Rubin's time of 0:38:63 in Bye Bye Blimps", "points": 25, "level": Level17, "frames": 0x487, "title2": "Bye Bye Blimps"},
    "r": {"title": "Tell No Strats", "description": "Beat Shawn Dobbins' time of 1:01:70 in Tell No Tales", "points": 25, "level": Level18, "frames": 0x73b, "title2": "Tell No Tales"},
    "s": {"title": "Future Switftness", "description": "Beat Shawn Dobbins' time of 1:07:47 in Future Frenzy", "points": 25, "level": Level19, "frames": 0x7e8, "title2": "Future Frenzy"},
    "t": {"title": "Tomb Fleetness", "description": "Beat Corey Strock's time of 1:11:16 in Tomb Wader", "points": 25, "level": Level20, "frames": 0x857, "title2": "Tomb Wader"},
    
    "u": {"title": "Came Yesterday", "description": "Beat Andrew Woodworth's time of 0:55:46 in Gone Tomorrow", "points": 25, "level": Level21, "frames": 0x680, "title2": "Gone Tomorrow"},
    "v": {"title": "Orange Celerity", "description": "Beat Shawn Dobbins' time of 1:16:70 in Orange Asphalt", "points": 50, "level": Level22, "frames": 0x8fd, "title2": "Orange Asphalt"},
    "w": {"title": "Flamming Bolt", "description": "Beat Andrew Woodworth's time of 0:51:10 in Flamming Passion", "points": 25, "level": Level23, "frames": 0x5fd, "title2": "Flamming Passion"},
    "x": {"title": "Mad Flash", "description": "Beat Sam Thompson's time of 1:24:10 in Mad Bombers", "points": 25, "level": Level24, "frames": 0x9db, "title2": "Mad Bombers"},
    "y": {"title": "Bug Zoom", "description": "Beat Evan Wells' time of 1:08:00 in Bug Lite", "points": 25, "level": Level25, "frames": 0x7f8, "title2": "Bug Lite"},
    
    "z": {"title": "Hurry Crazed", "description": "Beat Dan Arey's time of 0:28:63 in Ski Crazed", "points": 25, "level": Level26, "frames": 0x35b, "title2": "Ski Crazed"},
    "za": {"title": "Area 510 MPH", "description": "Beat Shawn Dobbins' time of 1:38:96 in Area 51?", "points": 25, "level": Level28, "frames": 0xb99, "title2": "Area 51?"},
    "zb": {"title": "Rings of Haste", "description": "Beat Evan Wells' time of 0:47:93 in Rings of Power", "points": 50, "level": Level30, "frames": 0x59e, "title2": "Rings of Power"},
    "zc": {"title": "Hot Pace", "description": "Beat Andrew Woodworth's time of 0:14:60 in Hot Coco", "points": 10, "level": Level31, "frames": 0x1b6, "title2": "Hot Coco"},
    "zd": {"title": "Acceleration Rex", "description": "Beat Andrew Woodworth's time of 0:41:10 in Eggipus Rex", "points": 25, "level": Level32, "frames": 0x4d1, "title2": "Eggipus Rex"},
}

for level in LevelData{
    achievement(
        title = LevelData[level]["title"] + " EX",
        description = LevelData[level]["description"],
        points = LevelData[level]["points"],
        trigger = timeTrialLogic(LevelData[level]["level"], LevelData[level]["frames"])
    )
    
    leaderboard(
    title = LevelData[level]["title2"], 
    description = "Best Time", 
    start =  
    byte(TimeTrialPointer + 0x0) == 1 &&
    prev(StartingFrames) == 0 &&
    (StartingFrames != 0) &&
    LevelId == LevelData[level]["level"],
    
    
    cancel = (LevelId != prev(LevelId)), 
    submit =  
    TimeTrialIndicator &&
    
    //Starting frames becomes 0
    prev(StartingFrames) != 0 &&
    (StartingFrames == 0)  &&
    
    //Pointer becomes 0 at the same time as the starting frames.
    prev(TimeTrialPointer) != 0 &&
    (TimeTrialPointer == 0),
    value = (prev(FrameTimer)*2),
    format="FRAMES",
    lower_is_better=true
    )
}

//prev(byte(tbyte(0x0691E4) + 0x000000)) == 1 && prev(dword(0x0691AC)) != 0 && trigger_when(dword(0x0691AC)
              // == 0) && prev(tbyte(0x0691E4)) != 0 && trigger_when(tbyte(0x0691E4) == 0) && tbyte(tbyte(0x0691E4) +
              // 0x000178) < 1200 && byte(0x068EF9) == 11
