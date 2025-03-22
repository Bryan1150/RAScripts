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
//Oreburgh Gate 3/3 Normal Matches - 0/1 Master Trainer
OreburghGate_CamperCurtis = bit1(GlobalPointer + 0x0010cb) //Camper Curtis +0x0010cb --bit1
OreburghGate_PicnickerDiana = bit1(GlobalPointer + 0x0010d3) //Picnicker Diana +0x0010d3 --bit1
OreburghGate_Veteran = bit0(GlobalPointer + 0x10C8)


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
Route205South_PicnickerKarina = bit0(GlobalPointer + 0x10E3)
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
//Route 208 7/7 
Route208_HikerJonathan = bit1(GlobalPointer + 0x10AF)
Route208_BlackBeltKyle = bit2(GlobalPointer + 0x10AF)
Route208_HikerRobert = bit7(GlobalPointer + 0x10AE)
Route208_HikerAlexander = bit0(GlobalPointer + 0x10AF)
Route208_AromaLadyHannah = bit4(GlobalPointer + 0x10AF)
Route208_ArtistWilliam = bit5(GlobalPointer + 0x10AF)
Route208_Fisherman = bit3(GlobalPointer + 0x10AF)
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
//Route 210 North 13/13
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
//Route 220 7/7
Route220_SwimmerJessica = bit2(GlobalPointer + 0x10BE)
Route220_SwimmerErica = bit3(GlobalPointer + 0x10BE)
Route220_SwimmerAdrian = bit7(GlobalPointer + 0x10BD)
Route220_SwimmerVincent = bit1(GlobalPointer + 0x10BE)
Route220_SwimmerClaire = bit6(GlobalPointer + 0x10E7)
Route220_SwimmerErik = bit0(GlobalPointer + 0x10BE)
Route220_SwimmerKatelyn = bit4(GlobalPointer + 0x10BE)
//Route 221 6/6
Route221_SwimmerDillon = bit6(GlobalPointer + 0x10BE)
Route221_SwimmerVanessa = bit7(GlobalPointer + 0x10BE)
Route221_FishermanCory = bit0(GlobalPointer + 0x10BF)
Route221_CollectorIvan = bit2(GlobalPointer + 0x10CC)
Route221_AceTrainerShannon = bit3(GlobalPointer + 0x10BF)
Route221_AceTrainerJake = bit2(GlobalPointer + 0x10BF)
//Iron Island 12/12
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

//Route 223 11/13
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

//Victory Road 14/14
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

//Route224 7/8
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
//Route 228 9/9
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
//Route 230 7/7
Route230_SwimmerKurt = bit6(GlobalPointer + 0x10F4)
Route230_SwimmerJoanna = bit1(GlobalPointer + 0x10F5)
Route230_SwimmerMallory = bit3(GlobalPointer + 0x10F5)
Route230_SwimmerGlenn = bit5(GlobalPointer + 0x10F4)
Route230_SwimmerSophia = bit2(GlobalPointer + 0x10F5)
Route230_SwimmerSam = bit7(GlobalPointer + 0x10F4)
Route230_AceTrainerLuna = bit6(GlobalPointer + 0x1119)
Route230_DragonTamerDarien = bit6(GlobalPointer + 0x10EF)
//StarkMountain 16/16
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


