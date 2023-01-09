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

BossDataPointer = tbyte(0x067a48)
TinyTigerHealth = byte(BossDataPointer + 0xE5)

//Powers
BodySlam = bit0(0x069178)
DoubleJump = bit1(0x069178)
DeathTornado = bit2(0x069178)
FruitBazooka = bit3(0x069178)
SpeedShoes = bit4(0x069178)

function PointerPrecaution(pointer){
    return (pointer != 0 && prev(pointer) == pointer)
}

achievement(
    title = "Gladiator Tiger", points = 5,
    description = "Defeat Tiny Tiger and get the Super Charged Body Slam",
    id = 88298, badge = "110119", published = "15/11/2019 01:49:21", modified = "22/8/2020 09:26:56",
    trigger = 
    LevelID == TinyTiger &&
    BodySlam == 1 &&
    prev(BodySlam) == 0
)

achievement(
    title = "Flamethrower Age", points = 5,
    description = "Defeat Dingodile and get the Double Jump",
    id = 88311, badge = "110131", published = "15/11/2019 01:49:57", modified = "16/8/2020 18:27:24",
    trigger = 
    LevelID == Dingodile &&
    DoubleJump == 1 &&
    prev(DoubleJump) == 0
)

achievement(
    title = "Time Machinator", points = 5,
    description = "Defeat N. Tropy and get the Death Tornado Spin",
    id = 88324, badge = "110143", published = "15/11/2019 01:50:32", modified = "31/5/2020 02:49:59",
    trigger = 
    LevelID == NTropy &&
    DeathTornado == 1 &&
    prev(DeathTornado) == 0
)

achievement(
    title = "Advanced Mech", points = 5,
    description = "Defeat N. Gin and get the Fruit Bazooka",
    id = 88337, badge = "110155", published = "15/11/2019 01:51:08", modified = "31/5/2020 02:50:14",
    trigger = 
    LevelID == NGin &&
    FruitBazooka == 1 &&
    prev(FruitBazooka) == 0
)

achievement(
    title = "N. Disposed", points = 10,
    description = "Defeat Neo Cortex and get the Speed Shoes",
    id = 88350, badge = "110167", published = "15/11/2019 01:51:42", modified = "8/9/2021 10:12:57",
    trigger = 
    LevelID == NCortex &&
    SpeedShoes == 1 &&
    prev(SpeedShoes) == 0
)

achievement(
    title = "Yellow Gem", points = 5,
    description = "Get the yellow colored gem.",
    id = 88590, badge = "110182", published = "16/11/2019 18:54:27", modified = "16/5/2020 11:04:16",
    trigger = always_true() &&
              ((prior(byte(0x068EF9)) == 22 && byte(0x068EF9) == 2 && prev(bit6(0x068FB7)) == 0 && bit6(0x068FB7) == 1 && 
                unless(byte(0x068EF9) < 2) && unless(dword(0x068F7C) > 1) && unless(dword(0x068F80) > 256) && 
                unless(dword(0x068F84) > 256)) ||
               (prior(byte(0x0690A9)) == 22 && byte(0x0690A9) == 2 && prev(bit6(0x069167)) == 0 && bit6(0x069167) == 1 && 
                unless(byte(0x0690A9) < 2) && unless(dword(0x06912C) > 1) && unless(dword(0x069130) > 256) && 
                unless(dword(0x069134) > 256)) ||
               (prior(byte(0x069349)) == 22 && byte(0x069349) == 2 && prev(bit6(0x069407)) == 0 && bit6(0x069407) == 1 && 
                unless(byte(0x069349) < 2) && unless(dword(0x0693CC) > 1) && unless(dword(0x0693D0) > 256) && 
                unless(dword(0x069D34) > 256)))
)

achievement(
    title = "Red Gem", points = 5,
    description = "Get the red colored gem.",
    id = 88589, badge = "110181", published = "16/11/2019 18:54:24", modified = "17/5/2020 23:06:47",
    trigger = always_true() &&
              ((prior(byte(0x068EF9)) == 28 && byte(0x068EF9) == 2 && prev(bit2(0x068FB7)) == 0 && bit2(0x068FB7) == 1 && 
                unless(byte(0x068EF9) < 2) && unless(dword(0x068F7C) > 1) && unless(dword(0x068F80) > 256) && 
                unless(dword(0x068F84) > 256)) ||
               (prior(byte(0x0690A9)) == 28 && byte(0x0690A9) == 2 && prev(bit2(0x069167)) == 0 && bit2(0x069167) == 1 && 
                unless(byte(0x0690A9) < 2) && unless(dword(0x06912C) > 1) && unless(dword(0x069130) > 256) && 
                unless(dword(0x069134) > 256)) ||
               (prior(byte(0x069349)) == 28 && byte(0x069349) == 2 && prev(bit2(0x069407)) == 0 && bit2(0x069407) == 1 && 
                unless(byte(0x069349) < 2) && unless(dword(0x0693CC) > 1) && unless(dword(0x0693D0) > 256) && 
                unless(dword(0x069D34) > 256)))
)

achievement(
    title = "Purple Gem", points = 5,
    description = "Get the purple colored gem.",
    id = 88592, badge = "110184", published = "16/11/2019 18:54:33", modified = "16/5/2020 10:49:31",
    trigger = always_true() &&
              ((prior(byte(0x068EF9)) == 26 && byte(0x068EF9) == 2 && prev(bit4(0x068FB7)) == 0 && bit4(0x068FB7) == 1 && 
                unless(byte(0x068EF9) < 2) && unless(dword(0x068F7C) > 1) && unless(dword(0x068F80) > 256) && 
                unless(dword(0x068F84) > 256)) ||
               (prior(byte(0x0690A9)) == 26 && byte(0x0690A9) == 2 && prev(bit4(0x069167)) == 0 && bit4(0x069167) == 1 && 
                unless(byte(0x0690A9) < 2) && unless(dword(0x06912C) > 1) && unless(dword(0x069130) > 256) && 
                unless(dword(0x069134) > 256)) ||
               (prior(byte(0x069349)) == 26 && byte(0x069349) == 2 && prev(bit4(0x069407)) == 0 && bit4(0x069407) == 1 && 
                unless(byte(0x069349) < 2) && unless(dword(0x0693CC) > 1) && unless(dword(0x0693D0) > 256) && 
                unless(dword(0x069D34) > 256)))
)

achievement(
    title = "Blue Gem", points = 5,
    description = "Get the blue colored gem.",
    id = 88588, badge = "110180", published = "16/11/2019 18:54:22", modified = "16/5/2020 11:11:31",
    trigger = always_true() &&
              ((prior(byte(0x068EF9)) == 24 && byte(0x068EF9) == 2 && prev(bit5(0x068FB7)) == 0 && bit5(0x068FB7) == 1 && 
                unless(byte(0x068EF9) < 2) && unless(dword(0x068F7C) > 1) && unless(dword(0x068F80) > 256) && 
                unless(dword(0x068F84) > 256)) ||
               (prior(byte(0x0690A9)) == 24 && byte(0x0690A9) == 2 && prev(bit5(0x069167)) == 0 && bit5(0x069167) == 1 && 
                unless(byte(0x0690A9) < 2) && unless(dword(0x06912C) > 1) && unless(dword(0x069130) > 256) && 
                unless(dword(0x069134) > 256)) ||
               (prior(byte(0x069349)) == 24 && byte(0x069349) == 2 && prev(bit5(0x069407)) == 0 && bit5(0x069407) == 1 && 
                unless(byte(0x069349) < 2) && unless(dword(0x0693CC) > 1) && unless(dword(0x0693D0) > 256) && 
                unless(dword(0x069D34) > 256)))
)

achievement(
    title = "Green Gem", points = 5,
    description = "Get the green colored gem.",
    id = 88591, badge = "110183", published = "16/11/2019 18:54:30", modified = "16/5/2020 10:56:08",
    trigger = always_true() &&
              ((prior(byte(0x068EF9)) == 34 && byte(0x068EF9) == 2 && prev(bit3(0x068FB7)) == 0 && bit3(0x068FB7) == 1 && 
                unless(byte(0x068EF9) < 2) && unless(dword(0x068F7C) > 1) && unless(dword(0x068F80) > 256) && 
                unless(dword(0x068F84) > 256)) ||
               (prior(byte(0x0690A9)) == 34 && byte(0x0690A9) == 2 && prev(bit3(0x069167)) == 0 && bit3(0x069167) == 1 && 
                unless(byte(0x0690A9) < 2) && unless(dword(0x06912C) > 1) && unless(dword(0x069130) > 256) && 
                unless(dword(0x069134) > 256)) ||
               (prior(byte(0x069349)) == 34 && byte(0x069349) == 2 && prev(bit3(0x069407)) == 0 && bit3(0x069407) == 1 && 
                unless(byte(0x069349) < 2) && unless(dword(0x0693CC) > 1) && unless(dword(0x0693D0) > 256) && 
                unless(dword(0x069D34) > 256)))
)

achievement(
    title = "Extra Gems 1", points = 5,
    description = "Get world 1 to 3 extra gems.",
    id = 88587, badge = "110179", published = "16/11/2019 18:54:19", modified = "16/5/2020 11:19:50",
    trigger = always_true() &&
              ((prior(byte(0x068EF9)) != 60 && byte(0x068EF9) == 2 && (prev(bit1(0x068FB0)) + prev(bit2(0x068FB0)) +
                 prev(bit3(0x068FB0))) == 2 && measured((bit1(0x068FB0) + bit2(0x068FB0) + bit3(0x068FB0)) == 3) && 
                unless(byte(0x068EF9) < 2) && unless(dword(0x068F7C) > 1) && unless(dword(0x068F80) > 256) && 
                unless(dword(0x068F84) > 256)) ||
               (prior(byte(0x0690A9)) != 60 && byte(0x0690A9) == 2 && (prev(bit1(0x069160)) + prev(bit2(0x069160)) +
                 prev(bit3(0x069160))) == 2 && measured((bit1(0x069160) + bit2(0x069160) + bit3(0x069160)) == 3) && 
                unless(byte(0x0690A9) < 2) && unless(dword(0x06912C) > 1) && unless(dword(0x069130) > 256) && 
                unless(dword(0x069134) > 256)) ||
               (prior(byte(0x069349)) != 60 && byte(0x069349) == 2 && (prev(bit1(0x069400)) + prev(bit2(0x069400)) +
                 prev(bit3(0x069400))) == 2 && measured((prev(bit1(0x069400)) + prev(bit2(0x069400)) +
                 prev(bit3(0x069400))) == 3) && unless(byte(0x069349) < 2) && unless(dword(0x0693CC) > 1) && 
                unless(dword(0x0693D0) > 256) && unless(dword(0x069D34) > 256)))
)

achievement(
    title = "Extra Gems 2", points = 5,
    description = "Get world 4 to 5 extra gems.",
    id = 88593, badge = "110185", published = "16/11/2019 18:54:36", modified = "16/5/2020 10:21:07",
    trigger = always_true() &&
              ((prior(byte(0x068EF9)) != 60 && byte(0x068EF9) == 2 && (prev(bit4(0x068FB0)) + prev(bit5(0x068FB0)) +
                 prev(bit6(0x068FB0)) + prev(bit7(0x068FB0))) == 3 && measured((bit4(0x068FB0) + bit5(0x068FB0) +
                 bit6(0x068FB0) + bit7(0x068FB0)) == 4) && unless(byte(0x068EF9) < 2) && unless(dword(0x068F7C) > 1) && 
                unless(dword(0x068F80) > 256) && unless(dword(0x068F84) > 256)) ||
               (prior(byte(0x0690A9)) != 60 && byte(0x0690A9) == 2 && (prev(bit4(0x069160)) + prev(bit5(0x069160)) +
                 prev(bit6(0x069160)) + prev(bit7(0x069160))) == 3 && measured((bit4(0x069160) + bit5(0x069160) +
                 bit6(0x069160) + bit7(0x069160)) == 4) && unless(byte(0x0690A9) < 2) && unless(dword(0x06912C) > 1) && 
                unless(dword(0x069130) > 256) && unless(dword(0x069134) > 256)) ||
               (prior(byte(0x069349)) != 60 && byte(0x069349) == 2 && (prev(bit4(0x069400)) + prev(bit5(0x069400)) +
                 prev(bit6(0x069400)) + prev(bit7(0x069400))) == 3 && measured((bit4(0x069400) + bit5(0x069400) +
                 bit6(0x069400) + bit7(0x069400)) == 4) && unless(byte(0x069349) < 2) && unless(dword(0x0693CC) > 1) && 
                unless(dword(0x0693D0) > 256) && unless(dword(0x069D34) > 256)))
)

achievement(
    title = "Hot Coco Gem", points = 5,
    description = "Get Hot Coco level gem.",
    id = 89275, badge = "110192", published = "26/11/2019 00:55:04", modified = "16/5/2020 10:44:36",
    trigger = always_true() &&
              ((prior(byte(0x068EF9)) == 39 && byte(0x068EF9) == 2 && prev(bit7(0x068FB4)) == 0 && bit7(0x068FB4) == 1 && 
                unless(byte(0x068EF9) < 2) && unless(dword(0x068F7C) > 1) && unless(dword(0x068F80) > 256) && 
                unless(dword(0x068F84) > 256)) ||
               (prior(byte(0x0690A9)) == 39 && byte(0x0690A9) == 2 && prev(bit7(0x069164)) == 0 && bit7(0x069164) == 1 && 
                unless(byte(0x0690A9) < 2) && unless(dword(0x06912C) > 1) && unless(dword(0x069130) > 256) && 
                unless(dword(0x069134) > 256)) ||
               (prior(byte(0x069349)) == 39 && byte(0x069349) == 2 && prev(bit7(0x069404)) == 0 && bit7(0x069404) == 1 && 
                unless(byte(0x069349) < 2) && unless(dword(0x0693CC) > 1) && unless(dword(0x0693D0) > 256) && 
                unless(dword(0x069D34) > 256)))
)

achievement(
    title = "Eggipus Rex Gem", points = 5,
    description = "Get Eggipus Rex gem.",
    id = 89276, badge = "110193", published = "26/11/2019 00:55:09", modified = "16/5/2020 10:40:08",
    trigger = always_true() &&
              ((prior(byte(0x068EF9)) == 38 && byte(0x068EF9) == 2 && prev(bit6(0x068FB4)) == 0 && bit6(0x068FB4) == 1 && 
                unless(byte(0x068EF9) < 2) && unless(dword(0x068F7C) > 1) && unless(dword(0x068F80) > 256) && 
                unless(dword(0x068F84) > 256)) ||
               (prior(byte(0x0690A9)) == 38 && byte(0x0690A9) == 2 && prev(bit6(0x069164)) == 0 && bit6(0x069164) == 1 && 
                unless(byte(0x0690A9) < 2) && unless(dword(0x06912C) > 1) && unless(dword(0x069130) > 256) && 
                unless(dword(0x069134) > 256)) ||
               (prior(byte(0x069349)) == 38 && byte(0x069349) == 2 && prev(bit6(0x069404)) == 0 && bit6(0x069404) == 1 && 
                unless(byte(0x069349) < 2) && unless(dword(0x0693CC) > 1) && unless(dword(0x0693D0) > 256) && 
                unless(dword(0x069D34) > 256)))
)

