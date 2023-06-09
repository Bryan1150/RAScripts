// ~Homebrew~ BLOX
// #ID = 13161

GridStart = 0x0000dc
GridEnd = 0x000538

levelID = dword(0x00009c)
totalMoves = dword(0x0000a8)

LevelBoxQuantity = [
//Easy Levels
    3,3,4,3,3,
    5,4,4,15,11,
//Medium Levels
   5,  7,6,12,8,
   7,5,8,6,10,
   4,11,8,6,8,
   5,5,5,8,9,
//Hard Levels
6,10,12 ,20,10,
11,12,14,15,16,
6,7,18,13,20,
16,18,15,15,15,
8,20,9,17,14,
16,8,8,15,16,
//Bonus
4,11
]

function CheckGrid(BoxQuantity){
sum = 0
    for block in range(GridStart,GridEnd,4){
        sum = sum + bit2(block)
    }
    return sum == BoxQuantity && prev(sum) == BoxQuantity-1
}

function HitLevels(start, end){
Levels = []
    for level in range(start,end){
        array_push(Levels, 
        once(levelID == level && CheckGrid(LevelBoxQuantity[level-1]))
        )
    }
    return measured(tally(end-(start-1),Levels))
}


Cheevos = {
1:{"title":"Easy 1-5", "description":"Complete Easy Stages 1 to 5 in one session", "points":5,"start":1,"end":5},
2:{"title":"Easy 5-10", "description":"Complete Easy Stages 6 to 10 in one session", "points":5,"start":6,"end":10},
3:{"title":"Medium 1-5", "description":"Complete Medium Stages 1 to 5 in one session", "points":10,"start":11,"end":15},
4:{"title":"Medium 6-8", "description":"Complete Medium Stages 6 to 8 in one session", "points":10,"start":16,"end":18},
5:{"title":"Medium 10-15", "description":"Complete Medium Stages 10 to 15 in one session [Password is: 3195]", "points":10,"start":20,"end":25},
6:{"title":"Medium 16-18", "description":"Complete Medium Stages 16 to 18 in one session", "points":10,"start":26,"end":28},
7:{"title":"Medium 20", "description":"Complete Medium Stage 20 [Password is: 3215]", "points":3,"start":30,"end":30},
8:{"title":"Hard 1-5", "description":"Complete Hard Stages 1 to 5 in one session", "points":10,"start":31,"end":35},
9:{"title":"Hard 6-12", "description":"Complete Hard Stages 6 to 12 in one session", "points":10,"start":36,"end":42},
10:{"title":"Hard 14-15", "description":"Complete Hard Stage 15 [Password is: 133]", "points":5,"start":45,"end":45},
11:{"title":"Hard 16-20", "description":"Complete Hard Stages 16 to 20 in one session", "points":10,"start":46,"end":50},
12:{"title":"Hard 21-25", "description":"Complete Hard Stages 21 to 25 in one session", "points":25,"start":51,"end":55},
13:{"title":"Hard 26-30", "description":"Complete Hard Stages 26 to 30 in one session", "points":25,"start":56,"end":60},
14:{"title":"Bonus 1", "description":"Complete Bonus Stage 1", "points":1,"start":61,"end":61},
15:{"title":"Bonus 2", "description":"Complete Bonus Stage 2", "points":5,"start":62,"end":62},
}

for cheevo in Cheevos{
    achievement(
        Cheevos[cheevo]["title"],
        Cheevos[cheevo]["description"],
        Cheevos[cheevo]["points"],
        HitLevels(Cheevos[cheevo]["start"],Cheevos[cheevo]["end"])
    )
}

function MoveLeaderboards(start,end, difficulty, startName){
    count = startName
    for level in range(start,end){
    leaderboard(
    title = difficulty + " Stage " + count, 
    description = "Less Moves", 
    start = levelID == level && CheckGrid(LevelBoxQuantity[level-1]), 
    cancel = always_false(), 
    submit = always_true(), 
    value = totalMoves, 
    format="VALUE", 
    lower_is_better=true)
    count = count+1
    }
    
}

MoveLeaderboards(1,10, "Easy",1)
MoveLeaderboards(11,30, "Medium",1)
MoveLeaderboards(31,60, "Hard",1)
MoveLeaderboards(61,62, "Bonus",1)