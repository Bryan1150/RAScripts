// Crash Bandicoot 3: Warped
// #ID = 10433

LevelID = byte(0x068EF9)
Level1 = 0x0b
Level2 = 0x0e
Level3 = 0x0a
Level4 = 0x0c
Level5 = 0x19
//0x0f = Level 6 - Gee Wiz 
//0x16 = Level 7/27 - Hang Em' High 
//0x15 = Level 8 - Hog Ride
//0x12 = Level 9 - Tomb Time
//0x11 = Level 10 - Midnight Run
Level6 = 0x0f
Level7 = 0x16
Level8 = 0x15
Level9 = 0x12
Level10 = 0x11
//0x10 = Level 11 - Dino Might!
//0x1c = Level 12 - Deep Trouble
//0x1a = Level 13 - Low Time
//0x14 = Level 14 - Road Crash
//0x1d = Level 15 - Double Header
Level11 = 0x10
Level12 = 0x1c
Level13 = 0x1a
Level14 = 0x14
Level15 = 0x1d
//0x1e = Level 16 - Sphynxinator
//0x13 = Level 17 - Bye Bye Blimps
//0x0d = Level 18 - Tell No Tales
//0x1b = Level 19/29 - Future Frenzy
//0x18 = Level 20 - Tomb Wader
Level16 = 0x1e
Level17 = 0x13
Level18 = 0x0d
Level19 = 0x1b
Level20 = 0x18
//0x23 = Level 21 - Gone Tomorrow
//0x20 = Level 22 - Orange Asphalt
//0x22 = Level 23 - Flaming Passion
//0x17 = Level 24 - Mad Bombers
//0x24 = Level 25 - Bug Lite
Level21 = 0x23
Level22 = 0x20
Level23 = 0x22
Level24 = 0x17
Level25 = 0x24
//0x21 = Level 26 - Ski Crazed
//0x25 = Level 28 - Area 51?
//0x1f = Level 30 - Rings Of Power
//0x27 = Level 31 - Hot Coco
//0x26 = Level 32 - Eggipus Rex
Level26 = 0x21
Level28 = 0x25
Level30 = 0x1f
Level31 = 0x27
Level32 = 0x26
TinyTiger = 0x06
Dingodile = 0x03 
NTropy = 0x04
NGin = 0x05
NCortex = 0x07
VortexBoss = 0x3a
Hub = 0x02
IncompleteEnding = 0x29
HundredEnding = 0x2a
Titles = 0x3c

BossDataPointer = tbyte(0x067a48)
TinyTigerHealth = byte(BossDataPointer + 0xE5)

//Powers
BodySlam = bit0(0x069178)
DoubleJump = bit1(0x069178)
DeathTornado = bit2(0x069178)
FruitBazooka = bit3(0x069178)
SpeedShoes = bit4(0x069178)

GameState = byte(0x068f3d)
NormalGameplay = 0x01
CompleteStage = 0x03
function PointerPrecaution(pointer){
    return (pointer != 0 && prev(pointer) == pointer)
}

function MainProgression(levelID, PowerUp){
    return
    (prior(LevelID) == VortexBoss || prior(LevelID) == Hub) &&
    LevelID == levelID && 
    PowerUp == 1 &&
    prev(PowerUp) == 0
}


achievement(
    title = "Gladiator Tiger", points = 5,
    description = "Defeat Tiny Tiger and get the Super Charged Body Slam",
    id = 88298, published = "15/11/2019 01:49:21", modified = "22/8/2020 09:26:56",
    trigger = 
    MainProgression(TinyTiger, BodySlam)
)

achievement(
    title = "Flamethrower Age", points = 5,
    description = "Defeat Dingodile and get the Double Jump",
    id = 88311, published = "15/11/2019 01:49:57", modified = "16/8/2020 18:27:24",
    trigger = 
    MainProgression(Dingodile, DoubleJump)
)

achievement(
    title = "Time Machinator", points = 5,
    description = "Defeat N. Tropy and get the Death Tornado Spin",
    id = 88324, published = "15/11/2019 01:50:32", modified = "31/5/2020 02:49:59",
    trigger = 
    MainProgression(NTropy, DeathTornado)
)

achievement(
    title = "Advanced Mech", points = 5,
    description = "Defeat N. Gin and get the Fruit Bazooka",
    id = 88337, published = "15/11/2019 01:51:08", modified = "31/5/2020 02:50:14",
    trigger = 
    MainProgression(NGin, FruitBazooka)
)

achievement(
    title = "N. Disposed", points = 10,
    description = "Defeat Neo Cortex and get the Speed Shoes",
    id = 88350, published = "15/11/2019 01:51:42", modified = "8/9/2021 10:12:57",
    trigger = 
    MainProgression(NCortex, SpeedShoes) || (prev(LevelID) == NCortex && (LevelID == IncompleteEnding || LevelID == HundredEnding))
)
//Bit2 = Red gem
//Bit3 = Green gem
//Bit4 = Purple gem
//Bit5 = Blue gem
//Bit6 = Yellow gem
RedGem = bit2(0x068fb7)
GreenGem = bit3(0x068fb7)
PurpleGem = bit4(0x068fb7)
BlueGem = bit5(0x068fb7)
YellowGem = bit6(0x068fb7)



function ColoredGem(flag, stage){
return
    prior(LevelID) == stage &&
    LevelID == Hub &&
    prev(flag) == 0 &&
    flag == 1
}

achievement(
    title = "High Yellow", points = 5,
    description = "Obtain the Topaz in Hang'em High",
    id = 88590, published = "16/11/2019 18:54:27", modified = "16/5/2020 11:04:16",
    trigger = ColoredGem(YellowGem, Level7)
)

achievement(
    title = "Deep Red", points = 5,
    description = "Obtain the Ruby in Deep Trouble",
    id = 88589, published = "16/11/2019 18:54:24", modified = "17/5/2020 23:06:47",
    trigger = ColoredGem(RedGem, Level12)
)

achievement(
    title = "Purple Time", points = 5,
    description = "Obtain the Amethyst in High Time",
    id = 88592, published = "16/11/2019 18:54:33", modified = "16/5/2020 10:49:31",
    trigger = ColoredGem(PurpleGem, Level13)
)

