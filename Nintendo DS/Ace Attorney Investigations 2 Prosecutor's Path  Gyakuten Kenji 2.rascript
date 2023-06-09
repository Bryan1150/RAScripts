// Ace Attorney Investigations 2: Prosecutor's Path | Gyakuten Kenji 2
// #ID = 16297
GameState = byte(0x075d00)
Investigating = 0x05

CurrentCase = byte(0x0d891d)


//RoomID = byte(0x0dd088) Dynamic wahoo
RoomID = byte(0x096228)

PartComplete1 = byte(0x16e40e)
PartComplete2 = byte(0x16e0c6)
PartComplete3 = byte(0x16dd7e)
PartComplete4 = byte(0x16da36)

CurrentHealth = (low4(0x0960a2) * 0x10) + high4(0x0960a1)

function PartCompleteCheck(){
    return
    PartComplete1 >= 0x0c && 
    PartComplete2 >= 0x0c &&
    PartComplete3 >= 0x0c &&
    PartComplete4 >= 0x0c &&
    prev(PartComplete1) < PartComplete1 &&
    prev(PartComplete2) < PartComplete2 &&
    prev(PartComplete3) < PartComplete3 &&
    prev(PartComplete4) < PartComplete4 
}

function CheckGroupFlags(flags, value){
    logic = always_true()
    for flag in flags{
        logic = logic && flag == value
    }
    return logic
}
FirstEvidence = 0x0982a8
LastEvidence = 0x098344
function EvidenceCheck(evidence){
    logic = always_false()
    for evidenceSlot in range(FirstEvidence,LastEvidence, 4){
        logic = logic || (dword(evidenceSlot) == evidence && prev(dword(evidenceSlot)) == 0)
    }
    return logic
}

function EvidenceCheckChange(evidence){
    logic = always_false()
    for evidenceSlot in range(FirstEvidence,LastEvidence, 4){
        logic = logic || (dword(evidenceSlot) == evidence && prev(dword(evidenceSlot)) != evidence)
    }
    return logic
}

function EvidenceCheckChangeExact(evidence, change){
    logic = always_false()
    for evidenceSlot in range(FirstEvidence,LastEvidence, 4){
        logic = logic || (dword(evidenceSlot) == evidence && prev(dword(evidenceSlot)) == change)
    }
    return logic
}

//Case 1 Beginning Stuff
Case1Beginning = 0x00
//1st Investigation [GourdLakeParkStage]
GourdLakeParkStage = 0x00

SteelSamuraiBalloon = bit5(0x092c29)
HangingFlag = bit6(0x092c29)
FinishedInvestigation = bit7(0x092c29)

Case1FirstInvestigation = [
    SteelSamuraiBalloon,
    HangingFlag,
    FinishedInvestigation
]
//Chess vs Nicole Swift [GourdLakeParkStage]
Chess1Clue = bit7(0x092c38)
//2nd Investigation [GourdLakeParkAudienceArea]

GourdLakeParkAudienceArea = 0x01
RedMole = bit2(0x092c2a)
SixShotRevolver = bit3(0x092c2a)
LaserPointer = bit4(0x092c2a)
RedButton = bit5(0x092c2a)
RaincoatSleeve = bit6(0x092c2a)
ConnectedRedButtonRaincoatSleeve = bit7(0x092c2a)
ExaminedThrashCan = bit5(0x092c2c)
TalkedWithCameraMan = bit7(0x092c2c)
TalkedWithPayne = bit0(0x092c2d)
StartedCase1Investigation2 = bit6(0x092c2d)
RedHoodedPerson = bit7(0x092c2d)
RevolverDataUpdated = bit1(0x092c37)
BloodInRaincoat = bit4(0x092c37)
ExaminedRedCloth = bit0(0x092c38)
ExaminedClaspBag = bit7(0x092c3a)

Case1SecondInvestigation = [
RedMole,
SixShotRevolver,
LaserPointer,
RedButton,
RaincoatSleeve,
ConnectedRedButtonRaincoatSleeve,
ExaminedThrashCan,
TalkedWithCameraMan,
TalkedWithPayne,
StartedCase1Investigation2,
RedHoodedPerson,
RevolverDataUpdated,
BloodInRaincoat,
ExaminedRedCloth,
ExaminedClaspBag
]


//Testimony: John Doe [GourdLakeParkAudienceArea]
Finished2ndInvestigationCase1 = bit5(0x092c24)
PresentRedRaincoat = bit6(0x092c24)
PresentSecurityPlans = bit7(0x092c24)
PressAtBodyguardAction = bit7(0x092c37)
TestimonyJohhDoe = [
Finished2ndInvestigationCase1,
PresentRedRaincoat,
PresentSecurityPlans,
PressAtBodyguardAction
]


PresentNicoleSwift = bit0(0x092c25) //This one pops the cheevo
//Testimony: Nicole Swift [GourdLakeParkAudienceArea]
TestimonyNicoleSwiftFinished = bit1(0x092c25) //This one pops the cheevo

achievement(
    "Bullet Points", 
    "Finish the first investigation [Episode 1]",
    3, 
    CurrentCase == Case1Beginning &&
    GameState == Investigating &&
    RoomID == GourdLakeParkStage &&
    CheckGroupFlags(Case1FirstInvestigation, 1) &&
    Chess1Clue == 0 &&
    PartCompleteCheck()
)
LogicChessCompleted = 0x20
achievement(
    "Swift Moves", 
    "Win in Logic Chess against Nicole Swift [Episode 1]",
    3, 
    CurrentCase == Case1Beginning &&
    GameState == LogicChessCompleted &&
    RoomID == GourdLakeParkStage &&
    Chess1Clue == 1 &&
    CheckGroupFlags(Case1SecondInvestigation, 0) &&
    PartCompleteCheck()
)

achievement(
    "The Yatagarasu", 
    "Finish the second investigation [Episode 1]",
    4, 
    CurrentCase == Case1Beginning &&
    RoomID == GourdLakeParkAudienceArea &&
    CheckGroupFlags(Case1SecondInvestigation, 1) &&
    CheckGroupFlags(TestimonyJohhDoe, 0) &&
    PartCompleteCheck()
)

achievement(
    "A Simple Ice Cream Salesman", 
    "Complete all of Mr. Doe's testimony in Rebuttal [Episode 1]",
    3, 
    CurrentCase == Case1Beginning &&
    RoomID == GourdLakeParkAudienceArea &&
    CheckGroupFlags(TestimonyJohhDoe, 1) &&
    TestimonyNicoleSwiftFinished == 0 &&
    PresentNicoleSwift == 1 && prev(PresentNicoleSwift) == 0
)

achievement(
    "Raised Fist", 
    "Complete all of Nicole Swift's testimony in Rebuttal [Episode 1]",
    3, 
    CurrentCase == Case1Beginning &&
    RoomID == GourdLakeParkAudienceArea &&
    CheckGroupFlags(TestimonyJohhDoe, 1) &&
    TestimonyNicoleSwiftFinished == 1 &&
    PresentNicoleSwift == 1 &&
    TestimonyNicoleSwiftFinished == 1 && prev(TestimonyNicoleSwiftFinished) == 0
)
//Case 1 End Stuff
Case1End = 0x01
//Third Investigation [President's Plane Office]
PresidentPlaneOffice = 0x02

Case1Investigation3Logic1 = bit5(0x092c28)
Case1Investigation3Logic2 = bit7(0x092c28)
BulletproofVest = bit0(0x092c2b)
KnightleyPosition = bit1(0x092c2b)
BulletThatPiercedThrough = bit2(0x092c2b)
RookeGun = bit3(0x092c2b)
SecurityMonitors = bit5(0x092c2b)
BulletproofAttacheCase = bit6(0x092c2f)
ThirdInvestigation = [
    Case1Investigation3Logic1,
    Case1Investigation3Logic2,
    BulletproofVest,
    KnightleyPosition,
    BulletThatPiercedThrough,
    RookeGun,
    SecurityMonitors,
    BulletproofAttacheCase
]

