//
//  10988. 팰린드롬인지 확인하기.swift
//  Algorithm Test
//
//  Created by 박민주 on 2023/05/04.
//

func B10988() {
    let input = readLine()!
    print(input == String(input.reversed()) ? 1 : 0)
}
