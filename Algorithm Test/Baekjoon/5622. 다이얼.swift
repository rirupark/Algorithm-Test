//
//  5622. 다이얼.swift
//  Algorithm Test
//
//  Created by 박민주 on 2023/05/03.
//

func B5622() {
    let dial = ["ABC": 2, "DEF": 3, "GHI": 4, "JKL": 5, "MNO": 6, "PQRS": 7, "TUV": 8, "WXYZ": 9]
    var answer = 0
    let input = readLine()!.map{$0}
    for i in 0..<input.count {
        if dial.contains(where: {$0.0.contains(input[i])}) {
            answer += (dial.first(where: {$0.0.contains(input[i])})!.value + 1)
        }
    }
    print(answer)
}

// MARK: compactMap 이용
//let dial = [3: "ABC", 4: "DEF", 5:"GHI", 6: "JKL", 7: "MNO", 8: "PQRS", 9: "TUV", 10: "WXYZ"]
//let input = readLine()!
//let answer = input.compactMap { key in
//    dial.first { $0.value.contains(key) }?.key
//}
//print("\(answer.reduce(0, +))")
