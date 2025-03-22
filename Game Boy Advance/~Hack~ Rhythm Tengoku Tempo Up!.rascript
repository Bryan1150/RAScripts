// ~Hack~ Rhythm Tengoku: Tempo Up!
// #ID = 26958


KarateManLevel = byte(0x008026)
ScreenID = dword(0x000000)

Medals = byte(0x0082ae)

function SaveProtection(){
    return Medals >= 1 && prev(Medals) == Medals && KarateManLevel >= 4 && KarateManLevel <= 5 && prev(KarateManLevel) >= 3 
    && prev(KarateManLevel) <= 5
}

function Perfect(address){
    return 
    SaveProtection() &&
    byte(address) == 0x01 && prev(byte(address)) == 0
}

Perfects = {
    1:{"value":0x827e, "points":3, "title":"Kick, Punch, It's All in the Mind", "description":"Karate Man"},
2:{"value":0x8276, "points":10, "title":"Bountiful Harvest", "description":"Rhythm Tweezers"},
3:{"value":0x826e, "points":3, "title":"Good Tempo Soldier", "description":"Marching Orders"},
4:{"value":0x8266, "points":5, "title":"Home Run!", "description":"Spaceball"},
5:{"value":0x825e, "points":3, "title":"Monkey Syncopation", "description":"The Clappy Trio"},
6:{"value":0x8256, "points":10, "title":"A Filling Dinner Performance", "description":"Remix 1"},
7:{"value":0x8265, "points":3, "title":"Spooky Spirits", "description":"Sneaky Spirits"},
8:{"value":0x8277, "points":5, "title":"Sword Devotion", "description":"Samurai Slice"},
9:{"value":0x826f, "points":10, "title":"Ratatin Gaming", "description":"Rat Race"},
10:{"value":0x8267, "points":5, "title":"Virus Outbreak", "description":"Sick Beats"},
11:{"value":0x825f, "points":10, "title":"Don Don Pan Pan", "description":"The Bon Odori"},
12:{"value":0x8257, "points":25, "title":"This One Barely Works", "description":"Remix 2"},
13:{"value":0x8280, "points":5, "title":"Flower Sorcery", "description":"Wizard's Waltz"},
14:{"value":0x8278, "points":5, "title":"Happy Feet", "description":"Showtime"},
15:{"value":0x8270, "points":10, "title":"Moon Mochi", "description":"Bunny Hop"},
16:{"value":0x8268, "points":10, "title":"The Amazing Circus", "description":"Tram & Pauline"},
17:{"value":0x8260, "points":5, "title":"Uncle is Proud", "description":"Space Dance"},
18:{"value":0x8258, "points":10, "title":"Is She Ok?", "description":"Remix 3"},
19:{"value":0x8281, "points":10, "title":"Hope You Studied", "description":"Quiz Show"},
20:{"value":0x8279, "points":2, "title":"The Stars Welcome You", "description":"Night Walk"},
21:{"value":0x8271, "points":4, "title":"Nice Technique", "description":"Power Calligraphy"},
22:{"value":0x8269, "points":3, "title":"Huge Success!", "description":"Polyrhythm"},
23:{"value":0x8261, "points":25, "title":"You Are The Best!", "description":"Rap Men"},
24:{"value":0x8259, "points":10, "title":"Happy, Clear Day!", "description":"Remix 4 "},
25:{"value":0x8282, "points":3, "title":"Double Taps", "description":"Bouncy Road"},
26:{"value":0x827a, "points":10, "title":"Master of Ninjitsu", "description":"Ninja Bodyguard"},
27:{"value":0x8272, "points":5, "title":"Team Work", "description":"Toss Boys"},
28:{"value":0x826a, "points":10, "title":"Summer Festival", "description":"Fireworks"},
29:{"value":0x8262, "points":5, "title":"Tap-Dancing", "description":"Tap Trial"},
30:{"value":0x825a, "points":10, "title":"Happily Ever After!", "description":"Remix 5"},
31:{"value":0x8283, "points":5, "title":"Wild West", "description":"The Snappy Trio"},
32:{"value":0x827b, "points":25, "title":"Dondo Panpa Panpa", "description":"The Bon Dance"},
33:{"value":0x8273, "points":5, "title":"Pu-Pu-Pu-Punch!!", "description":"Cosmic Dance"},
34:{"value":0x826b, "points":10, "title":"Charming Voices", "description":"Rap Women"},
35:{"value":0x8263, "points":10, "title":"Turbo Tap-Dancing", "description":"Turbo Tap Trial"},
36:{"value":0x825b, "points":10, "title":"Jack of All Rhythm", "description":"Remix 6"},
37:{"value":0x8284, "points":1, "title":"This is Just the Normal One...", "description":"Karate Man 2"},
38:{"value":0x827c, "points":25, "title":"That's Surely is a Pattern...", "description":"Rhythm Tweezers 2"},
39:{"value":0x8274, "points":50, "title":"Are Those Gunshots?!", "description":"Ninja Bodyguard 2"},
40:{"value":0x826c, "points":5, "title":"Star Friend", "description":"Night Walk 2"},
41:{"value":0x8264, "points":10, "title":"Left is Hirari...", "description":"Marching Orders 2"},
42:{"value":0x825c, "points":10, "title":"Don't Get Mixed Up", "description":"Remix 7"},
43:{"value":0x8285, "points":5, "title":"Protect Those Balls!", "description":"Bouncy Road 2"},
44:{"value":0x827d, "points":5, "title":"Together, We Are Unstoppable!", "description":"Toss Boys 2"},
45:{"value":0x8275, "points":5, "title":"Built to Scale", "description":"Polyrhythm 2"},
46:{"value":0x826d, "points":5, "title":"Tempo Up the Tempo Up!", "description":"Spaceball 2"},
47:{"value":0x827f, "points":5, "title":"Phantom Slayer", "description":"Sneaky Spirits 2"},
48:{"value":0x825d, "points":25, "title":"This Is It!", "description":"Remix 8"},
}

for perfect in Perfects{
    achievement(
        title = Perfects[perfect]["title"],
        description = "Obtain a perfect in " +  Perfects[perfect]["description"],
        points =  Perfects[perfect]["points"],
        trigger = Perfect( Perfects[perfect]["value"])
    )
}