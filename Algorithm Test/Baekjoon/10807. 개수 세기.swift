//
//  10807. 개수 세기.swift
//  Algorithm Test
//
//  Created by 박민주 on 2023/03/13.
//

func B10807() {
    let n = Int(readLine()!)!
    let array = (readLine()!.split(separator:" ")).map{Int($0)!}
    let v = Int(readLine()!)!
    let count = array.filter{$0 == v}.count

    print(count)
}
