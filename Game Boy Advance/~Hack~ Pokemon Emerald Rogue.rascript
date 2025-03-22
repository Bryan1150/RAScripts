// ~Hack~ Pokemon Emerald Rogue
// #ID = 21360
GlobalPointer = tbyte(0x005fa0)
CaughtOffset = 0x00b609
SeenOffset = 0xB598 

SeedFlag = bit2(GlobalPointer + 0x9274)
AreaBank = byte(0x043b00)
SubAreaBank = byte(0x043b01)
FullBank = word(0x043b00)


ToAdventureQuest = 0x03ed8c
Badge1Quest = 0x03ed94
Badge2Quest = 0x03ed9c
Badge3Quest = 0x03eda4
Badge4Quest = 0x03edac
Badge5Quest = 0x03edb4
Badge6Quest = 0x03edbc
Badge7Quest = 0x03edc4
Badge8Quest = 0x03edcc
EliteMasterQuest = 0x03ede4
TheChampionQuest = 0x03edec
PostGameQuest = 0x03edf4
CollectorQuest = 0x03edfc
CollectorPlusQuest = 0x03ee04
CollectorXQuest = 0x03ee0c
ShopSpreeQuest = 0x03ee14
BigSaverQuest = 0x03ee1c
CantStopQuest = 0x03ee24
WontStopQuest = 0x03ee2c
CareTacticsQuest = 0x03ee34
SmartTacticsQuest = 0x03ee3c
TrueTacticsQuest = 0x03ee44
ForagerQuest = 0x03ee4c
WildDenQuest = 0x03ee54
MrRandomanQuest = 0x03ee5c
ChaosMasterQuest = 0x03ee64
FateQuest = 0x03ee6c
ExtremeModeQuest = 0x03ee74
HardcoreModeQuest = 0x03ee7c
InsaneModeQuest = 0x03ee84
KantoStyleQuest = 0x03ee8c
GauntletModeQuest = 0x03ee94
MegaEvolutionQuest = 0x03ee9c
ZPowerQuest = 0x03eea4
GratitudeQuest = 0x03eeac
MischiefQuest = 0x03eeb4
OfNatureQuest = 0x03eebc
NormalMasterQuest = 0x03eec4
FightingMasterQuest = 0x03eecc
FlyingMasterQuest = 0x03eed4
PoisonMasterQuest = 0x03eedc
GroundMasterQuest = 0x03eee4
RockMasterQuest = 0x03eeec
BugMasterQuest = 0x03eef4
GhostMasterQuest = 0x03eefc
SteelMasterQuest = 0x03ef04
FireMasterQuest = 0x03ef0c
WaterMasterQuest = 0x03ef14
GrassMasterQuest = 0x03ef1c
ElectricMasterQuest = 0x03ef24
PsychicMasterQuest = 0x03ef2c
IceMasterQuest = 0x03ef34
DragonMasterQuest = 0x03ef3c
DarkMasterQuest = 0x03ef44
FairyMasterQuest = 0x03ef4c
JohtoStyleQuest = 0x03ef54
HoennRainbowQuest = 0x03ef5c
GlitchStyleQuest = 0x03ef64
SinnohRainbowQuest = 0x03ef6c
UnovaRainbowQuest = 0x03ef74
KalosRainbowQuest = 0x03ef7c
AlolaRainbowQuest = 0x03ef84
GalarRainbowQuest = 0x03ef8c
OrreStyleQuest = 0x03ef94
MankeysPawQuest = 0x03ef9c
ApotheosisQuest = 0x03efa4
CursedBodyQuest = 0x03efac
RogueLockeQuest = 0x03efb4
TrueMonoQuest = 0x03efbc
IronKaizoQuest = 0x03efc4
PleaseStopQuest = 0x03efcc
MysteryManQuest = 0x03efd4
DeepSpaceQuest = 0x03efdc
AestheticsQuest = 0x03efe4

function SaveProtection(){
    logic = GlobalPointer != 0  && FullBank!= 0 && prev(FullBank) != 0 && bit0(ToAdventureQuest) == 1 && bit0(ToAdventureQuest) == prev(bit0(ToAdventureQuest)) && prev(bit0(ToAdventureQuest)) == 1
    return logic
}

function NoSeeds(){
    return SeedFlag == 0
}

