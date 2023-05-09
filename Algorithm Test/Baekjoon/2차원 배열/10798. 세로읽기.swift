//
//  10798. 세로읽기.swift
//  Algorithm Test
//
//  Created by 박민주 on 2023/05/05.
//

func B10798() {
    var matrix = [[String]]()
    var maxLength = 0
    for _ in 0..<5 {
        let input = readLine()!.map{String($0)}
        maxLength = maxLength < input.count ? input.count : maxLength
        matrix.append(input)
    }
    for i in 0..<maxLength {
        for j in 0..<5 {
            if matrix[j].count < maxLength {
                for _ in 0..<maxLength-matrix[j].count {
                    matrix[j].append(" ")
                }
            }
            if matrix[j][i] != " " { print(matrix[j][i], terminator: "") }
        }
    }
}

// MARK: 초간단 코드
//var matrix = [[Character]]()
//
//for _ in 0..<5 {
//    let input = Array(readLine()!)
//    matrix.append(input)
//}
//
//for i in 0..<15 {
//    for j in 0..<5 {
//        if i < matrix[j].count {
//            print(matrix[j][i], terminator: "")
//        }
//    }
//}
