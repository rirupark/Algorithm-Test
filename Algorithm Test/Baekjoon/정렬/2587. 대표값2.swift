//
//  2587. 대표값2.swift
//  Algorithm Test
//
//  Created by 박민주 on 2023/05/10.
//

func B2587() {
    var array = [Int]()
    for _ in 0..<5 { array.append(Int(readLine()!)!) }
    print(array.reduce(0, +) / 5)
    print(array.sorted()[2])
}
