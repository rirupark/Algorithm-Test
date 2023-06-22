//
//  1120. 문자열.swift
//  Algorithm Test
//
//  Created by 박민주 on 2023/06/22.
//
// 문자열, 브루트포스 알고리즘

func B1120() {
    let ab = readLine()!.split(separator: " ").map{$0}
    let a = ab[0].map{String($0)}, b = ab[1].map{String($0)}
    var count = 50
    for i in 0...b.count - a.count {
        var diff = 0
        for j in 0..<a.count {
            if a[j] != b[j + i] { diff += 1 }
        }
        count = min(count, diff)
    }
    print(count)
}