CallingCard = 0x18
//Logic Chess vs Di-Jun Huang [President's Plane Office]
HuangClue1 = bit1(0x092c38)
HuangClue2 = bit2(0x092c38)
HuangClue3 = bit3(0x092c38)
HuangClues = [
    HuangClue1,
    HuangClue2,
    HuangClue3 
]

//Testimony Di Jun Huang [President's Plane Office]
ChangeInSecurityPlans = bit0(0x092c29)
HuangSecondLogic = bit1(0x092c29)
KnightleyShotBalloon = bit6(0x092c2b)
TestimonyDiJunHuang = [
    ChangeInSecurityPlans,
    HuangSecondLogic,
    KnightleyShotBalloon,
]
BulletProofCaseID = 0x013

//Testimony Horace Knightley [President's Plane Office]
StartedHoraceTestinomy = bit4(0x092c35)
PresentedRevolver = bit5(0x092c35)
PresentedSecurityMonitor = bit6(0x092c35)
PresentedKnightleyRevolver = bit7(0x092c35)
KnightleyRevolver2 = bit0(0x092c36)
TestimonyHoraceKnightley = [
    StartedHoraceTestinomy,
    PresentedRevolver,
    PresentedSecurityMonitor,
    PresentedKnightleyRevolver,
    KnightleyRevolver2
]


FinishedHoraceKnightley = bit1(0x092c36)
EvidencePresented = dword(0x0d9798)


achievement(
    "Call of the Assassin", 
    "Finish the third investigation [Episode 1]",
    5, 
    CurrentCase == Case1End &&
    RoomID == PresidentPlaneOffice &&
    CheckGroupFlags(ThirdInvestigation, 1) &&
    CheckGroupFlags(HuangClues, 0) &&
    EvidenceCheck(CallingCard)
)

achievement(
    "President's Gambit", 
    "Win in Logic Chess against Di-Jun Huang [Episode 1]",
    3, 
    CurrentCase == Case1End &&
    RoomID == PresidentPlaneOffice &&
    CheckGroupFlags(HuangClues, 1) &&
    CheckGroupFlags(TestimonyDiJunHuang, 0) &&
    PartCompleteCheck()
)

achievement(
    "All Planned", 
    "Complete all of Di-Jun Huang's testimony in Rebuttal [Episode 1]",
    3, 
    CurrentCase == Case1End &&
    RoomID == PresidentPlaneOffice &&
    CheckGroupFlags(TestimonyDiJunHuang, 1) &&
    CheckGroupFlags(TestimonyHoraceKnightley, 0) &&
    EvidencePresented == BulletProofCaseID && prev(EvidencePresented) != BulletProofCaseID
)

achievement(
    "Bullet Chamber", 
    "Complete all of Horace Knightley's testimony in Rebuttal [Episode 1]",
    5, 
    CurrentCase == Case1End &&
    RoomID == PresidentPlaneOffice &&
    CheckGroupFlags(TestimonyHoraceKnightley, 1) &&
    FinishedHoraceKnightley == 1 && prev(FinishedHoraceKnightley) == 0
)

achievement(
    "Ace Attorney [m]", 
    "Complete the case with 80% or more health left [Episode 1]",
    10, 
    CurrentCase == Case1End &&
    trigger_when(
    RoomID == PresidentPlaneOffice &&
    CheckGroupFlags(TestimonyHoraceKnightley, 1) &&
    FinishedHoraceKnightley == 1 && prev(FinishedHoraceKnightley) == 0) &&
    (CurrentHealth >= 80)
)

//Case 2 Stuff
//Beginning
Case2Beginning = 0x10
//1st Investigation [Prison: Workroom A]
PrisonWorkroomA = 0x08

CrimeSceneNotes = bit3(0x092ca4)
ExpensiveRing = bit4(0x092ca4)
BloodySheet = bit5(0x092ca4)
Chessboard = bit6(0x092ca4)
RubberGlove = bit7(0x092ca4)
StackedSheets = bit3(0x092ca5)
CombinedBloodySheetStackedSheets = bit0(0x092cad)
AskedRayDefense = bit6(0x092cad)
AskedRayVictim = bit7(0x092cad)
AskedRayRoom = bit0(0x092cae)
DeducedDoorSensor = bit1(0x092cb1)
Case2FirstInvestigation = [
    CrimeSceneNotes,
    ExpensiveRing,
    BloodySheet,
    Chessboard,
    RubberGlove,
    StackedSheets,
    CombinedBloodySheetStackedSheets,
    AskedRayDefense,
    AskedRayVictim,
    AskedRayRoom,
    DeducedDoorSensor
]

//Logic Chess vs Jay Elbird [Prison: Hallway]
PrisonHallway = 0x0007
JayClue1 = bit5(0x092cb4)
JayClue2 = bit5(0x092cb5)
LogicChessJay = [
    JayClue1,
    JayClue2
]

//Case 2 Middle
Case2Middle = 0x11



achievement(
    "Pop Quiz!", 
    "Finish the first investigation [Episode 2]",
    3, 
    CurrentCase == Case2Beginning &&
    GameState == Investigating &&
    RoomID == PrisonWorkroomA &&
    CheckGroupFlags(Case2FirstInvestigation, 1) &&
    CheckGroupFlags(LogicChessJay, 0) &&
    PartCompleteCheck()
)

achievement(
    "Counterpunch", 
    "Win in Logic Chess against Jay Elbird [Episode 2]",
    4, 
    CurrentCase == Case2Beginning &&
    RoomID == PrisonHallway &&
    CheckGroupFlags(LogicChessJay, 1) &&
    //Perhaps missing check but havent found it
    PartCompleteCheck()
)

achievement(
    "Overruled!", 
    "Have your investigation taken over by Sebastian [Episode 2]",
    4, 
    prev(CurrentCase) == Case2Beginning &&
    CurrentCase == Case2Middle &&
    RoomID == PrisonHallway &&
    CheckGroupFlags(LogicChessJay, 1)
    //Perhaps missing check but havent found it
)

//Logic Chess against Frank Sahwit [Prison: Hallway]
AskedSimonKeys = bit1(0x092cae)
AskedHoraceKnightley = bit2(0x092cae)
PresentedChessboard = bit3(0x092cae)
PrisonerRightCell = bit4(0x092cae)
ExaminedWorkroomB = bit3(0x092cb1)
FrankClue1 = bit6(0x092cb4)
FrankClue2 = bit7(0x092cb4)
FrankClue3 = bit6(0x092cb5)
FrankClue4 = bit7(0x092cb5)
FrankChess = [
    AskedSimonKeys,
    AskedHoraceKnightley,
    PresentedChessboard,
    PrisonerRightCell,
    ExaminedWorkroomB,
    FrankClue1,
    FrankClue2,
    FrankClue3,
    FrankClue4
]

//Testimony: Frank Sahwit [Prison: Hallway]
FrankBlackDog = bit4(0x092cb1)
FrankFinished = bit7(0x092cb2)

//Special Room Info [Prison: Special Cell]
PrisonSpecialCell = 0x09

AfterFrank = bit6(0x092cb3)
SpecialRoomMurder = bit5(0x092cae)
SpecialRoomAlibi = bit6(0x092cae)
SpecialRoomStuff = [
    AfterFrank,
    SpecialRoomMurder,
    SpecialRoomAlibi,
]

SpecialRoomVictim = bit7(0x092cae)

//Second Investigation [Detention Center: Holding Cell]
DetentionCenterHoldingCell = 0x05

Newspaper = bit4(0x092ca5)
DustyFloor = bit5(0x092ca5)
Mirror = bit6(0x092ca5)
CombinedNewspaperFloorWipedClean = bit1(0x092cad)
Case2SecondInvestigation = [
    Newspaper,
    DustyFloor,
    Mirror,
    CombinedNewspaperFloorWipedClean
]

//Sebastian Debeste Testimony [Detention Center: Hallway]
DetentionCenterHallway = 0x04

