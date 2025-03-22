// F-Zero: GP Legend
// #ID = 5343

achievement(
    title = "Not In It For The Money", points = 10,
    description = "Unlock all vehicles related to story mode.",
    id = 32038, badge = "31846", published = "18/1/2016 11:59:35", modified = "18/1/2016 12:01:56",
    trigger = byte(0x00121E) > 0 &&
              ((low4(0x010C18) == 15 && bit2(0x010C19) == 1 && bit2(0x010C1A) == 1 && bit3(0x010C1A) == 1 && 
                high4(0x010C1A) == 15 && bit0(0x010C1B) == 1 && bit3(0x010C1B) == 1) ||
               (low4(0x010CC8) == 15 && bit2(0x010CC9) == 1 && bit2(0x010CCA) == 1 && bit3(0x010CCA) == 1 && 
                high4(0x010CCA) == 15 && bit0(0x010CCB) == 1 && bit3(0x010CCB) == 1))
)

achievement(
    title = "Underhanded Tactician", points = 10,
    description = "Complete Zoda's story.",
    id = 32037, badge = "32732", published = "18/1/2016 11:59:34", modified = "6/10/2019 13:55:01",
    trigger = byte(0x00121E) > 0 &&
              ((byte(0x010C37) == 31 && bit2(0x010C18) == 1) ||
               (bit2(0x010CC8) == 1 && byte(0x010CE7) == 31))
)

achievement(
    title = "Ruler Of The Universe", points = 10,
    description = "Complete Black Shadow's story.",
    id = 32036, badge = "32731", published = "18/1/2016 11:59:32", modified = "18/1/2016 12:01:54",
    trigger = byte(0x00121E) > 0 &&
              ((byte(0x010C36) == 31 && bit2(0x010C1A) == 1) ||
               (byte(0x010CE6) == 31 && bit2(0x010CCA) == 1))
)

achievement(
    title = "Muscle Memory", points = 10,
    description = "Complete Lisa Brilliant's story.",
    id = 32035, badge = "32730", published = "18/1/2016 11:59:30", modified = "18/1/2016 19:48:51",
    trigger = byte(0x00121E) > 0 &&
              ((byte(0x010C35) == 31 && bit3(0x010C18) == 1) ||
               (byte(0x010CE5) == 31 && bit3(0x010CC8) == 1))
)

achievement(
    title = "Racing For The Cure", points = 10,
    description = "Complete Samurai Goroh's story.",
    id = 32034, badge = "32734", published = "18/1/2016 11:59:28", modified = "18/1/2016 23:43:31",
    trigger = byte(0x00121D) == 9 && byte(0x00121E) == 37 && prev(byte(0x00121B)) == 6 && byte(0x00121B) != 10 && 
              byte(0x00121B) != 9 && byte(0x00121B) != 11 && byte(0x00121B) != 6 &&
              ((byte(0x010C34) == 31) ||
               (byte(0x010CE4) == 31))
)

achievement(
    title = "The Heart Of The Cars", points = 10,
    description = "Complete Jack Levin's story.",
    id = 32033, badge = "32733", published = "18/1/2016 11:59:26", modified = "20/1/2016 17:19:31",
    trigger = byte(0x00121E) > 0 &&
              ((byte(0x010C33) == 31 && bit1(0x010C18) == 1) ||
               (byte(0x010CE3) == 31 && bit1(0x010CC8) == 1))
)

achievement(
    title = "Bloodied Falcon", points = 10,
    description = "Complete Jody Summer's story.",
    id = 32032, badge = "32727", published = "18/1/2016 11:59:25", modified = "19/1/2016 04:53:40",
    trigger = byte(0x00121E) > 0 && byte(0x00121E) < 255 &&
              ((byte(0x010C32) == 31 && bit0(0x010C18) == 1) ||
               (byte(0x010CE2) == 31 && bit0(0x010CC8) == 1))
)

achievement(
    title = "Clash Of The Falcons", points = 10,
    description = "Complete Captain Falcon's X mission, then complete his last mission.",
    id = 32031, badge = "32726", published = "18/1/2016 11:59:24", modified = "6/10/2019 13:55:01",
    trigger = prev(byte(0x00121B)) >= 6 && byte(0x00121B) != 9 && byte(0x00121D) == 9 && byte(0x00121E) == 56 && 
              byte(0x01F65A) == 1 && byte(0x00121B) != 11 && byte(0x00121B) != 10 && byte(0x00121B) != 6 &&
              ((bit5(0x010C31) == 1 && bit6(0x010C31) == 1) ||
               (bit5(0x010CE1) == 1 && bit6(0x010CE1) == 1))
)

achievement(
    title = "Unhealthy Obssession", points = 10,
    description = "Complete Rick Wheeler's story and unlock all his missions.",
    id = 32030, badge = "32725", published = "18/1/2016 11:59:22", modified = "19/1/2016 04:52:44",
    trigger = byte(0x00121E) > 0 && byte(0x00121E) < 255 &&
              ((byte(0x010C30) == 63 && bit3(0x010C1B) == 1) ||
               (byte(0x010CE0) == 63 && bit3(0x010CCB) == 1))
)

achievement(
    title = "Greased Lightning", points = 5,
    description = "Use two consecutive jump pads to skip half the track in 'Volute I'.",
    id = 32012, badge = "32770", published = "18/1/2016 11:58:08", modified = "19/1/2021 00:19:48",
    trigger = byte(0x00121E) == 56 && never(byte(0x01C9D2) < 45) && never(byte(0x00121B) != 6) && never(byte(0x01C9D2) >
               127) && never(byte(0x01C9D2) == 50) && once(byte(0x01C9D2) == 47) && never(byte(0x01C9D2) == 60) && 
              byte(0x01C9D2) == 126 && unless(word(0x01C984) > 0) && never(byte(0x01C9D2) == 84) && never(byte(0x01C9D2)
               == 116)
)

achievement(
    title = "Winner By Default", points = 25,
    description = "Wreck 29 other cars across a single cup without wrecking yourself.",
    id = 40898, badge = "32782", published = "6/10/2016 09:24:04", modified = "17/11/2022 00:01:32",
    trigger = measured(repeated(29, byte(0x002CEE) > prev(byte(0x002CEE)))) && unless(byte(0x00121B) != 6) && 
              byte(0x00121D) == 0 &&
              (always_false() || (never(byte(0x001221) < prev(byte(0x001221))) && never(byte(0x00121F) != prev(byte(0x00121F))) && 
                never(byte(0x001220) != prev(byte(0x001220))) && never(byte(0x00122D) < prev(byte(0x00122D))) && 
                never((prev(byte(0x00121A)) != 12 && byte(0x00121A) == 12))))
)

achievement(
    title = "The Champion", points = 5,
    description = "Complete the Championship Time Trial in under 2 minutes.",
    id = 32078, badge = "32792", published = "18/1/2016 12:25:49", modified = "3/10/2019 13:16:01",
    trigger = byte(0x00121D) == 5 && byte(0x00121E) == 35 && prev(byte(0x00121B)) == 6 && byte(0x00121B) != 10 && 
              word(0x01F5A0) < 12000 && byte(0x00121B) != 11 && byte(0x00121B) != 9 && byte(0x00121B) != 6
)

achievement(
    title = "Buzzy Bee", points = 5,
    description = "Take the shortcut using the disconnected track in 'Honeycomb Rink I'.",
    id = 32003, badge = "32769", published = "17/1/2016 09:47:40", modified = "19/1/2021 00:19:50",
    trigger = byte(0x00121E) == 37 && never(byte(0x01C9D2) < 26) && never(byte(0x00121B) != 6) && never(byte(0x01C9D2) >
               79) && never(byte(0x01C9D2) == 29) && once(byte(0x01C9D2) == 53) && once(byte(0x01C9D2) == 26) && 
              never(byte(0x01C9D2) == 60) && byte(0x01C9D2) == 78 && unless(word(0x01C984) > 0)
)

// Ticket 54062: Dont know why this was marked as resolved.  Just attempted again and still did not trigger.  Can I be
//               contacted for more information for troubleshooting?
//               RetroAchievements Hash: b6984ca369145367ab79eb33f2f3480e
//               Emulator: RetroArch (mGBA)
//               Emulator Version: 1.13.0
achievement(
    title = "Seeyouaftertheraceokaybye", points = 5,
    description = "Use first and last jump pads to skip the course in 'Caterpillar'. [I or II]",
    id = 32013, badge = "32771", published = "18/1/2016 11:58:09", modified = "21/11/2022 17:57:21",
    trigger = never(byte(0x00121B) != 6) && once(byte(0x01C9D2) == 9) && unless(word(0x01C984) > 0) && 
              never(byte(0x01C9D2) == 31) && never(byte(0x01C9D2) == 38) && never(byte(0x01C9D2) == 54) && 
              never(byte(0x01C9D2) == 60) && never(byte(0x01C9D2) == 74) && never(byte(0x01C9D2) == 78) && 
              never(byte(0x01C9D2) == 88) && never(byte(0x01C9D2) == 93) && never(byte(0x01C9D2) == 125) &&
              ((byte(0x00121E) == 52 && byte(0x01C9D2) == 130 && once(byte(0x01C9D2) == 109)) ||
               (byte(0x00121E) == 12 && byte(0x01C9D2) == 133 && once(byte(0x01C9D2) == 112)))
)