Trainers = [
    //Route 202 - 3/3 Normal Matches - 0/3 Rematches - 0/1 Master Trainer
Route202_LassNatalie, //Lass Natalie +10AA --Bit 3
Route202_YoungsterTristan,//Youngster Tristan +10AA --Bit 1
Route202_YoungsterLogan , //YoungsterLogan +10AA --Bit 2
//Trainer School - 2/2 Normal Matches
TrainerSchool_SchoolkidHarrison, //Schoolkid Harrison 0x1021 --bit 4
TrainerSchool_SchoolkidChristine, //Schoolkid Christine 0x1021 --bit 5
//Route 204 ~ South - 3/3 Normal Matches - 0/3 Rematches
Route204_LassSarah , //Lass Sarah +10AB --Bit 4
Route204_LassSamantha,// Lass Samantha +10AB --Bit 3
Route204_YoungsterTyler,//Youngster Tyler +10AB --Bit 2
//Route 203 5/5 Normal Matches
Route203_YoungsterDallas, //Youngster Dallas +0x10d6 --Bit 3
Route203_YoungsterSebastian, //Youngster Sebastian +0x10d6 --Bit 4
Route203_LassMadeline, //Lass Madeline +0x10d2 --Bit 2
Route203_LassKaitlin, //Lass Kaitlin +0x10d2 --Bit 3
Route203_YoungsterMichael, //Youngster Michael --Bit 4 +0x10aa
//Oreburgh Gate 3/3 Normal Matches - 0/1 Master Trainer
OreburghGate_CamperCurtis,//Camper Curtis +0x0010cb --bit1
OreburghGate_PicnickerDiana,//Picnicker Diana +0x0010d3 --bit1
OreburghGate_Veteran,


//Oreburgh Mine 2/2 Normal Matches
OreburghMine_WorkerMason ,//Worker Mason +10C2 Bit 4
OreburghMine_WorkerColin , //Worker Colin +10C2 Bit 3

//2nd division
//Route 204 North - 3/3 Normal Matches
Route204North_AromaLadyTaylor,
Route204North_BugCatcherBrandon ,
Route204North_TwinsLivLiz,
//Route 205 South - 8/8
Route205South_CamperJacob ,
Route205South_HikerDaniel ,
Route205South_AromaLadyElizabeth ,
Route205South_CamperZackary,
Route205South_PicnickerSiena,
Route205South_HikerNicholas ,
Route205South_BattleGirlKelsey,
Route205South_PicnickerKarina,
//Eterna Forest Finished
EternaForest_LassBriana ,
EternaForest_BugCatcherJack,
EternaForest_PsychicElijah ,
EternaForest_PsychicLindsey,
EternaForest_BugCatcherDonald,
EternaForest_BugCatcherPhilip,
EternaForest_PsychicKody,
EternaForest_PsychicRachael ,
//Route 205 North 3/3
Route205North_FishermanJoseph ,
Route205North_FishermanAndrew ,
Route205North_FishermanZachary,
//Route 211 West 3/3
Route211West_HikerLouis ,
Route211West_BirdKeeperAlexandra ,
Route211West_NinjaBoyZach,
//Route 211 East 4/4
Route211East_BirdKeeperKatherine ,
Route211East_RuinManiacHarry,
Route211East_NinjaBoyNick,
Route211East_BlackBeltSean,
//Route 216 5/5
Route216_AceTrainerBlake,
Route216_AceTrainerLaura,
Route216_SkierEdward ,
Route216_AceTrainerGarrett,
Route216_AceTrainerMaria,
//Route 206 9/9 
Route206_CyclistAxel,
Route206_CyclistJames,
Route206_CyclistMegan ,
Route206_CyclistNicole ,
Route206_CyclistJohn ,
Route206_CyclistRyan ,
Route206_CyclistRachel,
Route206_CyclistKayla,
Route206_HikerTheodore,

//3rd Division
//Wayward Cave 10/10
WaywardCave_HikerLorenzo,
WaywardCave_HikerReginald,
WaywardCave_YoungsterWayne,
WaywardCave_LassCassidy,
WaywardCave_PicnickerAna,
WaywardCave_CamperParker,
WaywardCave_PicnickerTori,
WaywardCave_CamperDiego,
WaywardCave_RuinManiacGerald ,
WaywardCave_CollectorTerry,
//Route 207 6/6
Route207_CamperAnthony,
Route207_PicnickerLauren,
Route207_HikerJustin ,
Route207_YoungsterAustin,
Route207_BattleGirlHelen ,
Route207_HikerKevin ,
//Route 208 7/7 
Route208_HikerJonathan,
Route208_BlackBeltKyle ,
Route208_HikerRobert,
Route208_HikerAlexander ,
Route208_AromaLadyHannah ,
Route208_ArtistWilliam ,
Route208_Fisherman ,
//Route212North 4/8 Missing guards but idk if they actually fight
Route212North_RichBoyJason ,
Route212North_LadyMelissa ,
Route212North_SocialiteReina ,
Route212North_GentlemanJeremy ,




//Route209 6/8 missing the 2 joggers but idk if possible
Route209_TwinsEmmaLil ,
Route209_PokéKidDanielle ,
Route209_PKMNBreederAlbert ,
Route209_PKMNBreederJennifer ,
Route209_CowgirlShelley ,
Route209_YoungCoupleTySue ,

//LostTower 6/6
LostTower_YoungsterOliver ,
LostTower_RoughneckKirby ,
LostTower_PokéfanLeonard ,
LostTower_PokéfanRebekah,
LostTower_BellePaBethBob ,
LostTower_YoungCoupleMikeNat ,
//Solaceon Ruins 1/1
SolaceonRuins_RuinManiacKarl ,
//Route 210 South 8/9 Missing 1 jogger again
Route210South_RancherMarco ,
Route210South_BellePaAvaMatt ,
Route210South_PKMNBreederAmber ,
Route210South_TwinsTeriTia,
Route210South_PKMNBreederKahlil ,
Route210South_WaitressKati ,
Route210South_CollectorEdwin ,
Route210South_CollectorFernando ,
//Route215 6/8 2 joggers missing
Route215_RuinManiacCalvin,
Route215_BlackBeltGregory,
Route215_BlackBeltDerek ,
Route215_BlackBeltNathaniel ,
Route215_AceTrainerDennis ,
//Route 214 9/9
Route214_PsychicAbigail,
Route214_PICarlos,
Route214_CollectorBrady ,
Route214_BeautyDevon,
Route214_PsychicMitchell,
Route214_CollectorDouglas,
Route214_RuinManiacRonald ,
Route214_CollectorJamal ,
Route214_RuinManiacBryan,
//Seven Star Restaurant
SevenStarRestaurant_1 ,
SevenStarRestaurant_2,
SevenStarRestaurant_3,
SevenStarRestaurant_4,
SevenStarRestaurant_5,
SevenStarRestaurant_6,
SevenStarRestaurant_7,
SevenStarRestaurant_8,
SevenStarRestaurant_9,
SevenStarRestaurant_10,
SevenStarRestaurant_11,
SevenStarRestaurant_12,
SevenStarRestaurant_13,
SevenStarRestaurant_14,
SevenStarRestaurant_15,
SevenStarRestaurant_16,
SevenStarRestaurant_17,
SevenStarRestaurant_18,
//Route 213 4/10
Route213_TuberChelsea,
Route213_TuberJared,
Route213_FishermanKenneth,
Route213_BeautyCyndy,






//Route 212 - South 12/12
Route212South_PokémonRangerTaylor,
Route212South_ParasolLadyAlexa,
Route212South_FishermanJuan,
Route212South_FishermanJosh ,
Route212South_FishermanTravis ,
Route212South_CollectorDean ,
Route212South_PolicemanDanny ,
Route212South_PokémonRangerJeffrey ,
Route212South_ScientistStefano,
Route212South_PokémonRangerAllison,
Route212South_ScientistShaun ,
Route212South_ParasolLadySabrina ,
//Route 210 North 13/13
Route210North_NinjaBoyBrennan ,
Route210North_NinjaBoyFabian ,
Route210North_NinjaBoyBruce ,
Route210North_NinjaBoyJoel,
Route210North_AceTrainerAlyssa ,
Route210North_DoubleTeamZacJen ,
Route210North_AceTrainerErnest ,
Route210North_BlackBeltAdam ,
Route210North_NinjaBoyNathan ,
Route210North_BirdKeeperBrianna ,
Route210North_VeteranBrian ,
Route210North_NinjaBoyDavido ,
Route210North_DragonTamerPatrick ,
//Route218 4/4
Route218_SailorSkyler,
Route218_GuitaristTony ,
Route218_FishermanLuc ,
Route218_FishermanMiguel,
//Fuego Ironworks 3/3
FuegoIronworks_WorkerDillan,
FuegoIronworks_WorkerHolden,
FuegoIronworks_WorkerConrad,
//Route 219 2/2
Route219_TuberTrenton,
Route219_TuberMariel,
//Route 220 7/7
Route220_SwimmerJessica,
Route220_SwimmerErica,
Route220_SwimmerAdrian,
Route220_SwimmerVincent,
Route220_SwimmerClaire,
Route220_SwimmerErik,
Route220_SwimmerKatelyn,
//Route 221 6/6
Route221_SwimmerDillon,
Route221_SwimmerVanessa,
Route221_FishermanCory,
Route221_CollectorIvan ,
Route221_AceTrainerShannon,
Route221_AceTrainerJake,
//Iron Island 12/12
IronIsland_CamperLawrence ,
IronIsland_PicnickerSummer ,
IronIsland_WorkerNoel ,
IronIsland_WorkerBraden,
IronIsland_HikerDamon,
IronIsland_HikerMaurice,
IronIsland_BlackBeltKendal,
IronIsland_BattleGirlTyler,
IronIsland_AceTrainerJonah ,
IronIsland_AceTrainerBrenda,
IronIsland_WorkerBrendon ,
IronIsland_WorkerQuentin,
//Route217 9/9
Route217_AceTrainerDalton ,
Route217_SkierShawn ,
Route217_SkierMadison,
Route217_NinjaBoyMatthew,
Route217_NinjaBoyEthan,
Route217_SkierLexie,
Route217_SkierBjorn,
Route217_BlackBeltLuke,
Route217_AceTrainerOlivia,
//Route 222 11/12 missing 1 officer one
Route222_RichBoyTrey,
Route222_FishermanAlec,
Route222_FishermanGeorge,
Route222_FishermanBrett,
Route222_FishermanCole,
Route222_TuberHolly,
Route222_SailorLuther,
Route222_SailorMarc ,
Route222_TuberConner ,
Route222_BeautyNicola,
Route222_PokéKidJanet,// Dont count this one LOL

//Route 223 11/13
Route223_SwimmerMiranda ,
Route223_SwimmerAubree,
Route223_SwimmerOscar ,
Route223_SwimmerColton,
Route223_SwimmerPaige,
Route223_SwimmerRicardo,
Route223_SwimmerCrystal,
Route223_SwimmerWesley,
Route223_SailorZachariah,
Route223_SwimmerGabrielle,
Route223_SwimmerCassandra,
Route223_SwimmerTroy,

//Victory Road 14/14
VictoryRoad_BirdKeeperHana,
VictoryRoad_PsychicBryce,
VictoryRoad_AceTrainerMariah,
VictoryRoad_AceTrainerOmar,
VictoryRoad_AceTrainerSydney,
VictoryRoad_DoubleTeamAlKay,
VictoryRoad_VeteranClayton,
VictoryRoad_BlackBeltMiles,
VictoryRoad_PsychicValencia,
VictoryRoad_AceTrainerHenry,
VictoryRoad_DoubleTeamJoPat,
VictoryRoad_AceTrainerHenry,
VictoryRoad_VeteranEdgar,
VictoryRoad_DragonTamerClinton,

//VictoryRoadEast
VictoryRoadEast_AceTrainerMicah,
VictoryRoadEast_AceTrainerBrandi,
VictoryRoadEast_PsychicLandon,
VictoryRoadEast_PsychicDesiree,
VictoryRoadEast_PsychicLandon,
VictoryRoadEast_BlackBeltEddie,
VictoryRoadEast_VeteranTerrell,
VictoryRoadEast_BirdKeeperAutumn,
VictoryRoadEast_DragonTamerJoe ,
VictoryRoadEast_PsychicKendra ,
VictoryRoadEast_PsychicDeandre ,
VictoryRoadEast_BlackBeltWillie,
VictoryRoadEast_VeteranBrenden ,
VictoryRoadEast_AceTrainerArthur ,
VictoryRoadEast_AceTrainerClarice ,

//Route224 7/8
Route224_AceTrainerRuben,
Route224_VeteranArmando,
Route224_BlackBeltCarl,
Route224_RuinManiacLarry,
Route224_AceTrainerJamie ,
Route224_DragonTamerHayden ,
Route225_AceTrainerDeanna ,

//Route225 8/9
Route225_BirdKeeperAudrey,
Route225_PsychicDaisy,
Route225_PKMNRangerAshlee,
Route225_AceTrainerHeather,
Route225_PKMNRangerDwayne ,
Route225_AceTrainerRodolfo ,
Route225_AceTrainerQuinn ,
Route225_DragonTamerGeoffrey ,

//Route 226 6/6
Route226_AceTrainerGraham ,
Route226_DragonTamerStanley ,
Route226_BirdKeeperGeneva ,
Route226_SwimmerLydia ,
Route226_AceTrainerWyver,
Route226_SwimmerWade ,
//Route 227 5/5
Route227_AceTrainerSaul ,
Route227_PKMNRangerFelicia,
Route227_BlackBeltGriffin,
Route227_AceTrainerMikayla ,
Route227_AceTrainerSlythe ,
//Route 228 9/9
Route228_BlackBeltDavon ,
Route228_AceTrainerMoira ,
Route228_PKMNRangerKrista ,
Route228_PKMNRangerKyler,
Route228_AceTrainerMeagan ,
Route228_PsychicCorbin ,
Route228_AceTrainerShade ,
Route228_DragonTamerKeegan ,
Route228_AceTrainerJose ,
//Route 229 4/5
Route229_AceTrainerFelix,
Route229_AceTrainerDana,
Route229_AceTrainerSandra,
Route229_AceTrainerGene,
//Route 230 7/7
Route230_SwimmerKurt,
Route230_SwimmerJoanna,
Route230_SwimmerMallory,
Route230_SwimmerGlenn,
Route230_SwimmerSophia ,
Route230_SwimmerSam ,
Route230_AceTrainerLuna ,
Route230_DragonTamerDarien ,
//StarkMountain 16/16
StarkMountain_PsychicSterling ,
StarkMountain_PsychicChelsey ,
StarkMountain_AceTrainerAbel,
StarkMountain_AceTrainerMonique ,
StarkMountain_BlackBeltRay ,
StarkMountain_BirdKeeperKrystal,
StarkMountain_AceTrainerKassandra ,
StarkMountain_AceTrainerKeenan,
StarkMountain_AceTrainerStefan ,
StarkMountain_AceTrainerJasmin ,
StarkMountain_AceTrainerNatasha ,
StarkMountain_AceTrainerSkylar ,
StarkMountain_DragonTamerDrake ,
StarkMountain_BlackBeltJarrett ,
StarkMountain_DragonTamerKenny,
StarkMountain_VeteranHarlan,
]

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
IDEnemyPokemon = word(GlobalPointer + 0x47678)
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

