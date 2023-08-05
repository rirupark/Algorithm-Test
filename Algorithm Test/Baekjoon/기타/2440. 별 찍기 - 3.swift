//
//  2440. 별 찍기 - 3.swift
//  Algorithm Test
//
//  Created by 박민주 on 2023/08/05.
//

func B2440() {
    let n = Int(readLine()!)!
    for i in 0..<n {
        for _ in 0..<n-i {
            print("*", terminator: "")
        }
        print()
    }
}
