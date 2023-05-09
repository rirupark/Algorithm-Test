//
//  19532. 수학은 비대면강의입니다.swift
//  Algorithm Test
//
//  Created by 박민주 on 2023/05/09.
//

func B19532() {
    let input = readLine()!.split(separator: " ").map{Int($0)!}
    let a = input[0], b = input[1], c = input[2], d = input[3], e = input[4], f = input[5]
    print((c * e - b * f) / (a * e - b * d), (a * f - c * d) / (a * e - b * d))
}
