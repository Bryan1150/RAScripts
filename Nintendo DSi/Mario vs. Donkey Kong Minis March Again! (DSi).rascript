// Mario vs. Donkey Kong: Minis March Again! (DSi)
// #ID = 22373

Progression = {
    1:{"title":"Mini Chaos", "description":"Defeat Donkey Kong in Mini Mayhem", "points":5, "DKFlag":0x0ad4ad, "UnlockFlag":0x0ad4ae},
2:{"title":"Sandstone Wander", "description":"Defeat Donkey Kong in Sandstone Stroll", "points":5, "DKFlag":0x0ad4af, "UnlockFlag":0x0ad4b0},
3:{"title":"Magnet Madness", "description":"Defeat Donkey Kong in Magnet Mania", "points":5, "DKFlag":0x0ad4b1, "UnlockFlag":0x0ad4b2},
4:{"title":"Jungle Grumble", "description":"Defeat Donkey Kong in Jungle Rumble", "points":5, "DKFlag":0x0ad4b3, "UnlockFlag":0x0ad4b4},
5:{"title":"Mini Chaos+", "description":"Defeat Donkey Kong in Mini Mayhem Plus", "points":10, "DKFlag":0x0ad4b5, "UnlockFlag":0x0ad4b6},
6:{"title":"Sandstone Wander+", "description":"Defeat Donkey Kong in Sandstone Stroll Plus", "points":10, "DKFlag":0x0ad4b7, "UnlockFlag":0x0ad4b8},
7:{"title":"Magnet Madness+", "description":"Defeat Donkey Kong in Magnet Mania Plus", "points":10, "DKFlag":0x0ad4b9, "UnlockFlag":0x0ad4ba},
8:{"title":"Jungle Grumble+", "description":"Defeat Donkey Kong in Jungle Rumble Plus", "points":10, "DKFlag":0x0ad4bb, "UnlockFlag":0x0ad4bd},
}

Stars = {
9:{"title":"Mini Constellation", "description":"Obtain all the Gold Stars in Mini Mayhem", "points":10, "FlagsStart":0x0ad5b0, "FlagsEnd":0x0ad5b1, "FinalBit":1},
10:{"title":"Sunny Stroll", "description":"Obtain all the Gold Stars in Sandstone Stroll", "points":10, "FlagsStart":0x0ad5b2, "FlagsEnd":0x0ad5b3, "FinalBit":1},
11:{"title":"Supernova Mania", "description":"Obtain all the Gold Stars in Magnet Mania", "points":10, "FlagsStart":0x0ad5b4, "FlagsEnd":0x0ad5b5, "FinalBit":1},
12:{"title":"Jungle Luminary", "description":"Obtain all the Gold Stars in Jungle Rumble", "points":10, "FlagsStart":0x0ad5b6, "FlagsEnd":0x0ad5b7, "FinalBit":1},
13:{"title":"Mini Constellation+", "description":"Obtain all the Gold Stars in Mini Mayhem Plus", "points":10, "FlagsStart":0x0ad5b8, "FlagsEnd":0x0ad5b9, "FinalBit":1},
14:{"title":"Sunny Stroll+", "description":"Obtain all the Gold Stars in Sandstone Stroll Plus", "points":10, "FlagsStart":0x0ad5ba, "FlagsEnd":0x0ad5bb, "FinalBit":1},
15:{"title":"Supernova Mania+", "description":"Obtain all the Gold Stars in Magnet Mania Plus", "points":10, "FlagsStart":0x0ad5bc, "FlagsEnd":0x0ad5bd, "FinalBit":1},
16:{"title":"Jungle Luminary+", "description":"Obtain all the Gold Stars in Jungle Rumble Plus", "points":10, "FlagsStart":0x0ad5be, "FlagsEnd":0x0ad5bf, "FinalBit":1},
17:{"title":"Starry Ceiling", "description":"Obtain all the Gold Stars in the Rooftop", "points":10, "FlagsStart":0x0ad5c0, "FlagsEnd":0x0ad5c1, "FinalBit":3},
18:{"title":"Celestial Crypt", "description":"Obtain all the Gold Stars in the Basement", "points":10, "FlagsStart":0x0ad5c2, "FlagsEnd":0x0ad5c2, "FinalBit":7},
}

ASCIIIdentifier = dword(0xffe00c) == 0x564d444b
CurrentLevel = byte(0x0ad4a9)

function ProgressionLogic(DKFlag, UnlockFlag){
    logic = 
    ASCIIIdentifier &&
    prev(CurrentLevel) == 0x08 &&
    prev(bit0(DKFlag)) == 1 &&
    bit0(DKFlag) == 1 && 
    bit0(UnlockFlag) >
    prev(bit0(UnlockFlag)) 
    return logic
}

function StarsLogic(FlagsStart, FlagsEnd, FinalBit){
    sum = 0
    count = 0
    for star in range(FlagsStart,FlagsEnd){
        if(star != FlagsEnd){
            sum = sum + bitcount(star)
            count = count + 8
        }else{
            for bit in range(0,FinalBit){
                sum = sum + bit(bit, star)
                count = count + 1
            }
        }
    }
    return ASCIIIdentifier && measured(sum == count) && prev(sum) == count-1
}

for cheevo in Progression{
    achievement(
        title = Progression[cheevo]["title"],
        description = Progression[cheevo]["description"],
        points = Progression[cheevo]["points"],
        trigger = ProgressionLogic(Progression[cheevo]["DKFlag"],Progression[cheevo]["UnlockFlag"])
    )
}

for cheevo in Stars{
    achievement(
        title = Stars[cheevo]["title"],
        description = Stars[cheevo]["description"],
        points = Stars[cheevo]["points"],
        trigger = StarsLogic(Stars[cheevo]["FlagsStart"],Stars[cheevo]["FlagsEnd"], Stars[cheevo]["FinalBit"])
    )
}