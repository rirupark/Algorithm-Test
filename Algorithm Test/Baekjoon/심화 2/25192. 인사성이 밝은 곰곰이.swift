//
//  25192. 인사성이 밝은 곰곰이.swift
//  Algorithm Test
//
//  Created by 박민주 on 2023/05/16.
//
// 자료 구조, 해시를 사용한 집합과 맵, 트리를 사용한 집합과 맵

func B25192() {
    let n = Int(readLine()!)!
    var setUser = Set<String>()
    var count = 0
    for _ in 0..<n {
        let input = readLine()!
        if input == "ENTER" { setUser.removeAll() }
        else {
            if !setUser.contains(input) { count += 1 }
            setUser.insert(input)
        }
    }
    print(count)
}
