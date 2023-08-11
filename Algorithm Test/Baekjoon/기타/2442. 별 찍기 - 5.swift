//
//  2442. 별 찍기 - 5.swift
//  Algorithm Test
//
//  Created by 박민주 on 2023/08/11.
//

func B2442() {
    let n = Int(readLine()!)!
    for i in 1...n {
        for _ in 0..<n-i {
            print(" ", terminator: "")
        }
        for _ in 0..<i * 2 - 1 {
            print("*", terminator: "")
        }
        print()
    }
}
