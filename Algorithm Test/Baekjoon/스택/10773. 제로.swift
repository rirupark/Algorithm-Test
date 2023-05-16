//
//  10773. 제로.swift
//  Algorithm Test
//
//  Created by 박민주 on 2023/05/16.
//
// 구현, 자료 구조, 스택

func B10773() {
    let k = Int(readLine()!)!
    var arr = [Int]()
    for _ in 0..<k {
        let num = Int(readLine()!)!
        if num == 0 { arr.removeLast() }
        else { arr.append(num) }
    }
    print(arr.reduce(0, +))
}
