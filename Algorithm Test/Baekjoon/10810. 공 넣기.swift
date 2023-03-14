//
//  10810. 공 넣기.swift
//  Algorithm Test
//
//  Created by 박민주 on 2023/03/13.
//

import Foundation

func B10810() {
    let nm = (readLine()!.split(separator:" ")).map{Int($0)!}
    let n = nm[0], m = nm[1]
    var array = [Int](repeating: 0, count: n)
    for _ in 0..<m {
        let ijk = (readLine()!.split(separator:" ")).map{Int($0)!}
        let i = ijk[0], j = ijk[1], k = ijk[2]
        // i부터 j까지 탐색하며 k 담아주기
        for num in i...j { array[num - 1] = k }
    }

    print(array.map{"\($0)"}.joined(separator: " "))
}
