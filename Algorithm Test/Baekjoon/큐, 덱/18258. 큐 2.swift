//
//  18258. 큐 2.swift
//  Algorithm Test
//
//  Created by 박민주 on 2023/05/16.
//
// 자료 구조, 큐

import Foundation

func B18258() {
    let file = FileIO2()
    let n = file.readInt()
    var queue = Queue()
    var result = ""
    let FRONT = stringToAscii("front")
    let EMPTY = stringToAscii("empty")
    let BACK = stringToAscii("back")
    let SIZE = stringToAscii("size")
    let POP = stringToAscii("pop")

    for _ in 0..<n {
        let line = file.readString()
        
        if line == FRONT {
            result += "\(queue.front)\n"
        } else if line == EMPTY {
            result += queue.empty ? "1\n" : "0\n"
        } else if line == BACK {
            result += "\(queue.back)\n"
        } else if line == SIZE {
            result += "\(queue.size)\n"
        } else if line == POP {
            result += "\(queue.pop())\n"
        } else {
            queue.push(file.readInt())
        }
    }
    print(result)

    final class FileIO2 {
        private var buffer:[UInt8]
        private var index: Int
     
        init(fileHandle: FileHandle = FileHandle.standardInput) {
            
            buffer = Array(fileHandle.readDataToEndOfFile())+[UInt8(0)]
            index = 0
        }
     
        @inline(__always) private func read() -> UInt8 {
            defer { index += 1 }
            return buffer.withUnsafeBufferPointer { $0[index] }
        }
     
        @inline(__always) func readInt() -> Int {
            var sum = 0
            var now = read()
            var isPositive = true
     
            while now == 10 || now == 32 { now = read() }
            if now == 45 { isPositive.toggle(); now = read() }
            while now >= 48, now <= 57 {
                sum = sum * 10 + Int(now-48)
                now = read()
            }
            return sum * (isPositive ? 1:-1)
        }
     
        @inline(__always) func readString() -> Int {
            var str = 0
            var now = read()
     
            while now == 10 || now == 32 { now = read() }
            while now != 10 && now != 32 && now != 0 {
                    str += Int(now)
                    now = read()
            }
            return str
        }
    }
     
    func stringToAscii(_ str: String) -> Int {
        str.map { $0.asciiValue! }.map { Int($0) }.reduce(0, +)
    }
     
    struct Queue {
        private var array = [Int]()
        private var start = 0
        private var end = 0
        
        var empty: Bool { start == end }
        var size: Int { end - start }
        var front: Int { return empty ? -1 : array[start] }
        var back: Int { return empty ? -1 : array[end-1] }

        mutating func push(_ num: Int) {
            array.append(num)
            end += 1
        }
        mutating func pop() -> Int {
            if empty { return -1 }
            let num = array[start]
            start += 1
            return num
        }
    }
}

// 시간 초과 - 파일 입출력 시간 때문... Swift 입출력 너무 느린 문제
//let n = Int(readLine()!)!
//var queue = [Int]()
//for _ in 0..<n {
//    let input = readLine()!.split(separator: " ").map{$0}
//    if input[0] == "push" { queue.append(Int(input[1])!) }
//    if input[0] == "pop" { print(queue.isEmpty ? -1 : queue.removeFirst()) }
//    if input[0] == "size" { print(queue.count) }
//    if input[0] == "empty" { print(queue.isEmpty ? 1 : 0) }
//    if input[0] == "front" { print(queue.first ?? -1) }
//    if input[0] == "back" { print(queue.last ?? -1) }
//}