musicID = word(0x1beb04)
Elite4Room = 0x0434
Elite4StartingFight = 0x0459
Elite4Fight = 0x0470
vsCynthia = 0x0462
cynthiaPiano = 0x045a
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
    never(prev(SetMode) == 1 && SetMode == 0)  &&
    //Reset if pokemon isnt the level cap, also check for ID
    never(OpponentTrainerID != 0 && IDCurrentPokemon <= 493 && LevelCurrentPokemon > LevelCap && LevelCurrentPokemon <= 100 && musicID != Elite4Room) &&
    
    
    //Reset if used item
    never(NoItemUsedCheck()) &&
    never(OpponentTrainerID != 0 && prev(LastItemUsedCurrent) != LastItemUsedCurrent && LastItemUsedCurrent >= MasterBall && LastItemUsedCurrent <= CherishBall && musicID != Elite4Room) &&
    never(OpponentTrainerID != 0 && prev(LastItemUsedCurrent) != LastItemUsedCurrent && LastItemUsedCurrent >= BlueFlute && LastItemUsedCurrent <= RedFlute && musicID != Elite4Room)
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
    never(OpponentTrainerID != 0 && IDCurrentPokemon <= 493 && LevelCurrentPokemon > LevelCap && LevelCurrentPokemon <= 100 && musicID != Elite4Room) &&
    //Reset if not the type
    never(OpponentTrainerID != 0 && IDCurrentPokemon > 0 && PokemonFirstType != Type && PokemonSecondType != Type && PokemonFirstType <= Dark && PokemonSecondType <= Dark && musicID != Elite4Room) &&
    //Reset if used item
    never(NoItemUsedCheck()) &&
    never(OpponentTrainerID != 0 && prev(LastItemUsedCurrent) != LastItemUsedCurrent && LastItemUsedCurrent >= MasterBall && LastItemUsedCurrent <= CherishBall && musicID != Elite4Room) &&
    never(OpponentTrainerID != 0 && prev(LastItemUsedCurrent) != LastItemUsedCurrent && LastItemUsedCurrent >= BlueFlute && LastItemUsedCurrent <= RedFlute && musicID != Elite4Room)
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

function CatchedPokemonMasterball(pokemonID){
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
    PokemonAddress == 1
}


