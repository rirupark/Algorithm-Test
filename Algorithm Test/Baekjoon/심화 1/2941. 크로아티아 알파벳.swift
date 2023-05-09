//
//  2941. 크로아티아 알파벳.swift
//  Algorithm Test
//
//  Created by 박민주 on 2023/05/04.
//

import Foundation

func B2941() {
    var input = readLine()!
    let croatia = ["c=", "c-", "dz=", "d-", "lj", "nj", "s=", "z="]
    for str in croatia {
        input = input.replacingOccurrences(of: str, with: "a")
    }
    print(input.count)
}