achievement(
    "Frank Herdit", 
    "Win in Logic Chess against Frank Sahwit [Episode 2]",
    4, 
    CurrentCase == Case2Middle &&
    RoomID == PrisonHallway &&
    CheckGroupFlags(FrankChess, 1) &&
    FrankBlackDog == 0 &&
    PartCompleteCheck()
)

achievement(
    "Broken Bracelet", 
    "Complete all of Frank Sahwit's testimony in Rebuttal [Episode 2]",
    5, 
    CurrentCase == Case2Middle &&
    RoomID == PrisonHallway &&
    FrankBlackDog == 1 &&
    FrankFinished == 1 && prev(FrankFinished) == 0 &&
    CheckGroupFlags(SpecialRoomStuff, 0)
)

achievement(
    "Hound Piece", 
    "Obtain info from Sirhan Dogen [Episode 2]",
    2, 
    CurrentCase == Case2Middle &&
    RoomID == PrisonSpecialCell &&
    CheckGroupFlags(SpecialRoomStuff, 1) &&
    prev(SpecialRoomVictim) == 0 && SpecialRoomVictim == 1 &&
    CheckGroupFlags(Case2SecondInvestigation, 0)    
)

achievement(
    "Wiped Floor", 
    "Finish the second investigation [Episode 2]",
    5, 
    CurrentCase == Case2Middle &&
    GameState == Investigating &&
    RoomID == DetentionCenterHoldingCell &&
    CheckGroupFlags(Case2SecondInvestigation, 1) &&
    PartCompleteCheck()
)

achievement(
    "Reasons for Arrest", 
    "Complete all of Sebastian Debeste's testimony in Rebuttal [Episode 2]",
    4, 
    prev(CurrentCase) == Case2Middle &&
    CurrentCase == 0x12 &&
    RoomID == DetentionCenterHallway &&
    CheckGroupFlags(Case2SecondInvestigation, 1) 
)

Case2End1 = 0x12
//Tunnel Footprints [Detention: Holding Cell]
Chessboard = bit2(0x092ca6)
FourChissels = bit3(0x092ca6)
AskedCircus = bit2(0x092caf)
AskedRole = bit3(0x092caf)
AskedReginaBerry = bit5(0x092caf)
AskedAnimalShow = bit6(0x092caf)
AskedPreparations = bit7(0x092caf)
AskedHelpingOut = bit1(0x092cb0)
AskedPetgrooming = bit2(0x092cb0)
AskedPrison = bit3(0x092cb0)
AskedBerryCircus = bit4(0x092cb0)
AskedFrank = bit5(0x092cb2)
PresentedRubberGlove = bit6(0x092cb2)
SmallChissel = bit2(0x092cb4)
ElectricFence = bit4(0x092cb4)
Well = bit0(0x092cb6)
FlagsTunnel = [
    Chessboard,
    FourChissels,
    AskedCircus,
    AskedRole,
    AskedReginaBerry,
    AskedAnimalShow,
    AskedPreparations,
    AskedHelpingOut,
    AskedPetgrooming,
    AskedPrison,
    AskedBerryCircus,
    AskedFrank,
    PresentedRubberGlove,
    SmallChissel,
    ElectricFence,
    Well
]

TunnelFootprints = 0x3c

//Justice Courney's Testimony [Prison: Special Cell] Check with presented id + inventory check of chissel
BlackDog =  0x2f
Chissel = 0x40

//Sirhan Dogen's Testimony [] Check by checking room id 7->9
VideoMirror = bit0(0x092cb5)
VideoBear = bit1(0x092cb5)
SirhanDogen = [
    VideoMirror, VideoBear
]

//Jay Elbird's Second Testimony [Prison: Special Cell] Check with chapter transition wahoo
PressedElbird = bit3(0x092cb3)

//REMEMBER TO TEST THE DYNAMIC CHECK FUCKER

achievement(
    "Tunnel Remains", 
    "Obtain some critical evidence about the well [Episode 2]",
    2, 
    prev(CurrentCase) == Case2End1 &&
    RoomID == DetentionCenterHoldingCell &&    
    CheckGroupFlags(FlagsTunnel , 1) &&
    EvidenceCheck(TunnelFootprints) &&
    CheckGroupFlags(SirhanDogen, 0)
    
)

achievement(
    "Quiet Dog", 
    "Complete all of Justine Courtney's testimony in Rebuttal [Episode 2]",
    4, 
    prev(CurrentCase) == Case2End1 &&
    RoomID == PrisonSpecialCell &&    
    CheckGroupFlags(FlagsTunnel , 1) &&
    (prior(EvidencePresented) == BlackDog || EvidencePresented == BlackDog) &&
    EvidenceCheck(Chissel) &&
    CheckGroupFlags(SirhanDogen, 0)
)

achievement(
    "Mr. Analysis", 
    "Complete all of Sirhan Dogen's testimony in Rebuttal [Episode 2]",
    4, 
    prev(CurrentCase) == Case2End1 &&   
    CheckGroupFlags(SirhanDogen, 1) &&
    RoomID == 9 && prev(RoomID) == 7
    && PressedElbird == 0
)


achievement(
    "Escape Plan", 
    "Complete all of Jay Elbird's second testimony in Rebuttal [Episode 2]",
    5, 
    prev(CurrentCase) == Case2End1 &&
    CurrentCase == 0x13 &&
    RoomID == PrisonSpecialCell &&
    PressedElbird == 1
)

//Case 2 End 2
Case2End2 = 0x13
CourtyardInvestigations = 0x0c
//3rd Investigation [0x0c]
Well = bit0(0x092ca7)
Cover = bit1(0x092ca7)
Weight = bit2(0x092ca7)
Pulleys = bit4(0x092ca7)
Elephant = bit5(0x092ca7)

ThirdInvestigation = [
    Well,
    Cover,
    Weight,
    Pulleys,
    Elephant
]

//4th Investigation [0x0c]
ExaminedStage = bit2(0x092ca8)
ConnectedWeights = bit1(0x092ca9)
CheckedApples = bit4(0x092caa)
GumshoeMetal = bit2(0x092cac)
FinalWell = bit3(0x092cac)
ConnectedElephant = bit5(0x092cac)
ConnectedTolls = bit2(0x092cad)
Finished4th = bit4(0x092cad)
ConnectedNotHeavyEnough = bit5(0x092cad)

FourthInvestigation = [
    ExaminedStage,
    ConnectedWeights,
    CheckedApples,
    GumshoeMetal ,
    FinalWell,
    ConnectedElephant ,
    ConnectedTolls ,
    Finished4th,
    ConnectedNotHeavyEnough
]

//Justine Cournet's Second Testimony [Prison: Courtyard 2]
PrisonCourtyard2 = 0x0c

//Patricia Roland's Testimony [] Map ID 0x0c->0x04

PatriciaPressed1 = bit2(0x092cb2)
PatriciaPressed2 = bit4(0x092cb2)
Patricia = [
    PatriciaPressed1,
    PatriciaPressed2
]

achievement(
    "Missing Apples", 
    "Finish the third investigation [Episode 2]",
    5, 
    CurrentCase == Case2End2 &&
    GameState == Investigating &&
    RoomID == CourtyardInvestigations &&
    CheckGroupFlags(ThirdInvestigation, 1) &&
    CheckGroupFlags(FourthInvestigation, 0) &&
    PartCompleteCheck()
)

achievement(
    "Circuit Breaker", 
    "Finish the fourth investigation [Episode 2]",
    5, 
    CurrentCase == Case2End2 &&
    GameState == Investigating &&
    RoomID == CourtyardInvestigations &&
    CheckGroupFlags(FourthInvestigation, 1) &&
    CheckGroupFlags(Patricia, 0) &&
    PartCompleteCheck()
)

DialogID = byte(0x0d99e0)
achievement(
    "The Key to the Case", 
    "Complete all of Justine Courtney's second testimony in Rebuttal [Episode 2]",
    5, 
    CurrentCase == Case2End2 &&
    prev(GameState) == 0x20 &&
    RoomID == CourtyardInvestigations &&
    prior(EvidencePresented) == 0x23 &&
    EvidencePresented == 0 &&
    prior(DialogID) == 0x18 &&
    DialogID == 0x3f &&
    CheckGroupFlags(Patricia, 0)
)

