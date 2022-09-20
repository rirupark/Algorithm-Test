//
//  Lv1. sumOfDigits.swift
//  Algorithm Test
//
//  Created by 박민주 on 2022/07/11.
//

import Foundation

func solutionSumofDigits(_ n:Int) -> Int {
    return String(n).map{Int(String($0))!}.reduce(0, +)
}
