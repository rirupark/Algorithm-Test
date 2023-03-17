//
//  10811. 바구니 뒤집기.swift
//  Algorithm Test
//
//  Created by 박민주 on 2023/03/16.
//

func B10811() {
    let nm = (readLine()!.split(separator:" ")).map{Int($0)!}
    let n = nm[0], m = nm[1]
    var array = [Int]()
    for num in 1...n { array.append(num) } // init
    for _ in 0..<m {
        let ij = (readLine()!.split(separator:" ")).map{Int($0)!}
        let i = ij[0], j = ij[1]
        array[i-1...j-1].reverse() // i부터 j번째까지 바구니를 역순으로 변경
    }
    print(array.map{"\($0)"}.joined(separator: " "))
}
