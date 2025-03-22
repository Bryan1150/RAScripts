// Burnout Dominator
// #ID = 5758

gameState = dword(0x562bb8)

inGame = 0x01

function saveProtection(){
    return gameState == inGame && prev(gameState) == inGame
}

function DeltaMem(address,value){

    logic = saveProtection() &&
    measured(dword(address) >= value) &&
    prev(dword(address)) < value

    
    return logic
}

DeltaMemCheevos = {1:{"title":"Factory Series", "description":"Earn 500 dominator points", "points":5,"address":0x55e470,"value":500},
2:{"title":"Tuned Series", "description":"Earn 1,200 dominator points", "points":5,"address":0x55e470,"value":1200},
3:{"title":"Hotrod Series", "description":"Earn 2,000 dominator points", "points":5,"address":0x55e470,"value":2000},
4:{"title":"Super Series", "description":"Earn 3,000 dominator points", "points":5,"address":0x55e470,"value":3000},
5:{"title":"Race Specials", "description":"Earn 4,500 dominator points", "points":5,"address":0x55e470,"value":4500},
6:{"title":"Dominator Series", "description":"Earn 6,000 dominator points", "points":5,"address":0x55e470,"value":6000},}

for achievement in DeltaMemCheevos{
    achievement(
        DeltaMemCheevos[achievement]["title"], DeltaMemCheevos[achievement]["description"], DeltaMemCheevos[achievement]["points"], DeltaMem(DeltaMemCheevos[achievement]["address"], DeltaMemCheevos[achievement]["value"])
    )
}

bronzeCheevos = {
    1:{"title":"Classic Ace", "description":"Get bronze or better in the Classic Series Grand Prix", "points":5,"address":0x55e47f,"value":500},
2:{"title":"Factory Racer", "description":"Get bronze or better in the Factory Series Grand Prix", "points":5,"address":0x55e48c,"value":1200},
3:{"title":"Tuned Titan", "description":"Get bronze or better in the Tuned Series Grand Prix", "points":5,"address":0x55e499,"value":2000},
4:{"title":"Hot Rod Hero", "description":"Get bronze or better in the Hot Rod Series Grand Prix", "points":5,"address":0x55e4a6,"value":3000},
5:{"title":"Super Sprinter", "description":"Get bronze or better in the Super Series Grand Prix", "points":5,"address":0x55e4b3,"value":4500},
6:{"title":"Race Specialist", "description":"Get bronze or better in the Race Specials Grand Prix", "points":5,"address":0x55e4c0,"value":6000},
7:{"title":"Dominator Dynamo", "description":"Get bronze or better in the Dominator Series Grand Prix", "points":10,"address":0x55e4ca,"value":30},
}

bronze = 0x04
silver = 0x05
gold = 0x06

function Bronze(address){
    return saveProtection() && byte(address) >= bronze && byte(address) <= gold && prev(byte(address)) < bronze
}

for achievement in bronzeCheevos{
    achievement(
        bronzeCheevos[achievement]["title"],
        bronzeCheevos[achievement]["description"],
        bronzeCheevos[achievement]["points"],
        Bronze(bronzeCheevos[achievement]["address"])
    )
}

goldMedals = {
    1:{"title":"Classic Series - Golden Racer", "description":"Earn all gold medals in the Classic Series", "points":10,"start":0x55e474,"end":0x55e480},
2:{"title":"Factory Series - Golden Racer", "description":"Earn all gold medals in the Factory Series", "points":10,"start":0x55e481,"end":0x55e48d},
3:{"title":"Tuned Series - Golden Racer", "description":"Earn all gold medals in the Tuned Series", "points":10,"start":0x55e48e,"end":0x55e49a},
4:{"title":"Hotrod Series - Golden Racer", "description":"Earn all gold medals in the Hotrod Series", "points":10,"start":0x55e49b,"end":0x55e4a7},
5:{"title":"Super Series - Golden Racer", "description":"Earn all gold medals in the Super Series", "points":10,"start":0x55e4a8,"end":0x55e4b4},
6:{"title":"Race Specials - Golden Racer", "description":"Earn all gold medals in the Race Specials", "points":10,"start":0x55e4b5,"end":0x55e4c1},
7:{"title":"Dominator Series - Golden Racer", "description":"Earn all gold medals in the Dominator Series", "points":10,"start":0x55e4c2,"end":0x55e4cb},
}



function goldMedals(start, end){
    sum = 0
    count = 0
    for medal in range(start,end){
        sum = sum + (bit1(medal) * bit2(medal))
        count = count + 1
    }
    return 
    saveProtection() && measured(sum == count) && prev(sum) == count - 1
}

