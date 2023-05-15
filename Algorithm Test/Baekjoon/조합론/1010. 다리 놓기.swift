//
//  1010. 다리 놓기.swift
//  Algorithm Test
//
//  Created by 박민주 on 2023/05/15.
//
// 수학, 다이나믹 프로그래밍, 조합론

func B1010() {
    let t = Int(readLine()!)!
    for _ in 0..<t {
        let nm = readLine()!.split(separator: " ").map{Int($0)!}
        let n = nm[0], m = nm[1]
        var cache = Array(repeating: Array(repeating: 0, count: 31), count: 31)
        for i in 0...30 {
            for j in 0...i {
                if i == j || j == 0 { cache[i][j] = 1 }
                else { cache[i][j] = cache[i - 1][j - 1] + cache[i - 1][j] }
            }
        }
        print(cache[m][n])
    }
}
