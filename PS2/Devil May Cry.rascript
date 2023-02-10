// Devil May Cry
// #ID = 2791

StartOfLogs = 0x007546ac
EndOfLogs = 0x007546f8

LogQuantity =
[
    7,
    7,
    7,
    12,
    9,
    7,
    8,
    6,
    7,
    3,
    8,
    10,
    9,
    2,
    8,
    5,
    10,
    14,
    7,
    1
    
]


function LogCheevo(quantity, start, objective){
    sum = 0
    count = 0
    startTemp = start
    for log in range(0, length(LogQuantity)-1){
        for bits in range(0, LogQuantity[count]-1){
            sum = sum + bit(bits, startTemp)
        }
        startTemp = startTemp + 4
        count = count+1
    }
    return measured(sum >= quantity) && prev(sum) < quantity && prev(sum) != 0
}

achievement(
    title = "10% of logs",
    description = "Unlock 10% of the enemy files",
    points = 3,
    trigger = LogCheevo(sum_of(LogQuantity, f=>f)/10, StartOfLogs, EndOfLogs)
)

achievement(
    title = "25% of logs",
    description = "Unlock 25% of the enemy files",
    points = 5,
    trigger = LogCheevo(sum_of(LogQuantity, f=>f)/4, StartOfLogs, EndOfLogs)
)

achievement(
    title = "50% of logs",
    description = "Unlock 50% of the enemy files",
    points = 10,
    trigger = LogCheevo(sum_of(LogQuantity, f=>f)/2, StartOfLogs, EndOfLogs)
)

achievement(
    title = "100% of logs",
    description = "Unlock 100% of the enemy files",
    points = 25,
    trigger = LogCheevo(sum_of(LogQuantity, f=>f), StartOfLogs, EndOfLogs)
)