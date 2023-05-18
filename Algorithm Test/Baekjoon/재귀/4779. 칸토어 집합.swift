//
//  4779. 칸토어 집합.swift
//  Algorithm Test
//
//  Created by 박민주 on 2023/05/18.
//
// 분할 정복, 재귀

import Foundation

func B4779() {
    while let input = readLine(), let n = Double(input) {
        print(cantor(Int(pow(3.0, n))))
    }
    func cantor(_ n: Int) -> String {
        if n <= 1 { return "-" }
        let line = cantor(n / 3)
        return line + String(repeating: " ", count: n / 3) + line
    }
}
