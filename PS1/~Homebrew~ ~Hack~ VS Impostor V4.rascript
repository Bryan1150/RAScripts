// ~Homebrew~ ~Hack~ VS Impostor V4
// #ID = 24988

//Disc 1 Stuff
Serial = dword(0x009334)
ScreenID = byte(0x1e5d4c)

StoryMode = prior(ScreenID) == 0x03

InGame = ScreenID == 0x07 || ScreenID == 0x08

GhostTap = byte(0x1e6150)
PracticeMode = byte(0x1e6154)
DebugMode = byte(0x1e6155)
BotPlay = byte(0x1e615a)
GameMode = byte(0x1e643c)
Normal = 0x00

SongID = dword(0x1e6590)

Score = dword(0x1e6704) * 10
Misses = dword(0x1e671c)
Accuracy = dword(0x1e6734)

Timer = dword(0x1f6abc)

SongEnded = Timer == 0xffffffff && prev(Timer) == 0

function Protection(){
    return
    //Serial == 0x53554353 &&
    GhostTap == 0 && PracticeMode == 0 && DebugMode == 0 && BotPlay == 0 && GameMode == Normal
}


function CompletedWeek(songEnd){
    return
    InGame && StoryMode && Protection() && SongEnded && SongID == songEnd
}

Disc1Week = {
    1:{"title":"Polus Problems","description":"Week 1", "points":5, "songFinish":0x02},
2:{"title":"Mira Mania","description":"Week 2", "points":5, "songFinish":0x06},
3:{"title":"Airship Atrocities","description":"Week 3", "points":5, "songFinish":0x0b},
4:{"title":"Defeat","description":"...", "points":10, "songFinish":0x0c},
5:{"title":"Magmatic Monstrosity","description":"Week 5", "points":5, "songFinish":0x11},
6:{"title":"Deadly Delusion","description":"Week 6", "points":5, "songFinish":0x14},
7:{"title":"Humane Heartbeat","description":"Week 7", "points":5, "songFinish":0x17},
8:{"title":"Jorsawsees Jams","description":"Week J", "points":5, "songFinish":0x1c},
}

for week in Disc1Week{
    achievement(
        title = Disc1Week[week]["title"],
        description = "[Story Mode] Complete " + Disc1Week[week]["description"],
        points = Disc1Week[week]["points"],
        trigger = CompletedWeek(Disc1Week[week]["songFinish"])
    )
}

function FullCombo(songID){
return
    InGame && Protection() && trigger_when(SongEnded) && SongID == songID && (Misses == 0)
}

Disc1Songs = {
    1:{"title":"Looking Kinda Sus...","description":"Sussus Moogus", "points":10, "songID":0x00},
2:{"title":"Lights Off","description":"Sabotage", "points":10, "songID":0x01},
3:{"title":"Crisis Averted","description":"Meltdown", "points":10, "songID":0x02},
4:{"title":"Sneaky Suspect","description":"Sussus Toogus", "points":10, "songID":0x03},
5:{"title":"In the Shadows","description":"Lights Down", "points":10, "songID":0x04},
6:{"title":"Power Restored","description":"Reactor", "points":10, "songID":0x05},
7:{"title":"Voted Out","description":"Ejected", "points":10, "songID":0x06},
8:{"title":"Galactic Grooves","description":"Mando", "points":10, "songID":0x07},
9:{"title":"Smooth Moves","description":"Dlow", "points":10, "songID":0x08},
10:{"title":"Attention to Detail","description":"Oversight", "points":10, "songID":0x09},
11:{"title":"Dangerous Path","description":"Danger", "points":10, "songID":0x0a},
12:{"title":"Double Trouble","description":"Double Kill", "points":10, "songID":0x0b},
13:{"title":"Unmasked Betrayal","description":"Defeat", "points":10, "songID":0x0c},
14:{"title":"Epic Showdown","description":"Finale", "points":10, "songID":0x0d},
15:{"title":"Shifting Allegiances","description":"Identity Crisis", "points":10, "songID":0x0e},
16:{"title":"Trail of Destruction","description":"Ashes", "points":10, "songID":0x0f},
17:{"title":"Fired Up","description":"Magmatic", "points":10, "songID":0x10},
18:{"title":"Intense Heat","description":"Boiling Point", "points":10, "songID":0x11},
19:{"title":"Deceptive Beats","description":"Delusion", "points":10, "songID":0x12},
20:{"title":"Dark Deeds","description":"Blackout", "points":10, "songID":0x13},
21:{"title":"Nervous Grooves","description":"Neurotic", "points":10, "songID":0x14},
22:{"title":"Pulse of Suspicion","description":"Heartbeat", "points":10, "songID":0x15},
23:{"title":"Funky Fuchsia","description":"Pinkwave", "points":10, "songID":0x16},
24:{"title":"Master of Deception","description":"Pretender", "points":10, "songID":0x17},
25:{"title":"Saucy Sensations","description":"Sauces Moogus", "points":10, "songID":0x18},
26:{"title":"Breathless Performance","description":"O2", "points":10, "songID":0x19},
27:{"title":"Democracy at Work","description":"Voting Time", "points":10, "songID":0x1a},
28:{"title":"Turbulent Tempos","description":"Turbulence", "points":10, "songID":0x1b},
29:{"title":"Triumphant Tune","description":"Victory", "points":10, "songID":0x1c},
30:{"title":"What's the Code?","description":"Roomcode", "points":10, "songID":0x1d},
}

