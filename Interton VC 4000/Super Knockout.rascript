// Super Knockout
// #ID = 24640

Variation = byte(0x055a)
GameState = byte(0x055b)

Started = GameState == 0xff && prev(GameState) == 0x00
Ended = GameState == 0x00 && prev(GameState) == 0xff

Balls = byte(0x056a)

PaddleSize = byte(0x0564)

First2Digits = bcd(byte(0x0560))
Last2Digits = bcd(byte(0x055e))

Score = (Last2Digits*100) + First2Digits

function SinglePlayerCheck(variation){
    tempVariation = variation + 1
    result = false
    if(variation % 2 == 0){
        result = true
    }
    return result
}

function PickABrickCheck(variation){
    tempVariation = variation + 1
    result = false
    if(variation % 4 >= 2){
        result = true
    }
    return result
}

function CatchItCheck(variation){
    tempVariation = variation + 1
    result = false
    if(variation % 8 >= 4){
        result = true
    }
    return result
}

function InvisibleWallCheck(variation){
    tempVariation = variation + 1
    result = false
    if(variation % 16 >= 8){
        result = true
    }
    return result
}

function ObstaclesCheck(variation){
    tempVariation = variation + 1
    result = false
    if(variation % 32 >= 16){
        result = true
    }
    return result
}

function WipeOutCheck(variation){
    tempVariation = variation + 1
    result = false
    if(variation % 64 >= 32){
        result = true
    }
    return result
}

function BallsCheck(variation){
    tempVariation = variation + 1
    result = false
    if(variation % 128 >= 64){
        result = true
    }
    return result
}

function Achievevements(){
    for i in range(0,127){
        var = i+1
        title = ""
        cheevo = false
        scoreObjective = 200
        
        score = 5
        titleStuff = []
        lbStuff = []
        
        if(SinglePlayerCheck(i)){
            //title = title + "Single Player"
            cheevo = true
            
        }
        
        if(PickABrickCheck(i)){
            array_push(titleStuff, "Pick-a-brick")
        }
        
        if(CatchItCheck(i)){
            array_push(titleStuff, "Catch-it")
        }
        
        if(InvisibleWallCheck(i)){
            array_push(titleStuff, "Invisible Wall")
        }
        
        if(ObstaclesCheck(i)){
            array_push(titleStuff, "Obstacles")
        }
        
        if(WipeOutCheck(i)){
            array_push(titleStuff, "Wipe-Out")
            scoreObjective = 400
        }
        
        if(BallsCheck(i)){
            title = title +  "Balls"
            cheevo = false
        }
        counter = 0
        for thing in titleStuff{
            counter = counter+1
            title = title + thing
            if(counter != length(titleStuff)){
                title = title + " / "
            }
        }
        
        
        
        if(cheevo == true){
            achievement(
                title, 
                "[Game " + var + "] Obtain " + scoreObjective + " points",
                score, 
                GameState == 0xff &&
                (Variation == i) &&
                trigger_when(Last2Digits >= scoreObjective/100 && prev(Last2Digits) < scoreObjective/100)
            )
        }
        
        leaderboard(
            "Game " + var ,
            "Top Score",
            Variation == i && Ended,
            always_false(),
            always_true(),
            Score,
            "VALUE"
        )
        
    }
}

Achievevements()