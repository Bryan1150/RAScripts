// Crash Twinsanity
// #ID = 19044

StageID = 
byte(0x0098c636) & 0x1f

MainMenu = bit2(0x0098c635)
Paused = bit1(0x00309718)

GemCheevos = {
1:{"title":"Gem. Sanity Island", "stageName":"the N. Sanity Island hubworld", "flags":0x0098c664, "stageID":0x00 , "stageID2":0x05},
2:{"title":"Jungle Trinkets", "stageName":"Jungle Bungle", "flags":0x0098c668, "stageID":0x01, "stageID2":0x02},
3:{"title":"Cavern Stones", "stageName":"Cavern Catastrophe", "flags":0x0098c66c, "stageID":0x03, "stageID2":0x69},
4:{"title":"Totem Beads", "stageName":"Totem Hokum", "flags":0x0098c670, "stageID":0x04, "stageID2":0x69},
5:{"title":"Clear Ice", "stageName":"the Iceberg Lab hubworld", "flags":0x0098c674, "stageID":0x06, "stageID2":0x0c},
6:{"title":"Emerald Climb", "stageName":"Ice Climb", "flags":0x0098c678, "stageID":0x07, "stageID2":0x08},
7:{"title":"Amethystcapades", "stageName":"Slip Slide Icecapades", "flags":0x0098c67c, "stageID":0x09, "stageID2":0x69},
8:{"title":"High Seas Sapphires", "stageName":"High Seas Hi-Jinks", "flags":0x0098c680, "stageID":0x0a, "stageID2":0x0b},
9:{"title":"Academy of Geology", "stageName":"the Academy of Evil", "flags":0x0098c684, "stageID":0x0d, "stageID2":0x13},
10:{"title":"Boiler Jewels", "stageName":"Boiler Room Doom", "flags":0x0098c688, "stageID":0x0f , "stageID2":0x10},
11:{"title":"Emerald Chaos", "stageName":"Classroom Chaos", "flags":0x0098c68c, "stageID":0x11, "stageID2":0x69},
12:{"title":"Jewelry Rampage", "stageName":"Rooftop Rampage ", "flags":0x0098c690, "stageID":0x12, "stageID2":0x69},
13:{"title":"Topazanity Island", "stageName":"the Twinsanity Island hubworld", "flags":0x0098c694, "stageID":0x14, "stageID2":0x18},
14:{"title":"Gem-Slide Rumble", "stageName":"Rock-Slide Rumble", "flags":0x0098c698, "stageID":0x15, "stageID2":0x69},
15:{"title":"Prize Pursuit", "stageName":"Bandicoot Pursuit", "flags":0x0098c69c, "stageID":0x16, "stageID2":0x69},
16:{"title":"Treasure Agony", "stageName":"Ant Agony", "flags":0x0098c6a0, "stageID":0x17, "stageID2":0x69},
}

function gemLogic(flags, stageID, stageID2){
logic = 
StageID == stageID 

if(stageID2 != 0x69){
    logic = logic || (StageID == stageID2)
}
logic = logic && StageID == prev(StageID) && Paused == 0

sum =
bit0(flags) +
bit1(flags) +
bit2(flags) +
bit3(flags) +
bit4(flags) +
bit5(flags)

logic = logic &&
measured(sum == 6) && prev(sum) == 5

return logic    
}

function sumGems(){
sum = 0
start = 0x0098c664
for flags in range(0x0098c664, 0x0098c6a0, 4)
{
sum = sum +(
    bit0(flags) +
bit1(flags) +
bit2(flags) +
bit3(flags) +
bit4(flags) +
bit5(flags))
}

return (sum)
}

allFlags = []

for cheevo in GemCheevos{
    achievement(
        title = GemCheevos[cheevo]["title"],
        description = "Collect all the gems in " + GemCheevos[cheevo]["stageName"],
        points = 10,
        trigger = gemLogic(
        GemCheevos[cheevo]["flags"],
        GemCheevos[cheevo]["stageID"],
        GemCheevos[cheevo]["stageID2"]
        )
    )
}