achievement(
    title = "Slipping In The Air", points = 5,
    description = "Use the first jump pad to take a big shortcut in 'Slip Highway'. [I or II]",
    id = 32014, badge = "32773", published = "18/1/2016 11:58:11", modified = "19/1/2021 00:19:54",
    trigger = never(byte(0x00121B) != 6) && once(byte(0x01C9D2) == 83) && byte(0x01C9D2) == 128 && unless(word(0x01C984)
               > 0) && never(byte(0x01C9D2) < 82) && never(byte(0x01C9D2) > 130) && never(byte(0x01C9D2) == 88) && 
              never(byte(0x01C9D2) == 117) && never(byte(0x01C9D2) == 123) &&
              ((byte(0x00121E) == 42 && once(word(0x01C9D2) == 122)) ||
               (byte(0x00121E) == 5 && once(word(0x01C9D2) == 121)))
)

achievement(
    title = "Jumping The Peak", points = 10,
    description = "Use the first jump pad and fly straight across the track in 'Peak Jump II'.",
    id = 32015, badge = "32775", published = "18/1/2016 11:58:12", modified = "19/1/2021 00:21:28",
    trigger = never(byte(0x00121B) != 6) && once(byte(0x01C9D2) == 47) && byte(0x01C9D2) == 106 && unless(word(0x01C984)
               > 0) && never(byte(0x01C9D2) < 46) && never(byte(0x01C9D2) > 108) && never(byte(0x01C9D2) == 55) && 
              byte(0x00121E) == 16 && never(byte(0x01C9D2) == 98)
)

achievement(
    title = "Port Town Does Not Condone This Action", points = 5,
    description = "Use the first jump pad and take a shortcut in 'Port Town II'.",
    id = 32016, badge = "32777", published = "18/1/2016 11:58:14", modified = "19/1/2021 00:19:58",
    trigger = never(byte(0x00121B) != 6) && once(byte(0x01C9D2) == 10) && byte(0x01C9D2) == 60 && unless(word(0x01C984)
               > 0) && never(byte(0x01C9D2) < 9) && never(byte(0x01C9D2) > 61) && never(byte(0x01C9D2) == 50) && 
              byte(0x00121E) == 45 && never(byte(0x01C9D2) == 17)
)

achievement(
    title = "Not A Dent Nor Scratch", points = 5,
    description = "Win a race without taking any damage. [Grand Prix]",
    id = 32018, badge = "32784", published = "18/1/2016 11:58:23", modified = "19/1/2016 05:15:18",
    trigger = never(word(0x01C9C4) != 64) && once(byte(0x00121B) == 4) && prev(byte(0x00121B)) == 6 && byte(0x00121B) ==
               17 && byte(0x01F65A) == 1 && byte(0x00121D) == 0 && never(byte(0x00122D) < prev(byte(0x00122D))) && 
              never(byte(0x00121E) != prev(byte(0x00121E))) && never(byte(0x001228) != 9) && never(byte(0x00121D) != 0)
)

achievement(
    title = "Never Learned How To Stop", points = 5,
    description = "Win a race after boosting 15 times. [Grand Prix]",
    id = 32019, badge = "32790", published = "18/1/2016 11:58:26", modified = "19/1/2016 05:21:09",
    trigger = repeated(15, byte(0x01C9BC) > prev(byte(0x01C9BC))) && once(byte(0x00121B) == 4) && prev(byte(0x00121B))
               == 6 && byte(0x00121B) == 17 && byte(0x01F65A) == 1 && byte(0x00121D) == 0 && never(byte(0x00122D) <
               prev(byte(0x00122D))) && never(byte(0x00121E) != prev(byte(0x00121E))) && never(byte(0x00121D) != 0) && 
              never(byte(0x001228) != 9)
)

achievement(
    title = "The Experted Outcome", points = 5,
    description = "Come out on top in the expert gold cup.",
    id = 32024, badge = "31862", published = "18/1/2016 11:58:53", modified = "18/1/2016 12:01:41",
    trigger = byte(0x00121E) > 0 &&
              ((bit2(0x010C2B) == 1 && bit4(0x010C18) == 1) ||
               (bit4(0x010CC8) == 1 && bit2(0x010CDB) == 1))
)

achievement(
    title = "Just Your Standard Race", points = 10,
    description = "Complete the bronze, silver and gold cups in standard Grand Prix.",
    id = 32021, badge = "31849", published = "18/1/2016 11:58:49", modified = "26/1/2021 02:14:32",
    trigger = byte(0x00121E) > 0 &&
              ((bit4(0x010C2A) == 1 && bit5(0x010C2A) == 1 && bit6(0x010C2A) == 1) ||
               (bit4(0x010CDA) == 1 && bit5(0x010CDA) == 1 && bit6(0x010CDA) == 1))
)

achievement(
    title = "Expert Execution", points = 5,
    description = "Come out on top in the expert silver cup.",
    id = 32023, badge = "31860", published = "18/1/2016 11:58:51", modified = "18/1/2016 12:01:40",
    trigger = byte(0x00121E) > 0 &&
              ((bit4(0x010C19) == 1 && bit1(0x010C2B) == 1) ||
               (bit4(0x010CC9) == 1 && bit1(0x010CDB) == 1))
)

achievement(
    title = "What They All Dream Of", points = 10,
    description = "Come out on top in the standard platinum cup.",
    id = 32025, badge = "32666", published = "18/1/2016 11:58:54", modified = "18/1/2016 12:01:41",
    trigger = byte(0x00121E) > 0 &&
              ((bit7(0x010C2A) == 1 && bit7(0x010C18) == 1) ||
               (bit7(0x010CC8) == 1 && bit7(0x010CDA) == 1))
)

achievement(
    title = "Endurance King", points = 10,
    description = "Suffer through the expert platinum cup and win.",
    id = 32026, badge = "32667", published = "18/1/2016 11:58:57", modified = "3/10/2019 13:16:01",
    trigger = byte(0x00121E) > 0 &&
              ((bit3(0x010C2B) == 1 && bit1(0x010C1A) == 1) ||
               (bit1(0x010CCA) == 1 && bit3(0x010CDB) == 1))
)

achievement(
    title = "Just Like The Old Days", points = 10,
    description = "Win expert platinum cup with the Blue Falcon, W. Goose, F. Stingray or G. Fox.",
    id = 32027, badge = "32764", published = "18/1/2016 11:59:08", modified = "3/10/2019 13:16:01",
    trigger = word(0x001690) > word(0x001692) && word(0x001690) > word(0x001694) && word(0x001690) > word(0x001696) && 
              word(0x001690) > word(0x001698) && word(0x001690) > word(0x00169A) && word(0x001690) > word(0x00169C) && 
              word(0x001690) > word(0x00169E) && word(0x001690) > word(0x0016A0) && word(0x001690) > word(0x0016A2) && 
              word(0x001690) > word(0x0016A4) && word(0x001690) > word(0x0016A6) && word(0x001690) > word(0x0016A8) && 
              word(0x001690) > word(0x0016AA) && word(0x001690) > word(0x0016AC) && word(0x001690) > word(0x0016AE) && 
              word(0x001690) > word(0x0016B0) && word(0x001690) > word(0x0016B2) && word(0x001690) > word(0x0016B4) && 
              word(0x001690) > word(0x0016B6) && word(0x001690) > word(0x0016B8) && word(0x001690) > word(0x0016BA) && 
              word(0x001690) > word(0x0016BC) && word(0x001690) > word(0x0016BE) && word(0x001690) > word(0x0016C0) && 
              word(0x001690) > word(0x0016C2) && word(0x001690) > word(0x0016C4) && word(0x001690) > word(0x0016C6) && 
              word(0x001690) > word(0x0016C8) && word(0x001690) > word(0x0016CA) && prev(byte(0x001228)) == 9 && 
              byte(0x001228) == 16 && byte(0x00121D) == 6 && prev(byte(0x001221)) == 7 && byte(0x00121F) == 3 && 
              prev(byte(0x001220)) == 2 &&
              ((byte(0x00110A) == 0) ||
               (byte(0x00110A) == 1) ||
               (byte(0x00110A) == 2) ||
               (byte(0x00110A) == 3))
)

achievement(
    title = "F-Zero GP Legend", points = 25,
    description = "Win the expert platinum GP with 800 points.",
    id = 32029, badge = "32781", published = "18/1/2016 11:59:12", modified = "19/1/2021 00:23:24",
    trigger = word(0x001690) == 800 && prev(byte(0x001228)) == 9 && byte(0x001228) == 16 && prev(byte(0x001220)) == 2 && 
              byte(0x00121D) == 6 && prev(byte(0x001221)) == 7 && prev(byte(0x00121F)) == 3
)

achievement(
    title = "Complete Novice", points = 10,
    description = "Complete the bronze, silver and gold cups in novice Grand Prix.",
    id = 32020, badge = "31848", published = "18/1/2016 11:58:46", modified = "19/1/2021 00:21:47",
    trigger = byte(0x00121E) > 0 &&
              ((bit6(0x010C18) == 1 && bit0(0x010C19) == 1 && bit6(0x010C19) == 1 && bit0(0x010C2A) == 1 && 
                bit1(0x010C2A) == 1 && bit2(0x010C2A) == 1) ||
               (bit6(0x010CC8) == 1 && bit0(0x010CC9) == 1 && bit6(0x010CC9) == 1 && bit0(0x010CDA) == 1 && 
                bit1(0x010CDA) == 1 && bit2(0x010CDA) == 1))
)

