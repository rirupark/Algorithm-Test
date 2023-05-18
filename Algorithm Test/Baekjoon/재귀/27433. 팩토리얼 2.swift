//
//  27433. 팩토리얼 2.swift
//  Algorithm Test
//
//  Created by 박민주 on 2023/05/18.
//
// 수학, 사칙연산

func B27433() {
    func factorialN(_ n: Int) -> Int {
        if n < 1 { return 1 }
        return n * factorialN(n - 1)
    }
    print(factorialN(Int(readLine()!)!))
}