achievement(
    title = "World 1 Gems", points = 5,
    description = "Get all box gems in world 1.",
    id = 88297, badge = "110118", published = "15/11/2019 01:49:18", modified = "13/2/2021 22:13:34",
    trigger = always_true() &&
              ((prior(byte(0x068EF9)) != 60 && byte(0x068EF9) == 2 && (prev(bit3(0x068FB1)) + prev(bit6(0x068FB1)) +
                 prev(bit2(0x068FB1)) + prev(bit4(0x068FB1)) + prev(bit1(0x068FB3))) == 4 && measured((bit3(0x068FB1) +
                 bit6(0x068FB1) + bit2(0x068FB1) + bit4(0x068FB1) + bit1(0x068FB3)) == 5) && unless(byte(0x068EF9) < 2) && 
                unless(dword(0x068F7C) > 1) && unless(dword(0x068F80) > 256) && unless(dword(0x068F84) > 256)) ||
               (byte(0x0690A9) == 2 && (prev(bit3(0x069161)) + prev(bit6(0x069161)) + prev(bit2(0x069161)) +
                 prev(bit4(0x069161)) + prev(bit1(0x069163))) == 4 && measured((bit3(0x069161) + bit6(0x069161) +
                 bit2(0x069161) + bit4(0x069161) + bit1(0x069163)) == 5) && unless(byte(0x0690A9) < 2) && 
                unless(dword(0x06912C) > 1) && unless(dword(0x069130) > 256) && unless(dword(0x069134) > 256)) ||
               (prior(byte(0x069349)) != 60 && byte(0x069349) == 2 && (prev(bit3(0x069401)) + prev(bit6(0x069401)) +
                 prev(bit2(0x069401)) + prev(bit4(0x069401)) + prev(bit1(0x069403))) == 4 && measured((bit3(0x069401) +
                 bit6(0x069401) + bit2(0x069401) + bit4(0x069401) + bit1(0x069403)) == 5) && unless(byte(0x069349) < 2) && 
                unless(dword(0x0693CC) > 1) && unless(dword(0x0693D0) > 256) && unless(dword(0x069D34) > 256)))
)

achievement(
    title = "World 2 Gems", points = 5,
    description = "Get all box gems in world 2.",
    id = 88310, badge = "110130", published = "15/11/2019 01:49:54", modified = "16/5/2020 11:56:10",
    trigger = always_true() &&
              ((prior(byte(0x068EF9)) != 60 && byte(0x068EF9) == 2 && (prev(bit7(0x068FB1)) + prev(bit6(0x068FB2)) +
                 prev(bit5(0x068FB2)) + prev(bit2(0x068FB2)) + prev(bit1(0x068FB2))) == 4 && measured((bit7(0x068FB1) +
                 bit6(0x068FB2) + bit5(0x068FB2) + bit2(0x068FB2) + bit1(0x068FB2)) == 5) && unless(byte(0x068EF9) < 2) && 
                unless(dword(0x068F7C) > 1) && unless(dword(0x068F80) > 256) && unless(dword(0x068F84) > 256)) ||
               (prior(byte(0x0690A9)) != 60 && byte(0x0690A9) == 2 && (prev(bit7(0x069161)) + prev(bit6(0x069162)) +
                 prev(bit5(0x069162)) + prev(bit2(0x069162)) + prev(bit1(0x069162))) == 4 && measured((bit7(0x069161) +
                 bit6(0x069162) + bit5(0x069162) + bit2(0x069162) + bit1(0x069162)) == 5) && unless(byte(0x0690A9) < 2) && 
                unless(dword(0x06912C) > 1) && unless(dword(0x069130) > 256) && unless(dword(0x069134) > 256)) ||
               (prior(byte(0x069349)) != 60 && byte(0x0690A9) == 2 && (prev(bit7(0x069401)) + prev(bit6(0x069402)) +
                 prev(bit5(0x069402)) + prev(bit2(0x069402)) + prev(bit1(0x069402))) == 4 && measured((bit7(0x069401) +
                 bit6(0x069402) + bit5(0x069402) + bit2(0x069402) + bit1(0x069402)) == 5) && unless(byte(0x069349) < 2) && 
                unless(dword(0x0693CC) > 1) && unless(dword(0x0693D0) > 256) && unless(dword(0x069D34) > 256)))
)

achievement(
    title = "World 3 Gems", points = 5,
    description = "Get all box gems in world 3.",
    id = 88323, badge = "110142", published = "15/11/2019 01:50:29", modified = "20/5/2020 21:55:53",
    trigger = always_true() &&
              ((prior(byte(0x068EF9)) != 60 && byte(0x068EF9) == 2 && (prev(bit0(0x068FB2)) + prev(bit4(0x068FB3)) +
                 prev(bit2(0x068FB3)) + prev(bit4(0x068FB2)) + prev(bit5(0x068FB3))) == 4 && measured((bit0(0x068FB2) +
                 bit4(0x068FB3) + bit2(0x068FB3) + bit4(0x068FB2) + bit5(0x068FB3)) == 5) && unless(byte(0x068EF9) < 2) && 
                unless(dword(0x068F7C) > 1) && unless(dword(0x068F80) > 256) && unless(dword(0x068F84) > 256)) ||
               (prior(byte(0x0690A9)) != 60 && byte(0x0690A9) == 2 && (prev(bit0(0x069162)) + prev(bit4(0x069163)) +
                 prev(bit2(0x069163)) + prev(bit4(0x069162)) + prev(bit5(0x069163))) == 4 && measured((bit0(0x069162) +
                 bit4(0x069163) + bit2(0x069163) + bit4(0x069162) + bit5(0x069163)) == 5) && unless(byte(0x0690A9) < 2) && 
                unless(dword(0x06912C) > 1) && unless(dword(0x069130) > 256) && unless(dword(0x069134) > 256)) ||
               (prior(byte(0x0690A9)) != 60 && byte(0x069349) == 2 && (prev(bit0(0x069402)) + prev(bit4(0x069403)) +
                 prev(bit2(0x069403)) + prev(bit4(0x069402)) + prev(bit5(0x069403))) == 4 && measured((bit0(0x069402) +
                 bit4(0x069403) + bit2(0x069403) + bit4(0x069402) + bit5(0x069403)) == 5) && unless(byte(0x069349) < 2) && 
                unless(dword(0x0693CC) > 1) && unless(dword(0x0693D0) > 256) && unless(dword(0x069D34) > 256)))
)

achievement(
    title = "World 4 Gems", points = 5,
    description = "Get all box gems in world 4.",
    id = 88336, badge = "110154", published = "15/11/2019 01:51:06", modified = "16/2/2021 16:50:32",
    trigger = always_true() &&
              ((prior(byte(0x068EF9)) != 60 && byte(0x068EF9) == 2 && (prev(bit6(0x068FB3)) + prev(bit3(0x068FB2)) +
                 prev(bit5(0x068FB1)) + prev(bit3(0x068FB3)) + prev(bit0(0x068FB3))) == 4 && measured((bit6(0x068FB3) +
                 bit3(0x068FB2) + bit5(0x068FB1) + bit3(0x068FB3) + bit0(0x068FB3)) == 5) && unless(byte(0x068EF9) < 2) && 
                unless(dword(0x068F7C) > 1) && unless(dword(0x068F80) > 256) && unless(dword(0x068F84) > 256)) ||
               (prior(byte(0x0690A9)) != 60 && byte(0x0690A9) == 2 && (prev(bit6(0x069163)) + prev(bit3(0x069162)) +
                 prev(bit5(0x069161)) + prev(bit3(0x069163)) + prev(bit0(0x069163))) == 4 && measured((bit6(0x069163) +
                 bit3(0x069162) + bit5(0x069161) + bit3(0x069163) + bit0(0x069163)) == 5) && unless(byte(0x0690A9) < 2) && 
                unless(dword(0x06912C) > 1) && unless(dword(0x069130) > 256) && unless(dword(0x069134) > 256)) ||
               (prior(byte(0x069349)) != 60 && byte(0x069349) == 2 && (prev(bit6(0x069403)) + prev(bit3(0x069402)) +
                 prev(bit5(0x069401)) + prev(bit3(0x069403)) + prev(bit0(0x069403))) == 4 && measured((bit6(0x069403) +
                 bit3(0x069402) + bit5(0x069401) + bit3(0x069403) + bit0(0x069403)) == 5) && unless(byte(0x069349) < 2) && 
                unless(dword(0x0693CC) > 1) && unless(dword(0x0693D0) > 256) && unless(dword(0x069D34) > 256)))
)

achievement(
    title = "World 5 Gems", points = 5,
    description = "Get all box gems in world 5.",
    id = 88349, badge = "110166", published = "15/11/2019 01:51:39", modified = "16/5/2021 21:41:18",
    trigger = always_true() &&
              ((prior(byte(0x068EF9)) != 60 && byte(0x068EF9) == 2 && (prev(bit3(0x068FB4)) + prev(bit0(0x068FB4)) +
                 prev(bit2(0x068FB4)) + prev(bit7(0x068FB2)) + prev(bit4(0x068FB4))) == 4 && measured((bit3(0x068FB4) +
                 bit0(0x068FB4) + bit2(0x068FB4) + bit7(0x068FB2) + bit4(0x068FB4)) == 5) && unless(byte(0x068EF9) < 2) && 
                unless(dword(0x068F7C) > 1) && unless(dword(0x068F80) > 256) && unless(dword(0x068F84) > 256)) ||
               (prior(byte(0x0690A9)) != 60 && byte(0x0690A9) == 2 && (prev(bit3(0x069164)) + prev(bit0(0x069164)) +
                 prev(bit2(0x069164)) + prev(bit7(0x069162)) + prev(bit4(0x069164))) == 4 && measured((bit3(0x069164) +
                 bit0(0x069164) + bit2(0x069164) + bit7(0x069162) + bit4(0x069164)) == 5) && unless(byte(0x0690A9) < 2) && 
                unless(dword(0x06912C) > 1) && unless(dword(0x069130) > 256) && unless(dword(0x069134) > 256)) ||
               (prior(byte(0x069349)) != 60 && byte(0x069349) == 2 && (prev(bit3(0x069404)) + prev(bit0(0x069404)) +
                 prev(bit2(0x069404)) + prev(bit7(0x069402)) + prev(bit4(0x069404))) == 4 && measured((bit3(0x069404) +
                 bit0(0x069404) + bit2(0x069404) + bit7(0x069402) + bit4(0x069404)) == 5) && unless(byte(0x069349) < 2) && 
                unless(dword(0x0693CC) > 1) && unless(dword(0x0693D0) > 256) && unless(dword(0x069D34) > 256)))
)

achievement(
    title = "Secret World Gems", points = 5,
    description = "Get all gems in secret world.",
    id = 88586, badge = "110178", published = "16/11/2019 18:54:16", modified = "16/5/2020 11:52:14",
    trigger = always_true() &&
              ((prior(byte(0x068EF9)) != 60 && byte(0x068EF9) == 2 && (prev(bit1(0x068FB4)) + prev(bit5(0x068FB4)) +
                 prev(bit7(0x068FB3)) + prev(bit0(0x068FB1)) + prev(bit1(0x068FB1))) < 5 && (prev(bit1(0x068FB4)) +
                 prev(bit5(0x068FB4)) + prev(bit7(0x068FB3)) + prev(bit0(0x068FB1)) + prev(bit1(0x068FB1))) >= 3 && 
                measured((bit1(0x068FB4) + bit5(0x068FB4) + bit7(0x068FB3) + bit0(0x068FB1) + bit1(0x068FB1)) == 5) && 
                unless(byte(0x068EF9) < 2) && unless(dword(0x068F7C) > 1) && unless(dword(0x068F80) > 256) && 
                unless(dword(0x068F84) > 256)) ||
               (prior(byte(0x0690A9)) != 60 && byte(0x0690A9) == 2 && (prev(bit1(0x069164)) + prev(bit5(0x069164)) +
                 prev(bit7(0x069163)) + prev(bit0(0x069161)) + prev(bit1(0x069161))) < 5 && (prev(bit1(0x069164)) +
                 prev(bit5(0x069164)) + prev(bit7(0x069163)) + prev(bit0(0x069161)) + prev(bit1(0x069161))) >= 3 && 
                measured((bit1(0x069164) + bit5(0x069164) + bit7(0x069163) + bit0(0x069161) + bit1(0x069161)) == 5) && 
                unless(byte(0x0690A9) < 2) && unless(dword(0x06912C) > 1) && unless(dword(0x069130) > 256) && 
                unless(dword(0x069134) > 256)) ||
               (prior(byte(0x069349)) != 60 && byte(0x069349) == 2 && (prev(bit1(0x069404)) + prev(bit5(0x069404)) +
                 prev(bit7(0x069403)) + prev(bit0(0x069401)) + prev(bit1(0x069401))) < 5 && (prev(bit1(0x069404)) +
                 prev(bit5(0x069404)) + prev(bit7(0x069403)) + prev(bit0(0x069401)) + prev(bit1(0x069401))) >= 3 && 
                measured((bit1(0x069404) + bit5(0x069404) + bit7(0x069403) + bit0(0x069401) + bit1(0x069401)) == 5) && 
                unless(byte(0x069349) < 2) && unless(dword(0x0693CC) > 1) && unless(dword(0x0693D0) > 256) && 
                unless(dword(0x069D34) > 256)))
)

achievement(
    title = "Toad Village Relic", points = 5,
    description = "Get any relic in Toad Village.",
    id = 88299, badge = "110120", published = "15/11/2019 01:49:23", modified = "15/5/2020 22:43:20",
    trigger = always_true() &&
              ((byte(0x068EF9) == 11 && prev(bit3(0x0691C5)) == 0 && prev(bit3(0x0691CD)) == 0 && (bit3(0x0691C5) +
                 bit3(0x0691CD)) >= 1 && unless(byte(0x068EF9) < 2) && unless(dword(0x068F7C) > 1) && 
                unless(dword(0x068F80) > 256) && unless(dword(0x068F84) > 256)) ||
               (byte(0x0690A9) == 11 && prev(bit3(0x069375)) == 0 && prev(bit3(0x06937D)) == 0 && (bit3(0x069375) +
                 bit3(0x06937D)) >= 1 && unless(byte(0x0690A9) < 2) && unless(dword(0x06912C) > 1) && 
                unless(dword(0x069130) > 256) && unless(dword(0x069134) > 256)) ||
               (byte(0x069349) == 11 && prev(bit3(0x069615)) == 0 && prev(bit3(0x06961D)) == 0 && (bit3(0x069615) +
                 bit3(0x06961D)) >= 1 && unless(byte(0x069349) < 2) && unless(dword(0x0693CC) > 1) && 
                unless(dword(0x0693D0) > 256) && unless(dword(0x069D34) > 256)))
)

