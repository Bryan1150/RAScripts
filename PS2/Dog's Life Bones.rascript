// Dog's Life
// #ID = 20796


FirstBoneLinkedList = dword(0x00824cb0)

AreaID = dword(0x00825070)
Farmhouse = 0x0c

function checkElementLinkedList(element){
    address = FirstBoneLinkedList
    
    if(element > 0){
        for number in range(0,element-1){
            address = dword(address + 0x00)
        }
    }
    
    bone = dword(address + 0x08)
    bone = dword(bone + 0x494)
    bone = bit1(bone + 0x60)
    
    return bone   
}
firstArea = 0x0c
function sumBones(start, quantity){
    sum = 0
    count = 0 
    for element in range(start, start+quantity-1){
        sum = sum + checkElementLinkedList(element)
        count = count + 1
    }
    logic = measured(sum == count, when = AreaID == firstArea && prev(AreaID) == firstArea) && prev(sum) == count - 1
    firstArea = firstArea + 1
    return logic
    
    
}

Bones = [84, 85, 86, 87, 88, 89, 90, 91, 92]



achievement(
    title = "I Found This Humerus", points = 10,
    description = "Clarksville Farmhouse: Collect all 9 bones",
    id = 344713, badge = "392363", published = "11/8/2023 17:57:31", modified = "22/8/2023 20:19:59",
    trigger = sumBones(84, 9)
               
               
               && byte(0xA6E784) == 1 && unless(byte(0xB7079C) == 1) && 
              unless(dword(dword(dword(dword(0x828010) + 0x000494) + 0x000040) + 0x00001C) > 125)
)


achievement(
    title = "I Want Tibia Honest", points = 10,
    description = "Clarksville Watermill: Collect all 8 bones",
    id = 346913, badge = "392368", published = "22/8/2023 04:49:58", modified = "22/8/2023 20:20:02",
    trigger = sumBones(59, 8)
               
               
               && byte(0xA6E784) == 1 && unless(byte(0xB7079C) == 1) && 
              unless(dword(dword(dword(dword(0x828010) + 0x000494) + 0x000040) + 0x00001C) > 125)
)

achievement(
    title = "He's Boneafide", points = 10,
    description = "Clarksville Big Field: Collect all 8 bones",
    id = 346916, badge = "392374", published = "22/8/2023 04:49:59", modified = "22/8/2023 20:20:06",
    trigger = sumBones(61, 8) && 
               
               byte(0xA6E784) == 1 && unless(byte(0xB7079C) == 1) && 
              unless(dword(dword(dword(dword(0x828010) + 0x000494) + 0x000040) + 0x00001C) > 125)
)


achievement(
    title = "Boneanza", points = 10,
    description = "Clarksville Village Houses: Collect all 9 bones",
    id = 346919, badge = "392381", published = "22/8/2023 04:50:00", modified = "22/8/2023 20:20:10",
    trigger = sumBones(69, 9) && byte(0xA6E784) == 1 && unless(byte(0xB7079C) == 1) && 
              unless(dword(dword(dword(dword(0x828010) + 0x000494) + 0x000040) + 0x00001C) > 125)
)



achievement(
    title = "Bone-a-Palooza", points = 10,
    description = "Clarksville Chicken Farm: Collect all 8 bones",
    id = 346922, badge = "392387", published = "22/8/2023 04:50:02", modified = "22/8/2023 20:20:13",
    trigger = sumBones(61, 8) &&
               
               byte(0xA6E784) == 1 && unless(byte(0xB7079C) == 1) && 
              unless(dword(dword(dword(dword(0x828010) + 0x000494) + 0x000040) + 0x00001C) > 125)
)


achievement(
    title = "Bone Voyage", points = 10,
    description = "Clarksville Centre: Collect all 7 bones",
    id = 346925, badge = "392393", published = "22/8/2023 04:50:03", modified = "22/8/2023 20:20:17",
    trigger = sumBones(75, 7)
               
               && byte(0xA6E784) == 1 && unless(byte(0xB7079C) == 1) && 
              unless(dword(dword(dword(dword(0x828010) + 0x000494) + 0x000040) + 0x00001C) > 125)
)


achievement(
    title = "Bone Appetit", points = 10,
    description = "Minniwahwah Cafe: Collect all 8 bones",
    id = 346928, badge = "392400", published = "22/8/2023 04:50:04", modified = "22/8/2023 20:20:20",
    trigger = sumBones(59, 8)
               
               && byte(0xA6E784) == 1 && unless(byte(0xB7079C) == 1) && 
              unless(dword(dword(dword(dword(0x828010) + 0x000494) + 0x000040) + 0x00001C) > 125)
)


