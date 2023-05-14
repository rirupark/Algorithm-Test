//
//  17103. 골드바흐 파티션.swift
//  Algorithm Test
//
//  Created by 박민주 on 2023/05/12.
//
// 수학, 정수론, 소수 판정, 에라토스테네스의 체

import Foundation

func B17103() {
    let t = Int(readLine()!)!
    for _ in 0..<t {
        let n = Int(readLine()!)!
        var array = Array(repeating: true, count: n + 1)
        array[0] = false; array[1] = false
        var count = 0

        for i in 2...Int(sqrt(Double(n * 2))) + 1 {
            if array[i] {
                for j in stride(from: i * 2, to: n + 1, by: i) {
                    array[j] = false
                }
            }
        }
        for i in 2...n/2 { // n - j가 소수면 count += 1
            if array[i] && array[n - i] { count += 1 }
        }
        print(count)
    }
}
