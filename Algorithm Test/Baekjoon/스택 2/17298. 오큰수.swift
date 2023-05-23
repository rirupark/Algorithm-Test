//
//  17298. 오큰수.swift
//  Algorithm Test
//
//  Created by 박민주 on 2023/05/23.
//
// 자료 구조, 스택

func B17298() {
    let n = Int(readLine()!)!
    let a = readLine()!.split(separator: " ").map{Int($0)!}
    var stack = [Int]()
    var answer = [Int](repeating: -1, count: n)

    for i in 0..<n {
        while !stack.isEmpty && a[stack.last!] < a[i] {
            answer[stack.removeLast()] = a[i]
        }
        stack.append(i)
    }
    print(answer.map{String($0)}.joined(separator: " "))
}
