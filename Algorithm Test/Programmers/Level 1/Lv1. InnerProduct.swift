//
//  Lv1. InnerProduct.swift
//  Algorithm Test
//
//  Created by 박민주 on 2022/06/27.
//

import Foundation

func solution(_ a:[Int], _ b:[Int]) -> Int {
    var ans = 0
    for i in 0..<a.count { ans += a[i] * b[i] }
    return ans
}

//배열 생성
//func solution(_ a:[Int], _ b:[Int]) -> Int {
//    var arr = [Int]()
//    for i in 0..<a.count { arr.append(a[i]*b[i]) }
//    return arr.reduce(0){ $0 + $01 }
//}
