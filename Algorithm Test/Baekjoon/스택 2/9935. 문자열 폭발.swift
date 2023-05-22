//
//  9935. 문자열 폭발.swift
//  Algorithm Test
//
//  Created by 박민주 on 2023/05/22.
//

// 94712KB, 344ms
func B9935() {
    let str = readLine()!, bombStr = readLine()!
    var stack = [String]()
    for char in str {
        stack.append(String(char))
        if char == bombStr.last {
            if stack.count >= bombStr.count && stack[stack.count - bombStr.count...stack.count - 1].joined() == bombStr {
                for _ in stack.count - bombStr.count...stack.count - 1 {
                    stack.removeLast()
                }
            }
        }
    }
    print(stack.isEmpty ? "FRULA" : stack.joined())
}

// 72652KB, 296ms
func B9935Ver2() {
    let str = readLine()!, bombStr = readLine()!
    var stack = ""
    for char in str {
        stack.append(char)
        if char == bombStr.last {
            if char == bombStr.last && String(stack.suffix(bombStr.count)) == bombStr {
                stack.removeLast(bombStr.count)
            }
        }
    }
    print(stack.isEmpty ? "FRULA" : stack)
}


// 시간 초과
//var str = readLine()!
//let bombStr = readLine()!
//while str.contains(bombStr) {
//    str = str.replacingOccurrences(of: bombStr, with: "")
//}
//print(str.isEmpty ? "FRULA" : str)
