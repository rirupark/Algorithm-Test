//
//  9461. 파도반 수열.swift
//  Algorithm Test
//
//  Created by 박민주 on 2023/05/27.
//
// 수학, 다이나믹 프로그래밍

// f(n) = f(n - 2) + f(n - 3)

func B9461() {
    let t = Int(readLine()!)!
    for _ in 0..<t {
        let n = Int(readLine()!)!
        var a = 1, b = 1, c = 1
        if n > 3 {
            for _ in 3..<n {
                let tmpA = a
                let tmpB = b
                a = b; b = c
                c = (tmpA + tmpB)
            }
        }
        print(c)
    }
}
