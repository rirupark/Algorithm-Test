//
//  2798. 블랙잭.swift
//  Algorithm Test
//
//  Created by 박민주 on 2023/05/09.
//

func B2798() {
    let nm = readLine()!.split(separator: " ").map{Int($0)!}
    let nums = readLine()!.split(separator: " ").map{Int($0)!}
    var result = 0
    for i in 0..<nm[0]-2 {
        for j in i+1..<nm[0]-1 {
            for h in j+1..<nm[0] {
                let sum = nums[i] + nums[j] + nums[h]
                if sum <= nm[1] { result = max(result, sum) }
            }
        }
    }
    print(result)
}
