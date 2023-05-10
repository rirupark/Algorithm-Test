//
//  10989. 수 정렬하기 3.swift
//  Algorithm Test
//
//  Created by 박민주 on 2023/05/10.
//
// 입출력이 10~20만 줄 넘어가면 Swift는 빠른 입출력을 쓰는 것을 권장 in Baekjoon

import Foundation

// MARK: 빠른 입출력
final class FileIO {
    private var buffer:[UInt8]
    private var index: Int

    init(fileHandle: FileHandle = FileHandle.standardInput) {
        buffer = Array(fileHandle.readDataToEndOfFile())+[UInt8(0)] // 인덱스 범위 넘어가는 것 방지
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

        while now == 10 || now == 32 { now = read() } // 공백과 줄바꿈 무시
        if now == 45{ isPositive.toggle(); now = read() } // 음수 처리
        while now >= 48, now <= 57 {
            sum = sum * 10 + Int(now-48)
            now = read()
        }
        return sum * (isPositive ? 1:-1)
    }

    @inline(__always) func readString() -> String {
        var str = ""
        var now = read()

        while now == 10 || now == 32 { now = read() } // 공백과 줄바꿈 무시

        while now != 10 && now != 32 && now != 0 {
            str += String(bytes: [now], encoding: .ascii)!
            now = read()
        }
        return str
    }
}

func B10989() {
    let file = FileIO()

    let N = file.readInt()
    var array = [Int](repeating: 0, count: 10001)

    for _ in 0..<N {
        let n = file.readInt()
        array[n] += 1
    }
    var answer = ""
    for i in 1...10000 {
        answer += String(repeating:"\(i)\n", count:array[i])
    }
    print(answer)
}
