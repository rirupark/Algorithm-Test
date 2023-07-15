//
//  10817. 세 수.swift
//  Algorithm Test
//
//  Created by 박민주 on 2023/07/15.
//

func B10817() {
    let nums = readLine()!.split(separator: " ").map{Int($0)!}.sorted(by: >)
    print(nums[1])
}
