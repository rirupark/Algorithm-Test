//
//  Lv1. remainder 1.swift
//  Algorithm Test
//
//  Created by 박민주 on 2022/07/13.
//

import Foundation

func solutionRemainderOne(_ n:Int) -> Int {
    var ans = 1
    for i in 1...n {
        if n % i == 1 { ans = i; break }
    }
    return ans
}
