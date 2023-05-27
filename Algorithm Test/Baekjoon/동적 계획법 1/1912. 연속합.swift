//
//  1912. 연속합.swift
//  Algorithm Test
//
//  Created by 박민주 on 2023/05/27.
//
// DP

func B1912() {
    let n = Int(readLine()!)!
    let nums = readLine()!.split(separator: " ").map{Int($0)!}
    var result = [Int](repeating: 0, count: n)
    result[0] = nums[0]
    for i in 1..<n { result[i] = max(nums[i], result[i - 1] + nums[i]) }
    print(result.max()!)
}
