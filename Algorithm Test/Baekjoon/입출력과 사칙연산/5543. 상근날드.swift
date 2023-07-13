//
//  5543. 상근날드.swift
//  Algorithm Test
//
//  Created by 박민주 on 2023/07/13.
//

func B5543() {
    let b1 = Int(readLine()!)!, b2 = Int(readLine()!)!, b3 = Int(readLine()!)!
    let d1 = Int(readLine()!)!, d2 = Int(readLine()!)!
    print(min(b1, b2, b3) + min(d1, d2) - 50)
}
