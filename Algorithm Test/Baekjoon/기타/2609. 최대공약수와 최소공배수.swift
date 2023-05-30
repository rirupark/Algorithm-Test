//
//  2609. 최대공약수와 최소공배수.swift
//  Algorithm Test
//
//  Created by 박민주 on 2023/05/30.
//
// 수학, 정수론, 유클리드 호제법

func B2609() {
    let ab = readLine()!.split(separator: " ").map{Int($0)!}.sorted(by: >)
    var a = ab[0], b = ab[1]
    while b > 0 {
        let tmp = a
        a = b
        b = tmp % b
    }
    print(a)
    print(ab[0] / a * ab[1])
}
