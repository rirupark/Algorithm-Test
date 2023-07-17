//
//  2161. 카드1.swift
//  Algorithm Test
//
//  Created by 박민주 on 2023/07/17.
//
// 구현, 자료 구조, 큐

func B2161() {
    let n = Int(readLine()!)!
    var arr = Array(1...n), result = [Int]()
    while arr.count > 1 {
        result.append(arr.removeFirst())
        arr.append(arr.removeFirst())
    }
    result.append(arr[0])
    print(result.map{String($0)}.joined(separator: " "))
}
