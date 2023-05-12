//
//  Euclidean Algorithm.swift
//  Algorithm Test
//
//  Created by 박민주 on 2023/05/13.
//

// MARK: Iteration
func iterationGCD(_ a: Int, _ b: Int) -> Int {
    var a = a, b = b
    while b > 0 {
        let tmp = a
        a = b
        b = tmp % b
    }
    return a
}

// MARK: Recursive
func recursiveGCD(_ a: Int, _ b: Int) -> Int {
    return b == 0 ? a : recursiveGCD(b, a % b)
}
