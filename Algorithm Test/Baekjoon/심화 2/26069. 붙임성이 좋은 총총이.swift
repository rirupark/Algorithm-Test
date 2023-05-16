//
//  26069. 붙임성이 좋은 총총이.swift
//  Algorithm Test
//
//  Created by 박민주 on 2023/05/16.
//
// 자료 구조, 해시를 사용한 집합과 맵, 트리를 사용한 집합과 맵

func B26069() {
    let n = Int(readLine()!)!
    var setDance = Set<String>()
    for _ in 0..<n {
        let input = readLine()!.split(separator: " ").map{String($0)}
        if input.contains("ChongChong") || setDance.contains(input[0]) || setDance.contains(input[1]) {
            setDance.insert(input[0])
            setDance.insert(input[1])
        }
    }
    print(setDance.count)
}
