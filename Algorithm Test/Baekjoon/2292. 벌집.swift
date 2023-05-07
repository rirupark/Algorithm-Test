//
//  2292. 벌집.swift
//  Algorithm Test
//
//  Created by 박민주 on 2023/05/07.
//

func B2292() {
    var n = Int(readLine()!)! - 1
    var answer = 1
    while n > 0 {
        n -= 6 * answer
        answer += 1
    }
    print(answer)
}
