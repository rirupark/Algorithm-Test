//
//  Lv3. 네트워크.swift
//  Algorithm Test
//
//  Created by 박민주 on 11/18/23.
//

import Foundation

func solution네트워크(_ n:Int, _ computers:[[Int]]) -> Int {
    var computers = computers
    var visited = [Bool](repeating: false, count: n)
    var count = 0
    
    func dfs(_ start: Int) {
        visited[start] = true
        for node in 0..<n {
            if !visited[node] && computers[start][node] == 1 {
                dfs(node)
            }
        }
    }
    
    for i in 0..<n {
        if !visited[i] {
            dfs(i)
            count += 1
        }
    }
    return count
}
