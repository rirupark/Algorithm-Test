//
//  4134. 다음 소수.swift
//  Algorithm Test
//
//  Created by 박민주 on 2023/05/12.
//
// 수학, 브루트포스 알고리즘, 정수론, 소수 판정

import Foundation

// 79508KB, 128ms
func B4134() {
    let t = Int(readLine()!)!
    for _ in 0..<t {
        var n = Int(readLine()!)!
        while !isPrime(n) {
            n += 1
        }
        print(n)
    }

    func isPrime(_ num: Int) -> Bool {
        if num < 2 { return false }
        for i in 2..<Int(sqrt(Double(num))) + 1 {
            if num % i == 0 { return false }
        }
        return true
    }
}

// MARK: isPrime 메모리 개선
// 69100KB, 148ms
//func isPrime(_ num: Int) -> Bool {
//    if num < 2 { return false }
//    var index = 2
//    while index * index <= num {
//        if num % index == 0 { return false }
//        index += 1
//    }
//    return true
//}
