//
//  sumBetween2ints.swift
//  Algorithm Test
//
//  Created by 박민주 on 2022/07/08.
//

func solutionBetweenInts(_ a:Int, _ b:Int) -> Int64 {
    var result = 0
    for num in (a > b ? b...a : a...b) { result += num }
    return Int64(result)
}
