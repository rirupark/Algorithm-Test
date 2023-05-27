//
//  1904. 01타일.swift
//  Algorithm Test
//
//  Created by 박민주 on 2023/05/27.
//
// 다이나믹 프로그래밍

// n = 1 -> 1
// n = 2 -> 11, 00
// n = 3 -> 111, 001, 100
// n = 4 -> 0000, 1100, 0011, 1001, 1111
// n = 5 -> 00001, 10000, 00111, 11100, 10011, 11001, 11111, 00100
// 점화식 : f(n) <- f(n - 1) + f(n - 2)

// 76916KB, 40ms
func B1904() {
    let n = Int(readLine()!)!
    var cache = [Int](repeating: 0, count: 1000001)
    cache[1] = 1; cache[2] = 2
    for i in 3...1000000 {
        cache[i] = cache[i - 1] + cache[i - 2]
        cache[i] %= 15746
    }
    print(cache[n])
}

// 69100KB, 12ms
func B1904Ver2() {
    let n = Int(readLine()!)!
    var a = 1, b = 2
    if n <= 2 { b = n }
    else {
        for _ in 2..<n {
            let tmp = a
            a = b
            b = (tmp + b) % 15746
        }
    }
    print(b)
}
