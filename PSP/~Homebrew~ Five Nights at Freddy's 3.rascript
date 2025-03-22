// ~Homebrew~ Five Nights at Freddy's 3
// #ID = 26060

// ~Homebrew~ Five Nights at Freddy's 2
// #ID = 26046

pspMask = 0x1ffffff

currentHour = dword((dword(0x01ae8354) & pspMask) + 0x1c)
currentNight = dword((dword((dword(0x01ae8338) & pspMask) + 0x00) & pspMask) + 0x1c)


function pointerProtection(){
    return dword(0x01ae8354) != 0 && dword(0x01ae8338) != 0
}

mainNights = {
1:{"value":0x3ff00000, "points":1, "title":"Glad You Came Back for Another Night", "description":"Survive the 1st night"},
2:{"value":0x40000000, "points":3, "title":"We Found One. A Real One.", "description":"Survive the 2nd night"},
3:{"value":0x40080000, "points":5, "title":"You Are the Face of Freddy Fazbear’s Pizza", "description":"Survive the 3rd night"},
4:{"value":0x40100000, "points":5, "title":"Phantom Slaying", "description":"Survive the 4th night"},
5:{"value":0x40140000, "points":10, "title":"Springlocked", "description":"Survive the 5th night"},
6:{"value":0x40180000, "points":25, "title":"I Always Come Back", "description":"Survive the 6th night"},
}

function BeatNight(){
    return prev(currentHour) == 0x40179999 && currentHour == 0x4017ffff
}

function BeatSpecificNight(night){
    logic = pointerProtection() && BeatNight() &&
    currentNight == night
    
    return logic
}

for night in mainNights{
    achievement(
        mainNights[night]["title"],
        mainNights[night]["description"],
        mainNights[night]["points"],
        BeatSpecificNight(mainNights[night]["value"])
    )
}

starQuantity = dword((dword(0x01ae8328) & pspMask) + 0x1c)
OneStar = 0x3ff00000
TwoStars = 0x40000000
ThreeStars = 0x40080000


achievement(
    title = "Be Still, and Give Up Your Spirits [m]",
    description = "Achieve the good ending",
    points = 10,
    trigger = pointerProtection() &&
    starQuantity == ThreeStars &&
    (prev(starQuantity) == TwoStars || prev(starQuantity) == OneStar)
)


