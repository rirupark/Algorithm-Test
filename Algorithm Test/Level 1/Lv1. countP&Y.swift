//
//  Lv1. countP&Y.swift
//  Algorithm Test
//
//  Created by 박민주 on 2022/07/19.
//

import Foundation

func solutionPY(_ s:String) -> Bool {
    var p = 0
    var y = 0
    for char in s {
        if char == "p" || char == "P" { p += 1 }
        if char == "y" || char == "Y" { y += 1 }
    }
    return p == y ? true : false
}

