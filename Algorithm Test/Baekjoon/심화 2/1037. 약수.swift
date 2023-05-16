//
//  1037. 약수.swift
//  Algorithm Test
//
//  Created by 박민주 on 2023/05/16.
//

func B1037() {
    let n = Int(readLine()!)!
    let nums = readLine()!.split(separator: " ").map{Int($0)!}
    print(nums.contains(1) ? nums.max()! * 2 : nums.min()! * nums.max()!)
}
