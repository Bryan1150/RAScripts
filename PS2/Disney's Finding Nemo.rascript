// Disney's Finding Nemo
// #ID = 20633


// $438CA8: [N-bit] Level 1 - Going To School - Stars
//          Bit 0 = Bubble Circles
//          Bit 3 = Colored Balls
//          Bit 6 = Race
// $438D80: [N-bit] Level 1 - Going To School - Bonus - Star Flags
//          Bit 4 = Luxo Ball
Level1_Star1 = bit0(0x438CA8)
Level1_Star2 = bit3(0x438CA8)
Level1_Star3 = bit6(0x438CA8)
Level1_Star4 = bit4(0x438D80)
Level1_Stars = [Level1_Star1, Level1_Star2, Level1_Star3, Level1_Star4]

// $438CAA: [N-bit] Level 1 - Going To School - Flags
//          Bit 0 = Level Available
//          Bit 1 = Level Completed
Level1_Available = bit0(0x438CAA)
Level1_Completed = bit1(0x438CAA)

// $438CB4: [N-bit] Level 2 - Field Trip - Stars
//          Bit 0 = Bubble Circles
//          Bit 1 = Enemies
//          Bit 3 = Colored Balls
//          Bit 5 = Bounce
// $438D8C: [N-bit] Level 2 - Field Trip - Bonus - Star Flags
//          Bit 5 = Bouncing
Level2_Star1 = bit0(0x438CB4)
Level2_Star2 = bit1(0x438CB4)
Level2_Star3 = bit3(0x438CB4)
Level2_Star4 = bit5(0x438CB4)
Level2_Star5 = bit5(0x438D8C)
Level2_Stars = [Level2_Star1, Level2_Star2, Level2_Star3, Level2_Star4, Level2_Star5]


// $438CB6: [N-bit] Level 2 - Field Trip - Flags
//          Bit 0 = Level Available
//          Bit 1 = Level Completed
Level2_Available = bit0(0x438CB6)
Level2_Completed = bit1(0x438CB6)

// $438CC0: [N-bit] Level 3 - The Drop Off - Stars
//          Bit 0 = Bubble Circles
//          Bit 1 = Enemies
//          Bit 3 = Colored Balls
// $438D98: [N-bit] Level 3 - The Drop Off - Bonus - Star Flags
//          Bit 7 = Star
Level3_Star1 = bit0(0x438CC0)
Level3_Star2 = bit1(0x438CC0)
Level3_Star3 = bit3(0x438CC0)
Level3_Star4 = bit7(0x438D98)
Level3_Stars = [Level3_Star1, Level3_Star2, Level3_Star3, Level3_Star4]

// $438CC2: [N-bit] Level 3 - The Drop Off - Flags
//          Bit 0 = Level Available
//          Bit 1 = Level Completed
Level3_Available = bit0(0x438CC2)
Level3_Completed = bit1(0x438CC2)

// $438CCC: [N-bit] Level 4 - Mask Chase - Stars
//          Bit 0 = Bubble Circles
//          Bit 1 = Enemies
//          Bit 3 = Colored Balls
// $438DA5: [N-bit] Level 4 - Mask Chase - Bonus - Star Flags
//          Bit 0 = Star
Level4_Star1 = bit0(0x438CCC)
Level4_Star2 = bit1(0x438CCC)
Level4_Star3 = bit3(0x438CCC)
Level4_Star4 = bit0(0x438DA5)
Level4_Stars = [Level4_Star1, Level4_Star2, Level4_Star3, Level4_Star4]

// $438CCE: [N-bit] Level 4 - Mask Chase - Flags
//          Bit 0 = Level Available
//          Bit 1 = Level Completed
Level4_Available = bit0(0x438CCE)
Level4_Completed = bit1(0x438CCE)

// $438CD8: [N-bit] Level 5 - Catch Dory - Stars
//          Bit 0 = Bubble Circles
// $438DB0: [N-bit] Level 5 - Catch Dory - Bonus - Star Flags
//          Bit 7 = Star
Level5_Star1 = bit0(0x438CD8)
Level5_Star2 = bit7(0x438DB0)
Level5_Stars = [Level5_Star1, Level5_Star2]

// $438CDA: [N-bit] Level 5 - Catch Dory - Flags
//          Bit 0 = Level Available
//          Bit 1 = Level Completed
Level5_Available = bit0(0x438CDA)
Level5_Completed = bit1(0x438CDA)

