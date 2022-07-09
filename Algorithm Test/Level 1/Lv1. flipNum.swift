//
//  Lv1. flipNum.swift
//  Algorithm Test
//
//  Created by 박민주 on 2022/07/09.
//

func solutionFlip(_ n:Int64) -> [Int] {
    return String(n).map{Int(String($0))!}.reversed()
}