achievement(
    title = "Blue Wader", points = 5,
    description = "Obtain the Sapphire in Tomb Wader",
    id = 88588, published = "16/11/2019 18:54:22", modified = "16/5/2020 11:11:31",
    trigger = ColoredGem(BlueGem, Level20)
)

achievement(
    title = "Green Passion", points = 5,
    description = "Obtain the Emerald in Flaming Passion",
    id = 88591, published = "16/11/2019 18:54:30", modified = "16/5/2020 10:56:08",
    trigger = ColoredGem(GreenGem, Level23)
)

ExtraGems1 = [
    bit1(0x068fb0),
    bit2(0x068fb0),
    bit3(0x068fb0)
]

ExtraGems2 = [
    bit4(0x068fb0),
    bit5(0x068fb0),
    bit6(0x068fb0),
    bit7(0x068fb0)
]

World1Gems = [
    bit3(0x068fb1),
    bit6(0x068fb1),
    bit2(0x068fb1),
    bit4(0x068fb1),
    bit1(0x068fb3)
]

World2Gems = [
    bit7(0x068fb1),
    bit6(0x068fb2),
    bit5(0x068fb2),
    bit2(0x068fb2),
    bit1(0x068fb2)
]

World3Gems = [
    bit0(0x068fb2),
    bit4(0x068fb3),
    bit2(0x068fb3),
    bit4(0x068fb2),
    bit5(0x068fb3)
]

World4Gems = [
    bit6(0x068fb3),
    bit3(0x068fb2),
    bit5(0x068fb1),
    bit3(0x068fb3),
    bit0(0x068fb3)
]

World5Gems = [
    bit3(0x068fb4),
    bit0(0x068fb4),
    bit2(0x068fb4),
    bit7(0x068fb2),
    bit4(0x068fb4)
]

WorldSecretGems = [
    bit1(0x068fb4),
    bit5(0x068fb4),
    bit7(0x068fb3),
    bit0(0x068fb1),
    bit1(0x068fb1)
]

HotCocoGem = bit7(0x068fb4)
EggipusRexGem = bit6(0x068fb4)

function GemsLogic(flags){
return
    prior(LevelID) != Titles &&
    LevelID == Hub &&
    measured(sum_of(flags, gem => gem) == length(flags)) &&
    sum_of(flags, gem => prev(gem)) == length(flags) - 1
}

function SingleGemLogic(flag, level){
return
    prior(LevelID) == level &&
    LevelID == Hub &&
    prev(flag) == 0 &&
    flag == 1  
}

achievement(
    title = "Secret Goods", points = 5,
    description = "Obtain every extra gem from the First, Second and Third Areas",
    id = 88587, published = "16/11/2019 18:54:19", modified = "16/5/2020 11:19:50",
    trigger = GemsLogic(ExtraGems1)
)

achievement(
    title = "Hidden Extras", points = 5,
    description = "Obtain every extra gem from the Fourth and Fifth Areas",
    id = 88593, published = "16/11/2019 18:54:36", modified = "16/5/2020 10:21:07",
    trigger = GemsLogic(ExtraGems2)
)

achievement(
    title = "Hot Cocoa", points = 5,
    description = "Obtain the gem from Hot Coco",
    id = 89275, published = "26/11/2019 00:55:04", modified = "16/5/2020 10:44:36",
    trigger = SingleGemLogic(HotCocoGem, Level31)
)

achievement(
    title = "Gem-ipus Rex", points = 5,
    description = "Obtain the gem from Eggipus Rex",
    id = 89276, published = "26/11/2019 00:55:09", modified = "16/5/2020 10:40:08",
    trigger = SingleGemLogic(EggipusRexGem, Level32)
)

achievement(
    title = "Medieval Camelot", points = 5,
    description = "Obtain every box gem in the First Area",
    id = 88297, published = "15/11/2019 01:49:18", modified = "13/2/2021 22:13:34",
    trigger = GemsLogic(World1Gems)
)

achievement(
    title = "Sands of Time", points = 5,
    description = "Obtain every box gem in the Second Area",
    id = 88310, published = "15/11/2019 01:49:54", modified = "16/5/2020 11:56:10",
    trigger = GemsLogic(World2Gems)
)

achievement(
    title = "Oriental Warrior", points = 5,
    description = "Obtain every box gem in the Third Area",
    id = 88323, published = "15/11/2019 01:50:29", modified = "20/5/2020 21:55:53",
    trigger = GemsLogic(World3Gems)
)

achievement(
    title = "Tomb Raider", points = 5,
    description = "Obtain every box gem in the Fourth Area",
    id = 88336, published = "15/11/2019 01:51:06", modified = "16/2/2021 16:50:32",
    trigger = GemsLogic(World4Gems)
)

achievement(
    title = "Back to the Future", points = 5,
    description = "Obtain every box gem in the Fifth Area",
    id = 88349, published = "15/11/2019 01:51:39", modified = "16/5/2021 21:41:18",
    trigger = GemsLogic(World5Gems)
)

achievement(
    title = "I’ll Be Back", points = 5,
    description = "Obtain every clear gem in the Secret Area",
    id = 88586, published = "16/11/2019 18:54:16", modified = "16/5/2020 11:52:14",
    trigger = 
    prior(LevelID) != Titles &&
    LevelID == Hub &&
    measured(sum_of(WorldSecretGems, gem => gem) == length(WorldSecretGems)) &&
    sum_of(WorldSecretGems, gem => prev(gem)) <= length(WorldSecretGems) - 1 &&
    sum_of(WorldSecretGems, gem => prev(gem)) >= length(WorldSecretGems) - 2
)
//This one is easier by hand lmao
function PlatinumRelicLogic(){
    
}

achievement(
    title = "Toad Jumping", points = 10,
    description = "Obtain the platinum relic in Toad Village",
    id = 88300, published = "15/11/2019 01:49:26", modified = "15/5/2020 17:18:24",
    trigger = always_true() &&
              ((byte(0x068EF9) == 11 && prev(bit3(0x0691C5)) == 0 && prev(bit3(0x0691CD)) == 0 && bit3(0x0691C5) == 1 && 
                bit3(0x0691CD) == 1)) 
)

