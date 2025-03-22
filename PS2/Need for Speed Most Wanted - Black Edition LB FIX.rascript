// Need for Speed: Most Wanted - Black Edition
// #ID = 7788

LapPointer = dword(0x00539358)
Lap1 = float(LapPointer + 0xffffd440) * 100
Lap2 = float(LapPointer + 0xffffd480) * 100
Lap3 = float(LapPointer + 0xffffd4c0) * 100
Lap4 = float(LapPointer + 0xffffd500) * 100
Lap5 = float(LapPointer + 0xffffd540) * 100
Lap6 = float(LapPointer + 0xffffd580) * 100
Lap7 = float(LapPointer + 0xffffd5c0) * 100
Lap8 = float(LapPointer + 0xffffd600) * 100



Laps = {
    1:{"lap":Lap1, "number": 1},
    2:{"lap":Lap2, "number": 2},
    3:{"lap":Lap3, "number": 3},
    4:{"lap":Lap4, "number": 4},
    5:{"lap":Lap5, "number": 5},
    6:{"lap":Lap6, "number": 6},
    7:{"lap":Lap7, "number": 7},
    8:{"lap":Lap8, "number": 8},
}

function BestLap(lapChecking){
    logic = always_true()

        //Comprobar que el mismo es diferente de 0
        //logic = logic && Laps[lapChecking]["lap"] != 0

        //Comprobar que todos los anteriores son mayores que el
        for lap in Laps{
            if(Laps[lap]["number"] < Laps[lapChecking]["number"]){
                logic = logic && Laps[lapChecking]["lap"] <= Laps[lap]["lap"]
            }
        }
        //Comprobar que todos los posteriores sn mayores que el Y diferente de 0
        for lap in Laps{
            if(Laps[lap]["number"] > Laps[lapChecking]["number"]){
                logic = logic && (Laps[lapChecking]["lap"] <= Laps[lap]["lap"] || Laps[lap]["lap"] == 0)
            }
        }
        return logic

}


leaderboard(
    id = 69550, title = "City Perimeter (Circuit)",
    description = "Best Lap",
    start  = dword(0x53C6F0) != 0 && dword(0x575D10) == 1 && dword(0xA81BC8) != prev(dword(0xA81BC8)) && dword(0x4FA100)
              == 1112753742,
    cancel = always_false(),
    submit = dword(0xA81BC8) != prev(dword(0xA81BC8)),
    value = max_of(
    measured(Lap1, when = BestLap(1)),
    measured(Lap2, when = BestLap(2)),
    measured(Lap3, when = BestLap(3)),
    measured(Lap4, when = BestLap(4)),
    measured(Lap5, when = BestLap(5)),
    measured(Lap6, when = BestLap(6)),
    measured(Lap7, when = BestLap(7)),
    measured(Lap8, when = BestLap(8))
), 
    format = "MILLISECS", lower_is_better = true
)

leaderboard(
    id = 69551, title = "Ironwood Estates (Circuit)",
    description = "Best Lap",
    start  = dword(0x53C6F0) != 0 && dword(0x575D10) == 1 && dword(0xA81978) != prev(dword(0xA81978)) && dword(0x4FA100)
              == 1112753742,
    cancel = always_false(),
    submit = dword(0xA81978) != prev(dword(0xA81978)),
    value = max_of(
    measured(Lap1, when = BestLap(1)),
    measured(Lap2, when = BestLap(2)),
    measured(Lap3, when = BestLap(3)),
    measured(Lap4, when = BestLap(4)),
    measured(Lap5, when = BestLap(5)),
    measured(Lap6, when = BestLap(6)),
    measured(Lap7, when = BestLap(7)),
    measured(Lap8, when = BestLap(8))
), 
    format = "MILLISECS", lower_is_better = true
)

leaderboard(
    id = 69552, title = "Campus Way (Circuit)",
    description = "Best Lap",
    start  = dword(0x53C6F0) != 0 && dword(0x575D10) == 1 && dword(0xA819B8) != prev(dword(0xA819B8)) && dword(0x4FA100)
              == 1112753742,
    cancel = always_false(),
    submit = dword(0xA819B8) != prev(dword(0xA819B8)),
    value = max_of(
    measured(Lap1, when = BestLap(1)),
    measured(Lap2, when = BestLap(2)),
    measured(Lap3, when = BestLap(3)),
    measured(Lap4, when = BestLap(4)),
    measured(Lap5, when = BestLap(5)),
    measured(Lap6, when = BestLap(6)),
    measured(Lap7, when = BestLap(7)),
    measured(Lap8, when = BestLap(8))
), 
    format = "MILLISECS", lower_is_better = true
)

leaderboard(
    id = 69553, title = "Highlands (Circuit)",
    description = "Best Lap",
    start  = dword(0x53C6F0) != 0 && dword(0x575D10) == 1 && dword(0xA81BE8) != prev(dword(0xA81BE8)) && dword(0x4FA100)
              == 1112753742,
    cancel = always_false(),
    submit = dword(0xA81BE8) != prev(dword(0xA81BE8)),
    value = max_of(
    measured(Lap1, when = BestLap(1)),
    measured(Lap2, when = BestLap(2)),
    measured(Lap3, when = BestLap(3)),
    measured(Lap4, when = BestLap(4)),
    measured(Lap5, when = BestLap(5)),
    measured(Lap6, when = BestLap(6)),
    measured(Lap7, when = BestLap(7)),
    measured(Lap8, when = BestLap(8))
), 
    format = "MILLISECS", lower_is_better = true
)

