// ~Homebrew~ Portal 64
// #ID = 27401

screenID=dword(0x044e20)
inGame=0x80044e44


menuID=dword(0x0917c8)
playing=0x01
loading=0x03
newGame=0x04

chamberID=dword(0x045428)
roomID=word(0x091f5e)
chapterID=word(0x0d641c)


invencibility = bit5(0x092019)
firstGun = bit1(0x092018)
secondGun = bit2(0x092018)
shotGun = bit3(0x092019)
steps = word(0x092062)

progression={
1:{"title":"Welcome to the Aperture Science Computer Aided Enrichment Center","points":1, "chapterIDprev":0, "chapterID":0, "roomIDprev":2, "roomID":3},
2:{"title":"Aperture Science Heavy Duty Super Colliding Super Button","points":1, "chapterIDprev":0, "chapterID":1, "roomIDprev":5, "roomID":0},
3:{"title":"Aperture Science Handheld Portal Device","points":1, "chapterIDprev":1, "chapterID":1, "roomIDprev":2, "roomID":3},
4:{"title":"Aperture Science Bring Your Daughter to Work Day","points":2, "chapterIDprev":1, "chapterID":2, "roomIDprev":3, "roomID":0},
5:{"title":"You're Doing Quite Well","points":2, "chapterIDprev":2, "chapterID":2, "roomIDprev":2, "roomID":3},
6:{"title":"Enhancing the Truth","points":2, "chapterIDprev":2, "chapterID":3, "roomIDprev":5, "roomID":0},
7:{"title":"You, [Subject Name], Must Be the Pride Of [Subject Hometown]","points":3, "chapterIDprev":3, "chapterID":3, "roomIDprev":2, "roomID":3},
8:{"title":"Aperture Science High-Energy Pellets","points":3, "chapterIDprev":3, "chapterID":4, "roomIDprev":5, "roomID":0},
9:{"title":"Danger Is Merely a Device To Enhance Your Testing Experience","points":3, "chapterIDprev":4, "chapterID":5, "roomIDprev":2, "roomID":0},
10:{"title":"Quit Now and Cake Will Be Served Immediately","points":3, "chapterIDprev":5, "chapterID":6, "roomIDprev":2, "roomID":0},
11:{"title":"Speedy-Thing Goes In, Speedy-Thing Comes Out","points":3, "chapterIDprev":6, "chapterID":7, "roomIDprev":2, "roomID":0},
12:{"title":"The Enrichment Center Useful Advice","points":3, "chapterIDprev":7, "chapterID":7, "roomIDprev":2, "roomID":3},
13:{"title":"Weeeeeeeeeeeeeeeeee","points":4, "chapterIDprev":7, "chapterID":7, "roomIDprev":3, "roomID":4},
}

challenges={
1:{"points":5, "chapterStart":0, "roomStart":1, "minutes":2, "seconds":40, "steps":150, "portals":3, "chamberCompletion":3},
2:{"points":10, "chapterStart":2, "roomStart":1, "minutes":2, "seconds":35, "steps":150, "portals":6, "chamberCompletion":7},
3:{"points":10, "chapterStart":4, "roomStart":1, "minutes":1, "seconds":25, "steps":60, "portals":7, "chamberCompletion":9},
4:{"points":10, "chapterStart":6, "roomStart":1, "minutes":3, "seconds":15, "steps":200, "portals":12, "chamberCompletion":12},
}

optionQuantity = word(0x091898)
optionIngame = 0x06
function inGameCheck(){
    return
    optionQuantity == optionIngame //&&//screenID==inGame && //screenID == prev(screenID) &&
    //menuID==playing //&& menuID == prev(menuID) //&& invencibility == 0
}

function completedChamber(chapterPrev,chapter, roomPrev, room){
    extraLogic = always_true()
    
    
    logic = inGameCheck()
    
    if(roomPrev > room){
    
         logic = logic && 
    
    prev(chapterID)==chapterPrev&&
    chapterID==chapter

        
    }else{
        logic = logic && 
    
    prev(chapterID)==chapterPrev&&
    chapterID==chapter&&
    
    prev(roomID)==roomPrev&&
    roomID==room
    }

    return logic
    
}

function completedChamberTrigger(chapterPrev,chapter, roomPrev, room){
    extraLogic = always_true()
    
    
    logic = inGameCheck()
    
    if(roomPrev > room){
    
         logic = logic && 
    
    trigger_when(prev(chapterID)==chapterPrev&&
    chapterID==chapter)

        
    }else{
        logic = logic && 
    
    trigger_when(prev(chapterID)==chapterPrev&&
    chapterID==chapter&&
    
    prev(roomID)==roomPrev&&
    roomID==room)
    }

    return logic
}

