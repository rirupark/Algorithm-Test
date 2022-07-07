//
//  Lv1. insufficientCash.swift
//  Algorithm Test
//
//  Created by 박민주 on 2022/07/06.
//

import Foundation

func solutionCash(_ price:Int, _ money:Int, _ count:Int) -> Int64{
    var cash = 0
    for i in 1...count { cash += i * price }
    return cash - money > 0 ? Int64(cash - money) : 0
}
