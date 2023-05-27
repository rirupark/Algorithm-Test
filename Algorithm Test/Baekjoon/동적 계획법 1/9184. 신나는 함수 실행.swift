//
//  9184. 신나는 함수 실행.swift
//  Algorithm Test
//
//  Created by 박민주 on 2023/05/27.
//
// 다이나믹 프로그래밍, 재귀

func B9184() {
    var memo = [[[Int]]](repeating: [[Int]](repeating: [Int](repeating: 0, count: 21), count: 21), count: 21)
    while true {
        let input = readLine()!.split(separator: " ").map{Int($0)!}
        if input == [-1, -1, -1] { break } // exit
        let a = input[0], b = input[1], c = input[2]
        print("w(\(a), \(b), \(c)) =", w(a, b, c))
    }

    func w(_ a: Int, _ b: Int, _ c: Int) -> Int {
        if a <= 0 || b <= 0 || c <= 0 { return 1 }
        if a > 20 || b > 20 || c > 20 { return w(20, 20, 20) }
        if memo[a][b][c] != 0 { return memo[a][b][c] } // Memoization
        if a < b && b < c {
            memo[a][b][c] = w(a, b, c - 1) + w(a, b - 1, c - 1) - w(a, b - 1, c)
            return memo[a][b][c]
        }
        memo[a][b][c] = w(a - 1, b, c) + w(a - 1, b - 1, c) + w(a - 1, b, c - 1) - w(a - 1, b - 1, c - 1)
        
        return memo[a][b][c]
    }
}
