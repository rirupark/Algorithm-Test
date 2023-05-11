//
//  14425. 문자열 집합.swift
//  Algorithm Test
//
//  Created by 박민주 on 2023/05/11.
//
// 자료구조, 문자열, 해시를 사용한 집합과 맵, 트리를 사용한 집합과 맵

func B14425() {
    let nm = readLine()!.split(separator: " ").map{Int($0)!}
    var dic = [String:Int]()
    var answer = 0
    for _ in 0..<nm[0] { dic[readLine()!] = 1 }
    for _ in 0..<nm[1] {
        if dic[readLine()!] != nil { answer += 1 }
    }
    print(answer)
}
