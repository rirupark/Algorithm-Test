//
//  Lv1. budget.swift
//  Algorithm Test
//
//  Created by 박민주 on 2022/07/03.
//

import Foundation

func solutionBudget(_ d:[Int], _ budget:Int) -> Int {
    var sum = 0
    var result = 0
    
    for element in d.sorted() {
        sum += element
        result += 1
        if sum > budget { result -= 1; break }
    }
    
    return result
}
