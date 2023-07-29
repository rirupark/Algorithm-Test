//
//  1259. 팰린드롬수.swift
//  Algorithm Test
//
//  Created by 박민주 on 2023/07/29.
//

func B1259() {
    while true {
        let input = readLine()!
        if input == "0" { break }
        print(input == String(input.reversed()) ? "yes" : "no")
    }
}
