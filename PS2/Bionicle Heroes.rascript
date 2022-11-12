// Bionicle Heroes
// #ID = 21362

// $4A0A7F: Bit 7 = Last resort ingame screen indicator, could be used as save proc
SaveProc = bit7(0x4A0A7F)
// $4AC8D0: stage id?
// $4B1C90: [32-bit] Pointer
//          +0x0000ced8 = HP [Float]
//          +0x0000cf4c = Current Studs [Float]

// $65E2A8: [8-bit] Shop - Hint 1
//          0x00 = Not Unlocked
//          0x01 = Unlocked
Hint1 = 0x65E2A8
// $65E2A9: [8-bit] Shop - Hint 2
// $65E2AA: [8-bit] Shop - Hint 3
// $65E2AB: [8-bit] Shop - Hint 4
// $65E2AC: [8-bit] Shop - Hint 5
// $65E2AD: [8-bit] Shop - Hint 6
// $65E2AE: [8-bit] Shop - Hint 7
// $65E2AF: [8-bit] Shop - Hint 8
// $65E2B0: [8-bit] Shop - Hint 9
// $65E2B1: [8-bit] Shop - Hint 10
// $65E2B2: [8-bit] Shop - Hint 11
// $65E2B3: [8-bit] Shop - Hint 12
// $65E2B4: [8-bit] Shop - Hint 13
// $65E2B5: [8-bit] Shop - Hint 14
// $65E2B6: [8-bit] Shop - Hint 15
// $65E2B7: [8-bit] Shop - Hint 16
// $65E2B8: [8-bit] Shop - Hint 17
// $65E2B9: [8-bit] Shop - Hint 18
// $65E2BA: [8-bit] Shop - Hint 19
// $65E2BB: [8-bit] Shop - Hint 20
Hint20 = byte(0x65E2BB)

FirstGoodie = 0x65E2E8
// $65E2E8: [8-bit] Shop - 50% Discount 1
// $65E2E9: [8-bit] Shop - Piraka diving board 2
// $65E2EA: [8-bit] Shop - Piraka VIP lounge 3
// $65E2EB: [8-bit] Shop - Piraka DJ booth 4 
// $65E2EC: [8-bit] Shop - Piraka dance floor 5 
// $65E2ED: [8-bit] Shop - Piraka fitness equipment6
// $65E2EE: [8-bit] Shop - Piraka bucking bronco 7
// $65E2EF: [8-bit] Shop - Piraka sun lounger 8
// $65E2F0: [8-bit] Shop - Piraka sand castles 9 
// $65E2F1: [8-bit] Shop - Piraka shooting gallery 10
// $65E2F2: [8-bit] Shop - Piraka windsurfer 11
// $65E2F3: [8-bit] Shop - Piraka pedalo 12
// $65E2F4: [8-bit] Shop - Piraka seesaw 13
// $65E2F5: [8-bit] Shop - Bonus level 1 14 15
// $65E2F6: [8-bit] Shop - Bonus level 215
// $65E2F7: [8-bit] Shop - Bonus level 3 16
// $65E2F8: [8-bit] Shop - Canister locator 17
LastGoodie = byte(0x65E2F8)


// $65E328: [8-bit] Unlocked Trophy Room
// $65E329: [8-bit] Unlocked Creature Chambers
// $65E32A: [8-bit] Unlocked Piraka Playground


NotCompleted = 0x00
Standard = 0x01
Bronze = 0x02
Silver = 0x03
Gold = 0x04




//Vezok's Coastline Completions

// $65E345: [8-bit] Piraka Bluff - Completion Grade
PirakaBluffCompletion = byte(0x65E345)
PirakaBluffCanisterStart = 0x65DF1B
// $65DF1B: [8-bit] Piraka Bluff - Silver Canister 1
//          0x01 = Not Unlocked
//          0x00 = Unlocked
// $65DF1C: [8-bit] Piraka Bluff - Silver Canister 2
// $65DF1D: [8-bit] Piraka Bluff - Silver Canister 3
// $65DF1E: [8-bit] Piraka Bluff - Silver Canister 4
// $65DF1F: [8-bit] Piraka Bluff - Silver Canister 5
VezokGold1 = byte(0x65E223)// $65E223: [8-bit] Golden Canister - Silver Krana Kal Xa
VezokGold2 = byte(0x65E22A)// $65E22A: [8-bit] Golden Canister - Silver Krana Kal Za
VezokGold3 = byte(0x65E231)// $65E231: [8-bit] Golden Canister - Silver Krana Kal Vu
VezokGold4 = byte(0x65E238)// $65E238: [8-bit] Golden Canister - Silver Krana Kal Bo


// $65E346: [8-bit] Smugglers Cove - Completion Grade
SmugglersCoveCompletion = byte(0x65E346)
SmugglersCoveCanisterStart = 0x65DF29
// $65DF29: [8-bit] Smugglers Cove - Silver Canister 1
// $65DF2A: [8-bit] Smugglers Cove - Silver Canister 2
// $65DF2B: [8-bit] Smugglers Cove - Silver Canister 3
// $65DF2C: [8-bit] Smugglers Cove - Silver Canister 4
// $65DF2D: [8-bit] Smugglers Cove - Silver Canister 5
VezokGold5 = byte(0x65E23F) // $65E23F: [8-bit] Golden Canister - Silver Krana Kal Su
VezokGold6 = byte(0x65E246)// $65E246: [8-bit] Golden Canister - Silver Krana Kal Ca
VezokGold7 = byte(0x65E24D)// $65E24D: [8-bit] Golden Canister - Silver Krana Kal Yo
VezokGold8 = byte(0x65E254)// $65E254: [8-bit] Golden Canister - Tahu Nuva's Kanohi Hau


// $65E347: [8-bit] Shattered Wreck - Completion Grade
ShatteredWreckCompletion = byte(0x65E347)
ShatteredWreckCanisterStart = 0x65DF37
// $65DF37: [8-bit] Shattered Wreck - Silver Canister 1
// $65DF38: [8-bit] Shattered Wreck - Silver Canister 2
// $65DF39: [8-bit] Shattered Wreck - Silver Canister 3
// $65DF3A: [8-bit] Shattered Wreck - Silver Canister 4
// $65DF3B: [8-bit] Shattered Wreck - Silver Canister 5
VezokGold9 = byte(0x65E25B)// $65E25B: [8-bit] Golden Canister - Onua Nuva's Kanohi Pakari Nuva
VezokGold10 = byte(0x65E262)// $65E262: [8-bit] Golden Canister - Gali Nuva's Kanohi Kakau Nuva
VezokGold11 = byte(0x65E269)// $65E269: [8-bit] Golden Canister - Pohatu Nuva's Kanohi Kakama Nuva
VezokGold12 = byte(0x65E270)// $65E270: [8-bit] Golden Canister - Lewa Nuva's Kanohi Miru Nuva


