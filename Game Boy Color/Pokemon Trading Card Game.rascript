// Pokemon Trading Card Game
// #ID = 727


CardsStart = 0xA101
// $A101: [8-bit] E01 - Grass Energy [START OF FLAGS]
//        Bit 7 = 1 when not obtained
//        The rest are the quantity owned (The ones used in a deck are substracted)
// $A102: [8-bit] E02 - Fire Energy
// $A103: [8-bit] E03 - Water Energy
// $A104: [8-bit] E04 - Lightning Energy
// $A105: [8-bit] E05 - Fighting Energy
// $A106: [8-bit] E06 - Physic Energy
// $A107: [8-bit] E07 - Double Colorless Energy
// $A108: [8-bit] B01 - Bulbasaur
// $A109: [8-bit] B02 - Ivysaur
// $A10B: [8-bit] B03 - Venusaur
// $A10C: [8-bit] B04 - Caterpie
// $A10D: [8-bit] B05 - Metapod
// $A10E: [8-bit] B06 - Butterfree
// $A10F: [8-bit] B07 - Weedle
// $A110: [8-bit] B08 - Kakuna
// $A111: [8-bit] B09 - Beedrill
// $A112: [8-bit] D01 - Ekans
// $A113: [8-bit] D02 - Arbok
// $A114: [8-bit] C01 - Nidoran Female
// $A115: [8-bit] C02 - Nidorina
// $A116: [8-bit] C03 - Nidoqueen
// $A117: [8-bit] AO1 - Nidoran Male
// $A118: [8-bit] A02 - Nidorino
// $A119: [8-bit] B10 - Nidoking
// $A11A: [8-bit] D03 - Zubat
// $A11B: [8-bit] D04 - Golbat
// $A11C: [8-bit] C04 - Oddish
// $A11D: [8-bit] C05 - Gloom
// $A11E: [8-bit] C06 - Vileplume
// $A11F: [8-bit] C07 - Paras
// $A120: [8-bit] C08 - Parasect
// $A121: [8-bit] D05 - Venomat
// $A122: [8-bit] D06 - Venomoth
// $A123: [8-bit] B11 - Bellsprout
// $A124: [8-bit] B12 - Weepinbell
// $A125: [8-bit] B13 - Victreebel
// $A126: [8-bit] D07 - Grimer
// $A127: [8-bit] D08 - Muk
// $A128: [8-bit] C09 - Exeggcute
// $A129: [8-bit] C10 - Exeggutor
// $A12A: [8-bit] D09 - Koffing
// $A12B: [8-bit] D10 - Weezing
// $A12C: [8-bit] D11 - Tangela
// $A12D: [8-bit] A03 - Tangela
// $A12E: [8-bit] A04 - Scyther
// $A12F: [8-bit] A05 - Pinsir
// $A130: [8-bit] A06 - Charmander
// $A131: [8-bit] A07 - Charmeleon
// $A132: [8-bit] B14 - Charizard
// $A133: [8-bit] C11 - Vulpix
// $A134: [8-bit] C12 - Ninetails
// $A135: [8-bit] D12 - Ninetails
// $A136: [8-bit] A08 - Growlithe
// $A137: [8-bit] P01 - Arcanine (Trade Lapras at the Water Club)
// $A138: [8-bit] A09 - Arcanine
// $A139: [8-bit] A10 - Ponyta
// $A13A: [8-bit] B15 - Rapidash
// $A13B: [8-bit] A11 - Magmar
// $A13C: [8-bit] D13 - Magmar
// $A13D: [8-bit] C13 - Flareon
// $A13E: [8-bit] B16 - Flareon
// $A13F: [8-bit] C14 - Moltres
// $A140: [8-bit] P02 - Moltres (Defeat the Grand Masters at the Pokémon Dome)
// $A141: [8-bit] B17 - Squirtle
// $A142: [8-bit] B18 - Wartortle
// $A143: [8-bit] B19 - Blastoise
// $A144: [8-bit] D14 - Psyduck
// $A145: [8-bit] D15 - Golduck
// $A146: [8-bit] D16 - Poliwag
// $A147: [8-bit] D17 - Poliwhirl
// $A148: [8-bit] D18 - Poliwrath
// $A149: [8-bit] D19 - Tentacool
// $A14A: [8-bit] D20 - Tentacruel
// $A14B: [8-bit] A12 - Seel
// $A14C: [8-bit] A13 - Dewgong
// $A14D: [8-bit] C15 - Shellder
// $A14E: [8-bit] C16 - Cloyster
// $A14F: [8-bit] B20 - Krabby
// $A150: [8-bit] B21 - Kingler
// $A151: [8-bit] D21 - Horsea
// $A152: [8-bit] D22 - Seadra
// $A153: [8-bit] A14 - Goldeen
// $A154: [8-bit] A15 - Seaking
// $A155: [8-bit] A16 - Staryu
// $A156: [8-bit] B22 - Starmie
// $A157: [8-bit] A17 - Magikarp
// $A158: [8-bit] A18 - Gyarados
// $A159: [8-bit] C17 - Lapras
// $A15A: [8-bit] C18 - Vaporeon
// $A15B: [8-bit] B23 - Vaporeon
// $A15C: [8-bit] C19 - Omanyte
// $A15D: [8-bit] C20 - Omastar
// $A15E: [8-bit] C21 - Articuno
// $A15F: [8-bit] P03 - Articuno (Defeat the Grand Masters at the Pokémon Dome)
// $A160: [8-bit] A19 - Pikachu
// $A161: [8-bit] C22 - Pikachu
// $A162: [8-bit] P04 - Pikachu (Trade Clefairy at the Grass Club)
// $A163: [8-bit] P05 - Pikachu (Trade five uncommon cards at the Fighting Club)
// $A164: [8-bit] Flying Pikachu (Trade Ditto with Mr. Ishihara)
// $A165: [8-bit] P07 - Surfing Pikachu (Trade Clefable with Mr. Ishihara)
// $A166: [8-bit] P08 - Surfing Pikachu (Trade Chansey with Mr. Ishihara)
// $A167: [8-bit] A20 - Raichu
// $A168: [8-bit] C23 - Raichu
// $A169: [8-bit] A21 - Magnemite
// $A16A: [8-bit] D23 - Magnemite
// $A16B: [8-bit] A22 - Magneton
// $A16C: [8-bit] D24 - Magneton
// $A16D: [8-bit] C24 - Voltorb
// $A16E: [8-bit] D25 - Electrode
// $A16F: [8-bit] C25 - Electrode
// $A170: [8-bit] P09 - Electabuzz (Trade Electabuzz at the Lightning Club)
// $A171: [8-bit] A23 - Electabuzz
// $A172: [8-bit] C26 - Jolteon
// $A173: [8-bit] B24 - Jolteon
// $A174: [8-bit] C27 - Zapdos
// $A175: [8-bit] A24 - Zapdos
// $A176: [8-bit] P10 - Zapdos (Defeat the Grand Masters at the Pokémon Dome)
// $A177: [8-bit] B25 - Sandshrew
// $A178: [8-bit] B26 - Sandslash
// $A179: [8-bit] A25 - Diglett
// $A17A: [8-bit] A26 - Dugtrio
// $A17B: [8-bit] C28 - Mankey
// $A17C: [8-bit] C29 - Primeape
// $A17D: [8-bit] A27 - Machop
// $A17E: [8-bit] B27 - Machoke
// $A17F: [8-bit] B28 - Machamp
// $A180: [8-bit] B29 - Geodude
// $A181: [8-bit] B30 - Graveler
// $A182: [8-bit] B31 - Golem
// $A183: [8-bit] D26 - Onix
// $A184: [8-bit] B32 - Cubone
// $A185: [8-bit] D27 - Marowak
// $A186: [8-bit] B33 - Marowak
// $A187: [8-bit] D28 - Hitmonlee
// $A188: [8-bit] A28 - Hitmonchan
// $A189: [8-bit] C30 - Rhyhorn
// $A18A: [8-bit] C31 - Rhydon
// $A18B: [8-bit] C32 - Kabuto
// $A18C: [8-bit] C33 - Kabutops
// $A18D: [8-bit] C34 - Aerodactyl
// $A18E: [8-bit] A29 - Abra
// $A18F: [8-bit] A30 - Kadabra
// $A190: [8-bit] C35 - Alakazam
// $A191: [8-bit] P11 - Slowpoke (Trade any unused Energy cards at the Fire Club)
// $A192: [8-bit] D29 - Slowpoke
// $A193: [8-bit] D30 - Slowbro
// $A194: [8-bit] B34 - Gastly
// $A195: [8-bit] D31 - Gastly
// $A196: [8-bit] D32 - Haunter
// $A197: [8-bit] B35 - Haunter
// $A198: [8-bit] B36 - Gengar
// $A199: [8-bit] C36 - Drowzee
// $A19A: [8-bit] D33 - Hypno
// $A19B: [8-bit] D34 - Mr. Mime
// $A19C: [8-bit] B37 - Jynx
// $A19D: [8-bit] D35 - Mewtwo
// $A19E: [8-bit] P12 - Mewtwo (Win the Challenge Cup first time after obtaining the third Master Medal)
// $A19F: [8-bit] P13 - Mewtwo (Talk to Pappy at the Psychic Club lounge and come back after defeating Murray)
// $A1A0: [8-bit] P14 - Mew (Win the Challenge Cup a second time after obtaining the sixth Master Medal)
// $A1A2: [8-bit] C37 - Mew
// $A1A3: [8-bit] B38 - Pidgey
// $A1A4: [8-bit] B39 - Pidgeotto
// $A1A5: [8-bit] D36 - Pidgeot
// $A1A6: [8-bit] B40 - Pidgeot
// $A1A7: [8-bit] A31 - Rattata
// $A1A8: [8-bit] A32 - Raticate
// $A1A9: [8-bit] D37 - Spearow
// $A1AA: [8-bit] D38 - Fearow
// $A1AB: [8-bit] C38 - Clefairy
// $A1AC: [8-bit] D39 - Clefable
// $A1AD: [8-bit] P15 - Jigglypuff (Defeat Ronald after obtaining the second Master Medal)
// $A1AE: [8-bit] B41 - Jigglypuff
// $A1AF: [8-bit] A33 - Jigglypuff
// $A1B0: [8-bit] A34 - Wigglytuff
// $A1B1: [8-bit] A35 - Meowth
// $A1B2: [8-bit] C39 - Meowth
// $A1B3: [8-bit] C40 - Persian
// $A1B4: [8-bit] C41 - Farfetch'D
// $A1B5: [8-bit] D40 - Doduo
// $A1B6: [8-bit] D41 - Dodrio
// $A1B7: [8-bit] C42 - Lickitung
// $A1B8: [8-bit] A36 - Chansey
// $A1B9: [8-bit] A37 - Kangaskhan
// $A1BA: [8-bit] C43 - Tauros
// $A1BB: [8-bit] D42 - Ditto
// $A1BC: [8-bit] B42 - Eevee
// $A1BD: [8-bit] D43 - Porygon
// $A1BE: [8-bit] A38 - Snorlax
// $A1BF: [8-bit] C44 - Dratini
// $A1C0: [8-bit] C45 - Dragonair
// $A1C1: [8-bit] P16 - Dragonite (Defeat the Grand Masters at the Pokémon Dome)
// $A1C2: [8-bit] C46 - Dragonite
// $A1C3: [8-bit] A39 - Professor Oak
// $A1C4: [8-bit] D44 - Imposter Professor Oak
// $A1C5: [8-bit] A40 - Bill
// $A1C6: [8-bit] C47 - Mr. Fuji
// $A1C7: [8-bit] D45 - Lass
// $A1C8: [8-bit] P17 - Imakumi? (Defeat Imakuni? three times)
// $A1C9: [8-bit] B43 - Pokemon Trader
// $A1CA: [8-bit] B44 - Pokemon Breeder
// $A1CB: [8-bit] B45 - Clefairy Doll
// $A1CC: [8-bit] C48 - Mysterious Fossil
// $A1CD: [8-bit] B46 - Energy Retrieval
// $A1CE: [8-bit] P18 - Super Energy Retrieval (Defeat Ronald after obtaining the fifth Master Medal)
// $A1CF: [8-bit] B47 - Energy Search
// $A1D0: [8-bit] C49 - Energy Removal
// $A1D1: [8-bit] D46 - Super Energy Removal
// $A1D2: [8-bit] A41 - Switch
// $A1D3: [8-bit] C50 - Pokemon Center
// $A1D4: [8-bit] A42 - Poke Ball
// $A1D5: [8-bit] A43 - Scoop Up
// $A1D6: [8-bit] A44 - Computer Search
// $A1D7: [8-bit] D47 - Pokedex
// $A1D8: [8-bit] A45 - Pluspower
// $A1D9: [8-bit] A46 - Defender
// $A1DA: [8-bit] A47 - Item Finder
// $A1DB: [8-bit] B48 - Gust of Wind
// $A1DC: [8-bit] D48 - Devolution Spray
// $A1DD: [8-bit] A48 - Potion
// $A1DE: [8-bit] B49 - Super Potion
// $A1DF: [8-bit] A49 - Full Heal
// $A1E0: [8-bit] A50 - Revive
// $A1E1: [8-bit] D49 - Maintenance
// $A1E2: [8-bit] B50 - Pokemon Flute
// $A1E3: [8-bit] D50 - Gambler
// $A1E4: [8-bit] D51 - Recycle [END OF FLAGS]
CardsEnd = 0xA1E4
// $CC2B: booster pack cards (scyther = 2e) Its the current card shown
// $D0BB: According to DataCrystal at RHDN, this is a Room-ID.
// $DD80: song id for card obtaining?, crystal, 9d = gain card from trade, 98 = win, 99 = lose
MewPop = 0x00a1a1
VenosaurPop = 0x00a10a
TotalCollection = 222

