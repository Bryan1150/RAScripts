// ~Hack~ Pokemon Renegade Platinum
// #ID = 16196
GlobalPointer = tbyte(0x101d40) 

MapID = word(GlobalPointer + 0x1294)
//Map IDS
YourHouseMain = 0x019e
TrainerSchool = 0x001d
Lab = 0x01a6
PokemonCenterJubilife = 0x0006
PokemonCenterOreburgh = 0x0030
PokemonCenterFloaroma = 0x01ac
StevenHouse = 0x0040
FirstGym = 0x002f
SecondGym = 0x0043
ThirdGym = 0x005b
FourthGym = 0x0085
FifthGym = 0x007a
SixthGym = 0x0023
SeventhGym = 0x00a7
EightGym = 0x009c
PokemonLeagueEntrance = 0x00af
FirstElevator = 0x0b0
Elite4Aaron = 0x00b1
SecondElevator = 0x00b2
Elite4Bertha = 0x00b3
ThirdElevator = 0x00b4
Elite4Flint = 0x00b5
FourthElevator = 0x00b6
Elite4Lucian = 0x00b7
FifthElevator = 0x00b8
Elite4Cynthia = 0x00b9
Elite4WinRoom = 0x00ba


//Badges +0x96
FirstBadge = bit0(GlobalPointer + 0x96)
SecondBadge = bit1(GlobalPointer + 0x96)
ThirdBadge = bit4(GlobalPointer + 0x96)
FourthBadge = bit2(GlobalPointer + 0x96)
FifthBadge = bit3(GlobalPointer + 0x96)
SixthBadge = bit5(GlobalPointer + 0x96)
SeventhBadge = bit6(GlobalPointer + 0x96)
EightBadge = bit7(GlobalPointer + 0x96)
//Event Flags
//+0x1141 Eevee Event --Bit 1 
EeveeEvent = bit1(GlobalPointer + 0x1141)
//+ECE First Lucas Fight --Bit 0

//+EAE Reached Jubilife City --Bit 0 

//+F8E Delivered parcel to rival --Bit 0 

//+ED0 Defeated Rival 2nd Time --Bit 0


//+0x1114 Egg gift --Bit 2
EggGift = bit2(GlobalPointer + 0x1114)
//+111A Get Beldum --Bit 1 
BeldumGift = bit1(GlobalPointer + 0x111A)

//+0x1119 Grabbed Sinnoh Starters --Bit 0
SinnohStarters = bit0(GlobalPointer + 0x1119)
//+0x1142 Grabbed Kanto Starters --Bit 6
KantoStarters = bit6(GlobalPointer + 0x1142)

//+0x1142 Grabbed Kanto Starters --Bit 4
HoennStarters = bit4(GlobalPointer + 0x1142)

JohtoStarters = bit5(GlobalPointer + 0x1142)

//+0xf8e Get Poketch --Bit 1

//+0x1010 Get Old Rod --Bit 4

//+0x1118 Defeated Reporter for kanto pokemon --Bit 6

//+1012 Obtained HM06 --Bit 3

//+0x000eb2 Oreuburgh town first visit opal stone --Bit 0

//TrainerFlags
//1st Divition.

//Route 202 - 3/3 Normal Matches - 0/3 Rematches - 0/1 Master Trainer
Route202_LassNatalie = bit3(GlobalPointer + 0x10AA) //Lass Natalie +10AA --Bit 3
Route202_YoungsterTristan = bit1(GlobalPointer + 0x10AA) //Youngster Tristan +10AA --Bit 1
Route202_YoungsterLogan = bit2(GlobalPointer + 0x10AA) //YoungsterLogan +10AA --Bit 2
//Trainer School - 2/2 Normal Matches
TrainerSchool_SchoolkidHarrison = bit4(GlobalPointer + 0x1021) //Schoolkid Harrison 0x1021 --bit 4
TrainerSchool_SchoolkidChristine = bit5(GlobalPointer + 0x1021) //Schoolkid Christine 0x1021 --bit 5
//Route 204 ~ South - 3/3 Normal Matches - 0/3 Rematches
Route204_LassSarah = bit4(GlobalPointer + 0x10AB) //Lass Sarah +10AB --Bit 4
Route204_LassSamantha = bit3(GlobalPointer + 0x10AB) // Lass Samantha +10AB --Bit 3
Route204_YoungsterTyler = bit2(GlobalPointer + 0x10AB) //Youngster Tyler +10AB --Bit 2
//Route 203 5/5 Normal Matches
Route203_YoungsterDallas = bit3(GlobalPointer + 0x10d6) //Youngster Dallas +0x10d6 --Bit 3
Route203_YoungsterSebastian = bit4(GlobalPointer + 0x10d6) //Youngster Sebastian +0x10d6 --Bit 4
Route203_LassMadeline = bit2(GlobalPointer + 0x10d2) //Lass Madeline +0x10d2 --Bit 2
Route203_LassKaitlin = bit3(GlobalPointer + 0x10d2) //Lass Kaitlin +0x10d2 --Bit 3
Route203_YoungsterMichael = bit4(GlobalPointer + 0x0010aa) //Youngster Michael --Bit 4 +0x10aa
//Oreburgh Gate 2/3 Normal Matches - 0/1 Master Trainer
OreburghGate_CamperCurtis = bit1(GlobalPointer + 0x0010cb) //Camper Curtis +0x0010cb --bit1
OreburghGate_PicnickerDiana = bit1(GlobalPointer + 0x0010d3) //Picnicker Diana +0x0010d3 --bit1
//Oreburgh Mine 2/2 Normal Matches
OreburghMine_WorkerMason = bit4(GlobalPointer + 0x10C2) //Worker Mason +10C2 Bit 4
OreburghMine_WorkerColin = bit3(GlobalPointer + 0x10C2) //Worker Colin +10C2 Bit 3

//2nd division
//Route 204 North - 3/3 Normal Matches
Route204North_AromaLadyTaylor = bit6(GlobalPointer + 0x10AB)
Route204North_BugCatcherBrandon = bit5(GlobalPointer + 0x10AB)
Route204North_TwinsLivLiz = bit7(GlobalPointer + 0x10AB)
//Route 205 South - 8/8
Route205South_CamperJacob = bit0(GlobalPointer + 0x10AC)
Route205South_HikerDaniel = bit2(GlobalPointer + 0x10AC)
Route205South_AromaLadyElizabeth = bit5(GlobalPointer + 0x10AC)
Route205South_CamperZackary = bit1(GlobalPointer + 0x10D9)
Route205South_PicnickerSiena = bit1(GlobalPointer + 0x10AC)
Route205South_HikerNicholas = bit3(GlobalPointer + 0x10AC)
Route205South_BattleGirlKelsey = bit4(GlobalPointer + 0x10AC)
Route205South_PicnickerKarina = bit4(GlobalPointer + 0x10E3)
//Eterna Forest Finished
EternaForest_LassBriana = bit4(GlobalPointer + 0x10C3)
EternaForest_BugCatcherJack = bit1(GlobalPointer + 0x10C3)
EternaForest_PsychicElijah = bit5(GlobalPointer + 0x10C3)
EternaForest_PsychicLindsey = bit6(GlobalPointer + 0x10C3)
EternaForest_BugCatcherDonald = bit3(GlobalPointer + 0x10C3)
EternaForest_BugCatcherPhilip = bit2(GlobalPointer + 0x10C3)
EternaForest_PsychicKody = bit3(GlobalPointer + 0x10DB)
EternaForest_PsychicRachael = bit6(GlobalPointer + 0x10DB)
//Route 205 North 3/3
Route205North_FishermanJoseph = bit7(GlobalPointer + 0x10AC)
Route205North_FishermanAndrew = bit6(GlobalPointer + 0x10AC)
Route205North_FishermanZachary = bit0(GlobalPointer + 0x10AD)
//Route 211 West 3/3
Route211West_HikerLouis = bit6(GlobalPointer + 0x10D2)
Route211West_BirdKeeperAlexandra = bit4(GlobalPointer + 0x10B3)
Route211West_NinjaBoyZach = bit6(GlobalPointer + 0x10B3)
//Route 211 East 4/4
Route211East_BirdKeeperKatherine = bit1(GlobalPointer + 0x10B4)
Route211East_RuinManiacHarry = bit2(GlobalPointer + 0x10E1)
Route211East_NinjaBoyNick = bit0(GlobalPointer + 0x10B4)
Route211East_BlackBeltSean = bit7(GlobalPointer + 0x10B3)
//Route 216 5/5
Route216_AceTrainerBlake = bit4(GlobalPointer + 0x10BA)
Route216_AceTrainerLaura = bit6(GlobalPointer + 0x10BA)
Route216_SkierEdward = bit1(GlobalPointer + 0x10BB)
Route216_AceTrainerGarrett = bit5(GlobalPointer + 0x10BA)
Route216_AceTrainerMaria = bit7(GlobalPointer + 0x10BA)
//Route 206 9/9 
Route206_CyclistAxel = bit1(GlobalPointer + 0x10AD)
Route206_CyclistJames = bit2(GlobalPointer + 0x10AD)
Route206_CyclistMegan = bit5(GlobalPointer + 0x10AD)
Route206_CyclistNicole = bit6(GlobalPointer + 0x10AD)
Route206_CyclistJohn = bit3(GlobalPointer + 0x10AD)
Route206_CyclistRyan = bit4(GlobalPointer + 0x10AD)
Route206_CyclistRachel = bit0(GlobalPointer + 0x10AE)
Route206_CyclistKayla = bit7(GlobalPointer + 0x10AD)
Route206_HikerTheodore = bit3(GlobalPointer + 0x10E2)

