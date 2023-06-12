//
//  1629. 곱셈.swift
//  Algorithm Test
//
//  Created by 박민주 on 2023/06/12.
//
// 수학, 분할 정복을 이용한 거듭제곱

func B1629() {
    let abc = readLine()!.split(separator: " ").map{Int($0)!}
    let a = abc[0], b = abc[1], c = abc[2]

    func exponentiation(_ num: Int, _ n: Int) -> Int {
        if n == 1 { return num }
        if n % 2 != 0 { return exponentiation(num, n - 1) * num }
        let temp = exponentiation(num, n / 2) % c
        return temp * temp % c
    }
    print(exponentiation(a, b) % c)
}
