//
//  2566. 최댓값.swift
//  Algorithm Test
//
//  Created by 박민주 on 2023/05/04.
//

func B2566() {
    var matrix: [[Int]] = Array(repeating: Array(repeating: 0,count: 9), count: 9)
    var maxValue = 0
    var ij = (0, 0)
    for i in 0..<9 {
        let nums = readLine()!.split(separator: " ").map{Int($0)!}
        for (j, num) in nums.enumerated() {
            matrix[i][j] = num
            if maxValue < matrix[i][j] {
                maxValue = matrix[i][j]
                ij = (i, j)
            }
        }
    }
    print(maxValue)
    print(ij.0 + 1, ij.1 + 1)
}