//3rd Division
//Wayward Cave 10/10
WaywardCave_HikerLorenzo = bit7(GlobalPointer + 0x10E2)
WaywardCave_HikerReginald = bit6(GlobalPointer + 0x10E2)
WaywardCave_YoungsterWayne = bit0(GlobalPointer + 0x10E8)
WaywardCave_LassCassidy = bit2(GlobalPointer + 0x10E2)
WaywardCave_PicnickerAna = bit3(GlobalPointer + 0x10E3)
WaywardCave_CamperParker = bit4(GlobalPointer + 0x10D9)
WaywardCave_PicnickerTori = bit2(GlobalPointer + 0x10E3)
WaywardCave_CamperDiego = bit3(GlobalPointer + 0x10D9)
WaywardCave_RuinManiacGerald = bit3(GlobalPointer + 0x10E1)
WaywardCave_CollectorTerry = bit7(GlobalPointer + 0x10D9)
//Route 207 6/6
Route207_CamperAnthony = bit2(GlobalPointer + 0x10AE)
Route207_PicnickerLauren = bit3(GlobalPointer + 0x10AE)
Route207_HikerJustin = bit5(GlobalPointer + 0x10AE)
Route207_YoungsterAustin = bit1(GlobalPointer + 0x10AE)
Route207_BattleGirlHelen = bit6(GlobalPointer + 0x10AE)
Route207_HikerKevin = bit4(GlobalPointer + 0x10AE)
//Route 208 6/7 Missing fisherman
Route208_HikerJonathan = bit1(GlobalPointer + 0x10AF)
Route208_BlackBeltKyle = bit2(GlobalPointer + 0x10AF)
Route208_HikerRobert = bit7(GlobalPointer + 0x10AE)
Route208_HikerAlexander = bit0(GlobalPointer + 0x10AF)
Route208_AromaLadyHannah = bit4(GlobalPointer + 0x10AF)
Route208_ArtistWilliam = bit5(GlobalPointer + 0x10AF)

//Route212North 4/8 Missing guards but idk if they actually fight
Route212North_RichBoyJason = bit2(GlobalPointer + 0x10B4)
Route212North_LadyMelissa = bit3(GlobalPointer + 0x10B4)
Route212North_SocialiteReina = bit5(GlobalPointer + 0x10B4)
Route212North_GentlemanJeremy = bit4(GlobalPointer + 0x10B4)




//Route209 6/8 missing the 2 joggers but idk if possible
Route209_TwinsEmmaLil = bit6(GlobalPointer + 0x10CE)
Route209_PokéKidDanielle = bit5(GlobalPointer + 0x10B0)
Route209_PKMNBreederAlbert = bit6(GlobalPointer + 0x10AF)
Route209_PKMNBreederJennifer = bit7(GlobalPointer + 0x10AF)
Route209_CowgirlShelley = bit0(GlobalPointer + 0x10B0)
Route209_YoungCoupleTySue = bit7(GlobalPointer + 0x10B0)

//LostTower 6/6
LostTower_YoungsterOliver = bit4(GlobalPointer + 0x10EC)
LostTower_RoughneckKirby = bit1(GlobalPointer + 0x10EC)
LostTower_PokéfanLeonard = bit2(GlobalPointer + 0x10EC)
LostTower_PokéfanRebekah = bit3(GlobalPointer + 0x10EC)
LostTower_BellePaBethBob = bit5(GlobalPointer + 0x10EC)
LostTower_YoungCoupleMikeNat = bit6(GlobalPointer + 0x10EC)
//Solaceon Ruins 1/1
SolaceonRuins_RuinManiacKarl = bit1(GlobalPointer + 0x10EF)
//Route 210 South 8/9 Missing 1 jogger again
Route210South_RancherMarco = bit4(GlobalPointer + 0x10CE)
Route210South_BellePaAvaMatt = bit2(GlobalPointer + 0x10CE)
Route210South_PKMNBreederAmber = bit1(GlobalPointer + 0x10B1)
Route210South_TwinsTeriTia = bit1(GlobalPointer + 0x10B2)
Route210South_PKMNBreederKahlil = bit0(GlobalPointer + 0x10B1)
Route210South_WaitressKati = bit6(GlobalPointer + 0x10D7)
Route210South_CollectorEdwin = bit4(GlobalPointer + 0x10CC)
Route210South_CollectorFernando = bit3(GlobalPointer + 0x10CC)
//Route215 6/8 2 joggers missing
Route215_RuinManiacCalvin = bit0(GlobalPointer + 0x10D0)
Route215_BlackBeltGregory = bit7(GlobalPointer + 0x10B9)
Route215_BlackBeltDerek = bit0(GlobalPointer + 0x10BA)
Route215_BlackBeltNathaniel = bit1(GlobalPointer + 0x10BA)
Route215_AceTrainerDennis = bit6(GlobalPointer + 0x10CC)
//Route 214 9/9
Route214_PsychicAbigail = bit0(GlobalPointer + 0x10B9)
Route214_PICarlos = bit1(GlobalPointer + 0x10B9)
Route214_CollectorBrady = bit1(GlobalPointer + 0x10CC)
Route214_BeautyDevon = bit3(GlobalPointer + 0x10E7)
Route214_PsychicMitchell = bit7(GlobalPointer + 0x10B8)
Route214_CollectorDouglas = bit0(GlobalPointer + 0x10CC)
Route214_RuinManiacRonald = bit2(GlobalPointer + 0x10B8)
Route214_CollectorJamal = bit6(GlobalPointer + 0x10D9)
Route214_RuinManiacBryan = bit1(GlobalPointer + 0x10B8)
//Seven Star Restaurant
SevenStarRestaurant_1 = bit5(GlobalPointer + 0x10ED)
SevenStarRestaurant_2 = bit6(GlobalPointer + 0x10EE)
SevenStarRestaurant_3 = bit0(GlobalPointer + 0x10EE)
SevenStarRestaurant_4 = bit0(GlobalPointer + 0x10EF)
SevenStarRestaurant_5 = bit7(GlobalPointer + 0x10EC)
SevenStarRestaurant_6 = bit3(GlobalPointer + 0x10ED)
SevenStarRestaurant_7 = bit0(GlobalPointer + 0x10ED)
SevenStarRestaurant_8 = bit7(GlobalPointer + 0x10EE)
SevenStarRestaurant_9 = bit1(GlobalPointer + 0x10EE)
SevenStarRestaurant_10 = bit2(GlobalPointer + 0x10EE)
SevenStarRestaurant_11 = bit6(GlobalPointer + 0x10ED)
SevenStarRestaurant_12 = bit7(GlobalPointer + 0x10ED)
SevenStarRestaurant_13 = bit4(GlobalPointer + 0x10ED)
SevenStarRestaurant_14 = bit4(GlobalPointer + 0x10EE)
SevenStarRestaurant_15 = bit2(GlobalPointer + 0x10ED)
SevenStarRestaurant_16 = bit3(GlobalPointer + 0x10EE)
SevenStarRestaurant_17 = bit1(GlobalPointer + 0x10ED)
SevenStarRestaurant_18 = bit5(GlobalPointer + 0x10EE)
//Route 213 4/10
Route213_TuberChelsea = bit4(GlobalPointer + 0x10B7)
Route213_TuberJared = bit3(GlobalPointer + 0x10B7)
Route213_FishermanKenneth = bit7(GlobalPointer + 0x10B7)
Route213_BeautyCyndy = bit2(GlobalPointer + 0x10D5)






