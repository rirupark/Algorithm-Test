//
//  Lv1. basicString.swift
//  Algorithm Test
//
//  Created by 박민주 on 2022/07/09.
//

func solutionStr(_ s:String) -> Bool {
    return ( s.count == 4 || s.count == 6 ) && s.allSatisfy{ $0.isNumber } ? true : false
}
