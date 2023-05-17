//
//  1966. 프린터 큐.swift
//  Algorithm Test
//
//  Created by 박민주 on 2023/05/16.
//
// 구현, 자료 구조, 시뮬레이션, 큐

func B1966() {
    let t = Int(readLine()!)!
    for _ in 0..<t {
        let nm = readLine()!.split(separator: " ").map{Int($0)!}
        var priority = readLine()!.split(separator: " ").map{Int($0)!}
        var queue = [(Int, Int)]()
        var order = 0
        for (i, v) in priority.enumerated() { queue.append((i, v)) }
        priority.sort()
        while true {
            if queue[0].1 == priority.last { // 0번째 요소와 최댓값 비교
                order += 1 // 우선순위에 따른 순서 증가 (최댓값 등장부터 카운트)
                if queue[0].0 == nm[1] { print(order); break }
                else {
                    queue.removeFirst()
                    priority.removeLast()
                }
            } else { queue.append(queue.removeFirst()) }
        }
    }
}
