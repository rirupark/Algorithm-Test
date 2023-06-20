//
//  11656. 접미사 배열.swift
//  Algorithm Test
//
//  Created by 박민주 on 2023/06/20.
//
// 문자열, 정렬

func B11656() {
    var s = readLine()!, arr = [String]()
    for _ in s { arr.append(s); s.removeFirst() }
    for str in arr.sorted() { print(str) }
}
