// F-Zero: Climax
// #ID = 6083

achievement(
    title = "Expertential Crisis", points = 5,
    description = "Win the expert platinum grand prix.",
    id = 32357, badge = "33009", published = "25/1/2016 07:43:37", modified = "21/8/2016 01:36:19",
    trigger = byte(0x00179A) == 0 && word(0x001796) == 264 &&
              ((bit3(0x010067) == 1) ||
               (bit3(0x01011F) == 1))
)

achievement(
    title = "Takes A Lot Out Of You", points = 5,
    description = "Win a master grand prix with a car that has E boost.",
    id = 32364, badge = "33149", published = "25/1/2016 07:43:54", modified = "25/1/2016 07:45:59",
    trigger = prev(byte(0x001799)) == 0 && byte(0x001799) == 6 && prev(byte(0x00179C)) == 3 && prev(byte(0x00179D)) > 3 && 
              prev(byte(0x0031B3)) == 0 && byte(0x00170A) == 33
)

achievement(
    title = "Glass Cannon", points = 5,
    description = "Win a master grand prix with a car that has E body.",
    id = 32363, badge = "33148", published = "25/1/2016 07:43:52", modified = "9/10/2019 18:03:02",
    trigger = prev(byte(0x001799)) == 0 && byte(0x001799) == 6 && prev(byte(0x00179C)) == 3 && prev(byte(0x00179D)) > 3 && 
              prev(byte(0x0031B3)) == 0 &&
              ((byte(0x00170A) == 4) ||
               (byte(0x00170A) == 6) ||
               (byte(0x00170A) == 7) ||
               (byte(0x00170A) == 8) ||
               (byte(0x00170A) == 11) ||
               (byte(0x00170A) == 22) ||
               (byte(0x00170A) == 30) ||
               (byte(0x00170A) == 35))
)

achievement(
    title = "They Call Him Slipper", points = 5,
    description = "Win a master grand prix with a car that has E grip.",
    id = 32362, badge = "33147", published = "25/1/2016 07:43:50", modified = "25/1/2016 07:45:57",
    trigger = prev(byte(0x001799)) == 0 && byte(0x001799) == 6 && prev(byte(0x00179C)) == 3 && prev(byte(0x00179D)) > 3 && 
              prev(byte(0x0031B3)) == 0 &&
              ((byte(0x00170A) == 3) ||
               (byte(0x00170A) == 12) ||
               (byte(0x00170A) == 32))
)

achievement(
    title = "True Classic", points = 10,
    description = "Win the master platinum grand prix.",
    id = 32361, badge = "33013", published = "25/1/2016 07:43:43", modified = "9/8/2020 22:40:16",
    trigger = byte(0x00179A) == 0 && word(0x001796) == 264 &&
              ((bit7(0x010067) == 1) ||
               (bit7(0x01011F) == 1))
)

achievement(
    title = "Ruler Of The Races", points = 10,
    description = "Win the master gold grand prix.",
    id = 32360, badge = "33012", published = "25/1/2016 07:43:42", modified = "9/8/2020 22:40:17",
    trigger = byte(0x00179A) == 0 && word(0x001796) == 264 &&
              ((bit6(0x010067) == 1) ||
               (bit6(0x01011F) == 1))
)

achievement(
    title = "Seasoned Racer", points = 5,
    description = "Win the master silver grand prix.",
    id = 32359, badge = "33011", published = "25/1/2016 07:43:40", modified = "21/8/2016 01:36:21",
    trigger = byte(0x00179A) == 0 && word(0x001796) == 264 &&
              ((bit5(0x010067) == 1) ||
               (bit5(0x01011F) == 1))
)

achievement(
    title = "Taste Of The Big Leagues", points = 5,
    description = "Win the master bronze grand prix.",
    id = 32358, badge = "33010", published = "25/1/2016 07:43:39", modified = "9/10/2019 18:03:02",
    trigger = byte(0x00179A) == 0 && word(0x001796) == 264 &&
              ((bit4(0x010067) == 1) ||
               (bit4(0x01011F) == 1))
)

achievement(
    title = "Expertnential Growth", points = 5,
    description = "Win the expert gold grand prix.",
    id = 32356, badge = "33008", published = "25/1/2016 07:43:36", modified = "21/8/2016 01:36:18",
    trigger = byte(0x00179A) == 0 && word(0x001796) == 264 &&
              ((bit2(0x010067) == 1) ||
               (bit2(0x01011F) == 1))
)

achievement(
    title = "500 Expertience Gained", points = 5,
    description = "Win the expert silver grand prix.",
    id = 32355, badge = "33007", published = "25/1/2016 07:43:34", modified = "21/8/2016 01:36:17",
    trigger = byte(0x00179A) == 0 && word(0x001796) == 264 &&
              ((bit1(0x010067) == 1) ||
               (bit1(0x01011F) == 1))
)

achievement(
    title = "Light Expertcise", points = 5,
    description = "Win the expert bronze grand prix.",
    id = 32354, badge = "33006", published = "25/1/2016 07:43:33", modified = "21/8/2016 01:36:16",
    trigger = byte(0x00179A) == 0 && word(0x001796) == 264 &&
              ((bit0(0x010067) == 1) ||
               (bit0(0x01011F) == 1))
)

achievement(
    title = "Up To Standard", points = 10,
    description = "Win the standard bronze, silver, gold and platinum cups.",
    id = 32353, badge = "32939", published = "25/1/2016 07:43:31", modified = "9/8/2020 22:40:20",
    trigger = byte(0x00179A) == 0 && word(0x001796) == 264 &&
              ((high4(0x010066) == 15) ||
               (high4(0x01011E) == 15))
)

achievement(
    title = "Learning The Ropes", points = 10,
    description = "Win the novice bronze, silver, gold and platinum cups.",
    id = 32352, badge = "32938", published = "25/1/2016 07:43:29", modified = "21/8/2016 01:36:14",
    trigger = byte(0x00179A) == 0 && word(0x001796) == 264 &&
              ((low4(0x010066) == 15) ||
               (low4(0x01011E) == 15))
)

achievement(
    title = "Double Jumping Link", points = 5,
    description = "Chain two jump pads to take a shortcut in 'Double Link'.",
    id = 32368, badge = "33157", published = "25/1/2016 07:44:12", modified = "9/10/2019 18:03:02",
    trigger = once(byte(0x01D56C) == 69) && never(byte(0x01D56C) == 2) && never(byte(0x01D56C) == 73) && byte(0x01D56C)
               == 0 && never(byte(0x01D56C) == 125) && unless(word(0x01D524) > 0) && byte(0x00179A) == 12 && 
              once(byte(0x01D56C) == 127) && never(byte(0x01D56C) == 149)
)

achievement(
    title = "Wrecking Machine", points = 10,
    description = "Wreck 10 rival cars in a single race and win. [Grand Prix]",
    id = 32365, badge = "33146", published = "25/1/2016 07:44:02", modified = "9/8/2020 22:40:22",
    trigger = byte(0x001799) == 0 && prev(byte(0x001797)) == 5 && byte(0x001797) == 16 && byte(0x0031CC) > 9
)

achievement(
    title = "I Make My Own Skyway", points = 10,
    description = "Use the first jump pad to jump 90 degrees across the track in 'Sky Highway'.",
    id = 32366, badge = "33155", published = "25/1/2016 07:44:08", modified = "9/8/2020 22:40:23",
    trigger = once(byte(0x01D56C) == 56) && never(byte(0x01D56C) < 52) && never(byte(0x01D56C) == 99) && byte(0x01D56C)
               == 107 && never(byte(0x01D56C) > 109) && unless(word(0x01D524) > 0) && byte(0x00179A) == 2
)

achievement(
    title = "Do The Barrel Roll", points = 5,
    description = "Use the first jump pad to jump 90 degrees across the track in 'Barrel Roll'.",
    id = 32367, badge = "33156", published = "25/1/2016 07:44:10", modified = "9/10/2019 18:03:02",
    trigger = once(byte(0x01D56C) == 98) && never(byte(0x01D56C) < 95) && never(byte(0x01D56C) == 112) && byte(0x01D56C)
               == 135 && never(byte(0x01D56C) > 140) && unless(word(0x01D524) > 0) && byte(0x00179A) == 52
)

achievement(
    title = "Fly Like An Eagle", points = 5,
    description = "Get a time under 1'30'' on 'Championship - Eagle Circuit' in Time Attack.",
    id = 32369, badge = "33027", published = "25/1/2016 07:44:20", modified = "25/1/2016 07:46:04",
    trigger = byte(0x00179A) == 45 && byte(0x00179B) == 4 && byte(0x001799) == 5 && word(0x01D534) < 9000 && 
              byte(0x001797) == 16 && prev(byte(0x001797)) < 7
)

achievement(
    title = "Zero'd In", points = 5,
    description = "Clear all Zero Tests in Class C.",
    id = 32370, badge = "33014", published = "25/1/2016 07:44:27", modified = "9/10/2019 18:03:02",
    trigger = byte(0x00179A) > 0 &&
              ((byte(0x010080) > 0 && byte(0x010080) < 4) ||
               (byte(0x010138) > 0 && byte(0x010138) < 4))
)

achievement(
    title = "Zero Divider", points = 5,
    description = "Clear all Zero Tests in Class B.",
    id = 32371, badge = "33015", published = "25/1/2016 07:44:30", modified = "25/1/2016 07:46:06",
    trigger = byte(0x00179A) > 0 &&
              ((byte(0x010080) > 1 && byte(0x010080) < 4) ||
               (byte(0x010138) > 1 && byte(0x010138) < 4))
)

achievement(
    title = "Zero Speeder", points = 10,
    description = "Clear all Zero Tests in Class A.",
    id = 32372, badge = "33016", published = "25/1/2016 07:44:32", modified = "9/8/2020 22:40:26",
    trigger = byte(0x00179A) > 0 &&
              ((byte(0x010080) == 3) ||
               (byte(0x010138) == 3))
)

achievement(
    title = "Zero Completion", points = 10,
    description = "Clear all Zero Tests in Class S.",
    id = 32373, badge = "33017", published = "25/1/2016 07:44:33", modified = "9/8/2020 22:40:27",
    trigger = byte(0x00179A) > 0 &&
              ((byte(0x010080) == 3 && high4(0x0100D8) >= 5 && low4(0x0100D8) >= 5 && low4(0x0100D9) >= 5 && 
                high4(0x0100D9) >= 5 && low4(0x0100DA) > 0) ||
               (byte(0x010138) == 3 && low4(0x010190) >= 5 && high4(0x010190) >= 5 && high4(0x010191) >= 5 && 
                low4(0x010191) >= 5 && low4(0x010192) > 0))
)

achievement(
    title = "Hi-Ho, Silver", points = 10,
    description = "Clear all Zero Tests in Class C with a silver or better.",
    id = 32374, badge = "33018", published = "25/1/2016 07:44:34", modified = "9/10/2019 18:03:02",
    trigger = byte(0x00179A) > 0 &&
              ((bit1(0x0100CC) == 1 && bit3(0x0100CC) == 1 && bit5(0x0100CC) == 1 && bit7(0x0100CC) == 1 && 
                bit1(0x0100CD) == 1 && bit3(0x0100CD) == 1 && bit5(0x0100CD) == 1 && bit7(0x0100CD) == 1 && 
                bit1(0x0100CE) == 1) ||
               (bit1(0x010184) == 1 && bit3(0x010184) == 1 && bit5(0x010184) == 1 && bit7(0x010184) == 1 && 
                bit1(0x010185) == 1 && bit3(0x010185) == 1 && bit5(0x010185) == 1 && bit7(0x010185) == 1 && 
                bit1(0x010186) == 1))
)

