//
//  3046. R2.swift
//  Algorithm Test
//
//  Created by 박민주 on 2023/08/04.
//

func B3046() {
    let R1S = readLine()!.split(separator: " ").map{Int($0)!}
    print(R1S[1] * 2 - R1S[0])
}
