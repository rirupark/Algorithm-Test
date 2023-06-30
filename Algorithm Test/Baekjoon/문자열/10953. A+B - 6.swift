//
//  10953. A+B - 6.swift
//  Algorithm Test
//
//  Created by 박민주 on 2023/06/30.
//
// 수학, 문자열, 사칙연산, 파싱

func B10953() {
    for _ in 0..<Int(readLine()!)! {
        let input = readLine()!.split(separator: ",").map{Int($0)!}
        print(input[0] + input[1])
    }
}