leaderboard(
    id = 69554, title = "Petersburg (Circuit)",
    description = "Best Lap",
    start  = dword(0x53C6F0) != 0 && dword(0x575D10) == 1 && dword(0xA81C28) != prev(dword(0xA81C28)) && dword(0x4FA100)
              == 1112753742,
    cancel = always_false(),
    submit = dword(0xA81C28) != prev(dword(0xA81C28)),
    value = max_of(
    measured(Lap1, when = BestLap(1)),
    measured(Lap2, when = BestLap(2)),
    measured(Lap3, when = BestLap(3)),
    measured(Lap4, when = BestLap(4)),
    measured(Lap5, when = BestLap(5)),
    measured(Lap6, when = BestLap(6)),
    measured(Lap7, when = BestLap(7)),
    measured(Lap8, when = BestLap(8))
), 
    format = "MILLISECS", lower_is_better = true
)

leaderboard(
    id = 69555, title = "Heritage Heights (Circuit)",
    description = "Best Lap",
    start  = dword(0x53C6F0) != 0 && dword(0x575D10) == 1 && dword(0xA81B58) != prev(dword(0xA81B58)) && dword(0x4FA100)
              == 1112753742,
    cancel = always_false(),
    submit = dword(0xA81B58) != prev(dword(0xA81B58)),
    value = max_of(
    measured(Lap1, when = BestLap(1)),
    measured(Lap2, when = BestLap(2)),
    measured(Lap3, when = BestLap(3)),
    measured(Lap4, when = BestLap(4)),
    measured(Lap5, when = BestLap(5)),
    measured(Lap6, when = BestLap(6)),
    measured(Lap7, when = BestLap(7)),
    measured(Lap8, when = BestLap(8))
), 
    format = "MILLISECS", lower_is_better = true
)

leaderboard(
    id = 69556, title = "Omega (Circuit)",
    description = "Best Lap",
    start  = dword(0x53C6F0) != 0 && dword(0x575D10) == 1 && dword(0xA81DB8) != prev(dword(0xA81DB8)) && dword(0x4FA100)
              == 1112753742,
    cancel = always_false(),
    submit = dword(0xA81DB8) != prev(dword(0xA81DB8)),
    value = max_of(
    measured(Lap1, when = BestLap(1)),
    measured(Lap2, when = BestLap(2)),
    measured(Lap3, when = BestLap(3)),
    measured(Lap4, when = BestLap(4)),
    measured(Lap5, when = BestLap(5)),
    measured(Lap6, when = BestLap(6)),
    measured(Lap7, when = BestLap(7)),
    measured(Lap8, when = BestLap(8))
), 
    format = "MILLISECS", lower_is_better = true
)

leaderboard(
    id = 69557, title = "Diamond (Circuit)",
    description = "Best Lap",
    start  = dword(0x53C6F0) != 0 && dword(0x575D10) == 1 && dword(0xA81C38) != prev(dword(0xA81C38)) && dword(0x4FA100)
              == 1112753742,
    cancel = always_false(),
    submit = dword(0xA81C38) != prev(dword(0xA81C38)),
    value = max_of(
    measured(Lap1, when = BestLap(1)),
    measured(Lap2, when = BestLap(2)),
    measured(Lap3, when = BestLap(3)),
    measured(Lap4, when = BestLap(4)),
    measured(Lap5, when = BestLap(5)),
    measured(Lap6, when = BestLap(6)),
    measured(Lap7, when = BestLap(7)),
    measured(Lap8, when = BestLap(8))
), 
    format = "MILLISECS", lower_is_better = true
)

leaderboard(
    id = 69558, title = "Hillcrest Boundary (Circuit)",
    description = "Best Lap",
    start  = dword(0x53C6F0) != 0 && dword(0x575D10) == 1 && dword(0xA81CA8) != prev(dword(0xA81CA8)) && dword(0x4FA100)
              == 1112753742,
    cancel = always_false(),
    submit = dword(0xA81CA8) != prev(dword(0xA81CA8)),
    value = max_of(
    measured(Lap1, when = BestLap(1)),
    measured(Lap2, when = BestLap(2)),
    measured(Lap3, when = BestLap(3)),
    measured(Lap4, when = BestLap(4)),
    measured(Lap5, when = BestLap(5)),
    measured(Lap6, when = BestLap(6)),
    measured(Lap7, when = BestLap(7)),
    measured(Lap8, when = BestLap(8))
), 
    format = "MILLISECS", lower_is_better = true
)

leaderboard(
    id = 69559, title = "Circle Rose (Circuit)",
    description = "Best Lap",
    start  = dword(0x53C6F0) != 0 && dword(0x575D10) == 1 && dword(0xA81D68) != prev(dword(0xA81D68)) && dword(0x4FA100)
              == 1112753742,
    cancel = always_false(),
    submit = dword(0xA81D68) != prev(dword(0xA81D68)),
    value = max_of(
    measured(Lap1, when = BestLap(1)),
    measured(Lap2, when = BestLap(2)),
    measured(Lap3, when = BestLap(3)),
    measured(Lap4, when = BestLap(4)),
    measured(Lap5, when = BestLap(5)),
    measured(Lap6, when = BestLap(6)),
    measured(Lap7, when = BestLap(7)),
    measured(Lap8, when = BestLap(8))
), 
    format = "MILLISECS", lower_is_better = true
)

leaderboard(
    id = 69560, title = "Switchback (Circuit)",
    description = "Best Lap",
    start  = dword(0x53C6F0) != 0 && dword(0x575D10) == 1 && dword(0xA82308) != prev(dword(0xA82308)) && dword(0x4FA100)
              == 1112753742,
    cancel = always_false(),
    submit = dword(0xA82308) != prev(dword(0xA82308)),
    value = max_of(
    measured(Lap1, when = BestLap(1)),
    measured(Lap2, when = BestLap(2)),
    measured(Lap3, when = BestLap(3)),
    measured(Lap4, when = BestLap(4)),
    measured(Lap5, when = BestLap(5)),
    measured(Lap6, when = BestLap(6)),
    measured(Lap7, when = BestLap(7)),
    measured(Lap8, when = BestLap(8))
), 
    format = "MILLISECS", lower_is_better = true
)

