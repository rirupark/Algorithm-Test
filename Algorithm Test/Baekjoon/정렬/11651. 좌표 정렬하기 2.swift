//
//  11651. 좌표 정렬하기 2.swift
//  Algorithm Test
//
//  Created by 박민주 on 2023/05/10.
//

func B11651() {
    let n = Int(readLine()!)!
    var array = [(Int, Int)]()
    for _ in 0..<n {
        let input = readLine()!.split(separator: " ").map{Int($0)!}
        array.append((input[0], input[1]))
    }
    array.sort(by: { $0.1 == $1.1 ? $0.0 < $1.0 : $0.1 < $1.1 })
    for nums in array { print(nums.0, nums.1) }
}