achievement(
    title = "You Were Under Pressure", points = 10,
    description = "Obtain the platinum relic in Under Pressure",
    id = 88302, published = "15/11/2019 01:49:31", modified = "15/5/2020 17:15:39",
    trigger = always_true() &&
              ((byte(0x068EF9) == 14 && prev(bit6(0x0691C5)) == 0 && prev(bit6(0x0691CD)) == 0 && bit6(0x0691C5) == 1 && 
                bit6(0x0691CD) == 1))
)

achievement(
    title = "Literally Express", points = 10,
    description = "Obtain the platinum relic in Orient Express",
    id = 88304, published = "15/11/2019 01:49:38", modified = "15/5/2020 17:13:00",
    trigger = always_true() &&
              ((byte(0x068EF9) == 10 && prev(bit2(0x0691C5)) == 0 && prev(bit2(0x0691CD)) == 0 && bit2(0x0691C5) == 1 && 
                bit2(0x0691CD) == 1))
)

achievement(
    title = "Bone Rush", points = 10,
    description = "Obtain the platinum relic in Bone Yard",
    id = 88306, published = "15/11/2019 01:49:44", modified = "15/5/2020 16:29:35",
    trigger = always_true() &&
              ((byte(0x068EF9) == 12 && prev(bit4(0x0691C5)) == 0 && prev(bit4(0x0691CD)) == 0 && bit4(0x0691C5) == 1 && 
                bit4(0x0691CD) == 1))
)

achievement(
    title = "Makin' Times", points = 10,
    description = "Obtain the platinum relic in Makin' Waves",
    id = 88308, published = "15/11/2019 01:49:49", modified = "15/5/2020 17:10:15",
    trigger = always_true() &&
              ((byte(0x068EF9) == 25 && prev(bit1(0x0691C7)) == 0 && prev(bit1(0x0691CF)) == 0 && bit1(0x0691C7) == 1 && 
                bit1(0x0691CF) == 1))
)

achievement(
    title = "Gee Whoosh", points = 10,
    description = "Obtain the platinum relic in Gee Wiz",
    id = 88313, published = "15/11/2019 01:50:02", modified = "15/2/2021 10:22:27",
    trigger = always_true() &&
              ((byte(0x068EF9) == 15 && prev(bit7(0x0691C5)) == 0 && prev(bit7(0x0691CD)) == 0 && bit7(0x0691C5) == 1 && 
                bit7(0x0691CD) == 1 ))
)

achievement(
    title = "Ran'em Fast", points = 10,
    description = "Obtain the platinum relic in Hang'em High",
    id = 88315, published = "15/11/2019 01:50:08", modified = "15/5/2020 17:02:04",
    trigger = always_true() &&
              ((byte(0x068EF9) == 22 && prev(bit6(0x0691C6)) == 0 && prev(bit6(0x0691CE)) == 0 && bit6(0x0691C6) == 1 && 
                bit6(0x0691CE) == 1))
)

achievement(
    title = "Hog Race", points = 10,
    description = "Obtain the platinum relic in Hog Ride",
    id = 88317, published = "15/11/2019 01:50:13", modified = "15/2/2021 20:22:28",
    trigger = always_true() &&
              ((byte(0x068EF9) == 21 && prev(bit5(0x0691C6)) == 0 && prev(bit5(0x0691CE)) == 0 && bit5(0x0691C6) == 1 && 
                bit5(0x0691CE) == 1))
)

achievement(
    title = "The Tomb Time", points = 10,
    description = "Obtain the platinum relic in Tomb Time",
    id = 88319, published = "15/11/2019 01:50:19", modified = "13/4/2021 03:32:50",
    trigger = always_true() &&
              ((byte(0x068EF9) == 18 && prev(bit2(0x0691C6)) == 0 && prev(bit2(0x0691CE)) == 0 && bit2(0x0691C6) == 1 && 
                bit2(0x0691CE) == 1))
)

achievement(
    title = "Midnight Sprint", points = 10,
    description = "Obtain the platinum relic in Midnight Run",
    id = 88321, published = "15/11/2019 01:50:23", modified = "14/2/2021 23:08:58",
    trigger = always_true() &&
              ((byte(0x068EF9) == 17 && prev(bit1(0x0691C6)) == 0 && prev(bit1(0x0691CE)) == 0 && bit1(0x0691C6) == 1 && 
                bit1(0x0691CE) == 1))
)

achievement(
    title = "Dino Boost!", points = 10,
    description = "Obtain the platinum relic in Dino Might",
    id = 88326, published = "15/11/2019 01:50:38", modified = "15/5/2020 22:53:21",
    trigger = always_true() &&
              ((byte(0x068EF9) == 16 && prev(bit0(0x0691C6)) == 0 && prev(bit0(0x0691CE)) == 0 && bit0(0x0691C6) == 1 && 
                bit0(0x0691CE) == 1))
)

achievement(
    title = "No Trouble", points = 10,
    description = "Obtain the platinum relic in Deep Trouble",
    id = 88328, published = "15/11/2019 01:50:43", modified = "13/4/2021 03:31:57",
    trigger = always_true() &&
              ((byte(0x068EF9) == 28 && prev(bit4(0x0691C7)) == 0 && prev(bit4(0x0691CF)) == 0 && bit4(0x0691C7) == 1 && 
                bit4(0x0691CF) == 1))
)

achievement(
    title = "Low Time", points = 10,
    description = "Obtain the platinum relic in High Time",
    id = 88330, published = "15/11/2019 01:50:48", modified = "15/2/2021 20:24:22",
    trigger = always_true() &&
              ((byte(0x068EF9) == 26 && prev(bit2(0x0691C7)) == 0 && prev(bit2(0x0691CF)) == 0 && bit2(0x0691C7) == 1 && 
                bit2(0x0691CF) == 1))
)

achievement(
    title = "Dash Crash", points = 10,
    description = "Obtain the platinum relic in Road Crash",
    id = 88332, published = "15/11/2019 01:50:54", modified = "15/2/2021 20:17:40",
    trigger = always_true() &&
              ((byte(0x068EF9) == 20 && prev(bit4(0x0691C6)) == 0 && prev(bit4(0x0691CE)) == 0 && bit4(0x0691C6) == 1 && 
                bit4(0x0691CE) == 1))
)