leaderboard(
    id = 69561, title = "Hospital Switchback (Circuit)",
    description = "Best Lap",
    start  = dword(0x53C6F0) != 0 && dword(0x575D10) == 1 && dword(0xA81E88) != prev(dword(0xA81E88)) && dword(0x4FA100)
              == 1112753742,
    cancel = always_false(),
    submit = dword(0xA81E88) != prev(dword(0xA81E88)),
    value = max_of(
    measured(Lap1, when = BestLap(1)),
    measured(Lap2, when = BestLap(2)),
    measured(Lap3, when = BestLap(3)),
    measured(Lap4, when = BestLap(4)),
    measured(Lap5, when = BestLap(5)),
    measured(Lap6, when = BestLap(6)),
    measured(Lap7, when = BestLap(7)),
    measured(Lap8, when = BestLap(8))
), 
    format = "MILLISECS", lower_is_better = true
)

leaderboard(
    id = 69562, title = "Dunwich Bay (Circuit)",
    description = "Best Lap",
    start  = dword(0x53C6F0) != 0 && dword(0x575D10) == 1 && dword(0xA81CC8) != prev(dword(0xA81CC8)) && dword(0x4FA100)
              == 1112753742,
    cancel = always_false(),
    submit = dword(0xA81CC8) != prev(dword(0xA81CC8)),
    value = max_of(
    measured(Lap1, when = BestLap(1)),
    measured(Lap2, when = BestLap(2)),
    measured(Lap3, when = BestLap(3)),
    measured(Lap4, when = BestLap(4)),
    measured(Lap5, when = BestLap(5)),
    measured(Lap6, when = BestLap(6)),
    measured(Lap7, when = BestLap(7)),
    measured(Lap8, when = BestLap(8))
), 
    format = "MILLISECS", lower_is_better = true
)

leaderboard(
    id = 69563, title = "Boundary (Circuit)",
    description = "Best Lap",
    start  = dword(0x53C6F0) != 0 && dword(0x575D10) == 1 && dword(0xA82288) != prev(dword(0xA82288)) && dword(0x4FA100)
              == 1112753742,
    cancel = always_false(),
    submit = dword(0xA82288) != prev(dword(0xA82288)),
    value = max_of(
    measured(Lap1, when = BestLap(1)),
    measured(Lap2, when = BestLap(2)),
    measured(Lap3, when = BestLap(3)),
    measured(Lap4, when = BestLap(4)),
    measured(Lap5, when = BestLap(5)),
    measured(Lap6, when = BestLap(6)),
    measured(Lap7, when = BestLap(7)),
    measured(Lap8, when = BestLap(8))
), 
    format = "MILLISECS", lower_is_better = true
)

leaderboard(
    id = 69564, title = "Century Square (Circuit)",
    description = "Best Lap",
    start  = dword(0x53C6F0) != 0 && dword(0x575D10) == 1 && dword(0xA81B28) != prev(dword(0xA81B28)) && dword(0x4FA100)
              == 1112753742,
    cancel = always_false(),
    submit = dword(0xA81B28) != prev(dword(0xA81B28)),
    value = max_of(
    measured(Lap1, when = BestLap(1)),
    measured(Lap2, when = BestLap(2)),
    measured(Lap3, when = BestLap(3)),
    measured(Lap4, when = BestLap(4)),
    measured(Lap5, when = BestLap(5)),
    measured(Lap6, when = BestLap(6)),
    measured(Lap7, when = BestLap(7)),
    measured(Lap8, when = BestLap(8))
), 
    format = "MILLISECS", lower_is_better = true
)

leaderboard(
    id = 69565, title = "Heritage & Omega (Circuit)",
    description = "Best Lap",
    start  = dword(0x53C6F0) != 0 && dword(0x575D10) == 1 && dword(0xA81B68) != prev(dword(0xA81B68)) && dword(0x4FA100)
              == 1112753742,
    cancel = always_false(),
    submit = dword(0xA81B68) != prev(dword(0xA81B68)),
    value = max_of(
    measured(Lap1, when = BestLap(1)),
    measured(Lap2, when = BestLap(2)),
    measured(Lap3, when = BestLap(3)),
    measured(Lap4, when = BestLap(4)),
    measured(Lap5, when = BestLap(5)),
    measured(Lap6, when = BestLap(6)),
    measured(Lap7, when = BestLap(7)),
    measured(Lap8, when = BestLap(8))
), 
    format = "MILLISECS", lower_is_better = true
)

leaderboard(
    id = 69566, title = "Little Italy (Circuit)",
    description = "Best Lap",
    start  = dword(0x53C6F0) != 0 && dword(0x575D10) == 1 && dword(0xA81928) != prev(dword(0xA81928)) && dword(0x4FA100)
              == 1112753742,
    cancel = always_false(),
    submit = dword(0xA81928) != prev(dword(0xA81928)),
    value = max_of(
    measured(Lap1, when = BestLap(1)),
    measured(Lap2, when = BestLap(2)),
    measured(Lap3, when = BestLap(3)),
    measured(Lap4, when = BestLap(4)),
    measured(Lap5, when = BestLap(5)),
    measured(Lap6, when = BestLap(6)),
    measured(Lap7, when = BestLap(7)),
    measured(Lap8, when = BestLap(8))
), 
    format = "MILLISECS", lower_is_better = true
)

