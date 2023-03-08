//
//  2357. 최솟값과 최댓값.swift
//  Algorithm Test
//
//  Created by 박민주 on 2022/09/20.
//

import Foundation

func B2357() {
    let nm = (readLine()!.split(separator:" ")).map{Int($0)!}
    let N = nm[0]
    let M = nm[1]
    var aryN : [Int] = []
    var tmp : [Int] = []
    for _ in 0..<N {
      let inputN = Int(readLine()!)!
      aryN.append(inputN)
    }

    for _ in 0..<M {
      tmp = aryN
      let inputM = (readLine()!.split(separator:" ")).map{Int($0)!}
      tmp.removeFirst(inputM[0]-1)
      tmp.removeLast(N - inputM[1])
      print(tmp.min()!, tmp.max()!)
    }
}
