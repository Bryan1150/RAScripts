// Sonic Unleashed
// #ID = 19798

PointerToInGameStuff = dword(0x00875de4)

InGame = dword(PointerToInGameStuff + 0x30)

InGameCheck = InGame == 1

CurrentSaveFile = byte(0x008737fe)

function BasicProtection(){
    InGameCheck && CurrentSaveFile == prev(CurrentSaveFile)
}

CurrentCharacter = byte(0x008734a0)
Sonic = CurrentCharacter == 0
Werehog = CurrentCharacter == 1

TotalSunMedals = byte(0x008922f0)
TotalMoonMedals = byte(0x008922f1)
CurrentTime = float(0x00875d78)
CurrentStage = byte(0x0087f838)

StageCleared = byte(0x00875d84) == 1 && prev(byte(0x00875d84)) == 0

FirstItem = 0x00895040
LastItem = 0x0089539c

TotalGaiaForce = dword(0x00894ffc)
LevelGaiaForce = dword(0x0089503c)

character = {
    0x00: "Sonic the Hedgehog",
    0x01: "Sonic the Werehog"
}

stages = {
    0x01: "Windmill Island - Use jumps to reach the goal ring!",
    0x02: "Windmill Island - Use the Sonic Drift on turns!",
    0x03: "Windmill Island - Chain Homing Attacks together!",
    0x04: "Windmill Island - Blast off with Sonic Boost!",
    0x06: "Windmill Island - Slip under obstacles by sliding!",
    0x2b: "Windmill Island - Dodge on a dime with a Quick Step!",
    0x05: "Windmill Island - Head for the goal ring 1",
    0x07: "Windmill Island - Head for the goal ring 2",
    0x08: "Windmill Island - Gather rings at top speed! [1]",
    0x09: "Windmill Island - Reach the goal unscathed!",
    0x0a: "Windmill Island - Gather rings at top speed [2]",
    0x0b: "Windmill Island - Time Attack! Race for the goal!",
    0x0c: "Windmill Island - Dash and jump!",
    0x0d: "Windmill Island - Use those arms to get acrobatic!",
    0x0e: "Windmill Island - Rank up an attack combo!",
    0x0f: "Windmill Island - Grab something, then throw!",
    0x10: "Windmill Island - Let fly the Were-Hammer!",
    0x11: "Windmill Island - Act I: Moonlit Town",
    0x12: "Windmill Island - Act II: Moonsoaked Alleys",
    0x13: "Windmill Island - Act III: Hill Beneath Starry Skies",
    0x14: "Windmill Island - Let'em have it with the Beatdown!",
    0x15: "Windmill Island - Preemptive strike! Were-Claw!",
    0x16: "Windmill Island - Take flight with the Were-Wallop!",
    0x17: "Windmill Island - Unleash the ultimate Earthshaker!",
    0x18: "Windmill Island - Be unstoppable in Unleashed Mode!",
    0x19: "Windmill Island - String along an even bigger combo!",
    0x65: "Savannah Citadel - Boss [Egg Beetle]",
    0x1a: "Cool Edge - Dive bomb the enemy with a Stomp!",
    0x1b: "Cool Edge - Head for the goal!",
    0x1c: "Cool Edge - Gather rings at top speed!",
    0x1d: "Cool Edge - Don't break anything along the way!",
    0x1e: "Cool Edge - Time Attack! Race for the goal! [1]",
    0x1f: "Cool Edge - Time Attack! Race for the goal! [2]",
    0x20: "Cool Edge - Gather rings at top speed!",
    0x39: "Cool Edge - Act I: The Aurora Snowfields",
    0x3a: "Cool Edge - Act II: The Ice Floe",
    0x3b: "Cool Edge - Act III: The Temple of Ice",
    0x3c: "Cool Edge - Battle Royale! Take on all comers!",
    0x3d: "Cool Edge - Break nothing en route to the goal!",
    0x69: "Cool Edge - Boss [Dark Moray]",
    0x2d: "Rooftop Run - Head for the goal!",
    0x2e: "Rooftop Run - Gather rings at top speed! [1]",
    0x2c: "Rooftop Run - Use the Wall Jump to get through!",
    0x2f: "Rooftop Run - Reach the goal unscathed!",
    0x30: "Rooftop Run - Time Attack! Race for the goal!",
    0x31: "Rooftop Run - Gather rings at top speed!",
    0x21: "Rooftop Run - Act I: Alleys of Rooftop Run",
    0x22: "Rooftop Run - Act II: Jet Black Back Streets",
    0x23: "Rooftop Run - Act III: The Great Aqueduct",
    0x24: "Rooftop Run - Special Mission! Find the treasure!",
    0x25: "Rooftop Run - Break nothing en route to the goal!",
    0x66: "Rooftop Run - Boss [Egg Devil Ray]",
    0x32: "Dragon Road - Head for the goal!",
    0x33: "Dragon Road - Gather rings at top speed!",
    0x36: "Dragon Road - Don't break anything along the way!",
    0x34: "Dragon Road - Reach the goal unscathed!",
    0x35: "Dragon Road - Gather rings at top speed!",
    0x37: "Dragon Road - Time Attack! Race for the goal! [1]",
    0x38: "Dragon Road - Time Attack! Race for the goal! [2]",
    0x26: "Dragon Road - Act I: The Floating Shrine",
    0x27: "Dragon Road - Act II: Rising Dragon Falls",
    0x28: "Dragon Road - Act III: Path to Darkness",
    0x29: "Dragon Road - Reach the goal ring without getting hit!",
    0x2a: "Dragon Road - Battle Royale! Take on all comers!",
    0x68: "Dragon Road - Boss [Dark Gaia Phoenix]",
    0x3f: "Arid Sands - Head for the goal!",
    0x3e: "Arid Sands - Land a Lightspeed Dash!",
    0x40: "Arid Sands - Gather rings at top speed!",
    0x41: "Arid Sands - Don't break anything along the way!",
    0x44: "Arid Sands - Gather rings at top speed! [1]",
    0x43: "Arid Sands - Gather rings at top speed! [2]",
    0x42: "Arid Sands - Time Attack! Race for the goal!",
    0x45: "Arid Sands - Act I: The City of Sand",
    0x46: "Arid Sands - Act II: Scorched Rock",
    0x47: "Arid Sands - Act III: Valley of Spirits",
    0x48: "Arid Sands - Act IV: Altar of Oblivion",
    0x49: "Arid Sands - Special Mission! Find the treasure!",
    0x4a: "Arid Sands - Break nothing en route to the goal!",
    0x6a: "Arid Sands - Boss [Dark Guardian]",
    0x51: "Jungle Joyride - Head for the goal!",
    0x52: "Jungle Joyride - Gather rings at top speed! [1]",
    0x55: "Jungle Joyride - Time Attack! Race for the goal! [1]",
    0x54: "Jungle Joyride - Gather rings at top speed! [2]",
    0x53: "Jungle Joyride - Time Attack! Race for the goal! [2]",
    0x56: "Jungle Joyride - Don't break anything along the way!",
    0x57: "Jungle Joyride - Gather rings at top speed! [3]",
    0x58: "Jungle Joyride - Reach the goal unscathed!",
    0x4b: "Jungle Joyride - Act I: Starry Night",
    0x4c: "Jungle Joyride - Act II: Restless Coastside",
    0x4d: "Jungle Joyride - Act III: Deep Jungle",
    0x4e: "Jungle Joyride - Act IV: Heavenly Ruins",
    0x4f: "Jungle Joyride - Battle Royale! Take on all comers!",
    0x50: "Jungle Joyride - Reach the goal without getting hit!",
    0x67: "Jungle Joyride - Boss [Egg Lancer]",
    0x59: "Eggmanland - Head for the goal!",
    0x5a: "Eggmanland - Gather rings at top speed!",
    0x5c: "Eggmanland - Time Attack! Race for the goal!",
    0x5b: "Eggmanland - Reach the goal unscathed!",
    0x5d: "Eggmanland - Act I: Infiltration",
    0x5e: "Eggmanland - Act II: Robot Factory",
    0x5f: "Eggmanland - Act III: Beyond the Factory",
    0x60: "Eggmanland - Act IV: To Zero Point",
    0x61: "Eggmanland - Act V: Dark Gaia Cauldron",
    0x62: "Eggmanland - Special Mission! Find the treasure!",
    0x63: "Eggmanland - Reach the goal ring without getting hit!",
    0x64: "Eggmanland - Battle Royale! Take on all comers!",
    0x6b: "Eggmanland - Boss [Egg Dragoon]",
    0x6d: "Eggmanland - Boss [Dark Gaia]"
}

