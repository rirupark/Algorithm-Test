//
//  Lv1. coverPhoneNum.swift
//  Algorithm Test
//
//  Created by 박민주 on 2022/07/14.
//

func solutionPhone(_ phone_number:String) -> String {
    var num = phone_number.map{String($0)}
    if num.count > 4 { for i in num.startIndex...num.endIndex-5 { num[i] = "*" } }
    return num.joined()
}
