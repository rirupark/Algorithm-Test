//
//  11721. 열 개씩 끊어 출력하기.swift
//  Algorithm Test
//
//  Created by 박민주 on 2023/07/01.
//

func B11721() {
    var temp = ""
    for char in readLine()! {
        temp += String(char)
        if temp.count == 10 { print(temp); temp = "" }
    }
    print(temp)
}
