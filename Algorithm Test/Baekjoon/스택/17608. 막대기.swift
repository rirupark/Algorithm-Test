//
//  17608. 막대기.swift
//  Algorithm Test
//
//  Created by 박민주 on 2023/07/19.
//

func B17608() {
    let n = Int(readLine()!)!
    var arr = [Int](), answer = 1
    for _ in 0..<n { arr.append(Int(readLine()!)!) }
    var first = arr.last!
    for num in arr.reversed() {
        if num > first { first = num; answer += 1 }
    }
    print(answer)
}