stagesRanked = {
    0x05: "Windmill Island - Head for the goal ring 1",
    0x07: "Windmill Island - Head for the goal ring 2",
    0x11: "Windmill Island - Act I: Moonlit Town",
    0x12: "Windmill Island - Act II: Moonsoaked Alleys",
    0x13: "Windmill Island - Act III: Hill Beneath Starry Skies",
    0x65: "Savannah Citadel - Boss [Egg Beetle]",
    0x1b: "Cool Edge - Head for the goal!",
    0x39: "Cool Edge - Act I: The Aurora Snowfields",
    0x3a: "Cool Edge - Act II: The Ice Floe",
    0x3b: "Cool Edge - Act III: The Temple of Ice",
    0x69: "Cool Edge - Boss [Dark Moray]",
    0x2d: "Rooftop Run - Head for the goal!",
    0x21: "Rooftop Run - Act I: Alleys of Rooftop Run",
    0x22: "Rooftop Run - Act II: Jet Black Back Streets",
    0x23: "Rooftop Run - Act III: The Great Aqueduct",
    0x66: "Rooftop Run - Boss [Egg Devil Ray]",
    0x32: "Dragon Road - Head for the goal!",
    0x26: "Dragon Road - Act I: The Floating Shrine",
    0x27: "Dragon Road - Act II: Rising Dragon Falls",
    0x28: "Dragon Road - Act III: Path to Darkness",
    0x68: "Dragon Road - Boss [Dark Gaia Phoenix]",
    0x3f: "Arid Sands - Head for the goal!",
    0x45: "Arid Sands - Act I: The City of Sand",
    0x46: "Arid Sands - Act II: Scorched Rock",
    0x47: "Arid Sands - Act III: Valley of Spirits",
    0x48: "Arid Sands - Act IV: Altar of Oblivion",
    0x6a: "Arid Sands - Boss [Dark Guardian]",
    0x51: "Jungle Joyride - Head for the goal!",
    0x4b: "Jungle Joyride - Act I: Starry Night",
    0x4c: "Jungle Joyride - Act II: Restless Coastside",
    0x4d: "Jungle Joyride - Act III: Deep Jungle",
    0x4e: "Jungle Joyride - Act IV: Heavenly Ruins",
    0x67: "Jungle Joyride - Boss [Egg Lancer]",
    0x59: "Eggmanland - Head for the goal!",
    0x5d: "Eggmanland - Act I: Infiltration",
    0x5e: "Eggmanland - Act II: Robot Factory",
    0x5f: "Eggmanland - Act III: Beyond the Factory",
    0x60: "Eggmanland - Act IV: To Zero Point",
    0x61: "Eggmanland - Act V: Dark Gaia Cauldron",
    0x6b: "Eggmanland - Boss [Egg Dragoon]",
    0x6c: "Eggmanland - Boss [Dark Gaia]"
}

