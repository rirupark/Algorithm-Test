//
//  1193. 분수찾기.swift
//  Algorithm Test
//
//  Created by 박민주 on 2023/05/07.
//

func B1193() {
    var x = Int(readLine()!)!
    var line = 0
    while true {
        x -= line
        if x <= 0 { break }
        line += 1
    }
    if line % 2 == 0 {
        print("\(line+x)/\(-x+1)")
    } else {
        print("\(-x+1)/\(line+x)")
    }
}
