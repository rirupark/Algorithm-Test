//
//  16435. 스네이크버드.swift
//  Algorithm Test
//
//  Created by 박민주 on 2023/07/07.
//
// 그리디 알고리즘, 정렬

func B16435() {
    let nl = readLine()!.split(separator: " ").map{Int($0)!}
    let hArr = readLine()!.split(separator: " ").map{Int($0)!}
    var l = nl[1]
    for h in hArr.sorted() { if h <= l { l += 1 } }
    print(l)
}
