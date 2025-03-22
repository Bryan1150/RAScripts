// Stuart Little 3: Big Photo Adventure
// #ID = 21138

stageID = dword(0x003a42c8)
Garden = 0x0b
Forest = 0x09
Street = 0x0a
Lake = 0x0c
House = 0x08

currentSaveSlot = dword(0x003b6720)

currentPausedOption = byte(0x00326863)
Load = 0x02
saveProtection = currentPausedOption != Load

function DeltaMem(address,value){
    return
    measured(address == value) && prev(address) == value-1
}

Progression = {
1:{"title":"Garden Freelancer", "description":"Take 3 photos in the Garden", "points":3, "stageID":Garden, "address":byte(0x003a42d0),"value":3},
2:{"title":"Garden Paparazzo", "description":"Take 6 photos in the Garden", "points":5, "stageID":Garden, "address":byte(0x003a42d0),"value":6},
3:{"title":"Garden Camera Mouse", "description":"Take all the photos in the Garden", "points":10, "stageID":Garden, "address":byte(0x003a42d0),"value":10},
4:{"title":"Garden Snacks", "description":"Find all of Snowbell's cat snacks in the Garden", "points":5, "stageID":Garden, "address":dword(0x003a4344),"value":6},
5:{"title":"Forest Freelancer", "description":"Take 3 photos in the Forest", "points":3, "stageID":Forest, "address":byte(0x003a42db),"value":3},
6:{"title":"Forest Paparazzo", "description":"Take 6 photos in the Forest", "points":5, "stageID":Forest, "address":byte(0x003a42db),"value":6},
7:{"title":"Forest Camera Mouse", "description":"Take all the photos in the Forest", "points":10, "stageID":Forest, "address":byte(0x003a42db),"value":10},
8:{"title":"Forest Snacks", "description":"Find all of Snowbell's cat snacks in the Forest", "points":5, "stageID":Forest, "address":dword(0x003a4348),"value":6},
9:{"title":"Street Freelancer", "description":"Take 3 photos in the Street", "points":3, "stageID":Street, "address":byte(0x003a42e6),"value":3},
10:{"title":"Street Paparazzo", "description":"Take 6 photos in the Street", "points":5, "stageID":Street, "address":byte(0x003a42e6),"value":6},
11:{"title":"Street Camera Mouse", "description":"Take all the photos in the Street", "points":10, "stageID":Street, "address":byte(0x003a42e6),"value":10},
12:{"title":"Street Snacks", "description":"Find all of Snowbell's cat snacks in the Street", "points":5, "stageID":Street, "address":dword(0x003a434c),"value":6},
13:{"title":"Lake Freelancer", "description":"Take 3 photos in the Lake", "points":3, "stageID":Lake, "address":byte(0x003a42f1),"value":3},
14:{"title":"Lake Paparazzo", "description":"Take 6 photos in the Lake", "points":5, "stageID":Lake, "address":byte(0x003a42f1),"value":6},
15:{"title":"Lake Camera Mouse", "description":"Take all the photos in the Lake", "points":10, "stageID":Lake, "address":byte(0x003a42f1),"value":10},
16:{"title":"Lake Snacks", "description":"Find all of Snowbell's cat snacks in the Lake", "points":5, "stageID":Lake, "address":dword(0x003a4350),"value":6},
17:{"title":"House Freelancer", "description":"Take 3 photos in the House", "points":3, "stageID":House, "address":byte(0x003a42fc),"value":3},
18:{"title":"House Paparazzo", "description":"Take 6 photos in the House", "points":5, "stageID":House, "address":byte(0x003a42fc),"value":6},
19:{"title":"House Camera Mouse", "description":"Take all the photos in the House", "points":10, "stageID":House, "address":byte(0x003a42fc),"value":10},
20:{"title":"House Snacks", "description":"Find all of Snowbell's cat snacks in the House", "points":5, "stageID":House, "address":dword(0x003a4354),"value":6},
}

Races = {
1:{"title":"Quad Bike Racing", "description":"Complete the Quad Bike Race in less than 52 seconds in the Garden", "points":5, "stageID":Garden, "eventID":0x00,"minutes":0,"seconds":52},
2:{"title":"Hovercraft Racing", "description":"Complete the Hovercraft Race in less than 1 minute and 20 seconds in the Forest", "points":5, "stageID":Forest, "eventID":0x0e,"minutes":1,"seconds":20},
3:{"title":"Buggy Racing", "description":"Complete the Buggy Race in less than 1 minute and 34 seconds in the Forest", "points":5, "stageID":Forest, "eventID":0x00,"minutes":1,"seconds":34},
4:{"title":"Taxi Racing", "description":"Complete the Taxi Race in less than 2 minutes and 10 seconds in the Street", "points":5, "stageID":Street, "eventID":0x00,"minutes":2,"seconds":10},
5:{"title":"Roadster Racing", "description":"Complete the Roadster Race in less than 1 minute and 51 seconds in the Street", "points":5, "stageID":Street, "eventID":0x0e,"minutes":1,"seconds":51},
6:{"title":"Speedboat Racing", "description":"Complete the Speedboat Race in less than 1 minute and 37 seconds in the Lake", "points":5, "stageID":Lake, "eventID":0x00,"minutes":1,"seconds":37},
7:{"title":"Jet Ski Racing", "description":"Complete the Jet Ski Race in less than 1 minute and 38 seconds in the Lake", "points":5, "stageID":Lake, "eventID":0x0e,"minutes":1,"seconds":38},
8:{"title":"Quad Bike Racing 2", "description":"Complete the Quad Bike Race in less than 2 minutes and 13 seconds in the Lake", "points":5, "stageID":Lake, "eventID":0x0f,"minutes":2,"seconds":13},
}

