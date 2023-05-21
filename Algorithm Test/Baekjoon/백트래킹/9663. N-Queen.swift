//
//  9663. N-Queen.swift
//  Algorithm Test
//
//  Created by 박민주 on 2023/05/19.
//

func B9663() {
    let n = Int(readLine()!)!
    var column = Array(repeating: false, count: n)
    var diagonal1 = Array(repeating: false, count: 2 * n - 1)
    var diagonal2 = Array(repeating: false, count: 2 * n - 1)
    var count = 0

    nQueen(0)
    print(count)

    // 해당 자리에 놓을 수 있는지 검사
    func check(_ row: Int, _ col: Int) -> Bool {
        if column[col] || diagonal1[row + col] || diagonal2[row - col + n - 1] {
            return false
        } else { return true }
    }

    // 각 행마다 퀸 놓기
    func nQueen(_ row: Int) { // 현재 행에 대해 각 열을 순회
        if row == n { count += 1; return }
        for col in 0..<n {
            if check(row, col) {
                column[col] = true; diagonal1[row + col] = true; diagonal2[row - col + n - 1] = true
                nQueen(row + 1)
                column[col] = false; diagonal1[row + col] = false; diagonal2[row - col + n - 1] = false
            }
        }
    }
}
