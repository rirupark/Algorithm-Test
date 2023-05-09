//
//  1157. 단어 공부.swift
//  Algorithm Test
//
//  Created by 박민주 on 2023/05/04.
//

func B1157() {
    let input = readLine()!.uppercased().map{$0}
    var countDic = [Character: Int]()
    var answer = ""
    for char in input { countDic[char] = 0 } // 딕셔너리 초기화
    for char in input { countDic[char]! += 1 } // 카운트

    for (key, value) in countDic {
        if value == countDic.values.max()! {
            answer += String(key)
        }
    }
    print(answer.count == 1 ? answer : "?")
}
