//
//  13909. 창문 닫기.swift
//  Algorithm Test
//
//  Created by 박민주 on 2023/05/12.
//
// 수학, 정수론

// 각 숫자의 약수의 개수가 홀수여야 함. => 제곱수인 것
func B13909() {
    let n = Int(readLine()!)!
    var t = 1, count = 0
    while t * t <= n { count += 1; t += 1 }
    print(count)
}
