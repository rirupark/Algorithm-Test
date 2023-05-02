//
//  27866. 문자와 문자열.swift
//  Algorithm Test
//
//  Created by 박민주 on 2023/05/02.
//

func B27866() {
    let str = readLine()!
    let num = Int(readLine()!)!
    print(str.map{$0}[num - 1])
}
