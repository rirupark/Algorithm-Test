//
//  Lv1. strangeChar.swift
//  Algorithm Test
//
//  Created by 박민주 on 2022/07/18.
//

func solutionStrangeChar(_ s:String) -> String {
    var arr = s.components(separatedBy: " ")
    for i in 0..<arr.count {
        var tmp = ""
        for (j, char) in arr[i].enumerated() {
            if j % 2 == 0 { tmp += char.uppercased() }
            else { tmp += char.lowercased() }
        }
        arr[i] = tmp
    }
    return arr.joined(separator: " ")
}
