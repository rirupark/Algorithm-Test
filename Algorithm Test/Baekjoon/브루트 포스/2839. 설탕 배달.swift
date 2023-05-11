//
//  2839. 설탕 배달.swift
//  Algorithm Test
//
//  Created by 박민주 on 2023/05/09.
//

func B2839() {
    let n = Int(readLine()!)!
    var minCount = 5000
    for i in 0...(n/3) {
        for j in 0...(n/5) {
            if n == 3 * i + 5 * j { minCount = min(minCount, i + j) }
        }
    }
    print(minCount == 5000 ? -1 : minCount)
}