achievement(
    title = "A Touch of Expertise", points = 5,
    description = "Come out on top in the expert bronze cup.",
    id = 32022, badge = "31852", published = "18/1/2016 11:58:50", modified = "18/1/2016 12:01:39",
    trigger = byte(0x00121E) > 0 &&
              ((bit7(0x010C19) == 1 && bit0(0x010C2B) == 1) ||
               (bit7(0x010CC9) == 1 && bit0(0x010CDB) == 1))
)

achievement(
    title = "Unbeatable", points = 10,
    description = "Win an expert non-platinum GP with 500 points.",
    id = 32028, badge = "32780", published = "18/1/2016 11:59:10", modified = "19/1/2021 00:21:48",
    trigger = word(0x001690) == 500 && prev(byte(0x001228)) == 9 && byte(0x001228) == 16 && prev(byte(0x001220)) == 2 && 
              byte(0x00121D) == 6 && prev(byte(0x001221)) >= 4 && prev(byte(0x001221)) <= 5
)

achievement(
    title = "Zero'd In", points = 5,
    description = "Clear all Zero Tests in Class A.",
    id = 32041, badge = "32678", published = "18/1/2016 11:59:48", modified = "18/1/2016 12:01:59",
    trigger = byte(0x00121E) > 0 &&
              ((byte(0x010CB4) > 80 && bit2(0x010C1B) == 1) ||
               (byte(0x010D64) > 80 && bit2(0x010CCB) == 1))
)

achievement(
    title = "Zero Class", points = 5,
    description = "Clear all Zero Tests in Class C.",
    id = 32039, badge = "32676", published = "18/1/2016 11:59:40", modified = "16/11/2022 23:14:36",
    trigger = byte(0x00121E) > 0 &&
              ((measured(tally(12, 
                    once(bit0(0x010D5C) == 1 || bit1(0x010D5C) == 1), 
                    once(bit2(0x010D5C) == 1 || bit3(0x010D5C) == 1), 
                    once(bit4(0x010D5C) == 1 || bit5(0x010D5C) == 1), 
                    once(bit6(0x010D5C) == 1 || bit7(0x010D5C) == 1), 
                    once(bit0(0x010D5D) == 1 || bit1(0x010D5D) == 1), 
                    once(bit2(0x010D5D) == 1 || bit3(0x010D5D) == 1), 
                    once(bit4(0x010D5D) == 1 || bit5(0x010D5D) == 1), 
                    once(bit6(0x010D5D) == 1 || bit7(0x010D5D) == 1), 
                    once(bit0(0x010D5E) == 1 || bit1(0x010D5E) == 1), 
                    once(bit2(0x010D5E) == 1 || bit3(0x010D5E) == 1), 
                    once(bit4(0x010D5E) == 1 || bit5(0x010D5E) == 1), 
                    once(bit6(0x010D5E) == 1 || bit7(0x010D5E) == 1)
                )) && tally(11, 
                    once(prev(bit0(0x010D5C)) == 1 || prev(bit1(0x010D5C)) == 1), 
                    once(prev(bit2(0x010D5C)) == 1 || prev(bit3(0x010D5C)) == 1), 
                    once(prev(bit4(0x010D5C)) == 1 || prev(bit5(0x010D5C)) == 1), 
                    once(prev(bit6(0x010D5C)) == 1 || prev(bit7(0x010D5C)) == 1), 
                    once(prev(bit0(0x010D5D)) == 1 || prev(bit1(0x010D5D)) == 1), 
                    once(prev(bit2(0x010D5D)) == 1 || prev(bit3(0x010D5D)) == 1), 
                    once(prev(bit4(0x010D5D)) == 1 || prev(bit5(0x010D5D)) == 1), 
                    once(prev(bit6(0x010D5D)) == 1 || prev(bit7(0x010D5D)) == 1), 
                    once(prev(bit0(0x010D5E)) == 1 || prev(bit1(0x010D5E)) == 1), 
                    once(prev(bit2(0x010D5E)) == 1 || prev(bit3(0x010D5E)) == 1), 
                    once(prev(bit4(0x010D5E)) == 1 || prev(bit5(0x010D5E)) == 1), 
                    once(prev(bit6(0x010D5E)) == 1 || prev(bit7(0x010D5E)) == 1)
                ) && never(tally(12, 
                    once(prev(bit0(0x010D5C)) == 1 || prev(bit1(0x010D5C)) == 1), 
                    once(prev(bit2(0x010D5C)) == 1 || prev(bit3(0x010D5C)) == 1), 
                    once(prev(bit4(0x010D5C)) == 1 || prev(bit5(0x010D5C)) == 1), 
                    once(prev(bit6(0x010D5C)) == 1 || prev(bit7(0x010D5C)) == 1), 
                    once(prev(bit0(0x010D5D)) == 1 || prev(bit1(0x010D5D)) == 1), 
                    once(prev(bit2(0x010D5D)) == 1 || prev(bit3(0x010D5D)) == 1), 
                    once(prev(bit4(0x010D5D)) == 1 || prev(bit5(0x010D5D)) == 1), 
                    once(prev(bit6(0x010D5D)) == 1 || prev(bit7(0x010D5D)) == 1), 
                    once(prev(bit0(0x010D5E)) == 1 || prev(bit1(0x010D5E)) == 1), 
                    once(prev(bit2(0x010D5E)) == 1 || prev(bit3(0x010D5E)) == 1), 
                    once(prev(bit4(0x010D5E)) == 1 || prev(bit5(0x010D5E)) == 1), 
                    once(prev(bit6(0x010D5E)) == 1 || prev(bit7(0x010D5E)) == 1)
                ))) ||
               (measured(tally(12, 
                    once(bit0(0x010CAC) == 1 || bit1(0x010CAC) == 1), 
                    once(bit2(0x010CAC) == 1 || bit3(0x010CAC) == 1), 
                    once(bit4(0x010CAC) == 1 || bit5(0x010CAC) == 1), 
                    once(bit6(0x010CAC) == 1 || bit7(0x010CAC) == 1), 
                    once(bit0(0x010CAD) == 1 || bit1(0x010CAD) == 1), 
                    once(bit2(0x010CAD) == 1 || bit3(0x010CAD) == 1), 
                    once(bit4(0x010CAD) == 1 || bit5(0x010CAD) == 1), 
                    once(bit6(0x010CAD) == 1 || bit7(0x010CAD) == 1), 
                    once(bit0(0x010CAE) == 1 || bit1(0x010CAE) == 1), 
                    once(bit2(0x010CAE) == 1 || bit3(0x010CAE) == 1), 
                    once(bit4(0x010CAE) == 1 || bit5(0x010CAE) == 1), 
                    once(bit6(0x010CAE) == 1 || bit7(0x010CAE) == 1)
                )) && tally(11, 
                    once(prev(bit0(0x010CAC)) == 1 || prev(bit1(0x010CAC)) == 1), 
                    once(prev(bit2(0x010CAC)) == 1 || prev(bit3(0x010CAC)) == 1), 
                    once(prev(bit4(0x010CAC)) == 1 || prev(bit5(0x010CAC)) == 1), 
                    once(prev(bit6(0x010CAC)) == 1 || prev(bit7(0x010CAC)) == 1), 
                    once(prev(bit0(0x010CAD)) == 1 || prev(bit1(0x010CAD)) == 1), 
                    once(prev(bit2(0x010CAD)) == 1 || prev(bit3(0x010CAD)) == 1), 
                    once(prev(bit4(0x010CAD)) == 1 || prev(bit5(0x010CAD)) == 1), 
                    once(prev(bit6(0x010CAD)) == 1 || prev(bit7(0x010CAD)) == 1), 
                    once(prev(bit0(0x010CAE)) == 1 || prev(bit1(0x010CAE)) == 1), 
                    once(prev(bit2(0x010CAE)) == 1 || prev(bit3(0x010CAE)) == 1), 
                    once(prev(bit4(0x010CAE)) == 1 || prev(bit5(0x010CAE)) == 1), 
                    once(prev(bit6(0x010CAE)) == 1 || prev(bit7(0x010CAE)) == 1)
                ) && never(tally(12, 
                    once(prev(bit0(0x010CAC)) == 1 || prev(bit1(0x010CAC)) == 1), 
                    once(prev(bit2(0x010CAC)) == 1 || prev(bit3(0x010CAC)) == 1), 
                    once(prev(bit4(0x010CAC)) == 1 || prev(bit5(0x010CAC)) == 1), 
                    once(prev(bit6(0x010CAC)) == 1 || prev(bit7(0x010CAC)) == 1), 
                    once(prev(bit0(0x010CAD)) == 1 || prev(bit1(0x010CAD)) == 1), 
                    once(prev(bit2(0x010CAD)) == 1 || prev(bit3(0x010CAD)) == 1), 
                    once(prev(bit4(0x010CAD)) == 1 || prev(bit5(0x010CAD)) == 1), 
                    once(prev(bit6(0x010CAD)) == 1 || prev(bit7(0x010CAD)) == 1), 
                    once(prev(bit0(0x010CAE)) == 1 || prev(bit1(0x010CAE)) == 1), 
                    once(prev(bit2(0x010CAE)) == 1 || prev(bit3(0x010CAE)) == 1), 
                    once(prev(bit4(0x010CAE)) == 1 || prev(bit5(0x010CAE)) == 1), 
                    once(prev(bit6(0x010CAE)) == 1 || prev(bit7(0x010CAE)) == 1)
                ))))
)

