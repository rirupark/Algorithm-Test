//
//  14215. 세 막대.swift
//  Algorithm Test
//
//  Created by 박민주 on 2023/05/09.
//

func B14215() {
    let abc = readLine()!.split(separator: " ").map{Int($0)!}.sorted(by: >)
    let a = abc[0], b = abc[1], c = abc[2]
    if a >= b + c { print(2 * (b + c) - 1) }
    else { print(a + b + c) }
}
