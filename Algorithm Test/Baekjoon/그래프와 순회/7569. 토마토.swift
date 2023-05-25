//
//  7569. 토마토.swift
//  Algorithm Test
//
//  Created by 박민주 on 2023/05/25.
//

func B7569() {
    let mnh = readLine()!.split(separator: " ").map{Int($0)!}
    let m = mnh[0], n = mnh[1], h = mnh[2]
    var graph = [[[Int]]](repeating: [], count: h)
    let dx = [1, 0, -1, 0, 0, 0], dy = [0, 1, 0, -1, 0, 0], dz = [0, 0, 0, 0, 1, -1]
    var queue = [(Int, Int, Int)](), index = 0
    for i in 0..<h {
        for _ in 0..<n {
            graph[i].append(readLine()!.split(separator: " ").map{Int($0)!})
        }
    }
    for z in 0..<h {
        for i in 0..<n {
            for j in 0..<m {
                if graph[z][i][j] == 1 { queue.append((z, i, j)) }
            }
        }
    }
    while queue.count > index {
        let x = queue[index].2, y = queue[index].1, z = queue[index].0
        for i in 0..<6 {
            let nx = x + dx[i], ny = y + dy[i], nz = z + dz[i]
            if nx >= 0 && nx < m && ny >= 0 && ny < n && nz >= 0 && nz < h && graph[nz][ny][nx] == 0 {
                graph[nz][ny][nx] = graph[z][y][x] + 1
                queue.append((nz, ny, nx))
            }
        }
        index += 1
    }
    let result = graph.flatMap{$0}.flatMap{$0}
    print(result.contains(0) ? -1 : result.max()! - 1)
}
