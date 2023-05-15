//
//  10872. 팩토리얼.swift
//  Algorithm Test
//
//  Created by 박민주 on 2023/05/15.
//
// 수학, 구현, 조합론

func B10872() {
    let n = Int(readLine()!)!
    var answer = 1
    if n > 0 {
        for num in 1...n { answer *= num }
    }
    print(answer)
}
