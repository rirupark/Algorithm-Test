//
//  24416. 알고리즘 수업 - 피보나치 수 1.swift
//  Algorithm Test
//
//  Created by 박민주 on 2023/05/27.
//
// 수학, 다이나믹 프로그래밍

// 69100KB, 332ms
func B24416() {
    let n = Int(readLine()!)!
    func fib(_ n : Int) -> Int {
        if n <= 2 { return 1 }
        return fib(n - 1) + fib(n - 2)
    }
    print(fib(n), n - 2)
}

// 69100KB, 8ms
func B24416Ver2() {
    var cache = [0, 1]
    for i in 2...40 { cache.append(cache[i - 2] + cache[i - 1]) }
    let n = Int(readLine()!)!
    print(cache[n], n - 2)
}
