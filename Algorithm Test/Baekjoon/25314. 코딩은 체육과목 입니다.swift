//
//  25314. 코딩은 체육과목 입니다.swift
//  Algorithm Test
//
//  Created by 박민주 on 2023/03/10.
//

func B25314() {
    let num = Int(readLine()!)!
    var result = ""
    for _ in 0..<num / 4 {
        result += "long "
    }
    print(result + "int")
}
