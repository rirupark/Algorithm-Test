//
//  Lv1. middleChar.swift
//  Algorithm Test
//
//  Created by 박민주 on 2022/07/04.
//

func solutionMiddle(_ s:String) -> String {
    return s.count % 2 == 0 ? String(Array(s)[s.count / 2 - 1 ... s.count / 2]) : String(Array(s)[s.count / 2])
}