progression = {
    1:{"title":"Beetle Robot", "description":"Defeat Egg Beetle in Mazuri", "points":10, "stageID":0x65},
    2:{"title":"Divine Beast Dark Phoenix", "description":"Defeat Dark Gaia Phoenix in Chun-nan", "points":10, "stageID":0x68},
    3:{"title":"Aquatic Machine", "description":"Defeat Egg Devil Ray in Spagonia", "points":10, "stageID":0x66},
    4:{"title":"Eastern Dragon", "description":"Defeat Dark Moray in Holoska", "points":10, "stageID":0x69},
    5:{"title":"Deep Nightmare", "description":"Defeat Dark Guardian in Shamar", "points":10, "stageID":0x6a},
    6:{"title":"Metal Chimera", "description":"Defeat Egg Lancer in Adabat", "points":10, "stageID":0x67},
    7:{"title":"Egg Mech", "description":"Defeat Egg Dragoon in Eggmanland", "points":10, "stageID":0x6b},
    8:{"title":"Incarnation of Darkness", "description":"Defeat Dark Gaia and save the world!", "points":25, "stageID":0x6c},
}

medals = {
    1:{"title":"New Moon", "description":"Collect 9 Moon Medals", "points":3, "type":"Moon", "quantity":9},
2:{"title":"Waning Crescent", "description":"Collect 15 Moon Medals", "points":5, "type":"Moon", "quantity":15},
3:{"title":"First Quarter", "description":"Collect 30 Moon Medals", "points":5, "type":"Moon", "quantity":30},
4:{"title":"Waxing Crescent", "description":"Collect 46 Moon Medals", "points":5, "type":"Moon", "quantity":46},
5:{"title":"Half Moon", "description":"Collect 52 Moon Medals", "points":5, "type":"Moon", "quantity":52},
6:{"title":"Waxing Gibbous", "description":"Collect 56 Moon Medals", "points":5, "type":"Moon", "quantity":56},
7:{"title":"Last Quarter", "description":"Collect 60 Moon Medals", "points":5, "type":"Moon", "quantity":60},
8:{"title":"Waning Gibbous", "description":"Collect 69 Moon Medals", "points":5, "type":"Moon", "quantity":69},
9:{"title":"Full Moon", "description":"Collect all the Moon Medals", "points":25, "type":"Moon", "quantity":71},
10:{"title":"Sunrise", "description":"Collect 11 Sun Medals", "points":3, "type":"Sun", "quantity":11},
11:{"title":"Solar Flare", "description":"Collect 23 Sun Medals", "points":5, "type":"Sun", "quantity":23},
12:{"title":"Helios' Gift", "description":"Collect 43 Sun Medals", "points":5, "type":"Sun", "quantity":43},
13:{"title":"Radiant Rays", "description":"Collect 55 Sun Medals", "points":5, "type":"Sun", "quantity":55},
14:{"title":"Solar Ascendant", "description":"Collect 68 Sun Medals", "points":5, "type":"Sun", "quantity":68},
15:{"title":"Sunbeam Rider", "description":"Collect 75 Sun Medals", "points":5, "type":"Sun", "quantity":75},
16:{"title":"Solar Sentinel", "description":"Collect 80 Sun Medals", "points":5, "type":"Sun", "quantity":80},
17:{"title":"Clear Brilliance", "description":"Collect 86 Sun Medals", "points":5, "type":"Sun", "quantity":86},
18:{"title":"Solar Zenith", "description":"Collect 90 Sun Medals", "points":5, "type":"Sun", "quantity":90},
19:{"title":"Sun's Radiance", "description":"Collect 99 Sun Medals", "points":5, "type":"Sun", "quantity":99},
20:{"title":"Solar Luminary", "description":"Collect all the Sun Medals", "points":25, "type":"Sun", "quantity":103},
}