leaderboard(
    id = 69567, title = "Ironhorse (Circuit)",
    description = "Best Lap",
    start  = dword(0x53C6F0) != 0 && dword(0x575D10) == 1 && dword(0xA81998) != prev(dword(0xA81998)) && dword(0x4FA100)
              == 1112753742,
    cancel = always_false(),
    submit = dword(0xA81998) != prev(dword(0xA81998)),
    value = max_of(
    measured(Lap1, when = BestLap(1)),
    measured(Lap2, when = BestLap(2)),
    measured(Lap3, when = BestLap(3)),
    measured(Lap4, when = BestLap(4)),
    measured(Lap5, when = BestLap(5)),
    measured(Lap6, when = BestLap(6)),
    measured(Lap7, when = BestLap(7)),
    measured(Lap8, when = BestLap(8))
), 
    format = "MILLISECS", lower_is_better = true
)

leaderboard(
    id = 69568, title = "Waterfront (Circuit)",
    description = "Best Lap",
    start  = dword(0x53C6F0) != 0 && dword(0x575D10) == 1 && dword(0xA81D58) != prev(dword(0xA81D58)) && dword(0x4FA100)
              == 1112753742,
    cancel = always_false(),
    submit = dword(0xA81D58) != prev(dword(0xA81D58)),
    value = max_of(
    measured(Lap1, when = BestLap(1)),
    measured(Lap2, when = BestLap(2)),
    measured(Lap3, when = BestLap(3)),
    measured(Lap4, when = BestLap(4)),
    measured(Lap5, when = BestLap(5)),
    measured(Lap6, when = BestLap(6)),
    measured(Lap7, when = BestLap(7)),
    measured(Lap8, when = BestLap(8))
), 
    format = "MILLISECS", lower_is_better = true
)

leaderboard(
    id = 69569, title = "Gray Point (Circuit)",
    description = "Best Lap",
    start  = dword(0x53C6F0) != 0 && dword(0x575D10) == 1 && dword(0xA82128) != prev(dword(0xA82128)) && dword(0x4FA100)
              == 1112753742,
    cancel = always_false(),
    submit = dword(0xA82128) != prev(dword(0xA82128)),
    value = max_of(
    measured(Lap1, when = BestLap(1)),
    measured(Lap2, when = BestLap(2)),
    measured(Lap3, when = BestLap(3)),
    measured(Lap4, when = BestLap(4)),
    measured(Lap5, when = BestLap(5)),
    measured(Lap6, when = BestLap(6)),
    measured(Lap7, when = BestLap(7)),
    measured(Lap8, when = BestLap(8))
), 
    format = "MILLISECS", lower_is_better = true
)

leaderboard(
    id = 69570, title = "Omega & Industries (Circuit)",
    description = "Best Lap",
    start  = dword(0x53C6F0) != 0 && dword(0x575D10) == 1 && dword(0xA819F8) != prev(dword(0xA819F8)) && dword(0x4FA100)
              == 1112753742,
    cancel = always_false(),
    submit = dword(0xA819F8) != prev(dword(0xA819F8)),
    value = max_of(
    measured(Lap1, when = BestLap(1)),
    measured(Lap2, when = BestLap(2)),
    measured(Lap3, when = BestLap(3)),
    measured(Lap4, when = BestLap(4)),
    measured(Lap5, when = BestLap(5)),
    measured(Lap6, when = BestLap(6)),
    measured(Lap7, when = BestLap(7)),
    measured(Lap8, when = BestLap(8))
), 
    format = "MILLISECS", lower_is_better = true
)

leaderboard(
    id = 69571, title = "Bay Bridge (Circuit)",
    description = "Best Lap",
    start  = dword(0x53C6F0) != 0 && dword(0x575D10) == 1 && dword(0xA82018) != prev(dword(0xA82018)) && dword(0x4FA100)
              == 1112753742,
    cancel = always_false(),
    submit = dword(0xA82018) != prev(dword(0xA82018)),
    value = max_of(
    measured(Lap1, when = BestLap(1)),
    measured(Lap2, when = BestLap(2)),
    measured(Lap3, when = BestLap(3)),
    measured(Lap4, when = BestLap(4)),
    measured(Lap5, when = BestLap(5)),
    measured(Lap6, when = BestLap(6)),
    measured(Lap7, when = BestLap(7)),
    measured(Lap8, when = BestLap(8))
), 
    format = "MILLISECS", lower_is_better = true
)

leaderboard(
    id = 69572, title = "Camden Tunnel (Circuit)",
    description = "Best Lap",
    start  = dword(0x53C6F0) != 0 && dword(0x575D10) == 1 && dword(0xA82028) != prev(dword(0xA82028)) && dword(0x4FA100)
              == 1112753742,
    cancel = always_false(),
    submit = dword(0xA82028) != prev(dword(0xA82028)),
    value = max_of(
    measured(Lap1, when = BestLap(1)),
    measured(Lap2, when = BestLap(2)),
    measured(Lap3, when = BestLap(3)),
    measured(Lap4, when = BestLap(4)),
    measured(Lap5, when = BestLap(5)),
    measured(Lap6, when = BestLap(6)),
    measured(Lap7, when = BestLap(7)),
    measured(Lap8, when = BestLap(8))
), 
    format = "MILLISECS", lower_is_better = true
)