achievement(
    "Interior Crocodile Alligator", 
    "Complete all of Patricia Roland's testimony in Rebuttal [Episode 2]",
    5, 
    CurrentCase == Case2End2 &&
    prev(RoomID) == CourtyardInvestigations &&
    EvidencePresented != 0x0038 &&
    prev(EvidencePresented) != 0x0038 &&
    RoomID == 0x04 &&
    CheckGroupFlags(Patricia, 1)
)

achievement(
    "Justice For All [m]", 
    "Complete the case with 80% or more health left [Episode 2]",
    10, 
    CurrentCase == Case2End2 &&
    trigger_when(
    
    prev(RoomID) == CourtyardInvestigations &&
    RoomID == 0x04 &&
    EvidencePresented != 0x0038 &&
    prev(EvidencePresented) != 0x0038 &&
    CheckGroupFlags(Patricia, 1)) &&
    (CurrentHealth >= 80)
)

//Case 3
//Beginning, Part 1
Case3Beginning1 = 0x20
ContestYenueMasterRoom = 0x12
//Finish the first investigation [Episode 3] 0x12 = Contest Yenue: Master's Room
ExaminedTreasure = bit1(0x092d24)
ExamnedBrokenPieces = bit5(0x092d24)
ExaminedMoonTeapot = bit6(0x092d24)
ExaminedCornerFrame = bit7(0x092d24)
PresentedCorner = bit0(0x092d25)
ExaminedFingerprints = bit1(0x092d25)
OfficerTalk = bit5(0x092d25)
TreasureChestAgain = bit2(0x092d2b)
CombinedBreakingsoundBrokenStand = bit3(0x092d2b)
AskedJeffMaster = bit4(0x092d34)
AskedCase = bit5(0x092d34)
AskedDaneGustavia = bit7(0x092d34)
AskedContest = bit0(0x092d35)
AskedCase = bit1(0x092d35)
Investigation1Start = bit4(0x092d39)
CombinedTamperedDesserts = bit4(0x092d45)
DeducedBrokenChocolate = bit4(0x092d45)

Case3FirstInvestigation = [
    ExaminedTreasure,
    ExamnedBrokenPieces ,
    ExaminedMoonTeapot ,
    ExaminedCornerFrame,
    PresentedCorner,
    ExaminedFingerprints,
    OfficerTalk,
    TreasureChestAgain,
    CombinedBreakingsoundBrokenStand ,
    AskedJeffMaster ,
    AskedCase ,
    AskedDaneGustavia,
    AskedContest,
    AskedCase,
    Investigation1Start,
    CombinedTamperedDesserts,
    DeducedBrokenChocolate
]

//Complete all of Tyrell Badd's Testimony in Rebuttal [Episode 3] 0x12 = Contest Yenue: Master's Room
TyrellStarted = bit5(0x092d39)
TyrellFinished = bit7(0x092d39)

TyrellTestimony = [
    TyrellStarted,
    TyrellFinished
]

achievement(
    "Piece of Cake!", 
    "Finish the first investigation [Episode 3]",
    3, 
    CurrentCase == Case3Beginning1 &&
    GameState == Investigating &&
    RoomID == ContestYenueMasterRoom &&
    CheckGroupFlags(Case3FirstInvestigation, 1) &&
    CheckGroupFlags(TyrellTestimony, 0) &&
    PartCompleteCheck()
)

achievement(
    "Chocolate Ship", 
    "Complete all of Tyrell Badd's testimony in Rebuttal [Episode 3]",
    4, 
    CurrentCase == Case3Beginning1 &&
    RoomID == ContestYenueMasterRoom &&
    TyrellStarted == 1 && 
    TyrellFinished == 1 && prev(TyrellFinished) == 0
)
//Beginning, part 2
Case3Beginning2 = 0x21
//Finish the second investigation [Episode 3] 0x14 = Contest Yenue: Delicia's Room
ContestYenueDeliciaRoom = 0x14

ExaminedCastleFront = bit6(0x092d25)
BlueRollsCloth = bit2(0x092d26)
LeftRockSaltLamp = bit6(0x092d26)
ExaminedFairy = bit2(0x092d27)
HexagonalPedestals = bit5(0x092d2b)
CastleEntrance = bit6(0x092d2b)
GoldRocks = bit7(0x092d2b)
TemperaturePanel = bit1(0x092d2c)
DeducedSaltLamp = bit4(0x092d2c)
ConnectedPedestal = bit6(0x092d45)
CombinedBeatenToDeath = bit7(0x092d45)
ConnectedHighRoom = bit0(0x092d46)
CombinedFakeDesserts = bit1(0x092d46)
ConnectedDessertsStudy = bit2(0x092d46)
FrontCastleAgain = bit2(0x092d4d)

Case3SecondInvestigation = [
    ExaminedCastleFront,
    BlueRollsCloth,
    LeftRockSaltLamp ,
    ExaminedFairy ,
    HexagonalPedestals ,
    CastleEntrance,
    GoldRocks,
    TemperaturePanel,
    DeducedSaltLamp,
    ConnectedPedestal,
    CombinedBeatenToDeath ,
    ConnectedHighRoom,
    CombinedFakeDesserts,
    ConnectedDessertsStudy
]

//0x11 = Somewhere [Pending]
//Complete all of Manfred von Karma's Testimony in Rebuttal [Episode 3] (check for evidence + characted id of delicia)
Karma1stTestimonyPlace = 0x11
PresentClothKarma = bit3(0x092d3a)
FakeDessert = 0x75
Delicia = 0x1f

achievement(
    "Fake Desserts", 
    "Finish the second investigation [Episode 3]",
    3, 
    CurrentCase == Case3Beginning2 &&
    GameState == Investigating &&
    RoomID == ContestYenueDeliciaRoom  &&
    CheckGroupFlags(Case3SecondInvestigation, 1) &&
    PresentClothKarma == 0 &&
    PartCompleteCheck()
)


achievement(
    "Defense Attorney on the Case", 
    "Complete all of Manfred von Karma's testimony in Rebuttal [Episode 3]",
    4, 
    CurrentCase == Case3Beginning2 &&
    RoomID == Karma1stTestimonyPlace &&
    PresentClothKarma == 1 &&
    EvidencePresented == FakeDessert &&
    DialogID == Delicia && prev(DialogID) != Delicia
    
)

//Case 3 Middle 1
Case3Middle1 = 0x22
//Win in Logic Chess against Larry Butz [Episode 3] 0x0f = Zodiac Art Gallery: Fountain Patio
LogicChessLarryPlace = 0x0f

ExaminedStatues = bit7(0x092d27)
ExaminedTemperature = bit6(0x092d3a)
BeforeLogicChess = bit7(0x092d3a)
ExaminedIce = bit6(0x092d4c)
LarryClue3 = bit5(0x092d4c)
LarryClue1 = bit4(0x092d4d)
LarryClue2 = bit5(0x092d4d)
LarryStuff = [
    ExaminedStatues,
    ExaminedTemperature ,
    BeforeLogicChess ,
    ExaminedIce,
    LarryClue3 ,
    LarryClue1,
    LarryClue2
]


//Complete all of Sebastian Debeste's Testimony in Rebuttal [Episode 3] 0x15 =  Zodiac Art Gallery: Winter Palace
PresentedSketch = bit6(0x092d3b)
TestimonyFinished = bit2(0x092d47)
SebastianDebesteTestimonyPlace = 0x15

achievement(
    "When Something Smells...", 
    "Win in Logic Chess against Larry Butz [Episode 3]",
    5, 
    CurrentCase == Case3Middle1 &&
    RoomID == LogicChessLarryPlace  &&
    CheckGroupFlags(LarryStuff, 1) &&
    PresentedSketch == 0 &&
    PartCompleteCheck()
)

achievement(
    "Mixed Substances", 
    "Complete all of Sebastian Debeste's testimony in Rebuttal [Episode 3]",
    3, 
    CurrentCase == Case3Middle1 &&
    RoomID == SebastianDebesteTestimonyPlace  &&
    PresentedSketch == 1 &&
    TestimonyFinished == 1 && prev(TestimonyFinished) == 0
)


