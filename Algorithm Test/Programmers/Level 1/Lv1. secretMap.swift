//
//  Lv1. secretMap.swift
//  Algorithm Test
//
//  Created by 박민주 on 2022/08/01.
//

func solutionSecretMap(_ n:Int, _ arr1:[Int], _ arr2:[Int]) -> [String] {
    var answer: [String] = []
    
    for i in 0..<n {
        var str = String(arr1[i] | arr2[i], radix: 2)
        var result = ""
        while str.count < n { str.insert("0", at: str.index(str.startIndex, offsetBy: 0)) }
        for char in str { result += char == "0" ? " " : "#" }
        answer.append(result)
    }
    return answer
}

