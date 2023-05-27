//
//  14889. 스타트와 링크.swift
//  Algorithm Test
//
//  Created by 박민주 on 2023/05/19.
//
// 브루트포스 알고리즘, 백트래킹

func B14889() {
    let n = Int(readLine()!)!
    var array = [[Int]]()
    var startTeam = 0, linkTeam = 0
    var visited = [Bool](repeating: false, count: n)
    var depth = 1, minValue = Int.max
    for _ in 0..<n {
        array.append(readLine()!.split(separator: " ").map{Int($0)!})
    }

    func divideTeam(_ depth: Int, _ start: Int) {
        if depth == n / 2 {
            startTeam = 0; linkTeam = 0
            for i in 0..<n {
                for j in 0..<n {
                    if visited[i] && visited[j] {
                        startTeam += array[i][j]
                    }
                    if !visited[i] && !visited[j] {
                        linkTeam += array[i][j]
                    }
                }
            }
            minValue = min(abs(startTeam - linkTeam), minValue)
            return
        }
        for i in start..<n {
            if !visited[i] {
                visited[i] = true
                divideTeam(depth + 1, i)
                visited[i] = false
            }
        }
    }

    divideTeam(0, 0)
    print(minValue)

}