achievement(
    title = "Double Tempo", points = 10,
    description = "Obtain the platinum relic in Double Header",
    id = 88334, published = "15/11/2019 01:51:00", modified = "15/5/2020 17:27:45",
    trigger = always_true() &&
              ((byte(0x068EF9) == 29 && prev(bit5(0x0691C7)) == 0 && prev(bit5(0x0691CF)) == 0 && bit5(0x0691C7) == 1 && 
                bit5(0x0691CF) == 1))
)

achievement(
    title = "Speedxinator", points = 10,
    description = "Obtain the platinum relic in Sphynxinator",
    id = 88339, published = "15/11/2019 01:51:13", modified = "15/5/2020 16:03:41",
    trigger = always_true() &&
              ((byte(0x068EF9) == 30 && prev(bit6(0x0691C7)) == 0 && prev(bit6(0x0691CF)) == 0 && bit6(0x0691C7) == 1 && 
                bit6(0x0691CF) == 1))
)

achievement(
    title = "Hello Hello Record", points = 10,
    description = "Obtain the platinum relic in Bye Bye Blimps",
    id = 88341, published = "15/11/2019 01:51:18", modified = "15/5/2020 16:01:39",
    trigger = always_true() &&
              ((byte(0x068EF9) == 19 && prev(bit3(0x0691C6)) == 0 && prev(bit3(0x0691CE)) == 0 && bit3(0x0691C6) == 1 && 
                bit3(0x0691CE) == 1))
)

achievement(
    title = "Tell No Strats", points = 10,
    description = "Obtain the platinum relic in Tell No Tales",
    id = 88343, published = "15/11/2019 01:51:23", modified = "15/5/2020 16:00:07",
    trigger = always_true() &&
              ((byte(0x068EF9) == 13 && prev(bit5(0x0691C5)) == 0 && prev(bit5(0x0691CD)) == 0 && bit5(0x0691C5) == 1 && 
                bit5(0x0691CD) == 1))
)

achievement(
    title = "Future Switftness", points = 10,
    description = "Obtain the platinum relic in Future Frenzy",
    id = 88345, published = "15/11/2019 01:51:29", modified = "15/5/2020 22:05:09",
    trigger = always_true() &&
              ((byte(0x068EF9) == 27 && prev(bit3(0x0691C7)) == 0 && prev(bit3(0x0691CF)) == 0 && bit3(0x0691C7) == 1 && 
                bit3(0x0691CF) == 1))
)

achievement(
    title = "Tomb Fleetness", points = 10,
    description = "Obtain the platinum relic in Tomb Wader",
    id = 88347, published = "15/11/2019 01:51:34", modified = "15/5/2020 14:28:34",
    trigger = always_true() &&
              ((byte(0x068EF9) == 24 && (prev(bit0(0x0691C7)) + prev(bit0(0x0691CF))) < 2 && bit0(0x0691C7) == 1 && 
                bit0(0x0691CF) == 1))
)

achievement(
    title = "Came Yesterday", points = 10,
    description = "Obtain the platinum relic in Gone Tomorrow",
    id = 88577, published = "16/11/2019 18:53:50", modified = "15/5/2020 15:20:34",
    trigger = always_true() &&
              ((byte(0x068EF9) == 35 && (prev(bit3(0x0691C8)) + prev(bit3(0x0691D0))) < 2 && bit3(0x0691C8) == 1 && 
                bit3(0x0691D0) == 1))
)

achievement(
    title = "Orange Celerity", points = 10,
    description = "Obtain the platinum relic in Orange Asphalt",
    id = 88579, published = "16/11/2019 18:53:56", modified = "15/5/2020 18:06:40",
    trigger = always_true() &&
              ((byte(0x068EF9) == 32 && prev(bit0(0x0691C8)) == 0 && prev(bit0(0x0691D0)) == 0 && bit0(0x0691C8) == 1 && 
                bit0(0x0691D0) == 1))
)

achievement(
    title = "Flamming Bolt", points = 10,
    description = "Obtain the platinum relic in Flaming Passion",
    id = 88581, published = "16/11/2019 18:54:01", modified = "15/5/2020 14:36:05",
    trigger = always_true() &&
              ((byte(0x068EF9) == 34 && (prev(bit2(0x0691C8)) + prev(bit2(0x0691D0))) < 2 && bit2(0x0691C8) == 1 && 
                bit2(0x0691D0) == 1))
)

achievement(
    title = "Mad Flash", points = 10,
    description = "Obtain the platinum relic in Mad Bombers",
    id = 88583, published = "16/11/2019 18:54:08", modified = "15/5/2020 15:26:13",
    trigger = always_true() &&
              ((byte(0x068EF9) == 23 && (prev(bit7(0x0691C6)) + prev(bit7(0x0691CE))) < 2 && bit7(0x0691C6) == 1 && 
                bit7(0x0691CE) == 1))
)

achievement(
    title = "Bug Zoom", points = 10,
    description = "Obtain the platinum relic in Bug Lite",
    id = 88585, published = "16/11/2019 18:54:13", modified = "15/5/2020 16:23:25",
    trigger = always_true() &&
              ((byte(0x068EF9) == 36 && prev(bit4(0x0691C8)) == 0 && prev(bit4(0x0691D0)) == 0 && bit4(0x0691C8) == 1 && 
                bit4(0x0691D0) == 1))
)

achievement(
    title = "Hurry Crazed", points = 10,
    description = "Obtain the platinum relic in Ski Crazed",
    id = 88595, published = "16/11/2019 18:54:41", modified = "15/5/2020 16:19:27",
    trigger = always_true() &&
              ((byte(0x068EF9) == 33 && prev(bit1(0x0691C8)) == 0 && prev(bit1(0x0691D0)) == 0 && bit1(0x0691C8) == 1 && 
                bit1(0x0691D0) == 1))
)

achievement(
    title = "Area 51 MPH", points = 10,
    description = "Obtain the platinum relic in Area 51?",
    id = 88597, published = "16/11/2019 18:54:47", modified = "15/5/2020 16:13:02",
    trigger = always_true() &&
              ((byte(0x068EF9) == 37 && prev(bit5(0x0691C8)) == 0 && prev(bit5(0x0691D0)) == 0 && bit5(0x0691C8) == 1 && 
                bit5(0x0691D0) == 1))
)

