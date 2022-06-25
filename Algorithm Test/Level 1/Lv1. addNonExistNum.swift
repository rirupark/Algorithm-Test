//
//  Lv1. addNonExistNum.swift
//  Algorithm Test
//
//  Created by 박민주 on 2022/06/25.
//

import Foundation

func solution(_ numbers:[Int]) -> Int {
    var count = 0
    for i in 0...9 { if !numbers.contains(i) { count += i } }
    
    return count
}
