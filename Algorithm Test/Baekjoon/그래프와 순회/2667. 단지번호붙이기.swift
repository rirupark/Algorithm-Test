//
//  2667. 단지번호붙이기.swift
//  Algorithm Test
//
//  Created by 박민주 on 2023/05/24.
//
// 그래프 이론, 그래프 탐색, 너비 우선 탐색, 깊이 우선 탐색

func B2667() {
    let n = Int(readLine()!)!
    var graph = [[Int]]()
    var visited = [[Bool]](repeating: [Bool](repeating: false, count: n + 1), count: n + 1)
    let dx = [1, 0, -1, 0], dy = [0, 1, 0, -1]
    var countArr = [Int]()
    var count = 0

    for _ in 0..<n {
        let input = readLine()!.map{Int(String($0))!}
        graph.append(input)
    }

    for i in 0..<n {
        for j in 0..<n {
            if graph[i][j] == 1 && !visited[i][j] {
                dfs(i, j)
                countArr.append(count)
                count = 0
            }
        }
    }
    print(countArr.count)
    for num in countArr.sorted() { print(num) }

    func dfs(_ x: Int, _ y: Int) {
        count += 1
        visited[x][y] = true
        for i in 0..<4 {
            let nx = x + dx[i], ny = y + dy[i]
            if nx >= 0 && ny >= 0 && nx < n && ny < n && !visited[nx][ny] && graph[nx][ny] == 1 {
                dfs(nx, ny)
            }
        }
    }
}
