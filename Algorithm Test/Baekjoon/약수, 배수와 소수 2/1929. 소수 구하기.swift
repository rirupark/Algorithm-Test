//
//  1929. 소수 구하기.swift
//  Algorithm Test
//
//  Created by 박민주 on 2023/05/12.
//
// 수학, 정수론, 소수 판정, 에라토스테네스의 체

import Foundation

// MARK: Version 1. 제곱근 브루트포스 이용
// 79512KB, 320ms
func B1929() {
    let mn = readLine()!.split(separator: " ").map{Int($0)!}
    for num in mn[0]...mn[1] {
        if isPrime(num) { print(num) }
    }
    func isPrime(_ num: Int) -> Bool {
        if num < 2 { return false }
        for i in 2..<Int(sqrt(Double(num))) + 1 {
            if num % i == 0 { return false }
        }
        return true
    }
}

// MARK: Version 2. 에라토스테네스 체 이용
// 70064KB, 88ms
func B1929_2() {
    let mn = readLine()!.split(separator: " ").map{Int($0)!}
    var array = Array(repeating: true, count: mn[1] + 1)
    array[0] = false
    array[1] = false

    for i in 2...mn[1] {
        if array[i] == true { // i가 소수인 경우
            // i 이후 i의 배수들을 false로 판정
            for j in stride(from: i * 2, to: mn[1] + 1, by: i) {
                array[j] = false
            }
        }
    }
    for i in mn[0]...mn[1] {
        if array[i] { print(i) }
    }
}
