//
//  Lv2. CorrectParentheses.swift
//  Algorithm Test
//
//  Created by 박민주 on 2022/08/17.
//

import Foundation

func solutionCorrectParentheses(_ s:String) -> Bool {
    var tmp = [String]()

    for char in s {
        if char == ")" && tmp.contains("(") { tmp.removeLast() }
        else { tmp.append("(") }
    }
    
    return tmp.isEmpty ? true : false
}
