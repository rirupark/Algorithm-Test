//
//  1065. 한수.swift
//  Algorithm Test
//
//  Created by 박민주 on 2023/05/31.
//
// 브루트포스

func B1065() {
    let n = Int(readLine()!)!
    var count = 0
    if n / 100 > 0 {
        for num in 100...n {
            let a = num / 100
            let b = (num % 100) / 10
            let c = (num % 100) % 10
            if a - b == b - c { count += 1 }
        }
    }
    print(n / 100 > 0 ? 99 + count : n)
}