// $438CE4: [N-bit] Level 6 - Minefield - Stars
//          Bit 0 = Bubble Circles
//          Bit 5 = Bounce
// $438DBC: [N-bit] Level 6 - Minefield - Bonus - Star Flags
//          Bit 4 = Star
Level6_Star1 = bit0(0x438CE4)
Level6_Star2 = bit5(0x438CE4)
Level6_Star3 = bit4(0x438DBC)
Level6_Stars = [Level6_Star1, Level6_Star2, Level6_Star3]

// $438CE6: [N-bit] Level 6 - Minefield - Flags
//          Bit 0 = Level Available
//          Bit 1 = Level Completed
Level6_Available = bit0(0x438CE6)
Level6_Completed = bit1(0x438CE6)

// $438CF0: [N-bit] Level 7 - Submarine - Stars
//          Bit 0 = Bubble Circles
//          Bit 1 = Enemies
//          Bit 3 = Colored Balls
// $438DC8: [N-bit] Level 7 - Submarine - Bonus - Star Flags
//          Bit 6 = Star
Level7_Star1 = bit0(0x438CF0)
Level7_Star2 = bit1(0x438CF0)
Level7_Star3 = bit3(0x438CF0)
Level7_Star4 = bit6(0x438DC8)
Level7_Stars = [Level7_Star1, Level7_Star2, Level7_Star3, Level7_Star4]

// $438CF2: [N-bit] Level 7 - Submarine - Flags
//          Bit 0 = Level Available
//          Bit 1 = Level Completed
Level7_Available = bit0(0x438CF2)
Level7_Completed = bit1(0x438CF2)

// $438CFC: [N-bit] Level 8 - Hide and Seek - Stars
//          Bit 0 = Bubble Circles
//          Bit 3 = Colored Balls
// $438DD5: [N-bit] Level 8 - Hide and Seek - Bonus - Star Flags
//          Bit 0 = Star
Level8_Star1 = bit0(0x438CFC)
Level8_Star2 = bit3(0x438CFC)
Level8_Star3 = bit0(0x438DD5)
Level8_Stars = [Level8_Star1, Level8_Star2, Level8_Star3]

// $438CFE: [N-bit] Level 8 - Hide and Seek - Flags
//          Bit 0 = Level Available
//          Bit 1 = Level Completed
Level8_Available = bit0(0x438CFE)
Level8_Completed = bit1(0x438CFE)

// $438D08: [N-bit] Level 9 - Mask Search - Stars
//          Bit 0 = Bubble Circles
//          Bit 1 = Enemies
//          Bit 3 = Colored Balls
// $438DE0: [N-bit] Level 9 - Mask Search - Bonus - Star Flags
//          Bit 7 = Star
Level9_Star1 = bit0(0x438D08)
Level9_Star2 = bit1(0x438D08)
Level9_Star3 = bit3(0x438D08)
Level9_Star4 = bit7(0x438DE0)
Level9_Stars = [Level9_Star1, Level9_Star2, Level9_Star3, Level9_Star4]

// $438D0A: [N-bit] Level 9 - Mask Search - Flags
//          Bit 0 = Level Available
//          Bit 1 = Level Completed
Level9_Available = bit0(0x438D0A)
Level9_Completed = bit1(0x438D0A)

// $438D14: [N-bit] Level 10 - Anglerfish Chase - Stars
//          Bit 0 = Bubble Circles
// $438DEC: [N-bit] Level 10 - Anglerfish Chase - Bonus - Star Flags
//          Bit 4 = Star
Level10_Star1 = bit0(0x438D14)
Level10_Star2 = bit4(0x438DEC)
Level10_Stars = [Level10_Star1, Level10_Star2]

// $438D16: [N-bit] Level 10 - Anglerfish Chase - Flags
//          Bit 0 = Level Available
//          Bit 1 = Level Completed
Level10_Available = bit0(0x438D16)
Level10_Completed = bit1(0x438D16)

// $438D20: [N-bit] Level 11 - Mount Wannahockaloogie - Stars
//          Bit 0 = Bubble Circles
// $438DF9: [N-bit] Level 11 - Mount Wannahockaloogie - Bonus - Star Flags
//          Bit 1 = Star
Level11_Star1 = bit0(0x438D20)
Level11_Star2 = bit1(0x438DF9)
Level11_Stars = [Level11_Star1, Level11_Star2]

// $438D22: [N-bit] Level 11 - Mount Wannahockaloogie - Flags
//          Bit 0 = Level Available
//          Bit 1 = Level Completed
Level11_Available = bit0(0x438D22)
Level11_Completed = bit1(0x438D22)

