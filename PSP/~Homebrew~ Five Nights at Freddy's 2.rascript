// ~Homebrew~ Five Nights at Freddy's 2
// #ID = 26046

pspMask = 0x1ffffff

currentHour = dword((dword(0x01af6504) & pspMask) + 0x1c)
currentNight = dword((dword(0x01af648c) & pspMask) + 0x1c)
preset = dword((dword(0x01af6510) & pspMask) + 0x1c)

customNight = 0x401c0000

function pointerProtection(){
    return dword(0x01af6504) != 0 && dword(0x01af648c) != 0
}

mainNights = {
    1:{"value":0x3ff00000, "points":2, "title":"New and Improved", "description":"Survive the 1st night"},
2:{"value":0x40000000, "points":3, "title":"Don't Forget the Music Box", "description":"Survive the 2nd night"},
3:{"value":0x40080000, "points":5, "title":"Put Back Together", "description":"Survive the 3rd night"},
4:{"value":0x40100000, "points":5, "title":"Tampered Stares", "description":"Survive the 4th night"},
5:{"value":0x40140000, "points":10, "title":"3,35$ Per Hour", "description":"Survive the 5th night"},
6:{"value":0x40180000, "points":25, "title":"Working Overtime", "description":"Survive the 6th night"},
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

function BeatChallenge(challenge){
    logic = pointerProtection() && 
    currentNight == customNight &&
    preset == challenge &&
    trigger_when(BeatNight())
    return logic
}

challenges = {
1:{"value":0x3ff00000, "points":10, "title":"Great! (Now Get Out.)", "description":"Complete the '4/20 Mode' challenge"},
2:{"value":0x40000000, "points":10, "title":"Kid's Friendly", "description":"Complete the 'New and Shiny' challenge"},
3:{"value":0x40080000, "points":10, "title":"Prepare For Trouble", "description":"Complete the 'Double trouble' challenge"},
4:{"value":0x40100000, "points":10, "title":"Night Of The Living Dead", "description":"Complete the 'Night of Misfits' challenge"},
5:{"value":0x40140000, "points":10, "title":"Foxy's Friend", "description":"Complete the 'Foxy Foxy' challenge"},
6:{"value":0x40180000, "points":10, "title":"Ladies' Night Out", "description":"Complete the 'Ladies Night' challenge"},
7:{"value":0x401c0000, "points":10, "title":"You Are Not a Clown, You Are The Entire Circus", "description":"Complete the 'Freddy's Circus' challenge"},
8:{"value":0x40200000, "points":10, "title":"Ready to Die", "description":"Complete the 'Cupcake Challenge' challenge"},
9:{"value":0x40220000, "points":10, "title":"Obligatory 87' Reference", "description":"Complete the 'Fazbear Fever' challenge"},
10:{"value":0x40240000, "points":50, "title":"It's Been So Long", "description":"Complete the '10/20' challenge"},
    
}


for night in challenges{
    achievement(
        challenges[night]["title"],
        challenges[night]["description"],
        challenges[night]["points"],
        BeatChallenge(challenges[night]["value"])
    )
}