achievement(
    title = "Rings of Haste", points = 10,
    description = "Obtain the platinum relic in Rings of Power",
    id = 88599, published = "16/11/2019 18:54:52", modified = "15/5/2020 16:09:51",
    trigger = always_true() &&
              ((byte(0x068EF9) == 31 && prev(bit7(0x0691C7)) == 0 && prev(bit7(0x0691CF)) == 0 && bit7(0x0691C7) == 1 && 
                bit7(0x0691CF) == 1))
)



NormalDeathlessGems ={
1:{"title":"Battletoads", "description":"Break every box in Toad Village without losing a life", "points":5, "stageID":Level1, "BoxCount":42},
2:{"title":"Pushing Down on Me", "description":"Break every box in Under Pressure without losing a life", "points":5, "stageID":Level2, "BoxCount":92},
3:{"title":"Deathless Express", "description":"Break every box in Orient Express without losing a life", "points":5, "stageID":Level3, "BoxCount":51},
4:{"title":"Strong Bones", "description":"Break every box in Bone Yard without losing a life", "points":5, "stageID":Level4, "BoxCount":66},
5:{"title":"Makin' Health", "description":"Break every box in Makin' Waves without losing a life", "points":5, "stageID":Level5, "BoxCount":37},
6:{"title":"Gem Wiz", "description":"Break every box in Gee Wiz without losing a life", "points":5, "stageID":Level6, "BoxCount":100},
7:{"title":"High Stakes", "description":"Break every box in Hang'em High without losing a life", "points":5, "stageID":Level7, "BoxCount":96},
9:{"title":"Time to (Not) Die", "description":"Break every box in Tomb Time without losing a life", "points":5, "stageID":Level9, "BoxCount":95},
10:{"title":"Midnight Walk", "description":"Break every box in Midnight Run without losing a life", "points":5, "stageID":Level10, "BoxCount":35},
11:{"title":"Death Might!", "description":"Break every box in Dino Might! without losing a life", "points":5, "stageID":Level11, "BoxCount":112},
12:{"title":"Keep Calm", "description":"Break every box in Deep Trouble without losing a life", "points":5, "stageID":Level12, "BoxCount":83},
13:{"title":"Time to (Not) Die Again", "description":"Break every box in High Time without losing a life", "points":5, "stageID":Level13, "BoxCount":85},
15:{"title":"Head Straight", "description":"Break every box in Double Header without losing a life", "points":5, "stageID":Level15, "BoxCount":91},
16:{"title":"Gemxinator", "description":"Break every box in Sphynxinator without losing a life", "points":5, "stageID":Level16, "BoxCount":105},
18:{"title":"Tell the Tale", "description":"Break every box in Tell No Tales without losing a life", "points":5, "stageID":Level18, "BoxCount":61},
19:{"title":"Future is Bright", "description":"Break every box in Future Frenzy without losing a life", "points":5, "stageID":Level19, "BoxCount":133},
20:{"title":"This Isn't My Tomb", "description":"Break every box in Tomb Wader without losing a life", "points":5, "stageID":Level20, "BoxCount":88},
21:{"title":"Living Tomorrow", "description":"Break every box in Gone Tomorrow without losing a life", "points":5, "stageID":Level21, "BoxCount":87},
22:{"title":"Life Passion", "description":"Break every box in Flaming Passion without losing a life", "points":5, "stageID":Level23, "BoxCount":75},
23:{"title":"Lite Life", "description":"Break every box in Bug Lite without losing a life", "points":5, "stageID":Level25, "BoxCount":120},
24:{"title":"Crazy Sky", "description":"Break every box in Ski Crazed without losing a life", "points":5, "stageID":Level26, "BoxCount":100},
25:{"title":"Cold Coco", "description":"Break every box in Hot Coco without losing a life", "points":5, "stageID":Level31, "BoxCount":70},
}
CrashDataPointer = tbyte(0x068e98)
TotalCrates = byte(CrashDataPointer + 0x169)
DeathCounter = word(0x068f0d)

function NormalDeathlessGemLogic(stage, BoxCount){
    return
    LevelID == stage &&
    DeathCounter == 0 &&
    GameState == NormalGameplay &&
    trigger_when(TotalCrates == BoxCount) &&
    prev(TotalCrates) < BoxCount &&
    trigger_when(prev(TotalCrates) != 0)
}

for cheevo in NormalDeathlessGems{
    achievement(
        title = NormalDeathlessGems[cheevo]["title"],
        description = NormalDeathlessGems[cheevo]["description"],
        points = NormalDeathlessGems[cheevo]["points"],
        trigger = NormalDeathlessGemLogic(NormalDeathlessGems[cheevo]["stageID"], NormalDeathlessGems[cheevo]["BoxCount"])
    )
}

World1Sapphires = [
    bit3(0x0691b5),
    bit6(0x0691b5),
    bit2(0x0691b5),
    bit4(0x0691b5),
    bit1(0x0691b7)
]

World2Sapphires = [
    bit7(0x0691b5),
    bit6(0x0691b6),
    bit5(0x0691b6),
    bit2(0x0691b6),
    bit1(0x0691b6),
]

World3Sapphires = [
    bit0(0x0691b6),
    bit4(0x0691b7),
    bit2(0x0691b7),
    bit4(0x0691b6),
    bit5(0x0691b7),
]
World4Sapphires = [
    bit6(0x0691b7),
    bit3(0x0691b6),
    bit5(0x0691b5),
    bit3(0x0691b7),
    bit0(0x0691b7)
]

World5Sapphires = [
    bit3(0x0691b8),
    bit0(0x0691b8),
    bit2(0x0691b8),
    bit7(0x0691b6),
    bit4(0x0691b8),
]

WorldSecretSapphires = [
    bit1(0x0691b8),
    bit5(0x0691b8),
    bit7(0x0691b7)
]

World1Golds = [
    bit3(0x0691bd),
    bit6(0x0691bd),
    bit2(0x0691bd),
    bit4(0x0691bd),
    bit1(0x0691bf)
]

