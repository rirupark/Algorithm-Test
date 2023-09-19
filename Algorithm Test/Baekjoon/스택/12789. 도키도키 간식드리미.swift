//
//  12789. 도키도키 간식드리미.swift
//  Algorithm Test
//
//  Created by 박민주 on 2023/09/19.
//

func B12789() {
    let n = Int(readLine()!)!
    var nowArr = Array(readLine()!.split(separator: " ").map{Int($0)!}.reversed())
    var tempArr = [Int](), order = 1

    while !nowArr.isEmpty {
        if order == nowArr.last! {
            nowArr.removeLast()
            order += 1
            while !tempArr.isEmpty && tempArr.last! == order {
                tempArr.removeLast()
                order += 1
            }
        } else {
            tempArr.append(nowArr.removeLast())
        }
    }
    print(order == n + 1 ? "Nice" : "Sad")
}
