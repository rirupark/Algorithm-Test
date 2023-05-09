//
//  1018. 체스판 다시 칠하기.swift
//  Algorithm Test
//
//  Created by 박민주 on 2023/05/09.
//

func B1018() {
    let nm = readLine()!.split(separator: " ").map{Int($0)!}
    var board = [[Character]]()
    for _ in 0..<nm[0] {
        board.append(readLine()!.map{$0})
    }
    var minCount = nm[0] * nm[1]
    for row in 0..<nm[0]-7 {
        for col in 0..<nm[1]-7 {
            var cntStartW = 0
            var cntStartB = 0
            for i in row..<row+8 {
                for j in col..<col+8 {
                    if (i + j) % 2 == 0 {
                        if board[i][j] == "B" { cntStartW += 1 }
                        else { cntStartB += 1 }
                    } else {
                        if board[i][j] == "B" { cntStartB += 1 }
                        else { cntStartW += 1 }
                    }
                }
            }
            minCount = min(minCount, cntStartW, cntStartB)
        }
    }
    print(minCount)
}
