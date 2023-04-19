// ~Hack~ Pokemon AshGray Version
// #ID = 5245

// Ticket 58460: Achievement triggered too soon, I only have 2 pokemons
//               RetroAchievements Hash: 92262059190c05a5615be6b98612fb14
//               Emulator: RetroArch (mgba)
//               Emulator Version: 0.11-dev a69c343
// Ticket 57901: The achievement triggered right at the start of the game the first time I opened the dex
//               RetroAchievements Hash: 92262059190c05a5615be6b98612fb14
//               Emulator: RetroArch (mGBA)
//               Emulator Version: 1.15.0
// Ticket 55096: Achievement popped up when I opened my pokedex at 8 Pokemon. Save is available if a dev needs kt.
//               RetroAchievements Hash: 92262059190c05a5615be6b98612fb14
//               Emulator: RetroArch (mGBA)
//               Emulator Version: current Version
// Ticket 54756: Popped when i checked the pokedex after seeing ho-oh!
//               RetroAchievements Hash: 92262059190c05a5615be6b98612fb14
//               Emulator: RetroArch (VBA-M)
//               Emulator Version: 2.1.3 7e30b03

GlobalPointer = tbyte(0x00500c)
GlobalPointer2 = tbyte(0x005010)
StartPokedex = 0x8028

AreaID = word(0x03ee0e)
MapID = word(0x03ee10)

function Pokedex(startOffset, start, finish, quantity){
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
    return measured(sum_of(BitFlags, f => f) == quantity) && sum_of(BitFlags, f => prev(f)) == quantity-1
}



achievement(
    title = "Better then Ash... Slightly", points = 25,
    description = "Capture 100 types of Pokemon in the National Index (check pokedex)",
    id = 39548, badge = "40485", published = "3/9/2016 16:27:28", modified = "22/11/2022 06:44:47",
    trigger = AreaID != 0 && MapID != 0 && AreaID == prev(AreaID) && MapID == prev(MapID) && GlobalPointer == prev(GlobalPointer) && GlobalPointer2 == prev(GlobalPointer2) && Pokedex(StartPokedex, 1, 387, 100)
)
