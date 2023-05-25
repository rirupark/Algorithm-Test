//
//  7562. 나이트의 이동.swift
//  Algorithm Test
//
//  Created by 박민주 on 2023/05/25.
//
// 그래프 이론, 그래프 탐색, 너비 우선 탐색

func B7562() {
    let t = Int(readLine()!)!
    for _ in 0..<t {
        let l = Int(readLine()!)!
        let current = readLine()!.split(separator: " ").map{Int($0)!}
        let goal = readLine()!.split(separator: " ").map{Int($0)!}
        var visited = [[Bool]](repeating: [Bool](repeating: false, count: l), count: l)
        let dx = [1, 2, 1, 2, -1, -2, -1, -2]
        let dy = [2, 1, -2, -1, 2, 1, -2, -1]
        var queue = [(current[0], current[1], 0)], index = 0
        
        visited[current[0]][current[1]] = true
        while queue.count > index {
            let x = queue[index].0, y = queue[index].1
            let count = queue[index].2
            if x == goal[0] && y == goal[1] { print(count); break } // 종료
            for i in 0..<8 {
                let nx = x + dx[i], ny = y + dy[i]
                if nx >= 0 && nx < l && ny >= 0 && ny < l && !visited[nx][ny] {
                    visited[nx][ny] = true
                    queue.append((nx, ny, count + 1))
                }
            }
            index += 1
        }
    }
}
