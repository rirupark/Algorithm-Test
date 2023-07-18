//
//  3986. 좋은 단어.swift
//  Algorithm Test
//
//  Created by 박민주 on 2023/07/18.
//
// 자료 구조, 스택

func B3986() {
    let n = Int(readLine()!)!
    var count = 0
    for _ in 0..<n {
        let word = readLine()!.map{String($0)}
        var stack = [word[0]]
        for i in 1..<word.count {
            if stack.last == String(word[i]) { stack.removeLast() }
            else { stack.append(String(word[i])) }
        }
        if stack.isEmpty { count += 1 }
    }
    print(count)
}
