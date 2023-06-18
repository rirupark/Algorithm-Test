//
//  1075. 나누기.swift
//  Algorithm Test
//
//  Created by 박민주 on 2023/06/18.
//
// 수학, 브루트포스 알고리즘

func B1075() {
    var n = readLine()!.map{String($0)}
    let f = Int(readLine()!)!
    n.removeLast(2)
    var num = Int(n.joined() + "00")!
    while true {
        if num % f == 0 { break }
        num += 1
    }
    print(String(num).map{String($0)}.suffix(2).joined())
}
