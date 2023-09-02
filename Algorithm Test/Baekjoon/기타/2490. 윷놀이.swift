//
//  2490. 윷놀이.swift
//  Algorithm Test
//
//  Created by 박민주 on 2023/09/02.
//

func B2490() {
    for _ in 0..<3 {
        let input = readLine()!.split(separator: " ").map{Int($0)!}
        switch input.filter({$0 == 0}).count {
        case 1:
            print("A")
        case 2:
            print("B")
        case 3:
            print("C")
        case 4:
            print("D")
        default:
            print("E")
        }
    }
}
