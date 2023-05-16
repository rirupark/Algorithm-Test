//
//  20920. 영단어 암기는 괴로워.swift
//  Algorithm Test
//
//  Created by 박민주 on 2023/05/16.
//
// 자료 구조, 문자열, 정렬, 해시를 사용한 집합과 맵, 트리를 사용한 집합과 맵

func B20920() {
    var dic = [String: Int]()
    let nm = readLine()!.split(separator: " ").map{Int($0)!}
    for _ in 0..<nm[0] {
        let word = readLine()!
        if word.count >= nm[1] {
            dic.updateValue((dic[word] ?? 0) + 1, forKey: word)
        }
    }
    let sortedDic = dic.sorted(by: {
        if $0.value == $1.value {
            if $0.key.count == $1.key.count { return $0.key < $1.key }
            return $0.key.count > $1.key.count
        }
        return $0.value > $1.value
    })

    sortedDic.forEach { print($0.key) }
}

