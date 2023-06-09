// ~Homebrew~ SuperFly DX
// #ID = 24088

CurrentRunDistance1stDigit = 0x4bc3
CurrentRunPickups1stDigit = 0x4bcd

TotalDistance = dword_be(0x4be2)
TotalPickups = dword_be(0x4be6)

SuperFlyStory = 68000
ReverseGravity = 240000
PauseEnabled = 320000

VersusChallenge = 100
KylieMode = 500
Accelerate = 1500
FullControls = 2000
MirrorMode = 4000

DeathCheck = low4(0x4bec) == 9 && prev(low4(0x4bec)) == 0
InGame = byte(0x7548) == 1

GameMode = byte(0x6a8b)
Freeflight = 0x01
Hunter = 0x02
Story = 0x03

World = byte(0x6a63)
Stage = byte(0x6a67)

One = 0x00
Two = 0x04
Three = 0x08
Four = 0x0c

Numbers = [One, Two, Three, Four]

function CalculateCurrentDistance(){
    sum = 0
    multiplier = 1
    for digit in range (CurrentRunDistance1stDigit, CurrentRunDistance1stDigit-7, -1 ){
        sum = sum + low4(digit) * multiplier
        multiplier = multiplier * 10
    }
    return sum
}

function CalculateCurrentPickups(){
    sum = 0
    multiplier = 1
    for digit in range (CurrentRunPickups1stDigit, CurrentRunPickups1stDigit-7, -1 ){
        sum = sum + low4(digit) * multiplier
        multiplier = multiplier * 10
    }
    return sum
}

achievement(
    "Starting Flight", "Reach 2500 Distance in a single run [Freeflight]", 2,
    InGame && GameMode <= Freeflight &&  CalculateCurrentDistance() >= 2500 && CalculateCurrentDistance() < 3000 && prev(CalculateCurrentDistance()) < 2500 
)

achievement(
    "Normal Flight", "Reach 5000 Distance in a single run [Freeflight]", 3,
    InGame && GameMode <= Freeflight &&  CalculateCurrentDistance() >= 5000 && CalculateCurrentDistance() < 5500 && prev(CalculateCurrentDistance()) < 5000 
)

achievement(
    "Long Flight", "Reach 10000 Distance in a single run [Freeflight]", 5,
    InGame && GameMode <= Freeflight &&  CalculateCurrentDistance() >= 10000 && CalculateCurrentDistance() < 10500 && prev(CalculateCurrentDistance()) < 10000 
)

achievement(
    "Decent Pick-Ups", "Obtain 25 Pick-Ups in a single run [Hunter]", 2,
    InGame && GameMode == Hunter && CalculateCurrentPickups() == 25 && prev(CalculateCurrentPickups()) == 24
)

achievement(
    "Great Pick-Ups", "Obtain 50 Pick-Ups in a single run [Hunter]", 3,
    InGame && GameMode == Hunter && CalculateCurrentPickups() == 50 && prev(CalculateCurrentPickups()) == 49
)

achievement(
    "Epic Pick-Ups", "Obtain 100 Pick-Ups in a single run [Hunter]", 5,
    InGame && GameMode == Hunter && CalculateCurrentPickups() == 100 && prev(CalculateCurrentPickups()) == 99
)

function CalculateDeltaMem(address, value){
    return measured(address >= value) && address < value+500 && prev(address) < value
}

function CalculateDeltaMem2(address, value){
    return measured(address == value) && prev(address) == value-1
}

achievement(
    "The Lore", "Unlock The SuperFly Story by reaching 68000 Total Distance", 5,
    InGame && GameMode <= Story && CalculateDeltaMem(TotalDistance, SuperFlyStory)
)

achievement(
    "Up is Down", "Unlock Reverse Gravity by reaching 240000 Total Distance", 10,
    InGame && GameMode <= Story && CalculateDeltaMem(TotalDistance, ReverseGravity)
)

achievement(
    "Za Warudo", "Unlock Pause Enabled by reaching 320000 Total Distance", 10,
    InGame && GameMode <= Story && CalculateDeltaMem(TotalDistance, PauseEnabled)
)

achievement(
    "1v1", "Unlock Versus Challenge by obtaining 100 Total Pick-Ups", 3,
    InGame && GameMode <= Story && CalculateDeltaMem2(TotalPickups, VersusChallenge)
)

achievement(
    "Recolor", "Unlock Kylie Mode by obtaining 500 Total Pick-Ups", 5,
    InGame && GameMode <= Story && CalculateDeltaMem2(TotalPickups, KylieMode)
)

achievement(
    "Press the Gas", "Unlock Accelerate by obtaining 1500 Total Pick-Ups", 5,
    InGame && GameMode <= Story && CalculateDeltaMem2(TotalPickups, Accelerate)
)

achievement(
    "In Total Control", "Unlock Full Controls by obtaining 2000 Total Pick-Ups", 10,
    InGame && GameMode <= Story && CalculateDeltaMem2(TotalPickups, FullControls)
)

achievement(
    "edoM rorriM", "Unlock Mirror Mode by obtaining 4000 Total Pick-Ups", 10,
    InGame && GameMode <= Story && CalculateDeltaMem2(TotalPickups, MirrorMode)
)

function StoryCheck(){
    return CalculateCurrentPickups() == 0 && prev(CalculateCurrentPickups()) == 1
}

achievement(
    "Under Da Sea", "Complete World 1 in The SuperFly Story", 5,
    InGame && GameMode == Story && World == One && Stage == Four && StoryCheck()
)

achievement(
    "Up Through The Magma", "Complete World 2 in The SuperFly Story", 10,
    InGame && GameMode == Story && World == Two && Stage == Four && StoryCheck()
)

achievement(
    "Up, Up and Away!", "Complete World 3 in The SuperFly Story", 10,
    InGame && GameMode == Story && World == Three && Stage == Four && StoryCheck()
)

achievement(
    "The Space Race", "Complete World 4 in The SuperFly Story", 25,
    InGame && GameMode == Story && World == Four && Stage == Four && StoryCheck()
)

function leaderboardDistance(stage, world, title){
    leaderboard(
        title, "Most Distance",
        InGame && GameMode <= Freeflight && DeathCheck && Stage == stage && World == world, 
        
        always_false(), always_true(),
        measured(CalculateCurrentDistance()),
        "VALUE",
        false
    )
}

function leaderboardPickups(stage, world, title){
    leaderboard(
        title, "Most Pickups",
        InGame && GameMode == Hunter && DeathCheck && Stage == stage && World == world, 
        
        always_false(), always_true(),
        measured(CalculateCurrentPickups()),
        "VALUE",
        false
    )
}



for valueTwo in range(1,4){
    for value in range(1,4){
        leaderboardDistance(Numbers[value-1], Numbers[valueTwo-1], "Freeflight: " + valueTwo + "-" + value)
        
    }
}

for valueTwo in range(1,4){
    for value in range(1,4){
        leaderboardPickups(Numbers[value-1], Numbers[valueTwo-1], "Pickups: " + valueTwo + "-" + value)
        
    }
}