Quests = {
    1: {"title": "Rogue Journey has Started!", "points": 1, "description": "Complete your first run [Most achievements are linked to ingame quests, so make sure to unlock them first, have fun!]", "flag": ToAdventureQuest},
    2: {"title": "Spelunking Fossils", "points": 5, "description": "Get the 1st badge", "flag": Badge1Quest},
    3: {"title": "The Binding Of Mimikyu", "points": 5, "description": "Get the 2nd badge", "flag": Badge2Quest},
    4: {"title": "Slay the Battle Tower", "points": 5, "description": "Get the 3rd badge", "flag": Badge3Quest},
    5: {"title": "Mew Cells", "points": 5, "description": "Get the 4th badge", "flag": Badge4Quest},
    6: {"title": "Darkest Darkrai", "points": 5, "description": "Get the 5th badge", "flag": Badge5Quest},
    7: {"title": "Enter the Mystery Dungeon", "points": 5, "description": "Get the 6th badge", "flag": Badge6Quest},
    8: {"title": "Risk of Rain Dance", "points": 5, "description": "Get the 7th badge", "flag": Badge7Quest},
    9: {"title": "Crypt of the Pokedancer", "points": 5, "description": "Get the 8th badge", "flag": Badge8Quest},
    
    10: {"title": "Elite Master", "points": 10, "description": "Beat the Elite Four", "flag": EliteMasterQuest},
    11: {"title": "The Champion", "points": 25, "description": "Defeat the Champion and clear the run", "flag": TheChampionQuest},
    12: {"title": "Post Game Unlocked", "points": 1, "description": "Find the Secret Room (or win a full run and visit the HUB)", "flag": PostGameQuest},
    
    13: {"title": "Shop Spree", "points": 5, "description": "During one Rest Stop visit, spend at least 20000 PokeDollars", "flag": ShopSpreeQuest},
    
    14: {"title": "Big Saver", "points": 5, "description": "Leave a Rest Stop with at least 50000 PokeDollars on hand", "flag": BigSaverQuest},
    15: {"title": "Collector", "points": 5, "description": "Have 15 Pokedex entries", "flag": CollectorQuest},
    16: {"title": "Collector +", "points": 10, "description": "Have 100 Pokedex entries", "flag": CollectorPlusQuest},
    17: {"title": "Collector X", "points": 5, "description": "Beat the Elite Four with a Legendary Pokemon in your party", "flag": CollectorXQuest},
    18: {"title": "Can't Stop!", "points": 3, "description": "Exit a Tough Route within 2 minutes of entering", "flag": CantStopQuest},
    19: {"title": "Won't Stop!", "points": 3, "description": "Exit a Tough Route within 1 minute of entering (after getting the 8th Badge in current run)", "flag": WontStopQuest},
    20: {"title": "Care Tactics", "points": 10, "description": "Defeat four Gyms without having your Partner Pokemon faint", "flag": CareTacticsQuest},
    21: {"title": "Smart Tactics", "points": 25, "description": "Defeat the eight Gyms without having any Pokemon faint", "flag": SmartTacticsQuest},
    
    22: {"title": "True Tactics", "points": 50, "description": "Win a full Run without having any Pokemon faint", "flag": TrueTacticsQuest},
    23: {"title": "Forager", "points": 5, "description": "Collect 10 different types of Berry in a run", "flag": ForagerQuest},
    24: {"title": "Wild Den", "points": 5, "description": "Catch a Pokemon inside the Strong Pokemon event space", "flag": WildDenQuest},
    25: {"title": "Mr. Randoman", "points": 2, "description": "Trade with Mr. Randoman", "flag": MrRandomanQuest},
    26: {"title": "Chaos Master", "points": 25, "description": "Win a full Run with doing Random Party Trades whenever possible", "flag": ChaosMasterQuest},
    27: {"title": "Mystery Man", "points": 2, "description": "Say a phrase that unlocks an event from the Mysterious Man", "flag": MysteryManQuest},
    28: {"title": "Fate", "points": 3, "description": "Lose a Pokemon to a wild Wobbuffet", "flag": FateQuest},
    29: {"title": "Mankey's Paw", "points": 3, "description": "Take a Dark Deal during the run", "flag": MankeysPawQuest},
    30: {"title": "RogueLocke", "points": 25, "description": "Complete a Full Run with Bag Wipe active, trade at the start, and have the Embargo, Species, and 10 Wild Curses active", "flag": RogueLockeQuest},
    31: {"title": "Cursed Body", "points": 25, "description": "Take one of every available Curse and complete a Full run with them active", "flag": CursedBodyQuest},
    
    32: {"title": "Extreme Mode", "points": 25, "description": "Win a full Run with the Embargo Curse", "flag": ExtremeModeQuest},
    33: {"title": "Hardcore Mode", "points": 25, "description": "Win a full Run on Hard trainer difficulty with the Embargo Curse", "flag": HardcoreModeQuest},
    34: {"title": "Insane Mode", "points": 50, "description": "Win a full Run on Hard trainer difficulty without using Legendary Pokemon and having the Embargo and Species Curses", "flag": InsaneModeQuest},
    35: {"title": "Please Stop...", "points": 100,
    "description": "Win a full Run without using Legendary Pokemon and with: Hard trainers and items, Bag Wipe, EVs off, Overlevel off, trade at the start, and Embargo and Species Curses", "flag": PleaseStopQuest},
    36: {"title": "True Mono", "points": 50, "description": "Complete a full Run with having 5 Capacity Curses active", "flag": TrueMonoQuest},
    37: {"title": "Iron Kaizo", "points": 100, "description": "Complete a full Run with Bag Wipe active, trade at the start, and have Embargo, 5 Capacity, 5 Wild, and 99 Discount Curses active", "flag": IronKaizoQuest},
    38: {"title": "Gauntlet Mode", "points": 25, "description": "Complete a full Run in Gauntlet Mode", "flag": GauntletModeQuest},
    39: {"title": "Kanto Style", "points": 25, "description": "Win a full standard Run with Kanto Leaders only and the Regional Dex set to Kanto", "flag": KantoStyleQuest},
    40: {"title": "Johto Style", "points": 25, "description": "Win a full standard Run with Johto Leaders only and the Regional Dex set to Johto", "flag": JohtoStyleQuest},
    41: {"title": "Hoenn Rainbow", "points": 25, "description": "Win a full Rainbow Run with the Regional Dex set to Hoenn", "flag": HoennRainbowQuest},
    
    42: {"title": "Sinnoh Rainbow", "points": 25, "description": "Win a full Rainbow Run with the Regional Dex set to Sinnoh", "flag": SinnohRainbowQuest},
    43: {"title": "Unova Rainbow", "points": 25, "description": "Win a full Rainbow Run with the Regional Dex set to Unova", "flag": UnovaRainbowQuest},
    44: {"title": "Kalos Rainbow", "points": 25, "description": "Win a full Rainbow Run with the Regional Dex set to Kalos", "flag": KalosRainbowQuest},
    45: {"title": "Alola Rainbow", "points": 25, "description": "Win a full Rainbow Run with the Regional Dex set to Alola", "flag": AlolaRainbowQuest},
    46: {"title": "Galar Rainbow", "points": 25, "description": "Win a full Rainbow Run with the Regional Dex set to Galar", "flag": GalarRainbowQuest},
    47: {"title": "Orre Style", "points": 25, "description": "Reach the final battle with Espeon and Umbreon in your team during a Doubles run", "flag": OrreStyleQuest},
    48: {"title": "Glitch Style", "points": 25, "description": "Win a full Run with no Kanto, Johto, or Hoenn Leaders enabled, and with Gen 8 National Dex", "flag": GlitchStyleQuest},
    49: {"title": "Mega Evolution", "points": 5, "description": "In the final battle, Mega Evolve a Pokemon", "flag": MegaEvolutionQuest},
    50: {"title": "Z Power", "points": 5, "description": "In the final battle, use a Z Move", "flag": ZPowerQuest},
    51: {"title": "Apotheosis", "points": 25, "description": "Complete a full Run only ever using Legendary Pokemon (includes the starter)", "flag": ApotheosisQuest},
    
    52: {"title": "Deep Space", "points": 5, "description": "Reach the final battle with a Deoxys in your party (Need Gen limit at least 3 or Regional Dex with Deoxys in it)", "flag": DeepSpaceQuest},
    53: {"title": "Gratitude", "points": 5, "description": "Reach the final battle with a Shaymin in your party (Need Gen limit at least 4 or Regional Dex with Shaymin in it)", "flag": GratitudeQuest},
    54: {"title": "Of Nature", "points": 5, "description": "Reach the final battle with Tornadus, Thundurus or Landorus (Gen limit at least 5 or Regional Dex with them in it)", "flag": OfNatureQuest},
    55: {"title": "Mischief", "points": 5, "description": "Reach the final battle with a Hoopa in your party (Need Gen limit at least 6 or Regional Dex with Hoopa in it)", "flag": MischiefQuest},
    
    56: {"title": "Master of the Ordinary", "points": 25, "description": "Win a full Run only catching and using Normal type Pokemon", "flag": NormalMasterQuest},
    57: {"title": "Master of the Arts", "points": 25, "description": "Win a full Run only catching and using Fighting type Pokemon", "flag": FightingMasterQuest},
    58: {"title": "Master of the Skies", "points": 25, "description": "Win a full Run only catching and using Flying type Pokemon", "flag": FlyingMasterQuest},
    59: {"title": "Master of the Toxins", "points": 25, "description": "Win a full Run only catching and using Poison type Pokemon", "flag": PoisonMasterQuest},
    60: {"title": "Master of the Terra Firma", "points": 25, "description": "Win a full Run only catching and using Ground type Pokemon", "flag": GroundMasterQuest},
    61: {"title": "Master of the Gravel", "points": 25, "description": "Win a full Run only catching and using Rock type Pokemon", "flag": RockMasterQuest},
    
    62: {"title": "Master of the Insects", "points": 25, "description": "Win a full Run only catching and using Bug type Pokemon", "flag": BugMasterQuest},
    63: {"title": "Master of the Phantoms", "points": 25, "description": "Win a full Run only catching and using Ghost type Pokemon", "flag": GhostMasterQuest},
    64: {"title": "Master of the Alloy", "points": 25, "description": "Win a full Run only catching and using Steel type Pokemon", "flag": SteelMasterQuest},
    65: {"title": "Master of the Inferno", "points": 25, "description": "Win a full Run only catching and using Fire type Pokemon", "flag": FireMasterQuest},
    66: {"title": "Master of the Sea", "points": 25, "description": "Win a full Run only catching and using Water type Pokemon", "flag": WaterMasterQuest},
    67: {"title": "Master of the Pasture", "points": 25, "description": "Win a full Run only catching and using Grass type Pokemon", "flag": GrassMasterQuest},
    68: {"title": "Master of the Energy", "points": 25, "description": "Win a full Run only catching and using Electric type Pokemon", "flag": ElectricMasterQuest},
    69: {"title": "Master of the Mind", "points": 25, "description": "Win a full Run only catching and using Psychic type Pokemon", "flag": PsychicMasterQuest},
    70: {"title": "Master of the Frost", "points": 25, "description": "Win a full Run only catching and using Ice type Pokemon", "flag": IceMasterQuest},
    
    71: {"title": "Master of the Draconic", "points": 25, "description": "Win a full Run only catching and using Dragon type Pokemon", "flag": DragonMasterQuest},
    72: {"title": "Master of the Darkness", "points": 25, "description": "Win a full Run only catching and using Dark type Pokemon", "flag": DarkMasterQuest},
    73: {"title": "Master of the Magic", "points": 25, "description": "Win a full Run only catching and using Fairy type Pokemon", "flag": FairyMasterQuest},
    
    74: {"title": "Aesthetics", "points": 25, "description": "Win a full Run only ever entering battle with shiny pokemon in your party", "flag": AestheticsQuest}, 
}

