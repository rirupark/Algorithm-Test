//
//  1100. 하얀 칸.swift
//  Algorithm Test
//
//  Created by 박민주 on 2023/08/10.
//

func B1100() {
    var board = [[String]](), answer = 0
    for _ in 0..<8 { board.append(readLine()!.map{String($0)}) }
    for i in 0..<8 {
        for j in 0..<8 {
            if i % 2 == 0 {
                if j % 2 == 0 && board[i][j] == "F" { answer += 1 }
            } else {
                if j % 2 != 0 && board[i][j] == "F" { answer += 1 }
            }
        }
    }
    print(answer)
}
