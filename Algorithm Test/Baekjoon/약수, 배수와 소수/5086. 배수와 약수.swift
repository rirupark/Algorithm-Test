//
//  5086. 배수와 약수.swift
//  Algorithm Test
//
//  Created by 박민주 on 2023/05/08.
//

func B5086() {
    while true {
        let input = readLine()!.split(separator: " ").map{Int($0)!}
        if input[0] == 0 && input[1] == 0 { break }
        if input[1] % input[0] == 0 { print("factor") }
        else if input[0] % input[1] == 0 { print("multiple") }
        else { print("neither") }
    }

}