// $65E348: [8-bit] Vezok's Deluge - Completion Grade
VezokDelugeCompletion = byte(0x65E348)
VezokGold13 = byte(0x65E277)// $65E277: [8-bit] Golden Canister - Kopaka Nuva's Kanohi Akaku Nuva
VezokGold14 = byte(0x65E27E)// $65E27E: [8-bit] Golden Canister - Solid Gold Hau
VezokGold15 = byte(0x65E285)// $65E285: [8-bit] Golden Canister - Rhotuka
VezokGold16 = byte(0x65E28C)// $65E28C: [8-bit] Golden Canister - Makuta Stone

VezokGolds = [VezokGold1, VezokGold2, VezokGold3, VezokGold4, VezokGold5, VezokGold6, VezokGold7, VezokGold8, VezokGold9, VezokGold10, VezokGold11, VezokGold12, VezokGold13, VezokGold14, VezokGold15, VezokGold16]

VezokCoastLineCompletions = [PirakaBluffCompletion, SmugglersCoveCompletion, ShatteredWreckCompletion, VezokDelugeCompletion]
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//Avak's Stronghold Completions
// $65E349: [8-bit] Decrepit Dungeons - Completion Grade
DecrepitDungeonsCompletion = byte(0x65E349)
DecrepitDungeonsCanistersStart = 0x65DF45
// $65DF45: [8-bit] Decrepit Dungeons - Silver Canister 1
// $65DF46: [8-bit] Decrepit Dungeons - Silver Canister 2
// $65DF47: [8-bit] Decrepit Dungeons - Silver Canister 3
// $65DF48: [8-bit] Decrepit Dungeons - Silver Canister 4
// $65DF49: [8-bit] Decrepit Dungeons - Silver Canister 5
AvakGold1 = byte(0x65E143)// $65E143: [8-bit] Golden Canister - Protodermic Kanohi Akaku Nuva
AvakGold2 = byte(0x65E14A)// $65E14A: [8-bit] Golden Canister - Protodermic Kanohi Hau
AvakGold3 = byte(0x65E151)// $65E151: [8-bit] Golden Canister - Protodermic Kanohi Kaukau
AvakGold4 = byte(0x65E158)// $65E158: [8-bit] Golden Canister - Protodermic Kanohi Pakari


// $65E34A: [8-bit] Cleansing Plant - Completion Grade
CleansingPlantCompletion = byte(0x65E34A)
CleansingCanistersStart = 0x65DF53
// $65DF53: [8-bit] Cleansing Plant - Silver Canister 1
// $65DF54: [8-bit] Cleansing Plant - Silver Canister 2
// $65DF55: [8-bit] Cleansing Plant - Silver Canister 3
// $65DF56: [8-bit] Cleansing Plant - Silver Canister 4
// $65DF57: [8-bit] Cleansing Plant - Silver Canister 5
AvakGold5 = byte(0x65E15F)// $65E15F: [8-bit] Golden Canister - Protodermic Kanohi Kakama
AvakGold6 = byte(0x65E166)// $65E166: [8-bit] Golden Canister - Protodermic Kanohi Miru
AvakGold7 = byte(0x65E16D)// $65E16D: [8-bit] Golden Canister - Protodermic Kanohi Akaku
AvakGold8 = byte(0x65E174)// $65E174: [8-bit] Golden Canister - Copper Kanohi Komau


// $65E34B: [8-bit] Menacing Keep - Completion Rank
MenacingKeepCompletion = byte(0x65E34B)
MenacingKeepCanistersStart = 0x65DF61
// $65DF61: [8-bit] Menacing Keep - Silver Canister 1
// $65DF62: [8-bit] Menacing Keep - Silver Canister 2
// $65DF63: [8-bit] Menacing Keep - Silver Canister 3
// $65DF64: [8-bit] Menacing Keep - Silver Canister 4
// $65DF65: [8-bit] Menacing Keep - Silver Canister 5
AvakGold9 = byte(0x65E17B)// $65E17B: [8-bit] Golden Canister - Mask of Elemental Energy
AvakGold10 = byte(0x65E182)// $65E182: [8-bit] Golden Canister - Turaga Vakama's Kanohi Huna
AvakGold11 = byte(0x65E189)// $65E189: [8-bit] Golden Canister - Turaga Nokama's Kanohi Rau
AvakGold12 = byte(0x65E190)// $65E190: [8-bit] Golden Canister - Turaga Matau's Kanohi Mahiki


// $65E34C: [8-bit] Avak's Dynamo - Completion Rank
AvakDynamoCompletion = byte(0x65E34C)
AvakGold13 = byte(0x65E197)// $65E197: [8-bit] Golden Canister - Turaga Nuju's Kanohi Matatu
AvakGold14 = byte(0x65E19E)// $65E19E: [8-bit] Golden Canister - Turaga Onewa's Kanohi Komau
AvakGold15 = byte(0x65E1A5)// $65E1A5: [8-bit] Golden Canister - Turaga Whenua's Kanohi Ruru
AvakGold16 = byte(0x65E1AC)// $65E1AC: [8-bit] Golden Canister - Jaller's Kanohi Hau
AvakStrongholdCompletions = [DecrepitDungeonsCompletion, CleansingPlantCompletion, MenacingKeepCompletion, AvakDynamoCompletion]
AvakGolds = [AvakGold1, AvakGold2, AvakGold3 , AvakGold4 , AvakGold5 , AvakGold6 , AvakGold7 , AvakGold8 , AvakGold9 , AvakGold10 , AvakGold11, AvakGold12 , AvakGold13 , AvakGold14 , AvakGold15, AvakGold16]
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//Thok's Moountain Completions
// $65E34D: [8-bit] Flooded Lowlands - Completion Grade
FloodedLowlandsCompletion = byte(0x65E34D)
FloodedLowlandCanistersStart = 0x65DEF8
// $65DEF8: [8-bit] Flooded Lowlands - Silver Canister 1
// $65DEF9: [8-bit] Flooded Lowlands - Silver Canister 2
// $65DEFA: [8-bit] Flooded Lowlands - Silver Canister 3
// $65DEFB: [8-bit] Flooded Lowlands - Silver Canister 4
// $65DEFC: [8-bit] Flooded Lowlands - Silver Canister 5
ThokGold1 = byte(0x65E0D3)// $65E0D3: [8-bit] Golden Canister - Nokama's Toa Disk
ThokGold2 = byte(0x65E0DA)// $65E0DA: [8-bit] Golden Canister - Nuju's Toa Disk
ThokGold3 = byte(0x65E0E1)// $65E0E1: [8-bit] Golden Canister - Matau's Toa Disk
ThokGold4 = byte(0x65E0E8)// $65E0E8: [8-bit] Golden Canister - Onewa's Toa Disk


