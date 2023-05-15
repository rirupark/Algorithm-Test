//
//  1010. 다리 놓기.swift
//  Algorithm Test
//
//  Created by 박민주 on 2023/05/15.
//
// 수학, 다이나믹 프로그래밍, 조합론

func B1010() {
    let t = Int(readLine()!)!
    for _ in 0..<t {
        let nm = readLine()!.split(separator: " ").map{Int($0)!}
        let n = nm[0], m = nm[1]
        var cache = Array(repeating: Array(repeating: 0, count: 31), count: 31)
        for i in 0...30 {
            for j in 0...i {
                if i == j || j == 0 { cache[i][j] = 1 }
                else { cache[i][j] = cache[i - 1][j - 1] + cache[i - 1][j] }
            }
        }
        print(cache[m][n])
    }
}

// MARK: 동적 계획법 (DP)
// 문제를 여러 개의 하위 문제로 나누어 푼 다음, 그것을 결합하여 최종 목적에 도달
// 상향식 접근법. 가작 작은 부분의 해답을 구한 후 이를 저장하여, 저장한 값을 이용해 상위 문제를 풀어가는 방식
// Memoization 기법 : 동일한 계산을 반복해야 할 때 이전에 계산한 값을 메모리에 저장하여 반복 수행을 제거하여 프로그램 실행 속도를 빠르게 한다. 최적화 기법임.
