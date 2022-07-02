//
//  Lv1. primeNum.swift
//  Algorithm Test
//
//  Created by 박민주 on 2022/07/01.
//

import Foundation

func solutionPrime(_ nums:[Int]) -> Int {
    var sums = [Int]()
    var result = 0

    // 배열에서 숫자 3개 더해서 Set에 넣기
    for i in 0..<nums.count {
        for j in i+1..<nums.count {
            for z in j+1..<nums.count { sums.append(nums[i] + nums[j] + nums[z]) }
        }
    }

    // Set에서 소수 개수 구하기
    for sum in sums {
        var i = 2
        while true {
            if i <= Int(sqrt(Double(sum))) {
                if sum % i == 0 { break }
                else { i += 1 }
            }
            else { result += 1; break }
        }
    }
    
    return result
}
