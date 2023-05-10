//
//  1427. 소트인사이드.swift
//  Algorithm Test
//
//  Created by 박민주 on 2023/05/10.
//

func B1427() {
    let input = readLine()!
    let array = input.map{Int(String($0))!}
    print(array.sorted(by: >).map{String($0)}.joined(separator: ""))
}