Golf = {
1:{"title":"Mouse Woods", "description":"Complete the Golf Course in less than 22 strokes in the Garden", "points":5, "stageID":Garden, "eventID":"Garden","strokes":22},
2:{"title":"Mouse Woods 2", "description":"Complete the Golf Course with less than 28 strokes in the Forest", "points":10, "stageID":Forest, "eventID":"Forest","strokes":28},
3:{"title":"Mouse Woods 3", "description":"Complete the Golf Course with less than 27 strokes in the Street", "points":10, "stageID":Street, "eventID":"Street","strokes":27},
4:{"title":"Mouse Woods 4", "description":"Complete the Golf Course with less than 25 strokes in the Lake", "points":10, "stageID":Lake, "eventID":"Lake","strokes":25},
5:{"title":"Mouse Woods 5", "description":"Complete the Golf Course with less than 29 strokes in the House", "points":10, "stageID":House, "eventID":"House","strokes":29},
}

for cheevo in Progression{
    achievement(
        title = Progression[cheevo]["title"],
        description = Progression[cheevo]["description"],
        points = Progression[cheevo]["points"],
        trigger = saveProtection && stageID == Progression[cheevo]["stageID"] && DeltaMem(Progression[cheevo]["address"], Progression[cheevo]["value"])
    )
}

eventID = dword(0x00324404)
eventIndicator = dword(0x003243fc)

RacePointer = dword(0x0032618c)
raceFinished = dword(RacePointer + 0xbc)

raceHUD = dword(0x00321f68)

function calculateFrames(minutes,seconds){
    return (minutes*3600) + (seconds * 60)
}

function raceLogic(stageId, eventId, minutes, seconds){
    logic = 
    eventID == eventId && trigger_when(raceFinished == 1 && prev(raceFinished) == 0) &&
    
    disable_when(
    tally(calculateFrames(minutes,seconds), stageID == stageId && eventId == eventId && eventIndicator != 0 && once(raceHUD == 3 && prev(raceHUD) == 2))    
    , until= stageID != stageId|| eventIndicator == 0)
    
    return logic
}

for race in Races{
    achievement(
        title = Races[race]["title"],
        description = Races[race]["description"],
        points = Races[race]["points"],
        trigger = 
        raceLogic(
            Races[race]["stageID"],
            Races[race]["eventID"],
            Races[race]["minutes"],
            Races[race]["seconds"]
        )
    )
        
    leaderboard(
    title = Races[race]["title"] + " Fastest Time", 
    description = "", 
    start = 
    stageID == Races[race]["stageID"] && eventID == Races[race]["eventID"] && eventIndicator != 0 && raceHUD == 3 && prev(raceHUD) == 2, 
    cancel = 
    stageID != Races[race]["stageID"] || eventIndicator == 0, 
    submit =
    raceFinished == 1 && prev(raceFinished) == 0, 
    value =
    always_true(), 
    format="FRAMES", 
    lower_is_better=true
    )
}

FirstHole = 0x003255c8
LastHole = 0x003255e8

currentHole = dword(0x003256c4)
golfState = dword(0x00325768)

function holesCheck(){
    logic = always_true()
    for hole in range(FirstHole, LastHole,4){
        logic = logic && dword(hole) != 0
    }
    return logic
}

function holesSum(){
    sum = 0
    for hole in range(FirstHole, LastHole,4){
        sum = sum + dword(hole)
    }
    return sum
}


function golfLogic(stageId, strokes){
    logic = always_true()
    logic = logic &&
    stageID == stageId && eventID == 0x03 && eventIndicator != 0 && trigger_when(holesCheck()) && holesSum() < strokes && trigger_when(currentHole == 8 && golfState == 0x0a && prev(golfState) != 0x0a)  
    
    return logic
}

for golf in Golf{
    achievement(
        title = Golf[golf]["title"],
        description = Golf[golf]["description"],
        points = Golf[golf]["points"],
        trigger = golfLogic(Golf[golf]["stageID"], Golf[golf]["strokes"])
    )
    
    leaderboard(
    title = Golf[golf]["eventID"] + " Golf Course Less Strokes", 
    description = "", 
    start = 
    stageID == Golf[golf]["stageID"] && eventID == 0x03 && eventIndicator != 0 && holesCheck() && currentHole == 8 && golfState == 0x0a && prev(golfState) != 0x0a, 
    
    cancel = 
    always_false(), 
    
    submit =
    always_true(),
  
    value =
    holesSum(), 
    format="VALUE", 
    lower_is_better=true
    )
}