achievement(
    title = "Fossil Finder", points = 10,
    description = "Minniwahwah Ski Slope: Collect all 7 bones",
    id = 346931, badge = "392406", published = "22/8/2023 04:50:06", modified = "22/8/2023 20:20:24",
    trigger = sumBones(34, 7)
               
               && byte(0xA6E784) == 1 && unless(byte(0xB7079C) == 1) && 
              unless(dword(dword(dword(dword(0x828010) + 0x000494) + 0x000040) + 0x00001C) > 125)
)



achievement(
    title = "I'm in the Bone!", points = 10,
    description = "Minniwahwah High Street: Collect all 8 bones",
    id = 346934, badge = "392412", published = "22/8/2023 04:50:08", modified = "22/8/2023 20:20:27",
    trigger = sumBones(44, 8)
               
               && byte(0xA6E784) == 1 && unless(byte(0xB7079C) == 1) && 
              unless(dword(dword(dword(dword(0x828010) + 0x000494) + 0x000040) + 0x00001C) > 125)
)


achievement(
    title = "Highway to the Danger Bone", points = 10,
    description = "Minniwahwah Mountain Top: Collect all 8 bones",
    id = 346937, badge = "392418", published = "22/8/2023 04:50:09", modified = "22/8/2023 20:20:31",
    trigger = sumBones(28, 8)
               
               && byte(0xA6E784) == 1 && unless(byte(0xB7079C) == 1) && 
              unless(dword(dword(dword(dword(0x828010) + 0x000494) + 0x000040) + 0x00001C) > 125)
)


achievement(
    title = "This is the Twilight Bone", points = 10,
    description = "Minniwahwah Mountain Side: Collect all 7 bones",
    id = 346940, badge = "392421", published = "22/8/2023 04:50:11", modified = "22/8/2023 20:20:33",
    trigger = sumBones(44, 7)
               
               
               && byte(0xA6E784) == 1 && unless(byte(0xB7079C) == 1) && 
              unless(dword(dword(dword(dword(0x828010) + 0x000494) + 0x000040) + 0x00001C) > 125)
)


achievement(
    title = "A Marrow Escape", points = 10,
    description = "Minniwahwah Hotel: Collect all 8 bones",
    id = 346944, badge = "392427", published = "22/8/2023 04:50:12", modified = "22/8/2023 20:20:37",
    trigger = sumBones(29, 8)
               
               && byte(0xA6E784) == 1 && unless(byte(0xB7079C) == 1) && 
              unless(dword(dword(dword(dword(0x828010) + 0x000494) + 0x000040) + 0x00001C) > 125)
)



achievement(
    title = "I Have a Bone to Pick", points = 10,
    description = "Boom City Station: Collect all 7 bones",
    id = 346947, badge = "392433", published = "22/8/2023 04:50:13", modified = "22/8/2023 20:20:40",
    trigger = sumBones(42, 7)
               
               && byte(0xA6E784) == 1 && unless(byte(0xB7079C) == 1) && 
              unless(dword(dword(dword(dword(0x828010) + 0x000494) + 0x000040) + 0x00001C) > 125)
)


achievement(
    title = "Diamond in the Ruff", points = 10,
    description = "Boom City Park: Collect all 7 bones",
    id = 346950, badge = "392438", published = "22/8/2023 04:50:14", modified = "22/8/2023 20:20:43",
    trigger = sumBones(59, 7)
               
               && byte(0xA6E784) == 1 && unless(byte(0xB7079C) == 1) && 
              unless(dword(dword(dword(dword(0x828010) + 0x000494) + 0x000040) + 0x00001C) > 125)
)



achievement(
    title = "Bad to the Bone", points = 10,
    description = "Boom City Centre: Collect all 7 bones",
    id = 346953, badge = "392444", published = "22/8/2023 04:50:15", modified = "22/8/2023 20:20:47",
    trigger = sumBones(58, 7) && 
               byte(0xA6E784) == 1 && unless(byte(0xB7079C) == 1) && 
              unless(dword(dword(dword(dword(0x828010) + 0x000494) + 0x000040) + 0x00001C) > 125)
)

achievement(
    title = "Who Let the Dogs Out?", points = 10,
    description = "Boom City Dog Pound: Collect all 9 bones",
    id = 346904, badge = "392445", published = "22/8/2023 04:43:44", modified = "22/8/2023 20:20:48",
    trigger = sumBones(34, 9) &&
    byte(0xA6E784) == 1 && unless(byte(0xB7079C) == 1) && 
              unless(dword(dword(dword(dword(0x828010) + 0x000494) + 0x000040) + 0x00001C) > 125)
)

