//
//  2108. 통계학.swift
//  Algorithm Test
//
//  Created by 박민주 on 2023/05/16.
//
// 수학, 구현, 정렬

import Foundation

func B2108() {
    let n = Int(readLine()!)!
    var dic = [Int: Int]()
    var arr = [Int]()
    var mode = [Int]()
    
    for _ in 0..<n {
        let num = Int(readLine()!)!
        dic.updateValue((dic[num] ?? 0) + 1, forKey: num)
        arr.append(num)
    }
    for (key, _) in dic {
        let maxMode = dic.values.max()!
        if dic[key] == maxMode { mode.append(key) }
    }

    print(Int(round((Double(arr.reduce(0, +)) / Double(n)))))
    print(arr.sorted()[n / 2])
    print(mode.count == 1 ? mode[0] : mode.sorted()[1])
    print(arr.max()! - arr.min()!)
}