ranks = {
    1:{"title":"Daytime Delight", "description":"Get an S Rank in all Apotos Day Stages", "points":5, "stages":[0x892414, 0x892444]},
2:{"title":"Frostbite Speedster", "description":"Get an S Rank in the Holoska Day Stage", "points":5, "stages":[0x892e64]},
3:{"title":"Architect of Speed", "description":"Get an S Rank in the Spagonia Day Stage", "points":5, "stages":[0x8933d4]},
4:{"title":"Rising Sun Sprinter", "description":"Get an S Rank in the Chun-Nan Day Stage", "points":5, "stages":[0x893974]},
5:{"title":"Sandswept Rush", "description":"Get an S Rank in the Shamar Day Stage", "points":5, "stages":[0x893f14]},
6:{"title":"Tropical Tornado", "description":"Get an S Rank in the Adabat Day Stage", "points":5, "stages":[0x8944b4]},
7:{"title":"Doomsday Dynamo", "description":"Get an S Rank in the Eggmandland Day Stage", "points":5, "stages":[0x894a54]},
8:{"title":"Nighttime Splendor", "description":"Get an S Rank in all Apotos Night Stages", "points":10, "stages":[0x892624,0x892654, 0x892684]},
9:{"title":"Moonlit Blizzard Blazer", "description":"Get an S Rank in all Holoska Night Stages", "points":10, "stages":[0x892f84, 0x892fb4, 0x892fe4]},
10:{"title":"Nighttime Maestro", "description":"Get an S Rank in all Spagonia Night Stages", "points":10, "stages":[0x8934f4, 0x893524, 0x893554 ]},
11:{"title":"Midnight Zen Master", "description":"Get an S Rank in all Chun-Nan Night Stages", "points":10, "stages":[0x893ac4, 0x893af4, 0x893b24 ]},
12:{"title":"Starry Night Strider", "description":"Get an S Rank in all Shamar Night Stages", "points":10, "stages":[0x894064, 0x894094, 0x8940c4, 0x8940f4]},
13:{"title":"Nighttime Serenader", "description":"Get an S Rank in all Adabat Night Stages", "points":10, "stages":[0x894634, 0x894664, 0x894694, 0x8946c4 ]},
14:{"title":"Machination Dominator", "description":"Get an S Rank in all Eggmandland Night Stages", "points":10, "stages":[0x00894b14, 0x894b44, 0x894b74, 0x894ba4, 0x894bd4 ]},
15:{"title":"Master of Menaces", "description":"Get an S Rank in all bosses", "points":10, "stages":[0x892894, 0x893074, 0x8935e4, 0x893bb4, 0x894184, 0x894754, 0x894c94, 0x894cc4]},
}