World2Golds = [
     bit7(0x0691bd),
    bit6(0x0691be),
    bit5(0x0691be),
    bit2(0x0691be),
    bit1(0x0691be),
]

World3Golds = [
     bit0(0x0691be),
    bit4(0x0691bf),
    bit2(0x0691bf),
    bit4(0x0691be),
    bit5(0x0691bf),
]

World4Golds = [
    bit6(0x0691bf),
    bit3(0x0691be),
    bit5(0x0691bd),
    bit3(0x0691bf),
    bit0(0x0691bf)
]

World5Golds = [
      bit3(0x0691c0),
    bit0(0x0691c0),
    bit2(0x0691c0),
    bit7(0x0691be),
    bit4(0x0691c0),
]

WorldSecretGolds = [
    bit1(0x0691c0),
    bit5(0x0691c0),
    bit7(0x0691bf)
]

function SapphireLogic(flagsSapphire, flagsGold){
    sum = 0
    for flag in range(0,length(flagsSapphire)-1){
        sum = sum + (flagsSapphire[flag] + flagsGold[flag] - (flagsSapphire[flag] * flagsGold[flag]) )
    }
    return LevelID == Hub && measured(sum == length(flagsSapphire)) && prev(sum) == (length(flagsSapphire) - 1)
}

function GoldLogic(flagsGold){
    sum = 0
    for flag in range(0,length(flagsGold)-1){
        sum = sum +  flagsGold[flag]
    }
    return LevelID == Hub && measured(sum == length(flagsGold)) && prev(sum) == (length(flagsGold) - 1)
}

achievement(
    title = "Azure Fragments",
    description = "Obtain all the Sapphire (or better) relics in the First Area",
    points = 5, 
    trigger = SapphireLogic(World1Sapphires, World1Golds)
)

achievement(
    title = "Cerulian Keepsakes",
    description = "Obtain all the Sapphire (or better) relics in the Second Area",
    points = 5, 
    trigger = SapphireLogic(World2Sapphires, World2Golds)
)

achievement(
    title = "Lazuline Artifacts",
    description = "Obtain all the Sapphire (or better) relics in the Third Area",
    points = 5, 
    trigger = SapphireLogic(World3Sapphires, World3Golds)
)

achievement(
    title = "Sky-blue Antiquities",
    description = "Obtain all the Sapphire (or better) relics in the Fourth Area",
    points = 5, 
    trigger = SapphireLogic(World4Sapphires, World4Golds)
)

achievement(
    title = "Cobalt Souveniers",
    description = "Obtain all the Sapphire (or better) relics in the Fifth Area",
    points = 5, 
    trigger = SapphireLogic(World5Sapphires, World5Golds)
)

achievement(
    title = "Indigo Mementos",
    description = "Obtain all the Sapphire (or better) relics in the Secret Area",
    points = 5, 
    trigger = SapphireLogic(WorldSecretSapphires, WorldSecretGolds)
)

achievement(
    title = "Yellow Vestiges",
    description = "Obtain all the Gold (or better) relics in the First Area",
    points = 10, 
    trigger = GoldLogic(World1Golds)
)

achievement(
    title = "Bright Remembrances",
    description = "Obtain all the Gold (or better) relics in the Second Area",
    points = 10, 
    trigger = GoldLogic(World2Golds)
)
achievement(
    title = "Resplendent Remnants",
    description = "Obtain all the Gold (or better) relics in the Third Area",
    points = 10, 
    trigger = GoldLogic(World3Golds)
)
achievement(
    title = "Brilliant Tokens",
    description = "Obtain all the Gold (or better) relics in the Fourth Area",
    points = 10, 
    trigger = GoldLogic(World4Golds)
)
achievement(
    title = "Shining Trophies",
    description = "Obtain all the Gold (or better) relics in the Fifth Area",
    points = 10, 
    trigger = GoldLogic(World5Golds)
)
achievement(
    title = "Gleaming Shards",
    description = "Obtain all the Gold (or better) relics in the Secret Area",
    points = 10, 
    trigger = GoldLogic(WorldSecretGolds)
)

BoxLessCheevos = {
 1:{"title":"Toad Skipping", "description":"Beat Toad Village without breaking any boxes", "points":5, "stageID":Level1, "BoxCount":0},
2:{"title":"Expensive Boxes", "description":"Beat Orient Express without breaking any boxes", "points":5, "stageID":Level3, "BoxCount":0},
3:{"title":"24 Yards", "description":"Beat Bone Yard without breaking more than 24 boxes", "points":5, "stageID":Level4, "BoxCount":24},
4:{"title":"No Break' Waves", "description":"Beat Makin' Waves without breaking any boxes", "points":5, "stageID":Level5, "BoxCount":0},
5:{"title":"Gee Witch", "description":"Beat Gee Wiz without breaking any boxes", "points":5, "stageID":Level6, "BoxCount":0},
6:{"title":"Careful Timing", "description":"Beat Tomb Time without breaking any boxes", "points":5, "stageID":Level9, "BoxCount":0},
7:{"title":"Midnight Crawl", "description":"Beat Midnight Run without breaking any boxes", "points":5, "stageID":Level10, "BoxCount":0},
8:{"title":"Dino Won't", "description":"Beat Dino Might! without breaking more than 12 boxes", "points":5, "stageID":Level11, "BoxCount":12},
9:{"title":"Four Time", "description":"Beat High Time without breaking more than 4 boxes", "points":5, "stageID":Level13, "BoxCount":4},
10:{"title":"No Header", "description":"Beat Double Header without breaking any boxes", "points":5, "stageID":Level15, "BoxCount":0},
11:{"title":"Shatterxinator", "description":"Beat Sphynxinator without breaking more than 5 boxes", "points":5, "stageID":Level16, "BoxCount":5},
12:{"title":"Tell No Breaks", "description":"Beat Tell No Tales without braking any boxes", "points":5, "stageID":Level18, "BoxCount":0},
13:{"title":"No Frenzy", "description":"Beat Future Frenzy without breaking any boxes", "points":5, "stageID":Level19, "BoxCount":0},
14:{"title":"Tomb Sneaking", "description":"Beat Tomb Wader without breaking any boxes", "points":5, "stageID":Level20, "BoxCount":0},
15:{"title":"Leave It for Tomorrow", "description":"Beat Gone Tomorrow without breaking any boxes", "points":5, "stageID":Level21, "BoxCount":0},
16:{"title":"Frozen Passion", "description":"Beat Flamming Passion without breaking any boxes", "points":5, "stageID":Level23, "BoxCount":0},
}



