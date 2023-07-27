//
//  10845. 큐.swift
//  Algorithm Test
//
//  Created by 박민주 on 2023/07/27.
//

func B10845() {
    let n = Int(readLine()!)!
    var queue = [Int]()
    for _ in 0..<n {
        let input = readLine()!.split(separator: " ").map{$0}
        if input[0] == "push" { queue.append(Int(input[1])!) }
        if input[0] == "pop" { print(queue.isEmpty ? -1 : queue.remove(at: 0)) }
        if input[0] == "front" { print(queue.isEmpty ? -1 : queue[0]) }
        if input[0] == "back" { print(queue.isEmpty ? -1 : queue[queue.count - 1]) }
        if input[0] == "size" { print(queue.count) }
        if input[0] == "empty" { print(queue.isEmpty ? 1 : 0) }
    }
}
