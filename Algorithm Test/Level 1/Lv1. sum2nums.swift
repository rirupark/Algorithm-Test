//
//  Lv1. sum2nums.swift
//  Algorithm Test
//
//  Created by 박민주 on 2022/07/02.
//

import Foundation

func solutionSum2nums(_ numbers:[Int]) -> [Int] {
    var result = Set<Int>()
    for i in 0..<numbers.count {
        for j in i+1..<numbers.count { result.insert(numbers[i] + numbers[j]) }
    }
    return result.sorted()
}
