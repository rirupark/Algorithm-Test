//
//  25304. 영수증.swift
//  Algorithm Test
//
//  Created by 박민주 on 2023/03/09.
//

import Foundation

func B25304() {
    let money = Int(readLine()!)!
    let num = Int(readLine()!)!
    var result = 0

    for _ in 0..<num {
        let input = (readLine()!.split(separator:" ")).map{Int($0)!}
        let price = input[0], num = input[1]
        result += price * num
    }

    print(money == result ? "Yes" : "No")
}
