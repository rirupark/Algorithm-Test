//
//  11660. 구간 합 구하기 5.swift
//  Algorithm Test
//
//  Created by 박민주 on 2023/06/03.
//
// DP, 누적 합

func B11660() {
    let nm = readLine()!.split(separator: " ").map{Int($0)!}
    let n = nm[0], m = nm[1]
    var graph = [[Int]](repeating: [Int](repeating: 0, count: n + 1), count: n + 1)
    for i in 1...n {
        graph[i] = [0] + readLine()!.split(separator: " ").map{Int($0)!}
    }
    for i in 1...n {
        for j in 1...n {
            graph[i][j] += graph[i - 1][j] + graph[i][j - 1] - graph[i - 1][j - 1]
        }
    }
    for _ in 0..<m {
        let input = readLine()!.split(separator: " ").map{Int($0)!}
        let x1 = input[0], y1 = input[1], x2 = input[2], y2 = input[3]
        print(graph[x2][y2] - graph[x1 - 1][y2] - graph[x2][y1 - 1] + graph[x1 - 1][y1 - 1])
    }
}
