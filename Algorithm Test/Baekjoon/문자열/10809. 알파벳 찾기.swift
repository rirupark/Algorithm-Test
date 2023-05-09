//
//  10809. 알파벳 찾기.swift
//  Algorithm Test
//
//  Created by 박민주 on 2023/05/02.
//

func B10809() {
    let str = readLine()!.map{$0}
    let alphabet = "abcdefghijklmnopqrstuvwxyz".map{$0}
    var answer = Array(repeating: -1, count: 26)

    for i in str {
        if alphabet.contains(i) {
            answer[alphabet.firstIndex(of: i) ?? -1] = str.firstIndex(of: i) ?? -1
        }
    }

    print(answer.map{String($0)}.joined(separator: " "))
}

// Ver 2. 아스키 코드 사용