achievement(
    title = "S-Zero Legend", points = 25,
    description = "Get a gold trophy on all Zero Tests in Class S.",
    id = 32050, badge = "32680", published = "18/1/2016 12:00:06", modified = "19/1/2021 00:26:55",
    trigger = byte(0x00121E) > 0 &&
              ((word(0x010CB8) == 65535 && byte(0x010CBA) == 255) ||
               (word(0x010D68) == 65535 && byte(0x010D6A) == 255))
)

achievement(
    title = "Straight A'd", points = 25,
    description = "Get a gold trophy on all Zero Tests in Class A.",
    id = 32049, badge = "32677", published = "18/1/2016 12:00:05", modified = "19/1/2021 00:26:56",
    trigger = byte(0x00121E) > 0 &&
              ((word(0x010CB4) == 65535 && byte(0x010CB6) == 255) ||
               (word(0x010D64) == 65535 && byte(0x010D66) == 255))
)

achievement(
    title = "Be The B", points = 25,
    description = "Get a gold trophy on all Zero Tests in Class B.",
    id = 32048, badge = "32671", published = "18/1/2016 12:00:04", modified = "19/1/2021 00:26:57",
    trigger = byte(0x00121E) > 0 &&
              ((word(0x010CB0) == 65535 && byte(0x010CB2) == 255) ||
               (word(0x010D60) == 65535 && byte(0x010D62) == 255))
)

achievement(
    title = "C-Class Superstar", points = 25,
    description = "Get a gold trophy on all Zero Tests in Class C.",
    id = 32047, badge = "32669", published = "18/1/2016 12:00:01", modified = "19/1/2021 00:26:59",
    trigger = byte(0x00121E) > 0 &&
              ((word(0x010CAC) == 65535 && byte(0x010CAE) == 255) ||
               (word(0x010D5C) == 65535 && byte(0x010D5E) == 255))
)

// Ticket 42840: No save protection, starting a race with a full save file was the enough to unlock half of this set
//               without any effort (ignore Mario Kart unlocks)
//               
//               https://retroachievements.org/historyexamine.php?d=1635433200&u=mariojuniorALT
//               MD5: b6984ca369145367ab79eb33f2f3480e
//               Emulator: RAVBA
//               Emulator Version: 1.0
achievement(
    title = "Just A Little More...", points = 25,
    description = "Get a silver trophy on all Zero Tests in Class A.",
    id = 32045, badge = "32788", published = "18/1/2016 11:59:57", modified = "19/1/2021 00:27:06",
    trigger = byte(0x00121E) > 0 &&
              ((bit1(0x010CB4) == 1 && bit3(0x010CB4) == 1 && bit5(0x010CB4) == 1 && bit7(0x010CB4) == 1 && 
                bit1(0x010CB5) == 1 && bit3(0x010CB5) == 1 && bit5(0x010CB5) == 1 && bit7(0x010CB5) == 1 && 
                bit1(0x010CB6) == 1 && bit3(0x010CB6) == 1 && bit5(0x010CB6) == 1 && bit7(0x010CB6) == 1) ||
               (bit1(0x010D64) == 1 && bit3(0x010D64) == 1 && bit5(0x010D64) == 1 && bit7(0x010D64) == 1 && 
                bit1(0x010D65) == 1 && bit3(0x010D65) == 1 && bit5(0x010D65) == 1 && bit7(0x010D65) == 1 && 
                bit1(0x010D66) == 1 && bit3(0x010D66) == 1 && bit5(0x010D66) == 1 && bit7(0x010D66) == 1))
)

achievement(
    title = "Nothing But A Zero", points = 5,
    description = "Clear all Zero Tests in Class B.",
    id = 32040, badge = "32670", published = "18/1/2016 11:59:46", modified = "18/1/2016 12:01:58",
    trigger = byte(0x00121E) > 0 &&
              ((byte(0x010CB0) > 80 && bit1(0x010C1B) == 1) ||
               (byte(0x010D60) > 80 && bit1(0x010CCB) == 1))
)

achievement(
    title = "Zero Tolerance", points = 5,
    description = "Clear all Zero Tests in Class S.",
    id = 32042, badge = "32679", published = "18/1/2016 11:59:49", modified = "18/1/2016 12:01:59",
    trigger = byte(0x00121E) > 0 &&
              ((byte(0x010CB8) > 80 && bit1(0x010C19) == 1) ||
               (byte(0x010D68) > 80 && bit1(0x010CC9) == 1))
)

achievement(
    title = "Flawed Perfectionist", points = 25,
    description = "Get a silver trophy on all Zero Tests in Class S.",
    id = 32046, badge = "32789", published = "18/1/2016 11:59:58", modified = "19/1/2021 00:28:14",
    trigger = byte(0x00121E) > 0 &&
              ((bit1(0x010CB8) == 1 && bit3(0x010CB8) == 1 && bit5(0x010CB8) == 1 && bit7(0x010CB8) == 1 && 
                bit1(0x010CB9) == 1 && bit3(0x010CB9) == 1 && bit5(0x010CB9) == 1 && bit7(0x010CB9) == 1 && 
                bit1(0x010CBA) == 1 && bit3(0x010CBA) == 1 && bit5(0x010CBA) == 1 && bit7(0x010CBA) == 1) ||
               (bit1(0x010D68) == 1 && bit3(0x010D68) == 1 && bit5(0x010D68) == 1 && bit7(0x010D68) == 1 && 
                bit1(0x010D69) == 1 && bit3(0x010D69) == 1 && bit5(0x010D69) == 1 && bit7(0x010D69) == 1 && 
                bit1(0x010D6A) == 1 && bit3(0x010D6A) == 1 && bit5(0x010D6A) == 1 && bit7(0x010D6A) == 1))
)

achievement(
    title = "There's Silver On That There Track", points = 10,
    description = "Get a silver trophy on all Zero Tests in Class B.",
    id = 32044, badge = "32787", published = "18/1/2016 11:59:55", modified = "6/10/2019 13:55:02",
    trigger = byte(0x00121E) > 0 &&
              ((bit1(0x010CB0) == 1 && bit3(0x010CB0) == 1 && bit5(0x010CB0) == 1 && bit7(0x010CB0) == 1 && 
                bit1(0x010CB1) == 1 && bit3(0x010CB1) == 1 && bit5(0x010CB1) == 1 && bit7(0x010CB1) == 1 && 
                bit1(0x010CB2) == 1 && bit3(0x010CB2) == 1 && bit5(0x010CB2) == 1 && bit7(0x010CB2) == 1) ||
               (bit1(0x010D60) == 1 && bit3(0x010D60) == 1 && bit5(0x010D60) == 1 && bit7(0x010D60) == 1 && 
                bit1(0x010D61) == 1 && bit3(0x010D61) == 1 && bit5(0x010D61) == 1 && bit7(0x010D61) == 1 && 
                bit1(0x010D62) == 1 && bit3(0x010D62) == 1 && bit5(0x010D62) == 1 && bit7(0x010D62) == 1))
)

achievement(
    title = "The Middleground", points = 10,
    description = "Get a silver trophy on all Zero Tests in Class C.",
    id = 32043, badge = "32786", published = "18/1/2016 11:59:54", modified = "6/10/2019 13:55:02",
    trigger = byte(0x00121E) > 0 &&
              ((bit1(0x010CAC) == 1 && bit3(0x010CAC) == 1 && bit5(0x010CAC) == 1 && bit7(0x010CAC) == 1 && 
                bit1(0x010CAD) == 1 && bit3(0x010CAD) == 1 && bit5(0x010CAD) == 1 && bit7(0x010CAD) == 1 && 
                bit1(0x010CAE) == 1 && bit3(0x010CAE) == 1 && bit5(0x010CAE) == 1 && bit7(0x010CAE) == 1) ||
               (bit1(0x010D5C) == 1 && bit3(0x010D5C) == 1 && bit5(0x010D5C) == 1 && bit7(0x010D5C) == 1 && 
                bit1(0x010D5D) == 1 && bit3(0x010D5D) == 1 && bit5(0x010D5D) == 1 && bit7(0x010D5D) == 1 && 
                bit1(0x010D5E) == 1 && bit3(0x010D5E) == 1 && bit5(0x010D5E) == 1 && bit7(0x010D5E) == 1))
)

achievement(
    title = "Winner By Default []", points = 10,
    description = "Wreck 29 other cars across a single cup without wrecking yourself.",
    id = 32017, badge = "32782", published = "18/1/2016 11:58:21", modified = "6/10/2016 09:23:49",
    trigger = repeated(29, byte(0x002CEE) > prev(byte(0x002CEE))) && never(byte(0x001221) < prev(byte(0x001221))) && 
              unless(byte(0x00121B) != 6) && never(byte(0x00121F) != prev(byte(0x00121F))) && never(byte(0x001220) !=
               prev(byte(0x001220))) && never(byte(0x00122D) < prev(byte(0x00122D))) && byte(0x00121D) == 0
)

achievement(
    title = "Biggest F-Zero Fan", points = 2,
    description = "Win any non-novice Grand Prix using the Mighty Typhoon.",
    id = 32064, badge = "32750", published = "18/1/2016 12:00:31", modified = "22/1/2016 08:02:04",
    trigger = prev(byte(0x001228)) == 9 && byte(0x001228) == 16 && prev(byte(0x001220)) != 0 && byte(0x00121D) == 6 && 
              byte(0x00110A) == 25 && prev(byte(0x001221)) >= 4 && prev(byte(0x002EB2)) == 0
)

