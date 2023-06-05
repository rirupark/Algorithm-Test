//
//  1541. 잃어버린 괄호.swift
//  Algorithm Test
//
//  Created by 박민주 on 2023/06/05.
//
// 수학, 문자열, 그리디 알고리즘, 파싱
// 처음 -가 등장하는 이후를 묶기

func B1541() {
    let input = readLine()!.split(separator: "-")
    var result = 0
    for num in input[0].split(separator: "+") {
        result += Int(num)!
    }
    for nums in input[1...] {
        for num in nums.split(separator: "+") {
            result -= Int(num)!
        }
    }
    print(result)
}
