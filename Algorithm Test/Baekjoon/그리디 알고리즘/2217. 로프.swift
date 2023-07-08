//
//  2217. 로프.swift
//  Algorithm Test
//
//  Created by 박민주 on 2023/07/07.
//
// 수학, 그리디 알고리즘, 정렬

func B2217() {
    let n = Int(readLine()!)!
    var arr = [Int](), answer = 0
    for _ in 0..<n { arr.append(Int(readLine()!)!) }
    for (i, v) in arr.sorted(by: >).enumerated() {
        answer = max(answer, v * (i + 1))
    }
    print(answer)
}