// $65E34E: [8-bit] Mountain Path - Completion Grade
MountainPathCompletion = byte(0x65E34E)
MountainPathCanistersStart = 0x65DF06
// $65DF06: [8-bit] Mountain Path - Silver Canister 1
// $65DF07: [8-bit] Mountain Path - Silver Canister 2
// $65DF08: [8-bit] Mountain Path - Silver Canister 3
// $65DF09: [8-bit] Mountain Path - Silver Canister 4
// $65DF0A: [8-bit] Mountain Path - Silver Canister 5
ThokGold5 = byte(0x65E0EF)// $65E0EF: [8-bit] Golden Canister - Whenua's Toa Disk
ThokGold6 = byte(0x65E0F6)// $65E0F6: [8-bit] Golden Canister - Taku's Kanohi Hau
ThokGold7 = byte(0x65E0FD)// $65E0FD: [8-bit] Golden Canister - Pohatu's Kanohi Kakama
ThokGold8 = byte(0x65E104)// $65E104: [8-bit] Golden Canister - Onua's Kanohi Pakari


// $65E34F: [8-bit] Blizzard Peaks - Completion Grade
BlizzardPeaksCompletion = byte(0x65E34F)
BlizzardPeaksCanistersStart = 0x65DF14
// $65DF14: [8-bit] Blizzard Peaks - Silver Canister 1
// $65DF15: [8-bit] Blizzard Peaks - Silver Canister 2
// $65DF16: [8-bit] Blizzard Peaks - Silver Canister 3
// $65DF17: [8-bit] Blizzard Peaks - Silver Canister 4
// $65DF18: [8-bit] Blizzard Peaks - Silver Canister 5
ThokGold9 = byte(0x65E10B)// $65E10B: [8-bit] Golden Canister - Kopaka's Kanohi Akaku
ThokGold10 = byte(0x65E112)// $65E112: [8-bit] Golden Canister - Gali's Kanohi Kaukau
ThokGold11 = byte(0x65E119)// $65E119: [8-bit] Golden Canister - Lewa's Kanohi Miru
ThokGold12 = byte(0x65E120)// $65E120: [8-bit] Golden Canister - Protodermic Kanohi Hau Nuva

// $65E350: [8-bit] Thok's Grotto - Completion Grade
ThokGrotto = byte(0x65E350)

ThokGold13 = byte(0x65E127)// $65E127: [8-bit] Golden Canister - Protodermic Kanohi Kaukau Nuva
ThokGold14 = byte(0x65E12E)// $65E12E: [8-bit] Golden Canister - Protodermic Kanohi Miru Nuva
ThokGold15 = byte(0x65E135)// $65E135: [8-bit] Golden Canister - Protodermic Kanohi Pakari Nuva
ThokGold16 = byte(0x65E13C)// $65E13C: [8-bit] Golden Canister - Protodermic Kanohi Kakama Nuva
ThokMountainCompletions = [FloodedLowlandsCompletion, MountainPathCompletion, BlizzardPeaksCompletion, ThokGrotto]
ThokGolds = [ThokGold1, ThokGold2, ThokGold3, ThokGold4, ThokGold5, ThokGold6, ThokGold7, ThokGold8, ThokGold9, ThokGold10, ThokGold11, ThokGold12 , ThokGold13, ThokGold14, ThokGold15, ThokGold16]
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//Reidak's Desert Completions
// $65E355: [8-bit] Desert Outpost - Completion Rate
DesertOutpostCompletion = byte(0x65E355)
DesertOutpostCanistersStart = 0x65DF4C
// $65DF4C: [8-bit] Desert Outpost - Silver Canister 1
// $65DF4D: [8-bit] Desert Outpost - Silver Canister 2
// $65DF4E: [8-bit] Desert Outpost - Silver Canister 3
// $65DF4F: [8-bit] Desert Outpost - Silver Canister 4
// $65DF50: [8-bit] Desert Outpost - Silver Canister 5
ReidakGold1 = byte(0x65E008)// $65E008: [8-bit] Golden Canister - Copper Kanohi Huna
ReidakGold2 = byte(0x65E00F)// $65E00F: [8-bit] Golden Canister - Kanohi Kraahkan
ReidakGold3 = byte(0x65E016)// $65E016: [8-bit] Golden Canister - Kanohi Avohkii
ReidakGold4 = byte(0x65E01D)// $65E01D: [8-bit] Golden Canister - Iruini's Kanohi Kualsi


// $65E356: [8-bit] Bleak Refinery - Completion Rate
BleakRefineryCompletion = byte(0x65E356)
BleakRefineryCanistersStart = 0x65DF5A
// $65DF5A: [8-bit] Bleak Refinery - Silver Canister 1
// $65DF5B: [8-bit] Bleak Refinery - Silver Canister 2
// $65DF5C: [8-bit] Bleak Refinery - Silver Canister 3
// $65DF5D: [8-bit] Bleak Refinery - Silver Canister 4
// $65DF5E: [8-bit] Bleak Refinery - Silver Canister 5
ReidakGold5 = byte(0x65E024)// $65E024: [8-bit] Golden Canister - Norik's Kanohi Pehkui
ReidakGold6 = byte(0x65E293)// $65E293: [8-bit] Golden Canister - Mata Nui Stone
ReidakGold7 = byte(0x65E29A)// $65E29A: [8-bit] Golden Canister - COMPETITION WINNER
ReidakGold8 = byte(0x65E2A1)// $65E2A1: [8-bit] Golden Canister - Kanohi Ignika


// $65E357: [8-bit] Ancient Citadel - Completion Rate
AncientCitadelCompletion = byte(0x65E357)
AncientCitadelCanisterStart = 0x65DF68
// $65DF68: [8-bit] Ancient Citadel - Silver Canister 1
// $65DF69: [8-bit] Ancient Citadel - Silver Canister 2
// $65DF6A: [8-bit] Ancient Citadel - Silver Canister 3
// $65DF6B: [8-bit] Ancient Citadel - Silver Canister 4
// $65DF6C: [8-bit] Ancient Citadel - Silver Canister 5
ReidakGold9 = byte(0x65E02B)// $65E02B: [8-bit] Golden Canister - Dume's Kanohi Kiril
ReidakGold10 = byte(0x65E032)// $65E032: [8-bit] Golden Canister - Kanohi Aki
ReidakGold11 = byte(0x65E039)// $65E039: [8-bit] Golden Canister - Lhikan's Kanohi Hau
ReidakGold12 = byte(0x65E040)// $65E040: [8-bit] Golden Canister - Ga-Metru Great Disk

