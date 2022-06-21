//
//  Lv1. lotto.swift
//  Algorithm Test
//
//  Created by 박민주 on 2022/06/21.
//

import Foundation

//당첨 내용에 따른 순위 반환 함수
func rank(_ score: Int) -> Int {
  switch score {
    case 6:
      return 1
    case 5:
      return 2
    case 4:
      return 3
    case 3:
      return 4
    case 2:
      return 5
    default:
      return 6
  }
}

//메인 함수
func solution(_ lottos:[Int], _ win_nums:[Int]) -> [Int] {
  var same = 0
  var zero = 0
  var result : [Int] = []
  
  for i in 0..<6 {
    let tmp = lottos[i] //lottos에서 비교할 숫자 tmp에 넣기
    if lottos[i] == 0 { //lottos에서 0인 숫자 확인
      zero += 1
    }
    for j in 0..<6 {
      if tmp == win_nums[j] { //tmp랑 win_nums에 있는 6개 숫자 비교
        same += 1 //lottos와 win_nums에 같은 숫자 카운트
      }
    }
  }
  
  result.append(rank(same + zero)) //best case : zero도 일치할 때
  result.append(rank(same)) //worst case : same만 일치할 때
  
  return result
}