//Route 212 - South 12/12
Route212South_PokémonRangerTaylor = bit6(GlobalPointer + 0x10B5)
Route212South_ParasolLadyAlexa = bit7(GlobalPointer + 0x10D2)
Route212South_FishermanJuan = bit3(GlobalPointer + 0x10B5)
Route212South_FishermanJosh = bit4(GlobalPointer + 0x10B5)
Route212South_FishermanTravis = bit5(GlobalPointer + 0x10B5)
Route212South_CollectorDean = bit5(GlobalPointer + 0x10D9)
Route212South_PolicemanDanny = bit4(GlobalPointer + 0x10D3)
Route212South_PokémonRangerJeffrey = bit7(GlobalPointer + 0x10B5)
Route212South_ScientistStefano = bit3(GlobalPointer + 0x10B6)
Route212South_PokémonRangerAllison = bit0(GlobalPointer + 0x10B6)
Route212South_ScientistShaun = bit6(GlobalPointer + 0x10E6)
Route212South_ParasolLadySabrina = bit0(GlobalPointer + 0x10D3)
//Route 210 North 0/13
Route210North_NinjaBoyBrennan = bit1(GlobalPointer + 0x10E7)
Route210North_NinjaBoyFabian = bit0(GlobalPointer + 0x10E7)
Route210North_NinjaBoyBruce = bit2(GlobalPointer + 0x10E7)
Route210North_NinjaBoyJoel = bit6(GlobalPointer + 0x10B2)
Route210North_AceTrainerAlyssa = bit3(GlobalPointer + 0x10B2)
Route210North_DoubleTeamZacJen = bit3(GlobalPointer + 0x10B3)
Route210North_AceTrainerErnest = bit2(GlobalPointer + 0x10B2)
Route210North_BlackBeltAdam = bit5(GlobalPointer + 0x10B2)
Route210North_NinjaBoyNathan = bit7(GlobalPointer + 0x10B2)
Route210North_BirdKeeperBrianna = bit2(GlobalPointer + 0x10B3)
Route210North_VeteranBrian = bit4(GlobalPointer + 0x10B2)
Route210North_NinjaBoyDavido = bit0(GlobalPointer + 0x10B3)
Route210North_DragonTamerPatrick = bit1(GlobalPointer + 0x10B3)
//Route218 4/4
Route218_SailorSkyler = bit2(GlobalPointer + 0x10D4)
Route218_GuitaristTony = bit4(GlobalPointer + 0x10CF)
Route218_FishermanLuc = bit2(GlobalPointer + 0x10BD)
Route218_FishermanMiguel = bit1(GlobalPointer + 0x10BD)
//Fuego Ironworks 3/3
FuegoIronworks_WorkerDillan = bit4(GlobalPointer + 0x1113)
FuegoIronworks_WorkerHolden = bit5(GlobalPointer + 0x1113)
FuegoIronworks_WorkerConrad = bit6(GlobalPointer + 0x1113)
//Route 219 2/2
Route219_TuberTrenton = bit6(GlobalPointer + 0x10D6)
Route219_TuberMariel = bit0(GlobalPointer + 0x10D7)
//Route 220 0/7
Route220_SwimmerJessica = bit2(GlobalPointer + 0x10BE)
Route220_SwimmerErica = bit3(GlobalPointer + 0x10BE)
Route220_SwimmerAdrian = bit7(GlobalPointer + 0x10BD)
Route220_SwimmerVincent = bit1(GlobalPointer + 0x10BE)
Route220_SwimmerClaire = bit6(GlobalPointer + 0x10E7)
Route220_SwimmerErik = bit0(GlobalPointer + 0x10BE)
Route220_SwimmerKatelyn = bit4(GlobalPointer + 0x10BE)
//Route 221 0/6
Route221_SwimmerDillon = bit6(GlobalPointer + 0x10BE)
Route221_SwimmerVanessa = bit7(GlobalPointer + 0x10BE)
Route221_FishermanCory = bit0(GlobalPointer + 0x10BF)
Route221_CollectorIvan = bit2(GlobalPointer + 0x10CC)
Route221_AceTrainerShannon = bit3(GlobalPointer + 0x10BF)
Route221_AceTrainerJake = bit2(GlobalPointer + 0x10BF)
//Iron Island 0/12
IronIsland_CamperLawrence = bit2(GlobalPointer + 0x10D9)
IronIsland_PicnickerSummer = bit1(GlobalPointer + 0x10E3)
IronIsland_WorkerNoel = bit7(GlobalPointer + 0x10E8)
IronIsland_WorkerBraden = bit0(GlobalPointer + 0x10E9)
IronIsland_HikerDamon = bit4(GlobalPointer + 0x10E2)
IronIsland_HikerMaurice = bit5(GlobalPointer + 0x10E2)
IronIsland_BlackBeltKendal = bit5(GlobalPointer + 0x10E1)
IronIsland_BattleGirlTyler = bit4(GlobalPointer + 0x10D8)
IronIsland_AceTrainerJonah = bit4(GlobalPointer + 0x10DA)
IronIsland_AceTrainerBrenda = bit0(GlobalPointer + 0x10DB)
IronIsland_WorkerBrendon = bit1(GlobalPointer + 0x10E9)
IronIsland_WorkerQuentin = bit2(GlobalPointer + 0x10E9)
//Route217 9/9
Route217_AceTrainerDalton = bit4(GlobalPointer + 0x10BB)
Route217_SkierShawn = bit6(GlobalPointer + 0x10BB)
Route217_SkierMadison = bit1(GlobalPointer + 0x10BC)
Route217_NinjaBoyMatthew = bit2(GlobalPointer + 0x10BC)
Route217_NinjaBoyEthan = bit3(GlobalPointer + 0x10BC)
Route217_SkierLexie = bit0(GlobalPointer + 0x10BC)
Route217_SkierBjorn = bit7(GlobalPointer + 0x10BB)
Route217_BlackBeltLuke = bit4(GlobalPointer + 0x10BC)
Route217_AceTrainerOlivia = bit5(GlobalPointer + 0x10BB)
//Route 222 11/12 missing 1 officer one
Route222_RichBoyTrey = bit7(GlobalPointer + 0x10D3)
Route222_FishermanAlec = bit5(GlobalPointer + 0x10BF)
Route222_FishermanGeorge = bit6(GlobalPointer + 0x10BF)
Route222_FishermanBrett = bit4(GlobalPointer + 0x10BF)
Route222_FishermanCole = bit7(GlobalPointer + 0x10BF)
Route222_TuberHolly = bit1(GlobalPointer + 0x10D7)
Route222_SailorLuther = bit4(GlobalPointer + 0x10C0)
Route222_SailorMarc = bit1(GlobalPointer + 0x10D4)
Route222_TuberConner = bit7(GlobalPointer + 0x10D6)
Route222_BeautyNicola = bit4(GlobalPointer + 0x10E7)
Route222_PokéKidJanet = bit0(GlobalPointer + 0x1112) // Dont count this one LOL

//Route 223 0/13
Route223_SwimmerMiranda = bit5(GlobalPointer + 0x10C1)
Route223_SwimmerAubree = bit6(GlobalPointer + 0x10C1)
Route223_SwimmerOscar = bit4(GlobalPointer + 0x10C1)
Route223_SwimmerColton = bit7(GlobalPointer + 0x10C1)
Route223_SwimmerPaige = bit2(GlobalPointer + 0x10C1)
Route223_SwimmerRicardo = bit0(GlobalPointer + 0x10C1)
Route223_SwimmerCrystal = bit0(GlobalPointer + 0x10C2)
Route223_SwimmerWesley = bit7(GlobalPointer + 0x10C0)
Route223_SailorZachariah = bit2(GlobalPointer + 0x10E6)
Route223_SwimmerGabrielle = bit2(GlobalPointer + 0x10C2)
Route223_SwimmerCassandra = bit1(GlobalPointer + 0x10C2)
Route223_SwimmerTroy = bit3(GlobalPointer + 0x10C1)

//Victory Road 0/14
VictoryRoad_BirdKeeperHana = bit1(GlobalPointer + 0x10C7)
VictoryRoad_PsychicBryce = bit2(GlobalPointer + 0x10C7)
VictoryRoad_AceTrainerMariah = bit2(GlobalPointer + 0x10C6)
VictoryRoad_AceTrainerOmar = bit0(GlobalPointer + 0x10C6)
VictoryRoad_AceTrainerSydney = bit3(GlobalPointer + 0x10C6)
VictoryRoad_DoubleTeamAlKay = bit5(GlobalPointer + 0x10C7)
VictoryRoad_VeteranClayton = bit5(GlobalPointer + 0x10C6)
VictoryRoad_BlackBeltMiles = bit4(GlobalPointer + 0x10E1)
VictoryRoad_PsychicValencia = bit3(GlobalPointer + 0x10C7)
VictoryRoad_AceTrainerHenry = bit1(GlobalPointer + 0x10C6)
VictoryRoad_DoubleTeamJoPat = bit4(GlobalPointer + 0x10C7)
VictoryRoad_AceTrainerHenry = bit6(GlobalPointer + 0x10C6)
VictoryRoad_VeteranEdgar = bit4(GlobalPointer + 0x10C6)
VictoryRoad_DragonTamerClinton = bit7(GlobalPointer + 0x10C6)

