//
//  Lv1. craneGame.swift
//  Algorithm Test
//
//  Created by 박민주 on 2022/06/22.
//

import Foundation

func solution(_ board:[[Int]], _ moves:[Int]) -> Int {
  var board = board
  var basket: [Int] = []
  var count = 0
  
  for m in moves {
    for i in 0..<board.count {
      //배열 탐색 중에 인형이 존재할 경우 조건 처리
      if board[i][m-1] != 0 {
        //바구니의 최상단 인형이랑 크레인에 잡힌 인형랑 비교
        if basket.last == board[i][m-1] {
          count += 2
          basket.removeLast()
        }
        //다르다면 바구니에 인형 담기
        else { basket.append(board[i][m-1]) }
        //인형이 존재한다면 크레인이 잡았으므로 비어있어야 함. 0으로 변경
        board[i][m-1] = 0
        //인형을 옮겼으므로 인형 탐색 종료하고 다음 moves 실행. 키포인트
        break
      }
    }
  }
  return count
}

//print(solution([[0,0,0,0,0],[0,0,1,0,3],[0,2,5,0,1],[4,2,4,4,2],[3,5,1,3,1]], [1,5,3,5,1,2,1,4]))
