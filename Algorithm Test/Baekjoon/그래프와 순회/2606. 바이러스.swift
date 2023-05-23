//
//  2606. 바이러스.swift
//  Algorithm Test
//
//  Created by 박민주 on 2023/05/23.
//
// 그래프 이론, 그래프 탐색, 너비 우선 탐색, 깊이 우선 탐색

func B2606_DFS() {
    let n = Int(readLine()!)!, m = Int(readLine()!)!
    var visited = [Bool](repeating: false, count: n + 1)
    var graph = [[Int]](repeating: [], count: n + 1)
    for _ in 0..<m {
        let input = readLine()!.split(separator: " ").map{Int($0)!}
        graph[input[0]].append(input[1])
        graph[input[1]].append(input[0])
    }
    dfs(1)
    print(visited.filter{$0}.count - 1)

    func dfs(_ start: Int) {
        visited[start] = true
        for node in graph[start] {
            if !visited[node] { dfs(node) }
        }
    }
}

func B2606_BFS() {
    let n = Int(readLine()!)!, m = Int(readLine()!)!
    var visited = [Bool](repeating: false, count: n + 1)
    var graph = [[Int]](repeating: [], count: n + 1)
    for _ in 0..<m {
        let input = readLine()!.split(separator: " ").map{Int($0)!}
        graph[input[0]].append(input[1])
        graph[input[1]].append(input[0])
    }

    bfs(1)
    print(visited.filter{$0}.count - 1)

    func bfs(_ start: Int) {
        var queue = [start], index = 0
        visited[start] = true
        while queue.count > index {
            let current = queue[index]
            for node in graph[current] {
                if !visited[node] {
                    visited[node] = true
                    queue.append(node)
                }
            }
            index += 1
        }
    }
}
