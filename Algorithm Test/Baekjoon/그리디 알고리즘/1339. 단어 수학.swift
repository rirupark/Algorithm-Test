//
//  1339. 단어 수학.swift
//  Algorithm Test
//
//  Created by 박민주 on 2023/07/05.
//

import Foundation

func B1339() {
    let n = Int(readLine()!)!
    var arr = [[Character]](), dic = [Character: Int]()
    var result = 0, num = 9
    for _ in 0..<n { arr.append(readLine()!.map{$0}) }
    for i in 0..<n {
        for j in 0..<arr[i].count {
            dic.updateValue((dic[arr[i][j]] ?? 0) + Int(pow(10, Double(arr[i].count - j - 1))), forKey: arr[i][j])
        }
    }
    for i in dic.sorted(by: {$0.value > $1.value}) {
        result += i.value * num
        num -= 1
    }
    print(result)
}
