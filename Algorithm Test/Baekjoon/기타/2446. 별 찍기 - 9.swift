//
//  2446. 별 찍기 - 9.swift
//  Algorithm Test
//
//  Created by 박민주 on 2023/08/13.
//

func B2446() {
    let n = Int(readLine()!)!
    for i in 1..<n {
        for _ in 0..<i-1 {
            print(" ", terminator: "")
        }
        for _ in 0..<2 * n - (i * 2 - 1) {
            print("*", terminator: "")
        }
        print()
    }
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
