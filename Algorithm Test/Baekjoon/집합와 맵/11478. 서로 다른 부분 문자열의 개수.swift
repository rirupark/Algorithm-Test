//
//  11478. 서로 다른 부분 문자열의 개수.swift
//  Algorithm Test
//
//  Created by 박민주 on 2023/05/11.
//
// 자료 구조, 문자열, 해시를 사용한 집합과 맵, 트리를 사용한 집합과 맵

func B11478() {
    var s = readLine()!
    var sSet = Set<String>()
    for _ in s {
        var str = ""
        for char in s {
            str += String(char)
            sSet.insert(str)
        }
        s.removeFirst()
    }
    print(sSet.count)
}