achievement(
    title = "The Silver Nine", points = 10,
    description = "Clear all Zero Tests in Class B with a silver or better.",
    id = 32375, badge = "33019", published = "25/1/2016 07:44:36", modified = "9/10/2019 18:03:02",
    trigger = byte(0x00179A) > 0 &&
              ((bit1(0x0100D0) == 1 && bit3(0x0100D0) == 1 && bit5(0x0100D0) == 1 && bit7(0x0100D0) == 1 && 
                bit1(0x0100D1) == 1 && bit3(0x0100D1) == 1 && bit5(0x0100D1) == 1 && bit7(0x0100D1) == 1 && 
                bit1(0x0100D2) == 1) ||
               (bit1(0x010188) == 1 && bit3(0x010188) == 1 && bit5(0x010188) == 1 && bit7(0x010188) == 1 && 
                bit1(0x010189) == 1 && bit3(0x010189) == 1 && bit5(0x010189) == 1 && bit7(0x010189) == 1 && 
                bit1(0x01018A) == 1))
)

achievement(
    title = "Among Silver Things", points = 10,
    description = "Clear all Zero Tests in Class A with a silver or better.",
    id = 32376, badge = "33020", published = "25/1/2016 07:44:37", modified = "9/10/2019 18:03:02",
    trigger = byte(0x00179A) > 0 &&
              ((bit1(0x0100D4) == 1 && bit3(0x0100D4) == 1 && bit5(0x0100D4) == 1 && bit7(0x0100D4) == 1 && 
                bit1(0x0100D5) == 1 && bit3(0x0100D5) == 1 && bit5(0x0100D5) == 1 && bit7(0x0100D5) == 1 && 
                bit1(0x0100D6) == 1) ||
               (bit1(0x01018C) == 1 && bit3(0x01018C) == 1 && bit5(0x01018C) == 1 && bit7(0x01018C) == 1 && 
                bit1(0x01018D) == 1 && bit3(0x01018D) == 1 && bit5(0x01018D) == 1 && bit7(0x01018D) == 1 && 
                bit1(0x01018E) == 1))
)

achievement(
    title = "Rising Silver Star", points = 10,
    description = "Clear all Zero Tests in Class S with a silver or better.",
    id = 32377, badge = "33021", published = "25/1/2016 07:44:39", modified = "9/10/2019 18:03:02",
    trigger = byte(0x00179A) > 0 &&
              ((bit1(0x0100D8) == 1 && bit3(0x0100D8) == 1 && bit5(0x0100D8) == 1 && bit7(0x0100D8) == 1 && 
                bit1(0x0100D9) == 1 && bit3(0x0100D9) == 1 && bit5(0x0100D9) == 1 && bit7(0x0100D9) == 1 && 
                bit1(0x0100DA) == 1) ||
               (bit1(0x010190) == 1 && bit3(0x010190) == 1 && bit5(0x010190) == 1 && bit7(0x010190) == 1 && 
                bit1(0x010191) == 1 && bit3(0x010191) == 1 && bit5(0x010191) == 1 && bit7(0x010191) == 1 && 
                bit1(0x010192) == 1))
)

achievement(
    title = "Gold Pile", points = 25,
    description = "Clear all Zero Tests in Class C with a gold.",
    id = 32378, badge = "33022", published = "25/1/2016 07:44:40", modified = "9/8/2020 22:40:29",
    trigger = byte(0x00179A) > 0 &&
              ((word(0x0100CC) == 65535 && bit0(0x0100CE) == 1 && byte(0x0100CE) < 255 && bit1(0x0100CE) == 1) ||
               (word(0x010184) == 65535 && bit0(0x010186) == 1 && bit1(0x010186) == 1 && byte(0x010186) < 255))
)

achievement(
    title = "Golden Hill", points = 25,
    description = "Clear all Zero Tests in Class B with a gold.",
    id = 32379, badge = "33023", published = "25/1/2016 07:44:42", modified = "9/8/2020 22:40:31",
    trigger = byte(0x00179A) > 0 &&
              ((word(0x0100D0) == 65535 && byte(0x0100D2) < 255 && bit0(0x0100D2) == 1 && bit1(0x0100D2) == 1) ||
               (word(0x010188) == 65535 && byte(0x01018A) < 255 && bit0(0x01018A) == 1 && bit1(0x01018A) == 1))
)

achievement(
    title = "Mountain Of Gold", points = 50,
    description = "Clear all Zero Tests in Class A with a gold.",
    id = 32380, badge = "33024", published = "25/1/2016 07:44:43", modified = "9/8/2020 22:40:33",
    trigger = byte(0x00179A) > 0 &&
              ((word(0x0100D4) == 65535 && byte(0x0100D6) < 255 && bit0(0x0100D6) == 1 && bit1(0x0100D6) == 1) ||
               (word(0x01018C) == 65535 && byte(0x01018E) < 255 && bit0(0x01018E) == 1 && bit1(0x01018E) == 1))
)

achievement(
    title = "Golden God", points = 50,
    description = "Clear all Zero Tests in Class S with a gold.",
    id = 32381, badge = "33025", published = "25/1/2016 07:44:45", modified = "9/8/2020 22:40:34",
    trigger = byte(0x00179A) > 0 &&
              ((word(0x0100D8) == 65535 && byte(0x0100DA) < 255 && bit0(0x0100DA) == 1 && bit1(0x0100DA) == 1) ||
               (word(0x010190) == 65535 && byte(0x010192) < 255 && bit0(0x010192) == 1 && bit1(0x010192) == 1))
)

achievement(
    title = "Just Like My Cartoons", points = 25,
    description = "Unlock all storylines.",
    id = 32350, badge = "33143", published = "25/1/2016 07:43:23", modified = "9/8/2020 22:40:36",
    trigger = byte(0x00179A) == 0 && word(0x001796) == 264 &&
              ((word(0x010078) == 65535 && word(0x01007A) == 65535 && word(0x01007C) == 65535 && bit0(0x01007E) == 1 && 
                bit1(0x01007E) == 1 && bit2(0x01007E) == 1) ||
               (word(0x01012F) == 65535 && word(0x010131) == 65535 && word(0x010133) == 65535 && bit0(0x010135) == 1 && 
                bit1(0x010135) == 1 && bit2(0x010135) == 1))
)

achievement(
    title = "Some Kinda Dating Game", points = 25,
    description = "Unlock all character profiles.",
    id = 32351, badge = "33154", published = "25/1/2016 07:43:25", modified = "9/8/2020 22:40:37",
    trigger = byte(0x00179A) == 0 && word(0x001796) == 264 &&
              ((word(0x0101A0) == 65535 && word(0x0101A2) == 65535 && byte(0x0101A4) == 127) ||
               (word(0x0100E8) == 65535 && word(0x0100EA) == 65535 && byte(0x0100EC) == 127))
)

achievement(
    title = "Violent Behavior", points = 25,
    description = "Complete Violence mode in survival without losing a life.",
    id = 32385, badge = "33150", published = "25/1/2016 07:44:53", modified = "9/8/2020 22:40:38",
    trigger = prev(byte(0x001799)) == 0 && byte(0x001799) == 1 && prev(word(0x00179C)) == 2819 && once(byte(0x00179D) ==
               0) && never(byte(0x0017AB) < prev(byte(0x0017AB))) && repeated(11, byte(0x00179D) > prev(byte(0x00179D))) && 
              never(byte(0x00179C) != 3)
)

achievement(
    title = "Undefeated Gladiator", points = 25,
    description = "Complete Battle mode in survival without losing a life.",
    id = 32384, badge = "33151", published = "25/1/2016 07:44:51", modified = "9/8/2020 22:40:40",
    trigger = prev(byte(0x001799)) == 0 && byte(0x001799) == 1 && prev(word(0x00179C)) == 2306 && once(byte(0x00179D) ==
               0) && never(byte(0x0017AB) < prev(byte(0x0017AB))) && repeated(9, byte(0x00179D) > prev(byte(0x00179D))) && 
              never(byte(0x00179C) != 2)
)

achievement(
    title = "A Challenger Encroaches", points = 10,
    description = "Complete Challenge mode in survival without losing a life.",
    id = 32383, badge = "33152", published = "25/1/2016 07:44:49", modified = "9/8/2020 22:40:41",
    trigger = prev(byte(0x001799)) == 0 && byte(0x001799) == 1 && prev(word(0x00179C)) == 1793 && once(byte(0x00179D) ==
               0) && never(byte(0x0017AB) < prev(byte(0x0017AB))) && repeated(7, byte(0x00179D) > prev(byte(0x00179D))) && 
              never(byte(0x00179C) != 1)
)

achievement(
    title = "Tour Guided", points = 5,
    description = "Complete Tour mode in survival without losing a life.",
    id = 32382, badge = "33153", published = "25/1/2016 07:44:47", modified = "9/8/2020 22:40:42",
    trigger = prev(byte(0x001799)) == 0 && byte(0x001799) == 1 && prev(word(0x00179C)) == 1024 && once(byte(0x00179D) ==
               0) && never(byte(0x0017AB) < prev(byte(0x0017AB))) && repeated(4, byte(0x00179D) > prev(byte(0x00179D))) && 
              never(prev(byte(0x00179C)) != 0)
)

achievement(
    title = "20,000 Leagues Over The Speed Limit", points = 10,
    description = "Complete all survival modes with the Deepclaw.",
    id = 32318, badge = "33073", published = "25/1/2016 07:41:44", modified = "9/8/2020 22:40:43",
    trigger = byte(0x00179A) == 0 && word(0x001796) == 264 &&
              ((bit7(0x0100DC) == 1 && bit7(0x0100E8) == 1 && bit7(0x0100F4) == 1 && bit7(0x010100) == 1) ||
               (bit7(0x010194) == 1 && bit7(0x0101A0) == 1 && bit7(0x0101AC) == 1 && bit7(0x0101B8) == 1))
)

achievement(
    title = "Birds Can't Breathe In Space", points = 10,
    description = "Complete all survival modes with the Astro Robin.",
    id = 32328, badge = "33090", published = "25/1/2016 07:42:00", modified = "9/8/2020 22:40:44",
    trigger = byte(0x00179A) == 0 && word(0x001796) == 264 &&
              ((bit1(0x0100DE) == 1 && bit1(0x0100EA) == 1 && bit1(0x0100F6) == 1 && bit1(0x010102) == 1) ||
               (bit1(0x010196) == 1 && bit1(0x0101A2) == 1 && bit1(0x0101AE) == 1 && bit1(0x0101BA) == 1))
)

achievement(
    title = "Superior Bloodline", points = 10,
    description = "Complete all survival modes with the Blood Hawk.",
    id = 32327, badge = "33089", published = "25/1/2016 07:41:59", modified = "9/8/2020 22:40:46",
    trigger = byte(0x00179A) == 0 && word(0x001796) == 264 &&
              ((bit0(0x0100DE) == 1 && bit0(0x0100EA) == 1 && bit0(0x0100F6) == 1 && bit0(0x010102) == 1) ||
               (bit0(0x010196) == 1 && bit0(0x0101A2) == 1 && bit0(0x0101AE) == 1 && bit0(0x0101BA) == 1))
)

