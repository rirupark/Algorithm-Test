//
//  24479. 알고리즘 수업 - 깊이 우선 탐색 1.swift
//  Algorithm Test
//
//  Created by 박민주 on 2023/05/22.
//
// 그래프 이론, 그래프 탐색, 정렬, 깊이 우선 탐색

func B24479() {
    let nmr = readLine()!.split(separator: " ").map{Int($0)!}
    let n = nmr[0], m = nmr[1], r = nmr[2]
    var visited = [Int](repeating: 0, count: n + 1)
    var graph = [[Int]](repeating: [], count: n + 1)
    var depth = 1 // 방문 노드(순서)
    for _ in 0..<m {
        let uv = readLine()!.split(separator: " ").map{Int($0)!}
        graph[uv[0]].append(uv[1])
        graph[uv[1]].append(uv[0])
    }

    dfs(r)
    for i in 1..<visited.count { print(visited[i]) }

    func dfs(_ start: Int) { // start는 방문 순서
        visited[start] = depth // 시작 정점 start에 방문 순서 넣기
        for node in graph[start].sorted() { // 정점 번호를 오름차순으로 방문
            if visited[node] == 0 { depth += 1; dfs(node) }
        }
    }
}