// $438D2C: [N-bit] Level 12 - Jellyfish Race - Stars
//          Bit 0 = Bubble Circles
//          Bit 5 = Bounce
// $438E04: [N-bit] Level 12 - Jellyfish Race - Bonus - Star Flags
//          Bit 4 = Star
Level12_Star1 = bit0(0x438D2C)
Level12_Star2 = bit5(0x438D2C)
Level12_Star3 = bit4(0x438E04)
Level12_Stars = [Level12_Star1, Level12_Star2, Level12_Star3]

// $438D2E: [N-bit] Level 12 - Jellyfish Race - Flags
//          Bit 0 = Level Available
//          Bit 1 = Level Completed
Level12_Available = bit0(0x438D2E)
Level12_Completed = bit1(0x438D2E)

// $438D38: [N-bit] Level 13 - Training with Gill - Stars
//          Bit 0 = Bubble Circles
// $438E10: [N-bit] Level 13 - Training with Gill - Bonus - Star Flags
//          Bit 5 = Star
Level13_Star1 = bit0(0x438D38)
Level13_Star2 = bit5(0x438E10)
Level13_Stars = [Level13_Star1, Level13_Star2]

// $438D3A: [N-bit] Level 13 - Training With Gill - Flags
//          Bit 0 = Level Available
//          Bit 1 = Level Completed
Level13_Available = bit0(0x438D3A)
Level13_Completed = bit1(0x438D3A)
// $438D44: [N-bit] Level 14 - East Australian Current - Stars
//          Bit 0 = Bubble Circles
//          Bit 5 = Bounce
// $438E1D: [N-bit] Level 14 - East Australian Current - Bonus - Star Flags
//          Bit 1 = Star
Level14_Star1 = bit0(0x438D44)
Level14_Star2 = bit5(0x438D44)
Level14_Star3 = bit1(0x438E1D)
Level14_Stars = [Level14_Star1, Level14_Star2, Level14_Star3]

// $438D46: [N-bit] Level 14 - East Australian Current - Flags
//          Bit 0 = Level Available
//          Bit 1 = Level Completed
Level14_Available = bit0(0x438D46)
Level14_Completed = bit1(0x438D46)
// $438D50: [N-bit] Level 15 - The Plan - Stars
//          Bit 0 = Bubble Circles
//          Bit 4 = Balling
// $438E28: [N-bit] Level 15 - The Plan - Bonus - Star Flags
//          Bit 6 = Star
Level15_Star1 = bit0(0x438D50)
Level15_Star2 = bit4(0x438D50)
Level15_Star3 = bit6(0x438E28)
Level15_Stars = [Level15_Star1, Level15_Star2, Level15_Star3]

// $438D52: [N-bit] Level 15 - The Plan - Flags
//          Bit 0 = Level Available
//          Bit 1 = Level Completed
Level15_Available = bit0(0x438D52)
Level15_Completed = bit1(0x438D52)
// $438D5C: [N-bit] Level 16 - The Plan - Stars
//          Bit 0 = Bubble Circles
//          Bit 1 = Enemies
//          Bit 3 = Colored Balls
//          Bit 5 = Bounce
//          Bit 6 = Race
// $438E35: [N-bit] Level 16 - Whale Chase - Bonus - Star Flags
//          Bit 1 = Star
Level16_Star1 = bit0(0x438D5C)
Level16_Star2 = bit1(0x438D5C)
Level16_Star3 = bit3(0x438D5C)
Level16_Star4 = bit5(0x438D5C)
Level16_Star5 = bit6(0x438D5C)
Level16_Star6 = bit1(0x438E35)
Level16_Stars = [Level16_Star1, Level16_Star2, Level16_Star3, Level16_Star4, Level16_Star5, Level16_Star6]

// $438D5E: [N-bit] Level 16 - Whale Chase - Flags
//          Bit 0 = Level Available
//          Bit 1 = Level Completed
Level16_Available = bit0(0x438D5E)
Level16_Completed = bit1(0x438D5E)
// $438D68: [N-bit] Level 17 - Treatment Plant - Stars
//          Bit 0 = Bubble Circles
//          Bit 1 = Enemies
//          Bit 3 = Colored Balls
// $438E40: [N-bit] Level 17 - Treatment Plant - Bonus - Star Flags
//          Bit 4 = Star
Level17_Star1 = bit0(0x438D68)
Level17_Star2 = bit1(0x438D68)
Level17_Star3 = bit3(0x438D68)
Level17_Star4 = bit4(0x438E40)
Level17_Stars = [Level17_Star1, Level17_Star2, Level17_Star3, Level17_Star4]