function CatchedPokemon(startOffset, start, finish){
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
    return 
    measured( sum_of(BitFlags, f => f) == finish-start)
    && tally(20, sum_of(BitFlags, f => prev(f)) == finish-start-1)
   
     
    
}


achievement(
    title = "Don't Turn RNG Off",
    description = "Activate a Seeded run [DISCLAIMER: Using a Seed in a run pauses every other achievement]",
    points = 0,
    trigger = SaveProtection() && GlobalPointer == prev(GlobalPointer) && SeedFlag == 1 && prev(SeedFlag) == 0
)

for quest in Quests{
    achievement(
        title = Quests[quest]["title"],
        description = Quests[quest]["description"],
        points = Quests[quest]["points"],
        trigger = SaveProtection() && NoSeeds() && 
        
        prev(bit1(Quests[quest]["flag"])) == 0
        
        && bit1(Quests[quest]["flag"]) == 1
        
        && dword(Quests[quest]["flag"]) <= 255
        
       // && never(GlobalPointer != prev(GlobalPointer))
    )
}

Pokedex = {
    1: {"title": "Kanto Completion", "points": 25, "description": "Catch every Pokemon from Gen 1", "start": 1, "end": 152},
    2: {"title": "Johto Completion", "points": 25, "description": "Catch every Pokemon from Gen 2", "start": 152, "end": 252},
    3: {"title": "Hoenn Completion", "points": 25, "description": "Catch every Pokemon from Gen 3", "start": 252, "end": 387},
    4: {"title": "Sinnoh Completion", "points": 25, "description": "Catch every Pokemon from Gen 4", "start": 387, "end": 494},
    5: {"title": "Unova Completion", "points": 25, "description": "Catch every Pokemon from Gen 5", "start": 494, "end": 650},
    6: {"title": "Kalos Completion", "points": 25, "description": "Catch every Pokemon from Gen 6", "start": 650, "end": 722},
    7: {"title": "Alola Completion", "points": 25, "description": "Catch every Pokemon from Gen 7", "start": 722, "end": 810},
    8: {"title": "Galar Completion", "points": 25, "description": "Catch every Pokemon from Gen 8", "start": 810, "end": 899},
}
for pokedex in Pokedex{
    achievement(
        title = Pokedex[pokedex]["title"],
        description = Pokedex[pokedex]["description"],
        points = Pokedex[pokedex]["points"],
        trigger = SaveProtection() && GlobalPointer == prev(GlobalPointer) && FullBank == prev(FullBank) && CatchedPokemon(CaughtOffset, Pokedex[pokedex]["start"], Pokedex[pokedex]["end"])
        && never(GlobalPointer != prev(GlobalPointer))
    )
}