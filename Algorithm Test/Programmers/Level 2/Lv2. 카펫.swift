//
//  Lv2. 카펫.swift
//  Algorithm Test
//
//  Created by 박민주 on 11/17/23.
//

import Foundation

//func solution(_ brown:Int, _ yellow:Int) -> [Int] {
//    let sum = brown + yellow
//    var divisor = [Int]()
//    var result = [0, 0]
//    var index = 0
//
//    for num in 3...sum / 3 {
//        if sum % num == 0 { divisor.append(num) }
//    }
//
//    while true {
//        if (divisor[index] - 2) * (divisor[divisor.count - 1 - index] - 2) == yellow {
//            result[0] = divisor[divisor.count - 1 - index]
//            result[1] = divisor[index]
//            break
//        }
//        index += 1
//    }
//    return result
//}


//func solution(_ brown:Int, _ yellow:Int) -> [Int] {
//    for num in (1...Int(sqrt(Double(yellow)))).reversed() {
//        if (yellow / num + 2) * (num + 2) == (brown + yellow) {
//            return [(yellow / num + 2), num + 2]
//        }
//    }
//    return [0, 0]
//}
