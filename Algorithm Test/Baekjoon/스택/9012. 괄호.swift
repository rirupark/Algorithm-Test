//
//  9012. 괄호.swift
//  Algorithm Test
//
//  Created by 박민주 on 2023/05/16.
//
// 자료 구조, 문자열, 스택

func B9012() {
    var array = [Character]()
    let t = Int(readLine()!)!
    for _ in 0..<t {
      let input = readLine()!
      var count = 0
      for i in input {
        if i == "(" {
          array.append(i)
          count += 1
        }
        else {
          if array.count != 0 {
            array.removeLast()
            count -= 1
          }
          else { count += 1 }
        }
      }
      print(count == 0 ? "YES" : "NO")
      array.removeAll()
    }
}
