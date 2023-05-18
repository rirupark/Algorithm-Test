//
//  2447. 별 찍기 - 10.swift
//  Algorithm Test
//
//  Created by 박민주 on 2023/05/18.
//
// 분할 정복, 재귀

func B2447() {
    let n = Int(readLine()!)!
    star(n, ["*"])

    func star(_ n: Int, _ arr: [String]) {
        if n <= 1 { arr.forEach{ print($0) }; return }
        let line1 = arr.map{ $0 + $0 + $0 }
        let line2 = arr.map{ $0 + String(repeating: " ", count: $0.count) + $0 }
        star(n / 3, line1 + line2 + line1)
    }
}
