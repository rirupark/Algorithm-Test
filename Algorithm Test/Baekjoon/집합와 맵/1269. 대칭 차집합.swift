//
//  1269. 대칭 차집합.swift
//  Algorithm Test
//
//  Created by 박민주 on 2023/05/11.
//
// 자료 구조, 해시를 사용한 집합과 맵, 트리를 사용한 집합과 맵

// 89484KB, 224ms
func B1269() {
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
}

// MARK: 다른 풀이
// Set에서 사용할 수 있는 함수 이용
// union, intersection, subtracting, symmetricDifference(합집 - 교집)
// MARK: Version 1. 93644KB, 220ms
// print(a.subtracting(b).count + b.subtracting(a).count)
// MARK: Version 2. 93644KB, 348ms
// 2. print(aSet.symmetricDifference(bSet).count)