// $65E358: [8-bit] Reidak's Bastion - Completion Rate
ReidakBastionCompletion = byte(0x65E358)
ReidakGold13 = byte(0x65E047)// $65E047: [8-bit] Golden Canister - Le-Mestru Great Disk
ReidakGold14 = byte(0x65E04E)// $65E04E: [8-bit] Golden Canister - Ko-Metru Great Disk
ReidakGold15 = byte(0x65E055)// $65E055: [8-bit] Golden Canister - Ta-Mestru Great Disk
ReidakGold16 = byte(0x65E05C)// $65E05C: [8-bit] Golden Canister - Po-Metru Great Disk
ReidakDesertCompletions = [DesertOutpostCompletion, BleakRefineryCompletion, AncientCitadelCompletion, ReidakBastionCompletion]
ReidakGolds = [ReidakGold1, ReidakGold2, ReidakGold3, ReidakGold4 , ReidakGold5, ReidakGold6, ReidakGold7, ReidakGold8, ReidakGold9, ReidakGold10, ReidakGold11, ReidakGold12, ReidakGold13, ReidakGold14, ReidakGold15,
ReidakGold16]
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//Hakann's Volcano Completions
// $65E341: [8-bit] Scorched Earth - Completion Grade
ScorchedEarthCompletion = byte(0x65E341)
ScorchedEarthCanistersStart = 0x65DEF1
// $65DEF1: [8-bit] Scorched Earth - Silver Canister 1
// $65DEF2: [8-bit] Scorched Earth - Silver Canister 2
// $65DEF3: [8-bit] Scorched Earth - Silver Canister 3
// $65DEF4: [8-bit] Scorched Earth - Silver Canister 4
// $65DEF5: [8-bit] Scorched Earth - Silver Canister 5
HakannGold1 = byte(0x65E1B3)// $65E1B3: [8-bit] Golden Canister - Kongu's Kanohi Miru
HakannGold2 = byte(0x65E1BA)// $65E1BA: [8-bit] Golden Canister - Matoro's Kanohi Akaku
HakannGold3 = byte(0x65E1C1)// $65E1C1: [8-bit] Golden Canister - Hahli's Kanohi Kaukau
HakannGold4 = byte(0x65E1C8)// $65E1C8: [8-bit] Golden Canister - Nuparu's Kanohi Pakari

// $65E342: [8-bit] Volcanic Trail - Completion Grade
VolcanicTrailCompletion = byte(0x65E342)
VolcanicTrailCanistersStart = 0x65DEFF
// $65DEFF: [8-bit] Volcanic Trail - Silver Canister 1
// $65DF00: [8-bit] Volcanic Trail - Silver Canister 2
// $65DF01: [8-bit] Volcanic Trail - Silver Canister 3
// $65DF02: [8-bit] Volcanic Trail - Silver Canister 4
// $65DF03: [8-bit] Volcanic Trail - Silver Canister 5
HakannGold5 = byte(0x65E1CF)// $65E1CF: [8-bit] Golden Canister - Hewkii's Kanohi Kakama
HakannGold6 = byte(0x65E1D6)// $65E1D6: [8-bit] Golden Canister - Takua's Kanohi Pakari
HakannGold7 = byte(0x65E1DD)// $65E1DD: [8-bit] Golden Canister - Hafu's Kanohi Ruru
HakannGold8 = byte(0x65E1E4)// $65E1E4: [8-bit] Golden Canister - Macku's Kanohi Huna

// $65E343: [8-bit] Fiery Mine - Completion Grade
FieryMineCompletion = byte(0x65E343)
FieryMineCanistersStart = 0x65DF0D
// $65DF0D: [8-bit] Fiery Mine - Silver Canister 1
// $65DF0E: [8-bit] Fiery Mine - Silver Canister 2
// $65DF0F: [8-bit] Fiery Mine - Silver Canister 3
// $65DF10: [8-bit] Fiery Mine - Silver Canister 4
// $65DF11: [8-bit] Fiery Mine - Silver Canister 5
HakannGold9 = byte(0x65E1EB)// $65E1EB: [8-bit] Golden Canister - Onepu's Kanohi Pakari
HakannGold10 = byte(0x65E1F2)// $65E1F2: [8-bit] Golden Canister - Toa Matau's Kanohi Mahiki
HakannGold11 = byte(0x65E1F9)// $65E1F9: [8-bit] Golden Canister - Toa Nokama's Kanohi Rau
HakannGold12 = byte(0x65E200)// $65E200: [8-bit] Golden Canister - Toa Nuju's Kanohi Matatu

// $65E344: [8-bit] Hakann's Pit - Completion Grade
HakannsPitCompletion = byte(0x65E344)
HakannGold13 = byte(0x65E207)// $65E207: [8-bit] Golden Canister - Toa Vakama's Kanohi Huna
HakannGold14 = byte(0x65E20E)// $65E20E: [8-bit] Golden Canister - Toa Whenua's Kanohi Ruru
HakannGold15 = byte(0x65E215)// $65E215: [8-bit] Golden Canister - Toa Onewa's Kanohi Komau
HakannGold16 = byte(0x65E21C)// $65E21C: [8-bit] Golden Canister - Silver Krana Kal Ja
HakannVolcanoCompletions = [ScorchedEarthCompletion, VolcanicTrailCompletion, FieryMineCompletion, HakannsPitCompletion]
HakannGolds = [HakannGold1, HakannGold2, HakannGold3, HakannGold4, HakannGold5, HakannGold6, HakannGold7, HakannGold8, HakannGold9 , 
HakannGold10, HakannGold11, HakannGold12, HakannGold13, HakannGold14, HakannGold15, HakannGold16]
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//Zaktan Jungle Completions
// $65E351: [8-bit] Logging Post - Completion Grade
LoggingPostCompletion = byte(0x65E351)
LoggingPostCanistersStart = 0x65DF22
// $65DF22: [8-bit] Logging Post - Silver Canister 1
// $65DF23: [8-bit] Logging Post - Silver Canister 2
// $65DF24: [8-bit] Logging Post - Silver Canister 3
// $65DF25: [8-bit] Logging Post - Silver Canister 4
// $65DF26: [8-bit] Logging Post - Silver Canister 5
ZaktanGold1 = byte(0x65E063)// $65E063: [8-bit] Golden Canister - Onu-Metru Great Disk
ZaktanGold2 = byte(0x65E06A)// $65E06A: [8-bit] Golden Canister - Disk of Time
ZaktanGold3 = byte(0x65E071)// $65E071: [8-bit] Golden Canister - Shadow Kraata Level 1
ZaktanGold4 = byte(0x65E078)// $65E078: [8-bit] Golden Canister - Shadow Kraata Level 2

