//
//  1057. 토너먼트.swift
//  Algorithm Test
//
//  Created by 박민주 on 2023/06/14.
//
// 수학, 브루트포스 알고리즘

func B1057() {
    let nkl = readLine()!.split(separator: " ").map{Int($0)!}
    var k = nkl[1], l = nkl[2], roundNum = 1
    while true {
        k = (k + 1) / 2
        l = (l + 1) / 2
        if k == l { print(roundNum); break }
        roundNum += 1
    }
}
