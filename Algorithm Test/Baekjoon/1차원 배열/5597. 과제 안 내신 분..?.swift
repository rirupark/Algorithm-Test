//
//  5597. 과제 안 내신 분..?.swift
//  Algorithm Test
//
//  Created by 박민주 on 2023/03/17.
//

func B5597() {
    var array = [Int]()

    for _ in 0..<28 {
        let n = Int(readLine()!)!
        array.append(n)
    }

    for num in 1...30 {
        if !array.contains(num) { print(num) }
    }
}