achievement(
    title = "Under Pressure Relic", points = 5,
    description = "Get any relic in Under Pressure.",
    id = 88301, badge = "110122", published = "15/11/2019 01:49:28", modified = "15/5/2020 22:35:59",
    trigger = always_true() &&
              ((byte(0x068EF9) == 14 && prev(bit6(0x0691C5)) == 0 && prev(bit6(0x0691CD)) == 0 && (bit6(0x0691C5) +
                 bit6(0x0691CD)) >= 1 && unless(byte(0x068EF9) < 2) && unless(dword(0x068F7C) > 1) && 
                unless(dword(0x068F80) > 256) && unless(dword(0x068F84) > 256)) ||
               (byte(0x0690A9) == 14 && prev(bit6(0x069375)) == 0 && prev(bit6(0x06937D)) == 0 && (bit6(0x069375) +
                 bit6(0x06937D)) >= 1 && unless(byte(0x0690A9) < 2) && unless(dword(0x06912C) > 1) && 
                unless(dword(0x069130) > 256) && unless(dword(0x069134) > 256)) ||
               (byte(0x069349) == 14 && prev(bit6(0x069615)) == 0 && prev(bit6(0x06961D)) == 0 && (bit6(0x069615) +
                 bit6(0x06961D)) >= 1 && unless(byte(0x069349) < 2) && unless(dword(0x0693CC) > 1) && 
                unless(dword(0x0693D0) > 256) && unless(dword(0x069D34) > 256)))
)

achievement(
    title = "Orient Express Relic", points = 5,
    description = "Get any relic in Orient Express.",
    id = 88303, badge = "110124", published = "15/11/2019 01:49:34", modified = "15/5/2020 22:34:34",
    trigger = always_true() &&
              ((byte(0x068EF9) == 10 && prev(bit2(0x0691C5)) == 0 && prev(bit2(0x0691CD)) == 0 && (bit2(0x0691C5) +
                 bit2(0x0691CD)) >= 1 && unless(byte(0x068EF9) < 2) && unless(dword(0x068F7C) > 1) && 
                unless(dword(0x068F80) > 256) && unless(dword(0x068F84) > 256)) ||
               (byte(0x0690A9) == 10 && prev(bit2(0x069375)) == 0 && prev(bit2(0x06937D)) == 0 && (bit2(0x069375) +
                 bit2(0x06937D)) >= 1 && unless(byte(0x0690A9) < 2) && unless(dword(0x06912C) > 1) && 
                unless(dword(0x069130) > 256) && unless(dword(0x069134) > 256)) ||
               (byte(0x069349) == 10 && prev(bit2(0x069615)) == 0 && prev(bit2(0x06961D)) == 0 && (bit2(0x069615) +
                 bit2(0x06961D)) >= 1 && unless(byte(0x069349) < 2) && unless(dword(0x0693CC) > 1) && 
                unless(dword(0x0693D0) > 256) && unless(dword(0x069D34) > 256)))
)

achievement(
    title = "Bone Yard Relic", points = 5,
    description = "Get any relic in Bone Yard.",
    id = 88305, badge = "110128", published = "15/11/2019 01:49:40", modified = "15/5/2020 22:26:23",
    trigger = always_true() &&
              ((byte(0x068EF9) == 12 && prev(bit4(0x0691C5)) == 0 && prev(bit4(0x0691CD)) == 0 && (bit4(0x0691C5) +
                 bit4(0x0691CD)) >= 1 && unless(byte(0x068EF9) < 2) && unless(dword(0x068F7C) > 1) && 
                unless(dword(0x068F80) > 256) && unless(dword(0x068F84) > 256)) ||
               (byte(0x0690A9) == 12 && prev(bit4(0x069375)) == 0 && prev(bit4(0x06937D)) == 0 && (bit4(0x069375) +
                 bit4(0x06937D)) >= 1 && unless(byte(0x0690A9) < 2) && unless(dword(0x06912C) > 1) && 
                unless(dword(0x069130) > 256) && unless(dword(0x069134) > 256)) ||
               (byte(0x069349) == 12 && prev(bit4(0x069615)) == 0 && prev(bit4(0x06961D)) == 0 && (bit4(0x069615) +
                 bit4(0x06961D)) >= 1 && unless(byte(0x069349) < 2) && unless(dword(0x0693CC) > 1) && 
                unless(dword(0x0693D0) > 256) && unless(dword(0x069D34) > 256)))
)

achievement(
    title = "Making Waves Relic", points = 5,
    description = "Get any relic in Making Waves.",
    id = 88307, badge = "110126", published = "15/11/2019 01:49:46", modified = "15/5/2020 22:33:18",
    trigger = always_true() &&
              ((byte(0x068EF9) == 25 && prev(bit1(0x0691C7)) == 0 && prev(bit1(0x0691CF)) == 0 && (bit1(0x0691C7) +
                 bit1(0x0691CF)) >= 1 && unless(byte(0x068EF9) < 2) && unless(dword(0x068F7C) > 1) && 
                unless(dword(0x068F80) > 256) && unless(dword(0x068F84) > 256)) ||
               (byte(0x0690A9) == 25 && prev(bit1(0x069377)) == 0 && prev(bit1(0x06937F)) == 0 && (bit1(0x069377) +
                 bit1(0x06937F)) >= 1 && unless(byte(0x0690A9) < 2) && unless(dword(0x06912C) > 1) && 
                unless(dword(0x069130) > 256) && unless(dword(0x069134) > 256)) ||
               (byte(0x069349) == 25 && prev(bit1(0x069617)) == 0 && prev(bit1(0x06961F)) == 0 && (bit1(0x069617) +
                 bit1(0x06961F)) >= 1 && unless(byte(0x069349) < 2) && unless(dword(0x0693CC) > 1) && 
                unless(dword(0x0693D0) > 256) && unless(dword(0x069D34) > 256)))
)

achievement(
    title = "Gee Wiz Relic", points = 5,
    description = "Get any relic in Gee Wiz.",
    id = 88312, badge = "110132", published = "15/11/2019 01:49:59", modified = "13/2/2021 22:20:40",
    trigger = always_true() &&
              ((byte(0x068EF9) == 15 && prev(bit7(0x0691C5)) == 0 && prev(bit7(0x0691CD)) == 0 && (bit7(0x0691C5) +
                 bit7(0x0691CD)) >= 1 && unless(byte(0x068EF9) < 2) && unless(dword(0x068F7C) > 1) && 
                unless(dword(0x068F80) > 256) && unless(dword(0x068F84) > 256)) ||
               (byte(0x0690A9) == 15 && prev(bit7(0x069375)) == 0 && prev(bit7(0x06937D)) == 0 && (bit7(0x069375) +
                 bit7(0x06937D)) >= 1 && unless(byte(0x0690A9) < 2) && unless(dword(0x06912C) > 1) && 
                unless(dword(0x069130) > 256) && unless(dword(0x069134) > 256)) ||
               (byte(0x069349) == 15 && prev(bit7(0x069615)) == 0 && prev(bit7(0x06961D)) == 0 && (bit7(0x069615) +
                 bit7(0x06961D)) >= 1 && unless(byte(0x069349) < 2) && unless(dword(0x0693CC) > 1) && 
                unless(dword(0x0693D0) > 256) && unless(dword(0x069D34) > 256)))
)

achievement(
    title = "Hangem High Relic", points = 5,
    description = "Get any relic in Hangem High.",
    id = 88314, badge = "110134", published = "15/11/2019 01:50:05", modified = "15/5/2020 22:29:49",
    trigger = always_true() &&
              ((byte(0x068EF9) == 22 && prev(bit6(0x0691C6)) == 0 && prev(bit6(0x0691CE)) == 0 && (bit6(0x0691C6) +
                 bit6(0x0691CE)) >= 1 && unless(byte(0x068EF9) < 2) && unless(dword(0x068F7C) > 1) && 
                unless(dword(0x068F80) > 256) && unless(dword(0x068F84) > 256)) ||
               (byte(0x0690A9) == 22 && prev(bit6(0x069376)) == 0 && prev(bit6(0x06937E)) == 0 && (bit6(0x069376) +
                 bit6(0x06937E)) >= 1 && unless(byte(0x0690A9) < 2) && unless(dword(0x06912C) > 1) && 
                unless(dword(0x069130) > 256) && unless(dword(0x069134) > 256)) ||
               (byte(0x069349) == 22 && prev(bit6(0x069616)) == 0 && prev(bit6(0x06961E)) == 0 && (bit6(0x069616) +
                 bit6(0x06961E)) >= 1 && unless(byte(0x069349) < 2) && unless(dword(0x0693CC) > 1) && 
                unless(dword(0x0693D0) > 256) && unless(dword(0x069D34) > 256)))
)

achievement(
    title = "Hog Ride Relic", points = 5,
    description = "Get any relic in Hog Ride.",
    id = 88316, badge = "110136", published = "15/11/2019 01:50:11", modified = "15/2/2021 20:22:14",
    trigger = always_true() &&
              ((byte(0x068EF9) == 21 && prev(bit5(0x0691C6)) == 0 && prev(bit5(0x0691CE)) == 0 && (bit5(0x0691C6) +
                 bit5(0x0691CE)) >= 1 && unless(byte(0x068EF9) < 2) && unless(dword(0x068F7C) > 1) && 
                unless(dword(0x068F80) > 256) && unless(dword(0x068F84) > 256)) ||
               (byte(0x0690A9) == 21 && prev(bit5(0x069376)) == 0 && prev(bit5(0x06937E)) == 0 && (bit5(0x069376) +
                 bit5(0x06937E)) >= 1 && unless(byte(0x0690A9) < 2) && unless(dword(0x06912C) > 1) && 
                unless(dword(0x069130) > 256) && unless(dword(0x069134) > 256)) ||
               (byte(0x069349) == 21 && prev(bit5(0x069616)) == 0 && prev(bit5(0x06961E)) == 0 && (bit5(0x069616) +
                 bit5(0x06961E)) >= 1 && unless(byte(0x069349) < 2) && unless(dword(0x0693CC) > 1) && 
                unless(dword(0x0693D0) > 256) && unless(dword(0x069D34) > 256)))
)

achievement(
    title = "Tomb Time Relic", points = 5,
    description = "Get any relic in Tomb Time.",
    id = 88318, badge = "110138", published = "15/11/2019 01:50:16", modified = "14/2/2021 20:55:51",
    trigger = always_true() &&
              ((byte(0x068EF9) == 18 && prev(bit2(0x0691C6)) == 0 && prev(bit2(0x0691CE)) == 0 && (bit2(0x0691C6) +
                 bit2(0x0691CE)) >= 1 && unless(byte(0x068EF9) < 2) && unless(dword(0x068F7C) > 1) && 
                unless(dword(0x068F80) > 256) && unless(dword(0x068F84) > 256)) ||
               (byte(0x0690A9) == 18 && prev(bit2(0x069376)) == 0 && prev(bit2(0x06937E)) == 0 && (bit2(0x069376) +
                 bit2(0x06937E)) >= 1 && unless(byte(0x0690A9) < 2) && unless(dword(0x06912C) > 1) && 
                unless(dword(0x069130) > 256) && unless(dword(0x069134) > 256)) ||
               (byte(0x069349) == 18 && prev(bit2(0x069616)) == 0 && prev(bit2(0x06961E)) == 0 && (bit2(0x069616) +
                 bit2(0x06961E)) >= 1 && unless(byte(0x069349) < 2) && unless(dword(0x0693CC) > 1) && 
                unless(dword(0x0693D0) > 256) && unless(dword(0x069D34) > 256)))
)

achievement(
    title = "Midnight Run Relic", points = 5,
    description = "Get any relic in Midnight Run.",
    id = 88320, badge = "110140", published = "15/11/2019 01:50:21", modified = "14/2/2021 23:09:15",
    trigger = always_true() &&
              ((byte(0x068EF9) == 17 && prev(bit1(0x0691C6)) == 0 && prev(bit1(0x0691CE)) == 0 && (bit1(0x0691C6) +
                 bit1(0x0691CE)) >= 1 && unless(byte(0x068EF9) < 2) && unless(dword(0x068F7C) > 1) && 
                unless(dword(0x068F80) > 256) && unless(dword(0x068F84) > 256)) ||
               (byte(0x0690A9) == 17 && prev(bit1(0x069376)) == 0 && prev(bit1(0x06937E)) == 0 && (bit1(0x069376) +
                 bit1(0x06937E)) >= 1 && unless(byte(0x0690A9) < 2) && unless(dword(0x06912C) > 1) && 
                unless(dword(0x069130) > 256) && unless(dword(0x069134) > 256)) ||
               (byte(0x069349) == 17 && prev(bit1(0x069616)) == 0 && prev(bit1(0x06961E)) == 0 && (bit1(0x069616) +
                 bit1(0x06961E)) >= 1 && unless(byte(0x069349) < 2) && unless(dword(0x0693CC) > 1) && 
                unless(dword(0x0693D0) > 256) && unless(dword(0x069D34) > 256)))
)

achievement(
    title = "Dino Might Relic", points = 5,
    description = "Get any relic in Dino Might.",
    id = 88325, badge = "110144", published = "15/11/2019 01:50:36", modified = "15/5/2020 22:53:46",
    trigger = always_true() &&
              ((byte(0x068EF9) == 16 && prev(bit0(0x0691C6)) == 0 && prev(bit0(0x0691CE)) == 0 && (bit0(0x0691C6) +
                 bit0(0x0691CE)) >= 1 && unless(byte(0x068EF9) < 2) && unless(dword(0x068F7C) > 1) && 
                unless(dword(0x068F80) > 256) && unless(dword(0x068F84) > 256)) ||
               (byte(0x0690A9) == 16 && prev(bit0(0x069376)) == 0 && prev(bit0(0x06937E)) == 0 && (bit0(0x069376) +
                 bit0(0x06937E)) >= 1 && unless(byte(0x0690A9) < 2) && unless(dword(0x06912C) > 1) && 
                unless(dword(0x069130) > 256) && unless(dword(0x069134) > 256)) ||
               (byte(0x069349) == 16 && prev(bit0(0x069616)) == 0 && prev(bit0(0x06961E)) == 0 && (bit0(0x069616) +
                 bit0(0x06961E)) >= 1 && unless(byte(0x069349) < 2) && unless(dword(0x0693CC) > 1) && 
                unless(dword(0x0693D0) > 256) && unless(dword(0x069D34) > 256)))
)

achievement(
    title = "Deep Trouble Relic", points = 5,
    description = "Get any relic in Deep Trouble.",
    id = 88327, badge = "110146", published = "15/11/2019 01:50:41", modified = "15/2/2021 15:23:08",
    trigger = always_true() &&
              ((byte(0x068EF9) == 28 && prev(bit4(0x0691C7)) == 0 && prev(bit4(0x0691CF)) == 0 && (bit4(0x0691C7) +
                 bit4(0x0691CF)) >= 1 && unless(byte(0x068EF9) < 2) && unless(dword(0x068F7C) > 1) && 
                unless(dword(0x068F80) > 256) && unless(dword(0x068F84) > 256)) ||
               (byte(0x0690A9) == 28 && prev(bit4(0x069377)) == 0 && prev(bit4(0x06937F)) == 0 && (bit4(0x069377) +
                 bit4(0x06937F)) >= 1 && unless(byte(0x0690A9) < 2) && unless(dword(0x06912C) > 1) && 
                unless(dword(0x069130) > 256) && unless(dword(0x069134) > 256)) ||
               (byte(0x069349) == 28 && prev(bit4(0x069617)) == 0 && prev(bit4(0x06961F)) == 0 && (bit4(0x069617) +
                 bit4(0x06961F)) >= 1 && unless(byte(0x069349) < 2) && unless(dword(0x0693CC) > 1) && 
                unless(dword(0x0693D0) > 256) && unless(dword(0x069D34) > 256)))
)