achievement(
    title = "Super Professional", points = 10,
    description = "Complete all survival modes with the Queen Meteor.",
    id = 32326, badge = "33088", published = "25/1/2016 07:41:57", modified = "9/8/2020 22:40:47",
    trigger = byte(0x00179A) == 0 && word(0x001796) == 264 &&
              ((bit7(0x0100DD) == 1 && bit7(0x0100E9) == 1 && bit7(0x0100F5) == 1 && bit7(0x010101) == 1) ||
               (bit7(0x010195) == 1 && bit7(0x0101A1) == 1 && bit7(0x0101AD) == 1 && bit7(0x0101B9) == 1))
)

achievement(
    title = "Aerodynamic Insect", points = 10,
    description = "Complete all survival modes with the Wonder Wasp.",
    id = 32325, badge = "33086", published = "25/1/2016 07:41:56", modified = "9/8/2020 22:40:48",
    trigger = byte(0x00179A) == 0 && word(0x001796) == 264 &&
              ((bit6(0x0100DD) == 1 && bit6(0x0100E9) == 1 && bit6(0x0100F5) == 1 && bit6(0x010101) == 1) ||
               (bit6(0x010195) == 1 && bit6(0x0101A1) == 1 && bit6(0x0101AD) == 1 && bit6(0x0101B9) == 1))
)

achievement(
    title = "Ultimate Teamwork", points = 10,
    description = "Complete all survival modes with the Twinnoritta.",
    id = 32324, badge = "33082", published = "25/1/2016 07:41:54", modified = "9/8/2020 22:40:49",
    trigger = byte(0x00179A) == 0 && word(0x001796) == 264 &&
              ((bit5(0x0100DD) == 1 && bit5(0x0100E9) == 1 && bit5(0x0100F5) == 1 && bit5(0x010101) == 1) ||
               (bit5(0x010195) == 1 && bit5(0x0101A1) == 1 && bit5(0x0101AD) == 1 && bit5(0x0101B9) == 1))
)

achievement(
    title = "Heart Of Silver", points = 10,
    description = "Complete all survival modes with the Night Thunder.",
    id = 32323, badge = "33081", published = "25/1/2016 07:41:52", modified = "9/8/2020 22:40:51",
    trigger = byte(0x00179A) == 0 && word(0x001796) == 264 &&
              ((bit4(0x0100DD) == 1 && bit4(0x0100E9) == 1 && bit4(0x0100F5) == 1 && bit4(0x010101) == 1) ||
               (bit4(0x010195) == 1 && bit4(0x0101A1) == 1 && bit4(0x0101AD) == 1 && bit4(0x0101B9) == 1))
)

achievement(
    title = "Monkeys And Wolves Racing Together", points = 10,
    description = "Complete all survival modes with the Mad Wolf.",
    id = 32322, badge = "33080", published = "25/1/2016 07:41:51", modified = "9/8/2020 22:40:51",
    trigger = byte(0x00179A) == 0 && word(0x001796) == 264 &&
              ((bit3(0x0100DD) == 1 && bit3(0x0100E9) == 1 && bit3(0x0100F5) == 1 && bit3(0x010101) == 1) ||
               (bit3(0x010195) == 1 && bit3(0x0101A1) == 1 && bit3(0x0101AD) == 1 && bit3(0x0101B9) == 1))
)

achievement(
    title = "When Worlds Collide", points = 10,
    description = "Complete all survival modes with the Big Fang.",
    id = 32321, badge = "33079", published = "25/1/2016 07:41:48", modified = "9/8/2020 22:40:53",
    trigger = byte(0x00179A) == 0 && word(0x001796) == 264 &&
              ((bit2(0x0100DD) == 1 && bit2(0x0100E9) == 1 && bit2(0x0100F5) == 1 && bit2(0x010101) == 1) ||
               (bit2(0x010195) == 1 && bit2(0x0101A1) == 1 && bit2(0x0101AD) == 1 && bit2(0x0101B9) == 1))
)

achievement(
    title = "Efficient And Daring", points = 10,
    description = "Complete all survival modes with the Great Star.",
    id = 32320, badge = "33078", published = "25/1/2016 07:41:46", modified = "9/8/2020 22:40:55",
    trigger = byte(0x00179A) == 0 && word(0x001796) == 264 &&
              ((bit1(0x0100DD) == 1 && bit1(0x0100E9) == 1 && bit1(0x0100F5) == 1 && bit1(0x010101) == 1) ||
               (bit1(0x010195) == 1 && bit1(0x0101A1) == 1 && bit1(0x0101AD) == 1 && bit1(0x0101B9) == 1))
)

achievement(
    title = "Bear Outta Hell", points = 10,
    description = "Complete all survival modes with the Crazy Bear.",
    id = 32319, badge = "33074", published = "25/1/2016 07:41:45", modified = "9/8/2020 22:40:56",
    trigger = byte(0x00179A) == 0 && word(0x001796) == 264 &&
              ((bit0(0x0100DD) == 1 && bit0(0x0100E9) == 1 && bit0(0x0100F5) == 1 && bit0(0x010101) == 1) ||
               (bit0(0x010195) == 1 && bit0(0x0101A1) == 1 && bit0(0x0101AD) == 1 && bit0(0x0101B9) == 1))
)

achievement(
    title = "You've Become So Strong", points = 10,
    description = "Complete all survival modes with the Little Wyvern.",
    id = 32329, badge = "33092", published = "25/1/2016 07:42:44", modified = "9/8/2020 22:40:57",
    trigger = byte(0x00179A) == 0 && word(0x001796) == 264 &&
              ((bit2(0x0100DE) == 1 && bit2(0x0100EA) == 1 && bit2(0x0100F6) == 1 && bit2(0x010102) == 1) ||
               (bit2(0x010196) == 1 && bit2(0x0101A2) == 1 && bit2(0x0101AE) == 1 && bit2(0x0101BA) == 1))
)

achievement(
    title = "Fly Like A Tiger, Sting Like A Tiger", points = 10,
    description = "Complete all survival modes with the Iron Tiger.",
    id = 32317, badge = "33072", published = "25/1/2016 07:41:42", modified = "9/8/2020 22:40:59",
    trigger = byte(0x00179A) == 0 && word(0x001796) == 264 &&
              ((bit6(0x0100DC) == 1 && bit6(0x0100E8) == 1 && bit6(0x0100F4) == 1 && bit6(0x010100) == 1) ||
               (bit6(0x010194) == 1 && bit6(0x0101A0) == 1 && bit6(0x0101AC) == 1 && bit6(0x0101B8) == 1))
)

achievement(
    title = "World's Foremost Gazelle Cyborg", points = 10,
    description = "Complete all survival modes with the Red Gazelle.",
    id = 32316, badge = "33071", published = "25/1/2016 07:41:41", modified = "9/8/2020 22:40:58",
    trigger = byte(0x00179A) == 0 && word(0x001796) == 264 &&
              ((bit5(0x0100DC) == 1 && bit5(0x0100E8) == 1 && bit5(0x0100F4) == 1 && bit5(0x010100) == 1) ||
               (bit5(0x010194) == 1 && bit5(0x0101A0) == 1 && bit5(0x0101AC) == 1 && bit5(0x0101B8) == 1))
)

achievement(
    title = "One Long Catnap", points = 10,
    description = "Complete all survival modes with the White Cat.",
    id = 32315, badge = "33070", published = "25/1/2016 07:41:40", modified = "9/8/2020 22:41:00",
    trigger = byte(0x00179A) == 0 && word(0x001796) == 264 &&
              ((bit4(0x0100DC) == 1 && bit4(0x0100E8) == 1 && bit4(0x0100F4) == 1 && bit4(0x010100) == 1) ||
               (bit4(0x010194) == 1 && bit4(0x0101A0) == 1 && bit4(0x0101AC) == 1 && bit4(0x0101B8) == 1))
)

achievement(
    title = "Samurai Pirate Extraordinaire", points = 10,
    description = "Complete all survival modes with the Fire Stingray.",
    id = 32314, badge = "33069", published = "25/1/2016 07:41:38", modified = "9/8/2020 22:41:02",
    trigger = byte(0x00179A) == 0 && word(0x001796) == 264 &&
              ((bit3(0x0100DC) == 1 && bit3(0x0100E8) == 1 && bit3(0x0100F4) == 1 && bit3(0x010100) == 1) ||
               (bit3(0x010194) == 1 && bit3(0x0101A0) == 1 && bit3(0x0101AC) == 1 && bit3(0x0101B8) == 1))
)

achievement(
    title = "Not THAT Pico", points = 10,
    description = "Complete all survival modes with the Wild Goose.",
    id = 32313, badge = "33065", published = "25/1/2016 07:41:37", modified = "9/8/2020 22:41:03",
    trigger = byte(0x00179A) == 0 && word(0x001796) == 264 &&
              ((bit2(0x0100DC) == 1 && bit2(0x0100E8) == 1 && bit2(0x0100F4) == 1 && bit2(0x010100) == 1) ||
               (bit2(0x010194) == 1 && bit2(0x0101A0) == 1 && bit2(0x0101AC) == 1 && bit2(0x0101B8) == 1))
)

achievement(
    title = "Foxy Grandpa", points = 10,
    description = "Complete all survival modes with the Golden Fox.",
    id = 32312, badge = "33064", published = "25/1/2016 07:41:36", modified = "9/8/2020 22:41:04",
    trigger = byte(0x00179A) == 0 && word(0x001796) == 264 &&
              ((bit1(0x0100DC) == 1 && bit1(0x0100E8) == 1 && bit1(0x0100F4) == 1 && bit1(0x010100) == 1) ||
               (bit1(0x010194) == 1 && bit1(0x0101A0) == 1 && bit1(0x0101AC) == 1 && bit1(0x0101B8) == 1))
)

achievement(
    title = "Out Of The Shadows", points = 10,
    description = "Complete all survival modes with the Black Bull.",
    id = 32339, badge = "33130", published = "25/1/2016 07:43:00", modified = "9/8/2020 22:41:05",
    trigger = byte(0x00179A) == 0 && word(0x001796) == 264 &&
              ((bit4(0x0100DF) == 1 && bit4(0x0100EB) == 1 && bit4(0x0100F7) == 1 && bit4(0x010103) == 1) ||
               (bit4(0x010197) == 1 && bit4(0x0101A3) == 1 && bit4(0x0101AF) == 1 && bit4(0x0101BB) == 1))
)

achievement(
    title = "Neophyte Falcon", points = 10,
    description = "Complete all survival modes with the Neo Blue Falcon.",
    id = 32348, badge = "33141", published = "25/1/2016 07:43:14", modified = "9/8/2020 22:41:07",
    trigger = byte(0x00179A) == 0 && word(0x001796) == 264 &&
              ((bit5(0x0100E0) == 1 && bit5(0x0100EC) == 1 && bit5(0x0100F8) == 1 && bit5(0x010104) == 1) ||
               (bit5(0x010198) == 1 && bit5(0x0101A4) == 1 && bit5(0x0101B0) == 1 && bit5(0x0101BC) == 1))
)

