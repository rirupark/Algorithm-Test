//
//  24445. 알고리즘 수업 - 너비 우선 탐색 2.swift
//  Algorithm Test
//
//  Created by 박민주 on 2023/05/23.
//

func B24445() {
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

    bfs(r)
    for i in 1..<visited.count { print(visited[i]) }

    func bfs(_ start: Int) { // start는 시작 노드
        var queue = [start], index = 0
        visited[start] = depth // 시작 정점 start에 방문 순서 넣기
        while queue.count > index {
            let current = queue[index] // 인접 정점 찾기 위한 현재 노드
            for node in graph[current].sorted(by: >) { // 인접 정점 번호를 내림차순으로 방문
                if visited[node] == 0 {
                    depth += 1
                    visited[node] = depth
                    queue.append(node)
                }
            }
            index += 1
        }
    }
}