for song in Disc1Songs{
    achievement(
        title = Disc1Songs[song]["title"],
        description = "Complete " + Disc1Songs[song]["description"] + " without misses",
        points = Disc1Songs[song]["points"],
        trigger = FullCombo(Disc1Songs[song]["songID"])
    )
    
    leaderboard(
    title = Disc1Songs[song]["description"] + " - Score", 
    description = "Most Points", 
    start = 
    InGame && Protection() && (SongEnded) && SongID == Disc1Songs[song]["songID"]
    , 
    cancel = always_false(), 
    submit = always_true(), 
    value = Score, 
    format="VALUE", 
    lower_is_better=false)
    
    leaderboard(
    title = Disc1Songs[song]["description"] + " - Accuracy", 
    description = "Most Accuracy", 
    start = 
    InGame && Protection() && (SongEnded) && SongID == Disc1Songs[song]["songID"] && Accuracy <= 100
    , 
    cancel = always_false(), 
    submit = always_true(), 
    value = Accuracy, 
    format="VALUE", 
    lower_is_better=false)
    
}

//Disc 2 Stuff
Serial = dword(0x00931c)
ScreenID = byte(0x1d8c9c)

StoryMode = prior(ScreenID) == 0x03

InGame = ScreenID == 0x07 || ScreenID == 0x08

GhostTap = byte(0x1d90a0)
PracticeMode = byte(0x1d90a4)
DebugMode = byte(0x1d90a5)
BotPlay = byte(0x1d90aa)
GameMode = byte(0x1d938c)
Normal = 0x00

SongID = dword(0x1d94e0)

Score = dword(0x1d9654) * 10
Misses = dword(0x1d966c)
Accuracy = dword(0x1d9684)

Timer = dword(0x1e99f4)

SongEnded = Timer == 0xffffffff && prev(Timer) == 0

Disc2Week = {
    1:{"title":"Loggos Halloween","description":"Boo!", "points":5, "songFinish":0x23},
    2:{"title":"Rousey Rival","description":"Tomongus", "points":5, "songFinish":0x20},
    3:{"title":"Battling The Boyfriend","description":"Henry", "points":5, "songFinish":0x28},
}

