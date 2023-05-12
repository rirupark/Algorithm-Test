//
//  Algorithm Test main 실행파일
//  Created by 박민주 on 2022/06/21


let ab = readLine()!.split(separator: " ").map{Int($0)!}
let aArr = readLine()!.split(separator: " ").map{Int($0)!}
let bArr = readLine()!.split(separator: " ").map{Int($0)!}
let aSet = Set(aArr), bSet = Set(bArr)
var aCnt = aSet.count, bCnt = bSet.count
for num in aSet {
    if bSet.contains(num) { aCnt -= 1 }
}
for num in bSet {
    if aSet.contains(num) { bCnt -= 1 }
}
print(aCnt + bCnt)
