//
//  10814. 나이순 정렬.swift
//  Algorithm Test
//
//  Created by 박민주 on 2023/05/10.
//

func B10814() {
    let n = Int(readLine()!)!
    var array = [(Int, String)]()
    for _ in 0..<n {
        let input = readLine()!.split(separator: " ").map{$0}
        array.append((Int(input[0])!, String(input[1])))
    }
    for info in array.sorted(by: { $0.0 < $1.0 }) {
        print(info.0, info.1)
    }

}