achievement(
    title = "By The Power Of Food", points = 10,
    description = "Complete all survival modes with the Hyper Death Anchor.",
    id = 32349, badge = "33142", published = "25/1/2016 07:43:15", modified = "9/8/2020 22:41:08",
    trigger = byte(0x00179A) == 0 && word(0x001796) == 264 &&
              ((bit6(0x0100E0) == 1 && bit6(0x0100EC) == 1 && bit6(0x0100F8) == 1 && bit6(0x010104) == 1) ||
               (bit6(0x010198) == 1 && bit6(0x0101A4) == 1 && bit6(0x0101B0) == 1 && bit6(0x0101BC) == 1))
)

achievement(
    title = "The Man. The Legend. The Falcon.", points = 10,
    description = "Complete all survival modes with the Blue Falcon.",
    id = 32311, badge = "33063", published = "25/1/2016 07:41:34", modified = "9/8/2020 22:41:09",
    trigger = byte(0x00179A) == 0 && word(0x001796) == 264 &&
              ((bit0(0x0100DC) == 1 && bit0(0x0100E8) == 1 && bit0(0x0100F4) == 1 && bit0(0x010100) == 1) ||
               (bit0(0x010194) == 1 && bit0(0x0101A0) == 1 && bit0(0x0101AC) == 1 && bit0(0x0101B8) == 1))
)

achievement(
    title = "One-Winged Falcon", points = 10,
    description = "Complete all survival modes with the Red Bull.",
    id = 32346, badge = "33139", published = "25/1/2016 07:43:11", modified = "9/8/2020 22:41:10",
    trigger = byte(0x00179A) == 0 && word(0x001796) == 264 &&
              ((bit3(0x0100E0) == 1 && bit3(0x0100EC) == 1 && bit3(0x0100F8) == 1 && bit3(0x010104) == 1) ||
               (bit3(0x010198) == 1 && bit3(0x0101A4) == 1 && bit3(0x0101B0) == 1 && bit3(0x0101BC) == 1))
)

achievement(
    title = "The Most Generic Racer", points = 10,
    description = "Complete all survival modes with the Soldier Anchor.",
    id = 32345, badge = "33138", published = "25/1/2016 07:43:08", modified = "9/8/2020 22:41:11",
    trigger = byte(0x00179A) == 0 && word(0x001796) == 264 &&
              ((bit2(0x0100E0) == 1 && bit2(0x0100EC) == 1 && bit2(0x0100F8) == 1 && bit2(0x010104) == 1) ||
               (bit2(0x010198) == 1 && bit2(0x0101A4) == 1 && bit2(0x0101B0) == 1 && bit2(0x0101BC) == 1))
)

achievement(
    title = "Ms. Kira~", points = 10,
    description = "Complete all survival modes with the Moon Shadow.",
    id = 32344, badge = "33135", published = "25/1/2016 07:43:07", modified = "9/8/2020 22:41:14",
    trigger = byte(0x00179A) == 0 && word(0x001796) == 264 &&
              ((bit1(0x0100E0) == 1 && bit1(0x0100EC) == 1 && bit1(0x0100F8) == 1 && bit1(0x010104) == 1) ||
               (bit1(0x010198) == 1 && bit1(0x0101A4) == 1 && bit1(0x0101B0) == 1 && bit1(0x0101BC) == 1))
)

achievement(
    title = "With Elegance And Justice", points = 10,
    description = "Complete all survival modes with the Elegance Liberty.",
    id = 32343, badge = "33134", published = "25/1/2016 07:43:06", modified = "9/8/2020 22:41:15",
    trigger = byte(0x00179A) == 0 && word(0x001796) == 264 &&
              ((bit0(0x0100E0) == 1 && bit0(0x0100EC) == 1 && bit0(0x0100F8) == 1 && bit0(0x010104) == 1) ||
               (bit0(0x010198) == 1 && bit0(0x0101A4) == 1 && bit0(0x0101B0) == 1 && bit0(0x0101BC) == 1))
)

achievement(
    title = "Emerald Of My Eye", points = 10,
    description = "Complete all survival modes with the Panzer Emerald.",
    id = 32342, badge = "33133", published = "25/1/2016 07:43:04", modified = "9/8/2020 22:41:16",
    trigger = byte(0x00179A) == 0 && word(0x001796) == 264 &&
              ((bit7(0x0100DF) == 1 && bit7(0x0100EB) == 1 && bit7(0x0100F7) == 1 && bit7(0x010103) == 1) ||
               (bit7(0x010197) == 1 && bit7(0x0101A3) == 1 && bit7(0x0101AF) == 1 && bit7(0x0101BB) == 1))
)

achievement(
    title = "Blast From The Past", points = 10,
    description = "Complete all survival modes with Ryu's Dragon Bird.",
    id = 32341, badge = "33132", published = "25/1/2016 07:43:03", modified = "9/8/2020 22:41:17",
    trigger = byte(0x00179A) == 0 && word(0x001796) == 264 &&
              ((bit6(0x0100DF) == 1 && bit6(0x0100EB) == 1 && bit6(0x0100F7) == 1 && bit6(0x010103) == 1) ||
               (bit6(0x010197) == 1 && bit6(0x0101A3) == 1 && bit6(0x0101AF) == 1 && bit6(0x0101BB) == 1))
)

achievement(
    title = "Speed Of Wight", points = 10,
    description = "Complete all survival modes with the Sonic Phantom.",
    id = 32340, badge = "33131", published = "25/1/2016 07:43:02", modified = "9/8/2020 22:41:18",
    trigger = byte(0x00179A) == 0 && word(0x001796) == 264 &&
              ((bit5(0x0100DF) == 1 && bit5(0x0100EB) == 1 && bit5(0x0100F7) == 1 && bit5(0x010103) == 1) ||
               (bit5(0x010197) == 1 && bit5(0x0101A3) == 1 && bit5(0x0101AF) == 1 && bit5(0x0101BB) == 1))
)

achievement(
    title = "Falcon Nestling", points = 10,
    description = "Complete all survival modes with Clank's Dragon Bird.",
    id = 32347, badge = "33140", published = "25/1/2016 07:43:12", modified = "9/8/2020 22:41:20",
    trigger = byte(0x00179A) == 0 && word(0x001796) == 264 &&
              ((bit4(0x0100E0) == 1 && bit4(0x0100EC) == 1 && bit4(0x0100F8) == 1 && bit4(0x010104) == 1) ||
               (bit4(0x010198) == 1 && bit4(0x0101A4) == 1 && bit4(0x0101B0) == 1 && bit4(0x0101BC) == 1))
)

achievement(
    title = "Revengeance", points = 10,
    description = "Complete all survival modes with the Green Panther.",
    id = 32338, badge = "33129", published = "25/1/2016 07:42:59", modified = "9/8/2020 22:41:21",
    trigger = byte(0x00179A) == 0 && word(0x001796) == 264 &&
              ((bit3(0x0100DF) == 1 && bit3(0x0100EB) == 1 && bit3(0x0100F7) == 1 && bit3(0x010103) == 1) ||
               (bit3(0x010197) == 1 && bit3(0x0101A3) == 1 && bit3(0x0101AF) == 1 && bit3(0x0101BB) == 1))
)

achievement(
    title = "Skeletor's Lackey", points = 10,
    description = "Complete all survival modes with the Hyper Speeder.",
    id = 32337, badge = "33128", published = "25/1/2016 07:42:57", modified = "9/8/2020 22:41:22",
    trigger = byte(0x00179A) == 0 && word(0x001796) == 264 &&
              ((bit2(0x0100DF) == 1 && bit2(0x0100EB) == 1 && bit2(0x0100F7) == 1 && bit2(0x010103) == 1) ||
               (bit2(0x010197) == 1 && bit2(0x0101A3) == 1 && bit2(0x0101AF) == 1 && bit2(0x0101BB) == 1))
)

achievement(
    title = "Enthusiastic Fanboy", points = 10,
    description = "Complete all survival modes with the Mighty Typhoon.",
    id = 32336, badge = "33127", published = "25/1/2016 07:42:56", modified = "9/8/2020 22:41:23",
    trigger = byte(0x00179A) == 0 && word(0x001796) == 264 &&
              ((bit1(0x0100DF) == 1 && bit1(0x0100EB) == 1 && bit1(0x0100F7) == 1 && bit1(0x010103) == 1) ||
               (bit1(0x010197) == 1 && bit1(0x0101A3) == 1 && bit1(0x0101AF) == 1 && bit1(0x0101BB) == 1))
)

achievement(
    title = "Just A Werewolf Fisherman", points = 10,
    description = "Complete all survival modes with the Space Angler.",
    id = 32335, badge = "33102", published = "25/1/2016 07:42:55", modified = "9/8/2020 22:41:24",
    trigger = byte(0x00179A) == 0 && word(0x001796) == 264 &&
              ((bit0(0x0100DF) == 1 && bit0(0x0100EB) == 1 && bit0(0x0100F7) == 1 && bit0(0x010103) == 1) ||
               (bit0(0x010197) == 1 && bit0(0x0101A3) == 1 && bit0(0x0101AF) == 1 && bit0(0x0101BB) == 1))
)

achievement(
    title = "Delivery Of Defeat For Everybody", points = 10,
    description = "Complete all survival modes with the Mighty Hurricane.",
    id = 32334, badge = "33099", published = "25/1/2016 07:42:53", modified = "9/8/2020 22:41:25",
    trigger = byte(0x00179A) == 0 && word(0x001796) == 264 &&
              ((bit7(0x0100DE) == 1 && bit7(0x0100EA) == 1 && bit7(0x0100F6) == 1 && bit7(0x010102) == 1) ||
               (bit7(0x010196) == 1 && bit7(0x0101A2) == 1 && bit7(0x0101AE) == 1 && bit7(0x0101BA) == 1))
)

achievement(
    title = "Ferocious In Packs", points = 10,
    description = "Complete all survival modes with the Super Piranha.",
    id = 32333, badge = "33098", published = "25/1/2016 07:42:51", modified = "9/8/2020 22:41:27",
    trigger = byte(0x00179A) == 0 && word(0x001796) == 264 &&
              ((bit6(0x0100DE) == 1 && bit6(0x0100EA) == 1 && bit6(0x0100F6) == 1 && bit6(0x010102) == 1) ||
               (bit6(0x010196) == 1 && bit6(0x0101A2) == 1 && bit6(0x0101AE) == 1 && bit6(0x0101BA) == 1))
)

achievement(
    title = "Can Turn His Car 360 Degrees", points = 10,
    description = "Complete all survival modes with the King Meteor.",
    id = 32332, badge = "33096", published = "25/1/2016 07:42:49", modified = "9/8/2020 22:41:28",
    trigger = byte(0x00179A) == 0 && word(0x001796) == 264 &&
              ((bit5(0x0100DE) == 1 && bit5(0x0100EA) == 1 && bit5(0x0100F6) == 1 && bit5(0x010102) == 1) ||
               (bit5(0x010196) == 1 && bit5(0x0101A2) == 1 && bit5(0x0101AE) == 1 && bit5(0x0101BA) == 1))
)

achievement(
    title = "Wild And Crazy Thug", points = 10,
    description = "Complete all survival modes with the Wild Boar.",
    id = 32331, badge = "33094", published = "25/1/2016 07:42:47", modified = "9/8/2020 22:41:30",
    trigger = byte(0x00179A) == 0 && word(0x001796) == 264 &&
              ((bit4(0x0100DE) == 1 && bit4(0x0100EA) == 1 && bit4(0x0100F6) == 1 && bit4(0x010102) == 1) ||
               (bit4(0x010196) == 1 && bit4(0x0101A2) == 1 && bit4(0x0101AE) == 1 && bit4(0x0101BA) == 1))
)

