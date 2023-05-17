//
//  2164. 카드2.swift
//  Algorithm Test
//
//  Created by 박민주 on 2023/05/16.
//
// 자료 구조, 큐

func B2164() {
    let n = Int(readLine()!)!
    var arr = Array(1...n)
    var front = 0
    for _ in 0..<arr.count - 1 {
        arr.append(arr[front + 1])
        front += 2
    }
    print(arr[front])
}

// MARK: Swift에서 시간 초과를 막기 위한 큐 구현 방법
// 1. 포인터 사용  2. 더블 스택 큐
