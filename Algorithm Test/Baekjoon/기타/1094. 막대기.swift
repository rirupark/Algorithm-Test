//
//  1094. 막대기.swift
//  Algorithm Test
//
//  Created by 박민주 on 2023/06/17.
//
// 수학, 비트마스킹

func B1094() {
    var x = Int(readLine()!)!, count = 0
    while x > 0 {
        count += x & 1
        x >>= 1
    }
    print(count)
}
