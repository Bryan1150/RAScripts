// FIFA Street
// #ID = 20856
SaveFile = dword(0x00a5e254)

function SaveProtection(){
    return SaveFile == prev(SaveFile) && SaveFile != 0xffffffff
}

SaveFileOffset = 0xCE4

SaveFilePointer = SaveFileOffset * SaveFile

Cups = {
1:{"address":0x00a5eaa0, "points":5, "title":"Streets of Marseille", "description":"Win the Marseille Cup"},
2:{"address":0x00a5eda0, "points":5, "title":"Empire State Soccer", "description":"Win the New York City Cup"},
3:{"address":0x00a5e9a0, "points":5, "title":"Samba Sensation", "description":"Win the Rio De Janeiro Cup"},
4:{"address":0x00a5eca0, "points":5, "title":"Lagos Lionheart", "description":"Win the Lagos Cup"},
5:{"address":0x00a5e920, "points":5, "title":"Canal City Supremacy", "description":"Win the Amsterdam Cup"},
6:{"address":0x00a5eba0, "points":5, "title":"Roman Colosseum Triumph", "description":"Win the Rome Cup"},
7:{"address":0x00a5eb20, "points":5, "title":"Berlin Blitz", "description":"Win the Berlin Cup"},
8:{"address":0x00a5ec20, "points":5, "title":"Aztec Dominator", "description":"Win the Mexico City Cup"},
9:{"address":0x00a5ed20, "points":5, "title":"Barcelona Breeze", "description":"Win the Barcelona Cup"},
10:{"address":0x00a5ea20, "points":10, "title":"London Crown Holder", "description":"Win the London Cup"},
}

HardCups = {
    1:{"address":0x00a5eaa0, "points":10, "title":"French Flair", "description":"Win the Marseille Cup on Super Hard difficulty in a single session"},
2:{"address":0x00a5eda0, "points":10, "title":"NYC Rush", "description":"Win the New York City Cup on Super Hard difficulty in a single session"},
3:{"address":0x00a5e9a0, "points":10, "title":"Rio Rhythm", "description":"Win the Rio De Janeiro Cup on Super Hard difficulty in a single session"},
4:{"address":0x00a5eca0, "points":10, "title":"Lagos Powerhouse", "description":"Win the Lagos Cup on Super Hard difficulty in a single session"},
5:{"address":0x00a5e920, "points":10, "title":"Dutch Determination", "description":"Win the Amsterdam Cup on Super Hard difficulty in a single session"},
6:{"address":0x00a5eba0, "points":10, "title":"Roman Glory", "description":"Win the Rome Cup on Super Hard difficulty in a single session"},
7:{"address":0x00a5eb20, "points":10, "title":"Berlin Beatdown", "description":"Win the Berlin Cup on Super Hard difficulty in a single session"},
8:{"address":0x00a5ec20, "points":10, "title":"Mexican Mayhem", "description":"Win the Mexico City Cup on Super Hard difficulty in a single session"},
9:{"address":0x00a5ed20, "points":10, "title":"Barcelona Brilliance", "description":"Win the Barcelona Cup on Super Hard difficulty in a single session"},
10:{"address":0x00a5ea20, "points":25, "title":"London Legacy", "description":"Win the London Cup on Super Hard difficulty in a single session"},
}

Matches = {
    1:{"address":0x00a5e3f4, "points":5, "title":"Marseille Street King", "description":"Complete all the 7 Kick About matches in Marseille"},
2:{"address":0x00a5e40c, "points":5, "title":"NYC Concrete Playground", "description":"Complete all the 7 Kick About matches in New York City"},
3:{"address":0x00a5e3ec, "points":5, "title":"Rio Freestyle Master", "description":"Complete all the 7 Kick About matches in Rio De Janeiro"},
4:{"address":0x00a5e404, "points":5, "title":"Lagos Urban Prodigy", "description":"Complete all the 7 Kick About matches in Lagos"},
5:{"address":0x00a5e3e8, "points":5, "title":"Amsterdam Canal Kickabouts", "description":"Complete all the 7 Kick About matches in Amsterdam"},
6:{"address":0x00a5e3fc, "points":5, "title":"Roman Street Heritage", "description":"Complete all the 7 Kick About matches in Rome"},
7:{"address":0x00a5e3f8, "points":5, "title":"Berlin Street Artistry", "description":"Complete all the 7 Kick About matches in Berlin"},
8:{"address":0x00a5e400, "points":5, "title":"Mexico City Futsal Fanatic", "description":"Complete all the 7 Kick About matches in Mexico City"},
9:{"address":0x00a5e408, "points":5, "title":"Barcelona Streetwise", "description":"Complete all the 7 Kick About matches in Barcelona"},
10:{"address":0x00a5e3f0, "points":5, "title":"London Street Striker", "description":"Complete all the 7 Kick About matches in London"},
}

