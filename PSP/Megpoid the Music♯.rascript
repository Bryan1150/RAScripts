// Megpoid the Music♯
// #ID = 22296

ScreenID = dword(0x00d66fa8)
InitialBoot = 0x00
InGame = 0x05
IntroCutscene = 0x11
TitleMenu = 0x12
TitleScreen = 0x15
SaveLoad = 0x0f

SongID = dword(0x00ce218c)

Difficulty = dword(0x00ce2190)
Expert = 0x04
Challenge = 0x03
Normal = 0x02
ResultsRank = dword(0x00ce1f9c)
Bad = 0x04
Well = 0x03
Excellent = 0x02
Wonderful = 0x01
Perfect = 0x00

ResultsScore = dword(0x00ce1f80)

ResultsCombo = dword(0x00ce1f84)

ResultsBrilliantNotes = dword(0x00ce1f88)

CostumeID = dword(0x00ce2184)

PointerTitles = dword(0x01b99e30) & 0x1ffffff

SongsData = {
1:{"title":"It Is Raining", "description":"Get Excellent or better in 雨が降って。 (Ame ga Futte.)", "points":10, "songID":0x02, "Stars":6},
2:{"title":"Rosetta", "description":"Get Excellent or better in ロゼッタ (Rosetta)", "points":10, "songID":0x04, "Stars":5},
3:{"title":"Love is Surely Soaring", "description":"Get Excellent or better in 恋はきっと急上昇☆ (Koi wa Kitto Kyuujoushou☆)", "points":10, "songID":0x05, "Stars":6},
4:{"title":"Forever Like This", "description":"Get Excellent or better in ずっとこのまま (Zutto Kono Mama)", "points":10, "songID":0x01, "Stars":6},
5:{"title":"Blue Bird", "description":"Get Excellent or better in blue bird", "points":10, "songID":0x10, "Stars":6},
6:{"title":"Cutoff Line", "description":"Get Excellent or better in キリトリセン (Kiritorisen)", "points":50, "songID":0x15, "Stars":9},
7:{"title":"VERSUS", "description":"Get Excellent or better in VERSUS", "points":25, "songID":0x0b, "Stars":8},
8:{"title":"Carnival", "description":"Get Excellent or better in カーニバル (Carnival)", "points":10, "songID":0x0f, "Stars":7},
9:{"title":"Ten-Faced", "description":"Get Excellent or better in 十面相 (Juu-Mensou)", "points":25, "songID":0x0c, "Stars":8},
10:{"title":"Mozaik Role", "description":"Get Excellent or better in モザイクロール (Mozaik Role)", "points":10, "songID":0x14, "Stars":6},
11:{"title":"Life Reset Button", "description":"Get Excellent or better in 人生リセットボタン (Jinsei Reset Button)", "points":25, "songID":0x06, "Stars":8},
12:{"title":"Electric Star", "description":"Get Excellent or better in エレクトリック・スター (Electric Star)", "points":10, "songID":0x1e, "Stars":7},
13:{"title":"The Color of the Next Blossom", "description":"Get Excellent or better in 次咲く花の色は (Tsugi Saku Hana no Iro wa)", "points":25, "songID":0x08, "Stars":8},
14:{"title":"Sky-Colored Eyes", "description":"Get Excellent or better in 大空色のHi-To-Mi (Oozora Iro no Hi-To-Mi)", "points":10, "songID":0x0e, "Stars":6},
15:{"title":"EAT ME", "description":"Get Excellent or better in EAT ME", "points":25, "songID":0x19, "Stars":8},
16:{"title":"Requiem", "description":"Get Excellent or better in レクイヱム (Requiem)", "points":10, "songID":0x07, "Stars":7},
17:{"title":"Festival Music", "description":"Get Excellent or better in 祭囃子 (Matsuri Hayashi)", "points":25, "songID":0x13, "Stars":8},
18:{"title":"Kappas are Boiling Slugs in my Kitchen", "description":"Get Excellent or better in キッチンでカッパがタニシ茹でてる (Kitchen de Kappa ga Tanishi Yude Teru)", "points":25, "songID":0x0a, "Stars":8},
19:{"title":"The Trumpet-Playing Boy", "description":"Get Excellent or better in ラッパ吹きの少年 (Rappa Fuki no Shounen)", "points":25, "songID":0x09, "Stars":8},
20:{"title":"Raid of Glass", "description":"Get Excellent or better in raid of glass", "points":10, "songID":0x03, "Stars":6},
21:{"title":"Dystopia Zipangu", "description":"Get Excellent or better in ディストピア・ジパング (Dystopia Zipangu)", "points":25, "songID":0x17, "Stars":8},
22:{"title":"Cattleya", "description":"Get Excellent or better in カトレア (Katorea)", "points":10, "songID":0x18, "Stars":7},
23:{"title":"Sleep Sky Walk", "description":"Get Excellent or better in スリープ・スカイ・ウォーク (Sleep Sky Walk)", "points":10, "songID":0x1d, "Stars":7},
24:{"title":"I Want to Meet You", "description":"Get Excellent or better in 会いたい (Aitai)", "points":10, "songID":0x0d, "Stars":7},
25:{"title":"Happy × Shiny", "description":"Get Excellent or better in Happy × Shiny", "points":50, "songID":0x1a, "Stars":9},
26:{"title":"Megu Megu☆Fire Endless Night", "description":"Get Excellent or better in メグメグ☆ファイアーエンドレスナイト (Megu Megu☆Fire Endless Night)", "points":50, "songID":0x1c, "Stars":9},
27:{"title":"Holography", "description":"Get Excellent or better in Holography", "points":50, "songID":0x12, "Stars":9},
28:{"title":"KiLLER LADY", "description":"Get Excellent or better in KiLLER LADY", "points":25, "songID":0x11, "Stars":8},
29:{"title":"A Born Coward", "description":"Get Excellent or better in 天ノ弱 (Amanojaku)", "points":10, "songID":0x16, "Stars":7},
30:{"title":"The Cavaliere's Swan Song", "description":"Get Excellent or better in 絶唱のカヴァリエーレ (Zesshou no Cavaliere)", "points":25, "songID":0x1b, "Stars":8},
}


