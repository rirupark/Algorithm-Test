//
//  11005. 진법 변환 2.swift
//  Algorithm Test
//
//  Created by 박민주 on 2023/05/06.
//

func B11005() {
    let nb = readLine()!.split(separator: " ").map{Int($0)!}
    print(String(nb[0], radix: nb[1]).uppercased())
}