achievement(
    title = "Dark Side Of The Moon", points = 2,
    description = "Win any non-novice Grand Prix using the Moon Shadow.",
    id = 32076, badge = "32763", published = "18/1/2016 12:00:50", modified = "22/1/2016 08:02:18",
    trigger = prev(byte(0x001228)) == 9 && byte(0x001228) == 16 && prev(byte(0x001220)) != 0 && byte(0x00121D) == 6 && 
              byte(0x00110A) == 33 && prev(byte(0x001221)) >= 4 && prev(byte(0x002EB2)) == 0
)

achievement(
    title = "Lady Liberty", points = 2,
    description = "Win any non-novice Grand Prix using the Elegance Liberty.",
    id = 32075, badge = "32762", published = "18/1/2016 12:00:48", modified = "22/1/2016 08:02:17",
    trigger = prev(byte(0x001228)) == 9 && byte(0x001228) == 16 && prev(byte(0x001220)) != 0 && byte(0x00121D) == 6 && 
              byte(0x00110A) == 32 && prev(byte(0x001221)) >= 4 && prev(byte(0x002EB2)) == 0
)

achievement(
    title = "Undying Lust For Speed", points = 2,
    description = "Win any non-novice Grand Prix using the Sonic Phantom.",
    id = 32074, badge = "32761", published = "18/1/2016 12:00:46", modified = "22/1/2016 08:02:16",
    trigger = prev(byte(0x001228)) == 9 && byte(0x001228) == 16 && prev(byte(0x001220)) != 0 && byte(0x00121D) == 6 && 
              byte(0x00110A) == 29 && prev(byte(0x001221)) >= 4 && prev(byte(0x002EB2)) == 0
)

achievement(
    title = "Years Of Experience", points = 2,
    description = "Win any non-novice Grand Prix using the Night Thunder.",
    id = 32073, badge = "32760", published = "18/1/2016 12:00:45", modified = "22/1/2016 08:02:14",
    trigger = prev(byte(0x001228)) == 9 && byte(0x001228) == 16 && prev(byte(0x001220)) != 0 && byte(0x00121D) == 6 && 
              byte(0x00110A) == 12 && prev(byte(0x001221)) >= 4 && prev(byte(0x002EB2)) == 0
)

achievement(
    title = "Bio Rex Fanboy", points = 2,
    description = "Win any non-novice Grand Prix using the Hyper Speeder.",
    id = 32072, badge = "32759", published = "18/1/2016 12:00:44", modified = "22/1/2016 08:02:13",
    trigger = prev(byte(0x001228)) == 9 && byte(0x001228) == 16 && prev(byte(0x001220)) != 0 && byte(0x00121D) == 6 && 
              byte(0x00110A) == 26 && prev(byte(0x001221)) >= 4 && prev(byte(0x002EB2)) == 0
)

achievement(
    title = "Villains Beware", points = 2,
    description = "Win any non-novice Grand Prix using the King Meteor.",
    id = 32071, badge = "32758", published = "18/1/2016 12:00:42", modified = "22/1/2016 08:02:12",
    trigger = prev(byte(0x001228)) == 9 && byte(0x001228) == 16 && prev(byte(0x001220)) != 0 && byte(0x00121D) == 6 && 
              byte(0x00110A) == 21 && prev(byte(0x001221)) >= 4 && prev(byte(0x002EB2)) == 0
)

achievement(
    title = "Never Give Up, Trust Your Instincts", points = 2,
    description = "Win any non-novice Grand Prix using the Little Wyvern.",
    id = 32070, badge = "32757", published = "18/1/2016 12:00:41", modified = "22/1/2016 08:02:12",
    trigger = prev(byte(0x001228)) == 9 && byte(0x001228) == 16 && prev(byte(0x001220)) != 0 && byte(0x00121D) == 6 && 
              byte(0x00110A) == 18 && prev(byte(0x001221)) >= 4 && prev(byte(0x002EB2)) == 0
)

achievement(
    title = "Meteor Shower", points = 2,
    description = "Win any non-novice Grand Prix using the Queen Meteor.",
    id = 32069, badge = "32756", published = "18/1/2016 12:00:39", modified = "22/1/2016 08:02:11",
    trigger = prev(byte(0x001228)) == 9 && byte(0x001228) == 16 && prev(byte(0x001220)) != 0 && byte(0x00121D) == 6 && 
              byte(0x00110A) == 15 && prev(byte(0x001221)) >= 4 && prev(byte(0x002EB2)) == 0
)

achievement(
    title = "Two Drivers Are About The Same As One", points = 2,
    description = "Win any non-novice Grand Prix using the Twinnoritta.",
    id = 32068, badge = "32754", published = "18/1/2016 12:00:37", modified = "22/1/2016 08:02:10",
    trigger = prev(byte(0x001228)) == 9 && byte(0x001228) == 16 && prev(byte(0x001220)) != 0 && byte(0x00121D) == 6 && 
              byte(0x00110A) == 13 && prev(byte(0x001221)) >= 4 && prev(byte(0x002EB2)) == 0
)

achievement(
    title = "Some Kind Of Robot Plumber", points = 2,
    description = "Win any non-novice Grand Prix using the Great Star.",
    id = 32067, badge = "32753", published = "18/1/2016 12:00:36", modified = "22/1/2016 08:02:07",
    trigger = prev(byte(0x001228)) == 9 && byte(0x001228) == 16 && prev(byte(0x001220)) != 0 && byte(0x00121D) == 6 && 
              byte(0x00110A) == 9 && prev(byte(0x001221)) >= 4 && prev(byte(0x002EB2)) == 0
)

achievement(
    title = "There Can Only Be One", points = 2,
    description = "Win any non-novice Grand Prix using the Blood Hawk.",
    id = 32066, badge = "32752", published = "18/1/2016 12:00:34", modified = "22/1/2016 08:02:06",
    trigger = prev(byte(0x001228)) == 9 && byte(0x001228) == 16 && prev(byte(0x001220)) != 0 && byte(0x00121D) == 6 && 
              byte(0x00110A) == 16 && prev(byte(0x001221)) >= 4 && prev(byte(0x002EB2)) == 0
)

achievement(
    title = "Burning Grudge", points = 2,
    description = "Win any non-novice Grand Prix using the Green Panther.",
    id = 32065, badge = "32751", published = "18/1/2016 12:00:33", modified = "22/1/2016 08:02:05",
    trigger = prev(byte(0x001228)) == 9 && byte(0x001228) == 16 && prev(byte(0x001220)) != 0 && byte(0x00121D) == 6 && 
              byte(0x00110A) == 27 && prev(byte(0x001221)) >= 4 && prev(byte(0x002EB2)) == 0
)

achievement(
    title = "Can't Let You Do That", points = 2,
    description = "Win any non-novice Grand Prix using the Space Angler.",
    id = 32063, badge = "32749", published = "18/1/2016 12:00:29", modified = "22/1/2016 08:02:03",
    trigger = prev(byte(0x001228)) == 9 && byte(0x001228) == 16 && prev(byte(0x001220)) != 0 && byte(0x00121D) == 6 && 
              byte(0x00110A) == 24 && prev(byte(0x001221)) >= 4 && prev(byte(0x002EB2)) == 0
)

achievement(
    title = "The Eternal Delivery", points = 2,
    description = "Win any non-novice Grand Prix using the Mighty Hurricane.",
    id = 32062, badge = "32748", published = "18/1/2016 12:00:28", modified = "22/1/2016 08:02:02",
    trigger = prev(byte(0x001228)) == 9 && byte(0x001228) == 16 && prev(byte(0x001220)) != 0 && byte(0x00121D) == 6 && 
              byte(0x00110A) == 23 && prev(byte(0x001221)) >= 4 && prev(byte(0x002EB2)) == 0
)

achievement(
    title = "The Strength Of 10 Piranhas", points = 2,
    description = "Win any non-novice Grand Prix using the Super Piranha.",
    id = 32061, badge = "32747", published = "18/1/2016 12:00:26", modified = "22/1/2016 08:02:01",
    trigger = prev(byte(0x001228)) == 9 && byte(0x001228) == 16 && prev(byte(0x001220)) != 0 && byte(0x00121D) == 6 && 
              byte(0x00110A) == 22 && prev(byte(0x001221)) >= 4 && prev(byte(0x002EB2)) == 0
)

achievement(
    title = "Bloody Chain Gang", points = 2,
    description = "Win any non-novice Grand Prix using the Wild Boar.",
    id = 32060, badge = "32746", published = "18/1/2016 12:00:25", modified = "22/1/2016 08:01:58",
    trigger = prev(byte(0x001228)) == 9 && byte(0x001228) == 16 && prev(byte(0x001220)) != 0 && byte(0x00121D) == 6 && 
              byte(0x00110A) == 20 && prev(byte(0x001221)) >= 4 && prev(byte(0x002EB2)) == 0
)

achievement(
    title = "Summertime Lovin'", points = 2,
    description = "Win any non-novice Grand Prix using the Wonder Wasp.",
    id = 32059, badge = "32745", published = "18/1/2016 12:00:24", modified = "22/1/2016 08:01:57",
    trigger = prev(byte(0x001228)) == 9 && byte(0x001228) == 16 && prev(byte(0x001220)) != 0 && byte(0x00121D) == 6 && 
              byte(0x00110A) == 14 && prev(byte(0x001221)) >= 4 && prev(byte(0x002EB2)) == 0
)