achievement(
    title = "High Time Relic", points = 5,
    description = "Get any relic in High Time.",
    id = 88329, badge = "110148", published = "15/11/2019 01:50:46", modified = "17/5/2020 23:19:54",
    trigger = always_true() &&
              ((byte(0x068EF9) == 26 && prev(bit2(0x0691C7)) == 0 && prev(bit2(0x0691CF)) == 0 && (bit2(0x0691C7) +
                 bit2(0x0691CF)) >= 1 && unless(byte(0x068EF9) < 2) && unless(dword(0x068F7C) > 1) && 
                unless(dword(0x068F80) > 256) && unless(dword(0x068F84) > 256)) ||
               (byte(0x0690A9) == 26 && prev(bit2(0x069377)) == 0 && prev(bit2(0x06937F)) == 0 && (bit2(0x069377) +
                 bit2(0x06937F)) >= 1 && unless(byte(0x0690A9) < 2) && unless(dword(0x06912C) > 1) && 
                unless(dword(0x069130) > 256) && unless(dword(0x069134) > 256)) ||
               (byte(0x069349) == 26 && prev(bit2(0x069617)) == 0 && prev(bit2(0x06961F)) == 0 && (bit2(0x069617) +
                 bit2(0x06961F)) >= 1 && unless(byte(0x069349) < 2) && unless(dword(0x0693CC) > 1) && 
                unless(dword(0x0693D0) > 256) && unless(dword(0x069D34) > 256)))
)

achievement(
    title = "Road Crash Relic", points = 5,
    description = "Get any relic in Road Crash.",
    id = 88331, badge = "110150", published = "15/11/2019 01:50:51", modified = "15/2/2021 20:17:43",
    trigger = always_true() &&
              ((byte(0x068EF9) == 20 && prev(bit4(0x0691C6)) == 0 && prev(bit4(0x0691CE)) == 0 && (bit4(0x0691C6) +
                 bit4(0x0691CE)) >= 1 && unless(byte(0x068EF9) < 2) && unless(dword(0x068F7C) > 1) && 
                unless(dword(0x068F80) > 256) && unless(dword(0x068F84) > 256)) ||
               (byte(0x0690A9) == 20 && prev(bit4(0x069376)) == 0 && prev(bit4(0x06937E)) == 0 && (bit4(0x069376) +
                 bit4(0x06937E)) >= 1 && unless(byte(0x0690A9) < 2) && unless(dword(0x06912C) > 1) && 
                unless(dword(0x069130) > 256) && unless(dword(0x069134) > 256)) ||
               (byte(0x069349) == 20 && prev(bit4(0x069616)) == 0 && prev(bit4(0x06961E)) == 0 && (bit4(0x069616) +
                 bit4(0x06961E)) >= 1 && unless(byte(0x069349) < 2) && unless(dword(0x0693CC) > 1) && 
                unless(dword(0x0693D0) > 256) && unless(dword(0x069D34) > 256)))
)

achievement(
    title = "Double Header Relic", points = 5,
    description = "Get any relic in Double Header.",
    id = 88333, badge = "110152", published = "15/11/2019 01:50:57", modified = "15/5/2020 22:47:43",
    trigger = always_true() &&
              ((byte(0x068EF9) == 29 && prev(bit5(0x0691C7)) == 0 && prev(bit5(0x0691CF)) == 0 && (bit5(0x0691C7) +
                 bit5(0x0691CF)) >= 1 && unless(byte(0x068EF9) < 2) && unless(dword(0x068F7C) > 1) && 
                unless(dword(0x068F80) > 256) && unless(dword(0x068F84) > 256)) ||
               (byte(0x0690A9) == 29 && prev(bit5(0x069377)) == 0 && prev(bit5(0x06937F)) == 0 && (bit5(0x069377) +
                 bit5(0x06937F)) >= 1 && unless(byte(0x0690A9) < 2) && unless(dword(0x06912C) > 1) && 
                unless(dword(0x069130) > 256) && unless(dword(0x069134) > 256)) ||
               (byte(0x069349) == 29 && prev(bit5(0x069617)) == 0 && prev(bit5(0x06961F)) == 0 && (bit5(0x069617) +
                 bit5(0x06961F)) >= 1 && unless(byte(0x069349) < 2) && unless(dword(0x0693CC) > 1) && 
                unless(dword(0x0693D0) > 256) && unless(dword(0x069D34) > 256)))
)

achievement(
    title = "Sphynxinator Relic", points = 5,
    description = "Get any relic in Sphynxinator.",
    id = 88338, badge = "110156", published = "15/11/2019 01:51:11", modified = "15/5/2020 22:17:28",
    trigger = always_true() &&
              ((byte(0x068EF9) == 30 && prev(bit6(0x0691C7)) == 0 && prev(bit6(0x0691CF)) == 0 && (bit6(0x0691C7) +
                 bit6(0x0691CF)) >= 1 && unless(byte(0x068EF9) < 2) && unless(dword(0x068F7C) > 1) && 
                unless(dword(0x068F80) > 256) && unless(dword(0x068F84) > 256)) ||
               (byte(0x0690A9) == 30 && prev(bit6(0x069377)) == 0 && prev(bit6(0x06937F)) == 0 && (bit6(0x069377) +
                 bit6(0x06937F)) >= 1 && unless(byte(0x0690A9) < 2) && unless(dword(0x06912C) > 1) && 
                unless(dword(0x069130) > 256) && unless(dword(0x069134) > 256)) ||
               (byte(0x069349) == 30 && prev(bit6(0x069617)) == 0 && prev(bit6(0x06961F)) == 0 && (bit6(0x069617) +
                 bit6(0x06961F)) >= 1 && unless(byte(0x069349) < 2) && unless(dword(0x0693CC) > 1) && 
                unless(dword(0x0693D0) > 256) && unless(dword(0x069D34) > 256)))
)

achievement(
    title = "Bye Blimps Relic", points = 5,
    description = "Get any relic in Bye Blimps.",
    id = 88340, badge = "110158", published = "15/11/2019 01:51:16", modified = "15/5/2020 22:13:58",
    trigger = always_true() &&
              ((byte(0x068EF9) == 19 && prev(bit3(0x0691C6)) == 0 && prev(bit3(0x0691CE)) == 0 && (bit3(0x0691C6) +
                 bit3(0x0691CE)) >= 1 && unless(byte(0x068EF9) < 2) && unless(dword(0x068F7C) > 1) && 
                unless(dword(0x068F80) > 256) && unless(dword(0x068F84) > 256)) ||
               (byte(0x0690A9) == 19 && prev(bit3(0x069376)) == 0 && prev(bit3(0x06937E)) == 0 && (bit3(0x069376) +
                 bit3(0x06937E)) >= 1 && unless(byte(0x0690A9) < 2) && unless(dword(0x06912C) > 1) && 
                unless(dword(0x069130) > 256) && unless(dword(0x069134) > 256)) ||
               (byte(0x069349) == 19 && prev(bit3(0x069616)) == 0 && prev(bit3(0x06961E)) == 0 && (bit3(0x069616) +
                 bit3(0x06961E)) > 1 && unless(byte(0x069349) < 2) && unless(dword(0x0693CC) > 1) && 
                unless(dword(0x0693D0) > 256) && unless(dword(0x069D34) > 256)))
)

achievement(
    title = "Tell No Tales Relic", points = 5,
    description = "Get any relic in Tell No Tales.",
    id = 88342, badge = "110160", published = "15/11/2019 01:51:21", modified = "15/5/2020 22:11:32",
    trigger = always_true() &&
              ((byte(0x068EF9) == 13 && prev(bit5(0x0691C5)) == 0 && prev(bit5(0x0691CD)) == 0 && (bit5(0x0691C5) +
                 bit5(0x0691CD)) >= 1 && unless(byte(0x068EF9) < 2) && unless(dword(0x068F7C) > 1) && 
                unless(dword(0x068F80) > 256) && unless(dword(0x068F84) > 256)) ||
               (byte(0x0690A9) == 13 && prev(bit5(0x069375)) == 0 && prev(bit5(0x06937D)) == 0 && (bit5(0x069375) +
                 bit5(0x06937D)) >= 1 && unless(byte(0x0690A9) < 2) && unless(dword(0x06912C) > 1) && 
                unless(dword(0x069130) > 256) && unless(dword(0x069134) > 256)) ||
               (byte(0x069349) == 13 && prev(bit5(0x069615)) == 0 && prev(bit5(0x06961D)) == 0 && (bit5(0x069615) +
                 bit5(0x06961D)) >= 1 && unless(byte(0x069349) < 2) && unless(dword(0x0693CC) > 1) && 
                unless(dword(0x0693D0) > 256) && unless(dword(0x069D34) > 256)))
)

achievement(
    title = "Future Frenzy Relic", points = 5,
    description = "Get any relic in Future Frenzy.",
    id = 88344, badge = "110162", published = "15/11/2019 01:51:26", modified = "15/5/2020 22:09:03",
    trigger = always_true() &&
              ((byte(0x068EF9) == 27 && prev(bit3(0x0691C7)) == 0 && prev(bit3(0x0691CF)) == 0 && (bit3(0x0691C7) +
                 bit3(0x0691CF)) >= 1 && unless(byte(0x068EF9) < 2) && unless(dword(0x068F7C) > 1) && 
                unless(dword(0x068F80) > 256) && unless(dword(0x068F84) > 256)) ||
               (byte(0x0690A9) == 27 && prev(bit3(0x069377)) == 0 && prev(bit3(0x06937F)) == 0 && (bit3(0x069377) +
                 bit3(0x06937F)) >= 1 && unless(byte(0x0690A9) < 2) && unless(dword(0x06912C) > 1) && 
                unless(dword(0x069130) > 256) && unless(dword(0x069134) > 256)) ||
               (byte(0x069349) == 27 && prev(bit3(0x069617)) == 0 && prev(bit3(0x06961F)) == 0 && (bit3(0x069617) +
                 bit3(0x06961F)) >= 1 && unless(byte(0x069349) < 2) && unless(dword(0x0693CC) > 1) && 
                unless(dword(0x0693D0) > 256) && unless(dword(0x069D34) > 256)))
)

achievement(
    title = "Tomb Wader Relic", points = 5,
    description = "Get any relic in Tomb Wader.",
    id = 88346, badge = "110164", published = "15/11/2019 01:51:31", modified = "15/5/2020 18:00:08",
    trigger = always_true() &&
              ((byte(0x068EF9) == 24 && prev(bit0(0x0691C7)) == 0 && prev(bit0(0x0691CF)) == 0 && (bit0(0x0691C7) +
                 bit0(0x0691CF)) >= 1 && unless(byte(0x068EF9) < 2) && unless(dword(0x068F7C) > 1) && 
                unless(dword(0x068F80) > 256) && unless(dword(0x068F84) > 256)) ||
               (byte(0x0690A9) == 24 && prev(bit0(0x069377)) == 0 && prev(bit0(0x06937F)) == 0 && (bit0(0x069377) +
                 bit0(0x06937F)) >= 1 && unless(byte(0x0690A9) < 2) && unless(dword(0x06912C) > 1) && 
                unless(dword(0x069130) > 256) && unless(dword(0x069134) > 256)) ||
               (byte(0x069349) == 24 && prev(bit0(0x069617)) == 0 && prev(bit0(0x06961F)) == 0 && (bit0(0x069617) +
                 bit0(0x06961F)) >= 1 && unless(byte(0x069349) < 2) && unless(dword(0x0693CC) > 1) && 
                unless(dword(0x0693D0) > 256) && unless(dword(0x069D34) > 256)))
)

achievement(
    title = "Gone Tomorrow Relic ", points = 5,
    description = "Get any relic in Gone Tomorrow.",
    id = 88576, badge = "110168", published = "16/11/2019 18:53:48", modified = "15/5/2020 18:11:39",
    trigger = always_true() &&
              ((byte(0x068EF9) == 35 && prev(bit3(0x0691C8)) == 0 && prev(bit3(0x0691D0)) == 0 && (bit3(0x0691C8) +
                 bit3(0x0691D0)) >= 1 && unless(byte(0x068EF9) < 2) && unless(dword(0x068F7C) > 1) && 
                unless(dword(0x068F80) > 256) && unless(dword(0x068F84) > 256)) ||
               (byte(0x0690A9) == 35 && prev(bit3(0x069378)) == 0 && prev(bit3(0x069380)) == 0 && (bit3(0x069378) +
                 bit3(0x069380)) >= 1 && unless(byte(0x0690A9) < 2) && unless(dword(0x06912C) > 1) && 
                unless(dword(0x069130) > 256) && unless(dword(0x069134) > 256)) ||
               (byte(0x069349) == 35 && prev(bit3(0x069618)) == 0 && prev(bit3(0x069620)) == 0 && (bit3(0x069618) +
                 bit3(0x069620)) >= 1 && unless(byte(0x069349) < 2) && unless(dword(0x0693CC) > 1) && 
                unless(dword(0x0693D0) > 256) && unless(dword(0x069D34) > 256)))
)

achievement(
    title = "Orange Asphault Relic", points = 5,
    description = "Get any relic in Orange Asphault.",
    id = 88578, badge = "110170", published = "16/11/2019 18:53:53", modified = "15/5/2020 18:08:46",
    trigger = always_true() &&
              ((byte(0x068EF9) == 32 && prev(bit0(0x0691C8)) == 0 && prev(bit0(0x0691D0)) == 0 && (bit0(0x0691C8) +
                 bit0(0x0691D0)) >= 1 && unless(byte(0x068EF9) < 2) && unless(dword(0x068F7C) > 1) && 
                unless(dword(0x068F80) > 256) && unless(dword(0x068F84) > 256)) ||
               (byte(0x0690A9) == 32 && prev(bit0(0x069378)) == 0 && prev(bit0(0x069380)) == 0 && (bit0(0x069378) +
                 bit0(0x069380)) >= 1 && unless(byte(0x0690A9) < 2) && unless(dword(0x06912C) > 1) && 
                unless(dword(0x069130) > 256) && unless(dword(0x069134) > 256)) ||
               (byte(0x069349) == 32 && prev(bit0(0x069618)) == 0 && prev(bit0(0x069620)) == 0 && (bit0(0x069618) +
                 bit0(0x069620)) >= 1 && unless(byte(0x069349) < 2) && unless(dword(0x0693CC) > 1) && 
                unless(dword(0x0693D0) > 256) && unless(dword(0x069D34) > 256)))
)

