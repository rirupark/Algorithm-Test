//
//  9086. 문자열.swift
//  Algorithm Test
//
//  Created by 박민주 on 2023/05/02.
//

func B9086() {
    let t = Int(readLine()!)!

    for _ in 0..<t {
        var str = readLine()!
        if str.count == 1 { str = str + str }
        let first = str.removeFirst()
        let last = str.removeLast()
        print("\(first)\(last)")
    }
}
