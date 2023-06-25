//
//  5635. 생일.swift
//  Algorithm Test
//
//  Created by 박민주 on 2023/06/25.
//
// 구현, 문자열, 정렬

func B5635() {
    let n = Int(readLine()!)!
    var array = [[String]]()
    for _ in 0..<n {
        array.append(readLine()!.split(separator: " ").map{String($0)})
    }
    array.sort(by: {
        if Int($0[3]) == Int($1[3]) {
            if Int($0[2]) == Int($1[2]) { return Int($0[1])! > Int($1[1])! }
            return Int($0[2])! > Int($1[2])!
        }
        return Int($0[3])! > Int($1[3])!
    })
    print("\(array[0][0])\n\(array[n - 1][0])")
}
