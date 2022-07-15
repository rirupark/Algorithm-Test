//
//  Lv1. harshadNum.swift
//  Algorithm Test
//
//  Created by 박민주 on 2022/07/15.
//

func solutionHarshad(_ x:Int) -> Bool {
    var tmp = x
    var sum = 0
    while tmp > 0 { sum += tmp % 10; tmp /= 10 }
    
    return x % sum == 0 ? true : false
}