leaderboard(
    id = 69573, title = "Campus Interchange (Circuit)",
    description = "Best Lap",
    start  = dword(0x53C6F0) != 0 && dword(0x575D10) == 1 && dword(0xA819D8) != prev(dword(0xA819D8)) && dword(0x4FA100)
              == 1112753742,
    cancel = always_false(),
    submit = dword(0xA819D8) != prev(dword(0xA819D8)),
    value = max_of(
    measured(Lap1, when = BestLap(1)),
    measured(Lap2, when = BestLap(2)),
    measured(Lap3, when = BestLap(3)),
    measured(Lap4, when = BestLap(4)),
    measured(Lap5, when = BestLap(5)),
    measured(Lap6, when = BestLap(6)),
    measured(Lap7, when = BestLap(7)),
    measured(Lap8, when = BestLap(8))
), 
    format = "MILLISECS", lower_is_better = true
)

leaderboard(
    id = 69574, title = "Country Club (Circuit)",
    description = "Best Lap",
    start  = dword(0x53C6F0) != 0 && dword(0x575D10) == 1 && dword(0xA81F78) != prev(dword(0xA81F78)) && dword(0x4FA100)
              == 1112753742,
    cancel = always_false(),
    submit = dword(0xA81F78) != prev(dword(0xA81F78)),
    value = max_of(
    measured(Lap1, when = BestLap(1)),
    measured(Lap2, when = BestLap(2)),
    measured(Lap3, when = BestLap(3)),
    measured(Lap4, when = BestLap(4)),
    measured(Lap5, when = BestLap(5)),
    measured(Lap6, when = BestLap(6)),
    measured(Lap7, when = BestLap(7)),
    measured(Lap8, when = BestLap(8))
), 
    format = "MILLISECS", lower_is_better = true
)

leaderboard(
    id = 69575, title = "East Park (Circuit)",
    description = "Best Lap",
    start  = dword(0x53C6F0) != 0 && dword(0x575D10) == 1 && dword(0xA81FE8) != prev(dword(0xA81FE8)) && dword(0x4FA100)
              == 1112753742,
    cancel = always_false(),
    submit = dword(0xA81FE8) != prev(dword(0xA81FE8)),
    value = max_of(
    measured(Lap1, when = BestLap(1)),
    measured(Lap2, when = BestLap(2)),
    measured(Lap3, when = BestLap(3)),
    measured(Lap4, when = BestLap(4)),
    measured(Lap5, when = BestLap(5)),
    measured(Lap6, when = BestLap(6)),
    measured(Lap7, when = BestLap(7)),
    measured(Lap8, when = BestLap(8))
), 
    format = "MILLISECS", lower_is_better = true
)

leaderboard(
    id = 69576, title = "Oil Refinery (Circuit)",
    description = "Best Lap",
    start  = dword(0x53C6F0) != 0 && dword(0x575D10) == 1 && dword(0xA81F48) != prev(dword(0xA81F48)) && dword(0x4FA100)
              == 1112753742,
    cancel = always_false(),
    submit = dword(0xA81F48) != prev(dword(0xA81F48)),
    value = max_of(
    measured(Lap1, when = BestLap(1)),
    measured(Lap2, when = BestLap(2)),
    measured(Lap3, when = BestLap(3)),
    measured(Lap4, when = BestLap(4)),
    measured(Lap5, when = BestLap(5)),
    measured(Lap6, when = BestLap(6)),
    measured(Lap7, when = BestLap(7)),
    measured(Lap8, when = BestLap(8))
), 
    format = "MILLISECS", lower_is_better = true
)

leaderboard(
    id = 69577, title = "Hastings (Circuit)",
    description = "Best Lap",
    start  = dword(0x53C6F0) != 0 && dword(0x575D10) == 1 && dword(0xA81918) != prev(dword(0xA81918)) && dword(0x4FA100)
              == 1112753742,
    cancel = always_false(),
    submit = dword(0xA81918) != prev(dword(0xA81918)),
    value = max_of(
    measured(Lap1, when = BestLap(1)),
    measured(Lap2, when = BestLap(2)),
    measured(Lap3, when = BestLap(3)),
    measured(Lap4, when = BestLap(4)),
    measured(Lap5, when = BestLap(5)),
    measured(Lap6, when = BestLap(6)),
    measured(Lap7, when = BestLap(7)),
    measured(Lap8, when = BestLap(8))
), 
    format = "MILLISECS", lower_is_better = true
)

leaderboard(
    id = 69578, title = "Clubhouse (Circuit)",
    description = "Best Lap",
    start  = dword(0x53C6F0) != 0 && dword(0x575D10) == 1 && dword(0xA81EE8) != prev(dword(0xA81EE8)) && dword(0x4FA100)
              == 1112753742,
    cancel = always_false(),
    submit = dword(0xA81EE8) != prev(dword(0xA81EE8)),
    value = max_of(
    measured(Lap1, when = BestLap(1)),
    measured(Lap2, when = BestLap(2)),
    measured(Lap3, when = BestLap(3)),
    measured(Lap4, when = BestLap(4)),
    measured(Lap5, when = BestLap(5)),
    measured(Lap6, when = BestLap(6)),
    measured(Lap7, when = BestLap(7)),
    measured(Lap8, when = BestLap(8))
), 
    format = "MILLISECS", lower_is_better = true
)

leaderboard(
    id = 69643, title = "Hickley Field (Lap Knockout)",
    description = "Best Lap",
    start  = dword(0x53C6F0) != 0 && dword(0x575D10) == 1 && dword(0xA81B78) != prev(dword(0xA81B78)) && dword(0x4FA100)
              == 1112753742,
    cancel = always_false(),
    submit = dword(0xA81B78) != prev(dword(0xA81B78)),
    value = max_of(
    measured(Lap1, when = BestLap(1)),
    measured(Lap2, when = BestLap(2)),
    measured(Lap3, when = BestLap(3)),
    measured(Lap4, when = BestLap(4)),
    measured(Lap5, when = BestLap(5)),
    measured(Lap6, when = BestLap(6)),
    measured(Lap7, when = BestLap(7)),
    measured(Lap8, when = BestLap(8))
), 
    format = "MILLISECS", lower_is_better = true
)

