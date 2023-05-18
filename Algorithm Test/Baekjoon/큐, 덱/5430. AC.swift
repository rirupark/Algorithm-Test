//
//  5430. AC.swift
//  Algorithm Test
//
//  Created by 박민주 on 2023/05/16.
//
// 구현, 자료 구조, 문자열, 파싱, 덱
// 덱을 활용하여 시간복잡도를 향상시키는 문제

func B5430() {
    let t = Int(readLine()!)!
    for _ in 0..<t {
        let p = readLine()!
        let n = Int(readLine()!)!
        let nums = readLine()!.dropFirst().dropLast().split(separator: ",").map{Int($0)!}
        var isError = false, isReversed = false
        var front = 0, end = n - 1
        for char in p {
            if char == "R" {
                isReversed.toggle()
            } else { // char == "D"
                if end >= front {
                    if isReversed { end -= 1 }
                    else { front += 1 }
                } else { isError = true; break }
            }
        }
        if isError { print("error") }
        else if front > end { print("[]") }
        else { print(isReversed ? "[\(nums[front...end].reversed().map{String($0)}.joined(separator: ","))]" : "[\(nums[front...end].map{String($0)}.joined(separator: ","))]") }
    }

}
