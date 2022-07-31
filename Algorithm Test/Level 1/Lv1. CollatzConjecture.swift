//
//  Lv1. CollatzConjecture.swift
//  Algorithm Test
//
//  Created by 박민주 on 2022/07/29.
//

func solutionCollatz(_ num:Int) -> Int {
    var result = 0
    var n = num

    while n != 1 {
        n = n % 2 == 0 ? n / 2 : n * 3 + 1
        result += 1
        if result == 500 { result = -1; break }
    }
    
    return num == 1 ? 0 : result
}
