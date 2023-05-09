//
//  9063. 대지.swift
//  Algorithm Test
//
//  Created by 박민주 on 2023/05/08.
//

func B9063() {
    let n = Int(readLine()!)!
    var maxX = -100000, maxY = -100000, minX = 100000, minY = 100000
    for _ in 0..<n {
        let xy = readLine()!.split(separator: " ").map{Int($0)!}
        let x = xy[0], y = xy[1]
        maxX = maxX < x ? x : maxX
        maxY = maxY < y ? y : maxY
        minX = minX > x ? x : minX
        minY = minY > y ? y : minY
    }
    print((maxX - minX) * (maxY - minY))
}
