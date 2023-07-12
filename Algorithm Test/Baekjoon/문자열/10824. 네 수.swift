//
//  10824. 네 수.swift
//  Algorithm Test
//
//  Created by 박민주 on 2023/07/12.
//

func B10824() {
    let nums = readLine()!.split(separator: " ").map{$0}
    print(Int(nums[0] + nums[1])! + Int(nums[2] + nums[3])!)
}
