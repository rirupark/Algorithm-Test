//
//  2744. 대소문자 바꾸기.swift
//  Algorithm Test
//
//  Created by 박민주 on 2023/07/04.
//
// 구현, 문자열

func B2744() {
    var result = ""
    for char in readLine()! {
        if char.isUppercase { result += char.lowercased() }
        else { result += char.uppercased() }
    }
    print(result)
}
