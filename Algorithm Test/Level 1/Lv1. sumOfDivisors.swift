//
//  Lv1. sumOfDivisors.swift
//  Algorithm Test
//
//  Created by 박민주 on 2022/07/12.
//

func solutionDivisor(_ n:Int) -> Int {
    var result = 0
    if n != 0 { for i in 1...n { if n % i == 0 { result += i } } }
        
    return result
}
