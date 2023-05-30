//
//  1302. 베스트셀러.swift
//  Algorithm Test
//
//  Created by 박민주 on 2023/05/30.
//
// 자료 구조, 문자열, 정렬, 해시를 사용한 집합과 맵

func B1302() {
    let n = Int(readLine()!)!
    var dic = [String: Int]()
    for _ in 0..<n {
        let book = readLine()!
        dic.updateValue((dic[book] ?? 0) + 1, forKey: book)
    }
    for (key, value) in dic.sorted(by: {$0.key < $1.key}) {
        if dic.values.max() == value { print(key); break }
    }
}