leaderboard(
    id = 69644, title = "Rosewood College (Lap Knockout)",
    description = "Best Lap",
    start  = dword(0x53C6F0) != 0 && dword(0x575D10) == 1 && dword(0xA823B8) != prev(dword(0xA823B8)) && dword(0x4FA100)
              == 1112753742,
    cancel = always_false(),
    submit = dword(0xA823B8) != prev(dword(0xA823B8)),
    value = max_of(
    measured(Lap1, when = BestLap(1)),
    measured(Lap2, when = BestLap(2)),
    measured(Lap3, when = BestLap(3)),
    measured(Lap4, when = BestLap(4)),
    measured(Lap5, when = BestLap(5)),
    measured(Lap6, when = BestLap(6)),
    measured(Lap7, when = BestLap(7)),
    measured(Lap8, when = BestLap(8))
), 
    format = "MILLISECS", lower_is_better = true
)

leaderboard(
    id = 69645, title = "City Center (Lap Knockout)",
    description = "Best Lap",
    start  = dword(0x53C6F0) != 0 && dword(0x575D10) == 1 && dword(0xA82368) != prev(dword(0xA82368)) && dword(0x4FA100)
              == 1112753742,
    cancel = always_false(),
    submit = dword(0xA82368) != prev(dword(0xA82368)),
    value = max_of(
    measured(Lap1, when = BestLap(1)),
    measured(Lap2, when = BestLap(2)),
    measured(Lap3, when = BestLap(3)),
    measured(Lap4, when = BestLap(4)),
    measured(Lap5, when = BestLap(5)),
    measured(Lap6, when = BestLap(6)),
    measured(Lap7, when = BestLap(7)),
    measured(Lap8, when = BestLap(8))
), 
    format = "MILLISECS", lower_is_better = true
)

leaderboard(
    id = 69646, title = "Rosewood Drive (Lap Knockout)",
    description = "Best Lap",
    start  = dword(0x53C6F0) != 0 && dword(0x575D10) == 1 && dword(0xA82378) != prev(dword(0xA82378)) && dword(0x4FA100)
              == 1112753742,
    cancel = always_false(),
    submit = dword(0xA82378) != prev(dword(0xA82378)),
    value = max_of(
    measured(Lap1, when = BestLap(1)),
    measured(Lap2, when = BestLap(2)),
    measured(Lap3, when = BestLap(3)),
    measured(Lap4, when = BestLap(4)),
    measured(Lap5, when = BestLap(5)),
    measured(Lap6, when = BestLap(6)),
    measured(Lap7, when = BestLap(7)),
    measured(Lap8, when = BestLap(8))
), 
    format = "MILLISECS", lower_is_better = true
)

leaderboard(
    id = 69647, title = "Ocean Hills (Lap Knockout)",
    description = "Best Lap",
    start  = dword(0x53C6F0) != 0 && dword(0x575D10) == 1 && dword(0xA81C78) != prev(dword(0xA81C78)) && dword(0x4FA100)
              == 1112753742,
    cancel = always_false(),
    submit = dword(0xA81C78) != prev(dword(0xA81C78)),
    value = max_of(
    measured(Lap1, when = BestLap(1)),
    measured(Lap2, when = BestLap(2)),
    measured(Lap3, when = BestLap(3)),
    measured(Lap4, when = BestLap(4)),
    measured(Lap5, when = BestLap(5)),
    measured(Lap6, when = BestLap(6)),
    measured(Lap7, when = BestLap(7)),
    measured(Lap8, when = BestLap(8))
), 
    format = "MILLISECS", lower_is_better = true
)

leaderboard(
    id = 69648, title = "Bayshore (Lap Knockout)",
    description = "Best Lap",
    start  = dword(0x53C6F0) != 0 && dword(0x575D10) == 1 && dword(0xA822B8) != prev(dword(0xA822B8)) && dword(0x4FA100)
              == 1112753742,
    cancel = always_false(),
    submit = dword(0xA822B8) != prev(dword(0xA822B8)),
    value = max_of(
    measured(Lap1, when = BestLap(1)),
    measured(Lap2, when = BestLap(2)),
    measured(Lap3, when = BestLap(3)),
    measured(Lap4, when = BestLap(4)),
    measured(Lap5, when = BestLap(5)),
    measured(Lap6, when = BestLap(6)),
    measured(Lap7, when = BestLap(7)),
    measured(Lap8, when = BestLap(8))
), 
    format = "MILLISECS", lower_is_better = true
)

leaderboard(
    id = 69649, title = "Fisher Road (Lap Knockout)",
    description = "Best Lap",
    start  = dword(0x53C6F0) != 0 && dword(0x575D10) == 1 && dword(0xA82298) != prev(dword(0xA82298)) && dword(0x4FA100)
              == 1112753742,
    cancel = always_false(),
    submit = dword(0xA82298) != prev(dword(0xA82298)),
    value = max_of(
    measured(Lap1, when = BestLap(1)),
    measured(Lap2, when = BestLap(2)),
    measured(Lap3, when = BestLap(3)),
    measured(Lap4, when = BestLap(4)),
    measured(Lap5, when = BestLap(5)),
    measured(Lap6, when = BestLap(6)),
    measured(Lap7, when = BestLap(7)),
    measured(Lap8, when = BestLap(8))
), 
    format = "MILLISECS", lower_is_better = true
)

