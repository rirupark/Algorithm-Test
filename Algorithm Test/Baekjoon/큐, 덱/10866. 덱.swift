//
//  10866. 덱.swift
//  Algorithm Test
//
//  Created by 박민주 on 2023/05/16.
//

import Foundation

func B10866() {
    var deque : [Int] = []
    let n = Int(readLine()!)!
    
    for _ in 0..<n {
        let input = readLine()!.split(separator:" ")
        let cmd = String(input[0])
        
        if cmd == "push_front" {
            deque.insert(Int(input[1])!, at: 0)
        }
        
        else if cmd == "push_back" {
            deque.append(Int(input[1])!)
        }
        
        else if cmd == "pop_front" {
            print(deque.isEmpty ? -1 : deque.removeFirst())
        }
        
        else if cmd == "pop_back" {
            if deque.isEmpty {
                print(-1)
            }
            else {
                print(deque.last!)
                deque.removeLast()
            }
        }
        
        else if cmd == "size" {
            print(deque.count)
        }
        
        else if cmd == "empty" {
            print(deque.isEmpty ? 1 : 0)
        }
        
        else if cmd == "front" {
            print(deque.isEmpty ? -1 : deque[0])
        }
        
        else if cmd == "back" {
            print(deque.isEmpty ? -1 : deque.last!)
        }
    }
}
