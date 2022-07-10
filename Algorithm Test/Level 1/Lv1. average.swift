//
//  Lv1. average.swift
//  Algorithm Test
//
//  Created by 박민주 on 2022/07/10.
//

func solutionAve(_ arr:[Int]) -> Double {
    return Double(arr.reduce(0){ $0 + $1 }) / Double(arr.count)
}