achievement(
    title = "In Prime-ate Condition", points = 2,
    description = "Win any non-novice Grand Prix using the Mad Wolf.",
    id = 32058, badge = "32744", published = "18/1/2016 12:00:22", modified = "22/1/2016 08:01:56",
    trigger = prev(byte(0x001228)) == 9 && byte(0x001228) == 16 && prev(byte(0x001220)) != 0 && byte(0x00121D) == 6 && 
              byte(0x00110A) == 11 && prev(byte(0x001221)) >= 4 && prev(byte(0x002EB2)) == 0
)

achievement(
    title = "Big Grip And Little Harms", points = 2,
    description = "Win any non-novice Grand Prix using the Big Fang.",
    id = 32057, badge = "32743", published = "18/1/2016 12:00:21", modified = "22/1/2016 08:01:55",
    trigger = prev(byte(0x001228)) == 9 && byte(0x001228) == 16 && prev(byte(0x001220)) != 0 && byte(0x00121D) == 6 && 
              byte(0x00110A) == 10 && prev(byte(0x001221)) >= 4 && prev(byte(0x002EB2)) == 0
)

achievement(
    title = "Crash Man? Clash Man?", points = 2,
    description = "Win any non-novice Grand Prix using the Crazy Bear.",
    id = 32056, badge = "32741", published = "18/1/2016 12:00:19", modified = "22/1/2016 08:01:54",
    trigger = prev(byte(0x001228)) == 9 && byte(0x001228) == 16 && prev(byte(0x001220)) != 0 && byte(0x00121D) == 6 && 
              byte(0x00110A) == 8 && prev(byte(0x001221)) >= 4 && prev(byte(0x002EB2)) == 0
)

achievement(
    title = "Octorokian Victory", points = 2,
    description = "Win any non-novice Grand Prix using the Deepclaw.",
    id = 32055, badge = "32740", published = "18/1/2016 12:00:18", modified = "22/1/2016 08:01:53",
    trigger = prev(byte(0x001228)) == 9 && byte(0x001228) == 16 && prev(byte(0x001220)) != 0 && byte(0x00121D) == 6 && 
              byte(0x00110A) == 7 && prev(byte(0x001221)) >= 4 && prev(byte(0x002EB2)) == 0
)

achievement(
    title = "Baba And His Forty Speeds", points = 2,
    description = "Win any non-novice Grand Prix using the Iron Tiger.",
    id = 32054, badge = "32739", published = "18/1/2016 12:00:16", modified = "22/1/2016 08:01:51",
    trigger = prev(byte(0x001228)) == 9 && byte(0x001228) == 16 && prev(byte(0x001220)) != 0 && byte(0x00121D) == 6 && 
              byte(0x00110A) == 6 && prev(byte(0x001221)) >= 4 && prev(byte(0x002EB2)) == 0
)

achievement(
    title = "Majestic Galloping", points = 2,
    description = "Win any non-novice Grand Prix using the Red Gazelle.",
    id = 32053, badge = "32738", published = "18/1/2016 12:00:15", modified = "22/1/2016 08:01:49",
    trigger = prev(byte(0x001228)) == 9 && byte(0x001228) == 16 && prev(byte(0x001220)) != 0 && byte(0x00121D) == 6 && 
              byte(0x00110A) == 5 && prev(byte(0x001221)) >= 4 && prev(byte(0x002EB2)) == 0
)

achievement(
    title = "Your Goose Is Cooked", points = 2,
    description = "Win any non-novice Grand Prix using the Wild Goose.",
    id = 32052, badge = "32737", published = "18/1/2016 12:00:14", modified = "22/1/2016 08:01:48",
    trigger = prev(byte(0x001228)) == 9 && byte(0x001228) == 16 && prev(byte(0x001220)) != 0 && byte(0x00121D) == 6 && 
              byte(0x00110A) == 2 && prev(byte(0x001221)) >= 4 && prev(byte(0x002EB2)) == 0
)

achievement(
    title = "That Smug Fox", points = 2,
    description = "Win any non-novice Grand Prix using the Golden Fox.",
    id = 32051, badge = "32735", published = "18/1/2016 12:00:12", modified = "22/1/2016 08:01:46",
    trigger = prev(byte(0x001228)) == 9 && byte(0x001228) == 16 && prev(byte(0x001220)) != 0 && byte(0x00121D) == 6 && 
              byte(0x00110A) == 1 && prev(byte(0x001221)) >= 4 && prev(byte(0x002EB2)) == 0
)

leaderboard(
    id = 1179, title = "Bronze Grand Prix",
    description = "Get the best total time across all tracks in the non-expert bronze GP.",
    start  = prev(word(0x00C090)) == 0 && word(0x00C090) != 0 && byte(0x00121F) == 0 && byte(0x001220) < 2 && 
             byte(0x00121D) == 0 && byte(0x00121E) == 49 && byte(0x00121B) != 1,
    cancel = byte(0x00121D) != 0,
    submit = word(0x00C090) != 0,
    value = word(0x00C080) + word(0x00C084) + word(0x00C088) + word(0x00C08C) + word(0x00C090),
    format = "MILLISECS", lower_is_better = true
)

leaderboard(
    id = 1180, title = "Silver Grand Prix",
    description = "Get the best total time across all tracks in the non-expert silver GP.",
    start  = prev(word(0x00C090)) == 0 && word(0x00C090) != 0 && byte(0x00121F) == 1 && byte(0x001220) < 2 && 
             byte(0x00121D) == 0 && byte(0x00121B) != 1,
    cancel = byte(0x00121D) != 0,
    submit = word(0x00C090) != 0,
    value = word(0x00C080) + word(0x00C084) + word(0x00C088) + word(0x00C08C) + word(0x00C090),
    format = "MILLISECS", lower_is_better = true
)

leaderboard(
    id = 1181, title = "Gold Grand Prix",
    description = "Get the best total time across all tracks in the non-expert gold GP.",
    start  = prev(word(0x00C090)) == 0 && word(0x00C090) != 0 && byte(0x00121F) == 2 && byte(0x001220) < 2 && 
             byte(0x00121D) == 0 && byte(0x00121B) != 1,
    cancel = byte(0x00121D) != 0,
    submit = word(0x00C090) != 0,
    value = word(0x00C080) + word(0x00C084) + word(0x00C088) + word(0x00C08C) + word(0x00C090),
    format = "MILLISECS", lower_is_better = true
)

leaderboard(
    id = 1182, title = "Expert Bronze Grand Prix",
    description = "Get the best total time across all tracks in Expert Bronze GP.",
    start  = prev(word(0x00C090)) == 0 && word(0x00C090) != 0 && byte(0x00121F) == 0 && byte(0x001220) == 2 && 
             byte(0x00121D) == 0 && byte(0x00121B) != 1,
    cancel = byte(0x00121D) != 0,
    submit = word(0x00C090) != 0,
    value = word(0x00C080) + word(0x00C084) + word(0x00C088) + word(0x00C08C) + word(0x00C090),
    format = "MILLISECS", lower_is_better = true
)

leaderboard(
    id = 1183, title = "Expert Silver Grand Prix",
    description = "Get the best total time across all tracks in Expert Silver GP.",
    start  = prev(word(0x00C090)) == 0 && word(0x00C090) != 0 && byte(0x00121F) == 1 && byte(0x001220) == 2 && 
             byte(0x00121D) == 0 && byte(0x00121B) != 1,
    cancel = byte(0x00121D) != 0,
    submit = word(0x00C090) != 0,
    value = word(0x00C080) + word(0x00C084) + word(0x00C088) + word(0x00C08C) + word(0x00C090),
    format = "MILLISECS", lower_is_better = true
)

leaderboard(
    id = 1184, title = "Expert Gold Grand Prix",
    description = "Get the best total time across all tracks in Expert Gold GP.",
    start  = prev(word(0x00C090)) == 0 && word(0x00C090) != 0 && byte(0x00121F) == 2 && byte(0x001220) == 2 && 
             byte(0x00121D) == 0 && byte(0x00121B) != 1,
    cancel = byte(0x00121D) != 0,
    submit = word(0x00C090) != 0,
    value = word(0x00C080) + word(0x00C084) + word(0x00C088) + word(0x00C08C) + word(0x00C090),
    format = "MILLISECS", lower_is_better = true
)

leaderboard(
    id = 1185, title = "Platinum Grand Prix",
    description = "Get the best total time across all tracks in the platinum GP.",
    start  = prev(word(0x00C09C)) == 0 && word(0x00C09C) != 0 && byte(0x00121F) == 3 && byte(0x001221) == 7 && 
             byte(0x00121D) == 0 && byte(0x00121B) != 1,
    cancel = byte(0x00121D) != 0,
    submit = word(0x00C09C) != 0,
    value = word(0x00C080) + word(0x00C084) + word(0x00C088) + word(0x00C08C) + word(0x00C090) + word(0x00C094) + word(0x00C098) + word(0x00C09C),
    format = "MILLISECS", lower_is_better = true
)

leaderboard(
    id = 1186, title = "Mute City - Tradition Park",
    description = "Get the best time in Mute City - Tradition Park in Time Attack.",
    start  = byte(0x00121E) == 40 && prev(word(0x01C998)) == 0 && word(0x01C998) != 0 && byte(0x00121D) == 5,
    cancel = byte(0x00121D) != 5,
    submit = word(0x01C998) != 0,
    value = word(0x01C998),
    format = "MILLISECS", lower_is_better = true
)

