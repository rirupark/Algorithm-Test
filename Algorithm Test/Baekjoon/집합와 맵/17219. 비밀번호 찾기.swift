//
//  17219. 비밀번호 찾기.swift
//  Algorithm Test
//
//  Created by 박민주 on 2023/07/16.
//
// 자료 구조, 해시를 사용한 집합과 맵

func B17219() {
    let nm = readLine()!.split(separator: " ").map{Int($0)!}
    var dic = [String: String]()
    for _ in 0..<nm[0] {
        let input = readLine()!.split(separator: " ").map{String($0)}
        dic[input[0]] = input[1]
    }
    for _ in 0..<nm[1] { print(dic[readLine()!]!) }
}
