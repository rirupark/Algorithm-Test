//
//  1254. 팰린드롬 만들기.swift
//  Algorithm Test
//
//  Created by 박민주 on 2023/06/23.
//
// 문자열, 브루트포스 알고리즘

func B1254() {
    var s = readLine()!.map{$0}, count = s.count
    for i in 0..<s.count {
        if Array(s[i...]) == Array(s[i...]).reversed() {
            print(count + i); break
        }
    }
}
