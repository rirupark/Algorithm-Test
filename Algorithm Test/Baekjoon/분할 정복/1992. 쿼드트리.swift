//
//  1992. 쿼드트리.swift
//  Algorithm Test
//
//  Created by 박민주 on 2023/06/09.
//
// 분할 정복, 재귀

func B1992() {
    let n = Int(readLine()!)!
    var board = [[Character]](), answer = ""
    for _ in 0..<n { board.append(readLine()!.map{$0}) }

    func makeQuadTree(_ x: Int, _ y: Int, _ n: Int) {
        var zeroCnt = 0, oneCnt = 0
        for j in y..<y + n {
            for i in x..<x + n {
                if board[j][i] == "0" { zeroCnt += 1 }
                else { oneCnt += 1 }
            }
        }
        if zeroCnt == n * n { answer += "0"; return }
        if oneCnt == n * n { answer += "1"; return }
        
        answer += "("
        makeQuadTree(x, y, n / 2)
        makeQuadTree(x + n / 2, y, n / 2)
        makeQuadTree(x, y + n / 2, n / 2)
        makeQuadTree(x + n / 2, y + n / 2, n / 2)
        answer += ")"
    }

    makeQuadTree(0, 0, n)
    print(answer)
}