function CratelessLogic(stage, BoxCount){
    return
    LevelID == stage &&
    (TotalCrates <= BoxCount) &&
    prev(GameState) == NormalGameplay &&
    trigger_when(GameState == CompleteStage)
}

for cheevo in BoxLessCheevos{
    achievement(
        title = BoxLessCheevos[cheevo]["title"],
        description = BoxLessCheevos[cheevo]["description"],
        points = BoxLessCheevos[cheevo]["points"],
        trigger = CratelessLogic(BoxLessCheevos[cheevo]["stageID"], BoxLessCheevos[cheevo]["BoxCount"])
    )
}

LevelId = byte(0x068EF9)
Level1 = 0x0b
Level2 = 0x0e
Level3 = 0x0a
Level4 = 0x0c
Level5 = 0x19
//0x0f = Level 6 - Gee Wiz 
//0x16 = Level 7/27 - Hang Em' High 
//0x15 = Level 8 - Hog Ride
//0x12 = Level 9 - Tomb Time
//0x11 = Level 10 - Midnight Run
Level6 = 0x0f
Level7 = 0x16
Level8 = 0x15
Level9 = 0x12
Level10 = 0x11
//0x10 = Level 11 - Dino Might!
//0x1c = Level 12 - Deep Trouble
//0x1a = Level 13 - Low Time
//0x14 = Level 14 - Road Crash
//0x1d = Level 15 - Double Header
Level11 = 0x10
Level12 = 0x1c
Level13 = 0x1a
Level14 = 0x14
Level15 = 0x1d
//0x1e = Level 16 - Sphynxinator
//0x13 = Level 17 - Bye Bye Blimps
//0x0d = Level 18 - Tell No Tales
//0x1b = Level 19/29 - Future Frenzy
//0x18 = Level 20 - Tomb Wader
Level16 = 0x1e
Level17 = 0x13
Level18 = 0x0d
Level19 = 0x1b
Level20 = 0x18
//0x23 = Level 21 - Gone Tomorrow
//0x20 = Level 22 - Orange Asphalt
//0x22 = Level 23 - Flaming Passion
//0x17 = Level 24 - Mad Bombers
//0x24 = Level 25 - Bug Lite
Level21 = 0x23
Level22 = 0x20
Level23 = 0x22
Level24 = 0x17
Level25 = 0x24
//0x21 = Level 26 - Ski Crazed
//0x25 = Level 28 - Area 51?
//0x1f = Level 30 - Rings Of Power
//0x27 = Level 31 - Hot Coco
//0x26 = Level 32 - Eggipus Rex
Level26 = 0x21
Level28 = 0x25
Level30 = 0x1f
Level31 = 0x27
Level32 = 0x26


// $0691AC: [32-bit] Starting frames for time trial
StartingFrames = dword(0x0691AC)

// $0691E4: [24-bit] Time Trial Pointer (Becomes 0 when you finish a time trial)
//          +0x00 = Indicator for time trial (8-bits)
//          +0x178 = Frame Timer (24-bits)
//          +0x1A4 = Centiseconds
//          +0x1A8 = Seconds
//          +0x1AC = Minutes
TimeTrialPointer = tbyte(0x0691E4)
FrameTimer = tbyte(TimeTrialPointer + 0x178)
TimeTrialIndicator = prev(byte(TimeTrialPointer + 0x0)) == 1

function timeTrialLogic(level, frames){
    logic = 
    //Time Trial Start Indicator
    TimeTrialIndicator &&
    
    //Starting frames becomes 0
    prev(StartingFrames) != 0 &&
    trigger_when(StartingFrames == 0)  &&
    
    //Pointer becomes 0 at the same time as the starting frames.
    prev(TimeTrialPointer) != 0 &&
    trigger_when(TimeTrialPointer == 0) &&
    
    //Less than required time, correct level ID
    prev(FrameTimer) < frames &&
    LevelId == level
    return logic
}