// $65E352: [8-bit] Ancient Forest - Completion Grade
AncientForestCompletion = byte(0x65E352)
AncientForestCanistersStart = 0x65DF30
// $65DF30: [8-bit] Ancient Forest - Silver Canister 1
// $65DF31: [8-bit] Ancient Forest - Silver Canister 2
// $65DF32: [8-bit] Ancient Forest - Silver Canister 3
// $65DF33: [8-bit] Ancient Forest - Silver Canister 4
// $65DF34: [8-bit] Ancient Forest - Silver Canister 5
ZaktanGold5 = byte(0x65E07F)// $65E07F: [8-bit] Golden Canister - Shadow Kraata Level 3
ZaktanGold6 = byte(0x65E086)// $65E086: [8-bit] Golden Canister - Shadow Kraata Level 4
ZaktanGold7 = byte(0x65E08D)// $65E08D: [8-bit] Golden Canister - Shadow Kraata Level 5
ZaktanGold8 = byte(0x65E094)// $65E094: [8-bit] Golden Canister - Shadow Kraata Level 6

// $65E353: [8-bit] Forgotten Shrine - Completion Grade
ForgottenShrineCompletion = byte(0x65E353)
ForgottenShrineCanistersStart = 0x65DF3E
// $65DF3E: [8-bit] Forgotten Shrine - Silver Canister 1
// $65DF3F: [8-bit] Forgotten Shrine - Silver Canister 2
// $65DF40: [8-bit] Forgotten Shrine - Silver Canister 3
// $65DF41: [8-bit] Forgotten Shrine - Silver Canister 4
// $65DF42: [8-bit] Forgotten Shrine - Silver Canister 5
ZaktanGold9 = byte(0x65E09B)// $65E09B: [8-bit] Golden Canister - Kanohi Rua
ZaktanGold10 = byte(0x65E0A2)// $65E0A2: [8-bit] Golden Canister - Golden Kanohi Pakari
ZaktanGold11 = byte(0x65E0A9)// $65E0A9: [8-bit] Golden Canister - Golden Kanohi Kakama
ZaktanGold12 = byte(0x65E0B0)// $65E0B0: [8-bit] Golden Canister - Golden Kanohi Hau

// $65E354: [8-bit] Zaktan's Chamber - Completion Grade
ZaktanChamber = byte(0x65E354)
ZaktanGold13 = byte(0x65E0B7)// $65E0B7: [8-bit] Golden Canister - Golden Kanohi Miru
ZaktanGold14 = byte(0x65E0BE)// $65E0BE: [8-bit] Golden Canister - Golden Kanohi Kaukau
ZaktanGold15 = byte(0x65E0C5)// $65E0C5: [8-bit] Golden Canister - Golden Kanohi Akaku
ZaktanGold16 = byte(0x65E0CC)// $65E0CC: [8-bit] Golden Canister - Vakama's Toa Disk
ZaktanJungleCompletions = [LoggingPostCompletion, AncientForestCompletion, ForgottenShrineCompletion, ZaktanChamber]
ZaktanGolds = [ZaktanGold1, ZaktanGold2 , ZaktanGold3 , ZaktanGold4, ZaktanGold5, ZaktanGold6, ZaktanGold7, ZaktanGold8,
 ZaktanGold9 , ZaktanGold10, ZaktanGold11, ZaktanGold12, ZaktanGold13, ZaktanGold14, ZaktanGold15, ZaktanGold16]
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//Vezon Awakening Completion
//0x0065e359 [8-bit] Vezon's Awakening - Completion Rate
VezonAwakeningCompletion = byte(0x0065e359)
// $65DFEC: [8-bit] Golden Canister - Gold Kanohi Vahi
// $65DFF3: [8-bit] Golden Canister - Orange Kanohi Vahi
// $65DFFA: [8-bit] Golden Canister - Infected Kanohi Hau
// $65E001: [8-bit] Golden Canister - Poisoned Kanohi Hau Nuva
VezonGold1 = byte(0x65DFEC)
VezonGold2 = byte(0x65DFF3)
VezonGold3 = byte(0x65DFFA)
VezonGold4 = byte(0x65E001)
VezonGolds = [VezonGold1, VezonGold2, VezonGold3, VezonGold4]
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
ProgressionFlags = {
    "1": {"title": "Severe Deluge", "description": "Complete all levels in Vezok's Coastline", "points": 10, "flags": VezokCoastLineCompletions
    ,"title2": "Perfected Vezok", "description2": "Get a Gold Rank on all the levels in Vezok's Coastline"},
    "2": {"title": "Generating Dynamo", "description": "Complete all levels in Avak's Stronghold", "points": 10, "flags": AvakStrongholdCompletions
    ,"title2": "Excellent Avak", "description2": "Get a Gold Rank on all the levels in Avak's Stronghold"},
    "3": {"title": "Lush Grotto", "description": "Complete all levels in Thok's Mountain", "points": 10, "flags": ThokMountainCompletions
    ,"title2": "Impecabble Thok", "description2": "Get a Gold Rank on all the levels in Thok's Mountain"},
    "4": {"title": "Hollow Bastion", "description": "Complete all levels in Reidak's Desert", "points": 10, "flags": ReidakDesertCompletions
    ,"title2": "Superb Reidak", "description2": "Get a Gold Rank on all the levels in Reidak's Desert"},
    "5": {"title": "Bottomless Pit", "description": "Complete all levels in Hakann's Volcano", "points": 10, "flags": HakannVolcanoCompletions
    ,"title2": "Crowning Hakann", "description2": "Get a Gold Rank on all the levels in Hakann's Volcano"},
    "6": {"title": "Chamber of Secrets", "description": "Complete all levels in Zaktan's Jungle", "points": 10, "flags": ZaktanJungleCompletions
    ,"title2": "Excelling Zaktan", "description2": "Get a Gold Rank on all the levels in Zaktan's Jungle"},
    
}

CanisterFlags = {
    "1": {"title": "Silver Shore", "description": "Collect all the Silver Canisters in Vezok's Coastline", "points": 5, "start1": PirakaBluffCanisterStart, "start2": SmugglersCoveCanisterStart, "start3": ShatteredWreckCanisterStart},
    "2": {"title": "Bright Castle", "description": "Collect all the Silver Canisters in Avak's Stronghold", "points": 5, "start1": DecrepitDungeonsCanistersStart, "start2": CleansingCanistersStart, "start3": MenacingKeepCanistersStart},
    "3": {"title": "White Cliff", "description": "Collect all the Silver Canisters in Thok's Mountain", "points": 5, "start1": FloodedLowlandCanistersStart, "start2": MountainPathCanistersStart, "start3":BlizzardPeaksCanistersStart},
    "4": {"title": "Pearly Barren Wilderness", "description": "Collect all the Silver Canisters in Reidak's Desert", "points": 5, "start1": DesertOutpostCanistersStart, "start2": BleakRefineryCanistersStart, "start3":AncientCitadelCanisterStart },
    "5": {"title": "Pale Sierra", "description": "Collect all the Silver Canisters in Hakann's Volcano", "points": 5, "start1": ScorchedEarthCanistersStart, "start2": VolcanicTrailCanistersStart, "start3":FieryMineCanistersStart},
    "6": {"title": "Sterling Forest", "description": "Collect all the Silver Canisters in Zaktan's Jungle", "points": 5, "start1": LoggingPostCanistersStart, "start2": AncientForestCanistersStart, "start3": ForgottenShrineCanistersStart},   
}

