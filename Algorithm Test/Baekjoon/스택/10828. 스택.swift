//
//  10828. 스택.swift
//  Algorithm Test
//
//  Created by 박민주 on 2023/05/16.
//
// 자료 구조, 스택

func B10828() {
    let n = Int(readLine()!)!
    var stack = [Int]()
    for _ in 0..<n {
        let input = readLine()!.split(separator: " ").map{$0}
        if input[0] == "push" { stack.append(Int(input[1])!) }
        if input[0] == "pop" { print(stack.isEmpty ? -1 : stack.removeLast()) }
        if input[0] == "top" { print(stack.isEmpty ? -1 : stack[stack.count - 1]) }
        if input[0] == "size" { print(stack.count) }
        if input[0] == "empty" { print(stack.isEmpty ? 1 : 0) }
    }
}
