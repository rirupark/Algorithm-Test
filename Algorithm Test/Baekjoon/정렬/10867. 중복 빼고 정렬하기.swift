//
//  10867. 중복 빼고 정렬하기.swift
//  Algorithm Test
//
//  Created by 박민주 on 2023/07/28.
//

func B10867() {
    let n = Int(readLine()!)!
    let nums = readLine()!.split(separator: " ").map{Int($0)!}
    print(Array(Set(nums)).sorted().map{String($0)}.joined(separator: " "))
}
