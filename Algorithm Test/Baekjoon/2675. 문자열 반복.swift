//
//  2675. 문자열 반복.swift
//  Algorithm Test
//
//  Created by 박민주 on 2023/05/02.
//

import Foundation

func B2675() {
    let t = Int(readLine()!)!
    for _ in 0..<t {
        let s = readLine()!.split(separator: " ").map{$0}
        let count = Int(s[0]) ?? 0
        var answer = ""
        for char in s[1] {
            for _ in 0..<count {
                answer += String(char)
            }
        }
        print(answer)
    }
}