leaderboard(
    id = 69650, title = "Cascade (Lap Knockout)",
    description = "Best Lap",
    start  = dword(0x53C6F0) != 0 && dword(0x575D10) == 1 && dword(0xA81CD8) != prev(dword(0xA81CD8)) && dword(0x4FA100)
              == 1112753742,
    cancel = always_false(),
    submit = dword(0xA81CD8) != prev(dword(0xA81CD8)),
    value = max_of(
    measured(Lap1, when = BestLap(1)),
    measured(Lap2, when = BestLap(2)),
    measured(Lap3, when = BestLap(3)),
    measured(Lap4, when = BestLap(4)),
    measured(Lap5, when = BestLap(5)),
    measured(Lap6, when = BestLap(6)),
    measured(Lap7, when = BestLap(7)),
    measured(Lap8, when = BestLap(8))
), 
    format = "MILLISECS", lower_is_better = true
)

leaderboard(
    id = 69651, title = "Hwy 201 (Lap Knockout)",
    description = "Best Lap",
    start  = dword(0x53C6F0) != 0 && dword(0x575D10) == 1 && dword(0xA82238) != prev(dword(0xA82238)) && dword(0x4FA100)
              == 1112753742,
    cancel = always_false(),
    submit = dword(0xA82238) != prev(dword(0xA82238)),
    value = max_of(
    measured(Lap1, when = BestLap(1)),
    measured(Lap2, when = BestLap(2)),
    measured(Lap3, when = BestLap(3)),
    measured(Lap4, when = BestLap(4)),
    measured(Lap5, when = BestLap(5)),
    measured(Lap6, when = BestLap(6)),
    measured(Lap7, when = BestLap(7)),
    measured(Lap8, when = BestLap(8))
), 
    format = "MILLISECS", lower_is_better = true
)

leaderboard(
    id = 69652, title = "Century (Lap Knockout)",
    description = "Best Lap",
    start  = dword(0x53C6F0) != 0 && dword(0x575D10) == 1 && dword(0xA82218) != prev(dword(0xA82218)) && dword(0x4FA100)
              == 1112753742,
    cancel = always_false(),
    submit = dword(0xA82218) != prev(dword(0xA82218)),
    value = max_of(
    measured(Lap1, when = BestLap(1)),
    measured(Lap2, when = BestLap(2)),
    measured(Lap3, when = BestLap(3)),
    measured(Lap4, when = BestLap(4)),
    measured(Lap5, when = BestLap(5)),
    measured(Lap6, when = BestLap(6)),
    measured(Lap7, when = BestLap(7)),
    measured(Lap8, when = BestLap(8))
), 
    format = "MILLISECS", lower_is_better = true
)

leaderboard(
    id = 69653, title = "Coastal (Lap Knockout)",
    description = "Best Lap",
    start  = dword(0x53C6F0) != 0 && dword(0x575D10) == 1 && dword(0xA821C8) != prev(dword(0xA821C8)) && dword(0x4FA100)
              == 1112753742,
    cancel = always_false(),
    submit = dword(0xA821C8) != prev(dword(0xA821C8)),
    value = max_of(
    measured(Lap1, when = BestLap(1)),
    measured(Lap2, when = BestLap(2)),
    measured(Lap3, when = BestLap(3)),
    measured(Lap4, when = BestLap(4)),
    measured(Lap5, when = BestLap(5)),
    measured(Lap6, when = BestLap(6)),
    measured(Lap7, when = BestLap(7)),
    measured(Lap8, when = BestLap(8))
), 
    format = "MILLISECS", lower_is_better = true
)

leaderboard(
    id = 69654, title = "Rosewood Hillcrest (Lap Knockout)",
    description = "Best Lap",
    start  = dword(0x53C6F0) != 0 && dword(0x575D10) == 1 && dword(0xA821D8) != prev(dword(0xA821D8)) && dword(0x4FA100)
              == 1112753742,
    cancel = always_false(),
    submit = dword(0xA821D8) != prev(dword(0xA821D8)),
    value = max_of(
    measured(Lap1, when = BestLap(1)),
    measured(Lap2, when = BestLap(2)),
    measured(Lap3, when = BestLap(3)),
    measured(Lap4, when = BestLap(4)),
    measured(Lap5, when = BestLap(5)),
    measured(Lap6, when = BestLap(6)),
    measured(Lap7, when = BestLap(7)),
    measured(Lap8, when = BestLap(8))
), 
    format = "MILLISECS", lower_is_better = true
)

leaderboard(
    id = 69655, title = "Dunwich Village (Lap Knockout)",
    description = "Best Lap",
    start  = dword(0x53C6F0) != 0 && dword(0x575D10) == 1 && dword(0xA82168) != prev(dword(0xA82168)) && dword(0x4FA100)
              == 1112753742,
    cancel = always_false(),
    submit = dword(0xA82168) != prev(dword(0xA82168)),
    value = max_of(
    measured(Lap1, when = BestLap(1)),
    measured(Lap2, when = BestLap(2)),
    measured(Lap3, when = BestLap(3)),
    measured(Lap4, when = BestLap(4)),
    measured(Lap5, when = BestLap(5)),
    measured(Lap6, when = BestLap(6)),
    measured(Lap7, when = BestLap(7)),
    measured(Lap8, when = BestLap(8))
), 
    format = "MILLISECS", lower_is_better = true
)

leaderboard(
    id = 69656, title = "Chancellor Way (Lap Knockout)",
    description = "Best Lap",
    start  = dword(0x53C6F0) != 0 && dword(0x575D10) == 1 && dword(0xA820E8) != prev(dword(0xA820E8)) && dword(0x4FA100)
              == 1112753742,
    cancel = always_false(),
    submit = dword(0xA820E8) != prev(dword(0xA820E8)),
    value = max_of(
    measured(Lap1, when = BestLap(1)),
    measured(Lap2, when = BestLap(2)),
    measured(Lap3, when = BestLap(3)),
    measured(Lap4, when = BestLap(4)),
    measured(Lap5, when = BestLap(5)),
    measured(Lap6, when = BestLap(6)),
    measured(Lap7, when = BestLap(7)),
    measured(Lap8, when = BestLap(8))
), 
    format = "MILLISECS", lower_is_better = true
)