achievement(
    title = "Flaming Passion Relic ", points = 5,
    description = "Get any relic in Flaming Passion.",
    id = 88580, badge = "110172", published = "16/11/2019 18:53:59", modified = "15/5/2020 18:05:32",
    trigger = always_true() &&
              ((byte(0x068EF9) == 34 && prev(bit2(0x0691C8)) == 0 && prev(bit2(0x0691D0)) == 0 && (bit2(0x0691C8) +
                 bit2(0x0691D0)) >= 1 && unless(byte(0x068EF9) < 2) && unless(dword(0x068F7C) > 1) && 
                unless(dword(0x068F80) > 256) && unless(dword(0x068F84) > 256)) ||
               (byte(0x0690A9) == 34 && prev(bit2(0x069378)) == 0 && prev(bit2(0x069380)) == 0 && (bit2(0x069378) +
                 bit2(0x069380)) >= 1 && unless(byte(0x0690A9) < 2) && unless(dword(0x06912C) > 1) && 
                unless(dword(0x069130) > 256) && unless(dword(0x069134) > 256)) ||
               (byte(0x069349) == 34 && prev(bit2(0x069618)) == 0 && prev(bit2(0x069620)) == 0 && (bit2(0x069618) +
                 bit2(0x069620)) >= 1 && unless(byte(0x069349) < 2) && unless(dword(0x0693CC) > 1) && 
                unless(dword(0x0693D0) > 256) && unless(dword(0x069D34) > 256)))
)

achievement(
    title = "Mad Bombers Relic", points = 5,
    description = "Get any relic in Mad Bombers.",
    id = 88582, badge = "110174", published = "16/11/2019 18:54:05", modified = "15/5/2020 18:03:22",
    trigger = always_true() &&
              ((byte(0x068EF9) == 23 && prev(bit7(0x0691C6)) == 0 && prev(bit7(0x0691CE)) == 0 && (bit7(0x0691C6) +
                 bit7(0x0691CE)) >= 1 && unless(byte(0x068EF9) < 2) && unless(dword(0x068F7C) > 1) && 
                unless(dword(0x068F80) > 256) && unless(dword(0x068F84) > 256)) ||
               (byte(0x0690A9) == 23 && prev(bit7(0x069376)) == 0 && prev(bit7(0x06937E)) == 0 && (bit7(0x069376) +
                 bit7(0x06937E)) >= 1 && unless(byte(0x0690A9) < 2) && unless(dword(0x06912C) > 1) && 
                unless(dword(0x069130) > 256) && unless(dword(0x069134) > 256)) ||
               (byte(0x069349) == 23 && prev(bit7(0x069616)) == 0 && prev(bit7(0x06961E)) == 0 && (bit7(0x069616) +
                 bit7(0x06961E)) >= 1 && unless(byte(0x069349) < 2) && unless(dword(0x0693CC) > 1) && 
                unless(dword(0x0693D0) > 256) && unless(dword(0x069D34) > 256)))
)

achievement(
    title = "Bug Lite Relic", points = 5,
    description = "Get any relic in Bug Lite.",
    id = 88584, badge = "110176", published = "16/11/2019 18:54:11", modified = "15/5/2020 22:24:48",
    trigger = always_true() &&
              ((byte(0x068EF9) == 36 && prev(bit4(0x0691C8)) == 0 && prev(bit4(0x0691D0)) == 0 && (bit4(0x0691C8) +
                 bit4(0x0691D0)) >= 1 && unless(byte(0x068EF9) < 2) && unless(dword(0x068F7C) > 1) && 
                unless(dword(0x068F80) > 256) && unless(dword(0x068F84) > 256)) ||
               (byte(0x0690A9) == 36 && prev(bit4(0x069378)) == 0 && prev(bit4(0x069380)) == 0 && (bit4(0x069378) +
                 bit4(0x069380)) >= 1 && unless(byte(0x0690A9) < 2) && unless(dword(0x06912C) > 1) && 
                unless(dword(0x069130) > 256) && unless(dword(0x069134) > 256)) ||
               (byte(0x069349) == 36 && prev(bit4(0x069618)) == 0 && prev(bit4(0x069620)) == 0 && (bit4(0x069618) +
                 bit4(0x069620)) >= 1 && unless(byte(0x069349) < 2) && unless(dword(0x0693CC) > 1) && 
                unless(dword(0x0693D0) > 256) && unless(dword(0x069D34) > 256)))
)

achievement(
    title = "Ski Crazed Relic", points = 5,
    description = "Get any relic in Ski Crazed.",
    id = 88594, badge = "110186", published = "16/11/2019 18:54:39", modified = "15/5/2020 22:22:13",
    trigger = always_true() &&
              ((byte(0x068EF9) == 33 && prev(bit1(0x0691C8)) == 0 && prev(bit1(0x0691D0)) == 0 && (bit1(0x0691C8) +
                 bit1(0x0691D0)) >= 1 && unless(byte(0x068EF9) < 2) && unless(dword(0x068F7C) > 1) && 
                unless(dword(0x068F80) > 256) && unless(dword(0x068F84) > 256)) ||
               (byte(0x0690A9) == 33 && prev(bit1(0x069378)) == 0 && prev(bit1(0x069380)) == 0 && (bit1(0x069378) +
                 bit1(0x069380)) >= 1 && unless(byte(0x0690A9) < 2) && unless(dword(0x06912C) > 1) && 
                unless(dword(0x069130) > 256) && unless(dword(0x069134) > 256)) ||
               (byte(0x069349) == 33 && prev(bit1(0x069618)) == 0 && prev(bit1(0x069620)) == 0 && (bit1(0x069618) +
                 bit1(0x069620)) >= 1 && unless(byte(0x069349) < 2) && unless(dword(0x0693CC) > 1) && 
                unless(dword(0x0693D0) > 256) && unless(dword(0x069D34) > 256)))
)

achievement(
    title = "Area 51 Relic", points = 5,
    description = "Get any relic in Area 51.",
    id = 88596, badge = "110188", published = "16/11/2019 18:54:44", modified = "15/5/2020 22:20:48",
    trigger = always_true() &&
              ((byte(0x068EF9) == 37 && prev(bit5(0x0691C8)) == 0 && prev(bit5(0x0691D0)) == 0 && (bit5(0x0691C8) +
                 bit5(0x0691D0)) >= 1 && unless(byte(0x068EF9) < 2) && unless(dword(0x068F7C) > 1) && 
                unless(dword(0x068F80) > 256) && unless(dword(0x068F84) > 256)) ||
               (byte(0x0690A9) == 37 && prev(bit5(0x069378)) == 0 && prev(bit5(0x069380)) == 0 && (bit5(0x069378) +
                 bit5(0x069380)) >= 1 && unless(byte(0x0690A9) < 2) && unless(dword(0x06912C) > 1) && 
                unless(dword(0x069130) > 256) && unless(dword(0x069134) > 256)) ||
               (byte(0x069349) == 37 && prev(bit5(0x069618)) == 0 && prev(bit5(0x069620)) == 0 && (bit5(0x069618) +
                 bit5(0x069620)) >= 1 && unless(byte(0x069349) < 2) && unless(dword(0x0693CC) > 1) && 
                unless(dword(0x0693D0) > 256) && unless(dword(0x069D34) > 256)))
)

achievement(
    title = "Rings of Power Relic", points = 5,
    description = "Get any relic in Rings of Power.",
    id = 88598, badge = "110190", published = "16/11/2019 18:54:49", modified = "15/5/2020 22:19:15",
    trigger = always_true() &&
              ((byte(0x068EF9) == 31 && prev(bit7(0x0691C7)) == 0 && prev(bit7(0x0691CF)) == 0 && (bit7(0x0691C7) +
                 bit7(0x0691CF)) >= 1 && unless(byte(0x068EF9) < 2) && unless(dword(0x068F7C) > 1) && 
                unless(dword(0x068F80) > 256) && unless(dword(0x068F84) > 256)) ||
               (byte(0x0690A9) == 31 && prev(bit7(0x069377)) == 0 && prev(bit7(0x06937F)) == 0 && (bit7(0x069377) +
                 bit7(0x06937F)) >= 1 && unless(byte(0x0690A9) < 2) && unless(dword(0x06912C) > 1) && 
                unless(dword(0x069130) > 256) && unless(dword(0x069134) > 256)) ||
               (byte(0x069349) == 31 && prev(bit7(0x069617)) == 0 && prev(bit7(0x06961F)) == 0 && (bit7(0x069617) +
                 bit7(0x06961F)) >= 1 && unless(byte(0x069349) < 2) && unless(dword(0x0693CC) > 1) && 
                unless(dword(0x0693D0) > 256) && unless(dword(0x069D34) > 256)))
)

achievement(
    title = "Hot Coco Relic", points = 5,
    description = "Get any relic in Hot Coco.",
    id = 89277, badge = "110194", published = "26/11/2019 00:55:12", modified = "15/5/2020 22:56:34",
    trigger = always_true() &&
              ((byte(0x068EF9) == 39 && prev(bit7(0x0691C8)) == 0 && prev(bit7(0x0691D0)) == 0 && (bit7(0x0691C8) +
                 bit7(0x0691D0)) >= 1 && unless(byte(0x068EF9) < 2) && unless(dword(0x068F7C) > 1) && 
                unless(dword(0x068F80) > 256) && unless(dword(0x068F84) > 256)) ||
               (byte(0x0690A9) == 39 && prev(bit7(0x069378)) == 0 && prev(bit7(0x069380)) == 0 && (bit7(0x069378) +
                 bit7(0x069380)) >= 1 && unless(byte(0x0690A9) < 2) && unless(dword(0x06912C) > 1) && 
                unless(dword(0x069130) > 256) && unless(dword(0x069134) > 256)) ||
               (byte(0x069349) == 39 && prev(bit7(0x069618)) == 0 && prev(bit7(0x069620)) == 0 && (bit7(0x069618) +
                 bit7(0x069620)) >= 1 && unless(byte(0x069349) < 2) && unless(dword(0x0693CC) > 1) && 
                unless(dword(0x0693D0) > 256) && unless(dword(0x069D34) > 256)))
)

achievement(
    title = "Eggipus Rex Relic", points = 5,
    description = "Get any relic in Eggipus Rex.",
    id = 89278, badge = "110196", published = "26/11/2019 00:55:14", modified = "30/5/2020 01:14:04",
    trigger = always_true() &&
              ((byte(0x068EF9) == 38 && prev(bit6(0x0691C8)) == 0 && prev(bit6(0x0691D0)) == 0 && (bit6(0x0691C8) +
                 bit6(0x0691D0)) >= 1 && unless(byte(0x068EF9) < 2) && unless(dword(0x068F7C) > 1) && 
                unless(dword(0x068F80) > 256) && unless(dword(0x068F84) > 256)) ||
               (byte(0x0690A9) == 38 && prev(bit6(0x069378)) == 0 && prev(bit6(0x069380)) == 0 && (bit6(0x069378) +
                 bit6(0x069380)) >= 1 && unless(byte(0x0690A9) < 2) && unless(dword(0x06912C) > 1) && 
                unless(dword(0x069130) > 256) && unless(dword(0x069134) > 256)) ||
               (byte(0x069349) == 38 && prev(bit6(0x069618)) == 0 && prev(bit6(0x069620)) == 0 && (bit6(0x069618) +
                 bit6(0x069620)) >= 1 && unless(byte(0x069349) < 2) && unless(dword(0x0693CC) > 1) && 
                unless(dword(0x0693D0) > 256) && unless(dword(0x069D34) > 256)))
)

achievement(
    title = "Toad Village Platinum", points = 10,
    description = "Get platinum relic in Toad Village.",
    id = 88300, badge = "110121", published = "15/11/2019 01:49:26", modified = "15/5/2020 17:18:24",
    trigger = always_true() &&
              ((byte(0x068EF9) == 11 && prev(bit3(0x0691C5)) == 0 && prev(bit3(0x0691CD)) == 0 && bit3(0x0691C5) == 1 && 
                bit3(0x0691CD) == 1 && unless(byte(0x068EF9) < 2) && unless(dword(0x068F7C) > 1) && 
                unless(dword(0x068F80) > 256) && unless(dword(0x068F84) > 256)) ||
               (byte(0x0690A9) == 11 && prev(bit3(0x069375)) == 0 && prev(bit3(0x06937D)) == 0 && bit3(0x069375) == 1 && 
                bit3(0x06937D) == 1 && unless(byte(0x0690A9) < 2) && unless(dword(0x06912C) > 1) && 
                unless(dword(0x069130) > 256) && unless(dword(0x069134) > 256)) ||
               (byte(0x069349) == 11 && prev(bit3(0x069615)) == 0 && prev(bit3(0x06961D)) == 0 && bit3(0x069615) == 1 && 
                bit3(0x06961D) == 1 && unless(byte(0x069349) < 2) && unless(dword(0x0693CC) > 1) && 
                unless(dword(0x0693D0) > 256) && unless(dword(0x069D34) > 256)))
)

achievement(
    title = "Under Pressure Platinum", points = 10,
    description = "Get platinum relic in Under Pressure",
    id = 88302, badge = "110123", published = "15/11/2019 01:49:31", modified = "15/5/2020 17:15:39",
    trigger = always_true() &&
              ((byte(0x068EF9) == 14 && prev(bit6(0x0691C5)) == 0 && prev(bit6(0x0691CD)) == 0 && bit6(0x0691C5) == 1 && 
                bit6(0x0691CD) == 1 && unless(byte(0x068EF9) < 2) && unless(dword(0x068F7C) > 1) && 
                unless(dword(0x068F80) > 256) && unless(dword(0x068F84) > 256)) ||
               (byte(0x0690A9) == 14 && prev(bit6(0x069375)) == 0 && prev(bit6(0x06937D)) == 0 && bit6(0x069375) == 1 && 
                bit6(0x06937D) == 1 && unless(byte(0x0690A9) < 2) && unless(dword(0x06912C) > 1) && 
                unless(dword(0x069130) > 256) && unless(dword(0x069134) > 256)) ||
               (byte(0x069349) == 14 && prev(bit6(0x069615)) == 0 && prev(bit6(0x06961D)) == 0 && bit6(0x069615) == 1 && 
                bit6(0x06961D) == 1 && unless(byte(0x069349) < 2) && unless(dword(0x0693CC) > 1) && 
                unless(dword(0x0693D0) > 256) && unless(dword(0x069D34) > 256)))
)

