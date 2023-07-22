//
//  10039. 평균 점수.swift
//  Algorithm Test
//
//  Created by 박민주 on 2023/07/22.
//

func B10039() {
    var arr = [Int]()
    for _ in 0..<5 {
        let input = Int(readLine()!)!
        arr.append(input < 40 ? 40 : input)
    }
    print(arr.reduce(0, +) / 5)
}