leaderboard(
    id = 69657, title = "Industrial Front (Lap Knockout)",
    description = "Best Lap",
    start  = dword(0x53C6F0) != 0 && dword(0x575D10) == 1 && dword(0xA82118) != prev(dword(0xA82118)) && dword(0x4FA100)
              == 1112753742,
    cancel = always_false(),
    submit = dword(0xA82118) != prev(dword(0xA82118)),
    value = max_of(
    measured(Lap1, when = BestLap(1)),
    measured(Lap2, when = BestLap(2)),
    measured(Lap3, when = BestLap(3)),
    measured(Lap4, when = BestLap(4)),
    measured(Lap5, when = BestLap(5)),
    measured(Lap6, when = BestLap(6)),
    measured(Lap7, when = BestLap(7)),
    measured(Lap8, when = BestLap(8))
), 
    format = "MILLISECS", lower_is_better = true
)

leaderboard(
    id = 69658, title = "Riverside (Lap Knockout)",
    description = "Best Lap",
    start  = dword(0x53C6F0) != 0 && dword(0x575D10) == 1 && dword(0xA82038) != prev(dword(0xA82038)) && dword(0x4FA100)
              == 1112753742,
    cancel = always_false(),
    submit = dword(0xA82038) != prev(dword(0xA82038)),
    value = max_of(
    measured(Lap1, when = BestLap(1)),
    measured(Lap2, when = BestLap(2)),
    measured(Lap3, when = BestLap(3)),
    measured(Lap4, when = BestLap(4)),
    measured(Lap5, when = BestLap(5)),
    measured(Lap6, when = BestLap(6)),
    measured(Lap7, when = BestLap(7)),
    measured(Lap8, when = BestLap(8))
), 
    format = "MILLISECS", lower_is_better = true
)

leaderboard(
    id = 69659, title = "College Switchback (Lap Knockout)",
    description = "Best Lap",
    start  = dword(0x53C6F0) != 0 && dword(0x575D10) == 1 && dword(0xA82068) != prev(dword(0xA82068)) && dword(0x4FA100)
              == 1112753742,
    cancel = always_false(),
    submit = dword(0xA82068) != prev(dword(0xA82068)),
    value = max_of(
    measured(Lap1, when = BestLap(1)),
    measured(Lap2, when = BestLap(2)),
    measured(Lap3, when = BestLap(3)),
    measured(Lap4, when = BestLap(4)),
    measured(Lap5, when = BestLap(5)),
    measured(Lap6, when = BestLap(6)),
    measured(Lap7, when = BestLap(7)),
    measured(Lap8, when = BestLap(8))
), 
    format = "MILLISECS", lower_is_better = true
)

leaderboard(
    id = 69660, title = "Petersburg Crossing (Lap Knockout)",
    description = "Best Lap",
    start  = dword(0x53C6F0) != 0 && dword(0x575D10) == 1 && dword(0xA81FC8) != prev(dword(0xA81FC8)) && dword(0x4FA100)
              == 1112753742,
    cancel = always_false(),
    submit = dword(0xA81FC8) != prev(dword(0xA81FC8)),
    value = max_of(
    measured(Lap1, when = BestLap(1)),
    measured(Lap2, when = BestLap(2)),
    measured(Lap3, when = BestLap(3)),
    measured(Lap4, when = BestLap(4)),
    measured(Lap5, when = BestLap(5)),
    measured(Lap6, when = BestLap(6)),
    measured(Lap7, when = BestLap(7)),
    measured(Lap8, when = BestLap(8))
), 
    format = "MILLISECS", lower_is_better = true
)

leaderboard(
    id = 69661, title = "Valley & Hwy 201 (Lap Knockout)",
    description = "Best Lap",
    start  = dword(0x53C6F0) != 0 && dword(0x575D10) == 1 && dword(0xA81FD8) != prev(dword(0xA81FD8)) && dword(0x4FA100)
              == 1112753742,
    cancel = always_false(),
    submit = dword(0xA81FD8) != prev(dword(0xA81FD8)),
    value = max_of(
    measured(Lap1, when = BestLap(1)),
    measured(Lap2, when = BestLap(2)),
    measured(Lap3, when = BestLap(3)),
    measured(Lap4, when = BestLap(4)),
    measured(Lap5, when = BestLap(5)),
    measured(Lap6, when = BestLap(6)),
    measured(Lap7, when = BestLap(7)),
    measured(Lap8, when = BestLap(8))
), 
    format = "MILLISECS", lower_is_better = true
)

leaderboard(
    id = 69662, title = "Smuggler's Wharf (Lap Knockout)",
    description = "Best Lap",
    start  = dword(0x53C6F0) != 0 && dword(0x575D10) == 1 && dword(0xA81F08) != prev(dword(0xA81F08)) && dword(0x4FA100)
              == 1112753742,
    cancel = always_false(),
    submit = dword(0xA81F08) != prev(dword(0xA81F08)),
    value = max_of(
    measured(Lap1, when = BestLap(1)),
    measured(Lap2, when = BestLap(2)),
    measured(Lap3, when = BestLap(3)),
    measured(Lap4, when = BestLap(4)),
    measured(Lap5, when = BestLap(5)),
    measured(Lap6, when = BestLap(6)),
    measured(Lap7, when = BestLap(7)),
    measured(Lap8, when = BestLap(8))
), 
    format = "MILLISECS", lower_is_better = true
)
