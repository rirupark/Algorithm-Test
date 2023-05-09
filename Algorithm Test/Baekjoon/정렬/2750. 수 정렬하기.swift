//
//  2750. 수 정렬하기.swift
//  Algorithm Test
//
//  Created by 박민주 on 2023/05/10.
//

func B2750() {
    let n = Int(readLine()!)!
    var array = [Int]()
    for _ in 0..<n {
        array.append(Int(readLine()!)!)
    }
    for num in array.sorted() { print(num) }
}
