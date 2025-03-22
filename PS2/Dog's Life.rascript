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

function sumBones(array){
    sum = 0
    for element in array{
        sum = sum + checkElementLinkedList(element)
    }
    return measured(sum == length(array)) && prev(sum) == length(array) - 1
}

Bones = [84, 85, 86, 87, 88, 89, 90, 91, 92]

achievement(
    "Farmhouse",
    "Clarksville Farmhouse: Collect all 9 bones",
    10,
    sumBones(Bones) && AreaID == Farmhouse
)