//VictoryRoadEast
VictoryRoadEast_AceTrainerMicah = bit5(GlobalPointer + 0x10DA)
VictoryRoadEast_AceTrainerBrandi = bit1(GlobalPointer + 0x10DB)
VictoryRoadEast_PsychicLandon = bit4(GlobalPointer + 0x10DB)
VictoryRoadEast_PsychicDesiree = bit7(GlobalPointer + 0x10DB)
VictoryRoadEast_PsychicLandon = bit7(GlobalPointer + 0x10DB)
VictoryRoadEast_BlackBeltEddie = bit6(GlobalPointer + 0x10E1)
VictoryRoadEast_VeteranTerrell = bit3(GlobalPointer + 0x10E8)
VictoryRoadEast_BirdKeeperAutumn = bit5(GlobalPointer + 0x10D8)
VictoryRoadEast_DragonTamerJoe = bit2(GlobalPointer + 0x10DA)
VictoryRoadEast_PsychicKendra = bit0(GlobalPointer + 0x10DC)
VictoryRoadEast_PsychicDeandre = bit5(GlobalPointer + 0x10DB)
VictoryRoadEast_BlackBeltWillie = bit7(GlobalPointer + 0x10E1)
VictoryRoadEast_VeteranBrenden = bit4(GlobalPointer + 0x10E8)
VictoryRoadEast_AceTrainerArthur = bit6(GlobalPointer + 0x10DA)
VictoryRoadEast_AceTrainerClarice = bit2(GlobalPointer + 0x10DB)

//Route224 0/8
Route224_AceTrainerRuben = bit2(GlobalPointer + 0x10CD)
Route224_VeteranArmando = bit2(GlobalPointer + 0x10D7)
Route224_BlackBeltCarl = bit1(GlobalPointer + 0x10D1)
Route224_RuinManiacLarry = bit1(GlobalPointer + 0x10D0)
Route224_AceTrainerJamie = bit6(GlobalPointer + 0x10CD)
Route224_DragonTamerHayden = bit5(GlobalPointer + 0x10CC)
Route225_AceTrainerDeanna = bit5(GlobalPointer + 0x10F1)

//Route225 8/9
Route225_BirdKeeperAudrey = bit2(GlobalPointer + 0x10EF)
Route225_PsychicDaisy = bit1(GlobalPointer + 0x10F3)
Route225_PKMNRangerAshlee = bit2(GlobalPointer + 0x10F4)
Route225_AceTrainerHeather = bit1(GlobalPointer + 0x1119)
Route225_PKMNRangerDwayne = bit1(GlobalPointer + 0x10F4)
Route225_AceTrainerRodolfo = bit3(GlobalPointer + 0x10F0)
Route225_AceTrainerQuinn = bit7(GlobalPointer + 0x10F0)
Route225_DragonTamerGeoffrey = bit5(GlobalPointer + 0x10EF)

//Route 226 6/6
Route226_AceTrainerGraham = bit0(GlobalPointer + 0x10F1)
Route226_DragonTamerStanley = bit0(GlobalPointer + 0x10F0)
Route226_BirdKeeperGeneva = bit3(GlobalPointer + 0x10EF)
Route226_SwimmerLydia = bit4(GlobalPointer + 0x10F5)
Route226_AceTrainerWyver = bit2(GlobalPointer + 0x1119)
Route226_SwimmerWade = bit0(GlobalPointer + 0x10F5)
//Route 227 5/5
Route227_AceTrainerSaul = bit4(GlobalPointer + 0x10F0)
Route227_PKMNRangerFelicia = bit3(GlobalPointer + 0x10F4)
Route227_BlackBeltGriffin = bit4(GlobalPointer + 0x10F3)
Route227_AceTrainerMikayla = bit0(GlobalPointer + 0x10F2)
Route227_AceTrainerSlythe = bit3(GlobalPointer + 0x1119)
//Route 228 0/9
Route228_BlackBeltDavon = bit3(GlobalPointer + 0x10F3)
Route228_AceTrainerMoira = bit6(GlobalPointer + 0x10F1)
Route228_PKMNRangerKrista = bit4(GlobalPointer + 0x10F4)
Route228_PKMNRangerKyler = bit7(GlobalPointer + 0x10F3)
Route228_AceTrainerMeagan = bit1(GlobalPointer + 0x10F2)
Route228_PsychicCorbin = bit7(GlobalPointer + 0x10F2)
Route228_AceTrainerShade = bit0(GlobalPointer + 0x1121)
Route228_DragonTamerKeegan = bit7(GlobalPointer + 0x10EF)
Route228_AceTrainerJose = bit5(GlobalPointer + 0x10F0)
//Route 229 4/5
Route229_AceTrainerFelix = bit6(GlobalPointer + 0x10F0)
Route229_AceTrainerDana = bit7(GlobalPointer + 0x10F1)
Route229_AceTrainerSandra = bit2(GlobalPointer + 0x10F2)
Route229_AceTrainerGene = bit1(GlobalPointer + 0x1121)
//Route 230 0/7
Route230_SwimmerKurt = bit6(GlobalPointer + 0x10F4)
Route230_SwimmerJoanna = bit1(GlobalPointer + 0x10F5)
Route230_SwimmerMallory = bit3(GlobalPointer + 0x10F5)
Route230_SwimmerGlenn = bit5(GlobalPointer + 0x10F4)
Route230_SwimmerSophia = bit2(GlobalPointer + 0x10F5)
Route230_SwimmerSam = bit7(GlobalPointer + 0x10F4)
Route230_AceTrainerLuna = bit6(GlobalPointer + 0x1119)
Route230_DragonTamerDarien = bit6(GlobalPointer + 0x10EF)
//StarkMountain 0/16
StarkMountain_PsychicSterling = bit0(GlobalPointer + 0x10F3)
StarkMountain_PsychicChelsey = bit2(GlobalPointer + 0x10F3)
StarkMountain_AceTrainerAbel = bit4(GlobalPointer + 0x10F1)
StarkMountain_AceTrainerMonique = bit6(GlobalPointer + 0x10F2)
StarkMountain_BlackBeltRay = bit5(GlobalPointer + 0x10F3)
StarkMountain_BirdKeeperKrystal = bit4(GlobalPointer + 0x10EF)
StarkMountain_AceTrainerKassandra = bit3(GlobalPointer + 0x10F2)
StarkMountain_AceTrainerKeenan = bit1(GlobalPointer + 0x10F1)
StarkMountain_AceTrainerStefan = bit2(GlobalPointer + 0x10F1)
StarkMountain_AceTrainerJasmin = bit4(GlobalPointer + 0x10F2)
StarkMountain_AceTrainerNatasha = bit5(GlobalPointer + 0x10F2)
StarkMountain_AceTrainerSkylar = bit3(GlobalPointer + 0x10F1)
StarkMountain_DragonTamerDrake = bit1(GlobalPointer + 0x10F0)
StarkMountain_BlackBeltJarrett = bit6(GlobalPointer + 0x10F3)
StarkMountain_DragonTamerKenny = bit2(GlobalPointer + 0x10F0)
StarkMountain_VeteranHarlan = bit6(GlobalPointer + 0x10F5)
//Item Flags
//Twinleaf Town, Route 201, Lake Verity 

//Tiny Mushroom - Hidden --bit 2 +106F 
//Potion - Overworld
//Odd Keystone - Hidden - Surf
//TM38 Fire Blast - Overworld


//Route 219 and 220 


//Route 221

//Route 202 and Jubilife City

//Canalave City & Route 218

//Stuff to check level cap lol
MusicID = word(0x1beb04)
GymLeaderFight = 0x45d
RivalFight = 0x0464
NormalFight = 0x045f
NormalWin = 0x0468
GymLeaderWin = 0x469
Elite4Fight = 0x0470
CynthiaFight = 0x0462
ChampionWin = 0x046a

OpponentTrainerID = dword(GlobalPointer + 0x476EC)
//Gym leaders IDS
Roark = 0x17d1ea59
Gardenia = 0xd65b501c
Fantina = 0xe1caefd9
Maylene = 0x727846e7
CrasherWake = 0x9fa42dd3
Byron = 0xda51bff2
Candice = 0x16f1481f
Volkner = 0x73bb36c2

SetMode = bit6(GlobalPointer + 0x78)
LevelCurrentPokemon = byte(GlobalPointer + 0x475EC)
IDCurrentPokemon = word(GlobalPointer + 0x475B8)
CurrentPokemon = dword(GlobalPointer + 0x4762C)
CurrentPartyMember = byte(GlobalPointer + 0x479A4)
TurnCounter = word(GlobalPointer + 0x449C8)
XCoordinate = word(0x1c5cce)
YCoordinate = word(0x1c5cd2)
ZCoordinate = word(0x1c5cd6)
LastItemUsedCurrent = word(GlobalPointer + 0x449a0)

//Temporal Items Quantity on battle ranges [offsets]
MedicineStart = 0x442BE
MedicineEnd = 0x44352
BerryStart = 0x4435E
BerryEnd = 0x4445A
BattleItemStart = 0x4449A
BattleItemEnd = 0x444CA

SecondRound = bit6(GlobalPointer + 0x101A)

