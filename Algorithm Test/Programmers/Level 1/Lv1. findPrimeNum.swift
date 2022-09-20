//
//  Lv1. findPrimeNum.swift
//  Algorithm Test
//
//  Created by 박민주 on 2022/07/16.
//

func solutionFindPrime(_ n:Int) -> Int {
    var primes = [Bool](repeating: true, count: n+1)
    var count = 0
    for i in 2...n {
        if primes[i] { count += 1 }
        for j in 1...n/i { primes[i * j] = false } // 배수 제거
    }
    return count
}

