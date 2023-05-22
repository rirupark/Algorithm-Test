//
//  2580. 스도쿠.swift
//  Algorithm Test
//
//  Created by 박민주 on 2023/05/19.
//
// 백트래킹

import Foundation

// check 함수를 3개로 분리해서 해결 (79516KB, 380ms)
func B2580() {
    var board = [[Int]]()
    var points = [(Int, Int)]()
    for i in 0..<9 {
        let values = readLine()!.split(separator: " ").map{Int($0)!}
        board.append(values)
        for j in 0..<9 { // 빈 칸 좌표 저장
            if board[i][j] == 0 { points.append((i, j)) }
        }
    }
    sudoku(0)

    func checkRow(_ x: Int, _ a: Int) -> Bool {
        for i in 0..<9 {
            if a == board[x][i] { return false }
        }
        return true
    }

    func checkCol(_ y: Int, _ a: Int) -> Bool {
        for i in 0..<9 {
            if a == board[i][y] { return false }
        }
        return true
    }

    func checkSquare(_ x: Int, _ y: Int, _ a: Int) -> Bool {
        let squareX = x / 3 * 3, squareY = y / 3 * 3
        for i in 0..<3 {
            for j in 0..<3 {
                if a == board[squareX + i][squareY + j] { return false }
            }
        }
        return true
    }

    func sudoku(_ n: Int) {
        if n == points.count {
            for i in 0..<9 {
                for j in 0..<9 { print(board[i][j], terminator: " ") }
                print()
            }
            exit(0)
        }
        for i in 1...9 {
            let x = points[n].0, y = points[n].1
            if checkRow(x, i) && checkCol(y, i) && checkSquare(x, y, i) {
                board[x][y] = i
                sudoku(n + 1)
                board[x][y] = 0
            }
        }
    }
}

// 시간 초과
func B2580TimeOver() {
    var board = [[Int]]()
    var points = [(Int, Int)]()
    for i in 0..<9 {
        let values = readLine()!.split(separator: " ").map{Int($0)!}
        board.append(values)
        for j in 0..<9 { // 빈 칸 좌표 저장
            if board[i][j] == 0 { points.append((i, j)) }
        }
    }
    sudoku(0)

    func check(_ p: (Int, Int)) -> Bool {
        let squareX = p.0 / 3, squareY = p.1 / 3
        for i in 0..<9 {
            if board[p.0][i] == board[p.0][p.1] && i != p.1 { // 행 검사
                return false
            }
            if board[i][p.1] == board[p.0][p.1] && i != p.0 { // 열 검사
                return false
            }
        }
        for i in 3 * squareX ..< 3 * squareX + 3 { // 3x3 사각형 검사
            for j in 3 * squareY ..< 3 * squareY + 3 {
                if board[i][j] == board[p.0][p.1] && i != p.0 && j != p.1 { return false }
            }
        }
        return true
    }

    func sudoku(_ n: Int) {
        if n == points.count { // 빈 칸 다 채운 경우
            for i in 0..<9 { // 정답 출력
                for j in 0..<9 { print(board[i][j], terminator: " ") }
                print()
            }
            exit(0)
        }
        for j in 1...9 { // 백트래킹
            board[points[n].0][points[n].1] = j // 메인 보드에 숫자 넣기
            if check(points[n]) { sudoku(n + 1) }
        }
        board[points[n].0][points[n].1] = 0 // 리셋
    }
}