function RangeCheckItem(Start, End){
    logic = always_false()
    for address in range(Start, End, 4){
        logic = logic || (word(GlobalPointer + address)) == (prev(word(GlobalPointer + address)) - 1) && OpponentTrainerID != 0 && IDCurrentPokemon <= 493 && IDCurrentPokemon != 0 
    }
    return logic
}

function NoItemUsedCheck(){   
    logic = always_false()
    logic = logic || RangeCheckItem(MedicineStart, MedicineEnd)
    logic = logic || RangeCheckItem(BattleItemStart, BattleItemEnd)
    logic = logic || RangeCheckItem(BerryStart, BerryEnd)
        
    return logic
}

function PointerCheck(){
    logic = 
    GlobalPointer != 0 &&
    GlobalPointer == prev(GlobalPointer)
    return logic
}

function Event(flag, mapID){
    logic = 
    PointerCheck() &&
    MapID == mapID &&
    prev(flag) == 0 &&
    flag == 1
    return logic
}
MasterBall = 0x01
CherishBall = 0x10
BlueFlute = 0x41
RedFlute = 0x43

//Remember, trainer ID is usable for pokemon league big cheevo, its 0 when not in battle

function GymChallenge(LevelCap, TrainerID, IDMap){
    return 
    PointerCheck() &&
    //Initial hit check for battle start [In set mode]
    once(
    MapID == IDMap &&
    MusicID == GymLeaderFight &&
    SetMode == 1 &&
    prev(OpponentTrainerID) == 0x00 && OpponentTrainerID == TrainerID
    ) &&
    //Reset if pokemon isnt the level cap, also check for ID
    never(IDCurrentPokemon <= 493 && LevelCurrentPokemon > LevelCap && LevelCurrentPokemon <= 100) &&
    //Reset if map id changes
    never(MapID != prev(MapID)) &&
    //Trigger when music is win
    trigger_when(prev(MusicID) != GymLeaderWin && MusicID == GymLeaderWin ) &&
    //Reset if used item
    never(NoItemUsedCheck()) &&
    never(prev(LastItemUsedCurrent) != LastItemUsedCurrent && LastItemUsedCurrent >= MasterBall && LastItemUsedCurrent <= CherishBall) &&
    never(prev(LastItemUsedCurrent) != LastItemUsedCurrent && LastItemUsedCurrent >= BlueFlute && LastItemUsedCurrent <= RedFlute)
}

function Elite4Challenge(type, round, LevelCap){
      return 
    //Initial hit check for battle start [In set mode]
    
    //First Elite 4
    PointerCheck() &&
    once(
    prev(MapID) == FirstElevator &&
    MapID == Elite4Aaron &&
    SetMode == 1) &&
    //Second Elite 4
    trigger_when(once(
    prev(MapID) == SecondElevator &&
    MapID == Elite4Bertha &&
    SetMode == 1))
    //Third Elite 4
    &&
    trigger_when(once(
    prev(MapID) == ThirdElevator &&
    MapID == Elite4Flint &&
    SetMode == 1))
    //Fourth Elite 4
    &&
    trigger_when(once(
    prev(MapID) == FourthElevator &&
    MapID == Elite4Lucian &&
    SetMode == 1))
    &&
    //Cynthia Champion
    trigger_when(once(
    prev(MapID) == FifthElevator &&
    MapID == Elite4Cynthia &&
    SetMode == 1))
    
    &&
    //Reset if player changes the mode to switch from set mode
    never(prev(SetMode) == 1 && SetMode == 0) &&
    //Reset if pokemon isnt the level cap, also check for ID
    never(OpponentTrainerID != 0 && IDCurrentPokemon <= 493 && LevelCurrentPokemon > LevelCap && LevelCurrentPokemon <= 100) &&
    
    
    //Reset if used item
    never(NoItemUsedCheck()) &&
    never(OpponentTrainerID != 0 && prev(LastItemUsedCurrent) != LastItemUsedCurrent && LastItemUsedCurrent >= MasterBall && LastItemUsedCurrent <= CherishBall) &&
    never(OpponentTrainerID != 0 && prev(LastItemUsedCurrent) != LastItemUsedCurrent && LastItemUsedCurrent >= BlueFlute && LastItemUsedCurrent <= RedFlute)
    &&
    //Reset if map id isnt any of the elite 4 ones
    never(MapID < FirstElevator || MapID > Elite4WinRoom) &&
    //Trigger when room id is win
    trigger_when(prev(MapID) == Elite4Cynthia && MapID == Elite4WinRoom) &&
    SecondRound == round-1
}

function Elite4ChallengeTyped(Type, round, LevelCap){
      return 
    //Initial hit check for battle start [In set mode]
    
    //First Elite 4
    PointerCheck() &&
    once(
    prev(MapID) == FirstElevator &&
    MapID == Elite4Aaron &&
    SetMode == 1) &&
    //Second Elite 4
    trigger_when(once(
    prev(MapID) == SecondElevator &&
    MapID == Elite4Bertha &&
    SetMode == 1))
    //Third Elite 4
    &&
    trigger_when(once(
    prev(MapID) == ThirdElevator &&
    MapID == Elite4Flint &&
    SetMode == 1))
    //Fourth Elite 4
    &&
    trigger_when(once(
    prev(MapID) == FourthElevator &&
    MapID == Elite4Lucian &&
    SetMode == 1))
    &&
    //Cynthia Champion
    trigger_when(once(
    prev(MapID) == FifthElevator &&
    MapID == Elite4Cynthia &&
    SetMode == 1))
    
    &&
    //Reset if player changes the mode to switch from set mode
    never(prev(SetMode) == 1 && SetMode == 0) &&
    //Reset if pokemon isnt the level cap, also check for ID
    never(OpponentTrainerID != 0 && IDCurrentPokemon <= 493 && LevelCurrentPokemon > LevelCap && LevelCurrentPokemon <= 100) &&
    //Reset if not the type
    never(OpponentTrainerID != 0 && IDCurrentPokemon > 0 && PokemonFirstType != Type && PokemonSecondType != Type && PokemonFirstType <= Dark && PokemonSecondType <= Dark) &&
    //Reset if used item
    never(NoItemUsedCheck()) &&
    never(OpponentTrainerID != 0 && prev(LastItemUsedCurrent) != LastItemUsedCurrent && LastItemUsedCurrent >= MasterBall && LastItemUsedCurrent <= CherishBall) &&
    never(OpponentTrainerID != 0 && prev(LastItemUsedCurrent) != LastItemUsedCurrent && LastItemUsedCurrent >= BlueFlute && LastItemUsedCurrent <= RedFlute)
    &&
    //Reset if map id isnt any of the elite 4 ones
    never(MapID < FirstElevator || MapID > Elite4WinRoom) &&
    //Trigger when room id is win
    trigger_when(prev(MapID) == Elite4Cynthia && MapID == Elite4WinRoom) &&
    SecondRound == round-1
}

PokemonFirstType = byte(GlobalPointer + 0x475DC)
PokemonSecondType = byte(GlobalPointer + 0x475DD)
Normal = 0x00
Fighting = 0x01 
Flying = 0x02 
Poison = 0x03  
Ground = 0x04  
Rock = 0x05
Bug = 0x06  
Ghost = 0x07 
Steel =  0x08  
Fairy = 0x09 
Fire = 0x0a  
Water = 0x0b 
Grass = 0x0c  
Electric = 0x0d  
Psychic = 0x0e  
Ice = 0x0f  
Dragon = 0x10 
Dark = 0x11  




Battleground = 0x01c6
RoarkRematch = 0x208dd0bf
GardeniaRematch = 0x9a52783f
FantinaRematch = 0xa87b3bb9
MayleneRematch = 0xb0cab446
WakeRematch = 0x0d0241f2
ByronRematch = 0x5d9f42b7
CandiceRematch = 0x5cc70160
VolknerRematch = 0x26cd66ad
CherylRematch = 0x5d09e2b6
MiraRematch = 0xa3e53aa4
RileyRematch = 0xa25b2438
MarleyRematch = 0x4c20997b
BuckRematch = 0xaf65796c
BarryRematch = 0x8be26318
LucasRematch = 0x761ca284

function RematchChallenge(LevelCap, TrainerID, Type, MusicIDStart, MusicIDWin){
    return 
    PointerCheck() &&
    //Initial hit check for battle start [In set mode]
    once(
    MapID == Battleground &&
    MusicID ==  MusicIDStart &&
    SetMode == 1 &&
    prev(OpponentTrainerID) == 0x00 && OpponentTrainerID == TrainerID) &&
    //Reset if pokemon isnt the level cap, also check for ID and type
    never(IDCurrentPokemon <= 493 && LevelCurrentPokemon > LevelCap && LevelCurrentPokemon <= 100)
    && never(PokemonFirstType != Type && PokemonSecondType != Type && PokemonFirstType <= Dark && PokemonSecondType <= Dark) &&
    
    //Reset if map id changes
    never(MapID != prev(MapID)) &&
    //Trigger when music is win
    trigger_when(prev(MusicID) != MusicIDWin && MusicID == MusicIDWin) &&
    //Reset if used item
    never(NoItemUsedCheck()) &&
    never(prev(LastItemUsedCurrent) != LastItemUsedCurrent && LastItemUsedCurrent >= MasterBall && LastItemUsedCurrent <= CherishBall) &&
    never(prev(LastItemUsedCurrent) != LastItemUsedCurrent && LastItemUsedCurrent >= BlueFlute && LastItemUsedCurrent <= RedFlute)
}


