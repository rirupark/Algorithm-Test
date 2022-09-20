//
//  Lv1. intSqrt.swift
//  Algorithm Test
//
//  Created by 박민주 on 2022/08/01.
//

import Foundation

func solutionSqrt(_ n:Int64) -> Int64 {
    let tmp = Int64(sqrt(Double(n)))
    return tmp * tmp == n ? (tmp + 1) * (tmp + 1) : -1
}