achievement(
    title = "Cheating And Stealing", points = 10,
    description = "Complete all survivals mode with the Death Anchor.",
    id = 32330, badge = "33093", published = "25/1/2016 07:42:46", modified = "9/8/2020 22:41:31",
    trigger = byte(0x00179A) == 0 && word(0x001796) == 264 &&
              ((bit3(0x0100DE) == 1 && bit3(0x0100EA) == 1 && bit3(0x0100F6) == 1 && bit3(0x010102) == 1) ||
               (bit3(0x010196) == 1 && bit3(0x0101A2) == 1 && bit3(0x0101AE) == 1 && bit3(0x0101BA) == 1))
)

achievement(
    title = "The Big Four", points = 1,
    description = "This is the test.",
    id = 32389, badge = "00083", published = "25/1/2016 21:15:45", modified = "25/1/2016 21:16:00",
    trigger = word(0x00170A) == 10 && word(0x00170A) == 10 && word(0x00170A) == 10 && word(0x00170A) == 10 && 
              word(0x00170A) == 10 && word(0x00170A) == 10 && word(0x00170A) == 10 && word(0x00170A) == 10 && 
              word(0x00170A) == 10 && word(0x00170A) == 10 && word(0x00170A) == 10 && word(0x00170A) == 10 && 
              word(0x00170A) == 10 && word(0x00170A) == 10 && word(0x00170A) == 10 && word(0x00170A) == 10 && 
              word(0x00170A) == 10 && word(0x00170A) == 10 && word(0x00170A) == 10 && word(0x00170A) == 10 && 
              word(0x00170A) == 10 && word(0x00170A) == 10 && word(0x00170A) == 10 && word(0x00170A) == 10 && 
              word(0x00170A) == 10 && word(0x00170A) == 10 && word(0x00170A) == 10 && word(0x00170A) == 10 && 
              word(0x00170A) == 10 && word(0x00170A) == 10 && word(0x00170A) == 10 && word(0x00170A) == 10 && 
              word(0x00170A) == 10 && word(0x00170A) == 10 && word(0x00170A) == 10 && word(0x00170A) == 10 && 
              word(0x00170A) == 10 && word(0x00170A) == 10 && word(0x00170A) == 10 && word(0x00170A) == 10 && 
              word(0x00170A) == 10 && word(0x00170A) == 10 && word(0x00170A) == 10 && word(0x00170A) == 10 && 
              word(0x00170A) == 10 && word(0x00170A) == 10 && word(0x00170A) == 10 && word(0x00170A) == 10 && 
              word(0x00170A) == 10 && word(0x00170A) == 10 && word(0x00170A) == 10 && word(0x00170A) == 10 && 
              word(0x00170A) == 10 && word(0x00170A) == 10 && word(0x00170A) == 10 && word(0x00170A) == 10 && 
              word(0x00170A) == 10 && word(0x00170A) == 10 && word(0x00170A) == 10 && word(0x00170A) == 10
)

achievement(
    title = "The Big Three", points = 1,
    description = "This is yet another test.",
    id = 32388, badge = "00083", published = "25/1/2016 21:15:32", modified = "25/1/2016 21:15:59",
    trigger = word(0x00170A) == 10 && word(0x00170A) == 10 && word(0x00170A) == 10 && word(0x00170A) == 10 && 
              word(0x00170A) == 10 && word(0x00170A) == 10 && word(0x00170A) == 10 && word(0x00170A) == 10 && 
              word(0x00170A) == 10 && word(0x00170A) == 10 && word(0x00170A) == 10 && word(0x00170A) == 10 && 
              word(0x00170A) == 10 && word(0x00170A) == 10 && word(0x00170A) == 10 && word(0x00170A) == 10 && 
              word(0x00170A) == 10 && word(0x00170A) == 10 && word(0x00170A) == 10 && word(0x00170A) == 10 && 
              word(0x00170A) == 10 && word(0x00170A) == 10 && word(0x00170A) == 10 && word(0x00170A) == 10 && 
              word(0x00170A) == 10 && word(0x00170A) == 10 && word(0x00170A) == 10 && word(0x00170A) == 10 && 
              word(0x00170A) == 10 && word(0x00170A) == 10 && word(0x00170A) == 10 && word(0x00170A) == 10 && 
              word(0x00170A) == 10 && word(0x00170A) == 10 && word(0x00170A) == 10 && word(0x00170A) == 10 && 
              word(0x00170A) == 10 && word(0x00170A) == 10 && word(0x00170A) == 10 && word(0x00170A) == 10 && 
              word(0x00170A) == 10 && word(0x00170A) == 10 && word(0x00170A) == 10 && word(0x00170A) == 10 && 
              word(0x00170A) == 10 && word(0x00170A) == 10 && word(0x00170A) == 10 && word(0x00170A) == 10 && 
              word(0x00170A) == 10 && word(0x00170A) == 10 && word(0x00170A) == 10 && word(0x00170A) == 10 && 
              word(0x00170A) == 10 && word(0x00170A) == 10 && word(0x00170A) == 10 && word(0x00170A) == 10 && 
              word(0x00170A) == 10 && word(0x00170A) == 10 && word(0x00170A) == 10 && word(0x00170A) == 10
)

achievement(
    title = "The Big Two", points = 1,
    description = "This is another test.",
    id = 32387, badge = "00083", published = "25/1/2016 21:15:28", modified = "25/1/2016 21:15:59",
    trigger = word(0x00170A) == 10 && word(0x00170A) == 10 && word(0x00170A) == 10 && word(0x00170A) == 10 && 
              word(0x00170A) == 10 && word(0x00170A) == 10 && word(0x00170A) == 10 && word(0x00170A) == 10 && 
              word(0x00170A) == 10 && word(0x00170A) == 10 && word(0x00170A) == 10 && word(0x00170A) == 10 && 
              word(0x00170A) == 10 && word(0x00170A) == 10 && word(0x00170A) == 10 && word(0x00170A) == 10 && 
              word(0x00170A) == 10 && word(0x00170A) == 10 && word(0x00170A) == 10 && word(0x00170A) == 10 && 
              word(0x00170A) == 10 && word(0x00170A) == 10 && word(0x00170A) == 10 && word(0x00170A) == 10 && 
              word(0x00170A) == 10 && word(0x00170A) == 10 && word(0x00170A) == 10 && word(0x00170A) == 10 && 
              word(0x00170A) == 10 && word(0x00170A) == 10 && word(0x00170A) == 10 && word(0x00170A) == 10 && 
              word(0x00170A) == 10 && word(0x00170A) == 10 && word(0x00170A) == 10 && word(0x00170A) == 10 && 
              word(0x00170A) == 10 && word(0x00170A) == 10 && word(0x00170A) == 10 && word(0x00170A) == 10 && 
              word(0x00170A) == 10 && word(0x00170A) == 10 && word(0x00170A) == 10 && word(0x00170A) == 10 && 
              word(0x00170A) == 10 && word(0x00170A) == 10 && word(0x00170A) == 10 && word(0x00170A) == 10 && 
              word(0x00170A) == 10 && word(0x00170A) == 10 && word(0x00170A) == 10 && word(0x00170A) == 10 && 
              word(0x00170A) == 10 && word(0x00170A) == 10 && word(0x00170A) == 10 && word(0x00170A) == 10 && 
              word(0x00170A) == 10 && word(0x00170A) == 10 && word(0x00170A) == 10 && word(0x00170A) == 10
)

achievement(
    title = "The Big One", points = 1,
    description = "This is a test.",
    id = 32386, badge = "00083", published = "25/1/2016 21:15:26", modified = "25/1/2016 21:15:57",
    trigger = word(0x00170A) == 10 && word(0x00170A) == 10 && word(0x00170A) == 10 && word(0x00170A) == 10 && 
              word(0x00170A) == 10 && word(0x00170A) == 10 && word(0x00170A) == 10 && word(0x00170A) == 10 && 
              word(0x00170A) == 10 && word(0x00170A) == 10 && word(0x00170A) == 10 && word(0x00170A) == 10 && 
              word(0x00170A) == 10 && word(0x00170A) == 10 && word(0x00170A) == 10 && word(0x00170A) == 10 && 
              word(0x00170A) == 10 && word(0x00170A) == 10 && word(0x00170A) == 10 && word(0x00170A) == 10 && 
              word(0x00170A) == 10 && word(0x00170A) == 10 && word(0x00170A) == 10 && word(0x00170A) == 10 && 
              word(0x00170A) == 10 && word(0x00170A) == 10 && word(0x00170A) == 10 && word(0x00170A) == 10 && 
              word(0x00170A) == 10 && word(0x00170A) == 10 && word(0x00170A) == 10 && word(0x00170A) == 10 && 
              word(0x00170A) == 10 && word(0x00170A) == 10 && word(0x00170A) == 10 && word(0x00170A) == 10 && 
              word(0x00170A) == 10 && word(0x00170A) == 10 && word(0x00170A) == 10 && word(0x00170A) == 10 && 
              word(0x00170A) == 10 && word(0x00170A) == 10 && word(0x00170A) == 10 && word(0x00170A) == 10 && 
              word(0x00170A) == 10 && word(0x00170A) == 10 && word(0x00170A) == 10 && word(0x00170A) == 10 && 
              word(0x00170A) == 10 && word(0x00170A) == 10 && word(0x00170A) == 10 && word(0x00170A) == 10 && 
              word(0x00170A) == 10 && word(0x00170A) == 10 && word(0x00170A) == 10 && word(0x00170A) == 10 && 
              word(0x00170A) == 10 && word(0x00170A) == 10 && word(0x00170A) == 10 && word(0x00170A) == 10
)

leaderboard(
    id = 1307, title = "Standard Bronze Grand Prix",
    description = "Get the best total time across all tracks in the Novice or Standard bronze GP.",
    start  = prev(byte(0x00179A)) == 11 && prev(word(0x00C060)) != word(0x00C060) && byte(0x00179C) < 2 && 
             byte(0x001799) == 0 && byte(0x001797) != 1,
    cancel = prev(byte(0x00179D)) < 4,
    submit = prev(byte(0x001799)) == 0 && byte(0x001799) == 6,
    value = word(0x00C050) + word(0x00C054) + word(0x00C058) + word(0x00C05C) + word(0x00C060),
    format = "MILLISECS", lower_is_better = true
)

leaderboard(
    id = 1309, title = "Standard Silver Grand Prix",
    description = "Get the best total time across all tracks in the Novice or Standard silver GP.",
    start  = prev(byte(0x00179A)) == 17 && prev(word(0x00C060)) != word(0x00C060) && byte(0x00179C) < 2 && 
             byte(0x001799) == 0 && byte(0x001797) != 1,
    cancel = prev(byte(0x00179D)) < 4,
    submit = prev(byte(0x001799)) == 0 && byte(0x001799) == 6,
    value = word(0x00C050) + word(0x00C054) + word(0x00C058) + word(0x00C05C) + word(0x00C060),
    format = "MILLISECS", lower_is_better = true
)

leaderboard(
    id = 1310, title = "Standard Gold Grand Prix",
    description = "Get the best total time across all tracks in the Novice or Standard gold GP.",
    start  = prev(byte(0x00179A)) == 18 && prev(word(0x00C060)) != word(0x00C060) && byte(0x00179C) < 2 && 
             byte(0x001799) == 0 && byte(0x001797) != 1,
    cancel = prev(byte(0x00179D)) < 4,
    submit = prev(byte(0x001799)) == 0 && byte(0x001799) == 6,
    value = word(0x00C050) + word(0x00C054) + word(0x00C058) + word(0x00C05C) + word(0x00C060),
    format = "MILLISECS", lower_is_better = true
)

