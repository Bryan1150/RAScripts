// Cooking Mama 3: Shop & Chop
// #ID = 16717

CookRecipes = {
    1:{"title":"A Culinary Prelude","description":"Cook your 1st recipe in Cook with Mama", "value":1, "points":1},
2:{"title":"Quintessential Quintet","description":"Cook 5 recipes in Cook with Mama", "value":5, "points":5},
3:{"title":"Epicurean Explorer","description":"Cook 10 recipes in Cook with Mama", "value":10, "points":5},
4:{"title":"Palate Prodigy","description":"Cook 15 recipes in Cook with Mama", "value":15, "points":5},
5:{"title":"Taste Tour","description":"Cook 20 recipes in Cook with Mama", "value":20, "points":5},
6:{"title":"Silver Spoon","description":"Cook 25 recipes in Cook with Mama", "value":25, "points":5},
7:{"title":"Decades of Flavor","description":"Cook 30 recipes in Cook with Mama", "value":30, "points":5},
8:{"title":"Menu Maven","description":"Cook 35 recipes in Cook with Mama", "value":35, "points":5},
9:{"title":"Spoon Symphony","description":"Cook 40 recipes in Cook with Mama", "value":40, "points":10},
10:{"title":"Palate Poetry","description":"Cook 45 recipes in Cook with Mama", "value":45, "points":10},
11:{"title":"Harmony of Tastes","description":"Cook 50 recipes in Cook with Mama", "value":50, "points":10},
12:{"title":"Gourmet Discovery","description":"Cook 55 recipes in Cook with Mama", "value":55, "points":10},
13:{"title":"Flavors Fantasia","description":"Cook 60 recipes in Cook with Mama", "value":60, "points":10},
14:{"title":"Culinary Mastery","description":"Cook all 65 recipes in Cook with Mama", "value":65, "points":25},
}

ASCII = dword(0x3ffa80)
ASCIIvalue = 0x4b4f4f43


cookWithMamaFirst = 0x0d934f
cookWithMamaLast = 0x0d9453

unusedRecipe = 0x0d93c7
marshmallows = 0x0d9407

function saveProtection(){
    return ASCII == ASCIIvalue &&
    prev(ASCII) == ASCIIvalue &&
    byte(marshmallows) == 1 &&
    prev(byte(marshmallows)) == 1
}

function divideItselfByte(start, end, exception, value, step){
    sum = 0
    for thing in range(start, end, step){
        if (thing != exception){
            sum = sum + (byte(thing)/byte(thing))
        }
    }
    return measured(sum == value) && prev(sum) == value -1
}

function addHitsChainDifferent(start, end, quantity, value, exception, add){
    sum = []
    prevSum = []
    count = 0
    for item in range(start, end, 4){
        if(item != exception){
            array_push(sum, once(byte(item+add) != value))
            array_push(prevSum, once(prev(byte(item+add)) != value))
            count = count + 1
        }
    }
    logic = measured(tally(quantity, sum)) && never(tally(quantity, prevSum)) && never(!saveProtection())
    if(quantity > 1){
        logic = logic && tally(quantity-1, prevSum)
    }
    
    if(quantity == 1){

        logic = always_true()
        logic2 = always_false()
        for item in range(start, end, 4){
            if(item != exception){
                logic = logic && (prev(byte(item+add)) == value)
                logic2 = logic2 || ((byte(item+add)) != value)
            }
        }
        logic = logic && logic2
    //logic = 1 == 1
    }
    
    return  
    logic
}

