//
//  24313. 알고리즘 수업 - 점근적 표기 1.swift
//  Algorithm Test
//
//  Created by 박민주 on 2023/05/09.
//

func B24313() {
    let ab = readLine()!.split(separator: " ").map{Int($0)!}
    let c = Int(readLine()!)!
    let n = Int(readLine()!)!
    print((ab[1] <= (c - ab[0]) * n) && (c >= ab[0]) ? 1 : 0)
    // b <= (c - a)n
    // 이때 c - a가 음수가 되면 반례가 생김. 즉 c는 a보다 크거나 같아야 조건 성립
}
