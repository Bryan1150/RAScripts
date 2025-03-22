// Etrian Odyssey III: The Drowned City
// #ID = 6979

ASCIICheck = dword(0x3ffa80) == prev(dword(0x3ffa80)) && dword(0x3ffa80) == 0x414b4553

currentLocation = dword(0x0f1468)
viaSenatus = 0x0c

function missionCompleted(mission){
    return 
    ASCIICheck &&
    currentLocation == prev(currentLocation) &&
    currentLocation == viaSenatus &&
    mission > prev(mission)
}

preludeToTheForest = bit2(0x1f8c02)
achievement(
    "Senatus' Official Test",
    "Complete the mission \"Prelude to the Forest\"",
    5,
    missionCompleted(preludeToTheForest)
)



function mapSum(start, end, target){
    sum = 0
    protection = always_false()
    count = 0
    for tile in range(start,end){
        sum = sum + bitcount(tile) 
        sum = sum - (bit0(tile)*bit1(tile))
        count = count + 1
    }
    
    for tile in range(start, end, 4){
        protection = protection || (dword(tile) != prev(dword(tile)))
    }
    
    return measured(sum == target) && __ornext(protection)
}

firstFloorStart = 0x1f9d74
firstFloorEnd = 0x1fa18d

achievement(
"1st Map PENDING",
"Draw a map of the first floor",
5,

    mapSum(firstFloorStart, firstFloorEnd, 1000)

)