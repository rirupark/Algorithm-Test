//
//  1026. 보물.swift
//  Algorithm Test
//
//  Created by 박민주 on 2023/06/07.
//
// 수학, 그리디 알고리즘, 정렬

func B1026() {
    let n = Int(readLine()!)!
    let a = readLine()!.split(separator: " ").map{Int($0)!}.sorted()
    let b = readLine()!.split(separator: " ").map{Int($0)!}.sorted(by: >)
    var answer = 0
    for i in 0..<n { answer += a[i] * b[i] }
    print(answer)
}
