//
//  1780. 종이의 개수.swift
//  Algorithm Test
//
//  Created by 박민주 on 2023/06/10.
//
// 분할 정복, 재귀

func B1780() {
    let n = Int(readLine()!)!
    var board = [[Int]](), zeroCnt = 0, minusCnt = 0, oneCnt = 0
    for _ in 0..<n {
        board.append(readLine()!.split(separator: " ").map{Int($0)!})
    }

    func dividePaper(_ x: Int, _ y: Int, _ n: Int) {
        var zeroTemp = 0, minusTemp = 0, oneTemp = 0
        for j in y..<y + n {
            for i in x..<x + n {
                if board[j][i] == 0 { zeroTemp += 1 }
                else if board[j][i] == -1 { minusTemp += 1 }
                else { oneTemp += 1 }
            }
        }
        if zeroTemp == n * n { zeroCnt += 1; return }
        if minusTemp == n * n { minusCnt += 1; return }
        if oneTemp == n * n { oneCnt += 1; return }
        
        dividePaper(x, y, n / 3)
        dividePaper(x, y + n / 3, n / 3)
        dividePaper(x, y + n * 2 / 3, n / 3)
        dividePaper(x + n / 3, y, n / 3)
        dividePaper(x + n / 3, y + n / 3, n / 3)
        dividePaper(x + n / 3, y + n * 2 / 3, n / 3)
        dividePaper(x + n * 2 / 3, y, n / 3)
        dividePaper(x + n * 2 / 3, y + n / 3, n / 3)
        dividePaper(x + n * 2 / 3, y + n * 2 / 3, n / 3)
    }

    dividePaper(0, 0, n)
    print("\(minusCnt)\n\(zeroCnt)\n\(oneCnt)")
}