GoldFlags = {
    "1": {"title": "Gold Beach", "description": "Collect all the Golden Canisters in Vezok's Coastline", "points": 5, "flags": VezokGolds},
    "2": {"title": "Aureate Fortress", "description": "Collect all the Golden Canisters in Avak's Stronghold", "points": 5, "flags": AvakGolds},
    "3": {"title": "Blond Pike", "description": "Collect all the Golden Canisters in Thok's Mountain", "points": 5, "flags": ThokGolds},
    "4": {"title": "Honeyed Wasteland", "description": "Collect all the Golden Canisters in Reidak's Desert", "points": 5, "flags": ReidakGolds},
    "5": {"title": "Tan Alp", "description": "Collect all the Golden Canisters in Hakann's Volcano", "points": 5, "flags": HakannGolds},
    "6": {"title": "Wheat Wood", "description": "Collect all the Golden Canisters in Zaktan's Jungle", "points": 5, "flags": ZaktanGolds},       
}

// $65E35A: [8-bit] Extra Level 1
//          0x00 = Not Completed
//          0x01 = Standard
//          0x02 = Bronze
//          0x03 = Silver
//          0x04 = Gold
Extra1Rank = byte(0x65E35A)
// $65E35B: [8-bit] Extra Level 2
Extra2Rank = byte(0x65E35B)
// $65E35C: [8-bit] Extra Level 3
Extra3Rank = byte(0x65E35C)
// $65E371: [8-bit] Scorched Earth Unlocked
// $65E372: [8-bit] Volcanic Trail Unlocked
// $65E373: [8-bit] Fiery Mine Unlocked
// $65E374: [8-bit] Hakann's Pit Unlocked
// $65E375: [8-bit] Piraka Bluff Unlocked
// $65E376: [8-bit] Smugglers Cove unlocked
// $65E377: [8-bit] Shaterred Wreck unlocked
// $65E378: [8-bit] Vezok's Deluge unlocked
// $65E379: [8-bit] Decrepit dungeons unlocked
// $65E37A: [8-bit] Cleansing Plant Unlocked
// $65E37B: [8-bit] Menacing Keep Unlocked
// $65E37C: [8-bit] Avak's Dynamo Unlocked
// $65E37D: [8-bit] Flooded Lowlands unlocked
// $65E37E: [8-bit] Mountain Path Unlocked
// $65E37F: [8-bit] Blizzard Peaks unlocked
// $65E380: [8-bit] Thok's Grotto Unlocked
// $65E381: [8-bit] Logging Post Unlocked
// $65E382: [8-bit] Ancient Forest Unlocked
// $65E383: [8-bit] Forgotten Shrine Unlocked
// $65E384: [8-bit] Zaktan's Chamber Unlocked
// $65E385: [8-bit] Desert Outpost Unlocked
// $65E386: [8-bit] Bleak Refinery Unlocked
// $65E387: [8-bit] Ancient Citadel Unlocked
// $65E388: [8-bit] Reidak's Bastion Unlocked
// $65E389: [8-bit] Vezon's Awakening Unlocked
// $65E38A: bonus level 1 unlocked
// $65E38B: bonus 2
// $65E38C: bonus 3
// $65E3A0: [8-bit] Awards - Scorched Earth Completed
//          0x00 = Not Obtained
//          0x01 = Blue
//          0x02 = Bronze
//          0x03 = Silver
//          0x04 = Gold
// $65E3A1: [8-bit] Awards - Volcanic Trail Completed
// $65E3A2: [8-bit] Awards - Fiery Mine Completed
// $65E3A3: [8-bit] Awards - Hakann's Pit Completed
// $65E3A4: [8-bit] Awards - Piraka Bluff Completed
// $65E3A5: [8-bit] Awards - Smugglers Cove Completed
// $65E3A6: [8-bit] Awards - Shattered Wreck Completed
// $65E3A7: [8-bit] Awards - Vezok's Deluge Completed
// $65E3A8: [8-bit] Awards - Decrepit Dungeons Completed
// $65E3A9: [8-bit] Awards - Cleansing Plant Completed
// $65E3AA: [8-bit] Awards - Menacing Keep Completed
// $65E3AB: [8-bit] Awards - Avak's Dynamo Completed
// $65E3AC: [8-bit] Awards - Flooded Lowlands Completed
// $65E3AD: [8-bit] Awards - Mountain Path Completed
// $65E3AE: [8-bit] Awards - Blizzard Peaks Completed
// $65E3AF: [8-bit] Awards - Thok's Grotto Completed
// $65E3B0: [8-bit] Awards - Logging Post Completed
// $65E3B1: [8-bit] Awards - Ancient Forest Completed
// $65E3B2: [8-bit] Awards - Forgotten Shrine Completed
// $65E3B3: [8-bit] Awards - Zaktan's Chamber Completed
// $65E3B4: [8-bit] Awards - Desert Outpost Completed
// $65E3B5: [8-bit] Awards - Bleak Refinery Completed
// $65E3B6: [8-bit] Awards - Ancient Citadel Completed
// $65E3B7: [8-bit] Awards - Rediak's Bastion Completed
// $65E3B8: [8-bit] Awards - Vezon's Awakening Completed
// $65E3B9: [8-bit] Awards - 100 Visorak defeated
// $65E3BA: [8-bit] Awards - 500 Visorak defeated
// $65E3BB: [8-bit] Awards - 1000 Visorak defeated
ThousandVisorak = byte(0x65E3BB)
// $65E3BC: [8-bit] Awards - 100 Bohrok defeated
// $65E3BD: [8-bit] Awards - 500 Bohrok defeated defeated
// $65E3BE: [8-bit] Awards - 1000 Bohrok defeated
ThousandBohrok = byte(0x65E3BE)
// $65E3BF: [8-bit] Awards - 50 Vahki defeated
// $65E3C0: [8-bit] Awards - 250 Vahki defeated
// $65E3C1: [8-bit] Awards - 500 Vahki defeated
FiveHundredVahki = byte(0x65E3C1)
// $65E3C2: [8-bit] Awards - 100 enemies defeated as Jaller
// $65E3C3: [8-bit] Awards - 250 enemies defeated as Jaller
JallerEnemies = byte(0x65E3C3)
// $65E3C4: [8-bit] Awards - 100 enemies defeated as Kongu
// $65E3C5: [8-bit] Awards - 250 enemies defeated as Kongu
KonguEnemies = byte(0x65E3C5)
// $65E3C6: [8-bit] Awards - 100 enemies defeated as Hewkii
// $65E3C7: [8-bit] Awards - 250 enemies defeated as Hewkii
HewkiiEnemies = byte(0x65E3C7)
// $65E3C8: [8-bit] Awards - 50 enemies defeated as Nuparu
// $65E3C9: [8-bit] Awards - 150 enemies defeated as Nuparu
NuparuEnemies = byte(0x65E3C9)
// $65E3CA: [8-bit] Awards - 100 defeated as Hahli
// $65E3CB: [8-bit] Awards - 250 enemies defeated as Hahli
HahliEnemies = byte(0x65E3CB)
// $65E3CC: [8-bit] Awards - 50 enemies defeated as Matoro
// $65E3CD: [8-bit] Awards - 150 enemies defeated as Matoro
MatoroEnemies = byte(0x65E3CD)
// $65E3CE: [8-bit] Awards - 2,500,000 LEGO pieces collected
Lego1 = byte(0x65E3CE)
// $65E3CF: [8-bit] Awards - 5,000,000 LEGO pieces collected
Lego2 = byte(0x65E3CF)
// $65E3D0: [8-bit] Awards - 100% game completion
HundredPercent = byte(0x65E3D0)

