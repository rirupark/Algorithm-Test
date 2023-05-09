//
//  2231. 분해합.swift
//  Algorithm Test
//
//  Created by 박민주 on 2023/05/09.
//

func B2231() {
    let n = Int(readLine()!)!
    var answer = 0
    for num in 1...n {
        let splitNum = String(num).map{Int(String($0))!}
        if (num + splitNum.reduce(0, +)) == n { answer = num; break }
    }
    print(answer)
}
