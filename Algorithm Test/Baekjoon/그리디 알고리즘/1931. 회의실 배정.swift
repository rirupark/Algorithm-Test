//
//  1931. 회의실 배정.swift
//  Algorithm Test
//
//  Created by 박민주 on 2023/06/04.
//
// 그리디 알고리즘, 정렬

func B1931() {
    let n = Int(readLine()!)!
    var arr = [(Int, Int)](), count = 1
    for _ in 0..<n {
        let input = readLine()!.split(separator: " ").map{Int($0)!}
        arr.append((input[0], input[1]))
    }
    arr = arr.sorted(by: { $0.1 == $1.1 ? $0.0 < $1.0 : $0.1 < $1.1 })
    var temp = arr[0].1
    for i in 1..<n {
        if temp <= arr[i].0 { count += 1; temp = arr[i].1 }
    }
    print(count)
}
