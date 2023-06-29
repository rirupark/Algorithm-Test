//
//  10844. 쉬운 계단 수.swift
//  Algorithm Test
//
//  Created by 박민주 on 2023/06/29.
//
// 다이나믹 프로그래밍

func B10844() {
    let n = Int(readLine()!)!
    var arr = [[Int]](repeating: [Int](repeating: 0, count: 10), count: 101)
    var answer = 0
    for i in 1...9 { arr[1][i] = 1 }
    if n > 1 {
        for i in 2...n {
            for j in 0...9 {
                if j == 0 {
                    arr[i][j] = arr[i - 1][j + 1] % 1000000000
                } else if j == 9 {
                    arr[i][j] = arr[i - 1][j - 1] % 1000000000
                } else {
                    arr[i][j] = (arr[i - 1][j - 1] + arr[i - 1][j + 1]) % 1000000000
                }
            }
        }
    }
    print(arr[n].reduce(0, +) % 1000000000)
}
