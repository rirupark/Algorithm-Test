//
//  2752. 세수정렬.swift
//  Algorithm Test
//
//  Created by 박민주 on 2023/07/24.
//

func B2752() {
    let nums = readLine()!.split(separator: " ").map{Int($0)!}
    print(nums.sorted().map{String($0)}.joined(separator: " "))
}
