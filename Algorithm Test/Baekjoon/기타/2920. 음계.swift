//
//  2920. 음계.swift
//  Algorithm Test
//
//  Created by 박민주 on 2023/07/14.
//

func B2920() {
    let nums = readLine()!.split(separator: " ").map{Int($0)!}
    let asc = [1, 2, 3, 4, 5, 6, 7, 8]
    let des = [8, 7, 6, 5, 4, 3, 2, 1]
    if nums == asc { print("ascending") }
    else if nums == des { print("descending") }
    else { print("mixed") }
}
