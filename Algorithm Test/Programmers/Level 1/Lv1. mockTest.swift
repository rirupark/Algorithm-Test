//
//  Lv1. mockTest.swift
//  Algorithm Test
//
//  Created by 박민주 on 2022/06/23.
//

import Foundation

func solution(_ answers:[Int]) -> [Int] {
  //정답 패턴
  var one : [Int] = [1, 2, 3, 4, 5]
  var two : [Int] = [2, 1, 2, 3, 2, 4, 2, 5]
  var three : [Int] = [3, 3, 1, 1, 2, 2, 4, 4, 5, 5]

  //딕셔너리 선언 (수포자: 맞춘 문제 수)
  var score = [1: 0, 2: 0, 3: 0]

  for i in 0..<answers.count {
    //문제가 수포자들의 답 패턴보다 길 때(많을 때) 패턴 반복
    while answers.count > one.count { one += one }
    while answers.count > two.count { two += two }
    while answers.count > three.count { three += three }

    //문제 답과 수포자들 답 패턴 비교
    if answers[i] == one[i] { score[1]! += 1 }
    if answers[i] == two[i] { score[2]! += 1 }
    if answers[i] == three[i] { score[3]! += 1 }
  }

  //정답자 색출
  let rank = score.filter { $0.value == score.values.max()! }.keys.sorted()

  return rank
}
