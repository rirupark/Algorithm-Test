//
//  1764. 듣보잡.swift
//  Algorithm Test
//
//  Created by 박민주 on 2023/05/11.
//
// 자료 구조, 문자열, 정렬, 해시를 사용한 집합과 맵

func B1764() {
    let nm = readLine()!.split(separator: " ").map{Int($0)!}
    var dic = [String: Int]()
    for _ in 0..<nm[0] { dic[readLine()!] = 1 }
    for _ in 0..<nm[1] {
        let name = readLine()!
        dic.updateValue((dic[name] ?? 0) + 1, forKey: name)
    }
    print(dic.filter{$0.value == 2}.count)
    var result = [String]()
    for (key, value) in dic {
        if value == 2 { result.append(key) }
    }
    for name in result.sorted() { print(name) }
}

// Set으로 푼 사람이 있었다 ! Set은 Array보다 메모리 소모가 적은 걸 이용한 듯.
