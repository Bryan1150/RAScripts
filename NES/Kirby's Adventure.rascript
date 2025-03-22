// Kirby's Adventure
// #ID = 1479

worldData = {
    1:{"name":"Vegetable Valley", "id":0x00, "stages":4},
2:{"name":"Ice Cream Island", "id":0x01, "stages":5},
3:{"name":"Butter Building", "id":0x02, "stages":6},
4:{"name":"Grape Garden", "id":0x03, "stages":6},
5:{"name":"Yogurt Yard", "id":0x04, "stages":6},
6:{"name":"Orange Ocean", "id":0x05, "stages":6},
7:{"name":"Rainbow Resort", "id":0x06, "stages":6},
}

currentWorld = byte(0x0558)
enteredStage = byte(0x0559)
enteredWorld = byte(0x055a)
screenID = word(0x055e)
musicID = byte(0x0783)

cancelMusic = [
    0x22, 0x2c, 0x2d, 0x23, 0x24, 0x15, 0x06, 0x35
]

health = byte(0x0597)
lives = byte(0x0599)

function enteredLevel(world, stage){
    logic = 
    
    currentWorld == world &&
    enteredWorld == world &&
    enteredStage == stage &&
    prev(screenID) == world && screenID != world &&
    health != 0xff
    return logic
}

function died(){
    return lives == 0 && health == 0xff && prev(health) != 0xff
}

function finishedLevel(){
    return screenID == 0x2a && prev(screenID) != 0x2a
}

for world in worldData{
    for stage in range(1, worldData[world]["stages"]){
        leaderboard(
            title = worldData[world]["name"] + " - Stage " + stage, 
            description = "Fastest time", 
            start = enteredLevel(worldData[world]["id"], stage-1) && byte(0x055f) != 0xff
           
            , 
            cancel = died() || (any_of(cancelMusic, id=> musicID == id && prev(musicID) != musicID)),
            submit = finishedLevel(), 
            value = always_true(), 
            format="FRAMES", 
            lower_is_better=true
        )
    }

}
