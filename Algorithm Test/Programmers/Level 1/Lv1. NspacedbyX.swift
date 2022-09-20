//
//  Lv1. NspacedbyX.swift
//  Algorithm Test
//
//  Created by 박민주 on 2022/07/18.
//

func solutionNspacedX(_ x:Int, _ n:Int) -> [Int64] {
    var add = x
    var result = [Int64]()
    while result.count < n { result.append(Int64(add)); add += x }

    return result
}