// $438D6A: [N-bit] Level 17 - Treatment Plant - Flags
//          Bit 0 = Level Available
//          Bit 1 = Level Completed
Level17_Available = bit0(0x438D6A)
Level17_Completed = bit1(0x438D6A)
// $438D74: [N-bit] Level 18 - Fishing Net Rescue - Stars
//          Bit 0 = Bubble Circles
// $438E4C: [N-bit] Level 18 - Fishing Net Rescue - Bonus - Star Flags
//          Bit 3 = Star
Level18_Star1 = bit0(0x438D74)
Level18_Star2 = bit3(0x438E4C)
Level18_Stars = [Level18_Star1, Level18_Star2]
// $438D76: [N-bit] Level 18 - Fishing Net Rescue - Flags
//          Bit 0 = Level Available
//          Bit 1 = Level Completed
Level18_Available = bit0(0x438D76)
Level18_Completed = bit1(0x438D76)

AllStarsArray = [Level1_Star1, Level1_Star2, Level1_Star3, Level1_Star4, Level2_Star1, Level2_Star2, Level2_Star3, Level2_Star4, Level2_Star5, Level3_Star1, Level3_Star2, Level3_Star3, Level3_Star4,
Level4_Star1, Level4_Star2, Level4_Star3, Level4_Star4, Level5_Star1, Level5_Star2, Level6_Star1, Level6_Star2, Level6_Star3, Level7_Star1, Level7_Star2, Level7_Star3, Level7_Star4,
Level8_Star1, Level8_Star2, Level8_Star3, Level9_Star1, Level9_Star2, Level9_Star3, Level9_Star4, Level10_Star1, Level10_Star2, Level11_Star1, Level11_Star2, Level12_Star1, Level12_Star2, Level12_Star3,
Level13_Star1, Level13_Star2, Level14_Star1, Level14_Star2, Level14_Star3, Level15_Star1, Level15_Star2, Level15_Star3, Level16_Star1, Level16_Star2, Level16_Star3, Level16_Star4, Level16_Star5, Level16_Star6,
Level17_Star1, Level17_Star2, Level17_Star3, Level17_Star4, Level18_Star1, Level18_Star2]

Levels = {
    "1": {"title": "First Day of School", "description": "Going to School", "points": 5, "available": Level1_Available, "completed": Level1_Completed, "stars": Level1_Stars, "titleStars": "Golden School"},
    "2": {"title": "Mr. Ray's Lesson", "description": "Field Trip", "points": 5, "available": Level2_Available, "completed": Level2_Completed, "stars": Level2_Stars, "titleStars": "Golden Trip"},
    "3": {"title": "Bad Influences", "description": "The Drop Off", "points": 5, "available": Level3_Available, "completed": Level3_Completed, "stars": Level3_Stars, "titleStars": "Golden Drop Off"},
    "4": {"title": "Has Anybody Seen a Boat?!", "description": "Mask Chase", "points": 5, "available": Level4_Available, "completed": Level4_Completed, "stars": Level4_Stars, "titleStars": "Golden Chase"},
    "5": {"title": "Short-Term Memory", "description": "Catch Dory", "points": 5, "available": Level5_Available, "completed": Level5_Completed, "stars": Level5_Stars, "titleStars": "Golden Catch"},
    "6": {"title": "Mine Sweeper", "description": "Minefield", "points": 5, "available": Level6_Available, "completed": Level6_Completed, "stars": Level6_Stars, "titleStars": "Golden Mines"},
    "7": {"title": "Fish are Friends, Not Food", "description": "Submarine", "points": 5, "available": Level7_Available, "completed": Level7_Completed, "stars": Level7_Stars, "titleStars": "Golden Submarine"},
    "8": {"title": "From the Big Blue Ocean", "description": "Hide and Seek", "points": 5, "available": Level8_Available, "completed": Level8_Completed, "stars": Level8_Stars, "titleStars": "Golden Seek"},
    "9": {"title": "Where is the Mask?!", "description": "Mask Search", "points": 5, "available": Level9_Available, "completed": Level9_Completed, "stars": Level9_Stars, "titleStars": "Golden Mask"},
    "10": {"title": "P Sherman, 42 Wallaby Way, Sydney", "description": "Anglerfish Chase", "points": 5, "available": Level10_Available, "completed": Level10_Completed, "stars": Level10_Stars, "titleStars": "Golden Anglerfish"},
    "11": {"title": "Shark Bait", "description": "Mount Wannahockaloogie", "points": 5, "available": Level11_Available, "completed": Level11_Completed, "stars": Level11_Stars, "titleStars": "Golden Mount"},
    "12": {"title": "Boing, Boing, Boing!", "description": "Jellyfish Race", "points": 5, "available": Level12_Available, "completed": Level12_Completed, "stars": Level12_Stars, "titleStars": "Golden Jellyfish"},
    "13": {"title": "All Drains Lead to the Ocean", "description": "Training with Gill", "points": 5, "available": Level13_Available, "completed": Level13_Completed, "stars": Level13_Stars, "titleStars": "Golden Training"},
    "14": {"title": "You So Totally Rock, Son! So Gimme Some Fin!", "description": "East Australian Current", "points": 5, "available": Level14_Available, "completed": Level14_Completed, "stars": Level14_Stars, "titleStars": 
    "Golden Current"},
    "15": {"title": "The Great Escape", "description": "The Plan", "points": 5, "available": Level15_Available, "completed": Level15_Completed, "stars": Level15_Stars, "titleStars": "Golden Plan"},
    "16": {"title": "Thaaaankkk Youuuuu Sirrrrrrr!", "description": "Whale Chase", "points": 5, "available": Level16_Available, "completed": Level16_Completed, "stars": Level16_Stars, "titleStars": "Golden Whale"},
    "17": {"title": "Tell Your Dad, I Said Hi", "description": "Treatment Plan", "points": 5, "available": Level17_Available, "completed": Level17_Completed, "stars": Level17_Stars, "titleStars": "Golden Treatment"},
    "18": {"title": "Keep Swimming!", "description": "Fishing Net Rescue", "points": 10, "available": Level18_Available, "completed": Level18_Completed, "stars": Level18_Stars, "titleStars": "Golden Rescue"},
}

