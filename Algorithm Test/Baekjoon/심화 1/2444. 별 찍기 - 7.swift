//
//  2444. 별 찍기 - 7.swift
//  Algorithm Test
//
//  Created by 박민주 on 2023/05/03.
//

func B2444() {
    let n = Int(readLine()!)!
    var sum = -1
    for i in 1...(2 * n - 1) {
        if i <= n {
            sum += 2
            print(String(repeating: " ", count: n - i) + String(repeating: "*", count: sum))
        } else {
            sum -= 2
            print(String(repeating: " ", count: i - n) + String(repeating: "*", count: sum))
        }
    }
}