function RangeFlags(start, end){
    total = 0
    for item in range(start, end){
        if (item != MewPop && item != VenosaurPop)
        total = total + bit7(item)
    }
    return total
}

function RangeFlagsPrev(start, end){
    total = 0
    for item in range(start, end){
        if (item != MewPop && item != VenosaurPop)
        total = total + prev(bit7(item))
    }
    return total
}
// Ticket 53392: As you can see in the video proof i have the promotional pikachu card yet i was not awarded the
//               achievement.
//               https://youtu.be/ikeWBrOumes
//               RetroAchievements Hash: 219b2cc64e5a052003015d4bd4c622cd
//               Emulator: RetroArch (Gambatte)
//               Emulator Version: 1.11.1
achievement(
    title = "Pika Party", description = "Trade with Man for a Pikachu LVL 16", points = 5,
    id = 7413, badge = "170344", published = "15/4/2014 09:06:28", modified = "1/5/2021 19:07:09",
    trigger = once(byte(0x00CC2B) == 99) && never(byte(0x00CC2B) < 99) && never(byte(0x00CC2B) > 99) && 
              once(byte(0x00DD80) == 157) && once(byte(0x00D0BB) == 5)
)

// Ticket 43966: I unlocked the 'Card Master (Collect All Obtainable Cards in the Game)' while I didn't get the '(Card
//               Collector) Collect Half of the Cards in the game'.
//               
//               I do have proof of this:
//               https://snipboard.io/G3WzjZ.jpg
//               MD5: Unknown
//               Emulator: RAVBA
//               Emulator Version: 1.0
achievement(
    title = "Card Collector", description = "Collect Half of the Cards in the game", points = 5,
    id = 7374, badge = "170352", published = "14/4/2014 15:10:24", modified = "15/11/2021 00:25:48",
    trigger = measured(113 - RangeFlags(CardsStart, CardsEnd) >= 113) &&
    (113 - RangeFlagsPrev(CardsStart, CardsEnd) < 113) &&
    (80 - RangeFlagsPrev(CardsStart, CardsEnd) >= 80)
)