CatchedSongID = 0x000467
EnemyPokemonID = word(GlobalPointer + 0x047678)
OpponentHP = word(GlobalPointer + 0x476C4)
OpponentLevel = byte(GlobalPointer + 0x476AC)

function CatchedWildPokemon(PokemonID, item, location){
    return
    PointerCheck() &&
    IDEnemyPokemon == PokemonID &&
    prev(MusicID) != CatchedSongID &&
    MusicID == CatchedSongID &&
    OpponentHP != 0 &&
    OpponentHP < 0x005050 &&
    OpponentLevel >= 1 && OpponentLevel <= 100
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
    description = "Defeat " + GymChallenges[Gym]["description"] + " on Set Mode without using items in battle [Level Cap <= " + GymChallenges[Gym]["LevelCap"] + " after battle ends]",
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
PonytaTrade = bit5(GlobalPointer + 0x1010)
IDPonyta = 0x0036
CherubiTrade = bit4(GlobalPointer + 0x101E)
IDCherubi = 0x01b0
SnoruntTrade = bit6(GlobalPointer + 0x1010)
IDSnorunt = 0x004c
MagikarpTrade = bit5(GlobalPointer + 0x101E)
IDMagikarp = 0x01f3
GengarEncounter = bit1(GlobalPointer + 0xE2E)
GengarID = 0x012e
GabiteEncounter = bit0(GlobalPointer + 0xF96)
GabiteID = 0x011c
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
    11: {"title": "Horse for a Seal", "description": "Trade a Ponyta for a Spheal in Oreburgh City", "points": 3, "flag": PonytaTrade , "mapID": IDPonyta},
    12: {"title": "Cherry for a Scorpion", "description": "Trade a Cherubi for a Skorupi in Floaroma Town", "points": 3, "flag": CherubiTrade , "mapID": IDCherubi},
    13: {"title": "Ice for a Parrot", "description": "Trade a Snorunt for a Chatot in Eterna City", "points": 3, "flag": SnoruntTrade , "mapID": IDSnorunt},
    14: {"title": "Fish for a German... Fish", "description": "Trade a Magikarp for a German Magikarp in Route 226", "points": 3, "flag": MagikarpTrade , "mapID": IDMagikarp},
    
    15: {"title": "Glowing Painting", "description": "Encounter a Gengar in the Old Chateau", "points": 3, "flag": GengarEncounter , "mapID": GengarID},
    16: {"title": "It Doesn't Bite", "description": "Encounter a Gabite in Wayward Cave", "points": 3, "flag": GabiteEncounter , "mapID": GabiteID},
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
    title = "Fear the Garchomp",
    description = "Defeat the Elite 4 and Cynthia on Set Mode without using items in battle [Level Cap <= 78, Single Session, Round One]",
    points = 25,

    trigger = Elite4Challenge("Any", 1, 78)
    )


LegendaryCatches = {
    1: {"title": "Permafrost Plumage [m]", "description": "Catch Articuno in Mt. Coronet [No Masterball]", "points": 5, "pokemonID": ArticunoID},
    2: {"title": "Thunderstorm Flap [m]", "description": "Catch Zapdos in Valley Windworks [No Masterball]", "points": 5, "pokemonID": ZapdosID},
    3: {"title": "Flaming Wings [m]", "description": "Catch Moltres in Victory Road [No Masterball]", "points": 5, "pokemonID": MoltresID},
    4: {"title": "Recombined Genes [m]", "description": "Catch Mewtwo in Oreburgh Gate [No Masterball]", "points": 10, "pokemonID": MewtwoID},
    5: {"title": "Ancestor of All [m]", "description": "Catch Mew in Route 201 [No Masterball]", "points": 10, "pokemonID": MewID},
    6: {"title": "Bolt of Lightning [m]", "description": "Catch Raikou in Route 208 [No Masterball]", "points": 5, "pokemonID": RaikouID},
    7: {"title": "Passion of Magma [m]", "description": "Catch Entei in Route 211 (East) [No Masterball]", "points": 5, "pokemonID": EnteiID},
    8: {"title": "Embodiment of the North Winds [m]", "description": "Catch Suicune in Route 213 [No Masterball]", "points": 5, "pokemonID": SuicuneID},
    9: {"title": "Guardian of the Seas [m]", "description": "Catch Lugia in Route 220 [No Masterball]", "points": 10, "pokemonID": LugiaID},
    10: {"title": "Sacred Flame [m]", "description": "Catch Ho-oh in the Lost Tower [No Masterball]", "points": 10, "pokemonID": HoohID},
    
    11: {"title": "Forest Guardian [m]", "description": "Catch Celebi in Eterna Forest [No Masterball]", "points": 10, "pokemonID": CelebiID},
    12: {"title": "Rock Golem [m]", "description": "Catch Regirock in Route 228 [No Masterball]", "points": 5, "pokemonID": RegirockID},
    13: {"title": "Ice Golem [m]", "description": "Catch Regice in Mt. Coronet [No Masterball]", "points": 5, "pokemonID": RegiceID},
    14: {"title": "Steel Golem [m]", "description": "Catch Registeel in Iron Island [No Masterball]", "points": 5, "pokemonID": RegisteelID},
    15: {"title": "Refracting Light [m]", "description": "Catch Latias in Fullmoon Island [No Masterball]", "points": 10, "pokemonID": LatiasID},
    16: {"title": "Jet Plane [m]", "description": "Catch Latios in Fullmoon Island [No Masterball]", "points": 10, "pokemonID": LatiosID},
    17: {"title": "Primordial Sea [m]", "description": "Catch Kyogre in Mt. Coronet [No Masterball]", "points": 10, "pokemonID": KyogreID},
    18: {"title": "Desolate Land [m]", "description": "Catch Groudon in Stark Mountain [No Masterball]", "points": 10, "pokemonID": GroudonID},
    19: {"title": "Dragon Ascent [m]", "description": "Catch Rayquaza in the Pokemon League [No Masterball]", "points": 10, "pokemonID": RayquazaID},
    20: {"title": "Wish Maker [m]", "description": "Catch Jirachi in the Solaceon Ruins [No Masterball]", "points": 10, "pokemonID": JirachiID},
    
    21: {"title": "Space Virus [m]", "description": "Catch Deoxys in Veilstone City [No Masterball]", "points": 10, "pokemonID": DeoxysID},
    22: {"title": "Bringer of Knowledge [m]", "description": "Catch Uxie in Acuity Cavern [No Masterball]", "points": 5, "pokemonID": UxieID},
    23: {"title": "Bringer of Emotion [m]", "description": "Catch Mesprit in Verity Cavern [No Masterball]", "points": 5, "pokemonID": MespritID},
    24: {"title": "Bringer of Willpower [m]", "description": "Catch Azelf in Valor Cavern [No Masterball]", "points": 5, "pokemonID": AzelfID},
    25: {"title": "Time Controller [m]", "description": "Catch Dialga in the Spear Pillar [No Masterball]", "points": 5, "pokemonID": DialgaID},
    26: {"title": "Parallel World [m]", "description": "Catch Palkia in the Spear Pillar [No Masterball]", "points": 5, "pokemonID": PalkiaID},
    27: {"title": "Magma Storm [m]", "description": "Catch Heatran in Stark Mountain [No Masterball]", "points": 5, "pokemonID": HeatranID},
    28: {"title": "Master of the Titans [m]", "description": "Catch Regigigas in Snowpoint Temple [No Masterball]", "points": 10, "pokemonID": RegigigasID},
    29: {"title": "Lunar Blessing [m]", "description": "Catch Cresselia in Fullmoon Island [No Masterball]", "points": 10, "pokemonID": CresseliaID},
    30: {"title": "Pitch-Black Nightmare [m]", "description": "Catch Darkrai in Newmoon Island [No Masterball]", "points": 10, "pokemonID": DarkraiID},
    
    31: {"title": "The Sky Warrior [m]", "description": "Catch Shaymin in Flower Paradise [No Masterball]", "points": 10, "pokemonID": ShayminID},
    32: {"title": "The Original One [m]", "description": "Catch Arceus in the Hall of Origin [No Masterball]", "points": 25, "pokemonID": ArceusID},
}

