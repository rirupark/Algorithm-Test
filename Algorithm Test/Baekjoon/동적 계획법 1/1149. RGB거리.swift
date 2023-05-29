//
//  1149. RGB거리.swift
//  Algorithm Test
//
//  Created by 박민주 on 2023/05/29.
//
// DP
// 이전에 무슨 색상이 칠해져 있는지만 살펴보고, 지금 칠할 수 있는 색상 중 최소 가격을 갖는 색상을 찾아 더함.
// 예를 들어, 지금 손에 들고 있는 색상이 R이라면, 이전 집에 G가 칠해졌을 때와 B가 칠해졌을 때를 비교하여 최솟값을 가져오고, 이어서 지금 손에 들고 있는 색상 R을 칠함.
// 3가지 방향으로 접근하여 N번째까지 드는 비용을 각각 구하여 최소 비용을 찾아내야 함.
// 마지막 집(시작 집)을 무슨 색으로 하느냐에 따라 달라지므로 3가지 모두 생각해줘야 함.

func B1149() {
    let n = Int(readLine()!)!
    var input = [[Int]](repeating: [0, 0, 0], count: n + 1)
    var cache = [[Int]](repeating: [Int](repeating: 0, count: 3), count: n + 1)
    for i in 1...n {
        input[i] = readLine()!.split(separator: " ").map{Int($0)!}
    }
    for i in 1...n {
        cache[i][0] = min(cache[i - 1][1], cache[i - 1][2]) + input[i][0]
        cache[i][1] = min(cache[i - 1][0], cache[i - 1][2]) + input[i][1]
        cache[i][2] = min(cache[i - 1][0], cache[i - 1][1]) + input[i][2]
    }
    print(cache[n].min()!)
}
