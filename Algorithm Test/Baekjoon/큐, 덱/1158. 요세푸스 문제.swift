//
//  1158. 요세푸스 문제.swift
//  Algorithm Test
//
//  Created by 박민주 on 2023/07/21.
//
// 구현, 자료 구조, 큐

func B1158() {
    var dic : [Int] = []
    let nk = (readLine()!.split(separator:" ")).map{Int($0)!}

    let n = nk[0]
    var k = nk[1]
    let kk = k

    for i in 1...n {
      dic.append(i)
    }

    var result : [Int] = []
    while dic.count != 0 {
      if k <= dic.count {
        result.append(dic[k-1])
        dic.remove(at: k-1)
        k += (kk-1)
      }
      
      else {
        while k > dic.count {
          k -= dic.count
        }
      }
    }

    let array = result.map{String($0)}
    var str = "<"

    for i in 0..<n-1 {
      str += (array[i] + ", ")
    }

    print(str + array[n-1] + ">")
}
