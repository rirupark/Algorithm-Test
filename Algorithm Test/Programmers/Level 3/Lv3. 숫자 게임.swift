//
//  Lv3. 숫자 게임.swift
//  Algorithm Test
//
//  Created by 박민주 on 11/18/23.
//

import Foundation

func solution숫자게임(_ a:[Int], _ b:[Int]) -> Int {
    var a = a, b = b, checkIndex = 0, result = 0
    a.sort(by: >)
    b.sort(by: >)

    for i in 0..<a.count {
        if a[i] < b[checkIndex] {
            result += 1
            checkIndex += 1

        }
    }
    return result
}
