//
//  1181. 단어 정렬.swift
//  Algorithm Test
//
//  Created by 박민주 on 2023/05/10.
//

func B1181() {
    let n = Int(readLine()!)!
    var strSet = Set<String>()
    for _ in 0..<n { strSet.insert(readLine()!) }
    for str in Array(strSet).sorted(by: {
        $0.count == $1.count ? $0 < $1 : $0.count < $1.count }) {
        print(str)
    }
}
