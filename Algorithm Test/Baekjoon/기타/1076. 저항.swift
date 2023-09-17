//
//  1076. 저항.swift
//  Algorithm Test
//
//  Created by 박민주 on 2023/09/17.
//

func B1076() {
    let colors = ["black", "brown", "red", "orange", "yellow", "green", "blue", "violet", "grey", "white"]
    var result = ""
    for i in 0..<3 {
        let color = readLine()!
        if i == 2 {
            var answer = Int(result)!
            for _ in 0..<colors.firstIndex(of: color)! {
                answer *= 10
            }
            print(answer)
        } else {
            result += String(colors.firstIndex(of: color)!)
        }
    }
}
