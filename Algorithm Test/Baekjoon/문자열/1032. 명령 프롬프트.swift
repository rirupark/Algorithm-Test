//
//  1032. 명령 프롬프트.swift
//  Algorithm Test
//
//  Created by 박민주 on 2023/06/16.
//
// 구현, 문자열

func B1032() {
    let n = Int(readLine()!)!
    var file = Array(readLine()!)
    for _ in 1..<n {
        let input = Array(readLine()!)
        for j in 0..<file.count {
            if file[j] != input[j] { file[j] = "?" }
        }
    }
    print(file.map{String($0)}.joined())
}
