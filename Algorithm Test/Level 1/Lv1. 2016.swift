//
//  Lv1. 2016.swift
//  Algorithm Test
//
//  Created by 박민주 on 2022/06/26.
//

import Foundation
 
func solution(_ a:Int, _ b:Int) -> String {
    var daysOfMonths = 0
    let days = ["THU", "FRI", "SAT", "SUN", "MON", "TUE", "WED"] //dayOfMonth를 7로 나눈 나머지가 순서대로 0...6
    
    for m in 1..<a {
        var month = 0
        if m == 2 { month = 29 }
        else if m == 4 || m == 6 || m == 9 || m == 11 { month = 30 }
        else { month = 31 }
        daysOfMonths += month
    }
    
    return days[(daysOfMonths + b) % 7]
}
