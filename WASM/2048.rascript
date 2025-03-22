// 2048
// #ID = 19291
TablePointer = dword(0x23b8)

function checkTable(value){
    logic = always_false()
    rowOffset = 0
    

    for i in range (0,3){
    columnOffset = 0
        for j in range(0,3){
            rowPointer = dword(TablePointer + rowOffset)
            logic = logic || (dword(rowPointer + columnOffset) == value && prev(dword(rowPointer + columnOffset)) != value)
            columnOffset = columnOffset + 4
        }
        rowOffset = rowOffset + 12
        
    }
    return logic
}

exponent = 1
for i in range(1,11){
    achievement(
    title = "" + 2 * exponent,
    description = "Get a " + 2 * exponent,
    points = 10,
    trigger = checkTable(2 * exponent)  
)
exponent = exponent * 2
}



function checkPoints(){
    sum = 0
    rowOffset = 0
    
    for i in range (0,3){
    columnOffset = 0
        for j in range(0,3){
            rowPointer = dword(TablePointer + rowOffset)
            sum = sum + dword(rowPointer + columnOffset) 
            columnOffset = columnOffset + 4
        }
        rowOffset = rowOffset + 12
        
    }
    return sum
}

achievement(
    title = "",
    description = "Get a " ,
    points = 10,
    trigger = checkPoints() >= 1
)

leaderboard(
    title = "High Score",
    description = "Try to get past 2048",
    start= 
    prev(checkPoints()) == 4 && checkPoints() > 4,
    cancel = 
    always_false(),
    submit= 
    prev(bit1(0x0016)) == 0 &&
    bit1(0x0016) == 1,
    value = measured(prev(checkPoints()))
)