StartPokedexOffset = 0x1340
EnemyPokemonID = word(GlobalPointer + 0x047678)


function CatchedPokemon(pokemonID){
    logic = always_true()
    StartTemp = StartPokedexOffset
    PokemonAddress = 0
    Count = 0 
    AddOne = 0
    for number in range(0, pokemonID-1){            
        if(number == pokemonID-1){
            if((Count) == 0){
                PokemonAddress =  bit0(GlobalPointer + StartTemp)
            }
            if((Count) == 1){
                PokemonAddress =  bit1(GlobalPointer + StartTemp)
            }
            if((Count) == 2){
                PokemonAddress =  bit2(GlobalPointer + StartTemp)
            }
            if((Count) == 3){
               PokemonAddress =  bit3(GlobalPointer + StartTemp)
            }
            if((Count) == 4){
               PokemonAddress =  bit4(GlobalPointer + StartTemp)
            }
            if((Count) == 5){
               PokemonAddress =  bit5(GlobalPointer + StartTemp)
            }
            if((Count) == 6){
               PokemonAddress =  bit6(GlobalPointer + StartTemp)
            }
            if((Count) == 7){
               PokemonAddress =  bit7(GlobalPointer + StartTemp)
            }
         }
         Count = Count + 1
         if(Count == 8){
            Count = 0
            StartTemp = StartTemp + 0x01
         }

    }
    return 
    PointerCheck() &&
    MapID == prev(MapID) &&
    prev(PokemonAddress) == 0 &&
    PokemonAddress == 1 && 
    LastItemUsedCurrent != MasterBall && prev(LastItemUsedCurrent) != MasterBall
     
    
}

//Progression aka Medals
GymMedals = {
    1: {"title": "Coal It a Day", "description": "Obtain the Coal Badge by defeating Roark", "medal": FirstBadge, "mapID": FirstGym},
    2: {"title": "Lush Forest", "description": "Get the Forest Badge by defeating Gardenia", "medal": SecondBadge, "mapID": SecondGym},
    3: {"title": "Platinum Relic", "description": "Get the Relic Badge by defeating Fantina", "medal": ThirdBadge, "mapID": ThirdGym},
    4: {"title": "Lumps of Cobble", "description": "Get the Cobble Badge by defeating Maylene", "medal": FourthBadge, "mapID": FourthGym},
    5: {"title": "Marshy Fen", "description": "Get the Fen Badge by defeating Crasher Wake", "medal": FifthBadge, "mapID": FifthGym},
    6: {"title": "Back to the Mines", "description": "Get the Mine Badge by defeating Byron", "medal": SixthBadge, "mapID": SixthGym},
    7: {"title": "Frosty Icicles", "description": "Get the Icicle Badge by defeating Candice", "medal": SeventhBadge, "mapID": SeventhGym},
    8: {"title": "Beacon in Sight", "description": "Get the Beacon Badge by defeating Volkner", "medal": EightBadge, "mapID": EightGym},
}

for Gym in GymMedals{
    achievement(
        title = GymMedals[Gym]["title"],
        description = GymMedals[Gym]["description"],
        points = 10,
        trigger = Event(GymMedals[Gym]["medal"], GymMedals[Gym]["mapID"])
    )
}

//Challenges for each gym
GymChallenges = {
    1: {"title": "The Strongest Ore [m]", "description": "Roark", "LevelCap": 16, "TrainerID": Roark,"mapID": FirstGym},
    2: {"title": "Burning the Garden [m]", "description": "Gardenia", "LevelCap": 26, "TrainerID": Gardenia,"mapID": SecondGym},
    3: {"title": "No Scares from Phantoms [m]", "description": "Fantina", "LevelCap": 33, "TrainerID": Fantina,"mapID": ThirdGym},
    4: {"title": "Black Belt [m]", "description": "Maylene", "LevelCap": 39, "TrainerID": Maylene,"mapID": FourthGym},
    5: {"title": "Crashing Waves [m]", "description": "Crasher Wake", "LevelCap": 44, "TrainerID": CrasherWake,"mapID": FifthGym},
    6: {"title": "Netherite Pickaxe [m]", "description": "Byron", "LevelCap": 53, "TrainerID": Byron,"mapID": SixthGym},
    7: {"title": "Candice Who? [m]", "description": "Candice", "LevelCap": 56, "TrainerID": Candice,"mapID": SeventhGym},
    8: {"title": "Do You Know Thunderbolt? [m]", "description": "Volkner", "LevelCap": 62, "TrainerID": Volkner,"mapID": EightGym},
}

for Gym in GymChallenges{
    achievement(
    title = GymChallenges[Gym]["title"],
    description = "Defeat " + GymChallenges[Gym]["description"] + " on Set Mode without using items in battle [Level Cap <= " + GymChallenges[Gym]["LevelCap"] + "]",
    points = 10,

    trigger = GymChallenge(GymChallenges[Gym]["LevelCap"], GymChallenges[Gym]["TrainerID"], GymChallenges[Gym]["mapID"])
    )
}

LaprasGift = bit0(GlobalPointer + 0x1116)
IDLapras = 0x0082
PorygonGift = bit7(GlobalPointer + 0x113E)
IDPorygon = 0x004b
FossilsGift = bit5(GlobalPointer + 0x1114)
IDFossils = 0x0054

//Misc event flags cheevos
Events = {
    1: {"title": "RGB Palette", "description": "Obtain all three Kanto starters", "points": 2, "flag": KantoStarters, "mapID": PokemonCenterJubilife},
    2: {"title": "Back to your Roots", "description": "Obtain all three Hoenn starters", "points": 2, "flag": HoennStarters, "mapID": PokemonCenterOreburgh},
    3: {"title": "New Sprouts", "description": "Obtain all three Sinnoh starters", "points": 1, "flag": SinnohStarters, "mapID": Lab},
    4: {"title": "Uneven Genes", "description": "Obtain an Eevee from your Mother", "points": 1, "flag": EeveeEvent, "mapID": YourHouseMain},
    5: {"title": "This Is Were Babies Come From", "description": "Obtain an egg in Jubilife City", "points": 1, "flag": EggGift, "mapID": TrainerSchool},
    6: {"title": "Champion's Favorite", "description": "Obtain a Beldum from Steven", "points": 1, "flag": BeldumGift, "mapID": StevenHouse},
    7: {"title": "Souls and Hearts", "description": "Obtain all three Johto starters", "points": 2, "flag": JohtoStarters, "mapID": PokemonCenterFloaroma},
    8: {"title": "Marine Reptilian", "description": "Obtain a Lapras from an old lady", "points": 2, "flag": LaprasGift, "mapID": IDLapras},
    9: {"title": "Porygon Did Nothing Wrong", "description": "Obtain a Porygon in the Eterna Galactic Building", "points": 2, "flag": PorygonGift, "mapID": IDPorygon},
    10: {"title": "Prehistoric Treasures", "description": "Obtain a bunch of fossils in the Underground Man's house", "points": 2, "flag": FossilsGift , "mapID": IDFossils},
}

for Event in Events{
    achievement(
    title = Events[Event]["title"],
    description = Events[Event]["description"],
    points = Events[Event]["points"],

    trigger = Event(Events[Event]["flag"], Events[Event]["mapID"])
    )
}

achievement(
    title = "Menacing Piano",
    description = "Defeat Cynthia and become the Pokemon League Champion",
    points = 25,

    trigger = PointerCheck() && prev(MapID) == Elite4Cynthia && MapID == Elite4WinRoom
    )

achievement(
    title = "Fear the Garchomp [m]",
    description = "Defeat the Elite 4 and Cynthia on Set Mode without using items in battle [Level Cap <= 78, Single Session, Round One]",
    points = 25,

    trigger = Elite4Challenge("Any", 1, 78)
    )


LegendaryCatches = {
    1: {"title": "Draconic Antimatter [m]", "description": "Catch Giratina in the Distortion World/Turnback Cave [No Masterball]", "points": 5, "pokemonID": 487},
}

for Pokemon in LegendaryCatches{
    achievement(
    title = LegendaryCatches[Pokemon]["title"],
    description = LegendaryCatches[Pokemon]["description"],
    points = LegendaryCatches[Pokemon]["points"],

    trigger = CatchedPokemon(LegendaryCatches[Pokemon]["pokemonID"])
    )
}

