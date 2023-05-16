//
//  4949. 균형잡힌 세상.swift
//  Algorithm Test
//
//  Created by 박민주 on 2023/05/16.
//
// 자료 구조, 문자열, 스택

func B4949() {
    while true {
        var stack = [Character]()
        let input = readLine()!
        if input == "." { break }
        for char in input {
            if char == "(" || char == "[" { stack.append(char) }
            if char == ")" {
                if stack.last == "(" { stack.removeLast() }
                else { stack.append(")") }
            }
            if char == "]" {
                if stack.last == "[" { stack.removeLast() }
                else { stack.append("]") }
            }
        }
        print(stack.isEmpty ? "yes" : "no")
    }
}
