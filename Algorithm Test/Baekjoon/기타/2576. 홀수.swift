//
//  2576. 홀수.swift
//  Algorithm Test
//
//  Created by 박민주 on 2023/07/26.
//

func B2576() {
    var arr = [Int]()
    for _ in 0..<7 {
        let num = Int(readLine()!)!
        if num % 2 != 0 { arr.append(num) }
    }
    print(arr.isEmpty ? -1 : "\(arr.reduce(0, +))\n\(arr.min()!)")
}
