//
//  10799. 쇠막대기.swift
//  Algorithm Test
//
//  Created by 박민주 on 2023/07/20.
//

func B10799() {
    var input = readLine()!.map{$0}
    var stack = [Character](), answer = 0
    for i in 0..<input.count {
        if input[i] == "(" { stack.append(input[i]) }
        else {
            stack.removeLast()
            if input[i - 1] == "(" { answer += stack.count }
            else { answer += 1 }
        }
    }
    print(answer)
}