function addHitsChainSame(start, end, quantity, value, exception, add){
    sum = []
    prevSum = []
    count = 0
    for item in range(start, end, 4){
        if(item != exception){
            array_push(sum, once(byte(item+add) == value))
            array_push(prevSum, once(prev(byte(item+add)) == value))
            count = count + 1
        }
    }
    logic = measured(tally(quantity, sum)) && never(tally(quantity, prevSum)) && never(!saveProtection())
    if(quantity > 1){
        logic = logic && tally(quantity-1, prevSum)
    }
    
    if(quantity == 1){

        logic = always_true()
        logic2 = always_false()
        for item in range(start, end, 4){
            if(item != exception){
                logic = logic && (prev(byte(item+add)) == value)
                logic2 = logic2 || ((byte(item+add)) != value)
            }
        }
        logic = logic && logic2
    //logic = 1 == 1
    }
    
    return  
    logic
}

function CookRecipes(quantity){
    return
    saveProtection() &&
    addHitsChainDifferent(cookWithMamaFirst, cookWithMamaLast, quantity, 0xff, unusedRecipe, 1) 
}



for cheevo in CookRecipes{
    achievement(
        CookRecipes[cheevo]["title"],
        CookRecipes[cheevo]["description"],
        CookRecipes[cheevo]["points"],
        CookRecipes(CookRecipes[cheevo]["value"])
    )
}

achievement(
    "Mama's Complete Cookbook",
    "Unlock all recipes in Cook with Mama",
    10,
    saveProtection() && divideItselfByte(cookWithMamaFirst, cookWithMamaLast, unusedRecipe, 65, 4)    
)
friendStart = 0x0d933b
friendEnd = 0x0d9349
achievement(
    "Dinner with Friends",
    "Unlock all of Mama's friends in the Let's Cook!",
    10,
    saveProtection() && divideItselfByte(friendStart, friendEnd, 0x00, 8, 2)
)

matchStart = 0x0d9457
matchEnd = 0x0d948f
function MatchRecipes(quantity){
    return
    saveProtection() &&
    addHitsChainDifferent(matchStart, matchEnd, quantity, 0xff, unusedRecipe, 1) 
}
achievement(
    "Twin Taste",
    "Cook 5 recipes in Let's Match",
    5,
    MatchRecipes(5)
)
achievement(
    "Matchmaker Chef",
    "Cook 10 recipes in Let's Match",
    5,
    MatchRecipes(10)
)
achievement(
    "Flavorful Pairing",
    "Cook all 15 recipes in Let's Match",
    10,
    MatchRecipes(15)
)

goldenCook = {
    1:{"title":"Bronze Beginnings","description":"Obtain 10 golden medals in Cook with Mama", "value":10, "points":10},
2:{"title":"Silver Chef","description":"Obtain 20 golden medals in Cook with Mama", "value":20, "points":10},
3:{"title":"Golden Gastronome","description":"Obtain 30 golden medals in Cook with Mama", "value":30, "points":10},
4:{"title":"Mama's Culinary Mastery","description":"Obtain 40 golden medals in Cook with Mama", "value":40, "points":10},
5:{"title":"Platinum Palate","description":"Obtain 50 golden medals in Cook with Mama", "value":50, "points":10},
6:{"title":"Even Better than Mama!","description":"Obtain all 65 golden medals in Cook with Mama", "value":65, "points":25},
}

function goldenCook(quantity){
    return
    saveProtection() &&
    addHitsChainSame(cookWithMamaFirst, cookWithMamaLast, quantity, 0x64, unusedRecipe, 1) 
}

for cheevo in goldenCook{
    achievement(
        goldenCook[cheevo]["title"],
        goldenCook[cheevo]["description"],
        goldenCook[cheevo]["points"],
        goldenCook(goldenCook[cheevo]["value"])
    )
}

function goldenMatch(quantity){
    return
    saveProtection() &&
    addHitsChainSame(matchStart, matchEnd, quantity, 0x64, unusedRecipe, 1) 
}

achievement(
    "Matchcraft Expertise",
    "Obtain all 15 golden medals in Let's Match",
    25,
    goldenMatch(15)
)

function GoldenLetsCook(quantity){
    return
    saveProtection() &&
    addHitsChainSame(cookWithMamaFirst, matchEnd, quantity, 0x64, unusedRecipe, 2) 
}

