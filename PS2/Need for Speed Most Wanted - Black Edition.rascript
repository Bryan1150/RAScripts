// Need for Speed: Most Wanted - Black Edition
// #ID = 7788


StartTemp = byte(0x00) == 1
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
title = "Best Lap Test", 
description = "Best Lap Test", 
start = StartTemp, 
cancel = always_false(), 
submit = always_false(), 
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
format="VALUE", 
lower_is_better=false)