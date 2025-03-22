// ~Homebrew~ Famidash
// #ID = 29741

currentLevel = byte(0x0475)
gameState = byte(0x0321)
playing = 0x02
win = 0x03

coinOffset = 0x40

practiceMode = bit0(0x04b2)
platformerMode = bit2(0x65a6)
retroMode = bit0(0x65af)
camSeesaw = bit0(0x65b3)

levels={
1:{"name":"Stereo Madness","id":0,"coins":0x6404,"levelTitle":"Stereo Madness!","coinsTitle":"Coins?!","pointCoins":5,"points":2},
2:{"name":"Back On Track","id":1,"coins":0x6405,"levelTitle":"Back On Track!","coinsTitle":"Maybe Behind That Block?","pointCoins":5,"points":3},
3:{"name":"Polargeist","id":2,"coins":0x6406,"levelTitle":"Polargeist!","coinsTitle":"I.. Need... MORE!","pointCoins":5,"points":4},
4:{"name":"Dry Out","id":3,"coins":0x6407,"levelTitle":"Dry Out!","coinsTitle":"We Wants It!","pointCoins":5,"points":5},
5:{"name":"Base after Base","id":4,"coins":0x6408,"levelTitle":"Base After Base!","coinsTitle":"We Needs It!","pointCoins":5,"points":5},
6:{"name":"Cant Let Go","id":5,"coins":0x6409,"levelTitle":"Cant Let Go!","coinsTitle":"Must Have the Precious","pointCoins":5,"points":5},
7:{"name":"Jumper","id":6,"coins":0x640a,"levelTitle":"Jumper!","coinsTitle":"They Stole It From Us!","pointCoins":10,"points":10},
8:{"name":"Time Machine","id":7,"coins":0x640b,"levelTitle":"Time Machine!","coinsTitle":"Where Is It?! Where Is It!?","pointCoins":10,"points":10},
9:{"name":"Cycles","id":8,"coins":0x640c,"levelTitle":"Cycles!","coinsTitle":"Thief, Thief, Thief!","pointCoins":10,"points":10},
10:{"name":"xStep","id":9,"coins":0x640d,"levelTitle":"xStep!","coinsTitle":"My Precious...","pointCoins":10,"points":10},
11:{"name":"Clutterfunk","id":10,"coins":0x640e,"levelTitle":"Clutterfunk!","coinsTitle":"There’s More!?","pointCoins":10,"points":10},
12:{"name":"Electroman Adventures","id":12,"coins":0x6410,"levelTitle":"Electroman Adventures!","coinsTitle":"Found It Under a Rock!","pointCoins":10,"points":10},
13:{"name":"The Nightmare","id":13,"coins":0,"levelTitle":"The Nightmare!","coinsTitle":"a","pointCoins":0,"points":25},
}

function completeLevel(levelID){
    return
    currentLevel == levelID && prev(gameState) == playing && gameState == win && practiceMode == 0
}

function sumCoins(address){
    sum = 0
    sum = sum + byte(address) + byte(address + coinOffset) + byte(address + (coinOffset)*2)
    return sum
}

function allCoins(address){
    return
    (gameState == playing || gameState == win) 
    
    && measured(sumCoins(address) == 3) && prev(sumCoins(address)) < 3 
}

for level in levels{
    achievement(
        title = levels[level]["levelTitle"],
        description = "Complete " + levels[level]["name"] + " in Normal Mode",
        points = levels[level]["points"],
        trigger = completeLevel(levels[level]["id"]),
        type="Progression"
        
    )
}

for level in levels{
    achievement(
        levels[level]["coinsTitle"],
        "Collect all 3 coins in " + levels[level]["name"] ,
        levels[level]["pointCoins"],
        allCoins(levels[level]["coins"])    
    )
}

//Beat a level in platformer mode
achievement(
    title = "2.2 wen",
    description = "Beat a level in platformer mode",
    points = 2,
    
    trigger =  prev(gameState) == playing && trigger_when(gameState == win) && practiceMode == 0 && platformerMode == 1
)
//Beat a level in retro mode
achievement(
    title = "Geometry Bros",
    description = "Beat a level in retro mode",
    points = 2,
    
    trigger =  prev(gameState) == playing && trigger_when(gameState == win) && practiceMode == 0 && retroMode == 1
)

//Beat a level with Cam Seesaw active
achievement(
    title = "Don't Get Dizzy",
    description = "Beat a level with Cam Seesaw active",
    points = 2,
    
    trigger =  prev(gameState) == playing && trigger_when(gameState == win) && practiceMode == 0 && camSeesaw == 1
)


//