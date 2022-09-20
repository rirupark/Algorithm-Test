//
//  Lv1. IntInDesc.swift
//  Algorithm Test
//
//  Created by 박민주 on 2022/07/15.
//

func solutionIntDesc(_ n:Int64) -> Int64 {
    return Int64(String(String(n).sorted(by: >)))!
}

