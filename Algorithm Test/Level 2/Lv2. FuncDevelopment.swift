//
//  Lv2. FuncDevelopment.swift
//  Algorithm Test
//
//  Created by 박민주 on 2022/08/05.
//

import Foundation

func solutionFuncDev(_ progresses:[Int], _ speeds:[Int]) -> [Int] {
    var days = [Int]()
    var result = [Int]()
    var cnt = 1
    
    for (i, v) in progresses.enumerated() {
        days.append(Int(ceil(Double(100 - v) / Double(speeds[i]))))
    }
    
    var maxDay = days[0]
    for i in 0..<days.count {
        result.append(cnt)
        if i < days.count - 1 {
            if maxDay < days[i+1] { maxDay = days[i+1]; cnt = 1 }
            else { cnt += 1; result.removeLast() }
        }
    }
    return result
}
