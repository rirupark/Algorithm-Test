//
//  Lv1. gymSuit.swift
//  Algorithm Test
//
//  Created by 박민주 on 2022/06/23.
//

import Foundation

func solution(_ n:Int, _ lost:[Int], _ reserve:[Int]) -> Int {
  var lostArr = lost.filter{ !reserve.contains($0) }.sorted()
  let reserveArr = reserve.filter{ !lost.contains($0) }.sorted()

  for r in reserveArr {
    if lostArr.contains(r - 1) {
      lostArr = lostArr.filter { $0 != r - 1 }
      continue
    }
    if lostArr.contains(r + 1) {
      lostArr = lostArr.filter { $0 != r + 1 }
    }
  }

  return n - lostArr.count
}
