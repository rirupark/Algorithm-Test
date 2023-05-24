//
//  1697. 숨바꼭질.swift
//  Algorithm Test
//
//  Created by 박민주 on 2023/05/25.
//
// 그래프 이론, 그래프 탐색, 너비 우선 탐색

func B1697() {
    let nk = readLine()!.split(separator: " ").map{Int($0)!}
    var visited = [Bool](repeating: false, count: 100001)
    var queue = [(nk[0], 0)], index = 0
    visited[nk[0]] = true

    while queue.count > index {
        let current = queue[index].0, time = queue[index].1
        if current == nk[1] { print(time); break }
        for i in [1, -1, current] {
            let next = current + i
            if next >= 0 && next <= 100000 && !visited[next] {
                visited[next] = true
                queue.append((next, time + 1))
            }
        }
        index += 1
    }
}