leaderboard(
    id = 1187, title = "Red Canyon - Junction",
    description = "Get the best time in Red Canyon - Junction in Time Attack.",
    start  = byte(0x00121E) == 46 && prev(word(0x01C998)) == 0 && word(0x01C998) != 0 && byte(0x00121D) == 5,
    cancel = byte(0x00121D) != 5,
    submit = word(0x01C998) != 0,
    value = word(0x01C998),
    format = "MILLISECS", lower_is_better = true
)

leaderboard(
    id = 1188, title = "Mist Flow - Clip Oval",
    description = "Get the best time in Mist Flow - Clip Oval in Time Attack.",
    start  = byte(0x00121E) == 57 && prev(word(0x01C998)) == 0 && word(0x01C998) != 0 && byte(0x00121D) == 5,
    cancel = byte(0x00121D) != 5,
    submit = word(0x01C998) != 0,
    value = word(0x01C998),
    format = "MILLISECS", lower_is_better = true
)

leaderboard(
    id = 1189, title = "Lightning - Volute",
    description = "Get the best time in Lightning - Volute in Time Attack",
    start  = byte(0x00121E) == 56 && prev(word(0x01C998)) == 0 && word(0x01C998) != 0 && byte(0x00121D) == 5,
    cancel = byte(0x00121D) != 5,
    submit = word(0x01C998) != 0,
    value = word(0x01C998),
    format = "MILLISECS", lower_is_better = true
)

leaderboard(
    id = 1190, title = "Fire Field - Blast Track",
    description = "Get the best time in Fire Field - Blast Track in Time Attack.",
    start  = byte(0x00121E) == 49 && prev(word(0x01C998)) == 0 && word(0x01C998) != 0 && byte(0x00121D) == 5,
    cancel = byte(0x00121D) != 5,
    submit = word(0x01C998) != 0,
    value = word(0x01C998),
    format = "MILLISECS", lower_is_better = true
)

leaderboard(
    id = 1191, title = "Mute City - Tradition Park II",
    description = "Get the best time in Mute City - Tradition Park II in Time Attack.",
    start  = byte(0x00121E) == 6 && prev(word(0x01C998)) == 0 && word(0x01C998) != 0 && byte(0x00121D) == 5,
    cancel = byte(0x00121D) != 5,
    submit = word(0x01C998) != 0,
    value = word(0x01C998),
    format = "MILLISECS", lower_is_better = true
)

leaderboard(
    id = 1192, title = "Red Canyon - Junction II",
    description = "Get the best time in Red Canyon - Junction II in Time Attack.",
    start  = byte(0x00121E) == 11 && prev(word(0x01C998)) == 0 && word(0x01C998) != 0 && byte(0x00121D) == 5,
    cancel = byte(0x00121D) != 5,
    submit = word(0x01C998) != 0,
    value = word(0x01C998),
    format = "MILLISECS", lower_is_better = true
)

leaderboard(
    id = 1193, title = "Mist Flow - Clip Oval II",
    description = "Get the best time on Mist Flow - Clip Oval II",
    start  = byte(0x00121E) == 3 && prev(word(0x01C998)) == 0 && word(0x01C998) != 0 && byte(0x00121D) == 5,
    cancel = byte(0x00121D) != 5,
    submit = word(0x01C998) != 0,
    value = word(0x01C998),
    format = "MILLISECS", lower_is_better = true
)

leaderboard(
    id = 1194, title = "Lightning - Volute II",
    description = "Get the best time on Lightning - Volute II in Time Attack.",
    start  = byte(0x00121E) == 4 && prev(word(0x01C998)) == 0 && word(0x01C998) != 0 && byte(0x00121D) == 5,
    cancel = byte(0x00121D) != 5,
    submit = word(0x01C998) != 0,
    value = word(0x01C998),
    format = "MILLISECS", lower_is_better = true
)

leaderboard(
    id = 1195, title = "Fire Field - Blast Track II",
    description = "Get the best time in Fire Field - Blast Track II in Time Attack.",
    start  = byte(0x00121E) == 14 && prev(word(0x01C998)) == 0 && word(0x01C998) != 0 && byte(0x00121D) == 5,
    cancel = byte(0x00121D) != 5,
    submit = word(0x01C998) != 0,
    value = word(0x01C998),
    format = "MILLISECS", lower_is_better = true
)

leaderboard(
    id = 1196, title = "Silence - Box Rink",
    description = "Get the best time in Silence - Box Rink in Time Attack.",
    start  = byte(0x00121E) == 36 && prev(word(0x01C998)) == 0 && word(0x01C998) != 0 && byte(0x00121D) == 5,
    cancel = byte(0x00121D) != 5,
    submit = word(0x01C998) != 0,
    value = word(0x01C998),
    format = "MILLISECS", lower_is_better = true
)

leaderboard(
    id = 1197, title = "Sand Ocean - Caterpillar",
    description = "Get the best time in Sand Ocean - Caterpillar in Time Attack.",
    start  = byte(0x00121E) == 52 && prev(word(0x01C998)) == 0 && word(0x01C998) != 0 && byte(0x00121D) == 5,
    cancel = byte(0x00121D) != 5,
    submit = word(0x01C998) != 0,
    value = word(0x01C998),
    format = "MILLISECS", lower_is_better = true
)

leaderboard(
    id = 1198, title = "Mute City - Expansion Park",
    description = "Get the best time in Mute City - Expansion Park in Time Attack.",
    start  = byte(0x00121E) == 41 && prev(word(0x01C998)) == 0 && word(0x01C998) != 0 && byte(0x00121D) == 5,
    cancel = byte(0x00121D) != 5,
    submit = word(0x01C998) != 0,
    value = word(0x01C998),
    format = "MILLISECS", lower_is_better = true
)

leaderboard(
    id = 1199, title = "Big Blue - Slip Highway",
    description = "Get the best time in Big Blue - Slip Highway in Time Attack.",
    start  = byte(0x00121E) == 42 && prev(word(0x01C998)) == 0 && word(0x01C998) != 0 && byte(0x00121D) == 5,
    cancel = byte(0x00121D) != 5,
    submit = word(0x01C998) != 0,
    value = word(0x01C998),
    format = "MILLISECS", lower_is_better = true
)

leaderboard(
    id = 1200, title = "Mist Flow - Front & Back",
    description = "Get the best time in Mist Flow - Front & Back in Time Attack.",
    start  = byte(0x00121E) == 58 && prev(word(0x01C998)) == 0 && word(0x01C998) != 0 && byte(0x00121D) == 5,
    cancel = byte(0x00121D) != 5,
    submit = word(0x01C998) != 0,
    value = word(0x01C998),
    format = "MILLISECS", lower_is_better = true
)

leaderboard(
    id = 1201, title = "Silence - Box Rink II",
    description = "Get the best time in Silence - Box Rink II in Time Attack.",
    start  = byte(0x00121E) == 13 && prev(word(0x01C998)) == 0 && word(0x01C998) != 0 && byte(0x00121D) == 5,
    cancel = byte(0x00121D) != 5,
    submit = word(0x01C998) != 0,
    value = word(0x01C998),
    format = "MILLISECS", lower_is_better = true
)

leaderboard(
    id = 1202, title = "Sand Ocean - Caterpillar II",
    description = "Get the best time in Sand Ocean - Caterpillar II in Time Attack.",
    start  = byte(0x00121E) == 12 && prev(word(0x01C998)) == 0 && word(0x01C998) != 0 && byte(0x00121D) == 5,
    cancel = byte(0x00121D) != 5,
    submit = word(0x01C998) != 0,
    value = word(0x01C998),
    format = "MILLISECS", lower_is_better = true
)

leaderboard(
    id = 1203, title = "Mute City - Expansion Park II",
    description = "Get the best time in Mute City - Expansion Park II in Time Attack.",
    start  = byte(0x00121E) == 15 && prev(word(0x01C998)) == 0 && word(0x01C998) != 0 && byte(0x00121D) == 5,
    cancel = byte(0x00121D) != 5,
    submit = word(0x01C998) != 0,
    value = word(0x01C998),
    format = "MILLISECS", lower_is_better = true
)

leaderboard(
    id = 1204, title = "Big Blue - Slip Highway II",
    description = "Get the best time in Big Blue - Slip Highway II in Time Attack.",
    start  = byte(0x00121E) == 5 && prev(word(0x01C998)) == 0 && word(0x01C998) != 0 && byte(0x00121D) == 5,
    cancel = byte(0x00121D) != 5,
    submit = word(0x01C998) != 0,
    value = word(0x01C998),
    format = "MILLISECS", lower_is_better = true
)

leaderboard(
    id = 1205, title = "Mist Flow - Front & Back II",
    description = "Get the best time in Mist Flow - Front & Back II in Time Attack.",
    start  = byte(0x00121E) == 10 && prev(word(0x01C998)) == 0 && word(0x01C998) != 0 && byte(0x00121D) == 5,
    cancel = byte(0x00121D) != 5,
    submit = word(0x01C998) != 0,
    value = word(0x01C998),
    format = "MILLISECS", lower_is_better = true
)

leaderboard(
    id = 1206, title = "Port Town - Forked Road",
    description = "Get the best time in Port Town - Forked Road in Time Attack.",
    start  = byte(0x00121E) == 44 && prev(word(0x01C998)) == 0 && word(0x01C998) != 0 && byte(0x00121D) == 5,
    cancel = byte(0x00121D) != 5,
    submit = word(0x01C998) != 0,
    value = word(0x01C998),
    format = "MILLISECS", lower_is_better = true
)

