//
//  Lv1. sumOfInts.swift
//  Algorithm Test
//
//  Created by 박민주 on 2022/06/24.
//

import Foundation

func solution(_ absolutes:[Int], _ signs:[Bool]) -> Int {
  var absolutes = absolutes
  
  for i in 0..<signs.count {
    if signs[i] == false { absolutes[i] = -absolutes[i] }
  }
  return absolutes.reduce(0) { $0 + $1 }
}
