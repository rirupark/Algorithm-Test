//
//  7576. 토마토.swift
//  Algorithm Test
//
//  Created by 박민주 on 2023/05/25.
//
// 그래프 이론, 그래프 탐색, 너비 우선 탐색
// 시작점이 여러 개인 BFS 문제

func B7576() {
    let mn = readLine()!.split(separator: " ").map{Int($0)!}
    let m = mn[0], n = mn[1]
    var graph = [[Int]]()
    let dx = [1, 0, -1, 0], dy = [0, 1, 0, -1]
    var queue = [(Int, Int)](), index = 0
    for _ in 0..<n {
        graph.append(readLine()!.split(separator: " ").map{Int($0)!})
    }
    for i in 0..<n {
        for j in 0..<m {
            if graph[i][j] == 1 { queue.append((i, j)) }
        }
    }
    while queue.count > index {
        let x = queue[index].1, y = queue[index].0
        for i in 0..<4 {
            let nx = x + dx[i], ny = y + dy[i]
            if nx >= 0 && nx < m && ny >= 0 && ny < n && graph[ny][nx] == 0 {
                graph[ny][nx] = graph[y][x] + 1
                queue.append((ny, nx))
            }
        }
        index += 1
    }
    let result = graph.flatMap{$0}
    print(result.contains(0) ? -1 : result.max()! - 1)
}
