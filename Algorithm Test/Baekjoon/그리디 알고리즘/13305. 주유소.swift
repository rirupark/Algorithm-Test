//
//  13305. 주유소.swift
//  Algorithm Test
//
//  Created by 박민주 on 2023/06/05.
//
// 그리디 알고리즘

func B13305() {
    let n = Int(readLine()!)!
    let distance = readLine()!.split(separator: " ").map{Int($0)!}
    let gasCost = readLine()!.split(separator: " ").map{Int($0)!}
    var minCost = gasCost[0], result = 0
    for i in 0..<n - 1 {
        minCost = min(minCost, gasCost[i])
        result += distance[i] * minCost
    }
    print(result)
}