//Case 3 Middle 2 
Case3Middle2 = 0x23
//Figure out who was the one that stole the poison [Episode 3] 0x15 =  Zodiac Art Gallery: Winter Palace
PresentedGasburner = bit4(0x092d47)
PresentedJeffSigned = bit6(0x092d47)
PresentedKatherine = bit5(0x092d47)

achievement(
    "Megatoxin Thief", 
    "Figure out who was the one that stole the poison [Episode 3]",
    2, 
    CurrentCase == Case3Middle2 &&
    RoomID == 0x15  &&
    PresentedGasburner == 1 &&
    PresentedKatherine == 1 && prev(PresentedKatherine) == 0
)

//Case 3 Middle 3
//Present the evidence that contradicts the two photos Ms. Hall took [Episode 3] 0x11 = Somewhere [Pending]
Case3Middle3 = 0x24
PresentedTeapotSigned = bit6(0x092d47)
Sculptor = bit7(0x092d47)
InstantCamera = bit0(0x092d48)

achievement(
    "Unaccounted Photos", 
    "Present the evidence that contradicts the two photos Ms. Hall took [Episode 3]",
    2, 
    CurrentCase == Case3Middle3 &&
    RoomID == 0x11  &&
    PresentedTeapotSigned  == 1 &&
    Sculptor  == 1 && 
    InstantCamera == 1 && prev(InstantCamera) == 0
)

//Case 3 Middle 4
Case3Middle4 = 0x25
//Finish the third investigation [Episode 3] 0011
TalkedToKatherine = bit2(0x092d37)
AngelRecipe = bit3(0x092d37)
MasterGroup = bit4(0x092d37)
IsaacDover = bit1(0x092d48)
Case3ThirdInvestigation = [
    TalkedToKatherine,
    AngelRecipe,
    MasterGroup,
    IsaacDover
]

//Complete all of Manfred von Karma's Second Testimony in Rebuttal [Episode 3] 0011
KarmaSemifinalDesserts = bit2(0x092d48)
DeliciaTestimony = bit3(0x092d48)
PreparedInAdvance = bit4(0x092d48)
BloodWater = bit5(0x092d48)
NoAutopsyConnected = bit6(0x092d48)
Karma2ndTestimony = [
    KarmaSemifinalDesserts,
    DeliciaTestimony,
    PreparedInAdvance,
    BloodWater,
    NoAutopsyConnected
]

VictimBlood = bit7(0x092d48)

achievement(
    "The Angel's Recipe", 
    "Finish the third investigation [Episode 3]",
    5, 
    CurrentCase == Case3Middle4 &&
    GameState == Investigating &&
    RoomID == 0x0011 &&
    CheckGroupFlags(Case3ThirdInvestigation, 1) &&
    CheckGroupFlags(Karma2ndTestimony, 0) &&
    PartCompleteCheck()
)

achievement(
    "Their Real Connection", 
    "Complete all of Manfred von Karma's second testimony in Rebuttal [Episode 3]",
    5, 
    CurrentCase == Case3Middle4 &&
    RoomID == 0x0011 &&
    CheckGroupFlags(Karma2ndTestimony, 1) &&
    VictimBlood == 1 && prev(VictimBlood) == 0
)


//Case 3 End 1
Case3End1 = 0x26
//Finish the fourth investigation [Episode 3] 000f
ExaminedFountain = bit2(0x092d2a)
ExaminedTrolley = bit3(0x092d2a)
ExaminedBrownStain = bit4(0x092d2a)
ExaminedTeaCart = bit5(0x092d2a)
ExaminedMonTeapot = bit7(0x092d2a)
AskedBeaties = bit0(0x092d38)
AskedJob = bit3(0x092d38)
AskedGas = bit1(0x092d38)
AskedCloth = bit7(0x092d38)
AskedKath = bit3(0x092d44)
MintyAroma = bit1(0x092d49)
Tea = bit2(0x092d49)
Tablecloth = bit3(0x092d49)
Book = bit4(0x092d49)
Case3FourthInvestigation = [
    ExaminedFountain,
ExaminedTrolley,
ExaminedBrownStain,
ExaminedTeaCart,
ExaminedMonTeapot,
AskedBeaties,
AskedJob,
AskedGas,
AskedCloth,
AskedKath,
MintyAroma,
Tea ,
Tablecloth,
Book
]

achievement(
    "Minty Aroma", 
    "Finish the fourth investigation [Episode 3]",
    4, 
    CurrentCase == Case3End1 &&
    GameState == Investigating &&
    RoomID == 0x000f &&
    CheckGroupFlags(Case3FourthInvestigation, 1) &&
    PartCompleteCheck()
)

//Case 3 End 2
Case3End2 = 0x27
//Complete all of Katherine Hall's Testimony in Rebuttal [Episode 3] 000f
Pressed = bit2(0x092d25)
LiquidAnalysis = bit5(0x092d49)
Pressed2 = bit6(0x092d49)
PresentSideCart = bit7(0x092d49)
PresentLiftTrolley = bit0(0x092d4a)
WinterPalacePhoto = bit1(0x092d4a)
HoodedFigure = bit2(0x092d4a)
Cloth = bit3(0x092d4a)
Sketch = bit4(0x092d4a)
HasItWithHer = bit5(0x092d4a)
KatherineTestimony = [
    Pressed ,
    LiquidAnalysis,
    Pressed2 ,
    PresentSideCart,
    PresentLiftTrolley ,
    WinterPalacePhoto ,
    HoodedFigure ,
    Cloth,
    Sketch ,
    HasItWithHer 
]
PresentDaneGustavia = bit6(0x092d4a)


achievement(
    "Witness Trap", 
    "Complete all of Katherine Hall's testimony in Rebuttal [Episode 3]",
    3, 
    CurrentCase == Case3End2 &&
    RoomID == 0x000f &&
    CheckGroupFlags(KatherineTestimony , 1) &&
    PresentDaneGustavia == 1 && prev(PresentDaneGustavia) == 0
)


//Case 3 End 3
Case3End3 = 0x28
//Complete all of Justine Courtney's Testimony in Rebuttal [Episode 3] 000f
PresentLiquid = bit7(0x092d4a)
RemainingFilm = bit0(0x092d4b)
MotivePartnership = bit1(0x092d4b)
JustineCourneyStuff = [
    PresentLiquid,
    RemainingFilm,
    MotivePartnership
]
AfternoonTea = bit2(0x092d4b)


//Win in Logic Chess against Dane Gustavia [Episode 3] 000f
Clue1 = bit6(0x092d4d)
Clue2 = bit7(0x092d4d)
Clue3 = bit7(0x092d4c)
Clue4 = bit0(0x092d4e)
Clue5 = bit0(0x092d4d)
Clue6 = bit1(0x092d4d)
LogicChessDane = [
    Clue1,
    Clue2,
    Clue3 ,
    Clue4 ,
    Clue5 ,
    Clue6
]

//Complete all of Dane Gustavia's Testimony in Rebuttal [Episode 3] 000f
Training = bit6(0x092d44)
FamilyPhoto = bit4(0x092d4b)
Desserts = bit5(0x092d4b)
RockSaltLamp = bit6(0x092d4b)
TimeDeath = bit7(0x092d4b)
StatuteOfLimitations = bit0(0x092d4c)
FinalTestimonyStuff = [
    Training,
    FamilyPhoto,
    Desserts,
    RockSaltLamp,
    TimeDeath,
    StatuteOfLimitations
]

CaseEnd = bit2(0x092d4c)

//Complete the case with 80% or more health left [Episode 3] 000f
achievement(
    "Tea Break", 
    "Complete all of Justine Courtney's testimony in Rebuttal [Episode 3]",
    4, 
    CurrentCase == Case3End3 &&
    RoomID == 0x000f &&
    CheckGroupFlags(JustineCourneyStuff , 1) &&
    CheckGroupFlags(LogicChessDane , 0) &&
    AfternoonTea == 1 && prev(AfternoonTea) == 0
)

