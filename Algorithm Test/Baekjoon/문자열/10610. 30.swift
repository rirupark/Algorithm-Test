//
//  10610. 30.swift
//  Algorithm Test
//
//  Created by 박민주 on 2023/06/19.
//
// 수학, 문자열, 그리디 알고리즘, 정렬, 정수론

func B10610() {
    let n = readLine()!.sorted(by: >)
    if n.last == "0" && n.map({Int(String($0))!}).reduce(0, +) % 3 == 0 {
        print(String(n))
    } else { print(-1) }
}
