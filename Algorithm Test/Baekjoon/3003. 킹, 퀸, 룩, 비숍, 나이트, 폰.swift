//
//  3003. 킹, 퀸, 룩, 비숍, 나이트, 폰.swift
//  Algorithm Test
//
//  Created by 박민주 on 2023/05/03.
//

func B3003() {
    let input = readLine()!.split(separator: " ").map{Int($0)!}
    let piece = [1, 1, 2, 2, 2, 8]
    var answer = Array(repeating: 0, count: 6)
    for i in 0..<piece.count {
        answer[i] = piece[i] - input[i]
    }
    print(answer.map{String($0)}.joined(separator: " "))
}