SongChallenges = {
31:{"title":"Town Girl", "description":"Using the [タウンガール (Town Girl)] costume complete 雨が降って。 (Ame ga Futte.) with a combo of 50 or more on Normal", "points":5, "songID":0x02, "Notes":0, "Combo":50, "Difficulty":Normal, "Rank":Well, "IDCostume":0x04},
32:{"title":"Grace Moon", "description":"Using the [グレイスムーン (Grace Moon)] costume get Wonderful or better in ロゼッタ (Rosetta) on Normal", "points":5, "songID":0x04, "Notes":0, "Combo":0, "Difficulty":Normal, "Rank":Wonderful, "IDCostume":0x02},
33:{"title":"Idol Princess", "description":"Using the [アイドルプリンセス (Idol Princess)] costume complete 恋はきっと急上昇☆ (Koi wa Kitto Kyuujoushou☆) with more than 75 Brilliant Notes on Normal", "points":5, "songID":0x05, "Notes":75, "Combo":0, "Difficulty":Normal, "Rank":Well, "IDCostume":0x01},
34:{"title":"Cosmo Disco", "description":"Using the [コスモディスコ (Cosmo Disco)] costume get Perfect in ずっとこのまま (Zutto Kono Mama) on Normal ", "points":5, "songID":0x01, "Notes":0, "Combo":0, "Difficulty":Normal, "Rank":Perfect, "IDCostume":0x03},
35:{"title":"Starlight Chiffon", "description":"Using the [スターライトシフォン (Starlight Chiffon)] costume get Perfect in blue bird on Normal", "points":5, "songID":0x10, "Notes":0, "Combo":0, "Difficulty":Normal, "Rank":Perfect, "IDCostume":0x0a},
36:{"title":"Chia Full Sailor", "description":"Using the [チアフルセーラー (Chia Full Sailor)] costume complete キリトリセン (Kiritorisen) with a combo of 100 or more on Challenge", "points":10, "songID":0x15, "Notes":0, "Combo":100, "Difficulty":Challenge, "Rank":Well, "IDCostume":0x09},
37:{"title":"Japanese Style", "description":"Using the [和スタイル-雅- (Japanese Style -Miyabi-)] costume get Excellent or better in VERSUS on Challenge", "points":10, "songID":0x0b, "Notes":0, "Combo":0, "Difficulty":Challenge, "Rank":Excellent, "IDCostume":0x05},
38:{"title":"Chess Gothic", "description":"Using the [チェスゴシック (Chess Gothic)] costume complete カーニバル (Carnival) with more than 150 Brilliant Notes on Challenge", "points":10, "songID":0x0f, "Notes":150, "Combo":0, "Difficulty":Challenge, "Rank":Well, "IDCostume":0x06},
39:{"title":"Rock Pankyla", "description":"Using the [ロックパンキッラュ (Rock Pankyla)] costume get Excellent or better in モザイクロール (Mozaik Role) on Challenge", "points":10, "songID":0x14, "Notes":0, "Combo":0, "Difficulty":Challenge, "Rank":Excellent, "IDCostume":0x07},
40:{"title":"Cyber Plug#", "description":"Using the [サイバープラグ# (Cyber Plug#)] costume get Excellent or better in 人生リセットボタン (Jinsei Reset Button) on Challenge", "points":10, "songID":0x06, "Notes":0, "Combo":0, "Difficulty":Challenge, "Rank":Excellent, "IDCostume":0x08},
41:{"title":"Fluffy Rabbit", "description":"Using the [ふわもこラビット (Fluffy Rabbit)] costume complete Happy × Shiny on Expert", "points":10, "songID":0x1a, "Notes":0, "Combo":0, "Difficulty":Expert, "Rank":Well, "IDCostume":0x0f},
42:{"title":"Over the Shoulder", "description":"Using the [オーバーストスーツ (Over-the-shoulder suit)] costume メグメグ☆ファイアーエンドレスナイト complete (Megu Megu☆Fire Endless Night) on Expert", "points":10, "songID":0x1c, "Notes":0, "Combo":0, "Difficulty":Expert, "Rank":Well, "IDCostume":0x10},
43:{"title":"Native", "description":"Using the [Native] costume complete 絶唱のカヴァリエーレ (Zesshou no Cavaliere) on Expert", "points":10, "songID":0x1b, "Notes":0, "Combo":0, "Difficulty":Expert, "Rank":Well, "IDCostume":0x0b},
}

