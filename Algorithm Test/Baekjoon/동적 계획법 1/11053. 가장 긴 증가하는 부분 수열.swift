//
//  11053. 가장 긴 증가하는 부분 수열.swift
//  Algorithm Test
//
//  Created by 박민주 on 2023/07/06.
//
// DP

func B11053() {
    let n = Int(readLine()!)!
    let a = readLine()!.split(separator: " ").map{Int($0)!}
    var cache = [Int](repeating: 1, count: n)
    for i in 1..<n {
        for j in 0..<i {
            if a[i] > a[j] { cache[i] = max(cache[i], cache[j] + 1) }
        }
    }
    print(cache.max()!)
}