achievement(
    "all gold medals", "",
    0,
    goldMedals(0x55e474, 0x55e4cb)
)

for achievement in goldMedals{
    achievement(
        goldMedals[achievement]["title"],
        goldMedals[achievement]["description"],
        goldMedals[achievement]["points"],
        goldMedals(goldMedals[achievement]["start"], goldMedals[achievement]["end"])
    )
}

trophies = {
    1:{"title":"Newcomer Achiever", "description":"Complete all 7 rookie trophy challenges", "points":10,"addresses":[bit0(0x55e598), bit1(0x55e598), bit2(0x55e598), bit3(0x55e598), bit4(0x55e598), bit5(0x55e598), bit6(0x55e598)]},
2:{"title":"Bold Challenger", "description":"Complete all 7 reckless trophy challenges", "points":10,"addresses":[bit7(0x55e598), bit0(0x55e599), bit1(0x55e599), bit2(0x55e599), bit3(0x55e599), bit4(0x55e599), bit5(0x55e599)]},
3:{"title":"Brave Conqueror", "description":"Complete all 7 fearless trophy challenges", "points":10,"addresses":[bit6(0x55e599), bit7(0x55e599), bit0(0x55e59a), bit1(0x55e59a), bit2(0x55e59a), bit3(0x55e59a), bit4(0x55e59a)]},
4:{"title":"Crazy Champion", "description":"Complete all 7 maniac trophy challenges", "points":25,"addresses":[bit5(0x55e59a), bit6(0x55e59a), bit7(0x55e59a), bit0(0x55e59b), bit1(0x55e59b), bit2(0x55e59b), bit3(0x55e59b)]},
5:{"title":"Supreme Dominance", "description":"Complete all 7 dominator trophy challenges", "points":50,"addresses":[bit4(0x55e59b), bit5(0x55e59b), bit6(0x55e59b), bit7(0x55e59b), bit0(0x55e59c), bit1(0x55e59c), bit2(0x55e59c)]},
}

function bitsum(array){
    sum = 0
    count = 0
    for item in array{
        sum = sum+item
        count = count + 1
    }
    return saveProtection() &&  measured(sum == count) && prev(sum) < count
}

for achievement in trophies{
    achievement(
        trophies[achievement]["title"],
        trophies[achievement]["description"],
        trophies[achievement]["points"],
        bitsum(trophies[achievement]["addresses"])
    )
}

