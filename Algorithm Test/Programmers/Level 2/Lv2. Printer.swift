//
//  Lv2. Printer.swift
//  Algorithm Test
//
//  Created by 박민주 on 2022/08/04.
//

import Foundation

func solutionPrinter(_ priorities:[Int], _ location:Int) -> Int {
    var dic : [(Int,Int)] = priorities.enumerated().map{($0.offset, $0.element)}
    var result = 0
    var arr = priorities.sorted(by: >)
    
    while !dic.isEmpty {
        let first = dic.removeFirst()
        if first.1 == arr.first! {
            result += 1
            if location == first.0 { break }
            arr.removeFirst()
        }
        else { dic.append(first) }
    }
    
    return result
}