for Pokemon in LegendaryCatches{
    achievement(
    title = LegendaryCatches[Pokemon]["title"],
    description = LegendaryCatches[Pokemon]["description"],
    points = LegendaryCatches[Pokemon]["points"],

    trigger = CatchedPokemon(LegendaryCatches[Pokemon]["pokemonID"])
    )
}


SpiritombID = 442
 achievement(
    title = "Tomb of the Spirits [m]",
    description = "Catch a Spiritomb in the broken stone tower",
    points = 3,
    trigger = CatchedPokemonMasterball(SpiritombID)
    )

achievement(
    title = "Take Heart",
    description = "Hatch a Phione egg",
    points = 5,
    trigger = CatchedPokemonMasterball(PhioneID)
)

achievement(
    title = "Prince of the Sea",
    description = "Hatch a Manaphy egg",
    points = 5,
    trigger = CatchedPokemonMasterball(ManaphyID)
)


Rematches = {
    1: {"title": "Rocking Out", "description": "Defeat Roark in a rematch using only Rock-Type Pokemon [Set Mode, No Items in battle, Level Cap <= 82 after battle ends]", "points": 25,
    "LevelCap": 82, "Type": Rock, "MusicIDStart": GymLeaderFight, "MusicIDWin": GymLeaderWin, "TrainerID": RoarkRematch},
    
    2: {"title": "That Grass Looks Greeneer", "description": "Defeat Gardenia in a rematch using only Grass-Type Pokemon [Set Mode, No Items in battle, Level Cap <= 82 after battle ends]", "points": 25,
    "LevelCap": 82, "Type": Grass, "MusicIDStart": GymLeaderFight, "MusicIDWin": GymLeaderWin, "TrainerID": GardeniaRematch},
    
    3: {"title": "Ghost and Ghouls", "description": "Defeat Fantina in a rematch using only Ghost-Type Pokemon [Set Mode, No Items in battle, Level Cap <= 82 after battle ends]", "points": 25,
    "LevelCap": 82, "Type": Ghost, "MusicIDStart": GymLeaderFight, "MusicIDWin": GymLeaderWin, "TrainerID": FantinaRematch},
    
    4: {"title": "Fighting to the Death", "description": "Defeat Maylene in a rematch using only Fighting-Type Pokemon [Set Mode, No Items in battle, Level Cap <= 82 after battle ends]", "points": 25,
    "LevelCap": 82, "Type": Fighting, "MusicIDStart": GymLeaderFight, "MusicIDWin": GymLeaderWin, "TrainerID": MayleneRematch},
    
    5: {"title": "Water is Life", "description": "Defeat Wake in a rematch using only Water-Type Pokemon [Set Mode, No Items in battle, Level Cap <= 82 after battle ends]", "points": 25,
    "LevelCap": 82, "Type": Water, "MusicIDStart": GymLeaderFight, "MusicIDWin": GymLeaderWin, "TrainerID": WakeRematch},
    
    6: {"title": "Made of Steel", "description": "Defeat Byron in a rematch using only Steel-Type Pokemon [Set Mode, No Items in battle, Level Cap <= 82 after battle ends]", "points": 25,
    "LevelCap": 82, "Type": Steel, "MusicIDStart": GymLeaderFight, "MusicIDWin": GymLeaderWin, "TrainerID": ByronRematch},
    
    7: {"title": "Iced Out", "description": "Defeat Candice in a rematch using only Ice-Type Pokemon [Set Mode, No Items in battle, Level Cap <= 82 after battle ends]", "points": 25,
    "LevelCap": 82, "Type": Ice, "MusicIDStart": GymLeaderFight, "MusicIDWin": GymLeaderWin, "TrainerID": CandiceRematch},
    
    8: {"title": "Electric Sensation", "description": "Defeat Volkner in a rematch using only Electric-Type Pokemon [Set Mode, No Items in battle, Level Cap <= 82 after battle ends]", "points": 25,
    "LevelCap": 82, "Type": Electric, "MusicIDStart": GymLeaderFight, "MusicIDWin": GymLeaderWin, "TrainerID": VolknerRematch},
    
    9: {"title": "Totally Normal", "description": "Defeat Cheryl in a rematch using only Normal-Type Pokemon [Set Mode, No Items in battle, Level Cap <= 82 after battle ends]", "points": 25,
    "LevelCap": 82, "Type": Normal, "MusicIDStart": NormalFight, "MusicIDWin": NormalWin, "TrainerID": CherylRematch},
    
    10: {"title": "Poisonous Relationship", "description": "Defeat Mira in a rematch using only Poison-Type Pokemon [Set Mode, No Items in battle, Level Cap <= 82 after battle ends]", "points": 25,
    "LevelCap": 82, "Type": Poison, "MusicIDStart": NormalFight, "MusicIDWin": NormalWin, "TrainerID": MiraRematch},
    
    11: {"title": "Sky Flight", "description": "Defeat Riley in a rematch using only Flying-Type Pokemon [Set Mode, No Items in battle, Level Cap <= 82 after battle ends]", "points": 25,
    "LevelCap": 82, "Type": Flying, "MusicIDStart": NormalFight, "MusicIDWin": NormalWin, "TrainerID": RileyRematch},
    
    12: {"title": "Edgy and Dark", "description": "Defeat Marley in a rematch using only Dark-Type Pokemon [Set Mode, No Items in battle, Level Cap <= 82 after battle ends]", "points": 25,
    "LevelCap": 82, "Type": Dark, "MusicIDStart": NormalFight, "MusicIDWin": NormalWin, "TrainerID": MarleyRematch},
    
    13: {"title": "Charizard Is Now a Dragon", "description": "Defeat Buck in a rematch using only Dragon-Type Pokemon [Set Mode, No Items in battle, Level Cap <= 82 after battle ends]", "points": 25,
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

DawnRematch = 0x9f0b2e34
DawnRematch2 = 0x9e10a8ef
DawnRematch3 = 0x1e8d6b91

LucasRematch2 = 0xf0d71ef7
LucasRematch3 = 0xb37960bd

//Special cases
achievement(
    title = "Hisui Region",
    description = "Defeat Lucas/Dawn in a rematch using only Sinnoh Pokemon [Set Mode, No Items in battle, Level Cap <= 84 after battle ends]",
    points = 25,
    trigger = PointerCheck() &&
    //Initial hit check for battle start [In set mode]
    once(
    MapID == Battleground &&
    MusicID ==  NormalFight &&
    SetMode == 1 &&
    prev(OpponentTrainerID) == 0x00 && (OpponentTrainerID == LucasRematch ||  OpponentTrainerID == LucasRematch2 || OpponentTrainerID == LucasRematch3 || 
    OpponentTrainerID == DawnRematch || OpponentTrainerID == DawnRematch2 || OpponentTrainerID == DawnRematch3 )) &&
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
BarryRematch2 = 0x61d4d919
BarryRematch3 = 0xb5f1ed18

achievement(
    title = "Adventure Companions",
    description = "Defeat Barry in a rematch using only Fully Evolved Initial Pokemon [Set Mode, No Items in battle, Level Cap <= 85 after battle ends]",
    points = 25,
    trigger = PointerCheck() &&
    //Initial hit check for battle start [In set mode]
    once(
    MapID == Battleground &&
    MusicID ==  RivalFight &&
    SetMode == 1 &&
    prev(OpponentTrainerID) == 0x00 && (OpponentTrainerID == BarryRematch || OpponentTrainerID == BarryRematch2 || OpponentTrainerID == BarryRematch3) )&&
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
    description = "Complete the 24-Battle Marathon [Set Mode, No Items in battle, Level Cap <= 89 after battle ends]",
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
1: {"title": "Don't Bug Me", "description": "Defeat the Elite 4 and Cynthia using only Bug-Type Pokemon [Set Mode, No Items in battle, One Session, Level Cap <= 89 after battle ends, Round Two]", "type": Bug},
2: {"title": "Feet on the Ground", "description": "Defeat the Elite 4 and Cynthia using only Ground-Type Pokemon [Set Mode, No Items in battle, One Session, Level Cap <= 89 after battle ends, Round Two]", "type": Ground},
3: {"title": "That's Fire, Bro", "description": "Defeat the Elite 4 and Cynthia using only Fire-Type Pokemon [Set Mode, No Items in battle, One Session, Level Cap <= 89 after battle ends, Round Two]","type": Fire},
4: {"title": "Mob Psychic 100", "description": "Defeat the Elite 4 and Cynthia using only Psychic-Type Pokemon [Set Mode, No Items in battle, One Session, Level Cap <= 89 after battle ends, Round Two]",  "type": Psychic},
5: {"title": "Fairy Dust", "description": "Defeat the Elite 4 and Cynthia using only Fairy-Type Pokemon [Set Mode, No Items in battle, One Session, Level Cap <= 89 after battle ends, Round Two]",  "type": Fairy},
}

achievement(
    title = "Now Featuring: Rayquaza",
    description = "Defeat the Elite 4 and Cynthia on Set Mode without using items in battle [Level Cap <= 89 after battle ends, Single Session, Round Two]",
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


achievement(
    title = "Bring Your Legendary to Work Day",
    description = "Defeat the Elite 4 and Cynthia using only Legendaries [Set Mode, No Items in battle, One Session, Level Cap <= 89 after battle ends, Round Two]",
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
    
    
MusicIDRotom = 0x0466



Silver = 0x02
Gold = 0x04
TowerPrint = word(GlobalPointer + 0xE5E)
FactoryPrint = word(GlobalPointer +0xE60)
HallPrint = word(GlobalPointer +0xE62)
CastlePrint = word(GlobalPointer +0xE64)
ArcadePrint = word(GlobalPointer +0xE66)

BattlePrints = {
1: {"title": "Tower Tycoon", "description": "Earn the Battle Tower Silver Print", "PrintAddress": TowerPrint, "type": Silver, "points": 25},
2: {"title": "No Gimmicks Champ", "description": "Earn the Battle Tower Gold Print", "PrintAddress": TowerPrint, "type": Gold, "points": 50},

3: {"title": "Factory Head", "description": "Earn the Battle Factory Silver Print", "PrintAddress": FactoryPrint, "type": Silver, "points": 25},
4: {"title": "Save Me RNGoddess", "description": "Earn the Battle Factory Gold Print", "PrintAddress": FactoryPrint, "type": Gold, "points": 50},

5: {"title": "Hall Matron", "description": "Earn the Battle Hall Silver Print", "PrintAddress": HallPrint, "type": Silver, "points": 25},
6: {"title": "Fame Conqueror", "description": "Earn the Battle Hall Gold Print", "PrintAddress": HallPrint, "type": Gold, "points": 50},

7: {"title": "Castle Valet", "description": "Earn the Battle Castle Silver Print", "PrintAddress": CastlePrint, "type": Silver, "points": 25},
8: {"title": "Royal King", "description": "Earn the Battle Castle Gold Print", "PrintAddress": CastlePrint, "type": Gold, "points": 50},

9: {"title": "Arcade Star", "description": "Earn the Battle Arcade Silver Print", "PrintAddress": ArcadePrint, "type": Silver, "points": 25},
10: {"title": "We Gaming", "description": "Earn the Battle Arcade Gold Print", "PrintAddress": ArcadePrint, "type": Gold, "points": 50},
}

function BattleFrontier(PrintAddress, Type){
    return
    PointerCheck() &&
    prev(PrintAddress) == Type-1 &&
    PrintAddress == Type
}

for print in BattlePrints{
    achievement(
        title = BattlePrints[print]["title"],
        description = BattlePrints[print]["description"],
        points = BattlePrints[print]["points"],
        trigger = BattleFrontier(BattlePrints[print]["PrintAddress"], BattlePrints[print]["type"])
    )
}

function Pokedex(startOffset, start, finish){
    logic = always_true()
    StartTemp = startOffset
    PokemonAddress = 0
    Count = 0 
    AddBitFlags = 1
    BitFlags = []
    for number in range(1, 898){            
        if(number >= start && number < finish){
            if(finish - number > 8 && Count == 0){
                array_push(BitFlags, bitcount(GlobalPointer + StartTemp))
                AddBitFlags = 0
            }else if(AddBitFlags == 1){
                      
                if((Count) == 0){
                    array_push(BitFlags, bit0(GlobalPointer + StartTemp))
                }
                if((Count) == 1){
                    array_push(BitFlags, bit1(GlobalPointer + StartTemp))
                }
                if((Count) == 2){
                   array_push(BitFlags, bit2(GlobalPointer + StartTemp))
                }
                if((Count) == 3){
                  array_push(BitFlags, bit3(GlobalPointer + StartTemp))
                }
                if((Count) == 4){
                   array_push(BitFlags, bit4(GlobalPointer + StartTemp))
                }
                if((Count) == 5){
                   array_push(BitFlags, bit5(GlobalPointer + StartTemp))
                }
                if((Count) == 6){
                   array_push(BitFlags, bit6(GlobalPointer + StartTemp))
                }
                if((Count) == 7){
                   array_push(BitFlags, bit7(GlobalPointer + StartTemp))
                }
                
            }
         }
         Count = Count + 1
         if(Count == 8){
            Count = 0
            StartTemp = StartTemp + 0x01
            AddBitFlags = 1
         }
    }
    return measured(sum_of(BitFlags, f => f) == finish-start) && sum_of(BitFlags, f => prev(f)) == finish-start-1 
}
StartOfCatched = 0x1340

achievement(
    title = "Gotta Catch 'Em All! - Renegade Platinum",
    description = "Catch all 493 available Pokemon",
    points = 100, 
    trigger = PointerCheck() && Pokedex(StartOfCatched, 1, 494)
    
)

OpponentShinyIndication = bit5(GlobalPointer + 0x4769E)

achievement(
    title = "1/512 [m]",
    description = "Catch a shiny legendary Pokemon",
    points = 25, 
    trigger = PointerCheck() &&
    (
    IDEnemyPokemon == ZapdosID || 
    IDEnemyPokemon == MoltresID || 
    IDEnemyPokemon == ArticunoID || 
    IDEnemyPokemon  == RaikouID || 
    IDEnemyPokemon == EnteiID ||
    IDEnemyPokemon  == SuicuneID || 
    IDEnemyPokemon  == RegirockID || 
    IDEnemyPokemon  == RegiceID || 
    IDEnemyPokemon  == RegisteelID || 
    IDEnemyPokemon  == LatiasID || 
    IDEnemyPokemon  == LatiosID || 
    IDEnemyPokemon  == UxieID ||
    IDEnemyPokemon  == MespritID ||
    IDEnemyPokemon  == AzelfID ||
    IDEnemyPokemon  == HeatranID ||
    IDEnemyPokemon  == RegigigasID ||
    IDEnemyPokemon == CresseliaID ||
    IDEnemyPokemon  == MewtwoID ||
    IDEnemyPokemon  == LugiaID ||
    IDEnemyPokemon  == HoohID ||
    IDEnemyPokemon  == KyogreID ||
    IDEnemyPokemon  == GroudonID ||
    IDEnemyPokemon  == RayquazaID ||
    IDEnemyPokemon  == DialgaID ||
    IDEnemyPokemon  == PalkiaID ||
    IDEnemyPokemon  == GiratinaID ||
    IDEnemyPokemon  == MewID ||
    IDEnemyPokemon  == CelebiID ||
    IDEnemyPokemon  == JirachiID ||
    IDEnemyPokemon  == DeoxysID ||
    IDEnemyPokemon  == PhioneID ||
    IDEnemyPokemon  == ManaphyID ||
    IDEnemyPokemon  == DarkraiID ||
    IDEnemyPokemon  == ShayminID ||
    IDEnemyPokemon == ArceusID
    )
    &&
    OpponentShinyIndication == 1 &&
    prev(MusicID) != CatchedSongID &&
    trigger_when(MusicID == CatchedSongID) &&
    OpponentHP != 0 &&
    OpponentHP < 0x005050 &&
    OpponentLevel >= 1 && OpponentLevel <= 100
    
)
    
ItemFanaticPikachu = bit4(GlobalPointer + 0x1117)
ItemFanaticFarfetch = bit5(GlobalPointer + 0x1117)
ItemFanaticCubone = bit6(GlobalPointer + 0x1117)
ItemFanaticChansey = bit7(GlobalPointer + 0x1117)
ItemFanaticDitto = bit0(GlobalPointer + 0x1118)
ItemFanaticClamperl = bit1(GlobalPointer + 0x1118)

ItemFanaticItems = [
ItemFanaticPikachu,
ItemFanaticFarfetch ,
ItemFanaticCubone ,
ItemFanaticChansey ,
ItemFanaticDitto ,
ItemFanaticClamperl ,
]

CheriBerry = 0x0095
ChestoBerry = 0x0096
PechaBerry = 0x0097
RawstBerry = 0x0098
AspearBerry = 0x0099
LeppaBerry = 0x009A
OranBerry = 0x009B
PersimBerry = 0x009C
LumBerry = 0x009D
SitrusBerry = 0x009E
FigyBerry = 0x009F
WikiBerry = 0x00A0
MagoBerry = 0x00A1
AguavBerry = 0x00A2
IapapaBerry = 0x00A3
RazzBerry = 0x00A4
BlukBerry = 0x00A5
NanabBerry = 0x00A6
WepearBerry = 0x00A7
PinapBerry = 0x00A8
PomegBerry = 0x00A9
KelpsyBerry = 0x00AA
QualotBerry = 0x00AB
HondewBerry = 0x00AC
GrepaBerry = 0x00AD
TamatoBerry = 0x00AE
CornnBerry = 0x00AF
MagostBerry = 0x00B0
RabutaBerry = 0x00B1
NomelBerry = 0x00B2
SpelonBerry = 0x00B3
PamtreBerry = 0x00B4
WatmelBerry = 0x00B5
DurinBerry = 0x00B6
BelueBerry = 0x00B7
OccaBerry = 0x00B8
PasshoBerry = 0x00B9
WacanBerry = 0x00BA
RindoBerry = 0x00BB
YacheBerry = 0x00BC
ChopleBerry = 0x00BD
KebiaBerry = 0x00BE
ShucaBerry = 0x00BF
CobaBerry = 0x00C0
PayapaBerry = 0x00C1
TangaBerry = 0x00C2
ChartiBerry = 0x00C3
KasibBerry = 0x00C4
HabanBerry = 0x00C5
ColburBerry = 0x00C6
BabiriBerry = 0x00C7
ChilanBerry = 0x00C8
LiechiBerry = 0x00C9
GanlonBerry = 0x00CA
SalacBerry = 0x00CB
PetayaBerry = 0x00CC
ApicotBerry = 0x00CD
LansatBerry = 0x00CE
StarfBerry = 0x00CF
EnigmaBerry = 0x00D0
MicleBerry = 0x00D1
CustapBerry = 0x00D2
JabocaBerry = 0x00D3
RowapBerry = 0x00D4

Berries = [
    CheriBerry,
ChestoBerry,
PechaBerry,
RawstBerry,
AspearBerry,
LeppaBerry,
OranBerry,
PersimBerry,
LumBerry,
SitrusBerry,
FigyBerry,
WikiBerry,
MagoBerry,
AguavBerry,
IapapaBerry,
RazzBerry,
BlukBerry,
NanabBerry,
WepearBerry,
PinapBerry,
PomegBerry,
KelpsyBerry,
QualotBerry,
HondewBerry,
GrepaBerry,
TamatoBerry,
CornnBerry,
MagostBerry,
RabutaBerry,
NomelBerry,
SpelonBerry,
PamtreBerry,
WatmelBerry,
DurinBerry,
BelueBerry,
OccaBerry,
PasshoBerry,
WacanBerry,
RindoBerry,
YacheBerry,
ChopleBerry,
KebiaBerry,
ShucaBerry,
CobaBerry,
PayapaBerry,
TangaBerry,
ChartiBerry,
KasibBerry,
HabanBerry,
ColburBerry,
BabiriBerry,
ChilanBerry,
LiechiBerry,
GanlonBerry,
SalacBerry,
PetayaBerry,
ApicotBerry,
LansatBerry,
StarfBerry,
EnigmaBerry,
MicleBerry,
CustapBerry,
JabocaBerry,
RowapBerry,
]

TM01 = 0x0148
TM02 = 0x0149
TM03 = 0x014A
TM04 = 0x014B
TM05 = 0x014C
TM06 = 0x014D
TM07 = 0x014E
TM08 = 0x014F
TM09 = 0x0150
TM10 = 0x0151
TM11 = 0x0152
TM12 = 0x0153
TM13 = 0x0154
TM14 = 0x0155
TM15 = 0x0156
TM16 = 0x0157
TM17 = 0x0158
TM18 = 0x0159
TM19 = 0x015A
TM20 = 0x015B
TM21 = 0x015C
TM22 = 0x015D
TM23 = 0x015E
TM24 = 0x015F
TM25 = 0x0160
TM26 = 0x0161
TM27 = 0x0162
TM28 = 0x0163
TM29 = 0x0164
TM30 = 0x0165
TM31 = 0x0166
TM32 = 0x0167
TM33 = 0x0168
TM34 = 0x0169
TM35 = 0x016A
TM36 = 0x016B
TM37 = 0x016C
TM38 = 0x016D
TM39 = 0x016E
TM40 = 0x016F
TM41 = 0x0170
TM42 = 0x0171
TM43 = 0x0172
TM44 = 0x0173
TM45 = 0x0174
TM46 = 0x0175
TM47 = 0x0176
TM48 = 0x0177
TM49 = 0x0178
TM50 = 0x0179
TM51 = 0x017A
TM52 = 0x017B
TM53 = 0x017C
TM54 = 0x017D
TM55 = 0x017E
TM56 = 0x017F
TM57 = 0x0180
TM58 = 0x0181
TM59 = 0x0182
TM60 = 0x0183
TM61 = 0x0184
TM62 = 0x0185
TM63 = 0x0186
TM64 = 0x0187
TM65 = 0x0188
TM66 = 0x0189
TM67 = 0x018A
TM68 = 0x018B
TM69 = 0x018C
TM70 = 0x018D
TM71 = 0x018E
TM72 = 0x018F
TM73 = 0x0190
TM74 = 0x0191
TM75 = 0x0192
TM76 = 0x0193
TM77 = 0x0194
TM78 = 0x0195
TM79 = 0x0196
TM80 = 0x0197
TM81 = 0x0198
TM82 = 0x0199
TM83 = 0x019A
TM84 = 0x019B
TM85 = 0x019C
TM86 = 0x019D
TM87 = 0x019E
TM88 = 0x019F
TM89 = 0x01A0
TM90 = 0x01A1
TM91 = 0x01A2
TM92 = 0x01A3
HM01 = 0x01A4
HM02 = 0x01A5
HM03 = 0x01A6
HM04 = 0x01A7
HM05 = 0x01A8
HM06 = 0x01A9
HM07 = 0x01AA
HM08 = 0x01AB

TMs = [
    TM01,
TM02,
TM03,
TM04,
TM05,
TM06,
TM07,
TM08,
TM09,
TM10,
TM11,
TM12,
TM13,
TM14,
TM15,
TM16,
TM17,
TM18,
TM19,
TM20,
TM21,
TM22,
TM23,
TM24,
TM25,
TM26,
TM27,
TM28,
TM29,
TM30,
TM31,
TM32,
TM33,
TM34,
TM35,
TM36,
TM37,
TM38,
TM39,
TM40,
TM41,
TM42,
TM43,
TM44,
TM45,
TM46,
TM47,
TM48,
TM49,
TM50,
TM51,
TM52,
TM53,
TM54,
TM55,
TM56,
TM57,
TM58,
TM59,
TM60,
TM61,
TM62,
TM63,
TM64,
TM65,
TM66,
TM67,
TM68,
TM69,
TM70,
TM71,
TM72,
TM73,
TM74,
TM75,
TM76,
TM77,
TM78,
TM79,
TM80,
TM81,
TM82,
TM83,
TM84,
TM85,
TM86,
TM87,
TM88,
TM89,
TM90,
TM91,
TM92,
HM01,
HM02,
HM03,
HM04,
HM05,
HM06,
HM07,
HM08,  
]

function SumFlags(Flags){
    return PointerCheck() &&
    measured(sum_of(Flags, f => f) == length(Flags)) &&
    sum_of(Flags, f => prev(f)) == length(Flags)-1 
}

function SumFlagsRange(Flags, range){
    return PointerCheck() &&
    measured(sum_of(Flags, f => f) == length(Flags)) &&
    sum_of(Flags, f => prev(f)) < length(Flags) &&
    sum_of(Flags, f => prev(f)) > length(Flags) - range
}

achievement(
    title = "Signature Items",
    description = "Obtain all the possible items from the Item Fanatic",
    points = 5,
    trigger = SumFlags(ItemFanaticItems)    
)

BerryStart = 0x000c00 //Offset
TMsStart = 0x9A0

function InventoryCheck(start, ids){
    logicIDS = always_true()
    logicQuantity = 0
    logicQuantityPrev = 0
    BerryTemp = start
    for id in ids{
        logicIDS = logicIDS && word(GlobalPointer + BerryTemp) == id
        logicQuantity = logicQuantity + word(GlobalPointer + BerryTemp)/word(GlobalPointer + BerryTemp)
        logicQuantityPrev = logicQuantityPrev + prev(word(GlobalPointer + BerryTemp))/prev(word(GlobalPointer + BerryTemp))
        BerryTemp = BerryTemp + 4
    }
    return logicIDS && measured(logicQuantity == length(ids)) && logicQuantityPrev == length(ids) -1
}

achievement(
    title = "Berry Nice",
    description = "Have all the different kinds of Berries",
    points = 25,
    trigger = PointerCheck() && InventoryCheck(BerryStart, Berries)    
)

achievement(
    title = "Technical Machine",
    description = "Have all the TMs and HMs",
    points = 25,
    trigger = PointerCheck() && InventoryCheck(TMsStart, TMs)    
)

achievement(
    title = "Trainer Slaughter",
    description = "Defeat every non-missable trainer",
    points = 25,
    trigger = PointerCheck() && SumFlagsRange(Trainers, 10)  
)

BattleTowerWins = word(GlobalPointer +0x68F4)

achievement(
    title = "No Missing Content",
    description = "Defeat 100 Trainers in a row in the Battle Tower",
    points = 50,
    trigger = PointerCheck() && BattleTowerWins >= 100 && prev(BattleTowerWins) < 100 && prev(BattleTowerWins) != 0
)