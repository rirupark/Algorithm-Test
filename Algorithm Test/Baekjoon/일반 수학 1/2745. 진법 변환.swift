//
//  2745. 진법 변환.swift
//  Algorithm Test
//
//  Created by 박민주 on 2023/05/05.
//

import Foundation

func B2745() {
    // MARK: Version 1. radix 사용 (69104KB, 12ms)
    let nb = readLine()!.split(separator: " ").map{$0}
    print(Int(nb[0], radix: Int(nb[1])!)!)
    
    // MARK: Version 2. 로직 생성 (79512KB, 12ms)
//    let nb = readLine()!.split(separator: " ").map{$0}
//    var answer = 0
//    for (i, v) in nb[0].reversed().enumerated() {
//        var value = 0
//        if Int(UnicodeScalar(String(v))!.value) >= 65 {
//            value = Int(UnicodeScalar(String(v))!.value) - 55
//        } else {
//            value = Int(String(v)) ?? 0
//        }
//        answer += value * Int(pow(Double(nb[1])!, Double(i)))
//    }
//    print(answer)
}
