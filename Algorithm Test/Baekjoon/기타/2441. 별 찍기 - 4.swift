//
//  2441. 별 찍기 - 4.swift
//  Algorithm Test
//
//  Created by 박민주 on 2023/08/06.
//

func B2441() {
    let n = Int(readLine()!)!
    for i in 0..<n {
        for _ in 0..<i {
            print(" ", terminator: "")
        }
        for _ in 0..<n-i {
            print("*", terminator: "")
        }
        print()
    }
}
