//
//  2443. 별 찍기 - 6.swift
//  Algorithm Test
//
//  Created by 박민주 on 2023/07/30.
//

func B2443() {
    let n = Int(readLine()!)!
    for i in 0..<n {
        for _ in 0..<i { print(" ", terminator: "") }
        for _ in 0..<(n * 2) - (i * 2 + 1) { print("*", terminator: "") }
        print()
    }
}