items = {
    1:{"title":"Curator Apprentice", "description":"Obtain 25 secret items", "points":5, "quantity":25},
    2:{"title":"Secret Enthusiast", "description":"Obtain 56 secret items", "points":5, "quantity":56},
    3:{"title":"Master Collector", "description":"Obtain 101 secret items", "points":10, "quantity":101},
    4:{"title":"Treasure Hunter", "description":"Obtain 150 secret items", "points":10, "quantity":150},
    5:{"title":"Legendary Seeker", "description":"Obtain 215 secret items", "points":25, "quantity":215},
    6:{"title":"Secrets Unveiled", "description":"Obtain all secret items", "points":5, "quantity":216},
}

skills = {
    1:{"title":"Savage Strikes", "description":"Unlock the Were-Claw skill (1000 Gaia Force)", "points":2, "quantity":1000},
    2:{"title":"Mighty Mauler", "description":"Unlock the Were-Wallop skill (7500 Gaia Force)", "points":5, "quantity":7500},
    3:{"title":"Fists of Fury", "description":"Unlock the Beatdown skill (12500 Gaia Force)", "points":5, "quantity":12500},
    4:{"title":"Quake Bringer", "description":"Unlock the Earthshaker skill (30000 Gaia Force)", "points":5, "quantity":30000},
    5:{"title":"Unleashed Potential", "description":"Reach the maximum potential of the werehog form (72000 Gaia Force)", "points":10, "quantity":72000},
}