// Ticket 43895: I had one last card to get-- the Mewtwo lv 53 from the Laboratory booster. I got it from the water gym
//               leader, and then checked through all my cards and the diary. It didn't pop.
//               
//               Don't have video footage, but showing I have the cards and the cheevo not being triggered:
//               https://imgur.com/a/CU7j5gl
//               MD5: 219b2cc64e5a052003015d4bd4c622cd
//               Emulator: RetroArch (Gambatte v0.5.0-net f2d215c / Android)
//               Emulator Version: 1.9.13
achievement(
    title = "Card Master", description = "Collect All Obtainable Cards in the Game", points = 25,
    id = 7375, badge = "170353", published = "14/4/2014 15:13:16", modified = "15/11/2021 00:20:49",
    trigger = (bit7(0x00A101) + bit7(0x00A102) + bit7(0x00A103) + bit7(0x00A104) + bit7(0x00A105) + bit7(0x00A106) +
               bit7(0x00A107) + bit7(0x00A108) + bit7(0x00A109) + bit7(0x00A10B) + bit7(0x00A10C) + bit7(0x00A10D) +
               bit7(0x00A10E) + bit7(0x00A10F) + bit7(0x00A110) + bit7(0x00A111) + bit7(0x00A112) + bit7(0x00A113) +
               bit7(0x00A114) + bit7(0x00A115) + bit7(0x00A116) + bit7(0x00A117) + bit7(0x00A118) + bit7(0x00A119) +
               bit7(0x00A11A) + bit7(0x00A11B) + bit7(0x00A11C) + bit7(0x00A11D) + bit7(0x00A11E) + bit7(0x00A11F) +
               bit7(0x00A120) + bit7(0x00A121) + bit7(0x00A122) + bit7(0x00A123) + bit7(0x00A124) + bit7(0x00A125) +
               bit7(0x00A126) + bit7(0x00A127) + bit7(0x00A128) + bit7(0x00A129) + bit7(0x00A12A) + bit7(0x00A12B) +
               bit7(0x00A12C) + bit7(0x00A12D) + bit7(0x00A12E) + bit7(0x00A12F) + bit7(0x00A130) + bit7(0x00A131) +
               bit7(0x00A132) + bit7(0x00A133) + bit7(0x00A134) + bit7(0x00A135) + bit7(0x00A136) + bit7(0x00A137) +
               bit7(0x00A138) + bit7(0x00A139) + bit7(0x00A13A) + bit7(0x00A13B) + bit7(0x00A13C) + bit7(0x00A13D) +
               bit7(0x00A13E) + bit7(0x00A13F) + bit7(0x00A140) + bit7(0x00A141) + bit7(0x00A142) + bit7(0x00A143) +
               bit7(0x00A144) + bit7(0x00A145) + bit7(0x00A146) + bit7(0x00A147) + bit7(0x00A148) + bit7(0x00A149) +
               bit7(0x00A14A) + bit7(0x00A14B) + bit7(0x00A14C) + bit7(0x00A14D) + bit7(0x00A14E) + bit7(0x00A14F) +
               bit7(0x00A150) + bit7(0x00A151) + bit7(0x00A152) + bit7(0x00A153) + bit7(0x00A154) + bit7(0x00A155) +
               bit7(0x00A156) + bit7(0x00A157) + bit7(0x00A158) + bit7(0x00A159) + bit7(0x00A15A) + bit7(0x00A15B) +
               bit7(0x00A15C) + bit7(0x00A15D) + bit7(0x00A15E) + bit7(0x00A15F) + bit7(0x00A160) + bit7(0x00A161) +
               bit7(0x00A162) + bit7(0x00A163) + bit7(0x00A164) + bit7(0x00A165) + bit7(0x00A166) + bit7(0x00A167) +
               bit7(0x00A168) + bit7(0x00A169) + bit7(0x00A16A) + bit7(0x00A16B) + bit7(0x00A16C) + bit7(0x00A16D) +
               bit7(0x00A16E) + bit7(0x00A16F) + bit7(0x00A170) + bit7(0x00A171) + bit7(0x00A172) + bit7(0x00A173) +
               bit7(0x00A174) + bit7(0x00A175) + bit7(0x00A176) + bit7(0x00A177) + bit7(0x00A178) + bit7(0x00A179) +
               bit7(0x00A17A) + bit7(0x00A17B) + bit7(0x00A17C) + bit7(0x00A17D) + bit7(0x00A17E) + bit7(0x00A17F) +
               bit7(0x00A180) + bit7(0x00A181) + bit7(0x00A182) + bit7(0x00A183) + bit7(0x00A184) + bit7(0x00A185) +
               bit7(0x00A186) + bit7(0x00A187) + bit7(0x00A188) + bit7(0x00A189) + bit7(0x00A18A) + bit7(0x00A18B) +
               bit7(0x00A18C) + bit7(0x00A18D) + bit7(0x00A18E) + bit7(0x00A18F) + bit7(0x00A190) + bit7(0x00A191) +
               bit7(0x00A192) + bit7(0x00A193) + bit7(0x00A194) + bit7(0x00A195) + bit7(0x00A196) + bit7(0x00A197) +
               bit7(0x00A198) + bit7(0x00A199) + bit7(0x00A19A) + bit7(0x00A19B) + bit7(0x00A19C) + bit7(0x00A19D) +
               bit7(0x00A19E) + bit7(0x00A19F) + bit7(0x00A1A0) + bit7(0x00A1A2) + bit7(0x00A1A3) + bit7(0x00A1A4) +
               bit7(0x00A1A5) + bit7(0x00A1A6) + bit7(0x00A1A7) + bit7(0x00A1A8) + bit7(0x00A1A9) + bit7(0x00A1AA) +
               bit7(0x00A1AB) + bit7(0x00A1AC) + bit7(0x00A1AD) + bit7(0x00A1AE) + bit7(0x00A1AF) + bit7(0x00A1B0) +
               bit7(0x00A1B1) + bit7(0x00A1B2) + bit7(0x00A1B3) + bit7(0x00A1B4) + bit7(0x00A1B5) + bit7(0x00A1B6) +
               bit7(0x00A1B7) + bit7(0x00A1B8) + bit7(0x00A1B9) + bit7(0x00A1BA) + bit7(0x00A1BB) + bit7(0x00A1BC) +
               bit7(0x00A1BD) + bit7(0x00A1BE) + bit7(0x00A1BF) + bit7(0x00A1C0) + bit7(0x00A1C1) + bit7(0x00A1C2) +
               bit7(0x00A1C3) + bit7(0x00A1C4) + bit7(0x00A1C5) + bit7(0x00A1C6) + bit7(0x00A1C7) + bit7(0x00A1C8) +
               bit7(0x00A1C9) + bit7(0x00A1CA) + bit7(0x00A1CB) + bit7(0x00A1CC) + bit7(0x00A1CD) + bit7(0x00A1CE) +
               bit7(0x00A1CF) + bit7(0x00A1D0) + bit7(0x00A1D1) + bit7(0x00A1D2) + bit7(0x00A1D3) + bit7(0x00A1D4) +
               bit7(0x00A1D5) + bit7(0x00A1D6) + bit7(0x00A1D7) + bit7(0x00A1D8) + bit7(0x00A1D9) + bit7(0x00A1DA) +
               bit7(0x00A1DB) + bit7(0x00A1DC) + bit7(0x00A1DD) + bit7(0x00A1DE) + bit7(0x00A1DF) + bit7(0x00A1E0) +
               bit7(0x00A1E1) + bit7(0x00A1E2) + bit7(0x00A1E3) + bit7(0x00A1E4)) == 0 && (prev(bit7(0x00A101)) +
               prev(bit7(0x00A102)) + prev(bit7(0x00A103)) + prev(bit7(0x00A104)) + prev(bit7(0x00A105)) +
               prev(bit7(0x00A106)) + prev(bit7(0x00A107)) + prev(bit7(0x00A108)) + prev(bit7(0x00A109)) +
               prev(bit7(0x00A10B)) + prev(bit7(0x00A10C)) + prev(bit7(0x00A10D)) + prev(bit7(0x00A10E)) +
               prev(bit7(0x00A10F)) + prev(bit7(0x00A110)) + prev(bit7(0x00A111)) + prev(bit7(0x00A112)) +
               prev(bit7(0x00A113)) + prev(bit7(0x00A114)) + prev(bit7(0x00A115)) + prev(bit7(0x00A116)) +
               prev(bit7(0x00A117)) + prev(bit7(0x00A118)) + prev(bit7(0x00A119)) + prev(bit7(0x00A11A)) +
               prev(bit7(0x00A11B)) + prev(bit7(0x00A11C)) + prev(bit7(0x00A11D)) + prev(bit7(0x00A11E)) +
               prev(bit7(0x00A11F)) + prev(bit7(0x00A120)) + prev(bit7(0x00A121)) + prev(bit7(0x00A122)) +
               prev(bit7(0x00A123)) + prev(bit7(0x00A124)) + prev(bit7(0x00A125)) + prev(bit7(0x00A126)) +
               prev(bit7(0x00A127)) + prev(bit7(0x00A128)) + prev(bit7(0x00A129)) + prev(bit7(0x00A12A)) +
               prev(bit7(0x00A12B)) + prev(bit7(0x00A12C)) + prev(bit7(0x00A12D)) + prev(bit7(0x00A12E)) +
               prev(bit7(0x00A12F)) + prev(bit7(0x00A130)) + prev(bit7(0x00A131)) + prev(bit7(0x00A132)) +
               prev(bit7(0x00A133)) + prev(bit7(0x00A134)) + prev(bit7(0x00A135)) + prev(bit7(0x00A136)) +
               prev(bit7(0x00A137)) + prev(bit7(0x00A138)) + prev(bit7(0x00A139)) + prev(bit7(0x00A13A)) +
               prev(bit7(0x00A13B)) + prev(bit7(0x00A13C)) + prev(bit7(0x00A13D)) + prev(bit7(0x00A13E)) +
               prev(bit7(0x00A13F)) + prev(bit7(0x00A140)) + prev(bit7(0x00A141)) + prev(bit7(0x00A142)) +
               prev(bit7(0x00A143)) + prev(bit7(0x00A144)) + prev(bit7(0x00A145)) + prev(bit7(0x00A146)) +
               prev(bit7(0x00A147)) + prev(bit7(0x00A148)) + prev(bit7(0x00A149)) + prev(bit7(0x00A14A)) +
               prev(bit7(0x00A14B)) + prev(bit7(0x00A14C)) + prev(bit7(0x00A14D)) + prev(bit7(0x00A14E)) +
               prev(bit7(0x00A14F)) + prev(bit7(0x00A150)) + prev(bit7(0x00A151)) + prev(bit7(0x00A152)) +
               prev(bit7(0x00A153)) + prev(bit7(0x00A154)) + prev(bit7(0x00A155)) + prev(bit7(0x00A156)) +
               prev(bit7(0x00A157)) + prev(bit7(0x00A158)) + prev(bit7(0x00A159)) + prev(bit7(0x00A15A)) +
               prev(bit7(0x00A15B)) + prev(bit7(0x00A15C)) + prev(bit7(0x00A15D)) + prev(bit7(0x00A15E)) +
               prev(bit7(0x00A15F)) + prev(bit7(0x00A160)) + prev(bit7(0x00A161)) + prev(bit7(0x00A162)) +
               prev(bit7(0x00A163)) + prev(bit7(0x00A164)) + prev(bit7(0x00A165)) + prev(bit7(0x00A166)) +
               prev(bit7(0x00A167)) + prev(bit7(0x00A168)) + prev(bit7(0x00A169)) + prev(bit7(0x00A16A)) +
               prev(bit7(0x00A16B)) + prev(bit7(0x00A16C)) + prev(bit7(0x00A16D)) + prev(bit7(0x00A16E)) +
               prev(bit7(0x00A16F)) + prev(bit7(0x00A170)) + prev(bit7(0x00A171)) + prev(bit7(0x00A172)) +
               prev(bit7(0x00A173)) + prev(bit7(0x00A174)) + prev(bit7(0x00A175)) + prev(bit7(0x00A176)) +
               prev(bit7(0x00A177)) + prev(bit7(0x00A178)) + prev(bit7(0x00A179)) + prev(bit7(0x00A17A)) +
               prev(bit7(0x00A17B)) + prev(bit7(0x00A17C)) + prev(bit7(0x00A17D)) + prev(bit7(0x00A17E)) +
               prev(bit7(0x00A17F)) + prev(bit7(0x00A180)) + prev(bit7(0x00A181)) + prev(bit7(0x00A182)) +
               prev(bit7(0x00A183)) + prev(bit7(0x00A184)) + prev(bit7(0x00A185)) + prev(bit7(0x00A186)) +
               prev(bit7(0x00A187)) + prev(bit7(0x00A188)) + prev(bit7(0x00A189)) + prev(bit7(0x00A18A)) +
               prev(bit7(0x00A18B)) + prev(bit7(0x00A18C)) + prev(bit7(0x00A18D)) + prev(bit7(0x00A18E)) +
               prev(bit7(0x00A18F)) + prev(bit7(0x00A190)) + prev(bit7(0x00A191)) + prev(bit7(0x00A192)) +
               prev(bit7(0x00A193)) + prev(bit7(0x00A194)) + prev(bit7(0x00A195)) + prev(bit7(0x00A196)) +
               prev(bit7(0x00A197)) + prev(bit7(0x00A198)) + prev(bit7(0x00A199)) + prev(bit7(0x00A19A)) +
               prev(bit7(0x00A19B)) + prev(bit7(0x00A19C)) + prev(bit7(0x00A19D)) + prev(bit7(0x00A19E)) +
               prev(bit7(0x00A19F)) + prev(bit7(0x00A1A0)) + prev(bit7(0x00A1A2)) + prev(bit7(0x00A1A3)) +
               prev(bit7(0x00A1A4)) + prev(bit7(0x00A1A5)) + prev(bit7(0x00A1A6)) + prev(bit7(0x00A1A7)) +
               prev(bit7(0x00A1A8)) + prev(bit7(0x00A1A9)) + prev(bit7(0x00A1AA)) + prev(bit7(0x00A1AB)) +
               prev(bit7(0x00A1AC)) + prev(bit7(0x00A1AD)) + prev(bit7(0x00A1AE)) + prev(bit7(0x00A1AF)) +
               prev(bit7(0x00A1B0)) + prev(bit7(0x00A1B1)) + prev(bit7(0x00A1B2)) + prev(bit7(0x00A1B3)) +
               prev(bit7(0x00A1B4)) + prev(bit7(0x00A1B5)) + prev(bit7(0x00A1B6)) + prev(bit7(0x00A1B7)) +
               prev(bit7(0x00A1B8)) + prev(bit7(0x00A1B9)) + prev(bit7(0x00A1BA)) + prev(bit7(0x00A1BB)) +
               prev(bit7(0x00A1BC)) + prev(bit7(0x00A1BD)) + prev(bit7(0x00A1BE)) + prev(bit7(0x00A1BF)) +
               prev(bit7(0x00A1C0)) + prev(bit7(0x00A1C1)) + prev(bit7(0x00A1C2)) + prev(bit7(0x00A1C3)) +
               prev(bit7(0x00A1C4)) + prev(bit7(0x00A1C5)) + prev(bit7(0x00A1C6)) + prev(bit7(0x00A1C7)) +
               prev(bit7(0x00A1C8)) + prev(bit7(0x00A1C9)) + prev(bit7(0x00A1CA)) + prev(bit7(0x00A1CB)) +
               prev(bit7(0x00A1CC)) + prev(bit7(0x00A1CD)) + prev(bit7(0x00A1CE)) + prev(bit7(0x00A1CF)) +
               prev(bit7(0x00A1D0)) + prev(bit7(0x00A1D1)) + prev(bit7(0x00A1D2)) + prev(bit7(0x00A1D3)) +
               prev(bit7(0x00A1D4)) + prev(bit7(0x00A1D5)) + prev(bit7(0x00A1D6)) + prev(bit7(0x00A1D7)) +
               prev(bit7(0x00A1D8)) + prev(bit7(0x00A1D9)) + prev(bit7(0x00A1DA)) + prev(bit7(0x00A1DB)) +
               prev(bit7(0x00A1DC)) + prev(bit7(0x00A1DD)) + prev(bit7(0x00A1DE)) + prev(bit7(0x00A1DF)) +
               prev(bit7(0x00A1E0)) + prev(bit7(0x00A1E1)) + prev(bit7(0x00A1E2)) + prev(bit7(0x00A1E3)) +
               prev(bit7(0x00A1E4))) <= 10 && (prev(bit7(0x00A101)) + prev(bit7(0x00A102)) + prev(bit7(0x00A103)) +
               prev(bit7(0x00A104)) + prev(bit7(0x00A105)) + prev(bit7(0x00A106)) + prev(bit7(0x00A107)) +
               prev(bit7(0x00A108)) + prev(bit7(0x00A109)) + prev(bit7(0x00A10B)) + prev(bit7(0x00A10C)) +
               prev(bit7(0x00A10D)) + prev(bit7(0x00A10E)) + prev(bit7(0x00A10F)) + prev(bit7(0x00A110)) +
               prev(bit7(0x00A111)) + prev(bit7(0x00A112)) + prev(bit7(0x00A113)) + prev(bit7(0x00A114)) +
               prev(bit7(0x00A115)) + prev(bit7(0x00A116)) + prev(bit7(0x00A117)) + prev(bit7(0x00A118)) +
               prev(bit7(0x00A119)) + prev(bit7(0x00A11A)) + prev(bit7(0x00A11B)) + prev(bit7(0x00A11C)) +
               prev(bit7(0x00A11D)) + prev(bit7(0x00A11E)) + prev(bit7(0x00A11F)) + prev(bit7(0x00A120)) +
               prev(bit7(0x00A121)) + prev(bit7(0x00A122)) + prev(bit7(0x00A123)) + prev(bit7(0x00A124)) +
               prev(bit7(0x00A125)) + prev(bit7(0x00A126)) + prev(bit7(0x00A127)) + prev(bit7(0x00A128)) +
               prev(bit7(0x00A129)) + prev(bit7(0x00A12A)) + prev(bit7(0x00A12B)) + prev(bit7(0x00A12C)) +
               prev(bit7(0x00A12D)) + prev(bit7(0x00A12E)) + prev(bit7(0x00A12F)) + prev(bit7(0x00A130)) +
               prev(bit7(0x00A131)) + prev(bit7(0x00A132)) + prev(bit7(0x00A133)) + prev(bit7(0x00A134)) +
               prev(bit7(0x00A135)) + prev(bit7(0x00A136)) + prev(bit7(0x00A137)) + prev(bit7(0x00A138)) +
               prev(bit7(0x00A139)) + prev(bit7(0x00A13A)) + prev(bit7(0x00A13B)) + prev(bit7(0x00A13C)) +
               prev(bit7(0x00A13D)) + prev(bit7(0x00A13E)) + prev(bit7(0x00A13F)) + prev(bit7(0x00A140)) +
               prev(bit7(0x00A141)) + prev(bit7(0x00A142)) + prev(bit7(0x00A143)) + prev(bit7(0x00A144)) +
               prev(bit7(0x00A145)) + prev(bit7(0x00A146)) + prev(bit7(0x00A147)) + prev(bit7(0x00A148)) +
               prev(bit7(0x00A149)) + prev(bit7(0x00A14A)) + prev(bit7(0x00A14B)) + prev(bit7(0x00A14C)) +
               prev(bit7(0x00A14D)) + prev(bit7(0x00A14E)) + prev(bit7(0x00A14F)) + prev(bit7(0x00A150)) +
               prev(bit7(0x00A151)) + prev(bit7(0x00A152)) + prev(bit7(0x00A153)) + prev(bit7(0x00A154)) +
               prev(bit7(0x00A155)) + prev(bit7(0x00A156)) + prev(bit7(0x00A157)) + prev(bit7(0x00A158)) +
               prev(bit7(0x00A159)) + prev(bit7(0x00A15A)) + prev(bit7(0x00A15B)) + prev(bit7(0x00A15C)) +
               prev(bit7(0x00A15D)) + prev(bit7(0x00A15E)) + prev(bit7(0x00A15F)) + prev(bit7(0x00A160)) +
               prev(bit7(0x00A161)) + prev(bit7(0x00A162)) + prev(bit7(0x00A163)) + prev(bit7(0x00A164)) +
               prev(bit7(0x00A165)) + prev(bit7(0x00A166)) + prev(bit7(0x00A167)) + prev(bit7(0x00A168)) +
               prev(bit7(0x00A169)) + prev(bit7(0x00A16A)) + prev(bit7(0x00A16B)) + prev(bit7(0x00A16C)) +
               prev(bit7(0x00A16D)) + prev(bit7(0x00A16E)) + prev(bit7(0x00A16F)) + prev(bit7(0x00A170)) +
               prev(bit7(0x00A171)) + prev(bit7(0x00A172)) + prev(bit7(0x00A173)) + prev(bit7(0x00A174)) +
               prev(bit7(0x00A175)) + prev(bit7(0x00A176)) + prev(bit7(0x00A177)) + prev(bit7(0x00A178)) +
               prev(bit7(0x00A179)) + prev(bit7(0x00A17A)) + prev(bit7(0x00A17B)) + prev(bit7(0x00A17C)) +
               prev(bit7(0x00A17D)) + prev(bit7(0x00A17E)) + prev(bit7(0x00A17F)) + prev(bit7(0x00A180)) +
               prev(bit7(0x00A181)) + prev(bit7(0x00A182)) + prev(bit7(0x00A183)) + prev(bit7(0x00A184)) +
               prev(bit7(0x00A185)) + prev(bit7(0x00A186)) + prev(bit7(0x00A187)) + prev(bit7(0x00A188)) +
               prev(bit7(0x00A189)) + prev(bit7(0x00A18A)) + prev(bit7(0x00A18B)) + prev(bit7(0x00A18C)) +
               prev(bit7(0x00A18D)) + prev(bit7(0x00A18E)) + prev(bit7(0x00A18F)) + prev(bit7(0x00A190)) +
               prev(bit7(0x00A191)) + prev(bit7(0x00A192)) + prev(bit7(0x00A193)) + prev(bit7(0x00A194)) +
               prev(bit7(0x00A195)) + prev(bit7(0x00A196)) + prev(bit7(0x00A197)) + prev(bit7(0x00A198)) +
               prev(bit7(0x00A199)) + prev(bit7(0x00A19A)) + prev(bit7(0x00A19B)) + prev(bit7(0x00A19C)) +
               prev(bit7(0x00A19D)) + prev(bit7(0x00A19E)) + prev(bit7(0x00A19F)) + prev(bit7(0x00A1A0)) +
               prev(bit7(0x00A1A2)) + prev(bit7(0x00A1A3)) + prev(bit7(0x00A1A4)) + prev(bit7(0x00A1A5)) +
               prev(bit7(0x00A1A6)) + prev(bit7(0x00A1A7)) + prev(bit7(0x00A1A8)) + prev(bit7(0x00A1A9)) +
               prev(bit7(0x00A1AA)) + prev(bit7(0x00A1AB)) + prev(bit7(0x00A1AC)) + prev(bit7(0x00A1AD)) +
               prev(bit7(0x00A1AE)) + prev(bit7(0x00A1AF)) + prev(bit7(0x00A1B0)) + prev(bit7(0x00A1B1)) +
               prev(bit7(0x00A1B2)) + prev(bit7(0x00A1B3)) + prev(bit7(0x00A1B4)) + prev(bit7(0x00A1B5)) +
               prev(bit7(0x00A1B6)) + prev(bit7(0x00A1B7)) + prev(bit7(0x00A1B8)) + prev(bit7(0x00A1B9)) +
               prev(bit7(0x00A1BA)) + prev(bit7(0x00A1BB)) + prev(bit7(0x00A1BC)) + prev(bit7(0x00A1BD)) +
               prev(bit7(0x00A1BE)) + prev(bit7(0x00A1BF)) + prev(bit7(0x00A1C0)) + prev(bit7(0x00A1C1)) +
               prev(bit7(0x00A1C2)) + prev(bit7(0x00A1C3)) + prev(bit7(0x00A1C4)) + prev(bit7(0x00A1C5)) +
               prev(bit7(0x00A1C6)) + prev(bit7(0x00A1C7)) + prev(bit7(0x00A1C8)) + prev(bit7(0x00A1C9)) +
               prev(bit7(0x00A1CA)) + prev(bit7(0x00A1CB)) + prev(bit7(0x00A1CC)) + prev(bit7(0x00A1CD)) +
               prev(bit7(0x00A1CE)) + prev(bit7(0x00A1CF)) + prev(bit7(0x00A1D0)) + prev(bit7(0x00A1D1)) +
               prev(bit7(0x00A1D2)) + prev(bit7(0x00A1D3)) + prev(bit7(0x00A1D4)) + prev(bit7(0x00A1D5)) +
               prev(bit7(0x00A1D6)) + prev(bit7(0x00A1D7)) + prev(bit7(0x00A1D8)) + prev(bit7(0x00A1D9)) +
               prev(bit7(0x00A1DA)) + prev(bit7(0x00A1DB)) + prev(bit7(0x00A1DC)) + prev(bit7(0x00A1DD)) +
               prev(bit7(0x00A1DE)) + prev(bit7(0x00A1DF)) + prev(bit7(0x00A1E0)) + prev(bit7(0x00A1E1)) +
               prev(bit7(0x00A1E2)) + prev(bit7(0x00A1E3)) + prev(bit7(0x00A1E4))) >= 1
)
