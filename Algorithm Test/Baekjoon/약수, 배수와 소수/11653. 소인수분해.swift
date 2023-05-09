//
//  11653. 소인수분해.swift
//  Algorithm Test
//
//  Created by 박민주 on 2023/05/08.
//

import Foundation

func B11653() {
    var n = Int(readLine()!)!
    for num in stride(from: 2, to: n, by: 1) {
        while n % num == 0 { n /= num; print(n, num) }
    }
    if n != 1 { print(n) } // 그 자체로 소수인 것
}

// MARK: Version 2
//var n = Int(readLine()!)!
//while n > 1 {
//    for num in 2...n {
//        if n % num == 0 {
//            n /= num
//            print(num)
//            break
//        }
//    }
//}

// MARK: 에라토스테네스의 체
//var array = Array(repeating: true, count: n + 1)
//var primes = [Int]()
//for i in 1..<n {
//    if i > 1 && array[i] == true {
//        for j in stride(from: i, to: n, by: i) {
//            array[j] = false
//        }
//        primes.append(i)
//    }
//}
