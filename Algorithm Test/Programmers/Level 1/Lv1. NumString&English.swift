//
//  Lv1. NumString&English.swift
//  Algorithm Test
//
//  Created by 박민주 on 2022/06/27.
//

import Foundation

func solution2(_ s:String) -> Int {
    var s = s
    s = s.replacingOccurrences(of: "zero", with: "0")
    s = s.replacingOccurrences(of: "one", with: "1")
    s = s.replacingOccurrences(of: "two", with: "2")
    s = s.replacingOccurrences(of: "three", with: "3")
    s = s.replacingOccurrences(of: "four", with: "4")
    s = s.replacingOccurrences(of: "five", with: "5")
    s = s.replacingOccurrences(of: "six", with: "6")
    s = s.replacingOccurrences(of: "seven", with: "7")
    s = s.replacingOccurrences(of: "eight", with: "8")
    s = s.replacingOccurrences(of: "nine", with: "9")

    return Int(s)!
}


//간단한 풀이
//func solution(_ s:String) -> Int {
//    let arr = ["zero","one","two","three","four","five","six","seven","eight","nine"]
//    var str = s
//    for i in 0...9 {
//        str = str.replacingOccurrences(of: arr[i], with: String(i))
//    }
//    return Int(str)!
//}
