//
//  11047. 동전 0.swift
//  Algorithm Test
//
//  Created by 박민주 on 2023/06/04.
//
// 그리디 알고리즘

func B11047() {
    let nk = readLine()!.split(separator: " ").map{Int($0)!}
    var coins = [Int](), k = nk[1], count = 0
    for _ in 0..<nk[0] { coins.append(Int(readLine()!)!) }
    for coin in coins.sorted(by: >) {
        if k == 0 { break }
        if k / coin > 0 { count += k / coin; k = k % coin }
    }
    print(count)
}