LevelData = {
    "a": {"title": "Toad Jumping", "description": "Beat Andrew Woodworth's time of 0:39:93 in Toad Village", "points": 25, "level": Level1, "frames": 0x0004ae, "title2": "Toad Village"},
    "b": {"title": "You Were Under Pressure", "description": "Beat Shawn Dobbins' time of 0:57:83 in Under Pressure", "points": 10, "level": Level2, "frames": 0x6c7, "title2": "Under Pressure"},
    "c": {"title": "Literally Express", "description": "Beat Justin Monast's time of 0:16:96 in Orient Express", "points": 25, "level": Level3, "frames": 0x1fd, "title2": "Orient Express"},
    "d": {"title": "Bone Rush", "description": "Beat Donovan Soto's time of 1:15:36 in Bone Yard", "points": 25, "level": Level4, "frames": 0x8d5, "title2": "Bone Yard"},
    "e": {"title": "Makin' Times", "description": "Beat Andrew Woodworth's time of 0:50:66 in Makin' Waves", "points": 50, "level": Level5, "frames": 0x5f0, "title2": "Makin' Waves"},
    
    "f": {"title": "Gee Whoosh", "description": "Beat Andrew Woodworth's time of 0:58:66 in Gee Wiz", "points": 25, "level": Level6, "frames": 0x6e0, "title2": "Gee Wiz"},
    "g": {"title": "Ran'em Fast", "description": "Beat Donovan Soto's time of 0:34:36 in Hang'em High", "points": 50, "level": Level7, "frames": 0x407, "title2": "Hang'em High"},
    "h": {"title": "Hog Race", "description": "Beat Evan Wells' time of 0:33:96 in Hog Ride", "points": 50, "level": Level8, "frames": 0x3fb, "title2": "Hog Ride"},
    "i": {"title": "The Tomb Time", "description": "Beat Corey Strock's time of 0:50:63 in Tomb Time", "points": 25, "level": Level9, "frames": 0x5ef, "title2": "Tomb Time"},
    "j": {"title": "Midnight Sprint", "description": "Beat Evan Wells' time of 0:13:20 in Midnight Run", "points": 25, "level": Level10, "frames": 0x18c, "title2": "Midnight Run"},
    
    "k": {"title": "Dino Boost!", "description": "Beat Donovan Soto's time of 0:55:00 in Dino Might!", "points": 25, "level": Level11, "frames": 0x672, "title2": "Dino Might!"},
    "l": {"title": "No Trouble", "description": "Beat Shawn Dobbins' time of 1:00:46 in Deep Trouble", "points": 10, "level": Level12, "frames": 0x716, "title2": "Deep Trouble"},
    "m": {"title": "Low Time", "description": "Beat Corey Strock's time of 0:45:10 in High Time", "points": 25, "level": Level13, "frames": 0x549, "title2": " High Time"},
    "n": {"title": "Dash Crash", "description": "Beat Shawn Dobbins' time of 1:15:53 in Road Crash", "points": 50, "level": Level14, "frames": 0x8da, "title2": "Road Crash"},
    "o": {"title": "Double Tempo", "description": "Beat Andrew Woodworth's time of 0:56:00 in Double Header", "points": 25, "level": Level15, "frames": 0x690, "title2": "Double Header"},
    
    "p": {"title": "Speedxinator", "description": "Beat Evan Wells' time of 0:50:63 in Sphynxinator", "points": 25, "level": Level16, "frames": 0x5ef, "title2": "Sphynxinator"},
    "q": {"title": "Hello Hello Record", "description": "Beat Jason Rubin's time of 0:38:63 in Bye Bye Blimps", "points": 25, "level": Level17, "frames": 0x487, "title2": "Bye Bye Blimps"},
    "r": {"title": "Tell No Strats", "description": "Beat Shawn Dobbins' time of 1:01:70 in Tell No Tales", "points": 25, "level": Level18, "frames": 0x73b, "title2": "Tell No Tales"},
    "s": {"title": "Future Switftness", "description": "Beat Shawn Dobbins' time of 1:07:47 in Future Frenzy", "points": 25, "level": Level19, "frames": 0x7e8, "title2": "Future Frenzy"},
    "t": {"title": "Tomb Fleetness", "description": "Beat Corey Strock's time of 1:11:16 in Tomb Wader", "points": 25, "level": Level20, "frames": 0x857, "title2": "Tomb Wader"},
    
    "u": {"title": "Came Yesterday", "description": "Beat Andrew Woodworth's time of 0:55:46 in Gone Tomorrow", "points": 25, "level": Level21, "frames": 0x680, "title2": "Gone Tomorrow"},
    "v": {"title": "Orange Celerity", "description": "Beat Shawn Dobbins' time of 1:16:70 in Orange Asphalt", "points": 50, "level": Level22, "frames": 0x8fd, "title2": "Orange Asphalt"},
    "w": {"title": "Flamming Bolt", "description": "Beat Andrew Woodworth's time of 0:51:10 in Flamming Passion", "points": 25, "level": Level23, "frames": 0x5fd, "title2": "Flamming Passion"},
    "x": {"title": "Mad Flash", "description": "Beat Sam Thompson's time of 1:24:10 in Mad Bombers", "points": 25, "level": Level24, "frames": 0x9db, "title2": "Mad Bombers"},
    "y": {"title": "Bug Zoom", "description": "Beat Evan Wells' time of 1:08:00 in Bug Lite", "points": 25, "level": Level25, "frames": 0x7f8, "title2": "Bug Lite"},
    
    "z": {"title": "Hurry Crazed", "description": "Beat Dan Arey's time of 0:28:63 in Ski Crazed", "points": 25, "level": Level26, "frames": 0x35b, "title2": "Ski Crazed"},
    "za": {"title": "Area 510 MPH", "description": "Beat Shawn Dobbins' time of 1:38:96 in Area 51?", "points": 25, "level": Level28, "frames": 0xb99, "title2": "Area 51?"},
    "zb": {"title": "Rings of Haste", "description": "Beat Evan Wells' time of 0:47:93 in Rings of Power", "points": 50, "level": Level30, "frames": 0x59e, "title2": "Rings of Power"},
    "zc": {"title": "Hot Pace", "description": "Beat Andrew Woodworth's time of 0:14:60 in Hot Coco", "points": 10, "level": Level31, "frames": 0x1b6, "title2": "Hot Coco"},
    "zd": {"title": "Acceleration Rex", "description": "Beat Andrew Woodworth's time of 0:41:10 in Eggipus Rex", "points": 25, "level": Level32, "frames": 0x4d1, "title2": "Eggipus Rex"},
}

for level in LevelData{
    
    leaderboard(
    title = LevelData[level]["title2"], 
    description = "Best Time", 
    start =  
    byte(TimeTrialPointer + 0x0) == 1 &&
    prev(StartingFrames) == 0 &&
    (StartingFrames != 0) &&
    LevelId == LevelData[level]["level"],
    
    
    cancel = (LevelId != prev(LevelId)), 
    submit =  
    TimeTrialIndicator &&
    
    //Starting frames becomes 0
    prev(StartingFrames) != 0 &&
    (StartingFrames == 0)  &&
    
    //Pointer becomes 0 at the same time as the starting frames.
    prev(TimeTrialPointer) != 0 &&
    (TimeTrialPointer == 0),
    value = (prev(FrameTimer)*2),
    format="FRAMES",
    lower_is_better=true
    )
}

achievement(
    title = "Hot Pace", points = 5,
    description = "Obtain the 'true' platinum relic in Hot Coco by getting a time of 00:19:93",
    id = 89279, published = "26/11/2019 00:55:17", modified = "15/5/2020 17:54:45",
    trigger = timeTrialLogic(Level31, 0x47a)
)

achievement(
    title = "Acceleration Rex", points = 5,
    description = "Obtain the 'true' platinum relic in Eggipus Rex by getting a time of 00:44:80",
    id = 89280, published = "26/11/2019 00:55:20", modified = "15/5/2020 17:55:40",
    trigger = timeTrialLogic(Level32, 0xa55)
)