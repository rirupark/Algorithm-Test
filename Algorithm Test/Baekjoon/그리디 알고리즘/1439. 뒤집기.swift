//
//  1439. 뒤집기.swift
//  Algorithm Test
//
//  Created by 박민주 on 2023/06/23.
//
// 문자열, 그리디 알고리즘

func B1439() {
    let s = readLine()!.map{$0}
    var result = [s[0]]
    for i in 1..<s.count {
        if s[i] != s[i - 1] { result.append(s[i]) }
    }
    print(min(result.filter{$0 == "0"}.count, result.filter{$0 == "1"}.count))
}
