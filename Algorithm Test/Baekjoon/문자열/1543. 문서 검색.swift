//
//  1543. 문서 검색.swift
//  Algorithm Test
//
//  Created by 박민주 on 2023/06/27.
//
// 문자열, 브루트포스 알고리즘

import Foundation

// 79504KB, 12ms
func B1543() {
    let s = readLine()!, word = readLine()!
    print(s.components(separatedBy: word).count - 1)
}

// 69100KB, 16ms
func B1543_Ver2() {
    let s = readLine()!.map{$0}, word = readLine()!
    var count = 0, i = 0
    while i <= s.count - word.count {
        if String(s[i..<i + word.count]) == word {
            count += 1
            i += word.count
            continue
        }
        i += 1
    }
    print(count)
}