function CheatProtection(){
    logic = 
    Cheat_OpenLevels == 0 &&
    Cheat_Invincibility == 0 &&
    Cheat_Credits == 0 &&
    Cheat_Reward == 0
    
    return logic
}

function SaveProtection(){
    logic = 
    LevelID != MainMenu
    return logic
}
//Progression
for level in Levels{
    achievement(
        title = Levels[level]["title"],
        description = "Complete " + Levels[level]["description"],
        points = Levels[level]["points"],
        trigger = 
        Levels[level]["available"] == 1 &&
        Levels[level]["completed"] == 1 &&
        prev(Levels[level]["completed"]) == 0 &&
        CheatProtection() &&
        SaveProtection()
    )
}
//Stars
for level in Levels{
flags = Levels[level]["stars"]
    achievement(
        title = Levels[level]["titleStars"],
        description = "Collect all the Golden Starfish in " + Levels[level]["description"],
        points = 10,
        trigger = 
        Levels[level]["available"] == 1 &&
        sum_of(flags, f => prev(f)) <= length(flags) - 1 &&
        measured(sum_of(flags, f => f) == length(flags)) &&
        CheatProtection() &&
        SaveProtection()
    )
}
//All Stars

function AllStars(){ 
    achievement(
        title = "100% Golden!",
        description = "Collect all 60 Golden Starfish!",
        points = 25,
        trigger = 
        sum_of(AllStarsArray, f => prev(f)) <= length(AllStarsArray) - 1 &&
        measured(sum_of(AllStarsArray, f => f) == length(AllStarsArray)) &&
        CheatProtection() &&
        SaveProtection()
    )
}
AllStars()


// $4FDD0C: Bit 0 = Cheat Menu Unlocked
CheatMenuUnlocked = bit0(0x4FDD0C) == true
// $4FE080: [8-bit] Cheat - Open Levels (Any bit activates it)
Cheat_OpenLevels = byte(0x4FE080)
// $4FE081: [8-bit] Cheat - Invincibility (Any bit activates it)
Cheat_Invincibility = byte(0x4FE081)
// $4FE082: [8-bit] Cheat - Credits (Any bit activates it)
Cheat_Credits = byte(0x4FE082)
// $4FE083: [8-bit] Cheat - Reward (Any bit activates it)
Cheat_Reward = byte(0x4FE083)
// $4FE298: [8-bit] Current Level ID
//          0x24 = Level Select
//          0x25 = Intro Loading
//          0x26 = Main Menu/Intro Cutscenes [Used for save protection]
LevelID = byte(0x4FE298)
MainMenu = 0x26