goldenLets = {
    1:{"title":"Cooking Novice","description":"Obtain 10 golden medals in Let's Cook", "value":10, "points":10},
2:{"title":"Culinary Adept","description":"Obtain 20 golden medals in Let's Cook", "value":20, "points":10},
3:{"title":"Flavorful Achiever","description":"Obtain 30 golden medals in Let's Cook", "value":30, "points":10},
4:{"title":"Gourmet Master","description":"Obtain 40 golden medals in Let's Cook", "value":40, "points":10},
5:{"title":"Golden Chef","description":"Obtain 50 golden medals in Let's Cook", "value":50, "points":10},
6:{"title":"Culinary Connoisseur","description":"Obtain 60 golden medals in Let's Cook", "value":60, "points":10},
7:{"title":"Epicurean Virtuoso","description":"Obtain 70 golden medals in Let's Cook", "value":70, "points":10},
8:{"title":"Master of the Kitchen","description":"Obtain all 80 golden medals in Let's Cook", "value":80, "points":10},
}

for cheevo in goldenLets{
    achievement(
        goldenLets[cheevo]["title"],
        goldenLets[cheevo]["description"],
        goldenLets[cheevo]["points"],
        GoldenLetsCook(goldenLets[cheevo]["value"])
    )
}

achievement(
    "Happiness on a Plate",
    "Obtain all the smiley faces in Let's Cook",
    100,
    saveProtection() &&
    addHitsChainSame(cookWithMamaFirst, matchEnd, 80, 0x64, unusedRecipe, 3) 
)

firstStore = byte(0x0daf7c)
secondStore = byte(0x0daf7d)
thirdStore = byte(0x0daf7e)
fourthStore = byte(0x0daf7f)

sumStores = firstStore + secondStore + thirdStore + fourthStore

achievement(
    "Shopping Spree",
    "Unlock all 4 levels of Let's Shop",
    10,
    saveProtection() && measured(sumStores == 4) && prev(sumStores) == 3
)

stickersStart = 0x0d9307
stickersEnd = 0x0d931e
extraStickers = 
[
bit0(0x0d931f),

//bit1(0x0d9306),
bit2(0x0d9306),
bit3(0x0d9306),
bit4(0x0d9306),
bit5(0x0d9306),
bit6(0x0d9306),
bit7(0x0d9306),
]

function sumRangeBits(start, end, append){
    sum = 0
    count = 0
    for byte in range(start,end){
        sum = sum + bitcount(byte)
        count = count + 8
    }
    
    for extra in append{
        sum = sum + extra
        count = count + 1
    }
    
    return measured(sum == count) && prev(sum) < count 
}

achievement(
    "Sticker Symphony",
    "Unlock all 199 frames and stickers",
    25,
    saveProtection() && prev(bit1(0x0d9306)) == 1 && sumRangeBits(stickersStart, stickersEnd, extraStickers)
)

costumes=
bit0(0x0d9320)+
bit5(0x0d9320)+
bit2(0x0d9321)+
bit7(0x0d9321)+
bit4(0x0d9322)+
bit1(0x0d9323)+
bit6(0x0d9323)+
bit3(0x0d9324)+
bit0(0x0d9325)+
bit5(0x0d9325)+
bit2(0x0d9326)

achievement(
    "Culinary Couture",
    "Unlock all 11 outfits",
    10,
    saveProtection() && prev(bit1(0x0d9306)) == 1 && measured(costumes == 11) && prev(costumes) < 11
)

extraAccessories =[
    bit7(0x0d9326)
]
accessoriesStart = 0x0d9327
accessoriesEnd = 0x0d932a

achievement(
    "Crafting Mama",
    "Unlock all 33 accessories",
    25,
    saveProtection() && prev(bit1(0x0d9306)) == 1 && sumRangeBits(accessoriesStart, accessoriesEnd, extraAccessories)
)
