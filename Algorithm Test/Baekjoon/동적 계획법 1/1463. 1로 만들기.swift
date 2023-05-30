//
//  1463. 1로 만들기.swift
//  Algorithm Test
//
//  Created by 박민주 on 2023/05/30.
//
// DP
// bottom-up, 1을 다른 해당 숫자로 만드는 방법의 최소 연산으 ㅣ수

func B1463() {
    let n = Int(readLine()!)!
    var result = [Int](repeating: n, count: n + 1)
    result[1] = 0
    for i in 1...n {
        if i % 3 == 0 {
            result[i] = min(result[i / 3] + 1 , result[i])
        }
        if i % 2 == 0 {
            result[i] = min(result[i / 2] + 1 , result[i])
        }
        result[i] = min(result[i - 1] + 1 , result[i])
    }
    print(result[n])
}
