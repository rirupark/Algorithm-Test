//
//  25206. 너의 평점은.swift
//  Algorithm Test
//
//  Created by 박민주 on 2023/05/04.
//

func B25206() {
    let gradeStandard: [String: Double]
    = ["A+": 4.5, "A0": 4.0, "B+": 3.5, "B0": 3.0,
        "C+": 2.5, "C0": 2.0, "D+": 1.5, "D0": 1.0, "F": 0]
    var sumOfGrade = 0.0
    var totalScore = 0.0

    for _ in 0..<20 {
        let input = readLine()!.split(separator: " ").map{$0}
        if input[2] != "P" {
            if let score = gradeStandard[String(input[2])] {
                totalScore += Double(input[1])! * score
                sumOfGrade += Double(input[1])!
            }
        }
    }
    print(totalScore / sumOfGrade)
}
