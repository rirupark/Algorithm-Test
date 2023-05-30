//
//  1932. 정수 삼각형.swift
//  Algorithm Test
//
//  Created by 박민주 on 2023/05/29.
//
// DP
// 점화식
// dp[i][j] = max(dp[i-1][j], dp[i-1][j-1]) + input[i][j]
// dp[i][j] = dp[i-1][j] + input[i][j]
// dp[i][j] = dp[i-1][j-1] + input[i][j]

func B1932() {
    let n = Int(readLine()!)!
    var input = [[Int]]()
    var cache = [[Int]](repeating: [Int](repeating: 0, count: n), count: n)
    for _ in 0..<n {
        input.append(readLine()!.split(separator: " ").map{Int($0)!})
    }
    cache[0][0] = input[0][0]

    for i in 1..<n {
        for j in 0...i {
            if j == 0 {
                cache[i][j] = cache[i - 1][j] + input[i][j]
            } else if j == i {
                cache[i][j] = cache[i - 1][j - 1] + input[i][j]
            } else {
                cache[i][j] = max(cache[i - 1][j], cache[i - 1][j - 1]) + input[i][j]
            }
        }
    }
    print(cache[n - 1].max()!)
}
