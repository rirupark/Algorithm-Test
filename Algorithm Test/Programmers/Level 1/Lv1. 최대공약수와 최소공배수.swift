//
//  Lv1. 최대공약수와 최소공배수.swift
//  Algorithm Test
//
//  Created by 박민주 on 2022/07/17.
//

func solution2(_ n:Int, _ m:Int) -> [Int] {
    return [gcd(n, m), n * m / gcd(n, m)]
}

func gcd(_ a:Int, _ b:Int) -> Int {
    return b == 0 ? a : gcd(b, a % b)
}
