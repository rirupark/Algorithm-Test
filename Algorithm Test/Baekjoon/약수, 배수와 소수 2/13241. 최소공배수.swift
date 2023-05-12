//
//  13241. 최소공배수.swift
//  Algorithm Test
//
//  Created by 박민주 on 2023/05/12.
//
// 수학, 정수론, 유클리드 호제법

func B13241() {
    let ab = readLine()!.split(separator: " ").map{Int($0)!}.sorted(by: >)
    var a = ab[0], b = ab[1]
    while b > 0 {
        let tmp = a
        a = b
        b = tmp % b
    }
    print(ab[0] / a * ab[1])
}