Rematches = {
    1: {"title": "Rocking Out", "description": "Defeat Roark in a rematch using only Rock-Type Pokemon [Set Mode, No Items in battle, Level Cap <= 82]", "points": 25,
    "LevelCap": 82, "Type": Rock, "MusicIDStart": GymLeaderFight, "MusicIDWin": GymLeaderWin, "TrainerID": RoarkRematch},
    
    2: {"title": "That Grass Looks Greeneer", "description": "Defeat Gardenia in a rematch using only Grass-Type Pokemon [Set Mode, No Items in battle, Level Cap <= 82]", "points": 25,
    "LevelCap": 82, "Type": Grass, "MusicIDStart": GymLeaderFight, "MusicIDWin": GymLeaderWin, "TrainerID": GardeniaRematch},
    
    3: {"title": "Ghost and Ghouls", "description": "Defeat Fantina in a rematch using only Ghost-Type Pokemon [Set Mode, No Items in battle, Level Cap <= 82]", "points": 25,
    "LevelCap": 82, "Type": Ghost, "MusicIDStart": GymLeaderFight, "MusicIDWin": GymLeaderWin, "TrainerID": FantinaRematch},
    
    4: {"title": "Fighting to the Death", "description": "Defeat Maylene in a rematch using only Fighting-Type Pokemon [Set Mode, No Items in battle, Level Cap <= 82]", "points": 25,
    "LevelCap": 82, "Type": Fighting, "MusicIDStart": GymLeaderFight, "MusicIDWin": GymLeaderWin, "TrainerID": MayleneRematch},
    
    5: {"title": "Water is Life", "description": "Defeat Wake in a rematch using only Water-Type Pokemon [Set Mode, No Items in battle, Level Cap <= 82]", "points": 25,
    "LevelCap": 82, "Type": Water, "MusicIDStart": GymLeaderFight, "MusicIDWin": GymLeaderWin, "TrainerID": WakeRematch},
    
    6: {"title": "Made of Steel", "description": "Defeat Byron in a rematch using only Steel-Type Pokemon [Set Mode, No Items in battle, Level Cap <= 82]", "points": 25,
    "LevelCap": 82, "Type": Steel, "MusicIDStart": GymLeaderFight, "MusicIDWin": GymLeaderWin, "TrainerID": ByronRematch},
    
    7: {"title": "Iced Out", "description": "Defeat Candice in a rematch using only Ice-Type Pokemon [Set Mode, No Items in battle, Level Cap <= 82]", "points": 25,
    "LevelCap": 82, "Type": Ice, "MusicIDStart": GymLeaderFight, "MusicIDWin": GymLeaderWin, "TrainerID": CandiceRematch},
    
    8: {"title": "Electric Sensation", "description": "Defeat Volkner in a rematch using only Electric-Type Pokemon [Set Mode, No Items in battle, Level Cap <= 82]", "points": 25,
    "LevelCap": 82, "Type": Electric, "MusicIDStart": GymLeaderFight, "MusicIDWin": GymLeaderWin, "TrainerID": VolknerRematch},
    
    9: {"title": "Totally Normal", "description": "Defeat Cheryl in a rematch using only Normal-Type Pokemon [Set Mode, No Items in battle, Level Cap <= 82]", "points": 25,
    "LevelCap": 82, "Type": Normal, "MusicIDStart": NormalFight, "MusicIDWin": NormalWin, "TrainerID": CherylRematch},
    
    10: {"title": "Poisonous Relationship", "description": "Defeat Mira in a rematch using only Poison-Type Pokemon [Set Mode, No Items in battle, Level Cap <= 82]", "points": 25,
    "LevelCap": 82, "Type": Poison, "MusicIDStart": NormalFight, "MusicIDWin": NormalWin, "TrainerID": MiraRematch},
    
    11: {"title": "Sky Flight", "description": "Defeat Riley in a rematch using only Flying-Type Pokemon [Set Mode, No Items in battle, Level Cap <= 82]", "points": 25,
    "LevelCap": 82, "Type": Flying, "MusicIDStart": NormalFight, "MusicIDWin": NormalWin, "TrainerID": RileyRematch},
    
    12: {"title": "Edgy and Dark", "description": "Defeat Marley in a rematch using only Dark-Type Pokemon [Set Mode, No Items in battle, Level Cap <= 82]", "points": 25,
    "LevelCap": 82, "Type": Dark, "MusicIDStart": NormalFight, "MusicIDWin": NormalWin, "TrainerID": MarleyRematch},
    
    13: {"title": "Charizard Is Now a Dragon", "description": "Defeat Buck in a rematch using only Dragon-Type Pokemon [Set Mode, No Items in battle, Level Cap <= 82]", "points": 25,
    "LevelCap": 82, "Type": Dragon, "MusicIDStart": NormalFight, "MusicIDWin": NormalWin, "TrainerID": BuckRematch},
}

for Rematch in Rematches{
    achievement(
    title = Rematches[Rematch]["title"],
    description = Rematches[Rematch]["description"],
    points = 25,

    trigger = RematchChallenge(Rematches[Rematch]["LevelCap"],Rematches[Rematch]["TrainerID"], Rematches[Rematch]["Type"], Rematches[Rematch]["MusicIDStart"], Rematches[Rematch]["MusicIDWin"])
    )
}


TurtwigID = 387

VenosaurID = 3
CharizardID = 6
BlastoiseID = 9
MeganiumID = 154
TyphlosionID = 157
FeraligatrID = 160
SceptileID = 254
BlazikenID = 257
SwampertID = 260
TorterraID = 389
InfernapeID = 392
EmpoleonID = 395

RoarkMarathon = 0x208dd0bf
//Special cases
achievement(
    title = "Hisui Region",
    description = "Defeat Lucas/Dawn in a rematch using only Sinnoh Pokemon [Set Mode, No Items in battle, Level Cap <= 84]",
    points = 25,
    trigger = PointerCheck() &&
    //Initial hit check for battle start [In set mode]
    once(
    MapID == Battleground &&
    MusicID ==  NormalFight &&
    SetMode == 1 &&
    prev(OpponentTrainerID) == 0x00 && OpponentTrainerID == LucasRematch) &&
    //Reset if pokemon isnt the level cap, also check for ID and type
    never(IDCurrentPokemon <= 493 && LevelCurrentPokemon > 84 && LevelCurrentPokemon <= 100)
    &&
    never(IDCurrentPokemon <= 493 && IDCurrentPokemon < TurtwigID) &&
    //Reset if map id changes
    never(MapID != prev(MapID)) &&
    //Trigger when music is win
    trigger_when(prev(MusicID) != NormalWin && MusicID == NormalWin) &&
    //Reset if used item
    never(NoItemUsedCheck()) &&
    never(prev(LastItemUsedCurrent) != LastItemUsedCurrent && LastItemUsedCurrent >= MasterBall && LastItemUsedCurrent <= CherishBall) &&
    never(prev(LastItemUsedCurrent) != LastItemUsedCurrent && LastItemUsedCurrent >= BlueFlute && LastItemUsedCurrent <= RedFlute)
)

achievement(
    title = "Adventure Companions",
    description = "Defeat Barry in a rematch using only Fully Evolved Initial Pokemon [Set Mode, No Items in battle, Level Cap <= 85]",
    points = 25,
    trigger = PointerCheck() &&
    //Initial hit check for battle start [In set mode]
    once(
    MapID == Battleground &&
    MusicID ==  RivalFight &&
    SetMode == 1 &&
    prev(OpponentTrainerID) == 0x00 && OpponentTrainerID == BarryRematch) &&
    //Reset if pokemon isnt the level cap, also check for ID and type
    never(IDCurrentPokemon <= 493 && LevelCurrentPokemon > 85 && LevelCurrentPokemon <= 100)
    &&
    never(
    IDCurrentPokemon != VenosaurID && 
    IDCurrentPokemon != CharizardID && 
    IDCurrentPokemon != BlastoiseID && 
    IDCurrentPokemon != MeganiumID && 
    IDCurrentPokemon != TyphlosionID &&
    IDCurrentPokemon != FeraligatrID && 
    IDCurrentPokemon != SceptileID && 
    IDCurrentPokemon != BlazikenID && 
    IDCurrentPokemon != SwampertID && 
    IDCurrentPokemon != TorterraID && 
    IDCurrentPokemon != InfernapeID && 
    IDCurrentPokemon != EmpoleonID  
    ) &&
    //Reset if map id changes
    never(MapID != prev(MapID)) &&
    //Trigger when music is win
    trigger_when(prev(MusicID) != NormalWin && MusicID == NormalWin) &&
    //Reset if used item
    never(NoItemUsedCheck()) &&
    never(prev(LastItemUsedCurrent) != LastItemUsedCurrent && LastItemUsedCurrent >= MasterBall && LastItemUsedCurrent <= CherishBall) &&
    never(prev(LastItemUsedCurrent) != LastItemUsedCurrent && LastItemUsedCurrent >= BlueFlute && LastItemUsedCurrent <= RedFlute)
)


