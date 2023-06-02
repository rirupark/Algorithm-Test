//
//  10986. 나머지 합.swift
//  Algorithm Test
//
//  Created by 박민주 on 2023/06/02.
//
// 수학, 누적 합

// 누적 합에서 m을 나눈 나머지가 0인 개수 + 나머지가 같은 것들끼리의 부분합(차)
// 나머지가 같은 것들 중 2개를 뽑아 부분합을 구함.
// 나머지가 같은 부분 합은 m으로 나누었을 때 나머지가 0임.
// 즉, 누적 합 배열의 요소를 m으로 나눈 나머지 값이 같으면 합이 m으로 나누어 떨어짐.
// nC2
func B10986() {
    let nm = readLine()!.split(separator: " ").map{Int($0)!}
    var nums = readLine()!.split(separator: " ").map{Int($0)!}
    var dic = [Int: Int]()
    for i in 1..<nm[0] { nums[i] += nums[i - 1] }
    for num in nums { dic[num % nm[1], default: 0] += 1 }
    var answer = dic[0] ?? 0
    for (_, value) in dic {
        if value > 1 { answer += (value * (value - 1)) / 2 }
    }
    print(answer)
}
