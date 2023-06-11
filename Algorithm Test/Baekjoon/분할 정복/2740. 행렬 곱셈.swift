//
//  2740. 행렬 곱셈.swift
//  Algorithm Test
//
//  Created by 박민주 on 2023/06/11.
//
// 수학, 구현, 선형대수학

func B2740() {
    let nm = readLine()!.split(separator: " ").map{Int($0)!}
    var a = [[Int]](), b = [[Int]]()
    for _ in 0..<nm[0] {
        a.append(readLine()!.split(separator: " ").map{Int($0)!})
    }
    let mk = readLine()!.split(separator: " ").map{Int($0)!}
    for _ in 0..<mk[0] {
        b.append(readLine()!.split(separator: " ").map{Int($0)!})
    }

    var result = [[Int]](repeating: [Int](repeating: 0, count: mk[1]), count: nm[0])
    for n in 0..<nm[0] {
        for k in 0..<mk[1] {
            for m in 0..<nm[1] { result[n][k] += a[n][m] * b[m][k] }
        }
    }
    for arr in result {
        print(arr.map{String($0)}.joined(separator: " "))
    }
}
