//
//  11054. 가장 긴 바이토닉 부분 수열.swift
//  Algorithm Test
//
//  Created by 박민주 on 2023/07/25.
//
// DP

func B11054() {
    let n = Int(readLine()!)!
    let a = readLine()!.split(separator: " ").map{Int($0)!}
    let reversedA = Array(a.reversed())
    var upCache = [Int](repeating: 1, count: n)
    var downCache = [Int](repeating: 1, count: n)
    for i in 1..<n {
        for j in 0..<i {
            if a[i] > a[j] {
                upCache[i] = max(upCache[i], upCache[j] + 1)
            }
        }
    }
    for i in 1..<n {
        for j in 0..<i {
            if reversedA[i] > reversedA[j] {
                downCache[i] = max(downCache[i], downCache[j] + 1)
            }
        }
    }
    downCache.reverse()
    print(upCache.enumerated().map{$0.element + downCache[$0.offset]}.max()! - 1)
}