leaderboard(
    id = 1311, title = "Expert Bronze Grand Prix",
    description = "Get the best total time across all tracks in the Expert bronze GP.",
    start  = prev(byte(0x00179A)) == 36 && prev(word(0x00C060)) != word(0x00C060) && byte(0x00179C) == 2 && 
             byte(0x001799) == 0 && byte(0x001797) != 1,
    cancel = prev(byte(0x00179D)) < 4,
    submit = prev(byte(0x001799)) == 0 && byte(0x001799) == 6,
    value = word(0x00C050) + word(0x00C054) + word(0x00C058) + word(0x00C05C) + word(0x00C060),
    format = "MILLISECS", lower_is_better = true
)

leaderboard(
    id = 1312, title = "Expert Silver Grand Prix",
    description = "Get the best total time across all tracks in the Expert silver GP.",
    start  = prev(byte(0x00179A)) == 34 && prev(word(0x00C060)) != word(0x00C060) && byte(0x00179C) == 2 && 
             byte(0x001799) == 0 && byte(0x001797) != 1,
    cancel = prev(byte(0x00179D)) < 4,
    submit = prev(byte(0x001799)) == 0 && byte(0x001799) == 6,
    value = word(0x00C050) + word(0x00C054) + word(0x00C058) + word(0x00C05C) + word(0x00C060),
    format = "MILLISECS", lower_is_better = true
)

leaderboard(
    id = 1313, title = "Expert Gold Grand Prix",
    description = "Get the best total time across all tracks in the Expert gold GP.",
    start  = prev(byte(0x00179A)) == 29 && prev(word(0x00C060)) != word(0x00C060) && byte(0x00179C) == 2 && 
             byte(0x001799) == 0 && byte(0x001797) != 1,
    cancel = prev(byte(0x00179D)) < 4,
    submit = prev(byte(0x001799)) == 0 && byte(0x001799) == 6,
    value = word(0x00C050) + word(0x00C054) + word(0x00C058) + word(0x00C05C) + word(0x00C060),
    format = "MILLISECS", lower_is_better = true
)

leaderboard(
    id = 1314, title = "Master Bronze Grand Prix",
    description = "Get the best total time across all tracks in the Master bronze GP.",
    start  = prev(byte(0x00179A)) == 33 && prev(word(0x00C060)) != word(0x00C060) && byte(0x00179C) == 3 && 
             byte(0x001799) == 0 && byte(0x001797) != 1,
    cancel = prev(byte(0x00179D)) < 4,
    submit = prev(byte(0x001799)) == 0 && byte(0x001799) == 6,
    value = word(0x00C050) + word(0x00C054) + word(0x00C058) + word(0x00C05C) + word(0x00C060),
    format = "MILLISECS", lower_is_better = true
)

leaderboard(
    id = 1315, title = "Master Silver Grand Prix",
    description = "Get the best total time across all tracks in the Master silver GP.",
    start  = prev(byte(0x00179A)) == 39 && prev(word(0x00C060)) != word(0x00C060) && byte(0x00179C) == 3 && 
             byte(0x001799) == 0 && byte(0x001797) != 1,
    cancel = prev(byte(0x00179D)) < 4,
    submit = prev(byte(0x001799)) == 0 && byte(0x001799) == 6,
    value = word(0x00C050) + word(0x00C054) + word(0x00C058) + word(0x00C05C) + word(0x00C060),
    format = "MILLISECS", lower_is_better = true
)

leaderboard(
    id = 1316, title = "Master Gold Grand Prix",
    description = "Get the best total time across all tracks in the Master gold GP.",
    start  = prev(byte(0x00179A)) == 44 && prev(word(0x00C060)) != word(0x00C060) && byte(0x00179C) == 3 && 
             byte(0x001799) == 0 && byte(0x001797) != 1,
    cancel = prev(byte(0x00179D)) < 4,
    submit = prev(byte(0x001799)) == 0 && byte(0x001799) == 6,
    value = word(0x00C050) + word(0x00C054) + word(0x00C058) + word(0x00C05C) + word(0x00C060),
    format = "MILLISECS", lower_is_better = true
)

leaderboard(
    id = 1317, title = "Platinum Grand Prix",
    description = "Get the best total time across all tracks in the Platinum GP.",
    start  = prev(byte(0x00179A)) == 85 && prev(word(0x00C06C)) != word(0x00C06C) && byte(0x00179B) == 3 && 
             byte(0x001799) == 0 && byte(0x001797) != 1,
    cancel = prev(byte(0x00179D)) < 7,
    submit = prev(byte(0x001799)) == 0 && byte(0x001799) == 6,
    value = word(0x00C050) + word(0x00C054) + word(0x00C058) + word(0x00C05C) + word(0x00C060) + word(0x00C064) + word(0x00C068) + word(0x00C06C),
    format = "MILLISECS", lower_is_better = true
)

leaderboard(
    id = 1320, title = "Survival Tour",
    description = "Complete Tour mode with the fastest total time.",
    start  = prev(byte(0x001799)) == 0 && byte(0x001799) == 1 && prev(byte(0x00179D)) == 4 && byte(0x00179C) == 0 && 
             word(0x0017B4) != 0,
    cancel = byte(0x001799) != 1,
    submit = byte(0x001799) == 1,
    value = bit7(0x0017B4) * 100 + bit0(0x0017B4) + bit1(0x0017B4) * 2 + bit2(0x0017B4) * 4 + bit3(0x0017B4) * 8 + bit4(0x0017B4) * 16 + bit5(0x0017B4) * 32 + bit6(0x0017B4) * 64 + bit0(0x0017B5) * 200 + bit1(0x0017B5) * 400 + bit2(0x0017B5) * 800 + bit3(0x0017B5) * 1600 + bit4(0x0017B5) * 3200 + bit5(0x0017B5) * 6000 + bit6(0x0017B5) * 12000 + bit7(0x0017B5) * 24000 + byte(0x0017B6) * 48000,
    format = "MILLISECS", lower_is_better = true
)

leaderboard(
    id = 1321, title = "Survival Challenge",
    description = "Complete Challenge mode with the fastest total time.",
    start  = prev(byte(0x001799)) == 0 && byte(0x001799) == 1 && prev(byte(0x00179D)) == 7 && byte(0x00179C) == 1 && 
             word(0x0017B4) != 0,
    cancel = byte(0x001799) != 1,
    submit = byte(0x001799) == 1,
    value = bit7(0x0017B4) * 100 + bit0(0x0017B4) + bit1(0x0017B4) * 2 + bit2(0x0017B4) * 4 + bit3(0x0017B4) * 8 + bit4(0x0017B4) * 16 + bit5(0x0017B4) * 32 + bit6(0x0017B4) * 64 + bit0(0x0017B5) * 200 + bit1(0x0017B5) * 400 + bit2(0x0017B5) * 800 + bit3(0x0017B5) * 1600 + bit4(0x0017B5) * 3200 + bit5(0x0017B5) * 6000 + bit6(0x0017B5) * 12000 + bit7(0x0017B5) * 24000 + byte(0x0017B6) * 48000,
    format = "MILLISECS", lower_is_better = true
)

leaderboard(
    id = 1322, title = "Survival Battle",
    description = "Complete Battle mode with the fastest total time.",
    start  = prev(byte(0x001799)) == 0 && byte(0x001799) == 1 && prev(byte(0x00179D)) == 9 && byte(0x00179C) == 2 && 
             word(0x0017B4) != 0,
    cancel = byte(0x001799) != 1,
    submit = byte(0x001799) == 1,
    value = bit7(0x0017B4) * 100 + bit0(0x0017B4) + bit1(0x0017B4) * 2 + bit2(0x0017B4) * 4 + bit3(0x0017B4) * 8 + bit4(0x0017B4) * 16 + bit5(0x0017B4) * 32 + bit6(0x0017B4) * 64 + bit0(0x0017B5) * 200 + bit1(0x0017B5) * 400 + bit2(0x0017B5) * 800 + bit3(0x0017B5) * 1600 + bit4(0x0017B5) * 3200 + bit5(0x0017B5) * 6000 + bit6(0x0017B5) * 12000 + bit7(0x0017B5) * 24000 + byte(0x0017B6) * 48000,
    format = "MILLISECS", lower_is_better = true
)

leaderboard(
    id = 1323, title = "Survival Violence",
    description = "Complete Violence mode with the fastest total time.",
    start  = prev(byte(0x001799)) == 11 && byte(0x001799) == 1 && prev(byte(0x00179D)) == 11 && byte(0x00179C) == 3 && 
             word(0x0017B4) != 0,
    cancel = byte(0x001799) != 1,
    submit = byte(0x001799) == 1,
    value = bit7(0x0017B4) * 100 + bit0(0x0017B4) + bit1(0x0017B4) * 2 + bit2(0x0017B4) * 4 + bit3(0x0017B4) * 8 + bit4(0x0017B4) * 16 + bit5(0x0017B4) * 32 + bit6(0x0017B4) * 64 + bit0(0x0017B5) * 200 + bit1(0x0017B5) * 400 + bit2(0x0017B5) * 800 + bit3(0x0017B5) * 1600 + bit4(0x0017B5) * 3200 + bit5(0x0017B5) * 6000 + bit6(0x0017B5) * 12000 + bit7(0x0017B5) * 24000 + byte(0x0017B6) * 48000,
    format = "MILLISECS", lower_is_better = true
)

leaderboard(
    id = 1324, title = "Championship",
    description = "Get the best time on Championship in Time Attack.",
    start  = byte(0x00179A) == 45 && byte(0x001799) == 5 && prev(word(0x01D534)) != word(0x01D534) && word(0x01D534) !=
              0,
    cancel = byte(0x001799) != 5,
    submit = byte(0x001797) == 16,
    value = word(0x01D534),
    format = "MILLISECS", lower_is_better = true
)

leaderboard(
    id = 1325, title = "Six Carat",
    description = "Get the best time on Six Carat in Time Attack",
    start  = byte(0x00179A) == 46 && byte(0x001799) == 5 && prev(word(0x01D534)) != word(0x01D534) && word(0x01D534) !=
              0,
    cancel = byte(0x001799) != 5,
    submit = byte(0x001797) == 16,
    value = word(0x01D534),
    format = "MILLISECS", lower_is_better = true
)

leaderboard(
    id = 1326, title = "High Speed Edge",
    description = "Get the best time on High Speed Edge in Time Attack",
    start  = byte(0x00179A) == 1 && byte(0x001799) == 5 && prev(word(0x01D534)) != word(0x01D534) && word(0x01D534) != 0,
    cancel = byte(0x001799) != 5,
    submit = byte(0x001797) == 16,
    value = word(0x01D534),
    format = "MILLISECS", lower_is_better = true
)

leaderboard(
    id = 1327, title = "Sky Highway",
    description = "Get the best time on Sky Highway in Time Attack",
    start  = byte(0x00179A) == 2 && byte(0x001799) == 5 && prev(word(0x01D534)) != word(0x01D534) && word(0x01D534) != 0,
    cancel = byte(0x001799) != 5,
    submit = byte(0x001797) == 16,
    value = word(0x01D534),
    format = "MILLISECS", lower_is_better = true
)