achievement(
    title = "Orient Express Platinum", points = 10,
    description = "Get platinum relic in Orient Express.",
    id = 88304, badge = "110125", published = "15/11/2019 01:49:38", modified = "15/5/2020 17:13:00",
    trigger = always_true() &&
              ((byte(0x068EF9) == 10 && prev(bit2(0x0691C5)) == 0 && prev(bit2(0x0691CD)) == 0 && bit2(0x0691C5) == 1 && 
                bit2(0x0691CD) == 1 && unless(byte(0x068EF9) < 2) && unless(dword(0x068F7C) > 1) && 
                unless(dword(0x068F80) > 256) && unless(dword(0x068F84) > 256)) ||
               (byte(0x0690A9) == 10 && prev(bit2(0x069375)) == 0 && prev(bit2(0x06937D)) == 0 && bit2(0x069375) == 1 && 
                bit2(0x06937D) == 1 && unless(byte(0x0690A9) < 2) && unless(dword(0x06912C) > 1) && 
                unless(dword(0x069130) > 256) && unless(dword(0x069134) > 256)) ||
               (byte(0x069349) == 10 && prev(bit2(0x069615)) == 0 && prev(bit2(0x06961D)) == 0 && bit2(0x069615) == 1 && 
                bit2(0x06961D) == 1 && unless(byte(0x069349) < 2) && unless(dword(0x0693CC) > 1) && 
                unless(dword(0x0693D0) > 256) && unless(dword(0x069D34) > 256)))
)

achievement(
    title = "Bone Yard Platinum", points = 10,
    description = "Get platinum relic in Bone Yard.",
    id = 88306, badge = "110129", published = "15/11/2019 01:49:44", modified = "15/5/2020 16:29:35",
    trigger = always_true() &&
              ((byte(0x068EF9) == 12 && prev(bit4(0x0691C5)) == 0 && prev(bit4(0x0691CD)) == 0 && bit4(0x0691C5) == 1 && 
                bit4(0x0691CD) == 1 && unless(byte(0x068EF9) < 2) && unless(dword(0x068F7C) > 1) && 
                unless(dword(0x068F80) > 256) && unless(dword(0x068F84) > 256)) ||
               (byte(0x0690A9) == 12 && prev(bit4(0x069375)) == 0 && prev(bit4(0x06937D)) == 0 && bit4(0x069375) == 1 && 
                bit4(0x06937D) == 1 && unless(byte(0x0690A9) < 2) && unless(dword(0x06912C) > 1) && 
                unless(dword(0x069130) > 256) && unless(dword(0x069134) > 256)) ||
               (byte(0x069349) == 12 && prev(bit4(0x069615)) == 0 && prev(bit4(0x06961D)) == 0 && bit4(0x069615) == 1 && 
                bit4(0x06961D) == 1 && unless(byte(0x069349) < 2) && unless(dword(0x0693CC) > 1) && 
                unless(dword(0x0693D0) > 256) && unless(dword(0x069D34) > 256)))
)

achievement(
    title = "Making Waves Platinum", points = 10,
    description = "Get platinum relic in Making Waves.",
    id = 88308, badge = "110127", published = "15/11/2019 01:49:49", modified = "15/5/2020 17:10:15",
    trigger = always_true() &&
              ((byte(0x068EF9) == 25 && prev(bit1(0x0691C7)) == 0 && prev(bit1(0x0691CF)) == 0 && bit1(0x0691C7) == 1 && 
                bit1(0x0691CF) == 1 && unless(byte(0x068EF9) < 2) && unless(dword(0x068F7C) > 1) && 
                unless(dword(0x068F80) > 256) && unless(dword(0x068F84) > 256)) ||
               (byte(0x0690A9) == 25 && prev(bit1(0x069377)) == 0 && prev(bit1(0x06937F)) == 0 && bit1(0x069377) == 1 && 
                bit1(0x06937F) == 1 && unless(byte(0x0690A9) < 2) && unless(dword(0x06912C) > 1) && 
                unless(dword(0x069130) > 256) && unless(dword(0x069134) > 256)) ||
               (byte(0x069349) == 25 && prev(bit1(0x069617)) == 0 && prev(bit1(0x06961F)) == 0 && bit1(0x069617) == 1 && 
                bit1(0x06961F) == 1 && unless(byte(0x069349) < 2) && unless(dword(0x0693CC) > 1) && 
                unless(dword(0x0693D0) > 256) && unless(dword(0x069D34) > 256)))
)

achievement(
    title = "Gee Wiz Platinum", points = 10,
    description = "Get platinum relic in Gee Wiz.",
    id = 88313, badge = "110133", published = "15/11/2019 01:50:02", modified = "15/2/2021 10:22:27",
    trigger = always_true() &&
              ((byte(0x068EF9) == 15 && prev(bit7(0x0691C5)) == 0 && prev(bit7(0x0691CD)) == 0 && bit7(0x0691C5) == 1 && 
                bit7(0x0691CD) == 1 && unless(byte(0x068EF9) < 2) && unless(dword(0x068F7C) > 1) && 
                unless(dword(0x068F80) > 256) && unless(dword(0x068F84) > 256)) ||
               (byte(0x0690A9) == 15 && prev(bit7(0x069375)) == 0 && prev(bit7(0x06937D)) == 0 && bit7(0x069375) == 1 && 
                bit7(0x06937D) == 1 && unless(byte(0x0690A9) < 2) && unless(dword(0x06912C) > 1) && 
                unless(dword(0x069130) > 256) && unless(dword(0x069134) > 256)) ||
               (byte(0x069349) == 15 && prev(bit7(0x069615)) == 0 && prev(bit7(0x06961D)) == 0 && bit7(0x069615) == 1 && 
                bit7(0x06961D) == 1 && unless(byte(0x069349) < 2) && unless(dword(0x0693CC) > 1) && 
                unless(dword(0x0693D0) > 256) && unless(dword(0x069D34) > 256)))
)

achievement(
    title = "Hangem High Platinum", points = 10,
    description = "Get platinum relic in Hangem High.",
    id = 88315, badge = "110135", published = "15/11/2019 01:50:08", modified = "15/5/2020 17:02:04",
    trigger = always_true() &&
              ((byte(0x068EF9) == 22 && prev(bit6(0x0691C6)) == 0 && prev(bit6(0x0691CE)) == 0 && bit6(0x0691C6) == 1 && 
                bit6(0x0691CE) == 1 && unless(byte(0x068EF9) < 2) && unless(dword(0x068F7C) > 1) && 
                unless(dword(0x068F80) > 256) && unless(dword(0x068F84) > 256)) ||
               (byte(0x0690A9) == 22 && prev(bit6(0x069376)) == 0 && prev(bit6(0x06937E)) == 0 && bit6(0x069376) == 1 && 
                bit6(0x06937E) == 1 && unless(byte(0x0690A9) < 2) && unless(dword(0x06912C) > 1) && 
                unless(dword(0x069130) > 256) && unless(dword(0x069134) > 256)) ||
               (byte(0x069349) == 22 && prev(bit6(0x069616)) == 0 && prev(bit6(0x06961E)) == 0 && bit6(0x069616) == 1 && 
                bit6(0x06961E) == 1 && unless(byte(0x069349) < 2) && unless(dword(0x0693CC) > 1) && 
                unless(dword(0x0693D0) > 256) && unless(dword(0x069D34) > 256)))
)

achievement(
    title = "Hog Ride Platinum", points = 10,
    description = "Get platinum relic in Hog Ride.",
    id = 88317, badge = "110137", published = "15/11/2019 01:50:13", modified = "15/2/2021 20:22:28",
    trigger = always_true() &&
              ((byte(0x068EF9) == 21 && prev(bit5(0x0691C6)) == 0 && prev(bit5(0x0691CE)) == 0 && bit5(0x0691C6) == 1 && 
                bit5(0x0691CE) == 1 && unless(byte(0x068EF9) < 2) && unless(dword(0x068F7C) > 1) && 
                unless(dword(0x068F80) > 256) && unless(dword(0x068F84) > 256)) ||
               (byte(0x0690A9) == 21 && prev(bit5(0x069376)) == 0 && prev(bit5(0x06937E)) == 0 && bit5(0x069376) == 1 && 
                bit5(0x06937E) == 1 && unless(byte(0x0690A9) < 2) && unless(dword(0x06912C) > 1) && 
                unless(dword(0x069130) > 256) && unless(dword(0x069134) > 256)) ||
               (byte(0x069349) == 21 && prev(bit5(0x069616)) == 0 && prev(bit5(0x06961E)) == 0 && bit5(0x069616) == 1 && 
                bit5(0x06961E) == 1 && unless(byte(0x069349) < 2) && unless(dword(0x0693CC) > 1) && 
                unless(dword(0x0693D0) > 256) && unless(dword(0x069D34) > 256)))
)

achievement(
    title = "Tomb Time Platinum", points = 10,
    description = "Get platinum relic in Tomb Time.",
    id = 88319, badge = "110139", published = "15/11/2019 01:50:19", modified = "13/4/2021 03:32:50",
    trigger = always_true() &&
              ((byte(0x068EF9) == 18 && prev(bit2(0x0691C6)) == 0 && prev(bit2(0x0691CE)) == 0 && bit2(0x0691C6) == 1 && 
                bit2(0x0691CE) == 1 && unless(byte(0x068EF9) < 2) && unless(dword(0x068F7C) > 1) && 
                unless(dword(0x068F80) > 256) && unless(dword(0x068F84) > 256)) ||
               (byte(0x0690A9) == 18 && prev(bit2(0x069376)) == 0 && prev(bit2(0x06937E)) == 0 && bit2(0x069376) == 1 && 
                bit2(0x06937E) == 1 && unless(byte(0x0690A9) < 2) && unless(dword(0x06912C) > 1) && 
                unless(dword(0x069130) > 256) && unless(dword(0x069134) > 256)) ||
               (byte(0x069349) == 18 && prev(bit2(0x069616)) == 0 && prev(bit2(0x06961E)) == 0 && bit2(0x069616) == 1 && 
                bit2(0x06961E) == 1 && unless(byte(0x069349) < 2) && unless(dword(0x0693CC) > 1) && 
                unless(dword(0x0693D0) > 256) && unless(dword(0x069D34) > 256)))
)

achievement(
    title = "Midnight Run Platinum", points = 10,
    description = "Get platinum relic in Midnight Run.",
    id = 88321, badge = "110141", published = "15/11/2019 01:50:23", modified = "14/2/2021 23:08:58",
    trigger = always_true() &&
              ((byte(0x068EF9) == 17 && prev(bit1(0x0691C6)) == 0 && prev(bit1(0x0691CE)) == 0 && bit1(0x0691C6) == 1 && 
                bit1(0x0691CE) == 1 && unless(byte(0x068EF9) < 2) && unless(dword(0x068F7C) > 1) && 
                unless(dword(0x068F80) > 256) && unless(dword(0x068F84) > 256)) ||
               (byte(0x0690A9) == 17 && prev(bit1(0x069376)) == 0 && prev(bit1(0x06937E)) == 0 && bit1(0x069376) == 1 && 
                bit1(0x06937E) == 1 && unless(byte(0x0690A9) < 2) && unless(dword(0x06912C) > 1) && 
                unless(dword(0x069130) > 256) && unless(dword(0x069134) > 256)) ||
               (byte(0x069349) == 17 && prev(bit1(0x069616)) == 0 && prev(bit1(0x06961E)) == 0 && bit1(0x069616) == 1 && 
                bit1(0x06961E) == 1 && unless(byte(0x069349) < 2) && unless(dword(0x0693CC) > 1) && 
                unless(dword(0x0693D0) > 256) && unless(dword(0x069D34) > 256)))
)

achievement(
    title = "Dino Might Platinum", points = 10,
    description = "Get platinum relic in Dino Might.",
    id = 88326, badge = "110145", published = "15/11/2019 01:50:38", modified = "15/5/2020 22:53:21",
    trigger = always_true() &&
              ((byte(0x068EF9) == 16 && prev(bit0(0x0691C6)) == 0 && prev(bit0(0x0691CE)) == 0 && bit0(0x0691C6) == 1 && 
                bit0(0x0691CE) == 1 && unless(byte(0x068EF9) < 2) && unless(dword(0x068F7C) > 1) && 
                unless(dword(0x068F80) > 256) && unless(dword(0x068F84) > 256)) ||
               (byte(0x0690A9) == 16 && prev(bit0(0x069376)) == 0 && prev(bit0(0x06937E)) == 0 && bit0(0x069376) == 1 && 
                bit0(0x06937E) == 1 && unless(byte(0x0690A9) < 2) && unless(dword(0x06912C) > 1) && 
                unless(dword(0x069130) > 256) && unless(dword(0x069134) > 256)) ||
               (byte(0x069349) == 16 && prev(bit0(0x069616)) == 0 && prev(bit0(0x06961E)) == 0 && bit0(0x069616) == 1 && 
                bit0(0x06961E) == 1 && unless(byte(0x069349) < 2) && unless(dword(0x0693CC) > 1) && 
                unless(dword(0x0693D0) > 256) && unless(dword(0x069D34) > 256)))
)

achievement(
    title = "Deep Trouble Platinum", points = 10,
    description = "Get platinum relic in Deep Trouble.",
    id = 88328, badge = "110147", published = "15/11/2019 01:50:43", modified = "13/4/2021 03:31:57",
    trigger = always_true() &&
              ((byte(0x068EF9) == 28 && prev(bit4(0x0691C7)) == 0 && prev(bit4(0x0691CF)) == 0 && bit4(0x0691C7) == 1 && 
                bit4(0x0691CF) == 1 && unless(byte(0x068EF9) < 2) && unless(dword(0x068F7C) > 1) && 
                unless(dword(0x068F80) > 256) && unless(dword(0x068F84) > 256)) ||
               (byte(0x0690A9) == 28 && prev(bit4(0x069377)) == 0 && prev(bit4(0x06937F)) == 0 && bit4(0x069377) == 1 && 
                bit4(0x06937F) == 1 && unless(byte(0x0690A9) < 2) && unless(dword(0x06912C) > 1) && 
                unless(dword(0x069130) > 256) && unless(dword(0x069134) > 256)) ||
               (byte(0x069349) == 28 && prev(bit4(0x069617)) == 0 && prev(bit4(0x06961F)) == 0 && bit4(0x069617) == 1 && 
                bit4(0x06961F) == 1 && unless(byte(0x069349) < 2) && unless(dword(0x0693CC) > 1) && 
                unless(dword(0x0693D0) > 256) && unless(dword(0x069D34) > 256)))
)

achievement(
    title = "High Time Platinum", points = 10,
    description = "Get platinum relic in High Time.",
    id = 88330, badge = "110149", published = "15/11/2019 01:50:48", modified = "15/2/2021 20:24:22",
    trigger = always_true() &&
              ((byte(0x068EF9) == 26 && prev(bit2(0x0691C7)) == 0 && prev(bit2(0x0691CF)) == 0 && bit2(0x0691C7) == 1 && 
                bit2(0x0691CF) == 1 && unless(byte(0x068EF9) < 2) && unless(dword(0x068F7C) > 1) && 
                unless(dword(0x068F80) > 256) && unless(dword(0x068F84) > 256)) ||
               (byte(0x0690A9) == 26 && prev(bit2(0x069377)) == 0 && prev(bit2(0x06937F)) == 0 && bit2(0x069377) == 1 && 
                bit2(0x06937F) == 1 && unless(byte(0x0690A9) < 2) && unless(dword(0x06912C) > 1) && 
                unless(dword(0x069130) > 256) && unless(dword(0x069134) > 256)) ||
               (byte(0x069349) == 26 && prev(bit2(0x069617)) == 0 && prev(bit2(0x06961F)) == 0 && bit2(0x069617) == 1 && 
                bit2(0x06961F) == 1 && unless(byte(0x069349) < 2) && unless(dword(0x0693CC) > 1) && 
                unless(dword(0x0693D0) > 256) && unless(dword(0x069D34) > 256)))
)

