//
//  Lv1. dartsGame.swift
//  Algorithm Test
//
//  Created by 박민주 on 2022/08/02.
//

func solutionDarts(_ dartResult:String) -> Int {
    let numArr = dartResult.split{ $0.isLetter || $0 == "#" || $0 == "*" }.map{Int(String($0))!}
    let calArr = dartResult.split{ $0.isNumber }
    var answer = 0

    for i in 0..<numArr.count {
        var result = 0
        if calArr[i].contains("S") { result += numArr[i] }
        if calArr[i].contains("D") { result += numArr[i] * numArr[i] }
        if calArr[i].contains("T") { result += numArr[i] * numArr[i] * numArr[i] }
        if calArr[i].contains("*") { result *= 2 }
        if calArr[i].contains("#") { result *= -1 }
        if i < 2 && calArr[i+1].contains("*") { result *= 2 }

        answer += result
    }
    
    return answer
}