achievement(
    "Taste Disorder", 
    "Win in Logic Chess against Dane Gustavia [Episode 3]",
    5, 
    CurrentCase == Case3End3 &&
    RoomID == 0x000f &&
    CheckGroupFlags(LogicChessDane , 1) &&
     CheckGroupFlags(FinalTestimonyStuff , 0) &&
    PartCompleteCheck()
)

achievement(
    "Statute of Limitations", 
    "Complete all of Dane Gustavia's testimony in Rebuttal [Episode 3]",
    5, 
    CurrentCase == Case3End3 &&
    RoomID == 0x000f &&
    CheckGroupFlags(FinalTestimonyStuff , 1) &&
    CaseEnd == 1 && prev(CaseEnd) == 0
)

achievement(
    "Dual Destinies", 
    "Complete the case with 80% or more health left [Episode 3]",
    10, 
    CurrentCase == Case3End3 &&
    trigger_when(
    RoomID == 0x000f &&
    CheckGroupFlags(FinalTestimonyStuff , 1) &&
    CaseEnd == 1 && prev(CaseEnd) == 0) &&
    (CurrentHealth >= 80)
)

//Case 4 Stuff
//Beginning Part 1 0x30
Case4BeginningPart1 = 0x30
//Complete all of Kay Farady's Testimony in Rebuttal [Episode 4] 001a
MysteriousGirl = bit1(0x092da4)
YourName = bit2(0x092da4)
MemoryLoss = bit3(0x092da4)
KayStuff = [
    MysteriousGirl, YourName, MemoryLoss
]

achievement(
    "Memories of the Tower ", 
    "Complete all of Kay Farady's testimony in Rebuttal [Episode 4]",
    3, 
    CurrentCase == Case4BeginningPart1 &&
    RoomID == 0x1a &&
    CheckGroupFlags(KayStuff, 1) &&
    EvidenceCheck(0xa6)    
)

//Beginning Part 2 0x31
Case4BeginningPart2 = 0x31
//Finish the first investigation [Episode 4] 0018
LeftHand = bit1(0x092da5)
RightHand = bit2(0x092da5)
SecurtyKeycard = bit3(0x092da5)
PurpleFLower = bit4(0x092da5)
Head = bit2(0x092da9)
Notebook = bit5(0x092da9)
Candelabra = bit6(0x092da9)
Case41stInvestigation = [
    LeftHand,
RightHand,
SecurtyKeycard ,
PurpleFLower,
Head ,
Notebook ,
Candelabra
]

achievement(
    "Purple Flower", 
    "Finish the first investigation [Episode 4]",
    4, 
    CurrentCase == Case4BeginningPart2 &&
    RoomID == 0x0018  &&
    CheckGroupFlags(Case41stInvestigation , 1) &&
    PartCompleteCheck()
)

//Complete all of Sebastian Debeste's Testimony in Rebuttal [Episode 4] 0018 
achievement(
    "False Accusations", 
    "Complete all of Sebastian Debeste's testimony in Rebuttal [Episode 4]",
    3, 
    CurrentCase == Case4BeginningPart2 &&
    RoomID == 0x0018  &&
    CheckGroupFlags(Case41stInvestigation , 1) &&
    EvidenceCheck(0xad)
)

//Complete all of Justine Courtney's Testimony in Rebuttal [Episode 4] 0018
achievement(
    "The Letter from Kay", 
    "Complete all of Justine Courtney's testimony in Rebuttal [Episode 4]",
    4, 
    CurrentCase == Case4BeginningPart2 &&
    RoomID == 0x0018  &&
    CheckGroupFlags(Case41stInvestigation , 1) &&
    EvidenceCheckChange(0xae)
)

//Middle 1 
Case4Middle1 = 0x32
//Finish the second investigation [Episode 4] 001b
TalkedBonnie = bit5(0x092da5)
ExaminedRailing = bit6(0x092da5)
CheckedCherryTree = bit7(0x092da5)
AskedMemory = bit0(0x092da6)
RailingWithMoon = bit1(0x092da6)
MaintenanceHatch = bit2(0x092da6)
DeducedFloor = bit3(0x092da6)
ConnectedKayStanding = bit2(0x092daa)
ConnectedFellHatch = bit4(0x092daa)

Case4SecondInvestigation = [
    TalkedBonnie,
ExaminedRailing,
CheckedCherryTree,
AskedMemory,
RailingWithMoon,
MaintenanceHatch,
DeducedFloor ,
ConnectedKayStanding ,
ConnectedFellHatch
]

achievement(
    "Floor 51", 
    "Finish the second investigation [Episode 4]",
    4, 
    CurrentCase == Case4Middle1 &&
    RoomID == 0x001b  &&
    CheckGroupFlags(Case4SecondInvestigation , 1) &&
    PartCompleteCheck()
)

//Middle 2
Case4Middle2 = 0x33
//Win in Logic Chess against Lotta Hart [Episode 4] 001c
Clue1 = bit3(0x092dae)
Clue2 = bit4(0x092dae)
Clue3 = bit5(0x092dae)
Clue4 = bit6(0x092dae)
Clue5 = bit0(0x092db0)
Clue6 = bit1(0x092db0)
LottaStuff = [
    Clue1,Clue2,Clue3,Clue4,Clue5,Clue6
]

//Finish the third investigation [Episode 4] 001c
ExaminedShelft = bit5(0x092da6)
StuffedAnimal = bit7(0x092da6)
ExaminedStack = bit0(0x092da7)
CombinedPrinces = bit1(0x092da7)
ExaminedLift = bit2(0x092da7)
ExaminedChainedBox = bit3(0x092da7)
ExaminedStatue = bit4(0x092da7)
AskedAuction = bit6(0x092da7)
FinishedChess = bit2(0x092da8)
ConnectedAuction = bit3(0x092da8)
ConnectedBloodstain = bit4(0x092da8)
MaskSlot = bit6(0x092daa)
DeducedStar = bit6(0x092daf)
ThirdInvestigationStuffCase3 = [
    ExaminedShelft,
    StuffedAnimal ,
    ExaminedStack ,
    CombinedPrinces ,
    ExaminedLift ,
    ExaminedChainedBox,
    ExaminedStatue ,
    AskedAuction ,
    FinishedChess,
    ConnectedAuction,
    ConnectedBloodstain,
    MaskSlot,
    DeducedStar
]



//Complete all of Franziska von Karma's Testimony in Rebuttal [Episode 4] 0018 - Present 0xb2
PressedKarma = bit5(0x092da8)

achievement(
    "Hunt for the Scoop", 
    "Win in Logic Chess against Lotta Hart [Episode 4]",
    3, 
    CurrentCase == Case4Middle2 &&
    RoomID == 0x001c  &&
    FinishedChess == 0 &&
    CheckGroupFlags(LottaStuff, 1) &&
    PartCompleteCheck()
)

achievement(
    "Seal the Deal", 
    "Finish the third investigation [Episode 4]",
    4, 
    CurrentCase == Case4Middle2 &&
    RoomID == 0x001c  &&
    CheckGroupFlags(ThirdInvestigationStuffCase3, 1) &&
    PressedKarma == 0 &&
    PartCompleteCheck()
)

achievement(
    "Franziska's Logic", 
    "Complete all of Franziska von Karma's testimony in Rebuttal [Episode 4]",
    4, 
    CurrentCase == Case4Middle2 &&
    RoomID == 0x0018  &&
    CheckGroupFlags(ThirdInvestigationStuffCase3, 1) &&
    PressedKarma == 1 &&
    EvidencePresented == 0xb2 && prev(EvidencePresented) != 0xb2
)


//End 1
Case4End1 = 0x34
//Win in Logic Chess against Blaise Debeste [Episode 4] 0006
Clue1 = bit7(0x092dae)
Clue2 = bit0(0x092daf)
Clue3 = bit1(0x092daf)
Clue4 = bit2(0x092daf)
Clue5 = bit3(0x092daf)
Clue6 = bit4(0x092daf)
Clue7 = bit5(0x092daf)

