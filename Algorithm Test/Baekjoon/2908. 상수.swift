//
//  2908. 상수.swift
//  Algorithm Test
//
//  Created by 박민주 on 2023/05/03.
//

func B2908() {
    var ab = readLine()!.split(separator: " ").map{$0}
    let reversedA = Int(String(ab[0].reversed()))!
    let reversedB = Int(String(ab[1].reversed()))!
    print(max(reversedA, reversedB))
}
