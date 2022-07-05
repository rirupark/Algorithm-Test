//
//  Lv1. 3baseRadix.swift
//  Algorithm Test
//
//  Created by 박민주 on 2022/07/05.
//

import Foundation

func solutionRadix(_ n:Int) -> Int {
    let radixN = String(n, radix: 3)
    let reverseN = radixN.reversed()
    return Int(String(reverseN), radix: 3)!
}
