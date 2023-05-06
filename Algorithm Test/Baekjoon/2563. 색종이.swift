//
//  2563. 색종이.swift
//  Algorithm Test
//
//  Created by 박민주 on 2023/05/05.
//

func B2563() {
    let n = Int(readLine()!)!
    var matrix: [[Int]] = Array(repeating: Array(repeating: 0, count: 100), count: 100)
    var answer = 0
    for _ in 0..<n {
        let xy = readLine()!.split(separator: " ").map{Int($0)!}
        for x in xy[0]..<xy[0]+10 {
            for y in xy[1]..<xy[1]+10 {
                matrix[x][y] = 1
            }
        }
    }
    for i in 0..<100 {
        answer += matrix[i].filter{$0 == 1}.count
    }
    print(answer)
}