BlaiseLogic = [
    Clue1,
    Clue2,
    Clue3,
    Clue4,
    Clue5,
    Clue6,
    Clue7
]

achievement(
    "The Truth is Clear", 
    "Win in Logic Chess against Blaise Debeste [Episode 4]",
    5, 
    CurrentCase == Case4End1 &&
    RoomID == 0x0006  &&
    CheckGroupFlags(BlaiseLogic, 1) &&
    PartCompleteCheck()
)

ExaminedHorn = bit0(0x092daa)


StoleVictimClothes = bit2(0x092dac)
//Complete all of Justine Courtney's second Testimony in Rebuttal [Episode 4] 0018
achievement(
    "Edgeworth's Contradiction", 
    "Complete all of Justine Courtney's second testimony in Rebuttal [Episode 4]",
    3, 
    CurrentCase == Case4End1 &&
    RoomID == 0x0018  &&
    GameState == 0x05 &&
    CheckGroupFlags(BlaiseLogic, 1) &&
    ExaminedHorn == 0 &&
    StoleVictimClothes == 0 &&
    EvidencePresented == 0x00 && prev(EvidencePresented) == 0xab
)
//Complete all of Blaise Debeste's Testimony in Rebuttal [Episode 4] 0018 
achievement(
    "Cause I'm Gonna Bully You", 
    "Complete all of Blaise Debeste's testimony in Rebuttal [Episode 4]",
    3, 
    CurrentCase == Case4End1 &&
    RoomID == 0x0018 &&
    GameState == 0x20 &&
    ExaminedHorn == 1 &&
    StoleVictimClothes == 0 &&
    CheckGroupFlags(BlaiseLogic, 1) &&
    EvidenceCheckChangeExact(0xb3,0xb2)
)
//Complete all of Bonnie & Karin's Testimony in Rebuttal [Episode 4] Present 00b3
achievement(
    "Updated Autopsy Report", 
    "Complete all of Bonnie & Karin's testimony in Rebuttal [Episode 4]",
    3, 
    prev(CurrentCase) == Case4End1 && CurrentCase == 0x35 &&
    RoomID == 0x0018 &&
    ExaminedHorn == 1 &&
    StoleVictimClothes == 1 &&
    CheckGroupFlags(BlaiseLogic, 1) 
    
)

//End 2 
Pressed2 = bit0(0x092da9)
Case4End2 = 0x35
//Complete all of Blaise Debeste's second Testimony in Rebuttal [Episode 4]
achievement(
    "Written Promises", 
    "Complete all of Blaise Debeste's second testimony and help Kay recover and make sense of her memories [Episode 4]",
    5, 
    CurrentCase == Case4End2 &&
    prev(RoomID) == 0x0018 && RoomID == 0x001c &&
    Pressed2 == 1    
)
//Complete the case with 80% or more health left [Episode 4]
achievement(
    "Spirit of Justice", 
    "Complete the case with 80% or more health left",
    10, 
    CurrentCase == Case4End2 &&
    trigger_when(prev(RoomID) == 0x0018 && RoomID == 0x001c &&
    Pressed2 == 1) &&
    (CurrentHealth >= 80)
)

//Case 5 stuff finally
//Beginning 1
Case5Beginning1 = 0x40
//Finish the first investigation [Episode 5] 001f
RearEntranceCombination = bit0(0x092e26)
DentedFenceBrokenHown = bit2(0x092e26)
SteppedMonster = bit3(0x092e26)
TalkedPenny = bit3(0x092e28)
TalkedDiscoveryBody = bit4(0x092e28)
TalkedMovie = bit5(0x092e28)
TalkedEntrance = bit6(0x092e28)
AskBrokenHown = bit7(0x092e28)
ExaminedBody = bit0(0x092e29)
ExaminedCorpse = bit1(0x092e29)
ExaminedTrack = bit3(0x092e29)
ExaminedRightGate = bit5(0x092e29)
ExaminedSheet = bit6(0x092e29)
ExaminedFilmCrane = bit7(0x092e29)
TalkedLang = bit1(0x092e2a)
AskedWhyHere = bit2(0x092e2a)
AskPresident = bit3(0x092e2a)
TalkedLotta = bit4(0x092e2a)
TalkedJohn = bit6(0x092e2a)
TalkedAboutPresident = bit7(0x092e2a)
ExaminedMoozilla = bit1(0x092e2b)
ExaminedBrokenTable = bit0(0x092e3d)
Case5FirstInvestigation = 
[
    RearEntranceCombination ,
DentedFenceBrokenHown ,
SteppedMonster,
TalkedPenny ,
TalkedDiscoveryBody ,
TalkedMovie,
TalkedEntrance,
AskBrokenHown ,
ExaminedBody,
ExaminedCorpse,
ExaminedTrack ,
ExaminedRightGate ,
ExaminedSheet ,
ExaminedFilmCrane,
TalkedLang ,
AskedWhyHere,
AskPresident,
TalkedLotta ,
TalkedJohn ,
TalkedAboutPresident ,
ExaminedMoozilla ,
ExaminedBrokenTable 
]

//Finish Shi-Long Lang's testimony in Rebuttal [Episode 5] 001f, present 00ca
PresentPhotoPresented = bit7(0x092e24)
CombinationLockPresented = bit0(0x092e25)
LangFirstTestimonyStuff = [
    PresentPhotoPresented,
    CombinationLockPresented
]
achievement(
    "Giant Moozilla", 
    "Finish the first investigation [Episode 5]",
    3, 
    CurrentCase == Case5Beginning1 &&
    RoomID == 0x001f &&
    CheckGroupFlags(Case5FirstInvestigation, 1) &&
    CheckGroupFlags(LangFirstTestimonyStuff, 0) &&
    PartCompleteCheck()
)

achievement(
    "Why Courtney?", 
    "Finish Shi-Long Lang's testimony in Rebuttal [Episode 5]",
    3, 
    CurrentCase == Case5Beginning1 &&
    RoomID == 0x001f &&
    CheckGroupFlags(LangFirstTestimonyStuff, 1) &&
    EvidencePresented == 0x00ca && prev(EvidencePresented) != 0x00ca
)

//Beginning 2
Case5Beginning2 = 0x41
//Win in Logic Chess against Justine Courtney [Episode 5] 0025
JustineClue1 = bit4(0x092e42)
JustineClue2 = bit5(0x092e42)
JustineClue3 = bit6(0x092e42)
JustineClue4 = bit7(0x092e42)
JustineClue5 = bit4(0x092e44)
JustineClue6 = bit5(0x092e44)
JustineClue7 = bit6(0x092e44)

JustineChess = [
    JustineClue1,
    JustineClue2,
    JustineClue3,
    JustineClue4,
    JustineClue5,
    JustineClue6,
    JustineClue7
]

//Finish the second investigation [Episode 5] 001e
ConnectTwoMen = bit4(0x092e26)
ConnectStolenBox = bit6(0x092e26)
ExaminedTrailer = bit3(0x092e30)
ExaminedBlueTruck = bit7(0x092e30)
AskedJohn = bit3(0x092e31)
TalkedNicole = bit5(0x092e31)
Case52ndInvestigation = [
    ConnectTwoMen,
    ExaminedTrailer,
    ExaminedBlueTruck,
    AskedJohn,
    TalkedNicole
]

//Win in Logic Chess against Sebastian Debeste [Episode 5] 0025
SebastianClue1 = bit0(0x092e43)
SebastianClue2 = bit1(0x092e43)
SebastianClue3 = bit2(0x092e43)
SebastianClue4 = bit3(0x092e43)
SebastianClue5 = bit4(0x092e43)
SebastianClue6 = bit7(0x092e44)
SebastianClue7 = bit0(0x092e45)
SebastianClue8 = bit1(0x092e45)
SebastianClue9 = bit2(0x092e45)
SebatianLogicChess = [
    SebastianClue1, SebastianClue2, SebastianClue3, SebastianClue4, SebastianClue5, SebastianClue6, SebastianClue7, SebastianClue8, SebastianClue9
]