Disc2Songs = {
    1:{"title":"Bussin' Beats","description":"Sussy Bussy", "points":10, "songID":0x1e},
2:{"title":"Rhythm Rivalry","description":"Rivals", "points":10, "songID":0x1f},
3:{"title":"Melodic Munchies","description":"Chewmate", "points":10, "songID":0x20},
4:{"title":"Tuesday Tunes","description":"Tomongus Tuesday", "points":10, "songID":0x21},
5:{"title":"Festive Harmonies","description":"Christmas", "points":10, "songID":0x22},
6:{"title":"Haunting Melodies","description":"Spookpostor", "points":10, "songID":0x23},
7:{"title":"Holiday Hijinks","description":"Grinch", "points":10, "songID":0x24},
8:{"title":"Title Triumph","description":"Titular", "points":10, "songID":0x25},
9:{"title":"Mastermind Maestro","description":"Greatest Plan", "points":10, "songID":0x26},
10:{"title":"Backup Beats","description":"Reinforcements", "points":10, "songID":0x27},
11:{"title":"Musical Arsenal","description":"Armed", "points":10, "songID":0x28},
12:{"title":"Supreme Suspect","description":"Alpha Moogus", "points":10, "songID":0x29},
13:{"title":"Sneak and Strum","description":"Actin Sus", "points":10, "songID":0x2a},
14:{"title":"Rhythmic Ouch","description":"Ow", "points":10, "songID":0x2b},
15:{"title":"Asked","description":"Who", "points":10, "songID":0x2c},
16:{"title":"The SUS Guy","description":"Insane Streamer", "points":10, "songID":0x2d},
17:{"title":"Cozy Grooves","description":"Sussus Nuzzus", "points":10, "songID":0x2e},
18:{"title":"Rhythm Unknown","description":"Idk", "points":10, "songID":0x2f},
19:{"title":"Harvest Harmony","description":"Esculent", "points":10, "songID":0x30},
20:{"title":"Bro is Dripping","description":"Drippypop", "points":10, "songID":0x31},
21:{"title":"Crewmate Carnage","description":"Crewicide", "points":10, "songID":0x32},
22:{"title":"Unwavering Rhythm","description":"Monotone Attack", "points":10, "songID":0x33},
23:{"title":"Chart-Topping","description":"Top 10", "points":10, "songID":0x34},
24:{"title":"Syncopated Strikes","description":"Chippin", "points":10, "songID":0x35},
25:{"title":"Rhythmic Resilience","description":"Chipping", "points":10, "songID":0x36},
26:{"title":"Agony","description":"Torture", "points":10, "songID":0x37},
27:{"title":"Citrus Serenade","description":"Lemon Lime", "points":10, "songID":0x38},
28:{"title":"Nature's Melodies","description":"Chlorophyll", "points":10, "songID":0x39},
29:{"title":"Blooming Lights","description":"Inflorescence", "points":10, "songID":0x3a},
30:{"title":"Cosmic Travel","description":"Stargazer", "points":10, "songID":0x3b},
}

for week in Disc2Week{
    achievement(
        title = Disc2Week[week]["title"],
        description = "[Story Mode] Complete " + Disc2Week[week]["description"],
        points = Disc2Week[week]["points"],
        trigger = CompletedWeek(Disc2Week[week]["songFinish"])
    )
}

for song in Disc2Songs{
    achievement(
        title = Disc2Songs[song]["title"],
        description = "Complete " + Disc2Songs[song]["description"] + " without misses",
        points = Disc2Songs[song]["points"],
        trigger = FullCombo(Disc2Songs[song]["songID"])
    )
    
    leaderboard(
    title = Disc2Songs[song]["description"] + " - Score", 
    description = "Most Points", 
    start = 
    InGame && Protection() && (SongEnded) && SongID == Disc2Songs[song]["songID"]
    , 
    cancel = always_false(), 
    submit = always_true(), 
    value = Score, 
    format="VALUE", 
    lower_is_better=false)
    
    leaderboard(
    title = Disc2Songs[song]["description"] + " - Accuracy", 
    description = "Most Accuracy", 
    start = 
    InGame && Protection() && (SongEnded) && SongID == Disc2Songs[song]["songID"] && Accuracy <= 100
    , 
    cancel = always_false(), 
    submit = always_true(), 
    value = Accuracy, 
    format="VALUE", 
    lower_is_better=false)
    
}