leaderboard(
    id = 1328, title = "Wolf",
    description = "Get the best time on Wolf in Time Attack",
    start  = byte(0x00179A) == 8 && byte(0x001799) == 5 && prev(word(0x01D534)) != word(0x01D534) && word(0x01D534) != 0,
    cancel = byte(0x001799) != 5,
    submit = byte(0x001797) == 16,
    value = word(0x01D534),
    format = "MILLISECS", lower_is_better = true
)

leaderboard(
    id = 1329, title = "Heat Circuit",
    description = "Get the best time on Heat Circuit in Time Attack",
    start  = byte(0x00179A) == 11 && byte(0x001799) == 5 && prev(word(0x01D534)) != word(0x01D534) && word(0x01D534) !=
              0,
    cancel = byte(0x001799) != 5,
    submit = byte(0x001797) == 16,
    value = word(0x01D534),
    format = "MILLISECS", lower_is_better = true
)

leaderboard(
    id = 1330, title = "Eight Carat",
    description = "Get the best time on Eight Carat in Time Attack",
    start  = byte(0x00179A) == 47 && byte(0x001799) == 5 && prev(word(0x01D534)) != word(0x01D534) && word(0x01D534) !=
              0,
    cancel = byte(0x001799) != 5,
    submit = byte(0x001797) == 16,
    value = word(0x01D534),
    format = "MILLISECS", lower_is_better = true
)

leaderboard(
    id = 1331, title = "White Wolf",
    description = "Get the best time on White Wolf in Time Attack",
    start  = byte(0x00179A) == 10 && byte(0x001799) == 5 && prev(word(0x01D534)) != word(0x01D534) && word(0x01D534) !=
              0,
    cancel = byte(0x001799) != 5,
    submit = byte(0x001797) == 16,
    value = word(0x01D534),
    format = "MILLISECS", lower_is_better = true
)

leaderboard(
    id = 1332, title = "Arch Hill",
    description = "Get the best time on Arch Hill in Time Attack",
    start  = byte(0x00179A) == 20 && byte(0x001799) == 5 && prev(word(0x01D534)) != word(0x01D534) && word(0x01D534) !=
              0,
    cancel = byte(0x001799) != 5,
    submit = byte(0x001797) == 16,
    value = word(0x01D534),
    format = "MILLISECS", lower_is_better = true
)

leaderboard(
    id = 1333, title = "Sky Highway II",
    description = "Get the best time on Sky Highway II in Time Attack",
    start  = byte(0x00179A) == 32 && byte(0x001799) == 5 && prev(word(0x01D534)) != word(0x01D534) && word(0x01D534) !=
              0,
    cancel = byte(0x001799) != 5,
    submit = byte(0x001797) == 16,
    value = word(0x01D534),
    format = "MILLISECS", lower_is_better = true
)

leaderboard(
    id = 1334, title = "Inside Out II",
    description = "Get the best time on Inside Out II in Time Attack",
    start  = byte(0x00179A) == 36 && byte(0x001799) == 5 && prev(word(0x01D534)) != word(0x01D534) && word(0x01D534) !=
              0,
    cancel = byte(0x001799) != 5,
    submit = byte(0x001797) == 16,
    value = word(0x01D534),
    format = "MILLISECS", lower_is_better = true
)

leaderboard(
    id = 1335, title = "Barrel Roll",
    description = "Get the best time on Barrel Roll in Time Attack",
    start  = byte(0x00179A) == 52 && byte(0x001799) == 5 && prev(word(0x01D534)) != word(0x01D534) && word(0x01D534) !=
              0,
    cancel = byte(0x001799) != 5,
    submit = byte(0x001797) == 16,
    value = word(0x01D534),
    format = "MILLISECS", lower_is_better = true
)

leaderboard(
    id = 1336, title = "High Speed Edge III",
    description = "Get the best time on High Speed Edge III",
    start  = byte(0x00179A) == 31 && byte(0x001799) == 5 && prev(word(0x01D534)) != word(0x01D534) && word(0x01D534) !=
              0,
    cancel = byte(0x001799) != 5,
    submit = byte(0x001797) == 16,
    value = word(0x01D534),
    format = "MILLISECS", lower_is_better = true
)

leaderboard(
    id = 1337, title = "G Trace",
    description = "Get the best time on G Trace in Time Attack.",
    start  = byte(0x00179A) == 25 && byte(0x001799) == 5 && prev(word(0x01D534)) != word(0x01D534) && word(0x01D534) !=
              0,
    cancel = byte(0x001799) != 5,
    submit = byte(0x001797) == 16,
    value = word(0x01D534),
    format = "MILLISECS", lower_is_better = true
)

leaderboard(
    id = 1338, title = "Ten Carat",
    description = "Get the best time on Ten Carat in Time Attack",
    start  = byte(0x00179A) == 48 && byte(0x001799) == 5 && prev(word(0x01D534)) != word(0x01D534) && word(0x01D534) !=
              0,
    cancel = byte(0x001799) != 5,
    submit = byte(0x001797) == 16,
    value = word(0x01D534),
    format = "MILLISECS", lower_is_better = true
)

leaderboard(
    id = 1339, title = "Last Wolf",
    description = "Get the best time on Last Wolf in Time Attack",
    start  = byte(0x00179A) == 33 && byte(0x001799) == 5 && prev(word(0x01D534)) != word(0x01D534) && word(0x01D534) !=
              0,
    cancel = byte(0x001799) != 5,
    submit = byte(0x001797) == 16,
    value = word(0x01D534),
    format = "MILLISECS", lower_is_better = true
)

leaderboard(
    id = 1340, title = "Slalom",
    description = "Get the best time on Slalom in Time Attack",
    start  = byte(0x00179A) == 9 && byte(0x001799) == 5 && prev(word(0x01D534)) != word(0x01D534) && word(0x01D534) != 0,
    cancel = byte(0x001799) != 5,
    submit = byte(0x001797) == 16,
    value = word(0x01D534),
    format = "MILLISECS", lower_is_better = true
)

leaderboard(
    id = 1341, title = "Inside Out",
    description = "Get the best time on Inside Out in Time Attack",
    start  = byte(0x00179A) == 13 && byte(0x001799) == 5 && prev(word(0x01D534)) != word(0x01D534) && word(0x01D534) !=
              0,
    cancel = byte(0x001799) != 5,
    submit = byte(0x001797) == 16,
    value = word(0x01D534),
    format = "MILLISECS", lower_is_better = true
)

leaderboard(
    id = 1342, title = "Double Link",
    description = "Get the best time on Double Link in Time Attack",
    start  = byte(0x00179A) == 12 && byte(0x001799) == 5 && prev(word(0x01D534)) != word(0x01D534) && word(0x01D534) !=
              0,
    cancel = byte(0x001799) != 5,
    submit = byte(0x001797) == 16,
    value = word(0x01D534),
    format = "MILLISECS", lower_is_better = true
)

leaderboard(
    id = 1343, title = "Front Line",
    description = "Get the best time on Front Line in Time Attack",
    start  = byte(0x00179A) == 14 && byte(0x001799) == 5 && prev(word(0x01D534)) != word(0x01D534) && word(0x01D534) !=
              0,
    cancel = byte(0x001799) != 5,
    submit = byte(0x001797) == 16,
    value = word(0x01D534),
    format = "MILLISECS", lower_is_better = true
)

leaderboard(
    id = 1344, title = "Nightmare",
    description = "Get the best time on Nightmare in Time Attack",
    start  = byte(0x00179A) == 17 && byte(0x001799) == 5 && prev(word(0x01D534)) != word(0x01D534) && word(0x01D534) !=
              0,
    cancel = byte(0x001799) != 5,
    submit = byte(0x001797) == 16,
    value = word(0x01D534),
    format = "MILLISECS", lower_is_better = true
)

leaderboard(
    id = 1345, title = "High Speed Edge II",
    description = "Get the best time on High Speed Edge II in Time Attack",
    start  = byte(0x00179A) == 5 && byte(0x001799) == 5 && prev(word(0x01D534)) != word(0x01D534) && word(0x01D534) != 0,
    cancel = byte(0x001799) != 5,
    submit = byte(0x001797) == 16,
    value = word(0x01D534),
    format = "MILLISECS", lower_is_better = true
)

leaderboard(
    id = 1346, title = "Trust Jump",
    description = "Get the best time on Trust Jump in Time Attack",
    start  = byte(0x00179A) == 57 && byte(0x001799) == 5 && prev(word(0x01D534)) != word(0x01D534) && word(0x01D534) !=
              0,
    cancel = byte(0x001799) != 5,
    submit = byte(0x001797) == 16,
    value = word(0x01D534),
    format = "MILLISECS", lower_is_better = true
)

leaderboard(
    id = 1347, title = "Mist Ring",
    description = "Get the best time on Mist Ring in Time Attack",
    start  = byte(0x00179A) == 22 && byte(0x001799) == 5 && prev(word(0x01D534)) != word(0x01D534) && word(0x01D534) !=
              0,
    cancel = byte(0x001799) != 5,
    submit = byte(0x001797) == 16,
    value = word(0x01D534),
    format = "MILLISECS", lower_is_better = true
)

leaderboard(
    id = 1348, title = "Cactus Circuit",
    description = "Get the best time on Cactus Circuit in Time Attack",
    start  = byte(0x00179A) == 50 && byte(0x001799) == 5 && prev(word(0x01D534)) != word(0x01D534) && word(0x01D534) !=
              0,
    cancel = byte(0x001799) != 5,
    submit = byte(0x001797) == 16,
    value = word(0x01D534),
    format = "MILLISECS", lower_is_better = true
)

leaderboard(
    id = 1349, title = "Burnt Out Rink",
    description = "Get the best time on Burnt Out Rink in Time Attack",
    start  = byte(0x00179A) == 34 && byte(0x001799) == 5 && prev(word(0x01D534)) != word(0x01D534) && word(0x01D534) !=
              0,
    cancel = byte(0x001799) != 5,
    submit = byte(0x001797) == 16,
    value = word(0x01D534),
    format = "MILLISECS", lower_is_better = true
)

leaderboard(
    id = 1350, title = "Cactus Circuit II",
    description = "Get the best time on Cactus Circuit II in Time Attack",
    start  = byte(0x00179A) == 51 && byte(0x001799) == 5 && prev(word(0x01D534)) != word(0x01D534) && word(0x01D534) !=
              0,
    cancel = byte(0x001799) != 5,
    submit = byte(0x001797) == 16,
    value = word(0x01D534),
    format = "MILLISECS", lower_is_better = true
)

leaderboard(
    id = 1351, title = "Puzzle Ring",
    description = "Get the best time on Puzzle Ring in Time Attack",
    start  = byte(0x00179A) == 37 && byte(0x001799) == 5 && prev(word(0x01D534)) != word(0x01D534) && word(0x01D534) !=
              0,
    cancel = byte(0x001799) != 5,
    submit = byte(0x001797) == 16,
    value = word(0x01D534),
    format = "MILLISECS", lower_is_better = true
)

leaderboard(
    id = 1352, title = "Loss Landing",
    description = "Get the best time on Loss Landing in Time Attack",
    start  = byte(0x00179A) == 56 && byte(0x001799) == 5 && prev(word(0x01D534)) != word(0x01D534) && word(0x01D534) !=
              0,
    cancel = byte(0x001799) != 5,
    submit = byte(0x001797) == 16,
    value = word(0x01D534),
    format = "MILLISECS", lower_is_better = true
)

