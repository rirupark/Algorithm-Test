//
//  2738. 행렬 덧셈.swift
//  Algorithm Test
//
//  Created by 박민주 on 2023/05/04.
//

func B2738() {
    let nm = readLine()!.split(separator: " ").map{Int($0)!}
    var matrix: [[Int]] = Array(repeating: Array(repeating: 0,count: nm[1] ), count: nm[0])

    for _ in 0..<2 {
        for i in 0..<nm[0] {
            let nums = readLine()!.split(separator: " ").map{Int($0)!}
            for (j, num) in nums.enumerated() { matrix[i][j] += num }
        }
    }
    for i in 0..<nm[0] {
        print(matrix[i].map{String($0)}.joined(separator: " "))
    }
}
