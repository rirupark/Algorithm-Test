//
//  Lv1. failureRate.swift
//  Algorithm Test
//
//  Created by 박민주 on 2022/07/04.
//

import Foundation

func solutionFailure(_ N:Int, _ stages:[Int]) -> [Int] {
    
    var players = Array.init(repeating: 0, count: N) // 각 stage 당 도달한 사람들의 수
    var failureRate = Array.init(repeating: (Int(0), Double(0.0)), count: N) // 스테이지, 실패율
    var total = stages.count

    // 각 stage마다 도달한 사람 수 구하기
    for element in stages { if element < N+1 { players[element-1] += 1 } }

    // 실패율 구하기
    for stageNum in 1...N {
        let notClear = players[stageNum - 1]
        failureRate[stageNum - 1] =  total == 0 ? (stageNum, 0.0) : (stageNum, Double(notClear) / Double(total))
        total -= notClear
    }

    return failureRate.sorted(by: <).sorted(by: {$0.1 > $1.1}).map{$0.0}
}
