//
//  2178. 미로 탐색.swift
//  Algorithm Test
//
//  Created by 박민주 on 2023/05/24.
//
// 그래프 이론, 그래프 탐색, 너비 우선 탐색

func B2178() {
    let nm = readLine()!.split(separator: " ").map{Int($0)!}
    var graph = [[Int]]()
    var queue = [(0, 0)]
    let dx = [1, 0, -1, 0], dy = [0, 1, 0, -1]
    for _ in 0..<nm[0] { graph.append(readLine()!.map{Int(String($0))!}) }

    while !queue.isEmpty {
        let (x, y) = queue.removeFirst()
        for i in 0..<4 {
            let nx = x + dx[i], ny = y + dy[i]
            if nx < 0 || ny < 0 || nx >= nm[0] || ny >= nm[1] || graph[nx][ny] == 0 { continue }
            if graph[nx][ny] == 1 {
                graph[nx][ny] = graph[x][y] + 1
                queue.append((nx, ny))
            }
        }
    }
    print(graph[nm[0] - 1][nm[1] - 1])
}
