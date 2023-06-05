//
//  11399. ATM.swift
//  Algorithm Test
//
//  Created by 박민주 on 2023/06/05.
//
// 그리디 알고리즘, 정렬

func B11399() {
    let n = Int(readLine()!)!
    let p = readLine()!.split(separator: " ").map{Int($0)!}
    var answer = 0, temp = 0
    for time in p.sorted() {
        temp += time
        answer += temp
    }
    print(answer)
}