SingleBytes = {
    "1": {"title": "Bohrok Slaughter", "description": "Get Gold Rank in Secret Chamber 1 (151+ Bohroks)", "points": 10, "flags": Extra1Rank},
    "2": {"title": "Visorak Destroyer", "description": "Get Gold Rank in Secret Chamber 2 (101+ Visoraks)", "points": 10, "flags": Extra2Rank},
    "3": {"title": "Vahki Slayer", "description": "Get Gold Rank in Secret Chamber 3 (56+ Vahki)", "points": 10, "flags": Extra3Rank},
    "4": {"title": "Stealers of Life", "description": "Defeat 1000 Visorak", "points": 5, "flags": ThousandVisorak},
    "5": {"title": "Hive-Minded Creatures", "description": "Defeat 1000 Bohrok", "points": 5, "flags": ThousandBohrok},
    "6": {"title": "Law Robots", "description": "Defeat 500 Vahki", "points": 5, "flags": FiveHundredVahki},
    "7": {"title": "Jaller's Liquidation", "description": "Defeat 250 enemies as Jaller", "points": 5, "flags": JallerEnemies},
    "8": {"title": "Kongu's Eradication", "description": "Defeat 250 enemies as Kongu", "points": 5, "flags": KonguEnemies},
    "9": {"title": "Hwekki's Destruction", "description": "Defeat 250 enemies as Hewkii", "points": 5, "flags": HewkiiEnemies},
    "10": {"title": "Nuparu's Elimination", "description": "Defeat 250 enemies as Nuparu", "points": 5, "flags": NuparuEnemies},
    "11": {"title": "Hahli's Annihilation", "description": "Defeat 250 enemies as Hahli", "points": 5, "flags": HahliEnemies},
    "12": {"title": "Matoro's Obliteration", "description": "Defeat 250 enemies as Matoro", "points": 5, "flags": MatoroEnemies},
    "13": {"title": "LEGO Stack", "description": "Have 2,500,000 LEGO pieces collected", "points": 5, "flags": Lego1},
    "14": {"title": "LEGO Mountain", "description": "Have 5,000,000 LEGO pieces collected", "points": 5, "flags": Lego2},
    "15": {"title": "True Bionicle", "description": "Get 100% Completion", "points": 25, "flags": HundredPercent},   
}

Jaller1 = byte(0x65E41C)// $65E41C: [8-bit] Shop - Jaller - Toa Armour Level
Jaller2 = byte(0x65E428)// $65E428: [8-bit] Shop - Jaller - Vakama's Launcher Level
Jaller3 = byte(0x65E422)// $65E422: [8-bit] Shop - Jaller - Toarch Ability Level
Jaller = [Jaller1, Jaller2, Jaller3]

Hahli1 = byte(0x65E41D)// $65E41D: [8-bit] Shop - Hahli - Toa Armour Level
Hahli2 = byte(0x65E423)// $65E423: [8-bit] Shop - Hahli - Drench Ability Level
Hahli3 = byte(0x65E429)// $65E429: [8-bit] Shop - Hahli - Nokama's Hydro Blade Level
Hahli = [Hahli1, Hahli2, Hahli3]

Kongu1 = byte(0x65E41E)// $65E41E: [8-bit] Shop - Kongu - Toa Armour Level
Kongu2 = byte(0x65E424)// $65E424: [8-bit] Shop - Kongu - Gust Ability Level
Kongu3 = byte(0x65E42A)// $65E42A: [8-bit] Shop - Kongu - Matau's Aero Slicer Level
Kongu = [Kongu1, Kongu2, Kongu3]

Matoro1 = byte(0x65E41F)// $65E41F: [8-bit] Shop - Matoro - Toa Armour Level
Matoro2 = byte(0x65E42B)// $65E42B: [8-bit] Shop - Matoro - Crystal Spike Level
Matoro3 = byte(0x65E425)// $65E425: [8-bit] Shop - Matoro - Freeze Ability Level
Matoro = [Matoro1, Matoro2, Matoro3]

Hewkii1 = byte(0x65E420)// $65E420: [8-bit] Shop - Hewkii - Toa Armour Level
Hewkii2 = byte(0x65E426)// $65E426: [8-bit] Shop - Hewkii - Fragment Ability Level
Hewkii3 = byte(0x65E42C)// $65E42C: [8-bit] Shop - Hewkii - Proto Piton Level
Hewkii = [Hewkii1, Hewkii2, Hewkii3]

Nupari1 = byte(0x65E421)// $65E421: [8-bit] Shop - Nuparu - Toa Armour Level
Nupari2 = byte(0x65E427)// $65E427: [8-bit] Shop - Nuparu - Excavate Ability Level
Nupari3 = byte(0x65E42D)// $65E42D: [8-bit] Shop - Nuparu - Whenua's Earthshock Drill
Nuparu = [Nupari1, Nupari2, Nupari3]




Bionicles = {
    "1": {"title": "Advanced Flame Sword", "description": "Fully upgrade Jaller", "points": 10, "flags": Jaller},
    "2": {"title": "Laser Harpoon", "description": "Fully upgrade Hahli", "points": 10, "flags": Hahli},
    "3": {"title": "Laser Crossbow", "description": "Fully upgrade Kongu", "points": 10, "flags": Kongu},
    "4": {"title": "Advanced Ice Sword", "description": "Fully upgrade Matoro", "points": 10, "flags": Matoro},
    "5": {"title": "Laser Axe", "description": "Fully upgrade Hewkii", "points": 10, "flags": Hewkii},
    "6": {"title": "Laser Drill", "description": "Fully upgrade Nuparu", "points": 10, "flags": Nuparu},       
}





