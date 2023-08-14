//
//  2748. 피보나치 수 2.swift
//  Algorithm Test
//
//  Created by 박민주 on 2023/08/14.
//

func B2748() {
    var cache = [0, 1]
    for i in 2...90 { cache.append(cache[i - 2] + cache[i - 1]) }
    let n = Int(readLine()!)!
    print(cache[n])
}