achievement(
    title = "Road Crash Platinum", points = 10,
    description = "Get platinum relic in Road Crash.",
    id = 88332, badge = "110151", published = "15/11/2019 01:50:54", modified = "15/2/2021 20:17:40",
    trigger = always_true() &&
              ((byte(0x068EF9) == 20 && prev(bit4(0x0691C6)) == 0 && prev(bit4(0x0691CE)) == 0 && bit4(0x0691C6) == 1 && 
                bit4(0x0691CE) == 1 && unless(byte(0x068EF9) < 2) && unless(dword(0x068F7C) > 1) && 
                unless(dword(0x068F80) > 256) && unless(dword(0x068F84) > 256)) ||
               (byte(0x0690A9) == 20 && prev(bit4(0x069376)) == 0 && prev(bit4(0x06937E)) == 0 && bit4(0x069376) == 1 && 
                bit4(0x06937E) == 1 && unless(byte(0x0690A9) < 2) && unless(dword(0x06912C) > 1) && 
                unless(dword(0x069130) > 256) && unless(dword(0x069134) > 256)) ||
               (byte(0x069349) == 20 && prev(bit4(0x069616)) == 0 && prev(bit4(0x06961E)) == 0 && bit4(0x069616) == 1 && 
                bit4(0x06961E) == 1 && unless(byte(0x069349) < 2) && unless(dword(0x0693CC) > 1) && 
                unless(dword(0x0693D0) > 256) && unless(dword(0x069D34) > 256)))
)

achievement(
    title = "Double Header Platinum", points = 10,
    description = "Get platinum relic in Double Header.",
    id = 88334, badge = "110153", published = "15/11/2019 01:51:00", modified = "15/5/2020 17:27:45",
    trigger = always_true() &&
              ((byte(0x068EF9) == 29 && prev(bit5(0x0691C7)) == 0 && prev(bit5(0x0691CF)) == 0 && bit5(0x0691C7) == 1 && 
                bit5(0x0691CF) == 1 && unless(byte(0x068EF9) < 2) && unless(dword(0x068F7C) > 1) && 
                unless(dword(0x068F80) > 256) && unless(dword(0x068F84) > 256)) ||
               (byte(0x0690A9) == 29 && prev(bit5(0x069377)) == 0 && prev(bit5(0x06937F)) == 0 && bit5(0x069377) == 1 && 
                bit5(0x06937F) == 1 && unless(byte(0x0690A9) < 2) && unless(dword(0x06912C) > 1) && 
                unless(dword(0x069130) > 256) && unless(dword(0x069134) > 256)) ||
               (byte(0x069349) == 29 && prev(bit5(0x069617)) == 0 && prev(bit5(0x06961F)) == 0 && bit5(0x069617) == 1 && 
                bit5(0x06961F) == 1 && unless(byte(0x069349) < 2) && unless(dword(0x0693CC) > 1) && 
                unless(dword(0x0693D0) > 256) && unless(dword(0x069D34) > 256)))
)

achievement(
    title = "Sphynxinator Platinum", points = 10,
    description = "Get platinum relic in Sphynxinator.",
    id = 88339, badge = "110157", published = "15/11/2019 01:51:13", modified = "15/5/2020 16:03:41",
    trigger = always_true() &&
              ((byte(0x068EF9) == 30 && prev(bit6(0x0691C7)) == 0 && prev(bit6(0x0691CF)) == 0 && bit6(0x0691C7) == 1 && 
                bit6(0x0691CF) == 1 && unless(byte(0x068EF9) < 2) && unless(dword(0x068F7C) > 1) && 
                unless(dword(0x068F80) > 256) && unless(dword(0x068F84) > 256)) ||
               (byte(0x0690A9) == 30 && prev(bit6(0x069377)) == 0 && prev(bit6(0x06937F)) == 0 && bit6(0x069377) == 1 && 
                bit6(0x06937F) == 1 && unless(byte(0x0690A9) < 2) && unless(dword(0x06912C) > 1) && 
                unless(dword(0x069130) > 256) && unless(dword(0x069134) > 256)) ||
               (byte(0x069349) == 30 && prev(bit6(0x069617)) == 0 && prev(bit6(0x06961F)) == 0 && bit6(0x069617) == 1 && 
                bit6(0x06961F) == 1 && unless(byte(0x069349) < 2) && unless(dword(0x0693CC) > 1) && 
                unless(dword(0x0693D0) > 256) && unless(dword(0x069D34) > 256)))
)

achievement(
    title = "Bye Bye Blimps Platinum ", points = 10,
    description = "Get platinum relic in Bye Bye Blimps.",
    id = 88341, badge = "110159", published = "15/11/2019 01:51:18", modified = "15/5/2020 16:01:39",
    trigger = always_true() &&
              ((byte(0x068EF9) == 19 && prev(bit3(0x0691C6)) == 0 && prev(bit3(0x0691CE)) == 0 && bit3(0x0691C6) == 1 && 
                bit3(0x0691CE) == 1 && unless(byte(0x068EF9) < 2) && unless(dword(0x068F7C) > 1) && 
                unless(dword(0x068F80) > 256) && unless(dword(0x068F84) > 256)) ||
               (byte(0x0690A9) == 19 && prev(bit3(0x069376)) == 0 && prev(bit3(0x06937E)) == 0 && bit3(0x069376) == 1 && 
                bit3(0x06937E) == 1 && unless(byte(0x0690A9) < 2) && unless(dword(0x06912C) > 1) && 
                unless(dword(0x069130) > 256) && unless(dword(0x069134) > 256)) ||
               (byte(0x069349) == 19 && prev(bit3(0x069616)) == 0 && prev(bit3(0x06961E)) == 0 && bit3(0x069616) == 1 && 
                bit3(0x06961E) == 1 && unless(byte(0x069349) < 2) && unless(dword(0x0693CC) > 1) && 
                unless(dword(0x0693D0) > 256) && unless(dword(0x069D34) > 256)))
)

achievement(
    title = "Tell No Tales Platinum ", points = 10,
    description = "Get platinum relic in Tell No Tales.",
    id = 88343, badge = "110161", published = "15/11/2019 01:51:23", modified = "15/5/2020 16:00:07",
    trigger = always_true() &&
              ((byte(0x068EF9) == 13 && prev(bit5(0x0691C5)) == 0 && prev(bit5(0x0691CD)) == 0 && bit5(0x0691C5) == 1 && 
                bit5(0x0691CD) == 1 && unless(byte(0x068EF9) < 2) && unless(dword(0x068F7C) > 1) && 
                unless(dword(0x068F80) > 256) && unless(dword(0x068F84) > 256)) ||
               (byte(0x0690A9) == 13 && prev(bit5(0x069375)) == 0 && prev(bit5(0x06937D)) == 0 && bit5(0x069375) == 1 && 
                bit5(0x06937D) == 1 && unless(byte(0x0690A9) < 2) && unless(dword(0x06912C) > 1) && 
                unless(dword(0x069130) > 256) && unless(dword(0x069134) > 256)) ||
               (byte(0x069349) == 13 && prev(bit5(0x069615)) == 0 && prev(bit5(0x06961D)) == 0 && bit5(0x069615) == 1 && 
                bit5(0x06961D) == 1 && unless(byte(0x069349) < 2) && unless(dword(0x0693CC) > 1) && 
                unless(dword(0x0693D0) > 256) && unless(dword(0x069D34) > 256)))
)

achievement(
    title = "Future Frenzy Platinum", points = 10,
    description = "Get platinum relic in Future Frenzy.",
    id = 88345, badge = "110163", published = "15/11/2019 01:51:29", modified = "15/5/2020 22:05:09",
    trigger = always_true() &&
              ((byte(0x068EF9) == 27 && prev(bit3(0x0691C7)) == 0 && prev(bit3(0x0691CF)) == 0 && bit3(0x0691C7) == 1 && 
                bit3(0x0691CF) == 1 && unless(byte(0x068EF9) < 2) && unless(dword(0x068F7C) > 1) && 
                unless(dword(0x068F80) > 256) && unless(dword(0x068F84) > 256)) ||
               (byte(0x0690A9) == 27 && prev(bit3(0x069377)) == 0 && prev(bit3(0x06937F)) == 0 && bit3(0x069377) == 1 && 
                bit3(0x06937F) == 1 && unless(byte(0x0690A9) < 2) && unless(dword(0x06912C) > 1) && 
                unless(dword(0x069130) > 256) && unless(dword(0x069134) > 256)) ||
               (byte(0x069349) == 27 && prev(bit3(0x069617)) == 0 && prev(bit3(0x06961F)) == 0 && bit3(0x069617) == 1 && 
                bit3(0x06961F) == 1 && unless(byte(0x069349) < 2) && unless(dword(0x0693CC) > 1) && 
                unless(dword(0x0693D0) > 256) && unless(dword(0x069D34) > 256)))
)

achievement(
    title = "Tomb Wader Platinum", points = 10,
    description = "Get platinum relic in Tomb Wader.",
    id = 88347, badge = "110165", published = "15/11/2019 01:51:34", modified = "15/5/2020 14:28:34",
    trigger = always_true() &&
              ((byte(0x068EF9) == 24 && (prev(bit0(0x0691C7)) + prev(bit0(0x0691CF))) < 2 && bit0(0x0691C7) == 1 && 
                bit0(0x0691CF) == 1 && unless(byte(0x068EF9) < 2) && unless(dword(0x068F7C) > 1) && 
                unless(dword(0x068F80) > 256) && unless(dword(0x068F84) > 256)) ||
               (byte(0x0690A9) == 24 && (prev(bit0(0x069377)) + prev(bit0(0x06937F))) < 2 && bit0(0x069377) == 1 && 
                bit0(0x06937F) == 1 && unless(byte(0x0690A9) < 2) && unless(dword(0x06912C) > 1) && 
                unless(dword(0x069130) > 256) && unless(dword(0x069134) > 256)) ||
               (byte(0x069349) == 24 && (prev(bit0(0x069617)) + prev(bit0(0x06961F))) < 2 && bit0(0x069617) == 1 && 
                bit0(0x06961F) == 1 && unless(byte(0x069349) < 2) && unless(dword(0x0693CC) > 1) && 
                unless(dword(0x0693D0) > 256) && unless(dword(0x069D34) > 256)))
)

achievement(
    title = "Gone Tomorrow Platinum", points = 10,
    description = "Get platinum relic in Gone Tomorrow.",
    id = 88577, badge = "110169", published = "16/11/2019 18:53:50", modified = "15/5/2020 15:20:34",
    trigger = always_true() &&
              ((byte(0x068EF9) == 35 && (prev(bit3(0x0691C8)) + prev(bit3(0x0691D0))) < 2 && bit3(0x0691C8) == 1 && 
                bit3(0x0691D0) == 1 && unless(byte(0x068EF9) < 2) && unless(dword(0x068F7C) > 1) && 
                unless(dword(0x068F80) > 256) && unless(dword(0x068F84) > 256)) ||
               (byte(0x0690A9) == 35 && (prev(bit3(0x069378)) + prev(bit3(0x069380))) < 2 && bit3(0x069378) == 1 && 
                bit3(0x069380) == 1 && unless(byte(0x0690A9) < 2) && unless(dword(0x06912C) > 1) && 
                unless(dword(0x069130) > 256) && unless(dword(0x069134) > 256)) ||
               (byte(0x069349) == 35 && (prev(bit3(0x069618)) + prev(bit3(0x069620))) < 2 && bit3(0x069618) == 1 && 
                bit3(0x069620) == 1 && unless(byte(0x069349) < 2) && unless(dword(0x0693CC) > 1) && 
                unless(dword(0x0693D0) > 256) && unless(dword(0x069D34) > 256)))
)

achievement(
    title = "Orange Asphalt Platinum ", points = 10,
    description = "Get platinum relic in Orange Asphalt.",
    id = 88579, badge = "110171", published = "16/11/2019 18:53:56", modified = "15/5/2020 18:06:40",
    trigger = always_true() &&
              ((byte(0x068EF9) == 32 && prev(bit0(0x0691C8)) == 0 && prev(bit0(0x0691D0)) == 0 && bit0(0x0691C8) == 1 && 
                bit0(0x0691D0) == 1 && unless(byte(0x068EF9) < 2) && unless(dword(0x068F7C) > 1) && 
                unless(dword(0x068F80) > 256) && unless(dword(0x068F84) > 256)) ||
               (byte(0x0690A9) == 32 && prev(bit0(0x069378)) == 0 && prev(bit0(0x069380)) == 0 && bit0(0x069378) == 1 && 
                bit0(0x069380) == 1 && unless(byte(0x0690A9) < 2) && unless(dword(0x06912C) > 1) && 
                unless(dword(0x069130) > 256) && unless(dword(0x069134) > 256)) ||
               (byte(0x069349) == 32 && prev(bit0(0x069618)) == 0 && prev(bit0(0x069620)) == 0 && bit0(0x069618) == 1 && 
                bit0(0x069620) == 1 && unless(byte(0x069349) < 2) && unless(dword(0x0693CC) > 1) && 
                unless(dword(0x0693D0) > 256) && unless(dword(0x069D34) > 256)))
)

achievement(
    title = "Flaming Passion Platinum ", points = 10,
    description = "Get platinum relic in Flaming Passion.",
    id = 88581, badge = "110173", published = "16/11/2019 18:54:01", modified = "15/5/2020 14:36:05",
    trigger = always_true() &&
              ((byte(0x068EF9) == 34 && (prev(bit2(0x0691C8)) + prev(bit2(0x0691D0))) < 2 && bit2(0x0691C8) == 1 && 
                bit2(0x0691D0) == 1 && unless(byte(0x068EF9) < 2) && unless(dword(0x068F7C) > 1) && 
                unless(dword(0x068F80) > 256) && unless(dword(0x068F84) > 256)) ||
               (byte(0x0690A9) == 34 && (prev(bit2(0x069378)) + prev(bit2(0x069380))) < 2 && bit2(0x069378) == 1 && 
                bit2(0x069380) == 1 && unless(byte(0x0690A9) < 2) && unless(dword(0x06912C) > 1) && 
                unless(dword(0x069130) > 256) && unless(dword(0x069134) > 256)) ||
               (byte(0x069349) == 34 && (prev(bit2(0x069618)) + prev(bit2(0x069620))) < 2 && bit2(0x069618) == 1 && 
                bit2(0x069620) == 1 && unless(byte(0x069349) < 2) && unless(dword(0x0693CC) > 1) && 
                unless(dword(0x0693D0) > 256) && unless(dword(0x069D34) > 256)))
)

