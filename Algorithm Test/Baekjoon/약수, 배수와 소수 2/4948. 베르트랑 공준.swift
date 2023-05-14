//
//  4948. 베르트랑 공준.swift
//  Algorithm Test
//
//  Created by 박민주 on 2023/05/12.
//
// 수학, 정수론, 소수 판정, 에라토스테네스의 체

import Foundation

// 69356KB, 92ms
func B4948() {
    while true {
        let num = Int(readLine()!)!
        if num == 0 { break }
        var array = Array(repeating: true, count: 2 * num + 1)
        var count = 0
        array[0] = false; array[1] = false

        for i in 2...2 * num {
            if array[i] == true {
                for j in stride(from: i * 2, to: 2 * num + 1, by: i) {
                    array[j] = false
                }
            }
        }
        for i in num + 1...2 * num {
            if array[i] { count += 1 }
        }
        print(count)
    }
}

// 제곱근 사용
// 79764KB, 68ms
func B4948_2() {
    while true {
        let num = Int(readLine()!)!
        if num == 0 { break }
        var array = Array(repeating: true, count: 2 * num + 1)
        var count = 0
        array[0] = false; array[1] = false

        for i in 2...Int(sqrt(Double(num * 2))) + 1 {
            if array[i] == true {
                for j in stride(from: i * 2, to: 2 * num + 1, by: i) {
                    array[j] = false
                }
            }
        }
        for i in num + 1...2 * num {
            if array[i] { count += 1 }
        }
        print(count)
    }
}
