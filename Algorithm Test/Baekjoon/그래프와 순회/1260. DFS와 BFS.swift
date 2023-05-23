//
//  1260. DFS와 BFS.swift
//  Algorithm Test
//
//  Created by 박민주 on 2023/05/23.
//
// 그래프 이론, 그래프 탐색, 너비 우선 탐색, 깊이 우선 탐색

func B1260() {
    let nmr = readLine()!.split(separator: " ").map{Int($0)!}
    let n = nmr[0], m = nmr[1], r = nmr[2]
    var visitedDFS = [Bool](repeating: false, count: n + 1)
    var visitedBFS = [Bool](repeating: false, count: n + 1)
    var answerDFS = [Int](), answerBFS = [Int]()
    var graph = [[Int]](repeating: [], count: n + 1)

    for _ in 0..<m {
        let uv = readLine()!.split(separator: " ").map{Int($0)!}
        graph[uv[0]].append(uv[1])
        graph[uv[1]].append(uv[0])
    }

    dfs(r)
    print(answerDFS.map{String($0)}.joined(separator: " "))
    bfs(r)
    print(answerBFS.map{String($0)}.joined(separator: " "))

    func dfs(_ start: Int) {
        visitedDFS[start] = true
        answerDFS.append(start)
        for node in graph[start].sorted() {
            if !visitedDFS[node] { dfs(node) }
        }
    }
    func bfs(_ start: Int) {
        var queue = [start], index = 0
        visitedBFS[start] = true
        answerBFS.append(start)
        while queue.count > index {
            let current = queue[index]
            for node in graph[current].sorted() {
                if !visitedBFS[node]{
                    visitedBFS[node] = true
                    answerBFS.append(node)
                    queue.append(node)
                }
            }
            index += 1
        }
    }

}
