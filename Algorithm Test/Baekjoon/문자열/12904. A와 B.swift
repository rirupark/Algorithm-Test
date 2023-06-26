//
//  12904. A와 B.swift
//  Algorithm Test
//
//  Created by 박민주 on 2023/06/26.
//
// 구현, 문자열, 그리디 알고리즘

func B12904() {
    let s = readLine()!
    var t = readLine()!
    for _ in 0..<t.count - s.count {
        if t.last == "A" { t.removeLast() }
        else {
            t.removeLast()
            t = String(t.reversed())
        }
    }
    print(s == t ? 1 : 0)
}
