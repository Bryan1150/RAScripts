// ~Homebrew~ ~Hack~ Skeleton Bros
// #ID = 24002
FullScreenID = byte(0x1c9470)
ScreenID = byte(0x1c9471)
TitleScreen = 0x01
MainMenu = 0x02
StoryMode = 0x03
QuickPlay = 0x04
Options = 0x06
InGame = 0x07
InGame2 = 0x08

GhostTap = byte(0x1c95e4)

Gamemode = byte(0x1c95ec)
Normal = 0x00
Swap = 0x01
TwoPlayer = 0x02

Life = word(0x1c9718)
Score = dword(0x1c9720)

StartInput = bit3(0x049070)

FinishedFlag = byte(0x04900c)

CurrentSong = byte(0x1c964c)
NyehHehHeh = 0x00 
BonelyOne = 0x01 
NotEnough = 0x02
NoMoreDeals = 0x03
EEEEChrome = 0x07
ParasiteSans = 0x08

Character = byte(0x1c948d)
Boyfriend = 0x00
Chara = 0x01

Botplay = byte(0x1c96fe)

function CompletedWeek(lastSongID){
    logic = 
    prev(ScreenID) == InGame2 &&
    ScreenID == StoryMode &&
    unless(once(
    prev(FullScreenID) == InGame2 &&
    FullScreenID == InGame2 &&
    Life != 0x00 && 
    FinishedFlag != 0x00 &&
    prev(StartInput) != 0x01 &&
    StartInput == 1 
    )) &&
    CurrentSong == lastSongID &&
    Gamemode == Normal &&
    Botplay == 0 &&
    (always_false() || never(prev(ScreenID) == StoryMode && ScreenID == InGame2))
    return logic
}

function CompletedWeek2(lastSongID){
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
    Gamemode == Normal &&
    Botplay == 0 &&
    (always_false() || never(prev(ScreenID) == StoryMode && ScreenID == InGame))
    return logic
}

TotalMisses = dword(0x1c9738)
Circle = bit5(0x049071)
DeathIndicator = byte(0x1c97d8)
NotDead = 0x00
Dead = 0x01

function FullCombo(song){
    logic =
    once(prior(FullScreenID) == QuickPlay && never(prev(FullScreenID) != StoryMode && FullScreenID == StoryMode)) &&
    prev(ScreenID) == InGame && trigger_when(ScreenID == QuickPlay) &&
    
    unless(once(
    prev(FullScreenID) == InGame &&
    FullScreenID == InGame &&
    Life != 0x00 && 
    FinishedFlag != 0x00 &&
    ((prev(StartInput) < StartInput) || (prev(Circle) < Circle)) 
    )) &&
    
    unless(
        once(
                (
                    (TotalMisses > prev(TotalMisses)) 
                    || 
                    (DeathIndicator > prev(DeathIndicator)) //&& prev(DeathIndicator) != NotDead)
                ) 
                && never(Life == 0)
            )
    ) &&
    Life != 0 &&
    
    GhostTap == 0 &&
    Gamemode == Normal &&
    Botplay == 0 &&
    (always_false() || never(prev(ScreenID) == QuickPlay && ScreenID == InGame))
    
    if(song <=2){
        logic = logic && __ornext(CurrentSong == song || CurrentSong == song +4)
    }else{
        logic = logic && (CurrentSong == song)
    }
       
    return logic
}

Songs = {
    1:{"title":"I WILL CAPTURE A HUMAN!", "songName":"Nyeh Heh Heh", "song":NyehHehHeh,"points":10},
2:{"title":"Song That Might Play When You Fight Sans", "songName":"Bonely One", "song":BonelyOne,"points":10},
3:{"title":"Do You Wanna Have a Bad Time?", "songName":"Not Enough", "song":NotEnough,"points":10},
4:{"title":"SINCE WHEN WERE YOU THE ONE IN CONTROL?", "songName":"No More Deals", "song":NoMoreDeals,"points":10},
5:{"title":"I'm Dead", "songName":"EEEEChrome", "song":EEEEChrome,"points":25},
6:{"title":"Judgement", "songName":"Parasite Sans", "song":ParasiteSans,"points":10},
}

Weeks = {
1:{"title":"True Pacifist", "description":"Complete Chapter 1 with Boyfriend", "lastSong":NoMoreDeals,"character":Boyfriend,"points":10},
2:{"title":"My 'Determination'...", "description":"Complete Chapter 1 with Chara", "lastSong":NotEnough,"character":Chara,"points":5},
}

for week in Weeks{
if(Weeks[week]["character"] == Chara){
    logic=CompletedWeek2(Weeks[week]["lastSong"]+4) && Character == Weeks[week]["character"]
}else{
    logic=CompletedWeek(Weeks[week]["lastSong"]) && Character == Weeks[week]["character"]
}

    achievement(
        title = Weeks[week]["title"],
        description = Weeks[week]["description"],
        points = Weeks[week]["points"],
        trigger = logic
    )
}

for song in Songs{
    achievement(
        title = Songs[song]["title"],
        description = "[Freeplay] Beat " + Songs[song]["songName"] + " without misses (Gamemode: Normal, Ghost Tap OFF)",
        points = Songs[song]["points"],
        trigger = FullCombo(Songs[song]["song"]) && Gamemode == Normal
    )
     if(song <=2){
        logic =  __ornext(CurrentSong == Songs[song]["song"] || CurrentSong == Songs[song]["song"] +4)
    }else{
        logic =  (CurrentSong == Songs[song]["song"])
    }
    leaderboard(
    title = Songs[song]["songName"] + " Top Score", 
    description = "", 
    start = 
    logic &&
    GhostTap == 0 &&
    Gamemode == Normal &&
    Botplay == 0 &&
    prev(ScreenID) == InGame && (ScreenID == QuickPlay)
    , 
    cancel = always_false(), 
    submit = always_true(), 
    value = prev(Score) * 10, 
    format="VALUE", 
    lower_is_better=false)
}