//
//  Lv1. KthNum.swift
//  Algorithm Test
//
//  Created by 박민주 on 2022/06/22.
//

import Foundation

func solution(_ array:[Int], _ commands:[[Int]]) -> [Int] {
  var result: [Int] = []
  
  for c in 0..<commands.count {
    var tmp: [Int] = []
    for i in commands[c][0]...commands[c][1] {
      tmp.append(array[i-1])
    }
    tmp.sort()
    result.append(tmp[commands[c][2]-1])
  }

  return result
    
}