for cheevo in progression{
    extraLogic = always_true()
    if(cheevo-1<2){
        extraLogic = extraLogic && firstGun == 0
    }
    if(cheevo-1<10){
        extraLogic = extraLogic && secondGun == 0
    }
    achievement(
        title=progression[cheevo]["title"],
        description="Complete Test Chamber " + cheevo-1,
        points=progression[cheevo]["points"],
        type="Progression",
        trigger=
        completedChamber(
            progression[cheevo]["chapterIDprev"],
            progression[cheevo]["chapterID"],
            progression[cheevo]["roomIDprev"],
            progression[cheevo]["roomID"]
        ) //&& extraLogic
        
    )
}

function challengeStart(challenge){
    return
    chapterID == challenges[challenge]["chapterStart"] && prev(roomID) == challenges[challenge]["roomStart"]-1 && (roomID) == challenges[challenge]["roomStart"] 
    //&& menuID == prev(menuID) && menuID == playing
    //&& prior(roomID) != challenges[challenge]["roomStart"]+1
}



function challengeLeaderboard(valueIn, titleIn, descriptionIn, formatIn, challenge){
    cheevo=challenges[challenge]["chamberCompletion"]+1
    leaderboard(
    title = "Chapter " + challenge + " - " + titleIn, 
    description = descriptionIn, 
    start=
    inGameCheck() //&& secondGun == 0 
    &&
    challengeStart(challenge)
    &&
    
    
    disable_when(
    prev(menuID)==loading &&
    menuID == playing &&
    chapterID == challenges[challenge]["chapterStart"] &&
    roomID >= challenges[challenge]["roomStart"]
    
    , until= (chapterID==0 && roomID==0))
    
    , 
    cancel=
    (chapterID==0 && roomID==0)||
    menuID==loading ||  (prev(menuID)==loading && menuID == playing) || (prev(menuID) == newGame && menuID == playing)
    , 
    submit=
    completedChamber(
            
            progression[cheevo]["chapterIDprev"],
            progression[cheevo]["chapterID"],
            progression[cheevo]["roomIDprev"],
            progression[cheevo]["roomID"]
   ) 
       
    , 
    value=valueIn, 
    format=formatIn, 
    lower_is_better=true)
}

function calculateFrames(minutes, seconds){
    frames=minutes*3600+seconds*60
    return frames
}

function challengeCheevo(challenge, quantity, check, cheevo){
    logic=
    //Check for completing the final chamber
    (completedChamberTrigger(         
            progression[cheevo]["chapterIDprev"],
            progression[cheevo]["chapterID"],
            progression[cheevo]["roomIDprev"],
            progression[cheevo]["roomID"]
    ))
    //Simple resets for either being on title screen or opening the loading/new game menu
    &&
    (always_true() || never(
        //(chapterID==0 && roomID==0)||
        (prev(menuID)==loading && menuID == playing) || (prev(menuID) == newGame && menuID == playing) //|| (chapterID==0 && roomID==0)
        
    )
    )
    
    
   // && never(chapterID==0 && roomID==0) 
   &&
    //Initial for the challenge starting    
    once(challengeStart(challenge)) &&
    //Pause lock if challenge has started and the conditions went over the limit quantity
    disable_when(
   
    once(challengeStart(challenge)) &&
    tally(quantity,check), until = (chapterID==0 && roomID==0)
    )
    //&&
    //never(chapterID==0 && roomID==0)
    &&
    disable_when(
    prev(menuID)==loading &&
    menuID == playing &&
    chapterID == challenges[challenge]["chapterStart"] &&
    roomID >= challenges[challenge]["roomStart"]
    
    , until= (chapterID==0 && roomID==0))
    //
    
    return logic
}

for challenge in challenges{
    challengeLeaderboard(always_true(), "Speedrun", "Fastest time", "FRAMES", challenge)
    challengeLeaderboard(measured(tally(0,shotGun==1&&prev(shotGun)==0)), "Least Portals", "Least shots", "VALUE", challenge)
    challengeLeaderboard(steps!=prev(steps), "Least Steps", "Least steps", "VALUE", challenge)
    
    cheevo=challenges[challenge]["chamberCompletion"]+1
    frames=calculateFrames(challenges[challenge]["minutes"],challenges[challenge]["seconds"])
    achievement(
        "Chapter " + challenge + " - Speedrun",
        "Complete Chapter " + challenge  + " in less than " + challenges[challenge]["minutes"] + " minutes and " + challenges[challenge]["seconds"] + " seconds",
        challenges[challenge]["points"],    
        challengeCheevo(challenge, calculateFrames(challenges[challenge]["minutes"], challenges[challenge]["seconds"]), always_true(), cheevo)          
    )
    
    achievement(
        "Chapter " + challenge + " - Portals",
        "Complete Chapter " + challenge  + " in less than " + challenges[challenge]["portals"]+1 + " portal shots",
        5,
        challengeCheevo(challenge, challenges[challenge]["portals"]+1, shotGun==1&&prev(shotGun)==0, cheevo)      
    )
    
    achievement(
        "Chapter " + challenge + " - Steps",
        "Complete Chapter " + challenge  + " in less than " + challenges[challenge]["steps"] + " steps",
        5,
        challengeCheevo(challenge, challenges[challenge]["steps"], steps!=prev(steps), cheevo)   
    )
}



