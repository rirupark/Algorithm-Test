//
//  10808. 알파벳 개수.swift
//  Algorithm Test
//
//  Created by 박민주 on 2023/07/10.
//

func B10808() {
    let s = readLine()!
    var array = [Int](repeating: 0, count: 26)
    for char in s { array[Int(char.asciiValue!) - 97] += 1 }
    print(array.map{String($0)}.joined(separator: " "))
}