Titles = {
44:{"title":"Just Press the Buttons", "description":"Complete the tutorial", "points":1, "offset":0x04},
45:{"title":"Perfect Dayo", "description":"Get your first perfect", "points":10, "offset":0x1c},
46:{"title":"Special Points", "description":"Acummulate 100.000 SP or more", "points":10, "offset":0x5c},
47:{"title":"Full Album", "description":"Unlock all songs", "points":25, "offset":0x18},
48:{"title":"Happy Gumi", "description":"Give a total of 50 presents to Gumi", "points":10, "offset":0x54},
}

Items = {
49:{"title":"Music# Collector", "description":"Buy every shelf item", "points":25, "offset":0x74, "SecondOffset":0x10, "pointer": dword(0x01b99d40)},
50:{"title":"Music# Roommate", "description":"Buy every wall item", "points":25, "offset":0x74, "SecondOffset":0x10, "pointer": dword(0x01b99d30)},
51:{"title":"Music# Hoarder", "description":"Buy every floor item", "points":25, "offset":0x74, "SecondOffset":0x10, "pointer": dword(0x01b99d60)},
52:{"title":"Music# Decorator", "description":"Buy every room concept", "points":10, "offset":0x10, "SecondOffset":0x10, "pointer": dword(0x01b99d50)},
53:{"title":"Music# Stylist", "description":"Buy every costume", "points":25, "offset":0x3c, "SecondOffset":0x40, "pointer": dword(0x01b99ca0)},
}


function SongExcellent(IDSong){
    logic =
    ScreenID == InGame &&
    SongID == IDSong &&
    Difficulty == Expert &&
    prev(ResultsRank) == Bad &&
    ResultsRank <= Excellent &&
    ResultsScore > 0   
    return logic
}

function SongChallenge(idSong, idCostume, difficulty, rank, combo, notes){
 logic =
    ScreenID == InGame &&
    SongID == idSong &&
    Difficulty == difficulty &&
    prev(ResultsRank) == Bad &&
    trigger_when(ResultsRank <= rank) &&
    trigger_when(ResultsScore > 0)   &&
    CostumeID == idCostume
    
    if(combo != 0){
        logic = logic && trigger_when(ResultsCombo >= combo)
    }
    
    if(notes != 0){
        logic = logic && trigger_when(ResultsBrilliantNotes >= notes)
    }
    return logic
}

function Collectables(StartingPointer, EndingOffset, SecondOffset){
    sum = 0
    count = 0
    Pointer = StartingPointer & 0x1ffffff
    for item in range (0, EndingOffset, 4){
        PointerChain = dword((Pointer + item)) & 0x1ffffff
        sum = sum + (dword(PointerChain + SecondOffset) / dword(PointerChain + SecondOffset))
        count = count + 1
    }
    return
    measured(sum == count, when = ScreenID != InitialBoot &&
    ScreenID != IntroCutscene &&
    ScreenID != TitleMenu &&
    ScreenID != TitleScreen &&
    ScreenID != SaveLoad ) &&
    prev(sum) == count-1
    
}

function Title(offset){
    PointerChain = dword((PointerTitles + offset)) & 0x1ffffff
    logic = 
    ScreenID != InitialBoot &&
    ScreenID != IntroCutscene &&
    ScreenID != TitleMenu &&
    ScreenID != TitleScreen &&
    ScreenID != SaveLoad &&
    dword(PointerChain + 0x10) == 1 &&
    prev(dword(PointerChain + 0x10)) == 0
    return logic
}

for song in SongsData{
    achievement(
        title = SongsData[song]["title"],
        description = SongsData[song]["description"] + " on Expert",
        points = SongsData[song]["points"],
        trigger = SongExcellent(SongsData[song]["songID"])                    
   )
}

for song in SongChallenges{
    achievement(
        title = SongChallenges[song]["title"],
        description = SongChallenges[song]["description"],
        points = SongChallenges[song]["points"],
        trigger = SongChallenge(SongChallenges[song]["songID"], SongChallenges[song]["IDCostume"], SongChallenges[song]["Difficulty"],
        SongChallenges[song]["Rank"], SongChallenges[song]["Combo"], SongChallenges[song]["Notes"])                    
   )
}

for title in Titles{
    achievement(
        title = Titles[title]["title"],
        description = Titles[title]["description"],
        points = Titles[title]["points"],
        trigger = Title(Titles[title]["offset"])                    
   )
}

for title in Items{
    achievement(
        title = Items[title]["title"],
        description = Items[title]["description"],
        points = Items[title]["points"],
        trigger = Collectables(Items[title]["pointer"], Items[title]["offset"], Items[title]["SecondOffset"])                    
   )
}