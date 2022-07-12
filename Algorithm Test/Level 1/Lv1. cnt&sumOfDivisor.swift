//
//  Lv1. cnt&sumOfDivisor.swift
//  Algorithm Test
//
//  Created by 박민주 on 2022/07/06.
//

import Foundation

func solutionDivisor(_ left:Int, _ right:Int) -> Int {
    var result = 0
    
    for num in left...right {
        var divisors = 0
        
        // 각 숫자들의 약수 개수 구하기
        for i in 1...num { if num % i == 0 { divisors += 1 }}
        
        // 각 숫자들의 약수 개수의 짝홀 경우 처리
        if divisors % 2 == 0 { result += num }
        else { result -= num }
    }
    
    return result
}