achievement(
    title = "Endurance Run",
    description = "Complete the 24-Battle Marathon",
    points = 25,
    trigger = PointerCheck() &&
    MapID == Battleground &&
    prev(MusicID) != ChampionWin && MusicID == ChampionWin
)

achievement(
    title = "The True Renegade",
    description = "Complete the 24-Battle Marathon [Set Mode, No Items in battle, Level Cap <= 89]",
    points = 100,
    trigger = PointerCheck() &&
    //Initial hit check for battle start [In set mode]
    once(
    MapID == Battleground &&
    MusicID ==  GymLeaderFight &&
    SetMode == 1 &&
    prev(OpponentTrainerID) == 0x00 && OpponentTrainerID == RoarkMarathon) &&
    //Reset if pokemon isnt the level cap, also check for ID and type
    never(IDCurrentPokemon <= 493 && LevelCurrentPokemon > 89 && LevelCurrentPokemon <= 100) &&
    //Reset if not in range for battle marathon
    never(ZCoordinate != 0 && ZCoordinate > 0x43) &&
    never(XCoordinate != 0 && (XCoordinate < 0x06 || XCoordinate > 0x07)) &&
    //Reset if map id changes
    never(MapID != prev(MapID)) &&
    //Reset if player changes the mode to switch from set mode
    never(prev(SetMode) == 1 && SetMode == 0) &&
    //Trigger when music is win
    trigger_when(prev(MusicID) != ChampionWin && MusicID == ChampionWin) &&
    //Reset if used item
    never(NoItemUsedCheck()) &&
    never(OpponentTrainerID != 0 && prev(LastItemUsedCurrent) != LastItemUsedCurrent && LastItemUsedCurrent >= MasterBall && LastItemUsedCurrent <= CherishBall) &&
    never(OpponentTrainerID != 0 && prev(LastItemUsedCurrent) != LastItemUsedCurrent && LastItemUsedCurrent >= BlueFlute && LastItemUsedCurrent <= RedFlute)
    
    )
    
Elite4Typed = {
1: {"title": "Don't Bug Me", "description": "Defeat the Elite 4 and Cynthia using only Bug-Type Pokemon [Set Mode, No Items in battle, One Session, Level Cap <= 89, Round Two]", "type": Bug},
2: {"title": "Feet on the Ground", "description": "Defeat the Elite 4 and Cynthia using only Ground-Type Pokemon [Set Mode, No Items in battle, One Session, Level Cap <= 89, Round Two]", "type": Ground},
3: {"title": "That's Fire, Bro", "description": "Defeat the Elite 4 and Cynthia using only Fire-Type Pokemon [Set Mode, No Items in battle, One Session, Level Cap <= 89, Round Two]","type": Fire},
4: {"title": "Mob Psychic 100", "description": "Defeat the Elite 4 and Cynthia using only Psychic-Type Pokemon [Set Mode, No Items in battle, One Session, Level Cap <= 89, Round Two]",  "type": Psychic},
5: {"title": "Fairy Dust", "description": "Defeat the Elite 4 and Cynthia using only Fairy-Type Pokemon [Set Mode, No Items in battle, One Session, Level Cap <= 89, Round Two]",  "type": Fairy},
}

achievement(
    title = "Now Featuring: Rayquaza",
    description = "Defeat the Elite 4 and Cynthia on Set Mode without using items in battle [Level Cap <= 89, Single Session, Round Two]",
    points = 25,

    trigger = Elite4Challenge("Any", 2, 89)
    )


for challenge in Elite4Typed{
    achievement(
    title = Elite4Typed[challenge]["title"],
    description = Elite4Typed[challenge]["description"],
    points = 25, 
    trigger = Elite4ChallengeTyped(Elite4Typed[challenge]["type"], 2, 89)
    )
}

ArticunoID = 144
ZapdosID = 145
MoltresID = 146
RaikouID = 243
EnteiID = 244
SuicuneID = 245
RegirockID = 377
RegiceID = 378
RegisteelID = 379
LatiasID = 380
LatiosID = 381
UxieID = 480
MespritID = 481
AzelfID = 482
HeatranID = 485
RegigigasID = 486
CresseliaID = 488
MewtwoID = 150
LugiaID = 249
HoohID = 250
KyogreID = 382
GroudonID = 383
RayquazaID = 384
DialgaID = 483
PalkiaID = 484
GiratinaID = 487
MewID = 151
CelebiID = 251
JirachiID = 385
DeoxysID = 386
PhioneID = 489
ManaphyID = 490
DarkraiID = 491
ShayminID = 492
ArceusID = 493

achievement(
    title = "Bring Your Legendary to Work Day",
    description = "Defeat the Elite 4 and Cynthia using only Legendaries [Set Mode, No Items in battle, One Session, Level Cap <= 89, Round Two]",
    points = 25,

    trigger =  PointerCheck() &&
    once(
    prev(MapID) == FirstElevator &&
    MapID == Elite4Aaron &&
    SetMode == 1) &&
    //Second Elite 4
    trigger_when(once(
    prev(MapID) == SecondElevator &&
    MapID == Elite4Bertha &&
    SetMode == 1))
    //Third Elite 4
    &&
    trigger_when(once(
    prev(MapID) == ThirdElevator &&
    MapID == Elite4Flint &&
    SetMode == 1))
    //Fourth Elite 4
    &&
    trigger_when(once(
    prev(MapID) == FourthElevator &&
    MapID == Elite4Lucian &&
    SetMode == 1))
    &&
    //Cynthia Champion
    trigger_when(once(
    prev(MapID) == FifthElevator &&
    MapID == Elite4Cynthia &&
    SetMode == 1))
    
    &&
    //Reset if player changes the mode to switch from set mode
    never(prev(SetMode) == 1 && SetMode == 0) &&
    //Reset if pokemon isnt the level cap, also check for ID
    never(OpponentTrainerID != 0 && IDCurrentPokemon <= 493 && LevelCurrentPokemon > 89 && LevelCurrentPokemon <= 100) &&
    //Reset if not legendary
    never(
    OpponentTrainerID != 0 &&
    IDCurrentPokemon <= 493 &&
    IDCurrentPokemon != 0 &&
    
    IDCurrentPokemon != ZapdosID && 
    IDCurrentPokemon != MoltresID && 
    IDCurrentPokemon != ArticunoID && 
    IDCurrentPokemon != RaikouID && 
    IDCurrentPokemon != EnteiID &&
    IDCurrentPokemon != SuicuneID && 
    IDCurrentPokemon != RegirockID && 
    IDCurrentPokemon != RegiceID && 
    IDCurrentPokemon != RegisteelID && 
    IDCurrentPokemon != LatiasID && 
    IDCurrentPokemon != LatiosID && 
    IDCurrentPokemon != UxieID &&
    IDCurrentPokemon != MespritID &&
    IDCurrentPokemon != AzelfID &&
    IDCurrentPokemon != HeatranID &&
    IDCurrentPokemon != RegigigasID &&
    IDCurrentPokemon != CresseliaID &&
    IDCurrentPokemon != MewtwoID &&
    IDCurrentPokemon != LugiaID &&
    IDCurrentPokemon != HoohID &&
    IDCurrentPokemon != KyogreID &&
    IDCurrentPokemon != GroudonID &&
    IDCurrentPokemon != RayquazaID &&
    IDCurrentPokemon != DialgaID &&
    IDCurrentPokemon != PalkiaID &&
    IDCurrentPokemon != GiratinaID &&
    IDCurrentPokemon != MewID &&
    IDCurrentPokemon != CelebiID &&
    IDCurrentPokemon != JirachiID &&
    IDCurrentPokemon != DeoxysID &&
    IDCurrentPokemon != PhioneID &&
    IDCurrentPokemon != ManaphyID &&
    IDCurrentPokemon != DarkraiID &&
    IDCurrentPokemon != ShayminID &&
    IDCurrentPokemon != ArceusID
    ) &&
    
    //Reset if used item
    never(NoItemUsedCheck()) &&
    never(OpponentTrainerID != 0 && prev(LastItemUsedCurrent) != LastItemUsedCurrent && LastItemUsedCurrent >= MasterBall && LastItemUsedCurrent <= CherishBall) &&
    never(OpponentTrainerID != 0 && prev(LastItemUsedCurrent) != LastItemUsedCurrent && LastItemUsedCurrent >= BlueFlute && LastItemUsedCurrent <= RedFlute)
    &&
    //Reset if map id isnt any of the elite 4 ones
    never(MapID < FirstElevator || MapID > Elite4WinRoom) &&
    //Trigger when room id is win
    trigger_when(prev(MapID) == Elite4Cynthia && MapID == Elite4WinRoom) &&
    SecondRound == 1
    )