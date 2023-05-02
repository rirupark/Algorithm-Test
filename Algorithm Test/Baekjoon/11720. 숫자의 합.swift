//
//  11720. 숫자의 합.swift
//  Algorithm Test
//
//  Created by 박민주 on 2023/05/02.
//

func B11720() {
    let n = Int(readLine()!)!
    let num = readLine()!.map{Int(String($0))!} // 공백 없는 입력값 받기
    var sum = 0
    for i in 0..<n { sum += num[i] }
    print(sum)
}