leaderboard(
    id = 1207, title = "Silence - Honeycomb Rink",
    description = "Get the best time in Silence - Honeycomb Rink in Time Attack.",
    start  = byte(0x00121E) == 37 && prev(word(0x01C998)) == 0 && word(0x01C998) != 0 && byte(0x00121D) == 5,
    cancel = byte(0x00121D) != 5,
    submit = word(0x01C998) != 0,
    value = word(0x01C998),
    format = "MILLISECS", lower_is_better = true
)

leaderboard(
    id = 1208, title = "White Land - Flower",
    description = "Get the best time in White Land - Flower",
    start  = byte(0x00121E) == 54 && prev(word(0x01C998)) == 0 && word(0x01C998) != 0 && byte(0x00121D) == 5,
    cancel = byte(0x00121D) != 5,
    submit = word(0x01C998) != 0,
    value = word(0x01C998),
    format = "MILLISECS", lower_is_better = true
)

leaderboard(
    id = 1209, title = "Fire Field - Wreckage Circuit",
    description = "Get the best time in Fire Field - Wreckage Circuit in Time Attack.",
    start  = byte(0x00121E) == 50 && prev(word(0x01C998)) == 0 && word(0x01C998) != 0 && byte(0x00121D) == 5,
    cancel = byte(0x00121D) != 5,
    submit = word(0x01C998) != 0,
    value = word(0x01C998),
    format = "MILLISECS", lower_is_better = true
)

leaderboard(
    id = 1210, title = "Red Canyon - Peak Jump",
    description = "Get the best time in Red Canyon - Peak Jump in Time Attack.",
    start  = byte(0x00121E) == 47 && prev(word(0x01C998)) == 0 && word(0x01C998) != 0 && byte(0x00121D) == 5,
    cancel = byte(0x00121D) != 5,
    submit = word(0x01C998) != 0,
    value = word(0x01C998),
    format = "MILLISECS", lower_is_better = true
)

leaderboard(
    id = 1211, title = "Illusion - Abyss Drop",
    description = "Get the best time in Illusion - Abyss Drop in Time Attack.",
    start  = byte(0x00121E) == 59 && prev(word(0x01C998)) == 0 && word(0x01C998) != 0 && byte(0x00121D) == 5,
    cancel = byte(0x00121D) != 5,
    submit = word(0x01C998) != 0,
    value = word(0x01C998),
    format = "MILLISECS", lower_is_better = true
)

leaderboard(
    id = 1212, title = "Port Town - Forked Road II",
    description = "Get the best time in Port Town - Forked Road II in Time Attack.",
    start  = byte(0x00121E) == 8 && prev(word(0x01C998)) == 0 && word(0x01C998) != 0 && byte(0x00121D) == 5,
    cancel = byte(0x00121D) != 5,
    submit = word(0x01C998) != 0,
    value = word(0x01C998),
    format = "MILLISECS", lower_is_better = true
)

leaderboard(
    id = 1213, title = "Silence - Honeycomb Rink II",
    description = "Get the best time in Silence - Honeycomb Rink II in Time Attack.",
    start  = byte(0x00121E) == 9 && prev(word(0x01C998)) == 0 && word(0x01C998) != 0 && byte(0x00121D) == 5,
    cancel = byte(0x00121D) != 5,
    submit = word(0x01C998) != 0,
    value = word(0x01C998),
    format = "MILLISECS", lower_is_better = true
)

leaderboard(
    id = 1214, title = "White Land - Flower II",
    description = "Get the best time in White Land - Flower II in Time Attack.",
    start  = byte(0x00121E) == 18 && prev(word(0x01C998)) == 0 && word(0x01C998) != 0 && byte(0x00121D) == 5,
    cancel = byte(0x00121D) != 5,
    submit = word(0x01C998) != 0,
    value = word(0x01C998),
    format = "MILLISECS", lower_is_better = true
)

leaderboard(
    id = 1215, title = "Fire Field - Wreckage Circuit II",
    description = "Get the best time in Fire Field - Wreckage Circuit II in Time Attack.",
    start  = byte(0x00121E) == 17 && prev(word(0x01C998)) == 0 && word(0x01C998) != 0 && byte(0x00121D) == 5,
    cancel = byte(0x00121D) != 5,
    submit = word(0x01C998) != 0,
    value = word(0x01C998),
    format = "MILLISECS", lower_is_better = true
)

leaderboard(
    id = 1216, title = "Red Canyon - Peak Jump II",
    description = "Get the best time in Red Canyon - Peak Jump II in Time Attack.",
    start  = byte(0x00121E) == 16 && prev(word(0x01C998)) == 0 && word(0x01C998) != 0 && byte(0x00121D) == 5,
    cancel = byte(0x00121D) != 5,
    submit = word(0x01C998) != 0,
    value = word(0x01C998),
    format = "MILLISECS", lower_is_better = true
)

leaderboard(
    id = 1217, title = "Illusion - Abyss Drop II",
    description = "Get the best time in Illusion - Abyss Drop II in Time Attack.",
    start  = byte(0x00121E) == 19 && prev(word(0x01C998)) == 0 && word(0x01C998) != 0 && byte(0x00121D) == 5,
    cancel = byte(0x00121D) != 5,
    submit = word(0x01C998) != 0,
    value = word(0x01C998),
    format = "MILLISECS", lower_is_better = true
)

leaderboard(
    id = 1218, title = "Mute City - Mute City I",
    description = "Get the best time in Mute City - Mute City I in Time Attack.",
    start  = byte(0x00121E) == 39 && prev(word(0x01C998)) == 0 && word(0x01C998) != 0 && byte(0x00121D) == 5,
    cancel = byte(0x00121D) != 5,
    submit = word(0x01C998) != 0,
    value = word(0x01C998),
    format = "MILLISECS", lower_is_better = true
)

leaderboard(
    id = 1219, title = "Big Blue - Big Blue",
    description = "Get the best time in Big Blue - Big Blue in Time Attack.",
    start  = byte(0x00121E) == 43 && prev(word(0x01C998)) == 0 && word(0x01C998) != 0 && byte(0x00121D) == 5,
    cancel = byte(0x00121D) != 5,
    submit = word(0x01C998) != 0,
    value = word(0x01C998),
    format = "MILLISECS", lower_is_better = true
)

leaderboard(
    id = 1220, title = "Silence - Silence",
    description = "Get the best time in Silence - Silence in Time Attack.",
    start  = byte(0x00121E) == 38 && prev(word(0x01C998)) == 0 && word(0x01C998) != 0 && byte(0x00121D) == 5,
    cancel = byte(0x00121D) != 5,
    submit = word(0x01C998) != 0,
    value = word(0x01C998),
    format = "MILLISECS", lower_is_better = true
)

leaderboard(
    id = 1221, title = "Port Town - Port Town II",
    description = "Get the best time in Port Town - Port Town II in Time Attack.",
    start  = byte(0x00121E) == 45 && prev(word(0x01C998)) == 0 && word(0x01C998) != 0 && byte(0x00121D) == 5,
    cancel = byte(0x00121D) != 5,
    submit = word(0x01C998) != 0,
    value = word(0x01C998),
    format = "MILLISECS", lower_is_better = true
)

leaderboard(
    id = 1222, title = "Red Canyon - Red Canyon",
    description = "Get the best time in Red Canyon - Red Canyon in Time Attack.",
    start  = byte(0x00121E) == 48 && prev(word(0x01C998)) == 0 && word(0x01C998) != 0 && byte(0x00121D) == 5,
    cancel = byte(0x00121D) != 5,
    submit = word(0x01C998) != 0,
    value = word(0x01C998),
    format = "MILLISECS", lower_is_better = true
)

leaderboard(
    id = 1223, title = "Sand Ocean - Sand Ocean",
    description = "Get the best time in Sand Ocean - Sand Ocean in Time Attack.",
    start  = byte(0x00121E) == 53 && prev(word(0x01C998)) == 0 && word(0x01C998) != 0 && byte(0x00121D) == 5,
    cancel = byte(0x00121D) != 5,
    submit = word(0x01C998) != 0,
    value = word(0x01C998),
    format = "MILLISECS", lower_is_better = true
)

leaderboard(
    id = 1224, title = "White Land - White Land II",
    description = "Get the best time in White Land - White Land II in Time Attack.",
    start  = byte(0x00121E) == 55 && prev(word(0x01C998)) == 0 && word(0x01C998) != 0 && byte(0x00121D) == 5,
    cancel = byte(0x00121D) != 5,
    submit = word(0x01C998) != 0,
    value = word(0x01C998),
    format = "MILLISECS", lower_is_better = true
)

leaderboard(
    id = 1225, title = "Fire Field - Fire Field",
    description = "Get the best time in Fire Field - Fire Field in Time Attack.",
    start  = byte(0x00121E) == 51 && prev(word(0x01C998)) == 0 && word(0x01C998) != 0 && byte(0x00121D) == 5,
    cancel = byte(0x00121D) != 5,
    submit = word(0x01C998) != 0,
    value = word(0x01C998),
    format = "MILLISECS", lower_is_better = true
)

leaderboard(
    id = 1226, title = "Mute City - Championship",
    description = "Get the best time in Mute City - Championship in Time Attack.",
    start  = byte(0x00121E) == 35 && prev(word(0x01C998)) == 0 && word(0x01C998) != 0 && byte(0x00121D) == 5,
    cancel = byte(0x00121D) != 5,
    submit = word(0x01C998) != 0,
    value = word(0x01C998),
    format = "MILLISECS", lower_is_better = true
)