difficulty = dword(0x00544624)
superHard = 0x03

function WinCup(address){
    logic = SaveProtection()   
    logic = logic && dword(SaveFilePointer + address) == 4 && prev(dword(SaveFilePointer + address)) == 3
    return logic
}

function AllMatches(address){
    logic = SaveProtection()   
    logic = logic && dword(SaveFilePointer + address) == 1 && prev(dword(SaveFilePointer + address)) == 0
    return logic
}

function WinHardCup(address){
    logic = never(!SaveProtection() )  
    logic = logic && 
    never(difficulty != superHard) &&
    (dword(SaveFilePointer + address) >= 1) &&
    never((dword(SaveFilePointer + address) == 0 && prev(dword(SaveFilePointer + address)) != 0)) &&
    //once(dword(SaveFilePointer + address) == 1 && prev(dword(SaveFilePointer + address)) == 0) &&
    trigger_when(once(dword(SaveFilePointer + address) == 2 && prev(dword(SaveFilePointer + address)) == 1) &&
    once(dword(SaveFilePointer + address) == 3 && prev(dword(SaveFilePointer + address)) == 2) &&
    (dword(SaveFilePointer + address) == 4 && prev(dword(SaveFilePointer + address)) == 3))
    return logic
}






for cup in Cups{
    achievement(
        title = Cups[cup]["title"],
        description = Cups[cup]["description"],
        points = Cups[cup]["points"],
        trigger = WinCup(Cups[cup]["address"])
    )
}

for cup in HardCups{
    achievement(
        title = HardCups[cup]["title"],
        description = HardCups[cup]["description"],
        points = HardCups[cup]["points"],
        trigger = WinHardCup(Cups[cup]["address"])
    )
}

for cup in Matches{
    achievement(
        title = Matches[cup]["title"],
        description = Matches[cup]["description"],
        points = Matches[cup]["points"],
        trigger = AllMatches(Matches[cup]["address"])
    )
}

function byteSum(address, bitStart){
    sum = 0
    count = bitStart
    multiplier = 1
    for bit in range(0,6){
        sum = sum + bit(count, SaveFilePointer+address) * multiplier
        count = count + 1
        multiplier = multiplier * 2
    }
    return sum
}

Skills = {
    1:{"address":0x00a5e849, "points":5, "title":"Speed Demon", "description":"Max your player's speed skill", "bit":4},
2:{"address":0x00a5e84c, "points":5, "title":"Power Unleashed", "description":"Max your player's shot power skill", "bit":7},
3:{"address":0x00a5e84d, "points":5, "title":"Precision Striker", "description":"Max your player's shot accuracy skill", "bit":6},
4:{"address":0x00a5e84e, "points":5, "title":"Trickster Extraordinaire", "description":"Max your player's tricks skill", "bit":5},
5:{"address":0x00a5e84a, "points":5, "title":"Untouchable Defender", "description":"Max your player's tackling skill", "bit":3},
}

for skill in Skills{
    achievement(
        Skills[skill]["title"],
        Skills[skill]["description"],
        Skills[skill]["points"],
        SaveProtection() &&
        measured(byteSum(Skills[skill]["address"], Skills[skill]["bit"]) == 100) &&        
        prev(byteSum(Skills[skill]["address"], Skills[skill]["bit"])) < 100
    )
}

Reputation = dword(SaveFilePointer + 0x00a5ee88)
Rulin = 120001

achievement(
    title = "Rulin' the Streets",
    description = "Reach Rulin' Rank reputation",
    points = 25,
    trigger = SaveProtection() && measured(Reputation >= Rulin) && prev(Reputation) < Rulin
)