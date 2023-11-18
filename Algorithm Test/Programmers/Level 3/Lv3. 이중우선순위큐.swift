//
//  Lv3. 이중우선순위큐.swift
//  Algorithm Test
//
//  Created by 박민주 on 11/18/23.
//

import Foundation

func solution이중우선순위큐(_ operations:[String]) -> [Int] {
    var queue = [Int]()
    
    for op in operations {
        let commands = op.split(separator: " ").map{$0}
        let cmd = commands[0], num = commands[1]
        if cmd == "I" { queue.append(Int(String(num))!) }
        else if cmd == "D" && !queue.isEmpty {
            queue.sort(by: <)
            if num == "1" { queue.removeLast() }
            else { queue.removeFirst() }
        }
    }
    return [queue.max() ?? 0, queue.min() ?? 0]
}
