//
//  10813. 공 바꾸기.swift
//  Algorithm Test
//
//  Created by 박민주 on 2023/03/15.
//

func B10813() {
    let nm = (readLine()!.split(separator:" ")).map{Int($0)!}
    let n = nm[0], m = nm[1]
    var array = [Int]()
    for num in 1...n { array.append(num) } // init
    for _ in 0..<m {
        let ij = (readLine()!.split(separator:" ")).map{Int($0)!}
        let i = ij[0], j = ij[1]
        let temp = array[i-1] // 원래 있던 공 저장 (첫 번째 바구니 공 저장)
        array[i-1] = array[j-1] // 공 교환 (2 -> 1)
        array[j-1] = temp // 공 교환 (1 -> 2)
    }

    print(array.map{"\($0)"}.joined(separator: " "))
}
