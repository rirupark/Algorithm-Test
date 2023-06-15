//
//  5582. 공통 부분 문자열.swift
//  Algorithm Test
//
//  Created by 박민주 on 2023/06/15.
//
// DP, 문자열

func B5582() {
    let str1 = readLine()!.map{$0}, str2 = readLine()!.map{$0}
    var cache = [[Int]](repeating: [Int](repeating: 0, count: str2.count + 1), count: str1.count + 1)
    var maxLength = 0

    for i in 1...str1.count {
        for j in 1...str2.count {
            if str1[i - 1] == str2[j - 1] {
                cache[i][j] += cache[i - 1][j - 1] + 1
                maxLength = max(maxLength, cache[i][j])
            }
        }
    }
    print(maxLength)
}
