//
//  1978. 소수 찾기.swift
//  Algorithm Test
//
//  Created by 박민주 on 2023/05/08.
//

func B1978() {
    let n = Int(readLine()!)!
    let nums = readLine()!.split(separator: " ").map{Int($0)!}
    var answer = 0
    for num in nums {
        let array = (1...num).filter{ num % $0 == 0 }
        if array.count == 2 { answer += 1 }
    }
    print(answer)
}
