//
//  1012. 유기농 배추.swift
//  Algorithm Test
//
//  Created by 박민주 on 2023/05/24.
//
// 그래프 이론, 그래프 탐색, 너비 우선 탐색, 깊이 우선 탐색

func B1012() {
    let t = Int(readLine()!)!
    let dx = [1, 0, -1, 0], dy = [0, 1, 0, -1]

    for _ in 0..<t {
        let mnk = readLine()!.split(separator: " ").map{Int($0)!}
        var graph = [[Bool]](repeating: [Bool](repeating: false, count: mnk[1]), count: mnk[0])
        var visited = [[Bool]](repeating: [Bool](repeating: false, count: mnk[1]), count: mnk[0])
        var count = 0
        for _ in 0..<mnk[2] {
            let xy = readLine()!.split(separator: " ").map{Int($0)!}
            graph[xy[0]][xy[1]] = true
        }
        for i in 0..<mnk[0] {
            for j in 0..<mnk[1] {
                if graph[i][j] && !visited[i][j] {
                    count += 1
                    dfs(&graph, &visited, i, j, mnk[0], mnk[1])
                }
            }
        }
        print(count)
    }

    func dfs(_ graph: inout [[Bool]], _ visited: inout [[Bool]], _ x: Int, _ y: Int, _ maxX: Int, _ maxY: Int) {
        visited[x][y] = true
        for i in 0..<4 {
            let nx = x + dx[i], ny = y + dy[i]
            if nx >= 0 && ny >= 0 && nx < maxX && ny < maxY && !visited[nx][ny] && graph[nx][ny] {
                dfs(&graph, &visited, nx, ny, maxX, maxY)
            }
        }
    }
}
