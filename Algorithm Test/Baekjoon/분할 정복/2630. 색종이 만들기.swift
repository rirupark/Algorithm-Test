//
//  2630. 색종이 만들기.swift
//  Algorithm Test
//
//  Created by 박민주 on 2023/06/08.
//
// 분할 정복, 재귀

func B2630() {
    let n = Int(readLine()!)!
    var board = [[Int]](), whiteCnt = 0, blueCnt = 0
    for _ in 0..<n {
        board.append(readLine()!.split(separator: " ").map{Int($0)!})
    }
    
    func dividePaper(_ x: Int, _ y: Int, _ n: Int) {
        var whiteTemp = 0, blueTemp = 0
        for j in y..<y + n {
            for i in x..<x + n {
                if board[j][i] == 0 { whiteTemp += 1 }
                else { blueTemp += 1 }
            }
        }
        if whiteTemp == n * n { whiteCnt += 1; return }
        if blueTemp == n * n { blueCnt += 1; return }
        
        dividePaper(x, y, n / 2)
        dividePaper(x + n / 2, y, n / 2)
        dividePaper(x, y + n / 2, n / 2)
        dividePaper(x + n / 2, y + n / 2, n / 2)
    }

    dividePaper(0, 0, n)
    print("\(whiteCnt)\n\(blueCnt)")
}
