//
//  2579. 계단 오르기.swift
//  Algorithm Test
//
//  Created by 박민주 on 2023/05/30.
//
// DP

func B2579() {
    let n = Int(readLine()!)!
    var nums = [Int](repeating: 0, count: n + 1)
    var result = [Int](repeating: 0, count: n + 1)
    for i in 1...n { nums[i] = Int(readLine()!)! }
    for i in 1...n {
        if i == 1 { result[i] = nums[i] }
        else if i == 2 { result[i] = nums[i] + nums[i - 1] }
        else if i == 3 {
            result[i] = max(nums[i - 1] + nums[i], nums[i - 2] + nums[i])
        } else {
            result[i] = max(nums[i - 1] + result[i - 3] + nums[i], result[i - 2] + nums[i])
        }
    }
    print(result[n])
}
