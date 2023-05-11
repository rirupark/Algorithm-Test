//
//  1620. 나는야 포켓몬 마스터 이다솜.swift
//  Algorithm Test
//
//  Created by 박민주 on 2023/05/11.
//
// 자료 구조, 해시를 사용한 집합과 맵


func B1620() {
    let nm = readLine()!.split(separator: " ").map{Int($0)!}
    // 문제가 Int형일 경우는 배열 사용, String형일 경우는 딕셔너리 사용
    var array = [String]()
    var dic = [String: Int]()
    for i in 0..<nm[0] {
        let input = readLine()!
        dic[input] = i + 1
        array.append(input)
    }
    for _ in 0..<nm[1] {
        let question = readLine()!
        let intQ = Int(question) ?? 0
        if intQ == 0 {
            print(dic[question] ?? "unknown")
        } else {
            print(array[intQ - 1])
        }
    }
}
