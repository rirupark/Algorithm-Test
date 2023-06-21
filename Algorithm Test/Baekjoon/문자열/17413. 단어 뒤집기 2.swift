//
//  17413. 단어 뒤집기 2.swift
//  Algorithm Test
//
//  Created by 박민주 on 2023/06/21.
//
// 구현, 자료 구조, 문자열, 스택

func B17413() {
    let s = readLine()!
    var word = "", tag = ""
    for char in s {
        if char == "<" {
            tag.append(char)
            if !word.isEmpty {
                print(String(word.reversed()), terminator: "")
                word = ""
            }
        } else if char == ">" {
            tag.append(char)
            print(tag, terminator: "")
            tag = ""
        } else {
            if tag.first == "<" { tag.append(char) } // tag 생성 중
            else if char == " " {
                print(String(word.reversed()), terminator: " ")
                word = ""
            } else { word.append(char) }
        }
    }
    if !word.isEmpty { print(String(word.reversed())) }
}
