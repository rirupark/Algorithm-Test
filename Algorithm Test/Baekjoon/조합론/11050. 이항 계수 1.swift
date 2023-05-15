//
//  11050. 이항 계수 1.swift
//  Algorithm Test
//
//  Created by 박민주 on 2023/05/15.
//
// 수학, 구현, 조합론

func B11050() {
    let nk = readLine()!.split(separator: " ").map{Int($0)!}
    let n = nk[0], k = nk[1]
    print(factorial(n) / (factorial(k) * factorial(n - k)))

    func factorial(_ n: Int) -> Int {
        var result = 1
        if n == 0 { return 1 }
        for num in 1...n { result *= num }
        return result
    }
}
