//
//  28278. 스택 2.swift
//  Algorithm Test
//
//  Created by 박민주 on 2023/08/02.
//

func B28278() {
    var stack = [Int]()
    for _ in 0..<Int(readLine()!)! {
        let input = readLine()!.split(separator: " ").map{Int($0)!}
        if input[0] == 1 { stack.append(input[1]) }
        else if input[0] == 2 { print(stack.isEmpty ? -1 : stack.removeLast()) }
        else if input[0] == 3 { print(stack.count) }
        else if input[0] == 4 { print(stack.isEmpty ? 1 : 0) }
        else { print(stack.isEmpty ? -1 : stack.last!) }
    }
}
