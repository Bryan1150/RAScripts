// Rune Factory: A Fantasy Harvest Moon
// #ID = 12704

//0x145bc2 Event Flags
//Bit 6 = Defeated Monster at start (Useful for save protection)
StartingMonster = bit6(0x145bc2)
//0x145be2 Event Flags
//Bit0 = Get Fishing Rod (Conversation with Sabrina on the pier in the beach where she gives the fishing rod)
FishingRodEvent = bit0(0x145be2)

FirstInventorySlot = 0x1a34b8
LastInventorySlot = 0x1a3568

SturdyHoe = 0x156


function InventoryID(address){
    ID = byte(address) + (bit0(address+1) * 256) + (bit1(address+1) * 512)
    return ID
}

function SaveProtection(){
    logic = prev(StartingMonster) == 1
    return logic
}

function SimpleEvent(eventFlag){
    logic = SaveProtection() && prev(eventFlag) == 0 && eventFlag == 1
    return logic
}


achievement(
    title= "Do You Like Fishing?",
    description= "Get the fishing rod from Sabrina",
    points= 1,
    trigger = SimpleEvent(FishingRodEvent)       
)