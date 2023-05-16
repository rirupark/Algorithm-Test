//
//  1874. 스택 수열.swift
//  Algorithm Test
//
//  Created by 박민주 on 2023/05/16.
//
import Foundation

func B1874() {
    var stack : [Int] = []
    var result : [String] = []
    let n = Int(readLine()!)!
    var data = 1, count = 0

    for _ in 0..<n {
      let num = Int(readLine()!)!
      
      while data <= num  {
        stack.append(data)
        result.append("+")
        data += 1
      }

      if stack.last! == num {
        stack.removeLast()
        result.append("-")
      }
      else { count = 1 }
    }
    print(count != 0 ? "NO" : result.joined(separator:"\n"))
}