singleBits = {
    1:{"title":"American Classic", "description":"Earn 10,000 maniac points in the Classic Series - Maniac Event at Glacier Falls", "points":5,"address":bit1(0x55e578)},
2:{"title":"Burnout Classic", "description":"Perform a 2X Burnout during the Classic Series - Race Event at Black Gold Highway", "points":5,"address":bit3(0x55e578)},
3:{"title":"Drift Classic", "description":"Drift 3,000 ft or more in the Classic Series - Rage Event at Glacier Falls", "points":5,"address":bit0(0x55e578)},
4:{"title":"Euro Classic", "description":"Takedown the Euro Classic in the Classic Series - Race Event at Spiritual Towers", "points":5,"address":bit2(0x55e578)},
5:{"title":"Low Rider", "description":"Earn a gold medal in the Classic Series - Dominator Challenge", "points":5,"address":bit4(0x55e578)},
6:{"title":"American Drifter", "description":"Drift 3,000 ft or more in the Factory Series - Drift Challenge event at Glacier Falls", "points":5,"address":bit0(0x55e579)},
7:{"title":"Limited ST", "description":"Get 15 near-misses in the Factory Series - Race Challenge at Glacier Falls", "points":5,"address":bit7(0x55e578)},
8:{"title":"J Coupe", "description":"Takedown the J Coupe twice in the Factory Series - Race Event at Tuscan Hills", "points":5,"address":bit6(0x55e578)},
9:{"title":"Factory Sports", "description":"Earn 50,000 Maniac Points in the Factory Series - Maniac Event at Black Gold Highway", "points":5,"address":bit5(0x55e578)},
10:{"title":"Factory GT", "description":"Earn a gold medal in the Factory Series - Dominator Challenge", "points":5,"address":bit1(0x55e579)},
11:{"title":"Tuned Drifter", "description":"Drift 9,000 ft in the Tuned Series - Race Event at Bushido Valley", "points":5,"address":bit2(0x55e579)},
12:{"title":"Custom Coupe Ultimate", "description":"Perform a 2X Burnout Chain in the Tuned Series - Near Miss Challenge at Autobahn", "points":5,"address":bit3(0x55e579)},
13:{"title":"Works M-Type", "description":"Earn 50,000 maniac points in the Tuned Series - Maniac Event at Autobahn", "points":5,"address":bit5(0x55e579)},
14:{"title":"Tuned Muscle", "description":"Takedown the Tuned Muscle three times in the Tuned Series - Race Event at Steeltown Works", "points":5,"address":bit4(0x55e579)},
15:{"title":"Super Coupe", "description":"Earn a gold medal in the Tuned Series - Dominator Challenge", "points":5,"address":bit6(0x55e579)},
16:{"title":"Assassin", "description":"Earn 150,000 maniac points in the Hot Rod Series - Maniac Event at Ocean Drive", "points":5,"address":bit0(0x55e57a)},
17:{"title":"Street Dodger", "description":"Get 15 near-misses in the Hot Rod Series - Race Event at Autobahn Loop", "points":5,"address":bit2(0x55e57a)},
18:{"title":"Custom Hot Rod", "description":"Drift 9,000 ft in the Hot Rod Series - Maniac Event at Spiritual Gate", "points":5,"address":bit1(0x55e57a)},
19:{"title":"Street Rod", "description":"Perform a 4X Burnout Chain in the Hot Rod - Burnout Challenge at Tuscan View ", "points":5,"address":bit7(0x55e579)},
20:{"title":"Charger", "description":"Earn a gold medal in the Hot Rod Series - Dominator Challenge", "points":5,"address":bit3(0x55e57a)},
21:{"title":"Euro Super", "description":"Earn 100,000 maniac points in the Super Series - Maniac Event at Bushido Valley", "points":5,"address":bit7(0x55e57a)},
22:{"title":"American Super", "description":"Drift 9,000 ft in the Super Series - Road Rage event at Tuscan Hills", "points":5,"address":bit4(0x55e57a)},
23:{"title":"Super Muscle", "description":"Takedown the Super Muscle 3 times in the Super Seroes - Race Event at Bushido Peak", "points":5,"address":bit6(0x55e57a)},
24:{"title":"Works GT", "description":"Perform a 3X Burnout in the Super Series -  Maniac Event at Tuscan Hills", "points":5,"address":bit5(0x55e57a)},
25:{"title":"Super Prototype", "description":"Earn a gold medal in the Super Series - Dominator Challenge", "points":5,"address":bit0(0x55e57b)},
26:{"title":"Oval Racer", "description":"Drift over 15,000 ft in the Race Specials - Maniac event at Ocean Drive", "points":5,"address":bit1(0x55e57b)},
27:{"title":"US Circuit Racer", "description":"Takedown the US Circuit Racer 3 times in he Race Specials - Race at Steeltown Works", "points":5,"address":bit2(0x55e57b)},
28:{"title":"World Circuit Racer", "description":"Perform a 3X Burnout in the Race Specials -  Burnout Challenge at Spiritual Towers", "points":5,"address":bit3(0x55e57b)},
29:{"title":"Euro Classic LM", "description":"Earn 140,000 maniac points in the Race Specials - Maniac Event at Black Gold Highway ", "points":5,"address":bit4(0x55e57b)},
30:{"title":"GT Racer", "description":"Earn a gold medal in the Race Specials - Dominator Challenge", "points":5,"address":bit5(0x55e57b)},
31:{"title":"Squeeze Master", "description":"Unlock the Tight Squeeze signature shortcut", "points":5,"address":bit6(0x55e5b8)},
32:{"title":"Dusty Diver", "description":"Unlock the Dusty Detour signature shortcut", "points":5,"address":bit7(0x55e5b8)},
33:{"title":"Chaos Pilot", "description":"Unlock the Construction Destruction signature shortcut", "points":5,"address":bit1(0x55e5b9)},
34:{"title":"Banned Racer", "description":"Unlock the Banned from the 'Bahn signature shortcut", "points":5,"address":bit2(0x55e5b9)},
35:{"title":"Elevated Expert", "description":"Unlock the Higher Ground signature shortcut", "points":5,"address":bit4(0x55e5b9)},
36:{"title":"Fuel Finder", "description":"Unlock the Gas Shortage signature shortcut", "points":5,"address":bit5(0x55e5b9)},
37:{"title":"Alley Ace", "description":"Unlock the Back Alley Run signature shortcut", "points":5,"address":bit7(0x55e5b9)},
38:{"title":"Skyline Surfer", "description":"Unlock the Bridge Blast Out signature shortcut", "points":5,"address":bit0(0x55e5ba)},
39:{"title":"Tunnel Tact", "description":"Unlock the Tunnel Trouble signature shortcut", "points":5,"address":bit2(0x55e5ba)},
40:{"title":"Lucky Racer", "description":"Unlock the Lucky Dip signature shortcut", "points":5,"address":bit3(0x55e5ba)},
41:{"title":"Urban Trail", "description":"Unlock the Midtown Mayhem signature shortcut", "points":5,"address":bit5(0x55e5ba)},
42:{"title":"Hit Hopper", "description":"Unlock the Hit Factory signature shortcut", "points":5,"address":bit6(0x55e5ba)},
43:{"title":"Curve Cutter", "description":"Unlock the Corner Cutter signature shortcut", "points":5,"address":bit0(0x55e5b8)},
44:{"title":"Trail Tamer", "description":"Unlock the Trail Blazer signature shortcut", "points":5,"address":bit1(0x55e5b8)},
45:{"title":"Mayhem Maverick", "description":"Unlock the Wholesale Mayhem signature shortcut", "points":5,"address":bit0(0x55e5bb)},
46:{"title":"Gold Hunter", "description":"Unlock the Gold Digger signature shortcut", "points":5,"address":bit1(0x55e5bb)},
}