leaderboard(
    id = 1353, title = "Front Line II",
    description = "Get the best time on Front Line II in Time Attack",
    start  = byte(0x00179A) == 38 && byte(0x001799) == 5 && prev(word(0x01D534)) != word(0x01D534) && word(0x01D534) !=
              0,
    cancel = byte(0x001799) != 5,
    submit = byte(0x001797) == 16,
    value = word(0x01D534),
    format = "MILLISECS", lower_is_better = true
)

leaderboard(
    id = 1354, title = "Nightmare One",
    description = "Get the best time on Nightmare One in Time Attack",
    start  = byte(0x00179A) == 39 && byte(0x001799) == 5 && prev(word(0x01D534)) != word(0x01D534) && word(0x01D534) !=
              0,
    cancel = byte(0x001799) != 5,
    submit = byte(0x001797) == 16,
    value = word(0x01D534),
    format = "MILLISECS", lower_is_better = true
)

leaderboard(
    id = 1355, title = "R Trace",
    description = "Get the best time on R Trace in Time Attack",
    start  = byte(0x00179A) == 6 && byte(0x001799) == 5 && prev(word(0x01D534)) != word(0x01D534) && word(0x01D534) != 0,
    cancel = byte(0x001799) != 5,
    submit = byte(0x001797) == 16,
    value = word(0x01D534),
    format = "MILLISECS", lower_is_better = true
)

leaderboard(
    id = 1356, title = "Half Dome",
    description = "Get the best time on Half Dome in Time Attack",
    start  = byte(0x00179A) == 15 && byte(0x001799) == 5 && prev(word(0x01D534)) != word(0x01D534) && word(0x01D534) !=
              0,
    cancel = byte(0x001799) != 5,
    submit = byte(0x001797) == 16,
    value = word(0x01D534),
    format = "MILLISECS", lower_is_better = true
)

leaderboard(
    id = 1357, title = "Key Break",
    description = "Get the best time on Key Break in Time Attack",
    start  = byte(0x00179A) == 4 && byte(0x001799) == 5 && prev(word(0x01D534)) != word(0x01D534) && word(0x01D534) != 0,
    cancel = byte(0x001799) != 5,
    submit = byte(0x001797) == 16,
    value = word(0x01D534),
    format = "MILLISECS", lower_is_better = true
)

leaderboard(
    id = 1358, title = "Slip Down",
    description = "Get the best time on Slip Down in Time Attack",
    start  = byte(0x00179A) == 19 && byte(0x001799) == 5 && prev(word(0x01D534)) != word(0x01D534) && word(0x01D534) !=
              0,
    cancel = byte(0x001799) != 5,
    submit = byte(0x001797) == 16,
    value = word(0x01D534),
    format = "MILLISECS", lower_is_better = true
)

leaderboard(
    id = 1359, title = "Lost Way",
    description = "Get the best time on Lost Way in Time Attack",
    start  = byte(0x00179A) == 18 && byte(0x001799) == 5 && prev(word(0x01D534)) != word(0x01D534) && word(0x01D534) !=
              0,
    cancel = byte(0x001799) != 5,
    submit = byte(0x001797) == 16,
    value = word(0x01D534),
    format = "MILLISECS", lower_is_better = true
)

leaderboard(
    id = 1360, title = "Hornet",
    description = "Get the best time on Hornet in Time Attack",
    start  = byte(0x00179A) == 53 && byte(0x001799) == 5 && prev(word(0x01D534)) != word(0x01D534) && word(0x01D534) !=
              0,
    cancel = byte(0x001799) != 5,
    submit = byte(0x001797) == 16,
    value = word(0x01D534),
    format = "MILLISECS", lower_is_better = true
)

leaderboard(
    id = 1361, title = "Nightmare Fear",
    description = "Get the best time on Nightmare Fear in Time Attack",
    start  = byte(0x00179A) == 24 && byte(0x001799) == 5 && prev(word(0x01D534)) != word(0x01D534) && word(0x01D534) !=
              0,
    cancel = byte(0x001799) != 5,
    submit = byte(0x001797) == 16,
    value = word(0x01D534),
    format = "MILLISECS", lower_is_better = true
)

leaderboard(
    id = 1362, title = "Single Course",
    description = "Get the best time on Single Course in Time Attack",
    start  = byte(0x00179A) == 28 && byte(0x001799) == 5 && prev(word(0x01D534)) != word(0x01D534) && word(0x01D534) !=
              0,
    cancel = byte(0x001799) != 5,
    submit = byte(0x001797) == 16,
    value = word(0x01D534),
    format = "MILLISECS", lower_is_better = true
)

leaderboard(
    id = 1363, title = "Key Break II",
    description = "Get the best time on Key Break II in Time Attack",
    start  = byte(0x00179A) == 27 && byte(0x001799) == 5 && prev(word(0x01D534)) != word(0x01D534) && word(0x01D534) !=
              0,
    cancel = byte(0x001799) != 5,
    submit = byte(0x001797) == 16,
    value = word(0x01D534),
    format = "MILLISECS", lower_is_better = true
)

leaderboard(
    id = 1364, title = "Lost Way II",
    description = "Get the best time on Lost Way II in Time Attack",
    start  = byte(0x00179A) == 29 && byte(0x001799) == 5 && prev(word(0x01D534)) != word(0x01D534) && word(0x01D534) !=
              0,
    cancel = byte(0x001799) != 5,
    submit = byte(0x001797) == 16,
    value = word(0x01D534),
    format = "MILLISECS", lower_is_better = true
)

leaderboard(
    id = 1365, title = "Half Dome II",
    description = "Get the best time on Half Dome II in Time Attack",
    start  = byte(0x00179A) == 41 && byte(0x001799) == 5 && prev(word(0x01D534)) != word(0x01D534) && word(0x01D534) !=
              0,
    cancel = byte(0x001799) != 5,
    submit = byte(0x001797) == 16,
    value = word(0x01D534),
    format = "MILLISECS", lower_is_better = true
)

leaderboard(
    id = 1366, title = "Hornet House",
    description = "Get the best time on Hornet House in Time Attack",
    start  = byte(0x00179A) == 49 && byte(0x001799) == 5 && prev(word(0x01D534)) != word(0x01D534) && word(0x01D534) !=
              0,
    cancel = byte(0x001799) != 5,
    submit = byte(0x001797) == 16,
    value = word(0x01D534),
    format = "MILLISECS", lower_is_better = true
)

leaderboard(
    id = 1367, title = "Key Break III",
    description = "Get the best time on Key Break III in Time Attack",
    start  = byte(0x00179A) == 42 && byte(0x001799) == 5 && prev(word(0x01D534)) != word(0x01D534) && word(0x01D534) !=
              0,
    cancel = byte(0x001799) != 5,
    submit = byte(0x001797) == 16,
    value = word(0x01D534),
    format = "MILLISECS", lower_is_better = true
)

leaderboard(
    id = 1368, title = "Twin Course",
    description = "Get the best time on Twin Course in Time Attack",
    start  = byte(0x00179A) == 43 && byte(0x001799) == 5 && prev(word(0x01D534)) != word(0x01D534) && word(0x01D534) !=
              0,
    cancel = byte(0x001799) != 5,
    submit = byte(0x001797) == 16,
    value = word(0x01D534),
    format = "MILLISECS", lower_is_better = true
)

leaderboard(
    id = 1369, title = "Lost Way III",
    description = "Get the best time on Lost Way III in Time Attack",
    start  = byte(0x00179A) == 44 && byte(0x001799) == 5 && prev(word(0x01D534)) != word(0x01D534) && word(0x01D534) !=
              0,
    cancel = byte(0x001799) != 5,
    submit = byte(0x001797) == 16,
    value = word(0x01D534),
    format = "MILLISECS", lower_is_better = true
)

leaderboard(
    id = 1370, title = "Multiply",
    description = "Get the best time on Multiply in Time Attack",
    start  = byte(0x00179A) == 78 && byte(0x001799) == 5 && prev(word(0x01D534)) != word(0x01D534) && word(0x01D534) !=
              0,
    cancel = byte(0x001799) != 5,
    submit = byte(0x001797) == 16,
    value = word(0x01D534),
    format = "MILLISECS", lower_is_better = true
)

leaderboard(
    id = 1371, title = "Big Billow",
    description = "Get the best time on Big Billow in Time Attack",
    start  = byte(0x00179A) == 79 && byte(0x001799) == 5 && prev(word(0x01D534)) != word(0x01D534) && word(0x01D534) !=
              0,
    cancel = byte(0x001799) != 5,
    submit = byte(0x001797) == 16,
    value = word(0x01D534),
    format = "MILLISECS", lower_is_better = true
)

leaderboard(
    id = 1372, title = "Silence II",
    description = "Get the best time on Silence II in Time Attack",
    start  = byte(0x00179A) == 80 && byte(0x001799) == 5 && prev(word(0x01D534)) != word(0x01D534) && word(0x01D534) !=
              0,
    cancel = byte(0x001799) != 5,
    submit = byte(0x001797) == 16,
    value = word(0x01D534),
    format = "MILLISECS", lower_is_better = true
)

leaderboard(
    id = 1373, title = "Great Wings",
    description = "Get the best time on Great Wings in Time Attack",
    start  = byte(0x00179A) == 81 && byte(0x001799) == 5 && prev(word(0x01D534)) != word(0x01D534) && word(0x01D534) !=
              0,
    cancel = byte(0x001799) != 5,
    submit = byte(0x001797) == 16,
    value = word(0x01D534),
    format = "MILLISECS", lower_is_better = true
)

leaderboard(
    id = 1374, title = "Red Canyon II",
    description = "Get the best time on Red Canyon II in Time Attack",
    start  = byte(0x00179A) == 82 && byte(0x001799) == 5 && prev(word(0x01D534)) != word(0x01D534) && word(0x01D534) !=
              0,
    cancel = byte(0x001799) != 5,
    submit = byte(0x001797) == 16,
    value = word(0x01D534),
    format = "MILLISECS", lower_is_better = true
)

leaderboard(
    id = 1375, title = "Sand Ocean",
    description = "Get the best time on Sand Ocean in Time Attack",
    start  = byte(0x00179A) == 83 && byte(0x001799) == 5 && prev(word(0x01D534)) != word(0x01D534) && word(0x01D534) !=
              0,
    cancel = byte(0x001799) != 5,
    submit = byte(0x001797) == 16,
    value = word(0x01D534),
    format = "MILLISECS", lower_is_better = true
)

leaderboard(
    id = 1376, title = "White Land II",
    description = "Get the best time on White Land II in Time Attack",
    start  = byte(0x00179A) == 84 && byte(0x001799) == 5 && prev(word(0x01D534)) != word(0x01D534) && word(0x01D534) !=
              0,
    cancel = byte(0x001799) != 5,
    submit = byte(0x001797) == 16,
    value = word(0x01D534),
    format = "MILLISECS", lower_is_better = true
)

leaderboard(
    id = 1377, title = "Fire Field",
    description = "Get the best time on Fire Field in Time Attack",
    start  = byte(0x00179A) == 85 && byte(0x001799) == 5 && prev(word(0x01D534)) != word(0x01D534) && word(0x01D534) !=
              0,
    cancel = byte(0x001799) != 5,
    submit = byte(0x001797) == 16,
    value = word(0x01D534),
    format = "MILLISECS", lower_is_better = true
)