//Finish the third investigation [Episode 5] 001e
ConnectCarsGarbage = bit1(0x092e27)
ConnectColiseumGarbage = bit4(0x092e27)
ConnectExpolsionColiseum = bit2(0x092e28)
ExaminedMilkCarton = bit6(0x092e35)
ThirdInvestigation = [
    ConnectCarsGarbage,
    ConnectColiseumGarbage,
    ConnectExpolsionColiseum,
    ExaminedMilkCarton 
]

achievement(
    "Maternal Instinct", 
    "Win in Logic Chess against Justine Courtney [Episode 5]",
    4, 
    CurrentCase == Case5Beginning2 &&
    RoomID == 0x0025 &&
    CheckGroupFlags(JustineChess, 1) &&
    CheckGroupFlags(Case52ndInvestigation, 0) &&
    PartCompleteCheck()
)

achievement(
    "Men in Black", 
    "Finish the second investigation [Episode 5]",
    4, 
    CurrentCase == Case5Beginning2 &&
    RoomID == 0x001e &&    
    CheckGroupFlags(Case52ndInvestigation, 1) &&
    CheckGroupFlags(SebatianLogicChess, 0) &&
    PartCompleteCheck()
)

achievement(
    "Final Checkmate", 
    "Win in Logic Chess against Sebastian Debeste [Episode 5]",
    4, 
    CurrentCase == Case5Beginning2 &&
    RoomID == 0x0025 &&      
    CheckGroupFlags(SebatianLogicChess, 1) &&
    CheckGroupFlags(ThirdInvestigation, 0) &&
    PartCompleteCheck()
)

achievement(
    "Another Man's Garbage...", 
    "Finish the third investigation [Episode 5]",
    4, 
    CurrentCase == Case5Beginning2 &&
    RoomID == 0x001e &&      
    CheckGroupFlags(ThirdInvestigation, 1) &&
    PartCompleteCheck()
)

//Middle 1 
Case5Middle1 = 0x42
//Finish John Marsh's testimony in Rebuttal [Episode 5] 001f
PresentVideo = bit5(0x092e40)
PresentHead = bit5(0x092e36)

//Finish Shi-Long Lang's second testimony in Rebuttal [Episode 5] 001f
PresentCrimeNotes = bit6(0x092e36)
PresentBag = bit7(0x092e36)
LangFinished = bit1(0x092e37)
 
//Finish John Marsh's second testimony in Rebuttal [Episode 5] 001f
JohnMarsh2PresentCrime = bit2(0x092e37)
JohnMarsh2PressedFurther = bit4(0x092e45)
JohnMarsh2Finished = bit3(0x092e37)

//Finish the fourth investigation [Episode 5] 0020 or 0x021
PresentReport = bit6(0x092e38)
ConnectedBricks = bit1(0x092e39)
BodyMoved = bit4(0x092e39)
ConnectedWhatDidBlaiseDig = bit7(0x092e39)
ExaminedFlower = bit2(0x092e3a)
ExaminedBrick  = bit3(0x092e3a)
ExaminedBody = bit4(0x092e3a)
ExaminedShoes = bit5(0x092e3a)
ExaminedCamera = bit6(0x092e3a)
ExaminedCellPhone = bit7(0x092e3a)
ExaminedLeftFootprints = bit1(0x092e3b)
ExaminedRightFootprints = bit2(0x092e3b)
ExaminedLeftFlowerbed = bit3(0x092e3b)
ExaminedLeftPillar = bit6(0x092e3b)
ExaminedHandprint = bit5(0x092e3f)
Case5FourthInvestigation = [
    PresentReport,
ConnectedBricks,
BodyMoved,
ConnectedWhatDidBlaiseDig,
ExaminedFlower,
ExaminedBrick,
ExaminedBody,
ExaminedShoes,
ExaminedCamera,
ExaminedCellPhone,
ExaminedLeftFootprints,
ExaminedRightFootprints,
ExaminedLeftFlowerbed,
ExaminedLeftPillar,
ExaminedHandprint
]
achievement(
    "John's Rehearsal", 
    "Finish John Marsh's testimony in Rebuttal [Episode 5]",
    4, 
    CurrentCase == Case5Middle1 &&
    RoomID == 0x001f &&      
    PresentVideo == 1 && PresentHead == 1 && prev(PresentHead) == 0
)



achievement(
    "Mother and Son Theory", 
    "Finish Shi-Long Lang's second testimony in Rebuttal [Episode 5]",
    4, 
    CurrentCase == Case5Middle1 &&
    RoomID == 0x001f &&
    PresentCrimeNotes == 1 &&
    PresentBag == 1 && 
    LangFinished  == 1 && prev(LangFinished) == 0
)

achievement(
    "Lion Lily Flower", 
    "Finish John Marsh's second testimony in Rebuttal [Episode 5]",
    4, 
    CurrentCase == Case5Middle1 &&
    RoomID == 0x001f &&
    JohnMarsh2PresentCrime == 1 &&
    JohnMarsh2PressedFurther == 1 &&
    JohnMarsh2Finished == 1 && prev(JohnMarsh2Finished) == 0
)

achievement(
    "12 Years Ago", 
    "Finish the fourth investigation [Episode 5]",
    4, 
    CurrentCase == Case5Middle1 &&
    (RoomID == 0x021 || RoomID == 0x0020) &&      
    CheckGroupFlags(Case5FourthInvestigation, 1) &&
    PartCompleteCheck()
)
//Middle2
Case5Middle2 = 0x43
//Finish Shi-Long Lang's third testimony in Rebuttal [Episode 5] 001f
PresentChildDrawing = bit3(0x092e3d)
PresentMonster = bit4(0x092e3d)
FinishedLang = bit5(0x092e3d)
achievement(
    "Truth of the SS-5 Incident", 
    "Finish Shi-Long Lang's third testimony in Rebuttal [Episode 5]",
    5, 
    CurrentCase == Case5Middle2 &&
    RoomID == 0x001f &&
    PresentChildDrawing == 1 && 
    PresentMonster == 1 && 
    FinishedLang == 1 && prev(FinishedLang) == 0
)

//Finish Sirhan Dogen's testimony in Rebuttal [Episode 5] 001f
TheRing = bit7(0x092e40)
CorrespondenceChessMemo = bit6(0x092e3d)
achievement(
    "Dogen and the 'Acolyte'", 
    "Finish Sirhan Dogen's testimony in Rebuttal [Episode 5]",
    5, 
    prev(CurrentCase) == Case5Middle2 && CurrentCase == 0x44&&
    RoomID == 0x001f &&
    TheRing == 1 && 
    CorrespondenceChessMemo == 1 
)
//End
Case5End1 = 0x44
Bullet = bit0(0x092e40)
Pressed1 = bit1(0x092e40)
Pressed2 = bit4(0x092e40)

//Finish Simon Keyes's testimony in Rebuttal [Episode 5]
achievement(
    "The Mastermind", 
    "Finish Simon Keyes's testimony in Rebuttal [Episode 5]",
    10, 
    CurrentCase == Case5End1 &&
    RoomID == 0x0018 && prev(RoomID) == 0x22 &&
    Bullet == 1 &&
    Pressed1 == 1 &&
    Pressed2 == 1 &&
    dword(0x0982a8) == 0
)

achievement(
    "Trials and Tribulations", 
    "Complete the case with 80% or more health left [Episode 5]",
    10, 
    CurrentCase == Case5End1 &&
    trigger_when(RoomID == 0x0018 && prev(RoomID) == 0x22 &&
    Bullet == 1 &&
    Pressed1 == 1 &&
    Pressed2 == 1 && dword(0x0982a8) == 0) && 
    (CurrentHealth >= 80)
)

achievement(
    "Prosecutor's Path", 
    "Recover your Prosecutor's Badge [Episode 5]",
    2, 
    CurrentCase == Case5End1 &&
    RoomID == 0x0018 &&
    dword(0x0982a8) == 1 && prev(dword(0x0982a8)) == 0
)