//
//  2559. 수열.swift
//  Algorithm Test
//
//  Created by 박민주 on 2023/06/02.
//
// 누적 합, 두 포인터, 슬라이딩 윈도우

// MARK: 누적 합 (76152KB, 40ms)
func B2559() {
    let nk = readLine()!.split(separator: " ").map{Int($0)!}
    var nums = readLine()!.split(separator: " ").map{Int($0)!}
    for i in 1..<nk[0] { nums[i] += nums[i - 1] }
    nums.insert(0, at: 0)
    var answer = nums.min() ?? 0
    for i in nk[1]...nk[0] {
        answer = max(answer, nums[i] - nums[i - nk[1]])
    }
    print(answer)
}

// MARK: 슬라이딩 윈도우 (76152KB, 36ms)
// 배열을 돌면서 합의 앞 인자는 빼고, 뒷 인자는 추가해 최대와 비교해준다.
func B2559Ver2() {
    let nk = readLine()!.split(separator: " ").map{Int($0)!}
    let nums = readLine()!.split(separator: " ").map{Int($0)!}
    var window = nums.prefix(nk[1]).reduce(0, +)
    var answer = window
    for i in nk[1]..<nk[0] {
        window += nums[i] - nums[i - nk[1]]
        answer = max(answer, window)
    }
    print(answer)
}