achievement(
    title = "Mad Bombers Platinum", points = 10,
    description = "Get platinum relic in Mad Bombers.",
    id = 88583, badge = "110175", published = "16/11/2019 18:54:08", modified = "15/5/2020 15:26:13",
    trigger = always_true() &&
              ((byte(0x068EF9) == 23 && (prev(bit7(0x0691C6)) + prev(bit7(0x0691CE))) < 2 && bit7(0x0691C6) == 1 && 
                bit7(0x0691CE) == 1 && unless(byte(0x068EF9) < 2) && unless(dword(0x068F7C) > 1) && 
                unless(dword(0x068F80) > 256) && unless(dword(0x068F84) > 256)) ||
               (byte(0x0690A9) == 23 && (prev(bit7(0x069376)) + prev(bit7(0x06937E))) < 2 && bit7(0x069376) == 1 && 
                bit7(0x06937E) == 1 && unless(byte(0x0690A9) < 2) && unless(dword(0x06912C) > 1) && 
                unless(dword(0x069130) > 256) && unless(dword(0x069134) > 256)) ||
               (byte(0x069349) == 23 && (prev(bit7(0x069616)) + prev(bit7(0x06961E))) < 2 && bit7(0x069616) == 1 && 
                bit7(0x06961E) == 1 && unless(byte(0x069349) < 2) && unless(dword(0x0693CC) > 1) && 
                unless(dword(0x0693D0) > 256) && unless(dword(0x069D34) > 256)))
)

achievement(
    title = "Bug Lite Platinum", points = 10,
    description = "Get platinum relic in Bug Lite.",
    id = 88585, badge = "110177", published = "16/11/2019 18:54:13", modified = "15/5/2020 16:23:25",
    trigger = always_true() &&
              ((byte(0x068EF9) == 36 && prev(bit4(0x0691C8)) == 0 && prev(bit4(0x0691D0)) == 0 && bit4(0x0691C8) == 1 && 
                bit4(0x0691D0) == 1 && unless(byte(0x068EF9) < 2) && unless(dword(0x068F7C) > 1) && 
                unless(dword(0x068F80) > 256) && unless(dword(0x068F84) > 256)) ||
               (byte(0x0690A9) == 36 && prev(bit4(0x069378)) == 0 && prev(bit4(0x069380)) == 0 && bit4(0x069378) == 1 && 
                bit4(0x069380) == 1 && unless(byte(0x0690A9) < 2) && unless(dword(0x06912C) > 1) && 
                unless(dword(0x069130) > 256) && unless(dword(0x069134) > 256)) ||
               (byte(0x069349) == 36 && prev(bit4(0x069618)) == 0 && prev(bit4(0x069620)) == 0 && bit4(0x069618) == 1 && 
                bit4(0x069620) == 1 && unless(byte(0x069349) < 2) && unless(dword(0x0693CC) > 1) && 
                unless(dword(0x0693D0) > 256) && unless(dword(0x069D34) > 256)))
)

achievement(
    title = "Ski Crazed Platinum", points = 10,
    description = "Get platinum relic in Ski Crazed.",
    id = 88595, badge = "110187", published = "16/11/2019 18:54:41", modified = "15/5/2020 16:19:27",
    trigger = always_true() &&
              ((byte(0x068EF9) == 33 && prev(bit1(0x0691C8)) == 0 && prev(bit1(0x0691D0)) == 0 && bit1(0x0691C8) == 1 && 
                bit1(0x0691D0) == 1 && unless(byte(0x068EF9) < 2) && unless(dword(0x068F7C) > 1) && 
                unless(dword(0x068F80) > 256) && unless(dword(0x068F84) > 256)) ||
               (byte(0x0690A9) == 33 && prev(bit1(0x069378)) == 0 && prev(bit1(0x069380)) == 0 && bit1(0x069378) == 1 && 
                bit1(0x069380) == 1 && unless(byte(0x0690A9) < 2) && unless(dword(0x06912C) > 1) && 
                unless(dword(0x069130) > 256) && unless(dword(0x069134) > 256)) ||
               (byte(0x069349) == 33 && prev(bit1(0x069618)) == 0 && prev(bit1(0x069620)) == 0 && bit1(0x069618) == 1 && 
                bit1(0x069620) == 1 && unless(byte(0x069349) < 2) && unless(dword(0x0693CC) > 1) && 
                unless(dword(0x0693D0) > 256) && unless(dword(0x069D34) > 256)))
)

achievement(
    title = "Area 51 Platinum", points = 10,
    description = "Get platinum relic in Area 51.",
    id = 88597, badge = "110189", published = "16/11/2019 18:54:47", modified = "15/5/2020 16:13:02",
    trigger = always_true() &&
              ((byte(0x068EF9) == 37 && prev(bit5(0x0691C8)) == 0 && prev(bit5(0x0691D0)) == 0 && bit5(0x0691C8) == 1 && 
                bit5(0x0691D0) == 1 && unless(byte(0x068EF9) < 2) && unless(dword(0x068F7C) > 1) && 
                unless(dword(0x068F80) > 256) && unless(dword(0x068F84) > 256)) ||
               (byte(0x0690A9) == 37 && prev(bit5(0x069378)) == 0 && prev(bit5(0x069380)) == 0 && bit5(0x069378) == 1 && 
                bit5(0x069380) == 1 && unless(byte(0x0690A9) < 2) && unless(dword(0x06912C) > 1) && 
                unless(dword(0x069130) > 256) && unless(dword(0x069134) > 256)) ||
               (byte(0x069349) == 37 && prev(bit5(0x069618)) == 0 && prev(bit5(0x069620)) == 0 && bit5(0x069618) == 1 && 
                bit5(0x069620) == 1 && unless(byte(0x069349) < 2) && unless(dword(0x0693CC) > 1) && 
                unless(dword(0x0693D0) > 256) && unless(dword(0x069D34) > 256)))
)

achievement(
    title = "Rings of Power Platinum", points = 10,
    description = "Get platinum relic in Rings of Power.",
    id = 88599, badge = "110191", published = "16/11/2019 18:54:52", modified = "15/5/2020 16:09:51",
    trigger = always_true() &&
              ((byte(0x068EF9) == 31 && prev(bit7(0x0691C7)) == 0 && prev(bit7(0x0691CF)) == 0 && bit7(0x0691C7) == 1 && 
                bit7(0x0691CF) == 1 && unless(byte(0x068EF9) < 2) && unless(dword(0x068F7C) > 1) && 
                unless(dword(0x068F80) > 256) && unless(dword(0x068F84) > 256)) ||
               (byte(0x0690A9) == 31 && prev(bit7(0x069377)) == 0 && prev(bit7(0x06937F)) == 0 && bit7(0x069377) == 1 && 
                bit7(0x06937F) == 1 && unless(byte(0x0690A9) < 2) && unless(dword(0x06912C) > 1) && 
                unless(dword(0x069130) > 256) && unless(dword(0x069134) > 256)) ||
               (byte(0x069349) == 31 && prev(bit7(0x069617)) == 0 && prev(bit7(0x06961F)) == 0 && bit7(0x069617) == 1 && 
                bit7(0x06961F) == 1 && unless(byte(0x069349) < 2) && unless(dword(0x0693CC) > 1) && 
                unless(dword(0x0693D0) > 256) && unless(dword(0x069D34) > 256)))
)

achievement(
    title = "Hot Coco Platinum", points = 5,
    description = "Get platinum relic in Hot Coco.",
    id = 89279, badge = "110195", published = "26/11/2019 00:55:17", modified = "15/5/2020 17:54:45",
    trigger = always_true() &&
              ((byte(0x068EF9) == 39 && prev(bit7(0x0691C8)) == 0 && prev(bit7(0x0691D0)) == 0 && bit7(0x0691C8) == 1 && 
                bit7(0x0691D0) == 1 && unless(byte(0x068EF9) < 2) && unless(dword(0x068F7C) > 1) && 
                unless(dword(0x068F80) > 256) && unless(dword(0x068F84) > 256)) ||
               (byte(0x0690A9) == 39 && prev(bit7(0x069378)) == 0 && prev(bit7(0x069380)) == 0 && bit7(0x069378) == 1 && 
                bit7(0x069380) == 1 && unless(byte(0x0690A9) < 2) && unless(dword(0x06912C) > 1) && 
                unless(dword(0x069130) > 256) && unless(dword(0x069134) > 256)) ||
               (byte(0x069349) == 39 && prev(bit7(0x069618)) == 0 && prev(bit7(0x069620)) == 0 && bit7(0x069618) == 1 && 
                bit7(0x069620) == 1 && unless(byte(0x069349) < 2) && unless(dword(0x0693CC) > 1) && 
                unless(dword(0x0693D0) > 256) && unless(dword(0x069D34) > 256)))
)

achievement(
    title = "Eggipus Rex Platinum", points = 5,
    description = "Get platinum relic in Eggipus Rex.",
    id = 89280, badge = "110197", published = "26/11/2019 00:55:20", modified = "15/5/2020 17:55:40",
    trigger = always_true() &&
              ((byte(0x068EF9) == 38 && prev(bit6(0x0691C8)) == 0 && prev(bit6(0x0691D0)) == 0 && bit6(0x0691C8) == 1 && 
                bit6(0x0691D0) == 1 && unless(byte(0x068EF9) < 2) && unless(dword(0x068F7C) > 1) && 
                unless(dword(0x068F80) > 256) && unless(dword(0x068F84) > 256)) ||
               (byte(0x0690A9) == 38 && prev(bit6(0x069378)) == 0 && prev(bit6(0x069380)) == 0 && bit6(0x069378) == 1 && 
                bit6(0x069380) == 1 && unless(byte(0x0690A9) < 2) && unless(dword(0x06912C) > 1) && 
                unless(dword(0x069130) > 256) && unless(dword(0x069134) > 256)) ||
               (byte(0x069349) == 38 && prev(bit6(0x069618)) == 0 && prev(bit6(0x069620)) == 0 && bit6(0x069618) == 1 && 
                bit6(0x069620) == 1 && unless(byte(0x069349) < 2) && unless(dword(0x0693CC) > 1) && 
                unless(dword(0x0693D0) > 256) && unless(dword(0x069D34) > 256)))
)

achievement(
    title = "World 3 Crystals", points = 5,
    description = "Get all crystals in world 3.",
    id = 88322, badge = "96362", published = "15/11/2019 01:50:26", modified = "15/11/2019 01:50:26",
    trigger = bit0(0x06912E) == 1 && bit4(0x06912F) == 1 && bit2(0x06912F) == 1 && bit7(0x06912E) == 1 && bit5(0x06912F)
               == 1 && never(byte(0x068EF9) != 2) &&
              ((prior(byte(0x068EF9)) == 16 && prev(bit0(0x06912E)) == 0) ||
               (prior(byte(0x068EF9)) == 28 && prev(bit4(0x06912F)) == 0) ||
               (prior(byte(0x068EF9)) == 26 && prev(bit2(0x06912F)) == 0) ||
               (prior(byte(0x068EF9)) == 20 && prev(bit7(0x06912E)) == 0) ||
               (prior(byte(0x068EF9)) == 29 && prev(bit5(0x06912F)) == 0))
)

achievement(
    title = "World 4 Crystals", points = 5,
    description = "Get all crystals in world 4.",
    id = 88335, badge = "96431", published = "15/11/2019 01:51:03", modified = "15/11/2019 01:51:03",
    trigger = bit6(0x06912F) == 1 && bit3(0x06912E) == 1 && bit5(0x06912D) == 1 && bit3(0x06912F) == 1 && bit0(0x06912F)
               == 1 && never(byte(0x068EF9) != 2) &&
              ((prior(byte(0x068EF9)) == 30 && prev(bit6(0x06912F)) == 0) ||
               (prior(byte(0x068EF9)) == 19 && prev(bit3(0x06912E)) == 0) ||
               (prior(byte(0x068EF9)) == 13 && prev(bit5(0x06912D)) == 0) ||
               (prior(byte(0x068EF9)) == 27 && prev(bit3(0x06912F)) == 0) ||
               (prior(byte(0x068EF9)) == 24 && prev(bit0(0x06912F)) == 0))
)

achievement(
    title = "World 1 Crystals", points = 5,
    description = "Get all crystals in world 1.",
    id = 88296, badge = "96152", published = "15/11/2019 01:49:13", modified = "15/11/2019 01:49:13",
    trigger = bit3(0x06912D) == 1 && bit6(0x06912D) == 1 && bit2(0x06912D) == 1 && bit4(0x06912D) == 1 && bit1(0x06912F)
               == 1 && never(byte(0x068EF9) != 2) &&
              ((prior(byte(0x068EF9)) == 11 && prev(bit3(0x06912D)) == 0) ||
               (prior(byte(0x068EF9)) == 14 && prev(bit6(0x06912D)) == 0) ||
               (prior(byte(0x068EF9)) == 10 && prev(bit2(0x06912D)) == 0) ||
               (prior(byte(0x068EF9)) == 12 && prev(bit4(0x06912D)) == 0) ||
               (prior(byte(0x068EF9)) == 25 && prev(bit1(0x06912F)) == 0))
)

achievement(
    title = "World 2 Crystals", points = 5,
    description = "Get all crystals in world 2.",
    id = 88309, badge = "96356", published = "15/11/2019 01:49:52", modified = "15/11/2019 01:49:52",
    trigger = bit7(0x06912D) == 1 && bit6(0x06912E) == 1 && bit5(0x06912E) == 1 && bit2(0x06912E) == 1 && bit1(0x06912E)
               == 1 && never(byte(0x068EF9) != 2) &&
              ((prior(byte(0x068EF9)) == 15 && prev(bit7(0x06912D)) == 0) ||
               (prior(byte(0x068EF9)) == 22 && prev(bit6(0x06912E)) == 0) ||
               (prior(byte(0x068EF9)) == 21 && prev(bit5(0x06912E)) == 0) ||
               (prior(byte(0x068EF9)) == 18 && prev(bit2(0x06912E)) == 0) ||
               (prior(byte(0x068EF9)) == 17 && prev(bit1(0x06912E)) == 0))
)

achievement(
    title = "Lives Collection", points = 10,
    description = "Get 50 lives total.",
    id = 88600, badge = "96547", published = "16/11/2019 18:54:54", modified = "26/11/2019 00:56:02",
    trigger = byte(0x068F59) == 80 && never(byte(0x068EF9) != 2) && never(byte(0x0A57F9) != 0)
)

achievement(
    title = "World 5 Crystals", points = 5,
    description = "Get all crystals in world 5.",
    id = 88348, badge = "96440", published = "15/11/2019 01:51:36", modified = "15/11/2019 01:51:36",
    trigger = bit3(0x069130) == 1 && bit0(0x069130) == 1 && bit2(0x069130) == 1 && bit4(0x06912E) == 1 && bit4(0x069130)
               == 1 && never(byte(0x068EF9) != 2) &&
              ((prior(byte(0x068EF9)) == 35 && prev(bit3(0x069130)) == 0) ||
               (prior(byte(0x068EF9)) == 32 && prev(bit0(0x069130)) == 0) ||
               (prior(byte(0x068EF9)) == 34 && prev(bit2(0x069130)) == 0) ||
               (prior(byte(0x068EF9)) == 23 && prev(bit4(0x06912E)) == 0) ||
               (prior(byte(0x068EF9)) == 36 && prev(bit4(0x069130)) == 0))
)
