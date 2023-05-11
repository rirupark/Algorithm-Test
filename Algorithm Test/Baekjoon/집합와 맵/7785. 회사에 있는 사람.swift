//
//  7785. 회사에 있는 사람.swift
//  Algorithm Test
//
//  Created by 박민주 on 2023/05/11.
//
// 자료 구조, 해시를 사용한 집합과 맵

func B7785() {
    let n = Int(readLine()!)!
    var dic = [String: Bool]()
    var array = [String]()
    for _ in 0..<n {
        let info = readLine()!.split(separator: " ").map{String($0)}
        dic[info[0]] = info[1] == "enter" ? true : false
    }
    for (key, value) in dic {
     if value { array.append(key) }
    }
    for name in array.sorted(by: >) { print(name) }
}

//다른 방법 시도한다고 Array만으로 풀었더니 시간 초과 🥹
//let n = Int(readLine()!)!
//var array = [String]()
//for _ in 0..<n {
//    let info = readLine()!.split(separator: " ").map{String($0)}
//    if array.contains(info[0]) && info[1] == "leave" {
//        array.remove(at: array.firstIndex(of: info[0])!)
//    } else { array.append(info[0]) }
//}
//for name in array.sorted(by: >) { print(name) }
