//
//  Lv2. theLargestNum.swift
//  Algorithm Test
//
//  Created by 박민주 on 2022/08/03.
//

func solutionLargestNum(_ numbers:[Int]) -> String {
    let nums = numbers.map{String($0)}.sorted{ $0 + $1 > $1 + $0 }
    let answer = nums.joined()
    if let num = Int(answer) { return String(num) }
    return answer
}
