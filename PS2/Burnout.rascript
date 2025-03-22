// Burnout
// #ID = 2693

championships = {
1:{"title":"Journeyman Has Started!", "description":"Journeyman Grand Prix", "points":10,"id":0x00,"quantity":3,"pos":2},
2:{"title":"Sprint Titan", "description":"Big Run Grand Prix", "points":10,"id":0x01,"quantity":3,"pos":1},
3:{"title":"Continental Champion", "description":"Euro Marathon", "points":10,"id":0x04,"quantity":1,"pos":1},
4:{"title":"Urban Dominator", "description":"Savage Streets Grand Prix", "points":10,"id":0x02,"quantity":3,"pos":1},
5:{"title":"Dusk Champion", "description":"Twilight Grand Prix", "points":10,"id":0x03,"quantity":3,"pos":1},
6:{"title":"Stateside Victor", "description":"USA Marathon", "points":25,"id":0x05,"quantity":1,"pos":1},
}

faceOffs = {
    1:{"title":"Twilight Roadster", "description":"Face-Off 1", "points":10,"address":0x00},
2:{"title":"Rush Truck", "description":"Face-Off 2", "points":10,"address":0x01},
3:{"title":"Night Saloon", "description":"Face-Off 3", "points":10,"address":0x02},
4:{"title":"Midnight Bus", "description":"Face-Off 4", "points":10,"address":0x03},
}

currentMode = dword(0x002f0550)
championship = 0x00
singleRace = 0x01
timeAttack = 0x03
special = 0x04

modes={
    0x00:"Championship",
    0x01:"Single Race",
    0x03:"Time Attack",
    0x04:"Special"
}

specialMode = dword(0x002e2230)
faceOff = 0x02
survival = 0x03

currentChampionship = dword(0x0037ed48)
currentRace = dword(0x0037ed4c)

currentFaceoff = dword(0x0037ed7c)
finishedRace = dword(0x003a6208) == 1 && prev(dword(0x003a6208)) == 0

currentPos = dword(0x003a6230)

inGame = dword(0x0037f068) == 0
menu = dword(0x0037f068) == 1

lastLapTime = float(0x003a6200)

tracks = {
0x00:"Interstate",
0x0b:"Harbor Town",
0x09:"River City",
0x02:"Hillside Pass",
0x0c:"Twilight Harbor",
0x04:"Gridlock USA",
0x0e:"Euro Marathon",
0x01:"Rush Hour",
0x0f:"Euro Marathon EX",
0x03:"Cliffhanger",
0x0a:"Midnight Run",
0x05:"Night Shift",
0x06:"Country Chaos",
0x0d:"Sunset River",
0x07:"USA Marathon",
0x08:"USA Marathon EX",
}

trackID = dword(0x003f4400)
currentLap = dword(0x003a61f0)

for track in tracks{
    leaderboard(
    title= "Time Attack - " + tracks[track], 
    description = "Fastest time", 
    start=
    inGame && currentMode == timeAttack && trackID == track && (finishedRace || currentLap == prev(currentLap) + 1)
    
    , 
    cancel = always_false(), 
    submit = always_true(), 
    value = lastLapTime*100, 
    format="MILLISECS", 
    lower_is_better=true)
}

function championshipLogic(id, quantity, pos){
    return
    currentMode == championship && currentChampionship == id && prev(currentRace) == quantity-1 && currentRace == quantity
}

for cheevo in championships{
    achievement(
        title = championships[cheevo]["title"],
        description = "Win the " + championships[cheevo]["description"],
        points = championships[cheevo]["points"],
        trigger = 
        championshipLogic(
            championships[cheevo]["id"],
            championships[cheevo]["quantity"],
            championships[cheevo]["pos"]
        )
    )
}

function faceOffLogic(id){
    return
    inGame && currentMode == special && specialMode == faceOff && currentFaceoff == id && currentPos == 1 && finishedRace
}

for cheevo in faceOffs{
    achievement(
        title = faceOffs[cheevo]["title"],
        description = "Win the " + faceOffs[cheevo]["description"],
        points = faceOffs[cheevo]["points"],
        trigger = 
        faceOffLogic(
            faceOffs[cheevo]["address"]

        )
    )
}

rich_presence_conditional_display(menu || trackID == 0xffffffff || trackID == 0x20, "In the Menu")
rich_presence_display("{1} | Racing in {0}", 
    rich_presence_lookup("Track", trackID, tracks),
    rich_presence_lookup("Mode", currentMode, modes)
)