//
//  16928. 뱀과 사다리 게임.swift
//  Algorithm Test
//
//  Created by 박민주 on 2023/06/01.
//
// 그래프 이론, 그래프 탐색, 너비 우선 탐색

func B16928() {
    let nm = readLine()!.split(separator: " ").map{Int($0)!}
    let n = nm[0], m = nm[1]
    var arr = [[Int]]()
    var queue = [(1, 0)], index = 0
    var visited = [Bool](repeating: false, count: 101)
    for _ in 0..<n + m {
        arr.append(readLine()!.split(separator: " ").map{Int($0)!})
    }

    visited[1] = true
    while queue.count > index {
        let last = queue[index]
        var current = last.0
        if current == 100 { print(last.1); break }
        for i in arr {
            if i[0] == current { current = i[1] }
        }
        for i in 1...6 {
            if current + i <= 100 && !visited[current + i] {
                visited[current + i] = true
                queue.append((current + i, last.1 + 1))
            }
        }
        index += 1
    }
}
