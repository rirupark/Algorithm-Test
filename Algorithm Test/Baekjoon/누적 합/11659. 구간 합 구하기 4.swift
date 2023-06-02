//
//  11659. 구간 합 구하기 4.swift
//  Algorithm Test
//
//  Created by 박민주 on 2023/06/02.
//
// 누적 합

func B11659() {
    let nm = readLine()!.split(separator: " ").map{Int($0)!}
    var nums = readLine()!.split(separator: " ").map{Int($0)!}
    for i in 1..<nm[0] { nums[i] += nums[i - 1] }
    nums.insert(0, at: 0)
    for _ in 0..<nm[1] {
        let ij = readLine()!.split(separator: " ").map{Int($0)!}
        print(nums[ij[1]] - nums[ij[0] - 1])
    }
}
