// Spider-Man & Venom: Maximum Carnage
// #ID = 349

Progression = {
1:{"title":"Streets of New York City", "description":"Beat 'New York Street'", "points":5,"stageID":0x02},
2:{"title":"Dodging Beams", "description":"Beat 'Climb'", "points":5,"stageID":0x04},
3:{"title":"Double Dose of Disaster", "description":"Beat 'The Rooftop'", "points":5,"stageID":0x06},
4:{"title":"Send Help", "description":"Beat 'Alleyway'", "points":5,"stageID":0x08},
5:{"title":"Meet the Maniac", "description":"Beat 'The Hall'", "points":5,"stageID":0x0a},
6:{"title":"Vs. Demogoblin", "description":"Beat 'Times Square'", "points":10,"stageID":0x0e},
7:{"title":"Northern California", "description":"Beat 'San Francisco'", "points":10,"stageID":0x10},
8:{"title":"Two-On-One Situation", "description":"Beat 'Central Park'", "points":10,"stageID":0x12},
9:{"title":"Back on the Streets", "description":"Beat 'New York Streets 2'", "points":10,"stageID":0x14},
10:{"title":"The Nightclub", "description":"Beat 'The Deep'", "points":10,"stageID":0x16},
11:{"title":"Freedom Four Plaza", "description":"Beat 'Fantastic 4 HQ'", "points":10,"stageID":0x18},
12:{"title":"The Sonic Gun", "description":"Beat 'Fantastic 4 Lab'", "points":10,"stageID":0x1a},
13:{"title":"Carnage and His Cronies", "description":"Beat 'Rooftop 2'", "points":10,"stageID":0x1c},
14:{"title":"Walk in the Park", "description":"Beat 'Prospect Park'", "points":10,"stageID":0x1e},
15:{"title":"Crowd Control", "description":"Beat 'Prospect Park 2'", "points":10,"stageID":0x20},
16:{"title":"Return to Your Cells", "description":"Beat 'Police Station'", "points":10,"stageID":0x22},
17:{"title":"Sky Fight", "description":"Beat 'Manhattan Rooftop'", "points":10,"stageID":0x26},
18:{"title":"Double-Teaming", "description":"Beat 'Manhattan Street 1'", "points":10,"stageID":0x2c},
19:{"title":"Escaped Torture", "description":"Beat 'Statue of Liberty'", "points":10,"stageID":0x2a},
20:{"title":"Mob Dispatched", "description":"Beat 'Manhattan Street 2'", "points":10,"stageID":0x30},
21:{"title":"Final Fight?", "description":"Beat 'The End...'", "points":10,"stageID":0x32},
22:{"title":"Where it All Started", "description":"Beat 'Ruined Boy's Home' and complete the game", "points":25,"stageID":0x34},
}

SecretRooms = {
    1:{"title":"Broken Window", "description":"Find the Secret Room in 'Climb'", "points":5,"stageID":0x04},
2:{"title":"Making a Deposit", "description":"Find the Secret Room in 'San Francisco'", "points":5,"stageID":0x10},
3:{"title":"Suspicious Venting", "description":"Find the Secret Room in 'Fantastic 4 Lab'", "points":5,"stageID":0x1a},
4:{"title":"Solitary 27", "description":"Find the Secret Room in 'Police Station'", "points":5,"stageID":0x22},
5:{"title":"Skylight Backflip", "description":"Find the Secret Room in 'Manhattan Rooftop'", "points":5,"stageID":0x26},
6:{"title":"Carnage Ignored", "description":"Find the Secret Room in 'Ruined Boy's Home'", "points":10,"stageID":0x34},
}
LevelID = word(0x0007fc)
LevelClear = bit6(0x0007ff)

Continues = word(0x000782)
function ProgressionLogic(level){
    return
    LevelID == level && LevelClear > prev(LevelClear)
}
SecretRoomFlag = bit5(0x0007ff)

function SecretRoom(level){
    return
    prev(LevelID) == level && SecretRoomFlag > prev(SecretRoomFlag)
}

for achievement in Progression{
    achievement(
        Progression[achievement]["title"], Progression[achievement]["description"], Progression[achievement]["points"],
        ProgressionLogic(Progression[achievement]["stageID"])
    )
}

achievement(
    "Let There Be Carnage", "Complete the game without using any continues", 50, 
    trigger_when(LevelID == 0x34 && LevelClear > prev(LevelClear)) && disable_when(Continues == prev(Continues)-1, LevelID == 0x02)
)

for achievement in SecretRooms{
    achievement(
        SecretRooms[achievement]["title"], SecretRooms[achievement]["description"], SecretRooms[achievement]["points"],
        SecretRoom(SecretRooms[achievement]["stageID"])
    )
}

Score = 
(word(0x000768)*10) +
(word(0x00076a)*100) +
(word(0x00076c)*1000) +
(word(0x00076e)*10000) +
(word(0x000770)*100000)

leaderboard(
title = "Top Score", 
description = "Who can finish the game with the most points?", 
start = ProgressionLogic(0x34), 
cancel = always_false(), 
submit = always_true(), 
value = Score, 
format="POINTS", 
lower_is_better=false
)