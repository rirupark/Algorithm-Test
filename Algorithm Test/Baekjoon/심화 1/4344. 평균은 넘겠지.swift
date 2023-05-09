//
//  4344. 평균은 넘겠지.swift
//  Algorithm Test
//
//  Created by 박민주 on 2023/05/09.
//

import Foundation

func B4344() {
    let cases = Int(readLine()!)!
    for _ in 0..<cases {
      var grade = (readLine()!.split(separator:" ")).map{Int($0)!}
      let n = grade[0]
      grade.removeFirst()

      let sum = grade.reduce(0) { $0 + $1 }
      let avg = sum / n
      var topStd = 0
      for i in 0..<n {
        if grade[i] > avg {
          topStd += 1
        }
      }
      print("\(String(format:"%.3f", Float(topStd) / Float(n) * 100))%")
    }
}
