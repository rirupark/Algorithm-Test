//
//  24444. 알고리즘 수업 - 너비 우선 탐색 1.swift
//  Algorithm Test
//
//  Created by 박민주 on 2023/05/23.
//
// 그래프 이론, 그래프 탐색, 정렬, 너비 우선 탐색

// * -------------------- Pseudocode --------------------- *
//bfs(V, E, R) {  # V : 정점 집합, E : 간선 집합, R : 시작 정점
//    for each v ∈ V - {R}
//        visited[v] <- NO;
//    visited[R] <- YES;  # 시작 정점 R을 방문 했다고 표시한다.
//    enqueue(Q, R);  # 큐 맨 뒤에 시작 정점 R을 추가한다.
//    while (Q ≠ ∅) {
//        u <- dequeue(Q);  # 큐 맨 앞쪽의 요소를 삭제한다.
//        for each v ∈ E(u)  # E(u) : 정점 u의 인접 정점 집합.(정점 번호를 오름차순으로 방문한다)
//            if (visited[v] = NO) then {
//                visited[v] <- YES;  # 정점 v를 방문 했다고 표시한다.
//                enqueue(Q, v);  # 큐 맨 뒤에 정점 v를 추가한다.
//            }
//    }
//}
// * ----------------------------------------------------- *

func B24444() {
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
            for node in graph[current].sorted() { // 현재 노드의 인접 정점 번호를 오름차순으로 방문
                if visited[node] == 0 { // 처음 방문인 경우
                    depth += 1
                    visited[node] = depth
                    queue.append(node)
                }
            }
            index += 1
        }
    }
}