allRanks = [
  0x892414, 0x892444, 0x892e64, 0x8933d4, 0x893974, 0x893f14, 0x8944b4, 0x894a54,
  0x892624, 0x892654, 0x892684, 0x892f84, 0x892fb4, 0x892fe4, 0x8934f4, 0x893524,
  0x893554, 0x893ac4, 0x893af4, 0x893b24, 0x894064, 0x894094, 0x8940c4, 0x8940f4,
  0x894634, 0x894664, 0x894694, 0x8946c4, 0x00894b14, 0x894b44, 0x894b74, 0x894ba4,
  0x894bd4, 0x892894, 0x893074, 0x8935e4, 0x893bb4, 0x894184, 0x894754, 0x894c94,
  0x894cc4
]

function LevelClear(levelID){
    return InGameCheck && CurrentStage == levelID && StageCleared 
}

function Medals(type, quantity){
    logic = InGameCheck
    if(type == "Moon"){
        logic = logic && measured(TotalMoonMedals >= quantity) && prev(TotalMoonMedals) < quantity && TotalMoonMedals < quantity + 10 && prev(TotalMoonMedals) != 0
    }else{
        logic = logic && measured(TotalSunMedals >= quantity) && prev(TotalSunMedals) < quantity && TotalSunMedals < quantity + 10 && prev(TotalSunMedals) != 0
    }
    return logic
    
}

function SRankCheck(address){
    return bit0(address) * bit1(address)
}

function MedalSum(array){
    sum = 0
    for address in array{
        sum = sum + SRankCheck(address)
    }
    
    logic = always_true()
    
    if(length(array) > 1){
        logic = logic && measured(sum == length(array)) && prev(sum) == length(array)-1
    }else{
        logic = logic && sum == length(array) && prev(sum) == length(array)-1
    }
    
    return logic
}


function ItemSum(quantity){
    sum = 0
    for item in range(FirstItem,LastItem, 4){
        sum = sum + (dword(item)/dword(item))
    }
    return measured(sum >= quantity) && sum <= quantity +10 && prev(sum) <= quantity-1 && prev(sum) != 0
} 

function GaiaForce(quantity){
    return 
    measured(TotalGaiaForce >= quantity) && prev(TotalGaiaForce) < quantity && prev(TotalGaiaForce) != 0 && prev(LevelGaiaForce) != 0
}

//TotalGaiaForce = dword(0x00894ffc)
//LevelGaiaForce = dword(0x0089503c)

for cheevo in progression{
    achievement(
        title = progression[cheevo]["title"],
        description = progression[cheevo]["description"],
        points = progression[cheevo]["points"],
        trigger = LevelClear(progression[cheevo]["stageID"])
    )
}

for cheevo in medals{
    achievement(
        title = medals[cheevo]["title"],
        description = medals[cheevo]["description"],
        points = medals[cheevo]["points"],
        trigger = Medals(medals[cheevo]["type"], medals[cheevo]["quantity"] )
    )
}

for cheevo in ranks{
    achievement(
        title = ranks[cheevo]["title"],
        description = ranks[cheevo]["description"],
        points = ranks[cheevo]["points"],
        trigger = InGameCheck && MedalSum(ranks[cheevo]["stages"])
    )
}


achievement(
    "Super Sonic Speed",
    "Get all 41 S Ranks",
    25, 
    InGameCheck && MedalSum(allRanks)
)



for cheevo in items{
    achievement(
        title = items[cheevo]["title"],
        description = items[cheevo]["description"],
        points = items[cheevo]["points"],
        trigger = ItemSum(items[cheevo]["quantity"])
    )
}

for cheevo in skills{
    achievement(
        title = skills[cheevo]["title"],
        description = skills[cheevo]["description"],
        points = skills[cheevo]["points"],
        trigger = GaiaForce(skills[cheevo]["quantity"])
    )
}



for stageID in stagesRanked{
    leaderboard(
        title = stagesRanked[stageID], 
        description = "Best time", 
        start =
            CurrentStage == stageID &&
            InGameCheck && CurrentTime != prev(CurrentTime)
        , 
        cancel =
        !InGameCheck || CurrentStage != stageID
        , 
        submit = 
        StageCleared 
        , 
        value = CurrentTime * 100
        , 
        format="MILLISECS", 
        lower_is_better=true
    )
}
