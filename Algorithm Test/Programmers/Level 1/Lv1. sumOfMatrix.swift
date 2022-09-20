//
//  Lv1. sumOfMatrix.swift
//  Algorithm Test
//
//  Created by 박민주 on 2022/07/20.
//

func solutionSumOfMatrix(_ arr1:[[Int]], _ arr2:[[Int]]) -> [[Int]] {
    var result : [[Int]] = Array(repeating: Array(repeating: 0, count: arr1[0].count), count: arr1.count)
    
    for i in 0..<arr1.count {
        for j in 0..<arr1[i].count { result[i][j] = arr1[i][j] + arr2[i][j] }
    }
    
    return result
}