// $65E43C: [32-bits] Studs (Has a leading 0)
// $65E440: [32-bits] Spent Studs (Has a leading 0)
// $65E454: [32-bit] Extra Level 1 - Bohrok Defeated

// $6B0D70: [32-bit] (Float) Timer on extra levels
// $6B0D74: [32-bits] Enemies defeated in extra levels
Max = 10

function SaveProtection(){
    return SaveProc != 1
}

function Progression(Completions){
    logic = always_true()
    counter = 1
    for item in Completions{
        if(counter != 4){
            counter = counter + 1
            logic = logic && item >= Standard
        }else{
            logic = logic && prev(item) == NotCompleted && item >= Standard 
        }
    }
    return logic
}

function SumUpgrades(flags){
    count = 0
    for flag in flags{
        count = count + flag
    }
    return count
}

function SumUpgradesDelta(flags){
    count = 0
    for flag in flags{
        count = count + prev(flag)
    }
    return count
}

function FlagsAddSource(flags){
    return sum_of(flags, f => prev(f)) <= length(flags) - 1 &&
        measured(sum_of(flags, f => f) == length(flags)) 
}

function FlagsSubSource(flags){
    count = 0
    for flag in flags{
        count = count - flag
    }
    return count
}

function ShopCount(start, count){
    total = 0
    countTemp = 0
    for item in range(0, count){
        total = total + byte(start + countTemp)
        countTemp = countTemp + 1
    }
    return total
}

function ShopCountDelta(start, count){
    total = 0
    countTemp = 0
    for item in range(0, count){
        total = total + prev(byte(start + countTemp))
        countTemp = countTemp + 1
    }
    return total
}

function SilverCanisters(Start1, Start2, Start3){
    Canister1 = byte(Start1)
    Canister2 = byte(Start1 + 1)
    Canister3 = byte(Start1 + 2)
    Canister4 = byte(Start1 + 3)
    Canister5 = byte(Start1 + 4)
    Canister6 = byte(Start2)
    Canister7 = byte(Start2 + 1)
    Canister8 = byte(Start2 + 2)
    Canister9 = byte(Start2 + 3)
    Canister10 = byte(Start2 + 4)
    Canister11 = byte(Start3)
    Canister12 = byte(Start3 + 1)
    Canister13 = byte(Start3 + 2)
    Canister14 = byte(Start3 + 3)
    Canister15 = byte(Start3 + 4)
    Canisters = [Canister1, Canister2, Canister3, Canister4, Canister5, Canister6, Canister7, Canister8, Canister9, Canister10, Canister11, Canister12, Canister13, Canister14, Canister15]
    return FlagsAddSource(Canisters)
}

for flags in ProgressionFlags{
    achievement(
        title = ProgressionFlags[flags]["title"],
        description = ProgressionFlags[flags]["description"],
        points = ProgressionFlags[flags]["points"],
        trigger = SaveProtection() && Progression(ProgressionFlags[flags]["flags"])
    )
}

function GoldRanks(flags){
    logic = 0 
    for item in flags{
            logic = logic + item / Gold    
    }
    return logic
}

function GoldRanksPrev(flags){
    logic = 0 
    for item in flags{
            logic = logic + prev(item) / Gold    
    }
    return logic
}

function GoldRankLogic(flags, quantity){
    return measured(GoldRanks(flags) == quantity) &&
    GoldRanksPrev(flags) == quantity-1
}

achievement(
    title = "Spear of Fusion",
    description = "Defeat Vezon in Vezon's Awakening",
    points = 10,
    trigger = SaveProtection() && VezonAwakeningCompletion != 0 && prev(VezonAwakeningCompletion) == 0
)
for flags in CanisterFlags{
    achievement(
        title = CanisterFlags[flags]["title"],
        description = CanisterFlags[flags]["description"],
        points = CanisterFlags[flags]["points"],
        trigger = SaveProtection() && SilverCanisters(CanisterFlags[flags]["start1"], CanisterFlags[flags]["start2"], CanisterFlags[flags]["start3"])
    )
}

for flags in GoldFlags{
    achievement(
        title = GoldFlags[flags]["title"],
        description = GoldFlags[flags]["description"],
        points = GoldFlags[flags]["points"],
        trigger = SaveProtection() &&
        measured(16 - sum_of(GoldFlags[flags]["flags"], f => f) == 16) && (16 - sum_of(GoldFlags[flags]["flags"], f => prev(f)) <= 15)
    )    
}

for flags in ProgressionFlags{
    achievement(
        title = ProgressionFlags[flags]["title2"],
        description = ProgressionFlags[flags]["description2"],
        points = ProgressionFlags[flags]["points"],
        trigger = SaveProtection() &&
        GoldRankLogic(ProgressionFlags[flags]["flags"], 4)
    ) 
}

function SingleByte(byte){
    logic =
    byte == Gold &&
    prev(byte) <= Silver
    return logic
}

achievement(
    title = "Sublime Vezon",
    description = "Get all Gold Canisters and Gold Rank in Vezon's Awakening",
    points = 5,
    trigger = SaveProtection() &&
    ((VezonAwakeningCompletion == Gold && prev(VezonAwakeningCompletion) < Gold && 4 - sum_of(VezonGolds, f=>f) == 4) ||
    (VezonAwakeningCompletion == Gold && 4 - sum_of(VezonGolds, f=>f) == 4 && 4 - sum_of(VezonGolds, f=>prev(f)) <= 3 ))
)

achievement(
    title = "Paid Tutorial",
    description = "Buy all the Hints",
    points = 5,
    trigger = SaveProtection() &&
    measured(ShopCount(Hint1, 20) == 20) && ShopCountDelta(Hint1, 20) <= 19
)

achievement(
    title = "Time to Party",
    description = "Buy all the Goodies",
    points = 10,
    trigger = SaveProtection() &&
    measured(ShopCount(FirstGoodie, 17) == 17) && ShopCountDelta(FirstGoodie, 17) <= 16
)

for flags in Bionicles{
    achievement(
        title = Bionicles[flags]["title"],
        description = Bionicles[flags]["description"],
        points = Bionicles[flags]["points"],
        trigger = SaveProtection() && 
        SumUpgradesDelta(Bionicles[flags]["flags"]) <= 29 &&
        measured(SumUpgrades(Bionicles[flags]["flags"]) == 30, format = "percent")
    )
}

for flags in SingleBytes{
    achievement(
        title = SingleBytes[flags]["title"],
        description = SingleBytes[flags]["description"],
        points = SingleBytes[flags]["points"],
        trigger = SaveProtection() && 
        SingleByte(SingleBytes[flags]["flags"])
    )
}
