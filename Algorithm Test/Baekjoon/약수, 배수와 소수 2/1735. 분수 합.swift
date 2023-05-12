//
//  1735. 분수 합.swift
//  Algorithm Test
//
//  Created by 박민주 on 2023/05/12.
//
// 수학, 정수론, 유클리드 호제법

func B1735() {
    let ab1 = readLine()!.split(separator: " ").map{Int($0)!}
    let ab2 = readLine()!.split(separator: " ").map{Int($0)!}
    let lcm = ab1[1] / getGcd(max(ab1[1], ab2[1]), min(ab1[1], ab2[1])) * ab2[1]
    let top = ab1[0] * (lcm / ab1[1]) + ab2[0] * (lcm / ab2[1])
    let gcd = getGcd(max(lcm, top), min(lcm, top))
    print(top / gcd, lcm / gcd)

    func getGcd(_ a: Int, _ b: Int) -> Int {
        var a = a, b = b
        while b > 0 {
            let tmp = a
            a = b
            b = tmp % b
        }
        return a
    }
}
