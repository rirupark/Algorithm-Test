//
//  25305. 커트라인.swift
//  Algorithm Test
//
//  Created by 박민주 on 2023/05/10.
//

func B25305() {
    let nk = readLine()!.split(separator: " ").map{Int($0)!}
    let grades = readLine()!.split(separator: " ").map{Int($0)!}
    print(grades.sorted(by: >)[nk[1] - 1])
}
