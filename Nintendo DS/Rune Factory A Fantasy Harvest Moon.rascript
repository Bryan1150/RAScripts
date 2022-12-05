// Rune Factory: A Fantasy Harvest Moon
// #ID = 12704

//0x145bc2 Event Flags
//Bit 6 = Defeated Monster at start (Useful for save protection)
StartingMonster = bit6(0x145bc2)
//0x145be2 Event Flags
FishingRodEvent = bit0(0x145be2) //Bit0 = Get Fishing Rod (Conversation with Sabrina on the pier in the beach where she gives the fishing rod)
AxeEvent = bit5(0x145be1)//0x145be1 Bit5 = Got Cheap Axe from Bianca and Tabatha
SickleEvent = bit4(0x145be1)//Bit4 = Got Cheap Sickle from Rosetta
HammerEvent = bit6(0x145be1)//Bit6 = Got Cheap Hammer from Leo

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

ToolEvents = {
    "1": {"title": "Do You Like Fishing?", "description": "Get the fishing rod from Sabrina", "points": 1, "flags": FishingRodEvent},
    "2": {"title": "You Better Work Hard!", "description": "Get the axe from Bianca", "points": 1, "flags": AxeEvent},
    "3": {"title": "Cutting the Weeds", "description": "Get the sickle from Rosetta", "points": 2, "flags": SickleEvent},
    "4": {"title": "Break Them Open", "description": "Get the hammer from Leo", "points": 3, "flags": HammerEvent},
}


for flags in ToolEvents{
    achievement(
        title = ToolEvents[flags]["title"],
        description = ToolEvents[flags]["description"],
        points = ToolEvents[flags]["points"],
        trigger = SaveProtection() && SimpleEvent(ToolEvents[flags]["flags"])
    )
}