function singleBit(bit){
    return saveProtection() && bit > prev(bit)
}

for achievement in singleBits{
    achievement(
        singleBits[achievement]["title"],
        singleBits[achievement]["description"],
        singleBits[achievement]["points"],
        singleBit(singleBits[achievement]["address"])
    )
}




currentTrack = dword(0x00432df8)

raceState = dword(0x01e89f50)
started = 0x02
finished = 0x03


challengeType = dword(0x01ca70c8)
Race=0x00
TimeAttack=0x02
RoadRage=0x03
Maniac=0x04
Eliminator=0x06

currentMode = dword(0x0043aab8)
recordBreaker = 0x522c756e

raceTimer = float(0x01e89f3c) * 100
maniacScore = dword(0x01eb4aec)
takedowns = dword(0x01eb4b38)
bestLap = float(0x01e89f4c) * 100

tracks={
0x00: "Tuscan Hills",
0x01: "Tuscan Hills - Reverse",
0x02: "Tuscan View",
0x03: "Tuscan View - Reverse",
0x04: "Autobahn",
0x05: "Autobahn - Reverse",
0x06: "Autobahn Loop",
0x07: "Autobahn Loop - Reverse",
0x08: "Bushido Peak",
0x09: "Bushido Peak - Reverse",
0x0a: "Bushido Valley",
0x0b: "Bushido Valley - Reverse",
0x0c: "Spiritual Towers",
0x0d: "Spiritual Towers - Reverse",
0x0e: "Spiritual Gate",
0x0f: "Spiritual Gate - Reverse",
0x10: "Ocean Drive",
0x11: "Ocean Drive - Reverse",
0x12: "Steeltown Works",
0x13: "Steeltown Works - Reverse",
0x14: "Glacier Falls",
0x15: "Glacier Falls - Reverse",
0x16: "Black Gold Highway",
0x17: "Black Gold Highway - Reverse",
}

finishedRace = raceState == finished && prev(raceState) == started

function raceLB(track){
    leaderboard(
    title=tracks[track] + " - Race", 
    description = "Record breaker - Fastest time", 
    start=
    saveProtection() &&
    currentMode == recordBreaker &&
    challengeType == Race && 
    currentTrack == track &&
    finishedRace
    , 
    cancel=always_false(), 
    submit= always_true(), 
    value=raceTimer, 
    format="MILLISECS", 
    lower_is_better=true)    
}

function timeAttackLB(track){
    leaderboard(
    title=tracks[track] + " - Time Attack", 
    description = "Record breaker - Fastest lap", 
    start=
    saveProtection() &&
    currentMode == recordBreaker &&
    challengeType == TimeAttack && 
    currentTrack == track &&
    finishedRace
    , 
    cancel=always_false(), 
    submit= always_true(), 
    value=bestLap, 
    format="MILLISECS", 
    lower_is_better=true)    
}

function takedownsLB(track){
    leaderboard(
    title=tracks[track] + " - Road Rage", 
    description = "Record breaker - Most takedowns", 
    start=
    saveProtection() &&
    currentMode == recordBreaker &&
    challengeType == RoadRage && 
    currentTrack == track &&
    finishedRace
    , 
    cancel=always_false(), 
    submit= always_true(), 
    value=takedowns, 
    format="VALUE", 
    lower_is_better=false)    
}


function maniacLB(track){
    leaderboard(
    title=tracks[track] + " - Maniac", 
    description = "Record breaker - Most points", 
    start=
    saveProtection() &&
    currentMode == recordBreaker &&
    challengeType == Maniac && 
    currentTrack == track &&
    finishedRace
    , 
    cancel=always_false(), 
    submit= always_true(), 
    value=maniacScore, 
    format="VALUE", 
    lower_is_better=false)    
}

for track in tracks{
    raceLB(track)
    timeAttackLB(track)
    takedownsLB(track)
    maniacLB(track)
}
